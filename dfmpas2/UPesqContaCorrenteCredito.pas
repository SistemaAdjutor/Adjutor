unit UPesqContaCorrenteCredito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfmPesqContaCorrenteCredito = class(TfrmBaseDBPesquisa)
    lbledt3: TLabeledEdit;
    lbledt2: TLabeledEdit;
    mnuListar: TPopupMenu;
    Listagem1: TMenuItem;
    N1: TMenuItem;
    qBuscoTIPO: TStringField;
    qBuscoCONTA: TStringField;
    qBuscoDOCUMENTO: TStringField;
    qBuscoDESCRICAO: TStringField;
    qBuscoLANCADO: TStringField;
    qBuscoUSU_CODIGO: TIntegerField;
    qBuscoCOD_VENDEDOR: TStringField;
    qBuscoCOD_CLIENTE: TStringField;
    qBuscoCOD_FORNECEDOR: TStringField;
    qBuscoCANCELAMENTO: TStringField;
    qBuscoMOTIVO_CANCELAMENTO: TStringField;
    qBuscoUSUARIO_CANCELAMENTO: TIntegerField;
    cdsBuscoTIPO: TStringField;
    cdsBuscoCONTA: TStringField;
    cdsBuscoDOCUMENTO: TStringField;
    cdsBuscoDESCRICAO: TStringField;
    cdsBuscoLANCADO: TStringField;
    cdsBuscoUSU_CODIGO: TIntegerField;
    cdsBuscoCOD_VENDEDOR: TStringField;
    cdsBuscoCOD_CLIENTE: TStringField;
    cdsBuscoCOD_FORNECEDOR: TStringField;
    cdsBuscoCANCELAMENTO: TStringField;
    cdsBuscoMOTIVO_CANCELAMENTO: TStringField;
    cdsBuscoUSUARIO_CANCELAMENTO: TIntegerField;
    cdsCliente: TClientDataSet;
    dspCliente: TDataSetProvider;
    sqlCliente: TSQLQuery;
    sqlClienteCLI_CODIGO: TStringField;
    sqlClienteCLI_RAZAO: TStringField;
    sqlClienteCLI_FANTASIA: TStringField;
    cdsClienteCLI_CODIGO: TStringField;
    cdsClienteCLI_RAZAO: TStringField;
    cdsClienteCLI_FANTASIA: TStringField;
    qBuscoCODIGO: TStringField;
    cdsBuscoCODIGO: TStringField;
    LabeledEdit1: TLabeledEdit;
    Label1: TLabel;
    edTotVerba: TEdit;
    qBuscoCOD_PRODUTO: TStringField;
    qBuscoDATA: TSQLTimeStampField;
    cdsBuscoCOD_PRODUTO: TStringField;
    cdsBuscoDATA: TSQLTimeStampField;
    qBuscoVALOR: TFMTBCDField;
    qBuscoVALOR_UTILIZADO: TFMTBCDField;
    cdsBuscoVALOR: TFMTBCDField;
    cdsBuscoVALOR_UTILIZADO: TFMTBCDField;
    qBuscoProduto: TStringField;
    cdsBuscoProduto: TStringField;
    Label2: TLabel;
    edTotDebito: TEdit;
    edTotCredito: TEdit;
    Label3: TLabel;
    dsCred: TDataSource;
    qCred: TSQLQuery;
    dspCred: TDataSetProvider;
    cdsCred: TClientDataSet;
    qCredVALORCREDITO: TFMTBCDField;
    cdsCredVALORCREDITO: TFMTBCDField;
    dsDeb: TDataSource;
    qDeb: TSQLQuery;
    dspDeb: TDataSetProvider;
    cdsDeb: TClientDataSet;
    qDebVALORDEBITO: TFMTBCDField;
    cdsDebVALORDEBITO: TFMTBCDField;
    RadioGroup1: TRadioGroup;
    cdsBuscoCOD_PESSOA: TStringField;
    cdsBuscoNOME_PESSOA: TStringField;
    qBuscoCOD_PESSOA: TStringField;
    qBuscoNOME_PESSOA: TStringField;
    cdsBuscoSaldo: TFMTBCDField;
    procedure btnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnPesquisaClick(Sender: TObject);
    procedure Listagem1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure LabeledEdit1Exit(Sender: TObject);
    procedure lbledt2Exit(Sender: TObject);
    procedure lbledt3Exit(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure cdsBuscoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure FiltraCC;
  public
    { Public declarations }
    procedure BotoesAcesso;
    procedure TotalizarVerba;
  end;

var
  fmPesqContaCorrenteCredito: TfmPesqContaCorrenteCredito;

implementation

{$R *.dfm}

uses UContaCorrenteCredito, Uteis, InicioDB;

{ TfrmBaseDBPesquisa4 }

procedure TfmPesqContaCorrenteCredito.BotoesAcesso;
begin
     if assigned(fmPesqContaCorrenteCredito) then
     begin
       btnNovo.Enabled := Uteis.AcessoUsuario('FinanceiroConta Corrente / Verba',DBInicio.Usuario.CODIGO,fmPesqContaCorrenteCredito).Incluir;
       btnImprime.Enabled := Uteis.AcessoUsuario('FinanceiroConta Corrente / Verba',DBInicio.Usuario.CODIGO,fmPesqContaCorrenteCredito).Relatorio;
       btnEdita.Enabled := Uteis.AcessoUsuario('FinanceiroConta Corrente / Verba',DBInicio.Usuario.CODIGO,fmPesqContaCorrenteCredito).Alterar;
       btnExclui.Enabled := Uteis.AcessoUsuario('FinanceiroConta Corrente / Verba',DBInicio.Usuario.CODIGO,fmPesqContaCorrenteCredito).Exluir;
     end;
end;

procedure TfmPesqContaCorrenteCredito.btnImprimeClick(Sender: TObject);
var Ponto : TPoint;
begin
     inherited;
     Ponto := btnImprime.ClientToScreen(Point(0, btnImprime.Height));
     mnuListar.Popup(Ponto.X, Ponto.Y);
end;

procedure TfmPesqContaCorrenteCredito.btnLimparClick(Sender: TObject);
begin
  inherited;
  edTotCredito.Text := FormatFloat('#0.00',cdsCredVALORCREDITO.AsCurrency);
  edTotDebito.Text := FormatFloat('#0.00',cdsDebVALORDEBITO.AsCurrency);
  edTotVerba.Text := FormatFloat('#0.00',cdsCredVALORCREDITO.AsCurrency-cdsDebVALORDEBITO.AsCurrency);
end;

procedure TfmPesqContaCorrenteCredito.btnNovoClick(Sender: TObject);
var mtag: integer;
    tcr: TfmContaCorrenteCredito;
    flg: boolean;
begin
  inherited;
  mtag := (sender as tComponent).Tag;
  try
     tcr := TfmContaCorrenteCredito.create( self );
     case mtag of
     1: flg:=tcr.novo('Novo Registro') ;
     2: tcr.Consulta(cdsBuscoCODIGO.asString,'Consulta Registro');
     3: flg:=tcr.edita(cdsBuscoCODIGO.asString,'Edição de Registro');
     4: flg:=tcr.exclui(cdsBuscoCODIGO.asString,'Exclusão de Registro');
     end;
     if tcr.ModalResult=mrOk then
     begin
          if CdSBUSCO.Active then
          BEGIN
            CdsBusco.Refresh;
            if trim(tcr.idretorno) <> Trim(cdsBuscoCODIGO.asstring) then
            begin
                 CdsBusco.Locate( CampoID, tcr.IDRetorno, [loCaseInsensitive] ) ;
            end;
          END;
     end;
  finally
    tcr.close;
    freeandnil(tcr);
  end;

end;

procedure TfmPesqContaCorrenteCredito.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  //TotalizarVerba;
end;

procedure TfmPesqContaCorrenteCredito.cdsBuscoCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsBuscoSaldo.Value := cdsBuscoVALOR.Value - cdsBuscoVALOR_UTILIZADO.Value;
end;

procedure TfmPesqContaCorrenteCredito.DBGridDblClick(Sender: TObject);
begin
  inherited;
  //btnEdita.Click;
end;

procedure TfmPesqContaCorrenteCredito.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if cdsBusco.Active then
  begin
     if cdsBuscoCONTA.AsString = 'D' then
        DBGrid.Canvas.Font.Color := clRed
     Else
     begin
         DBGrid.Canvas.Font.Color := clBlue;
     end;
     DBGrid.Canvas.Brush.Color := clWhite;
     DBGrid.DefaultDrawDataCell(Rect,DBGrid.columns[datacol].field, State);
  end;
end;

procedure TfmPesqContaCorrenteCredito.FiltraCC;
var vOrd: string;
begin
     with qBusco do
     begin
          sql.Clear;
          SQL.Add('select conta_corrente.*, ');
           if RadioGroup1.ItemIndex = 0 then
             SQL.Add(' rep0000.rep_razao NOME_PESSOA, conta_corrente.cod_vendedor COD_PESSOA, ');
           if RadioGroup1.ItemIndex = 1 then
             SQL.Add(' cli0000.cli_fantasia NOME_PESSOA, conta_corrente.cod_cliente COD_PESSOA, ');
           if RadioGroup1.ItemIndex = 2 then
             SQL.Add(' for0000.for_razao  NOME_PESSOA, conta_corrente.cod_fornecedor COD_PESSOA, ');
          SQL.Add(' PRD0000.PRD_DESCRI as produto from CONTA_CORRENTE');

          if RadioGroup1.ItemIndex = 0 then
             SQL.Add(' join rep0000 on rep0000.rep_codigo = conta_corrente.cod_vendedor and tipo = ''V''  ');
          if RadioGroup1.ItemIndex = 1 then
            SQL.Add(' join cli0000 on cli0000.cli_codigo = conta_corrente.cod_cliente and tipo = ''C'' ');
          if RadioGroup1.ItemIndex = 2 then
            SQL.Add(' join for0000 on for0000.for_codigo = conta_corrente.cod_fornecedor and tipo = ''F'' ') ;

          SQL.Add('left join PRD0000 on                               ');
          SQL.Add('PRD0000.PRD_REFER = conta_corrente.COD_PRODUTO     ');

          if StrToIntDef(lbledt3.Text,-1)=-1 then
             SqlAdd( CampoSql( 'DESCRICAO',lbledt3.Text) )
          else
             SqlAdd( CampoSql( 'codigo',lbledt3.Text) );
          SqlAdd( CampoSql('documento',lbledt2.Text));
          if RadioGroup1.ItemIndex = 0 then
            SqlAdd( CampoSql('rep0000.rep_razao',LabeledEdit1.Text));
          if RadioGroup1.ItemIndex = 1 then
            SqlAdd( CampoSql('cli0000.cli_fantasia',LabeledEdit1.Text));
          if RadioGroup1.ItemIndex = 2 then
            SqlAdd( CampoSql('for0000.for_razao',LabeledEdit1.Text));

          //SqlAdd( CampoSql('CEST_NCM',GrupoCEST(lbledt2.Text,'=') ));
//          CASE cbb1.ItemIndex of
//          0: vord := 'CEST_COD';
//          1: vord := 'CEST_NCM';
//          2: vord := 'CEST_DESCRICAO';
//          end;
//          sql.Add('Order By '+vOrd);

     end;

end;

procedure TfmPesqContaCorrenteCredito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cdsDeb.Close;
  cdsCred.Close;
  Action := caFree;
end;

procedure TfmPesqContaCorrenteCredito.FormCreate(Sender: TObject);
begin
  inherited;
  Self.CampoID:='Codigo';
  Self.ProcedureFiltro:=FiltraCC;
  self.Width := 812;
  LabeledEdit1.EditLabel.Caption := RadioGroup1.Items.Strings[RadioGroup1.ItemIndex];
  DBGrid.Columns[5].Title.Caption := RadioGroup1.Items.Strings[RadioGroup1.ItemIndex];
  edTotCredito.Text := FormatFloat('#0.00',cdsCredVALORCREDITO.AsCurrency);
  edTotDebito.Text := FormatFloat('#0.00',cdsDebVALORDEBITO.AsCurrency);
  edTotVerba.Text := FormatFloat('#0.00',cdsCredVALORCREDITO.AsCurrency-cdsDebVALORDEBITO.AsCurrency);
  //cdsCliente.Open;
end;

procedure TfmPesqContaCorrenteCredito.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPesqContaCorrenteCredito := nil;
end;

procedure TfmPesqContaCorrenteCredito.FormResize(Sender: TObject);
begin
  inherited;
//  Width:=812;
//  Height:=493;
end;

procedure TfmPesqContaCorrenteCredito.FormShow(Sender: TObject);
begin
  inherited;
  AbreTabela:=True;
  Filtro; // abre tabelas
  if assigned(fmContaCorrenteCredito) then
     BotoesAcesso;
  DBGrid.Columns[3].FieldName := 'DESCRICAO';
  DBGrid.Columns[3].Title.Caption := 'Descrição';
  DBGrid.Columns[0].Title.Caption := ' *';
  cdsCred.Open;
  cdsDeb.Open;
  edTotCredito.Text := FormatFloat('#0.00',cdsCredVALORCREDITO.AsCurrency);
  edTotDebito.Text := FormatFloat('#0.00',cdsDebVALORDEBITO.AsCurrency);
  edTotVerba.Text := FormatFloat('#0.00',cdsCredVALORCREDITO.AsCurrency-cdsDebVALORDEBITO.AsCurrency);
  //TotalizarVerba;
end;

procedure TfmPesqContaCorrenteCredito.LabeledEdit1Exit(Sender: TObject);
begin
  inherited;
  TotalizarVerba;
end;

procedure TfmPesqContaCorrenteCredito.lbledt2Exit(Sender: TObject);
begin
  inherited;
  TotalizarVerba;
end;

procedure TfmPesqContaCorrenteCredito.lbledt3Exit(Sender: TObject);
begin
  inherited;
  TotalizarVerba;
end;

procedure TfmPesqContaCorrenteCredito.Listagem1Click(Sender: TObject);
begin
  inherited;
  GeraRelatorioAuto(Sender);
end;

procedure TfmPesqContaCorrenteCredito.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  LabeledEdit1.EditLabel.Caption := RadioGroup1.Items.Strings[RadioGroup1.ItemIndex];
 // DBGrid.Columns[4].FieldName := RadioGroup1.Items.Strings[RadioGroup1.ItemIndex];
  DBGrid.Columns[5].Title.Caption := RadioGroup1.Items.Strings[RadioGroup1.ItemIndex];

  edTotCredito.Text := FormatFloat('#0.00',cdsCredVALORCREDITO.AsCurrency);
  edTotDebito.Text := FormatFloat('#0.00',cdsDebVALORDEBITO.AsCurrency);
  edTotVerba.Text := FormatFloat('#0.00',cdsCredVALORCREDITO.AsCurrency-cdsDebVALORDEBITO.AsCurrency);
  btnPesquisa.Click;
end;

procedure TfmPesqContaCorrenteCredito.TotalizarVerba;
var rValorCredito,rValorDebito:real;
begin
  rValorDebito :=0;
  rValorCredito :=0;
  with cdsbusco do
  begin
    if Active then
    begin
      First;
      while not eof do
      begin
        if cdsBuscoCONTA.Value = 'C' then
          rValorCredito := rValorCredito + cdsBuscoVALOR.AsCurrency;
        if cdsBuscoCONTA.Value = 'D' then
          rValorDebito := rValorDebito + cdsBuscoVALOR.AsCurrency;

        Next;
      end;
    end;
  end;
  edTotVerba.Text := FormatFloat('###,##0.00',rValorCredito-rValorDebito);
  edTotCredito.Text := FormatFloat('###,##0.00',rValorCredito);
  edTotDebito.Text := FormatFloat('###,##0.00',rValorDebito);
end;

end.
