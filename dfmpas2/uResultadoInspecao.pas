unit uResultadoInspecao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditFormFDAC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, Vcl.ExtCtrls,
  JvErrorIndicator, JvValidators, JvComponentBase, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab,
  Vcl.Buttons, Vcl.DBCGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, system.StrUtils;

type
  TfrmResultadoInspecao = class(TfrmBaseDBEditFDAC)
    cdsEditEOR_CODIGO: TIntegerField;
    cdsEditEOR_NOME: TStringField;
    cdsEditRES_CODIGO: TIntegerField;
    cdsEditIOP_CODIGO: TIntegerField;
    cdsEditEOR_VALOR: TStringField;
    cdsEditEOR_COPIAR: TIntegerField;
    FDUpdateSQL1: TFDUpdateSQL;
    Panel1: TPanel;
    pResultado: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    EdDistancia1: TDBEdit;
    edDureza1: TDBEdit;
    edEht1: TDBEdit;
    edDistancia2: TDBEdit;
    edDureza3: TDBEdit;
    edEht2: TDBEdit;
    edDistancia3: TDBEdit;
    edDureza2: TDBEdit;
    edEht3: TDBEdit;
    edDistancia4: TDBEdit;
    edDureza4: TDBEdit;
    edEht4: TDBEdit;
    DBCtrlGrid1: TDBCtrlGrid;
    cdsResultado: TFDQuery;
    dsResultado: TDataSource;
    DBEdit1: TDBEdit;
    DBText1: TDBText;
    cdsResultadoTAB_CODIGO: TIntegerField;
    cdsResultadoPCP_CODIGO: TIntegerField;
    cdsResultadoTAB_DISTANCIA1: TStringField;
    cdsResultadoTAB_DUREZA1: TStringField;
    cdsResultadoTAB_EHT1: TStringField;
    cdsResultadoTAB_DISTANCIA2: TStringField;
    cdsResultadoTAB_DUREZA2: TStringField;
    cdsResultadoTAB_EHT2: TStringField;
    cdsResultadoTAB_DISTANCIA3: TStringField;
    cdsResultadoTAB_DUREZA3: TStringField;
    cdsResultadoTAB_EHT3: TStringField;
    cdsResultadoTAB_DISTANCIA4: TStringField;
    cdsResultadoTAB_DUREZA4: TStringField;
    cdsResultadoTAB_EHT4: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    foperacao : integer;
    fiop_codigo : integer;
    fPcp_codigo : integer;
    formulario : Integer;
  public
    property operacao : integer read foperacao write foperacao;
    property iop_codigo : integer read fiop_codigo write fiop_codigo;
    property pcp_codigo : integer read fPcp_codigo write fPcp_codigo;
  end;

var
  frmResultadoInspecao: TfrmResultadoInspecao;

implementation

{$R *.dfm}

procedure TfrmResultadoInspecao.btnCancelarClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrAbort;
end;

procedure TfrmResultadoInspecao.btnOkClick(Sender: TObject);
var
  I: Integer;
begin
  //Panel1.SetFocus;
   if cdsEdit.State in dsEditModes then
    cdsEdit.Post;

  cdsEdit.DisableControls;
  try
    cdsedit.First;
    while not cdsEdit.Eof do
    begin
      if cdsEditEOR_VALOR.AsString = ''then
      begin
        raise Exception.Create('Todos campos devem ser preenchidos');
      end;
      cdsedit.next;
    end;

    // se formulatio especifico coleta os dados para fazer o grafico
   if formulario = 23 then
   begin

      if cdsResultado.State in dsEditModes then
        cdsResultado.post;
      cdsResultado.DisableControls;
      for I := 0 to cdsResultado.Fields.Count-1 do
      begin
        if MatchStr(cdsResultado.Fields[i].FieldName,['TAB_CODIGO','PCP_CODIGO'])  then
          Continue;

        if cdsResultado.fields[i].AsString = '' then
          raise Exception.Create('Todos os campos devem ser preenchidos');
      end;

      if not (cdsResultado.State in dsEditModes) then
          cdsResultado.Edit;

      if cdsResultadoTAB_CODIGO.IsNull then
        cdsResultadoTAB_CODIGO.AsInteger := GetNextSequence('GEN_TABELA_RESULTADO');

      if cdsResultadoPCP_CODIGO.IsNull then
        cdsResultadoPCP_CODIGO.AsInteger := pcp_codigo;

      cdsResultado.POST;
      try
        cdsResultado.ApplyUpdates(0);
       //IF cdsResultado.ApplyUpdates(-1)<> 0 then
  //       raise Exception.Create ('Erro ao tentar aplicar atualizações a tabela (cdsResultado).');
      except
       on e: Exception do
        ShowMessage(e.Message);
      end;
   end;

    cdsedit.First;
    while not cdsEdit.Eof do
    begin
      ExecSql('DELETE FROM RESULTADO_ESPECIFICACOES WHERE iop_codigo = '+  IntToStr(iop_codigo) + ' AND EOR_CODIGO = ' + cdsEditEOR_COPIAR.AsString );
      // ExecSql('DELETE FROM RESULTADO_ESPECIFICACOES WHERE iop_codigo = '+  IntToStr(iop_codigo) );
      cdsEdit.Next;
    end;

    cdsedit.First;
    while not cdsEdit.Eof do
    begin
      if not cdsEditEOR_VALOR.isnull or (cdsEditEOR_VALOR.AsString <> '') then
      begin


       // if cdsEditRES_CODIGO.IsNull then
      //  begin


          ExecSql('INSERT INTO RESULTADO_ESPECIFICACOES ' +
                  ' (RES_CODIGO, IOP_CODIGO, EOR_CODIGO, EOR_VALOR) '+
                  ' VALUES('+ IntToStr(GetNextSequence('GEN_RESULTADO_ESPECIFICACOES') )+ ','+ IntToStr(iop_codigo) +','+
                  IntToStr(cdsEditEOR_COPIAR.AsInteger)+ ','+QuotedStr(cdsEditEOR_VALOR.AsString)  +')');

      //  end;



      end;

      cdsEdit.Next;
    end;

  finally
    cdsEdit.EnableControls;
    if formulario = 23  then
      cdsResultado.EnableControls
  end;
  dbConn.Commit;
  close;
end;

procedure TfrmResultadoInspecao.FormCreate(Sender: TObject);
begin
  inherited;
	CampoID:='RES_CODIGO';
	Tabela:='RESULTADO_ESPECIFICACOES';
  CampoIDRetorno := '';
  self.Constraints.MinHeight:= 489;
  self.Constraints.MinWidth:=919;
//  self.Constraints.MaxHeight:= 0;
  TemDetalhe := False;
//  cdsOperacoes.Open('select ope_codigo,ope_nome, ope_Descricao,emp_codigo from operacoes '+
//
end;

procedure TfrmResultadoInspecao.FormShow(Sender: TObject);
begin
  inherited;
  ConfigBotoes(3);
  EstadoTela := teEdicao;
  cdsEdit.close;
  cdsEdit.ParamByName('OPE_CODIGO').Value := operacao;
  cdsEdit.ParamByName('IOP_CODIGO').Value := iop_codigo;
  cdsEdit.open;



  formulario := BuscaUmDadoSqlAsinteger('SELECT OPE_FORMULARIO FROM OPERACOES WHERE OPE_CODIGO = '+ IntToStr(operacao));
  if formulario = 23 then
  begin
    pResultado.Visible := true;
    cdsResultado.close;
    cdsResultado.Params[0].Value := pcp_codigo;
    cdsResultado.open;
    if cdsResultado.IsEmpty then
      cdsResultado.insert
    else
      cdsResultado.edit;
  end;
end;

end.
