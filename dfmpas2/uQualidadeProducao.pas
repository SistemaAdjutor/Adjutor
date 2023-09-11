unit uQualidadeProducao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditFormFDAC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, JvErrorIndicator,
  JvValidators, JvComponentBase, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.Buttons,
  Vcl.ExtCtrls, system.StrUtils, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Datasnap.DBClient;

type
  TfrmQualidadeOperacao = class(TfrmBaseDBEditFDAC)
    qParametros: TFDQuery;
    qParametrosEOP_CODIGO: TIntegerField;
    qParametrosEOP_SEQ: TIntegerField;
    qParametrosOPE_CODIGO: TIntegerField;
    qParametrosEOP_NOME: TStringField;
    qParametrosEOP_DESCRICAO: TStringField;
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qqualidade: TFDQuery;
    qqualidadeEOP_CODIGO: TIntegerField;
    qqualidadeEOP_SEQ: TIntegerField;
    qqualidadeOPE_CODIGO: TIntegerField;
    qqualidadeEOP_NOME: TStringField;
    qqualidadeEOP_DESCRICAO: TStringField;
    qqualidadeOPE_NOME: TStringField;
    qqualidadeQPR_SEQUENCIA: TIntegerField;
    qqualidadeQPR_VALOR: TStringField;
    qqualidadeMAXSEQ: TAggregateField;
    cdsEspecificacao: TClientDataSet;
    qqualidadeQPR_CODIGO: TIntegerField;
    qqualidadePOP_CODIGO: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure cdsEspecificacaoNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    fcodOperacao : integer;
    fCodProcesso : integer;
    fOperacao :string;
    procedure SetCodOperacao (const Value : integer );
    procedure SetCodProcesso (const Value : integer);
  public

    property CodOperacao : integer read fcodOperacao write SetCodOperacao;
    property CodProcesso : integer read fCodProcesso write SetCodProcesso;
    property Operacao : string read foperacao write foperacao;
  end;

var
  frmQualidadeOperacao: TfrmQualidadeOperacao;

implementation

uses iniciodb, uteis, upesqprocessos;
{$R *.dfm}

procedure TfrmQualidadeOperacao.btnCancelarClick(Sender: TObject);
begin
  inherited;
  close;

end;

procedure TfrmQualidadeOperacao.btnOkClick(Sender: TObject);
var j,i, eop_codigo : integer;
begin
 // inherited;
 try
  dbConn.StartTransaction;
  if cdsespecificacao.IsEmpty then
  begin
    ExecSql('delete FROM MODL_QUALIDADE_PRODUCAO qp '+
            ' WHERE EXISTS                     '+
            ' (SELECT * FROM  MODL_ESPECIFICACOES_OPERACAO eop '+
            ' WHERE qp.EOP_CODIGO = eop.EOP_CODIGO        '+
            '   AND eop.OPE_CODIGO = '+IntToStr(CodOperacao) +
            '  )   ' +
            ' AND pro_codigo = ' + IntToStr(CodProcesso));

  end
  else
  begin
    qqualidade.filtered := False;
    cdsEspecificacao.First;
    j:= 1;
    while not cdsEspecificacao.Eof do
    begin
      for I := 1 to  cdsEspecificacao.FieldDefs.Count- 1 do // parametros
        IF qqualidade.Locate('qpr_sequencia;eop_seq',VarArrayOf([cdsEspecificacao.Fields[0].value,I ])) then   //registro SE TEM ATUALIZAR
          ExecSql('update MODL_QUALIDADE_PRODUCAO '+
                  ' set qpr_valor = '+ QuotedStr(VarToStr(cdsEspecificacao.Fields[i].Value))+
                  ' where qpr_codigo = '+IntToStr(qqualidadeQPR_CODIGO.AsInteger))
        else //incluir
        begin
          if not VarIsNull(cdsEspecificacao.Fields[i].Value) and not (Trim(VarToStr(cdsEspecificacao.Fields[i].Value)) = '')  then
          begin
           if qParametros.Locate('eop_seq',i,[]) then
             eop_codigo := qParametrosEOP_CODIGO.AsInteger;   //buscar codigo do parametro ESPECIFICACOES_OPERACAO.eop_codigo
           ExecSql( ' INSERT INTO MODL_QUALIDADE_PRODUCAO (QPR_SEQUENCIA, EOP_CODIGO, QPR_VALOR, PRO_CODIGO, POP_CODIGO) '+
                    ' VALUES('+
                    VarToStr(cdsEspecificacao.Fields[0].value) + ','+      // numero do registro
                    IntToStr(eop_codigo) + ',' + // codigo da especificação
                    QuotedStr(VarToStr(cdsEspecificacao.Fields[i].Value))+','+   //valor do campo
                    IntToStr(CodProcesso) +','+                      //cadastro de processo
                    IntToStr(qqualidadePOP_CODIGO.AsInteger) + ')'); // processo _ operacao

          end;

        end;
      cdsEspecificacao.Next;
      inc(j);
    end;
  end;

  dbConn.Commit;
 // dbConn.close;
  //dbConn.Open;

  close;
 except on E: Exception do
  dbConn.Rollback;
 end;
end;

procedure TfrmQualidadeOperacao.cdsEspecificacaoNewRecord(DataSet: TDataSet);
var i: integer;
begin
  inherited;
  i:=  cdsEspecificacao.RecordCount ;
  cdsEspecificacao.Fields[0].AsInteger := i +1;
end;

procedure TfrmQualidadeOperacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmQualidadeOperacao.FormCreate(Sender: TObject);
begin
  dbConn.Close;
  inherited;
  Self.Width := 779;
  self.Height := 489;
  Self.Constraints.MinHeight := 489;
  self.Constraints.MinWidth := 779;
end;

procedure TfrmQualidadeOperacao.FormDestroy(Sender: TObject);
begin
  inherited;
  frmQualidadeOperacao := nil;
end;

procedure TfrmQualidadeOperacao.FormShow(Sender: TObject);
var i,j : integer;
  campo : string;
begin
  inherited;
 cxGrid1DBTableView1.ClearItems;
 aCaption := 'Qualidade de produção';
 Panel1.Caption := 'Operação : '+  IntToStr(CodOperacao)  + '-' + Operacao;
  qParametros.Close;
  qParametros.Params[0].AsInteger :=  CodOperacao;
  qParametros.Open;
  cdsEspecificacao.Close;
  //cdsEdit.CreateDataSet;
  cdsEspecificacao.FieldDefs.Clear;
  for i:= 0 to cdsEspecificacao.FieldDefs.Count -1 do
       cdsEspecificacao.FieldDefs[i].Destroy;
   cdsEspecificacao.FieldDefs.Add('Registro',ftInteger);
  if qParametros.RecordCount = 0 then
  begin
    MessageDlg('Não há parâmetros de qualdiade cadastrado à operação', mtError, [mbOK], 0);
    exit;

  end;
  qParametros.First;
  while not qParametros.Eof do
  begin
    campo := AnsiReplaceStr(TrocaCaracterEspecial(qParametros.FieldByName('eop_nome').AsString,true),' ','');
    if campo = '' then
      campo := 'SEMTITULO1';
    cdsEspecificacao.FieldDefs.Add(campo,ftString,200);
    qParametros.Next;
  end;
//   ShowMessage(IntToStr( cdsedit.FieldList.Count));
  cdsEspecificacao.CreateDataSet;
  j:= 1 ;
  cdsEspecificacao.Fields[0].DisplayLabel := 'Linha';
  cdsEspecificacao.Fields[0].Visible := False;
  qParametros.First;
  while not qParametros.Eof do
  begin
    if qParametros.FieldByName('eop_descricao').asstring = '' then
      cdsEspecificacao.Fields[j].DisplayLabel := AnsiReplaceStr(qParametros.FieldByName('eop_nome').AsString,'[QL]','')
    else
      cdsEspecificacao.Fields[j].DisplayLabel :=  AnsiReplaceStr(qParametros.FieldByName('eop_descricao').AsString,'[QL]','');
   cdsEspecificacao.Fields[j].DisplayWidth := 20;
   qParametros.Next;
   inc(j);

  end;
  qqualidade.Close;
  qqualidade.filtered := False;
  qqualidade.Params[0].AsInteger :=  CodOperacao;
  qqualidade.Params[1].AsInteger :=  CodProcesso;
  qqualidade.Open;
  if  qqualidade.FieldByName('MAXSEQ').AsVariant > 0 then
  for i := qqualidade.FieldByName('MAXSEQ').AsVariant downto 1  do
  begin
    qqualidade.Filtered := False;
    qqualidade.Filter := 'qpr_sequencia = '+IntToStr(i);
    qqualidade.Filtered := True ;
    cdsEspecificacao.Insert;
    cdsEspecificacao.Fields[0].AsInteger := i;
    for j := 1 to cdsEspecificacao.FieldDefs.Count-1 do
    begin
      if qqualidade.Locate('EOP_SEQ',j,[]) then
      begin
       cdsEspecificacao.Fields[j].AsString :=  qqualidade.FieldByName('qpr_valor').AsString ;
      end;

    end;
    cdsEspecificacao.Post;
  end;

 cxGrid1DBTableView1.DataController.CreateAllItems;

end;

procedure TfrmQualidadeOperacao.SetCodOperacao(const Value: integer);
begin
  fcodOperacao := Value;
end;


procedure TfrmQualidadeOperacao.SetCodProcesso(const Value: integer);
begin
 fCodProcesso := Value;
end;

end.
