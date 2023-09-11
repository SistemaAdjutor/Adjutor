unit ReajusteTabelaPrecosForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBForm, ACBrBase, ACBrCalculadora, ExtCtrls, BaseForm,
  {{DBXpress,}  DB, SqlExpr, FMTBCd, StdCtrls, SgDbSeachComboUnit, Mask,
  JvExMask, rxToolEdit, JvBaseEdits, Data.DBXInterBase, JvToolEdit, Data.DBXFirebird, ACBrETQ, ACBrEnterTab, SgDbLookupComboUnit;

type
  TfrmReajusteTabelaPrecos = class(TfrmBaseDB)
    GroupBox1: TGroupBox;
    Label23: TLabel;
    Label22: TLabel;
    Label7: TLabel;
    edTipo: TSgDbSearchCombo;
    edLinha: TSgDbSearchCombo;
    edGrupo: TSgDbSearchCombo;
    qTipo: TSQLQuery;
    qGrupo: TSQLQuery;
    qLinha: TSQLQuery;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    currpercentual: TJvCalcEdit;
    Label1: TLabel;
    btnAplicar: TButton;
    Button2: TButton;
    procedure btnAplicarClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure Button2Click(Sender: tObject);
  private
    fpre_id : integer;
  public
    property pre_id : integer read fpre_id write fpre_id;
  end;

var
  frmReajusteTabelaPrecos: TfrmReajusteTabelaPrecos;

implementation

USES Uteis, InicioDB {, Prd0003, Prd0002, Prd0005} ;

{$R *.dfm}

procedure TfrmReajusteTabelaPrecos.btnAplicarClick(Sender: tObject);
var sql : string;
  filtro : string;
begin
  inherited;
 // BeginTransaction;
//  sql:= 'UPDATE PRECOS0001     '+
//          'SET PRE_DATAAJUSTE = CURRENT_TIMESTAMP, '+
//          '  PRE_PRECO = (PRE_PRECO * (('+FloatToSQL(currpercentual.Value/100) +' +1))) '+
//          ' WHERE PRE_ID = '+IntToStr(pre_id);
//   filtro := '';
//  if edTipo.idRetorno <> '' then
//    filtro:=  ' PTI_CODIGO = '+ QuotedStr(edTipo.idRetorno)    ;
//  if edGrupo.idRetorno <> '' then
//    filtro:= filtro + iif(filtro <> '', ' and ','') + ' PGR_CODIGO = '+ QuotedStr(edGrupo.idRetorno);
//  if edLinha.idRetorno <> '' then
//    filtro:= filtro + iif(filtro <> '', ' and ','') + ' LIN_CODIGO = '+ QuotedStr(edLinha.idRetorno);
//
//  sql:= sql + IIF(filtro= '','',' AND PRD_CODIGO IN (	SELECT PRD_CODIGO	FROM PRD0000 WHERE '+filtro+')');
//  try
//    ExecSql(sql);
//    ExecSql('update PRECOS0000  '+
//            ' SET PRE_REVISAO = COALESCE(PRE_REVISAO,0) + 1 '+
//            ' , PRE_DATAREVISAO = CURRENT_TIMESTAMP '+
//            ' WHERE PRE_ID = '+ IntToStr(pre_id) );
//    ShowMessage('Atualizado com sucesso');
//    committransaction;
//  Except
//    on E:Exception do
//    begin
//      RollBack;
//      ShowMessage('Ocorreu erros.contate a área de TI:'+e.Message );
//    end;
//  end;

  ModalResult := mrOk;
end;

procedure TfrmReajusteTabelaPrecos.FormCreate(Sender: tObject);
begin
  inherited;
  Self.Height:=357;
  Self.Width:=673;
  SetTamanhoMaximo(357,673);

end;

procedure TfrmReajusteTabelaPrecos.Button2Click(Sender: tObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

end.



