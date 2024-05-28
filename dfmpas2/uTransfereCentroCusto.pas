unit uTransfereCentroCusto;

interface

uses
  Uteis, InicioDB,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase,
  FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab,
  Data.FMTBcd, JvExControls, JvAnimatedImage, JvGIFCtrl, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, SgDbSeachComboUnit, Data.SqlExpr;

type
  TfrmTransfereCentroCusto = class(TfrmBaseDBFDAC)
    qCentroCustoOrigen: TSQLQuery;
    ccOrigem: TSgDbSearchCombo;
    qCentroCustoDestino: TSQLQuery;
    ccDestino: TSgDbSearchCombo;
    Label1: TLabel;
    Label2: TLabel;
    Bit_Sair: TBitBtn;
    btTransfere: TBitBtn;
    PanelAguarde: TPanel;
    JvGIFAnimator1: TJvGIFAnimator;
    pinfo: TPanel;
    FIN_RATEIO: TCheckBox;
    PED0000: TCheckBox;
    PCX0000_PLANO: TCheckBox;
    ENF_IT01_PROJETO_OBRA: TCheckBox;
    CLI0000: TCheckBox;
    NF_PC01: TCheckBox;
    ENF_IT01: TCheckBox;
    ENF0001: TCheckBox;
    FAT_PC01: TCheckBox;
    SETOR: TCheckBox;
    FAT0000: TCheckBox;
    PAG0000: TCheckBox;
    PAG_PC01: TCheckBox;
    PRD0000: TCheckBox;
    COTACAO_ITEM: TCheckBox;
    PCX0000_PERFIL_COLABORADOR: TCheckBox;
    EQUIPAMENTO: TCheckBox;
    OPERACOES: TCheckBox;
    MarcarTodos: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btTransfereClick(Sender: TObject);
    procedure Bit_SairClick(Sender: TObject);
    procedure MarcarTodosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTransfereCentroCusto: TfrmTransfereCentroCusto;

implementation

{$R *.dfm}

procedure TfrmTransfereCentroCusto.Bit_SairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTransfereCentroCusto.btTransfereClick(Sender: TObject);
begin
  inherited;
  if ccOrigem.idRetorno = ''  then
  begin
    uteis.Aviso('Informe o Centro de Custo de Origem.');
    Exit;
  end;
  if ccDestino.idRetorno = ''  then
  begin
    uteis.Aviso('Informe o Centro de Custo de Destino.');
    Exit;
  end;
  if ccOrigem.IdRetorno = ccDestino.idRetorno then
  begin
    uteis.Aviso('Centro de Custo de Origem e Destino são iguais.');
    Exit;
  end;


  if uteis.confirmacao('Deseja trasnferir o Centro de Custo ' + ccOrigem.Text + ',' + #13 +
                       'Para o Centro de Custo + ' + ccDestino.Text + '?' ) = mrYes then
  begin
    try
      panelAguarde.Visible := True;
      Application.ProcessMessages;
      if CLI0000.Checked then
        ExecSQL('UPDATE CLI0000  SET PCX_CODIGO = ' + QuotedStr(ccDestino.IdRetorno) + ' WHERE PCX_CODIGO = ' + QuotedStr(ccOrigem.idRetorno) +  ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)   ) ;
      if FIN_RATEIO.Checked then
        ExecSQL('UPDATE FIN_RATEIO SET PCX_CODIGO = ' + QuotedStr(ccDestino.IdRetorno) + ' WHERE PCX_CODIGO = ' + QuotedStr(ccOrigem.idRetorno) +  ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)  ) ;
      if PED0000.Checked then
        ExecSQL('UPDATE PED0000  SET PCX_CODIGO = ' + QuotedStr(ccDestino.IdRetorno) + ' WHERE PCX_CODIGO = ' + QuotedStr(ccOrigem.idRetorno) +  ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)  ) ;
      if PCX0000_PLANO.Checked then
        ExecSQL('UPDATE PCX0000_PLANO  SET PCX_CODIGO = ' + QuotedStr(ccDestino.IdRetorno) + ' WHERE PCX_CODIGO = ' + QuotedStr(ccOrigem.idRetorno) +  ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)  ) ;
      if NF_PC01.Checked then
        ExecSQL('UPDATE NF_PC01  SET PCX_CODIGO = ' + QuotedStr(ccDestino.IdRetorno) + ' WHERE PCX_CODIGO = ' + QuotedStr(ccOrigem.idRetorno) +  ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)  ) ;
      if ENF0001.Checked then
        ExecSQL('UPDATE ENF0001  SET PCX_CODIGO = ' + QuotedStr(ccDestino.IdRetorno) + ' WHERE PCX_CODIGO = ' + QuotedStr(ccOrigem.idRetorno) +  ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)  ) ;
      if ENF_IT01.Checked then
        ExecSQL('UPDATE ENF_IT01  SET PCX_CODIGO = ' + QuotedStr(ccDestino.IdRetorno) + ' WHERE PCX_CODIGO = ' + QuotedStr(ccOrigem.idRetorno) +  ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)  ) ;
      if FAT0000.Checked then
        ExecSQL('UPDATE FAT0000  SET PCX_CODIGO = ' + QuotedStr(ccDestino.IdRetorno) + ' WHERE PCX_CODIGO = ' + QuotedStr(ccOrigem.idRetorno) +  ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)  ) ;
      if FAT_PC01.Checked then
        ExecSQL('UPDATE FAT_PC01  SET PCX_CODIGO = ' + QuotedStr(ccDestino.IdRetorno) + ' WHERE PCX_CODIGO = ' + QuotedStr(ccOrigem.idRetorno) +  ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)  ) ;
      if ENF_IT01_PROJETO_OBRA.Checked then
        ExecSQL('UPDATE ENF_IT01_PROJETO_OBRA  SET PCX_CODIGO = ' + QuotedStr(ccDestino.IdRetorno) + ' WHERE PCX_CODIGO = ' + QuotedStr(ccOrigem.idRetorno) +  ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)  ) ;
      if PCX0000_PERFIL_COLABORADOR.Checked then
        ExecSQL('UPDATE PCX0000_PERFIL_COLABORADOR SET PCX_CODIGO = ' + QuotedStr(ccDestino.IdRetorno) + ' WHERE PCX_CODIGO = ' + QuotedStr(ccOrigem.idRetorno) +  ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)  ) ;
      if SETOR.Checked then
        ExecSQL('UPDATE SETOR  SET PCX_CODIGO = ' + QuotedStr(ccDestino.IdRetorno) + ' WHERE PCX_CODIGO = ' + QuotedStr(ccOrigem.idRetorno) +  ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)  ) ;
      if PAG0000.Checked then
        ExecSQL('UPDATE PAG0000  SET PCX_CODIGO = ' + QuotedStr(ccDestino.IdRetorno) + ' WHERE PCX_CODIGO = ' + QuotedStr(ccOrigem.idRetorno) +  ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)  ) ;
      if PAG_PC01.Checked then
        ExecSQL('UPDATE PAG_PC01  SET PCX_CODIGO = ' + QuotedStr(ccDestino.IdRetorno) + ' WHERE PCX_CODIGO = ' + QuotedStr(ccOrigem.idRetorno) +  ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)  ) ;
      if PRD0000.Checked then
        ExecSQL('UPDATE PRD0000  SET PCX_CODIGO = ' + QuotedStr(ccDestino.IdRetorno) + ' WHERE PCX_CODIGO = ' + QuotedStr(ccOrigem.idRetorno) +  ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)  ) ;
      if COTACAO_ITEM.Checked then
        ExecSQL('UPDATE COTACAO_ITEM  SET PCX_CODIGO = ' + QuotedStr(ccDestino.IdRetorno) + ' WHERE PCX_CODIGO = ' + QuotedStr(ccOrigem.idRetorno)   ) ;
      if EQUIPAMENTO.Checked then
        ExecSQL('UPDATE EQUIPAMENTO  SET PCX_CODIGO = ' + QuotedStr(ccDestino.IdRetorno) + ' WHERE PCX_CODIGO = ' + QuotedStr(ccOrigem.idRetorno) +  ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)  ) ;
      if OPERACOES.Checked then
        ExecSQL('UPDATE OPERACOES  SET PCX_CODIGO = ' + QuotedStr(ccDestino.IdRetorno) + ' WHERE PCX_CODIGO = ' + QuotedStr(ccOrigem.idRetorno) +  ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO)  ) ;

      panelAguarde.Visible := False;
      uteis.Aviso('Transferência realizada com sucesso.');
    except on e: exception do
      begin
        panelAguarde.Visible := False;
        uteis.erro(e.message);
      end;
    end;
  end;
end;

procedure TfrmTransfereCentroCusto.FormCreate(Sender: TObject);
begin
  inherited;
  PanelAguarde.Top := (Self.Height div 2) - (PanelAguarde.Height div 2);
  PanelAguarde.Left := (Self.Width div 2) - (PanelAguarde.Width div 2);
  JvGIFAnimator1.Animate := True;
end;

procedure TfrmTransfereCentroCusto.MarcarTodosClick(Sender: TObject);
begin
  inherited;
  CLI0000.Checked := MarcarTodos.Checked;
  FIN_RATEIO.Checked := MarcarTodos.Checked;
  PED0000.Checked := MarcarTodos.Checked;
  PCX0000_PLANO.Checked := MarcarTodos.Checked;
  NF_PC01.Checked := MarcarTodos.Checked;
  ENF0001.Checked := MarcarTodos.Checked;
  ENF_IT01.Checked := MarcarTodos.Checked;
  FAT0000.Checked := MarcarTodos.Checked;
  FAT_PC01.Checked := MarcarTodos.Checked;
  ENF_IT01_PROJETO_OBRA.Checked := MarcarTodos.Checked;
  PCX0000_PERFIL_COLABORADOR.Checked := MarcarTodos.Checked;
  SETOR.Checked := MarcarTodos.Checked;
  PAG0000.Checked := MarcarTodos.Checked;
  PAG_PC01.Checked := MarcarTodos.Checked;
  PRD0000.Checked := MarcarTodos.Checked;
  COTACAO_ITEM.Checked := MarcarTodos.Checked;
  EQUIPAMENTO.Checked := MarcarTodos.Checked;
  OPERACOES.Checked := MarcarTodos.Checked;
end;

end.
