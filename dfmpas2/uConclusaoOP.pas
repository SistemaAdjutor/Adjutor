unit uConclusaoOP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, JvExStdCtrls, JvEdit, JvValidateEdit, Vcl.StdCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, Vcl.ExtCtrls, SgDbSeachComboUnit, Data.FMTBcd, Data.SqlExpr;

type
  TfrmConclusaoOP = class(TfrmBaseDBFDAC)
    edPRD_REFER: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edDescricao: TEdit;
    edConcluida: TJvValidateEdit;
    Label3: TLabel;
    Label4: TLabel;
    edRefugada: TJvValidateEdit;
    GLote: TGroupBox;
    dtValidade: TJvDateEdit;
    dtFabricacao: TJvDateEdit;
    edLote: TEdit;
    Label5: TLabel;
    lfab: TLabel;
    Label7: TLabel;
    Panel1: TPanel;
    btnok: TButton;
    btnCancelar: TButton;
    GroupBox1: TGroupBox;
    lTotal: TLabel;
    totalproduzido: TLabel;
    saldoaproduzir: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button1: TButton;
    gbEntradaProducao: TGroupBox;
    cbAlmoxarifado: TSgDbSearchCombo;
    edAlmoxarifado: TEdit;
    Label6: TLabel;
    qAlmoxarifado: TSQLQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure btnokEnter(Sender: TObject);
    procedure btnCancelarEnter(Sender: TObject);
    procedure btnCancelarExit(Sender: TObject);
    procedure btnokExit(Sender: TObject);
    procedure edPRD_REFERChange(Sender: TObject);
    procedure edDescricaoChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cbAlmoxarifadoChange(Sender: TObject);
  private
    fControle : boolean;
    fDescricao : string;
    fPRD_REFER : string;
    fprd_codigo : string;
    fenvase : boolean;
    fconcluido, frefugada, fFaltaConcluir, FtotalProducao, fquantConcluida: double;
    fRegistro: integer;
  public
    property controle : boolean read fcontrole write fcontrole;
    property Descricao : string read fdescricao write fdescricao;
    property prd_refer : string read fprd_refer write fprd_refer;
    property prd_codigo : string read fprd_codigo write fprd_codigo;
    property FaltaConcluir : double read fFaltaConcluir write fFaltaConcluir;
    property quantConcluida : double read fquantConcluida write fquantConcluida;
    property TotalProducao : double read FtotalProducao write FtotalProducao;
    property envase : boolean read fEnvase write fenvase;
    property Registro: integer read fRegistro write fRegistro;
  end;

var
  frmConclusaoOP: TfrmConclusaoOP;

implementation

{$R *.dfm}

uses  InicioDB, UTEIS;

procedure TfrmConclusaoOP.btnCancelarEnter(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TfrmConclusaoOP.btnCancelarExit(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TfrmConclusaoOP.btnokClick(Sender: TObject);
begin
  if edConcluida.AsFloat =0 then
    raise Exception.Create('Quantidade concluida deve ser maior que zero');
  if (edConcluida.AsFloat > FaltaConcluir) and (not DBInicio.Empresa.wPMT_PRODUZIR_MAIS_OP) then
    raise Exception.Create('Não pode ser maior que '+FormatFloat('###,###,##.00', FaltaConcluir));;
  if controle and (edLote.Text  ='') then
     raise Exception.Create('Não preenchido o lote');
  ModalResult := mrOk;
  dbConn.Commit;
end;

procedure TfrmConclusaoOP.btnokEnter(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TfrmConclusaoOP.btnokExit(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TfrmConclusaoOP.Button1Click(Sender: TObject);
begin
  inherited;
  ModalResult := mrRetry;
end;

procedure TfrmConclusaoOP.cbAlmoxarifadoChange(Sender: TObject);
begin
  inherited;
  edAlmoxarifado.Text := cbAlmoxarifado.idRetorno;
end;

procedure TfrmConclusaoOP.edDescricaoChange(Sender: TObject);
begin

  exit;
end;

procedure TfrmConclusaoOP.edPRD_REFERChange(Sender: TObject);
begin
  exit;
end;

procedure TfrmConclusaoOP.FormCreate(Sender: TObject);
begin
  inherited;
  self.Constraints.MinHeight:= 324;
  self.Constraints.MinWidth:=487;
  self.Constraints.MaxHeight:= 0;
  self.width:=487;
  self.height:=324;
  edConcluida.DecimalPlaces := dbInicio.Empresa.fPMT_QTDE_DEC_PED;
  edConcluida.MaxValue := FaltaConcluir;
  edRefugada.DecimalPlaces :=   dbInicio.Empresa.fPMT_QTDE_DEC_PED;
  if not DBInicio.Empresa.wPMT_PRODUZIR_MAIS_OP then
     edRefugada.MaxValue := FaltaConcluir;
  //edConcluida.MaxValue := ConsumoTotal; // consumo total será o consumo total do item que será substituir retirando os que já foram consumidos na produção
  envase := False;
end;

procedure TfrmConclusaoOP.FormShow(Sender: TObject);
begin
  inherited;
  GLote.Visible := controle;
  edLote.Enabled := (DBInicio.Empresa.PMT_LOTE_AUTOMATICO <> 'A') or envase;
  edPRD_REFER.Text := prd_refer;
  edDescricao.Text  := Descricao;
  edConcluida.SetFocus;
  edLote.Text := CarregaLoteAutomatico(controle, envase, edLote.Text);

  if envase then
    lfab.Caption := 'Envase:'
  else
  begin
    lfab.Caption := 'Fabricação:';
  end;
  totalproduzido.Caption :=  FormatFloat('###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED),quantConcluida) ;
  saldoaproduzir.Caption :=  FormatFloat('###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED),FaltaConcluir)  ;
  lTotal.Caption :=         FormatFloat('###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED),TotalProducao);
end;

end.
