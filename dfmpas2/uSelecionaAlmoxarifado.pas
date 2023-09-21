unit uSelecionaAlmoxarifado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.StdCtrls, SgDbSeachComboUnit, Vcl.Buttons;

type
  TfrmSelecionaAlmoxarifado = class(TfrmBaseDB)
    cbAlmoxarifado: TSgDbSearchCombo;
    btConfirma: TBitBtn;
    btCancela: TBitBtn;
    edAlmoxarifado: TEdit;
    Label1: TLabel;
    lbAtencao: TLabel;
    Label3: TLabel;
    procedure cbAlmoxarifadoChange(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
      prd_codigo: string;
    { Public declarations }
  end;

var
  frmSelecionaAlmoxarifado: TfrmSelecionaAlmoxarifado;

implementation

{$R *.dfm}

uses uteis;

procedure TfrmSelecionaAlmoxarifado.btConfirmaClick(Sender: TObject);
var
  saldo : double;
begin
  inherited;
  saldo := BuscaUmDadoSqlAsFloat('SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA),0) ' +
                           ' FROM kardex_almox_saldo kas ' +
                           ' WHERE kas.PRD_CODIGO = ' + QuotedStr(prd_codigo) +
                            ' AND  AMX_CODIGO = ' + QuotedStr(cbAlmoxarifado.idRetorno) );
  if saldo < 0 then
  begin
    Aviso('Não há saldo suficiente para este produto no almoxarifado indicado.' +
            #13 + 'Saldo Disponível ' + FormatFloat('###,###,##0,00', saldo)  );
    ModalResult := mrNone;
  end;

end;

procedure TfrmSelecionaAlmoxarifado.cbAlmoxarifadoChange(Sender: TObject);
begin
  inherited;
  if cbAlmoxarifado.CDS.Active then
    edAlmoxarifado.Text := cbAlmoxarifado.CDS.FieldByName('AMX_CODIGO').AsString
  else
    edAlmoxarifado.Clear;
end;

end.
