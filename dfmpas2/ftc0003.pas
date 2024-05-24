{************************************************************
 Programa...: FTC0003  - Nome formulario = FormItemFichaTec
 Objetivo...: Manutencao de Itens da Ficha Técnica
 Analista...: Márcio Neu Pacheco
 Programador: Márcio

 Criação..........: Set/01
 Ultima Alteração.: Set/02
 Alterado por.....: Márcio
*************************************************************}
unit Ftc0003;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, ExtCtrls, Mask, Db, DBTables,  rxToolEdit,
  RXDBCtrl,RwFunc, ComCtrls, Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS,
  Data.DBXFirebird, SimpleDS, FireDAC.Comp.Client, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TFormCopiaFichaTec = class(TForm)
    Panel3: TPanel;
    Bit_Copiar: TBitBtn;
    Bit_Sair: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EdtCopiarDe: TEdit;
    EdtDescCopiarDe: TEdit;
    EdtCopiarPa: TEdit;
    EdtDescCopiarPa: TEdit;
    GroupBox2: TGroupBox;
    ProgressBar1: TProgressBar;
    SpPesquisa: TSpeedButton;
    SqlCdsBuscaProd: TSQLClientDataSet;
    SqlCdsBuscaProdPRD_CODIGO: TStringField;
    SqlCdsBuscaProdPRD_REFER: TStringField;
    SqlCdsBuscaProdPRD_DESCRI: TStringField;
    SqlCdsCopiaFichaTec: TSQLClientDataSet;
    SqlCdsCopiaItemFichaTec: TSQLClientDataSet;
    SqlCdsCopiaFichaTecPRD_REFER: TStringField;
    SqlCdsCopiaFichaTecFTC_TUP: TFMTBCdField;
    SqlCdsCopiaFichaTecFTC_CRIACAO: TSQLTimeStampField;
    SqlCdsCopiaFichaTecFTC_PROC1: TStringField;
    SqlCdsCopiaFichaTecFTC_PROC2: TStringField;
    SqlCdsCopiaFichaTecFTC_PROC3: TStringField;
    SqlCdsCopiaFichaTecFTC_PROC4: TStringField;
    SqlCdsCopiaFichaTecFTC_PROC5: TStringField;
    SqlCdsCopiaFichaTecFTC_PROC6: TStringField;
    SqlCdsCopiaFichaTecFTC_PROC7: TStringField;
    SqlCdsCopiaFichaTecFTC_PROC8: TStringField;
    SqlCdsCopiaFichaTecFTC_FIXO: TFMTBCdField;
    SqlCdsCopiaFichaTecFTC_COMPLE: TFMTBCdField;
    SqlCdsCopiaFichaTecFTC_INDIRETA: TFMTBCdField;
    SqlCdsCopiaFichaTecFTC_LUCROUNID: TFMTBCdField;
    SqlCdsCopiaFichaTecEMP_CODIGO: TStringField;
    SqlCdsCopiaItemFichaTecFTI_REGISTRO: TIntegerField;
    SqlCdsCopiaItemFichaTecPRD_REFER: TStringField;
    SqlCdsCopiaItemFichaTecPRD_REFER_ITENS: TStringField;
    SqlCdsCopiaItemFichaTecFTI_MODIFICADA: TSQLTimeStampField;
    SqlCdsCopiaItemFichaTecFTI_MODE1: TStringField;
    SqlCdsCopiaItemFichaTecFTI_MODE2: TStringField;
    SqlCdsCopiaItemFichaTecFTI_MODE3: TStringField;
    SqlCdsCopiaItemFichaTecFTI_MODE4: TStringField;
    SqlCdsCopiaItemFichaTecFTI_MODE5: TStringField;
    SqlCdsCopiaItemFichaTecFTI_MODE6: TStringField;
    SqlCdsCopiaItemFichaTecFTI_MODE7: TStringField;
    SqlCdsCopiaItemFichaTecFTI_MODE8: TStringField;
    SqlCdsCopiaItemFichaTecFTI_PRECOCUSTO: TFMTBCdField;
    SqlCdsCopiaItemFichaTecEMP_CODIGO: TStringField;
    GroupBox3: TGroupBox;
    PanFicha: TPanel;
    SqlCdsCopiaItemFichaTecFTI_UC: TFloatField;
    SqlCdsCopiaItemFichaTecFTI_UCMODIFIC: TFloatField;
    Origem: TFDQuery;
    Destino: TFDQuery;
    procedure FormShow(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_CopiarClick(Sender: tObject);
    procedure EdtCopiarPaChange(Sender: tObject);
    procedure SpPesquisaClick(Sender: tObject);
    procedure EdtCopiarPaEnter(Sender: tObject);
    procedure EdtCopiarPaClick(Sender: tObject);
    procedure EdtCopiarPaExit(Sender: tObject);
  private
    { Private declarations }
    procedure CopiarFichaTec;
    procedure CopiarCamposTecnicos;
    procedure CopiarEngenhariaDeProcessos;
    procedure CopiarQualidade;
    procedure CopiarFichaTecnica;
  public
    { Public declarations }
  end;

var
  FormCopiaFichaTec: TFormCopiaFichaTec;

implementation

USES  Uteis, Ftc0001, DataCad, Prd0006, DmProdu, Prd0001, InicioDB;

{$R *.DFM}

procedure TFormCopiaFichaTec.FormShow(Sender: tObject);
begin
    Left := 184;
    Top  := 294;
    {Atribui os dados da Ficha Tecnica Atual}
    EdtCopiarDe.Text     := FormProduto.EdtPRD_REFER.Text;
    EdtDescCopiarDe.Text := FormProduto.EdtDescricao.Text;
    EdtCopiarPa.SetFocus;
end;

procedure TFormCopiaFichaTec.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormCopiaFichaTec.Bit_CopiarClick(Sender: tObject);
begin
    if EdtCopiarPa.Text <> '' then
       begin
           if uteis.confirmacao ( ('Copia os itens da Ficha Técnica: '+EdtCopiarDe.Text+' - '+EdtDescCopiarDe.Text+#13+' Para a Ficha Técnica: '+EdtCopiarPa.Text+' - '+EdtDescCopiarPa.Text))=mrYes then
              begin
                  CopiarFichaTec;
              end
           else
              begin
                  EdtDescCopiarPa.Text := '';
                  EdtCopiarPa.Text     := '';
                  EdtCopiarPa.SetFocus;
              end;
       end
    else
       begin
           uteis.aviso('Informe a Referência !');
           EdtCopiarPa.SetFocus;
       end;
end;

procedure TFormCopiaFichaTec.CopiarCamposTecnicos;
var
  prdCodigo : string;
  mmoCodigo, I : integer;
begin
  prdCodigo := dbInicio.BuscaUmDadoSqlAsString('SELECT PRD_CODIGO FROM PRD0000 p WHERE PRD_REFER = ' + QuotedStr(EdtCopiarPa.Text) );
  mmoCodigo := dbInicio.GetNextSequence( 'GEN_MOLA_MATERIA_ID' );
  try
    origem.SQL.Text := 'SELECT * FROM MOLA_MATERIA WHERE PRD_CODIGO = ' + dbInicio.BuscaUmDadoSqlAsString('SELECT PRD_CODIGO FROM PRD0000 p WHERE PRD_REFER = ' + QuotedStr(EdtCopiarDe.Text) );
    origem.Open;
    if origem.IsEmpty then
    begin
      origem.Close;
      destino.Close;
      exit;
    end;

    destino.SQL.Text := 'SELECT * FROM MOLA_MATERIA ';
    destino.Open;

    destino.Insert;
    for I := 0 to origem.FieldCount - 1 do
    begin
      if (origem.Fields[I].FieldName = 'MMO_CODIGO') then
        destino.Fields[I].Value := mmoCodigo
      else
      if (origem.Fields[I].FieldName = 'PRD_CODIGO')  then
        destino.Fields[I].Value := prdCodigo
      else
        destino.Fields[I].Value := origem.Fields[I].Value;
    end;

    destino.Post;
    destino.ApplyUpdates(0);

  finally
    origem.Close;
    destino.Close;
  end;
end;

procedure TFormCopiaFichaTec.CopiarEngenhariaDeProcessos;
var
  prdCodigo : string;
  engCodigo, I : integer;
begin
  prdCodigo := dbInicio.BuscaUmDadoSqlAsString('SELECT PRD_CODIGO FROM PRD0000 p WHERE PRD_REFER = ' + QuotedStr(EdtCopiarPa.Text) );
  try
    origem.SQL.Text := 'SELECT * FROM ENGENHARIA_PROCESSO WHERE PRD_CODIGO = ' +  dbInicio.BuscaUmDadoSqlAsString('SELECT PRD_CODIGO FROM PRD0000 p WHERE PRD_REFER = ' + QuotedStr(EdtCopiarDe.Text) );
    origem.Open;
    if origem.IsEmpty then
    begin
      origem.Close;
      destino.Close;
      exit;
    end;

    destino.SQL.Text := 'SELECT * FROM ENGENHARIA_PROCESSO ';
    destino.Open;

    while not Origem.Eof do
    begin
      engCodigo := dbInicio.GetNextSequence( 'GEN_ENGENHARIA_PROCESSO' );
      destino.Insert;
      for I := 0 to origem.FieldCount - 1 do
      begin
        if (origem.Fields[I].FieldName = 'ENG_CODIGO') then
          destino.Fields[I].Value := engCodigo
        else
        if (origem.Fields[I].FieldName = 'PRD_CODIGO')  then
          destino.Fields[I].Value := prdCodigo
        else
          destino.Fields[I].Value := origem.Fields[I].Value;
      end;

      try
        destino.Post;
      except on e:Exception do
        begin
          uteis.erro(e.message)
        end;
      end;

      Origem.Next;
    end;
    destino.ApplyUpdates(0);
  finally
    origem.Close;
    destino.Close;
  end;
end;

procedure TFormCopiaFichaTec.CopiarQualidade;
var
  I : integer;
begin
  try
    origem.SQL.Text := 'SELECT * FROM CONTROLE_DE_QUALIDADE_PRODUTO WHERE PRD_REFER = ' + QuotedStr(EdtCopiarDe.Text);
    origem.Open;
    if origem.IsEmpty then
    begin
      origem.Close;
      destino.Close;
      exit;
    end;

    destino.SQL.Text := 'SELECT * FROM CONTROLE_DE_QUALIDADE_PRODUTO ';
    destino.Open;

    while not Origem.Eof do
    begin
      destino.Insert;
      for I := 0 to origem.FieldCount - 1 do
      begin
        if (origem.Fields[I].FieldName = 'PRD_REFER')  then
          destino.Fields[I].Value := EdtCopiarPa.Text
        else
          destino.Fields[I].Value := origem.Fields[I].Value;
      end;
      destino.Post;

      Origem.Next;
    end;
    destino.ApplyUpdates(0);
  finally
    origem.Close;
    destino.Close;
  end;
end;

procedure TFormCopiaFichaTec.CopiarFichaTec;
var
  I : integer;
begin


    try
      wSql1      := 'select F1.*,P2.PTI_SIGLA,P1.PRD_DESCRI,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8 ';
      wSql2      := 'from ftc_it01 F1 LEFT JOIN PRD0000 P1 ON (F1.PRD_REFER = P1.PRD_REFER) LEFT JOIN prd_tipo P2 ON (P2.pti_codigo = P1.pti_codigo) ';
      //
      wSeleciona := 'where F1.PRD_REFER = '''+EdtCopiarPa.Text+'''';
      wOrdem     := 'F1.PRD_REFER';
      //
      DataCadastros.sqlUpdate.close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1+wSql2,wSeleciona,wOrdem,'F1.');
      DataCadastros.sqlUpdate.Open;
      if DataCadastros.sqlUpdate.IsEmpty = true then
         begin
//             wSql2      := 'from FTC0000 F1 LEFT JOIN PRD0000 P1 ON (F1.PRD_REFER = P1.PRD_REFER) LEFT JOIN prd_tipo P2 ON (P2.pti_codigo = P1.pti_codigo) ';
//             DataCadastros.sqlUpdate.close;
//             try
//               wSeleciona := 'where F1.PRD_REFER = '''+EdtCopiarDe.Text+'''';
//               wOrdem     := 'F1.PRD_REFER';
//               //
//               SqlCdsCopiaFichaTec.Close;
//               SqlCdsCopiaFichaTec.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2,wSeleciona,wOrdem,'F1.');
//               SqlCdsCopiaFichaTec.Open;
//               if SqlCdsCopiaFichaTec.IsEmpty = false then
//                  begin
//                      wSeleciona := 'where F1.PRD_REFER = '''+EdtCopiarPa.Text+'''';
//                      wOrdem     := 'F1.PRD_REFER';
//                      //
//                      DmProducao.CdsFichaTec.Close;
//                      DmProducao.CdsFichaTec.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2,wSeleciona,wOrdem,'F1.');
//                      DmProducao.CdsFichaTec.Open;
//                      if (DmProducao.CdsFichaTec.IsEmpty = true) then
//                         DmProducao.CdsFichaTec.Insert
//                      else
//                         DmProducao.CdsFichaTec.Edit;
//                      DmProducao.CdsFichaTecPRD_REFER.AsString     := EdtCopiarPa.Text;
//                      DmProducao.CdsFichaTecFTC_TUP.AsCurrency     := SqlCdsCopiaFichaTecFTC_TUP.AsCurrency;
//                      DmProducao.CdsFichaTecFTC_CRIACAO.AsDateTime := now;
//                      DmProducao.CdsFichaTecFTC_PROC1.AsString     := SqlCdsCopiaFichaTecFTC_PROC1.AsString;
//                      DmProducao.CdsFichaTecFTC_PROC2.AsString     := SqlCdsCopiaFichaTecFTC_PROC2.AsString;
//                      DmProducao.CdsFichaTecFTC_PROC3.AsString     := SqlCdsCopiaFichaTecFTC_PROC3.AsString;
//                      DmProducao.CdsFichaTecFTC_PROC4.AsString     := SqlCdsCopiaFichaTecFTC_PROC4.AsString;
//                      DmProducao.CdsFichaTecFTC_PROC5.AsString     := SqlCdsCopiaFichaTecFTC_PROC5.AsString;
//                      DmProducao.CdsFichaTecFTC_PROC6.AsString     := SqlCdsCopiaFichaTecFTC_PROC6.AsString;
//                      DmProducao.CdsFichaTecFTC_PROC7.AsString     := SqlCdsCopiaFichaTecFTC_PROC7.AsString;
//                      DmProducao.CdsFichaTecFTC_PROC8.AsString     := SqlCdsCopiaFichaTecFTC_PROC8.AsString;
//                      DmProducao.CdsFichaTecEMP_CODIGO.AsString    := SqlCdsCopiaFichaTecEMP_CODIGO.AsString;
//                      DmProducao.CdsFichaTec.ApplyUpdates(0);
//                      DmProducao.CdsFichaTec.Close;
//                  end;
//             except on E:EDataBaseError do
//               uteis.erro  (pchar('Erro ao inserir o registro na tabela FTC0000 ! '+E.message));
//             end;
//             SqlCdsCopiaFichaTec.Close;
//             try
//               SqlCdsCopiaItemFichaTec.Close;
//               SqlCdsCopiaItemFichaTec.CommandText := SQLDEF('PRODUTOS','Select F2.* from FTC_IT01 F2 ','where F2.PRD_REFER = '''+EdtCopiarDe.Text+'''','F2.PRD_REFER','F2.');
//               SqlCdsCopiaItemFichaTec.Open;
//               SqlCdsCopiaItemFichaTec.First;
//               ProgressBar1.Max := SqlCdsCopiaItemFichaTec.RecordCount;
//               ProgressBar1.Position := 0;
//               if SqlCdsCopiaItemFichaTec.IsEmpty = false then
//                  begin
//                      DmProducao.CdsItemFicha.Close;
//                      DmProducao.CdsItemFicha.CommandText := SQLDEF('PRODUTOS','Select F3.* from FTC_IT01 F3 ','where F3.PRD_REFER = '''+EdtCopiarPa.Text+'''','F3.PRD_REFER','F3.');
//                      DmProducao.CdsItemFicha.Open;
//                      while not SqlCdsCopiaItemFichaTec.Eof do
//                       begin
//                           DmProducao.CdsItemFicha.Insert;
//                           DmProducao.CdsItemFichaPRD_REFER.AsString        := EdtCopiarPa.Text;
//                           DmProducao.CdsItemFichaPRD_REFER_ITENS.AsString  := SqlCdsCopiaItemFichaTecPRD_REFER_ITENS.AsString;
//                           DmProducao.CdsItemFichaFTI_MODIFICADA.AsDateTime := SqlCdsCopiaItemFichaTecFTI_MODIFICADA.AsDateTime;
//                           DmProducao.CdsItemFichaFTI_UC.AsFloat            := SqlCdsCopiaItemFichaTecFTI_UC.AsFloat;
//                           DmProducao.CdsItemFichaFTI_UCMODIFIC.AsFloat     := SqlCdsCopiaItemFichaTecFTI_UCMODIFIC.AsFloat;
//                           DmProducao.CdsItemFichaFTI_MODE1.AsString        := SqlCdsCopiaItemFichaTecFTI_MODE1.AsString;
//                           DmProducao.CdsItemFichaFTI_MODE2.AsString        := SqlCdsCopiaItemFichaTecFTI_MODE2.AsString;
//                           DmProducao.CdsItemFichaFTI_MODE3.AsString        := SqlCdsCopiaItemFichaTecFTI_MODE3.AsString;
//                           DmProducao.CdsItemFichaFTI_MODE4.AsString        := SqlCdsCopiaItemFichaTecFTI_MODE4.AsString;
//                           DmProducao.CdsItemFichaFTI_MODE5.AsString        := SqlCdsCopiaItemFichaTecFTI_MODE5.AsString;
//                           DmProducao.CdsItemFichaFTI_MODE6.AsString        := SqlCdsCopiaItemFichaTecFTI_MODE6.AsString;
//                           DmProducao.CdsItemFichaFTI_MODE7.AsString        := SqlCdsCopiaItemFichaTecFTI_MODE7.AsString;
//                           DmProducao.CdsItemFichaFTI_MODE8.AsString        := SqlCdsCopiaItemFichaTecFTI_MODE8.AsString;
//                           DmProducao.CdsItemFichaFTI_PRECOCUSTO.AsCurrency := SqlCdsCopiaItemFichaTecFTI_PRECOCUSTO.AsCurrency;
//                           DmProducao.CdsItemFichaEMP_CODIGO.AsString       := SqlCdsCopiaItemFichaTecEMP_CODIGO.AsString;
//                           DmProducao.CdsItemFicha.ApplyUpdates(0);
//                           SqlCdsCopiaItemFichaTec.Next;
//                           ProgressBar1.Position := ProgressBar1.Position + 1;
//                       end;
//                      DmProducao.CdsItemFicha.Close;
//                  end;
//             except on E:EdataBaseError do
//               uteis.erro  (pchar('Erro ao inserir o registro na tabela FTC_IT01 ! '+E.message));
//             end;
//             SqlCdsCopiaItemFichaTec.Close;

             CopiarFichaTecnica;
             CopiarEngenhariaDeProcessos;
             CopiarCamposTecnicos;
             CopiarQualidade;

             uteis.aviso('Ficha Técnica copia com sucesso !');
             PanFicha.Caption := EdtCopiarPa.Text +' - '+EdtDescCopiarPa.Text;
             EdtCopiarPa.Text     := '';
             EdtDescCopiarPa.Text := '';
             EdtCopiarPa.SetFocus;
             ProgressBar1.Position := 0;
         end
         else
         begin
             uteis.aviso('Ficha Técnica já cadastrada !');
             DataCadastros.sqlUpdate.close;
             EdtCopiarPa.Text     := '';
             EdtDescCopiarPa.Text := '';
             EdtCopiarPa.SetFocus;
         end;
    except on E:EdatabaseError do
       uteis.erro  (pchar('Erro ao copiar a Ficha Técnica !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;


procedure TFormCopiaFichaTec.CopiarFichaTecnica;
var
  I  : integer;

begin
  try
    origem.SQL.Text := 'SELECT * FROM FTC0000 WHERE PRD_REFER = ' + QuotedStr(EdtCopiarDe.Text);
    origem.Open;
    if origem.IsEmpty then
    begin
      origem.Close;
      destino.Close;
      exit;
    end;

    destino.SQL.Text := 'SELECT * FROM FTC0000 ';
    destino.Open;

//    while not Origem.Eof do
//    begin
      destino.Insert;
      for I := 0 to origem.FieldCount - 1 do
      begin
        if (origem.Fields[I].FieldName = 'PRD_REFER')  then
          destino.Fields[I].Value := EdtCopiarPa.Text
        else
        if (origem.Fields[I].FieldName = 'FTC_REGISTRO')  then
          destino.Fields[I].Value := dbInicio.GetNextSequence( 'gen_ftc0000')
        else
          destino.Fields[I].Value := origem.Fields[I].Value;
      end;
      destino.Post;

//      Origem.Next;
//    end;
    destino.ApplyUpdates(0);
  except
    on e: Exception do
    begin
      uteis.Aviso(e.Message);
    end;
  end;
  origem.Close;
  destino.Close;


  try
    origem.SQL.Text := 'SELECT * FROM FTC_IT01 WHERE PRD_REFER = ' + QuotedStr(EdtCopiarDe.Text);
    origem.Open;
    if origem.IsEmpty then
    begin
      origem.Close;
      destino.Close;
      exit;
    end;

    destino.SQL.Text := 'SELECT * FROM FTC_IT01 ';
    destino.Open;

    while not Origem.Eof do
    begin
      destino.Insert;
      for I := 0 to origem.FieldCount - 1 do
      begin
        if (origem.Fields[I].FieldName = 'PRD_REFER')  then
          destino.Fields[I].Value := EdtCopiarPa.Text
        else
        if (origem.Fields[I].FieldName = 'FTI_REGISTRO')  then
          destino.Fields[I].Value := dbInicio.GetNextSequence('GEN_FTC_IT01_REGISTRO')
        else
          destino.Fields[I].Value := origem.Fields[I].Value;
      end;
      destino.Post;

      Origem.Next;
    end;
    destino.ApplyUpdates(0);
  except
    on e: Exception do
    begin
      uteis.Aviso(e.Message);
    end;
  end;
  origem.Close;
  destino.Close;

end;

procedure TFormCopiaFichaTec.EdtCopiarPaChange(Sender: tObject);
begin
    if EdtCopiarPa.Text <> '' then
       Bit_Copiar.Enabled := true
    else
       Bit_Copiar.Enabled := false;
end;

procedure TFormCopiaFichaTec.SpPesquisaClick(Sender: tObject);
begin
      FormProdutoGrid := TFormProdutoGrid.Create(Application);
      try
         FormProdutoGrid.ShowModal;
         if FormProdutoGrid.MODALRESULT=MROK THEN
         begin
              EdtCopiarPa.Text := FormProdutoGrid.ReferRetorno;
              EdtDescCopiarPa.Text := FormProdutoGrid.DescricaoRetorno;
              EdtCopiarPa.SetFocus;
         end;
      finally
         FREEANDNIL(FormProdutoGrid);

      end;
end;

procedure TFormCopiaFichaTec.EdtCopiarPaEnter(Sender: tObject);
begin
    EdtCopiarPa.Color := $0080FFFF;
    EdtCopiarPa.SelectAll;
end;

procedure TFormCopiaFichaTec.EdtCopiarPaClick(Sender: tObject);
begin
    EdtCopiarPa.SelectAll;
end;

procedure TFormCopiaFichaTec.EdtCopiarPaExit(Sender: tObject);
begin
    if ActiveControl.Name = 'Bit_Sair' then
       exit;
    EdtCopiarPa.Color := clWindow;
    if EdtCopiarPa.Text <> '' then
       begin
           try
             SqlCdsBuscaProd.Close;
             SqlCdsBuscaProd.CommandText := SQLDEF('PRODUTOS','Select P1.PRD_CODIGO,P1.PRD_REFER,P1.PRD_DESCRI from PRD0000 P1 ','where P1.PRD_REFER = '''+EdtCopiarPa.Text+'''','P1.PRD_REFER','P1.');
             SqlCdsBuscaProd.Open;
             if not SqlCdsBuscaProd.IsEmpty then
                begin
                    EdtDescCopiarPa.Text := SqlCdsBuscaProdPRD_DESCRI.AsString;
                end
             else
                begin
                    uteis.aviso('Produto acabado não localizado !');
                    EdtCopiarPa.Text     := '';
                    EdtDescCopiarPa.Text := '';
                    EdtCopiarPa.SetFocus;
                end;
             SqlCdsBuscaProd.Close;
           except on e:EdataBaseError do
             uteis.erro  (pchar('Erro ao localizar o produto acabado !'+e.message));
           end;
       end
   else
      begin
          uteis.aviso('Informe um Produto Acabado !');
          EdtCopiarPa.SetFocus;
      end;
end;

end.


