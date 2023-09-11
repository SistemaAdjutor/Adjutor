unit BaseTelaRelatorioForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, rlConsts, BaseDBForm,
  ACBrBase, ACBrCalculadora, DB, SqlExpr, Vcl.ExtCtrls, StdCtrls,
  Printers, DBGrids, Buttons, Provider, DBClient, uteis, Data.DBXInterBase,
  Data.DBXFirebird, ACBrEnterTab, Data.FMTBcd;

type
  TfrmBaseTelaRelatorio = class(TfrmBaseDB)
    btPrint: tSpeedButton;
    btSair: tSpeedButton;
    btConfig: tSpeedButton;
    Label1: TLabel;
    lbInfo: TLabel;
    rgSaida: TRadioGroup;
    PrintDialog: TPrintDialog;
    procedure FormCreate(Sender: TObject);
    procedure btConfigClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
     vlTituloRelatorio:string;
     vlRg: tRadioGroup;
     vlSelecionaTodos: tNotifyEvent;
     vlDbGrid: tDbGrid;
     vlSqlQuery: tSqlQuery;
     vlCompactar: Boolean;
     fGroupLabelExtra, fGroupField, fGroupLabel: string;

     fProcPageSumaryAuto: tProcedureDetalheAfterPrint;
     fProcHeaderBeforePrintAuto: tProcedureDetalheAfterPrint ;
     fProcDetailBeforePrintAuto: tProcedureDetalheAfterPrint ;
     fProcAfterPrintAuto : tProcedureDetalheAfterPrint ;

     fLinhaTitulo1, fLinhaTitulo2: String;
     fZebrar, fQuadricular, fQuadroConferidoPor: boolean ;

     procedure PrintAuto(Sender: tObject);
    procedure settitulorelatorio(const Value: string);
  public
     procedure SetListaGrid(Filtrados:Boolean);
     Property TituloRelatorio:string READ vlTituloRelatorio write settitulorelatorio;
     Property SelecionaTodos: tNotifyEvent read vlSelecionaTodos write vlSelecionaTodos;
     property dbGrid: tDbGrid Read vlDbGrid Write vlDbGrid;
     property Query: tSqlQuery Read vlSqlQuery Write vlSqlQuery;
     Property Compactar: Boolean Read vlCompactar Write vlCompactar;
     procedure ImprimeAuto ; overload;
     procedure ImprimeAuto (const ordem: string)  ; overload;
     Property ProcPageSumaryAuto: tProcedureDetalheAfterPrint read fProcPageSumaryAuto write fProcPageSumaryAuto;
     Property ProcHeaderBeforePrintAuto: tProcedureDetalheAfterPrint read fProcHeaderBeforePrintAuto write fProcHeaderBeforePrintAuto;
     Property ProcDetailBeforePrintAuto: tProcedureDetalheAfterPrint read fProcDetailBeforePrintAuto write fProcDetailBeforePrintAuto;
     property ProcAfterPrintAuto:  tProcedureDetalheAfterPrint read fProcAfterPrintAuto write fProcAfterPrintAuto;

     property GroupField:string read fGroupField Write fGroupField;
     property GroupLabel:string read fGroupLabel Write fGroupLabel;
     Property GroupLabelExtra: string read fGroupLabelExtra write fGroupLabelExtra;

     Property LinhaTitulo1: string Read fLinhaTitulo1 Write fLinhaTitulo1;
     Property LinhaTitulo2: String Read fLinhaTitulo2 Write fLinhaTitulo2;
     property Zebrar: boolean Read fZebrar Write fZebrar;
     Property Quadricular: boolean read fQuadricular write fQuadricular;

     property QuadroConferidoPor: Boolean Read fQuadroConferidoPor write fQuadroConferidoPor;


  end;

var
  frmBaseTelaRelatorio: TfrmBaseTelaRelatorio;

implementation

Uses BaseReportForm ;

{$R *.dfm}

procedure TfrmBaseTelaRelatorio.btConfigClick(Sender: TObject);
begin
  inherited;
  if PrintDialog.execute then
  begin
       lbInfo.Caption:=Printer.Printers[Printer.PrinterIndex];
  end;
end;

procedure TfrmBaseTelaRelatorio.btSairClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TfrmBaseTelaRelatorio.FormCreate(Sender: TObject);
begin
  inherited;
  self.WindowState:=wsNormal;
  self.BorderIcons:=[biMinimize];
  self.Constraints.MinHeight:=300;
  self.Constraints.MinWidth:=500;
  self.Height:=300;
  self.Width:=500;
  lbInfo.Caption:=Printer.Printers[Printer.PrinterIndex];
  vlTituloRelatorio:='';
  fGroupField:='';
  fGroupLabel:='';
  fGroupLabelExtra:='';
  fLinhaTitulo1:='';
  fLinhaTitulo2:='';
  fZebrar:=True;
  fQuadricular:=False;
  fQuadroConferidoPor:=False;

end;

procedure TfrmBaseTelaRelatorio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if GetKeyState( VK_CONTROL ) and 128 > 0 then // control pressionado
  begin
       if key = VK_RETURN then
       begin
          btPrint.click;
          key:=0;
       end;
  end;

end;



procedure TfrmBaseTelaRelatorio.PrintAuto(Sender: tObject);
var tcr: TfrmBaseReport;
begin
     self.Constraints.MaxHeight:=self.Height;
     self.Constraints.MaxWidth:=self.Width;
     tcr:= TfrmBaseReport.Create(self);
     try
       vlDbGrid.DataSource.DataSet.DisableControls;
       tcr.Titulo:=TituloRelatorio;
       tcr.ProcPageSumaryAuto := ProcPageSumaryAuto;
       tcr.ProcHeaderBeforePrintAuto := ProcHeaderBeforePrintAuto;
       tcr.ProcDetailBeforePrintAuto := ProcDetailBeforePrintAuto;

       case vlRG.ItemIndex of
       1:tcr.Lin2:='Listagem Parcial (Filtros do Usuário)';
       0:begin
              tcr.Lin2:='Todos os Registros';
              vlSelecionaTodos(Sender);
         end;
       end;
       tcr.dbGrid:=dbGrid;
       case rgSaida.ItemIndex  of
       0: tcr.rpMain.Preview(nil);
       1: tcr.rpMain.Print;
       end;
     finally
       tcr.ProcAfterPrintAuto := ProcAfterPrintAuto;
       FreeAndNil(tcr);
       vlDbGrid.DataSource.DataSet.First;
       vlDbGrid.DataSource.DataSet.EnableControls;
       self.Close;

     end;
end;
procedure TfrmBaseTelaRelatorio.ImprimeAuto(const ordem: string);
var vcds: tClientDataSet;
    vdsp: tDataSetProvider;
    vds: TDataSource;
    vDbGrid: TDBGrid;
    x, cn: integer ;
    tcr: TfrmBaseReport;
begin
     tcr:= TfrmBaseReport.Create(self);
     try
       vdsp := tDataSetProvider.create( self ) ;
       vdsp.name := 'Dsp'+IntToStr( NumeroAleatorio );
       vdsp.DataSet := vlSqlQuery;
       vcds := TClientDataSet.Create( self );
       vcds.ProviderName := vdsp.name;
       vcds.FetchOnDemand := True;
       vcds.PacketRecords := 200;
       if ordem <> '' then
        vcds.IndexFieldNames   := ordem;

       vds := TDataSource.Create( Self );
       vds.DataSet := vcds;
       vDbGrid := TDBGrid.Create(self);
       vDbGrid.DataSource:=vds;

       vcds.Open;
       if vcds.RecordCount=0 then
          GeraException('Não Existem Registros.');

       cn := vlSqlQuery.Fields.count-1 ; // VlGrid.Columns.count-1;
       for x := 0 to cn do
       begin
            if trim(vlSqlQuery.Fields[x].DisplayLabel)<>'' then
            with vDbGrid.Columns.Add do
            begin
                 if assigned(vlSqlQuery.Fields[x].OnGetText) then
                    vcds.FieldByName(vlSqlQuery.Fields[x].fieldname).OnGetText:=vlSqlQuery.Fields[x].OnGetText;
                 FieldName := vlSqlQuery.Fields[x].FieldName;
                 Title.Caption := vlSqlQuery.Fields[x].DisplayLabel;
                 Width := Canvas.TextWidth( PreencherString('',vlSqlQuery.Fields[x].DisplayWidth,'A') );
                 alignment:=vlSqlQuery.Fields[x].Alignment;
                 Title.Alignment:=vlSqlQuery.Fields[x].Alignment;
            end;
       end;

       tcr.compactar := vlCompactar;
       tcr.GroupField:=fGroupField;
       tcr.GroupLabel:=fGroupLabel;
       tcr.GroupLabelExtra:=GroupLabelExtra;

       tcr.ProcPageSumaryAuto := ProcPageSumaryAuto;
       tcr.ProcHeaderBeforePrintAuto := ProcHeaderBeforePrintAuto;
       tcr.ProcDetailBeforePrintAuto := ProcDetailBeforePrintAuto;

       tcr.Titulo:=TituloRelatorio;
       tcr.Lin1:=fLinhaTitulo1;
       if fLinhaTitulo2<>'' then
          tcr.lin2:=fLinhaTitulo2
       Else
          tcr.Lin2:='Todos os Registros';
       tcr.zebrar:=fZebrar;
       tcr.quadricular := fQuadricular;
       tcr.QuadroConferidoPor:=QuadroConferidoPor;

       tcr.dbGrid:=vdbGrid;
       tcr.rpMain.Preview(nil);

     finally
       FreeAndNil(tcr);
       vcds.Close;
       FreeAndNil(vDbGrid);
       FreeAndNil(vds);
       FreeAndNil(vcds);
       FreeAndNil(vdsp);
       Close;
     end;
end;
procedure TfrmBaseTelaRelatorio.ImprimeAuto;

begin
    ImprimeAuto('');
end;

procedure TfrmBaseTelaRelatorio.SetListaGrid(Filtrados:Boolean);
begin
   //self.Height:=260;
   //self.width:=414;
   self.Caption:=TituloRelatorio;
   vlRg:=TRadioGroup.Create(self);
   vlRg.Parent:=self;
   vlRg.Left := 3;
   vlRg.Top := 31;
   vlRg.Width := 399;
   vlRg.Height := 65;
   vlRg.Caption := 'Filtrar Registros:';
   vlRg.Items.add('Listar Todos os Registros');
   if Filtrados then
      vlRg.Items.add('Listar os Registros Selecionados na Pesquisa');
   vlRg.ItemIndex:=vlRg.Items.Count;
   vlRg.Visible:=true;
   btPrint.OnClick:=PrintAuto;
end;

procedure TfrmBaseTelaRelatorio.settitulorelatorio(const Value: string);
begin
  vlTituloRelatorio:=Value;
  aCaption:=Value;
end;

{initialization
   rlConsts.SetVersion(3,71,'B');}

end.
