unit uPesqInadimplencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, SgDbSeachComboUnit, ACBrBoleto, UTEIS, Vcl.Mask, JvExMask, JvSpin, JvExStdCtrls, JvEdit, JvValidateEdit, JvToolEdit,
  JvMaskEdit, JvDBControls, BaseTelaRelatorioForm;

type
  TfrmPesquisaInadimplencia = class(TfrmBaseDBPesquisa)
    EdClienteCodigo: TEdit;
    PesqCliente: TSgDbSearchCombo;
    Label1: TLabel;
    cdsBuscovalorpend: TFMTBCDField;
    cdsBuscoCLI_CODIGO: TStringField;
    cdsBuscoCLI_RAZAO: TStringField;
    cdsBuscoqtde: TIntegerField;
    cdsBuscovendas: TFMTBCDField;
    cdsBuscoindice: TFMTBCDField;
    cdsBuscofpc_vencto: TSQLTimeStampField;
    cdsBuscodias: TLargeintField;
    cdsBuscoCLI_EMAIL: TStringField;
    labIndice: TLabel;
    bl1: TACBrBoleto;
    PopupMenu1: TPopupMenu;
    Boletos1: TMenuItem;
    cdsBuscoCLI_FONE: TStringField;
    Label2: TLabel;
    edDias: TEdit;
    Data: TGroupBox;
    Ate: TLabel;
    Label3: TLabel;
    DataFim: TJvDateEdit;
    DataIni: TJvDateEdit;
    qBuscoCLI_CODIGO: TStringField;
    qBuscoCLI_RAZAO: TStringField;
    qBuscovendas: TFMTBCDField;
    qBuscovalorpend: TFMTBCDField;
    qBuscoqtde: TIntegerField;
    qBuscodias: TLargeintField;
    qBuscoindice: TFMTBCDField;
    qBuscofpc_vencto: TSQLTimeStampField;
    qBuscoCLI_FONE: TStringField;
    qBuscoCLI_EMAIL: TStringField;
    qRep: TSQLQuery;
    cbVendedor: TSgDbSearchCombo;
    Label4: TLabel;
    edVendedor: TEdit;
    Label5: TLabel;
    cdsBuscoREP_NOME: TStringField;
    qBuscoREP_NOME: TStringField;
    qBuscoCLI_OBS: TMemoField;
    cdsBuscoCLI_OBS: TMemoField;
    procedure FormCreate(Sender: TObject);
    procedure cdsBuscoCLI_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure EdClienteCodigoExit(Sender: TObject);
    procedure PesqClienteSelect(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure EdClienteCodigoChange(Sender: TObject);
    procedure edDiasKeyPress(Sender: TObject; var Key: Char);
    procedure btnImprimeClick(Sender: TObject);
    procedure edVendedorExit(Sender: TObject);
    procedure cbVendedorSelect(Sender: TObject);
    procedure cdsBuscoCLI_OBSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure filtro;
    procedure PadraoPesquisa;
    procedure IndiceAnos;
  end;

var
  frmPesquisaInadimplencia: TfrmPesquisaInadimplencia;

implementation

{$R *.dfm}

uses InicioDB,uDetalheInadimplencia;

procedure TfrmPesquisaInadimplencia.btnImprimeClick(Sender: TObject);
var tcr: tFrmBaseTelaRelatorio;
   fcabfiltro : string;
begin
  inherited;
   tcr:= tFrmBaseTelaRelatorio.Create(self);
    try
       if PesqCliente.idRetorno <> '' then
         fCabFiltro := 'Cliente : '+ PesqCliente.Text ;
       if edDias.Text <> '' then
         fcabfiltro := '  Dias apoós vencimento : '+edDias.Text;
       tcr.TituloRelatorio:='Relatório de inadimplência';
//       qBusco.Filtered := False;
//       qBusco.Filter := cdsBusco.Filter;
//       qbusco.Filtered := True;
       tcr.Query:=qBusco;
        tcr.LinhaTitulo1 := '' ;
        tcr.LinhaTitulo2 := fCabFiltro;
      // tcr.SelecionaTodos:=btnLimparClick;
       tcr.ImprimeAuto;

//       tcr.ShowModal;
    finally
      FreeAndNil(tcr);

    end;


end;

procedure TfrmPesquisaInadimplencia.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  lbCntRegistros.Caption := FormatFloat('###,###,###', cdsBusco.RecordCount) + ' Registros';
end;

procedure TfrmPesquisaInadimplencia.cbVendedorSelect(Sender: TObject);
begin
  inherited;
  edVendedor.Text := cbVendedor.idRetorno;
end;

procedure TfrmPesquisaInadimplencia.cdsBuscoCLI_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
//  if Sender.Text <> '' then
//    Text := MascaraFone(Sender.Text)

end;

procedure TfrmPesquisaInadimplencia.cdsBuscoCLI_OBSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  DisplayText := True;
  Text := Sender.AsString;
end;

procedure TfrmPesquisaInadimplencia.DBGridCellClick(Column: TColumn);
begin
  inherited;
  if Column.FieldName = 'CLI_OBS' then
    Informacao(Column.Field.AsString);
end;

procedure TfrmPesquisaInadimplencia.DBGridDblClick(Sender: TObject);
begin
  inherited;
  if not cdsBusco.IsEmpty then
  begin
     frmDetalheInadimplenciaCliente := TfrmDetalheInadimplenciaCliente.Create(Application);
    try
      frmDetalheInadimplenciaCliente.aCaption := 'títulos inandimplentes de '+cdsBuscoCLI_RAZAO.AsString;
      frmDetalheInadimplenciaCliente.cli_codigo :=  cdsBuscoCLI_CODIGO.AsString;
      frmDetalheInadimplenciaCliente.ShowModal;
    finally
      FreeAndNil(frmDetalheInadimplenciaCliente);
    end;

  end;
end;

procedure TfrmPesquisaInadimplencia.EdClienteCodigoChange(Sender: TObject);
begin
  inherited;
  PesqCliente.idRetorno :=  EdClienteCodigo.Text;
end;

procedure TfrmPesquisaInadimplencia.EdClienteCodigoExit(Sender: TObject);
begin
  inherited;
  PesqCliente.idRetorno :=  EdClienteCodigo.Text
end;

procedure TfrmPesquisaInadimplencia.edDiasKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in [#8, '0'..'9']) then
  begin

     Key := #0;
  end
end;

procedure TfrmPesquisaInadimplencia.edVendedorExit(Sender: TObject);
begin
  inherited;
  cbVendedor.idRetorno := edVendedor.Text;
end;

procedure TfrmPesquisaInadimplencia.filtro;
Var
  query : string;
begin
with qBusco, sql do
 begin
   query:= ' SELECT max(datediff(day, fpc_vencto,CURRENT_DATE)) dias, MIN(fpc_vencto) fpc_vencto , sum(pc.FPC_VLPARC) valorpend, cl.CLI_CODIGO, cl.CLI_RAZAO , '+
          ' cast(count(*) as integer) qtde, cl.CLI_EMAIL, cl.CLI_FONE,                                                                                       '+
          ' ( SELECT sum(ft.FAT_VLFAT) FROM FAT0000 ft WHERE CLI_CODIGO = cl.CLI_CODIGO AND FAT_EXCLUSAO = ''N'' ) vendas,                   '+
          ' rp.REP_NOME, cl.CLI_OBS, ' +
          ' Sum(pc.FPC_VLPARC)/ ( SELECT sum(ft.FAT_VLFAT) FROM FAT0000 ft WHERE CLI_CODIGO = cl.CLI_CODIGO AND FAT_EXCLUSAO = ''N'' ) *100 AS indice '+
          ' from FAT0000 ft                                                                                                           '+
          ' INNER JOIN CLI0000 cl ON (cl.CLI_CODIGO = ft.CLI_CODIGO)                                                                  '+
          ' INNER JOIN REP0000 rp ON (rp.REP_CODIGO = ft.REP_CODIGO)                                                                  '+
          ' INNER JOIN FAT_PC01 pc ON (ft.FAT_CODIGO = pc.FAT_CODIGO)                                                                 '+
          ' WHERE fpc_STATUS = ''Pendente''                                                                                           '+
          ' AND FPC_EXCLUSAO = ''N''  '+
          ' AND fpc_vencto <= CURRENT_DATE                                                                                            '+
          ' and ft.emp_codigo = '+QuotedStr(dbInicio.EMPRESA.EMP_CODIGO);

   sql.Clear;
   Add(query) ;

  // DATA QUE FOI FEITA A CONFIRMAÇÃO DA CARGA
  if (DataIni.date > 0) and (DataFim.date = 0)then
  begin

    ADD(' AND  fpc_vencto >='+DateToSQL(DataIni.Date) )
  end
  else if (DataIni.date = 0) and (DataFim.date > 0)  then
  begin
     ADD(' AND  fpc_vencto <='+DateToSQL(DataFim.date) )
  end
  else if (DataIni.date > 0) and (DataFim.date > 0)  then
  begin

    ADD(' AND  fpc_vencto between '+DateToSQL(DataIni.date) +' and '+  DateTimeToSQL(DataFim.date+ StrToTime('23:59:59') ));
  end;

  if PesqCliente.idRetorno <> '' then
    ADD(' AND cl.CLI_CODIGO = '+ QuotedStr(PesqCliente.idRetorno));
  if cbVendedor.idRetorno <> '' then
    ADD(' AND ft.REP_CODIGO = '+ QuotedStr(cbVendedor.idRetorno));


  Add(' GROUP BY cl.CLI_CODIGO, cl.CLI_RAZAO, cl.CLI_EMAIL, cl.CLI_FONE, rp.REP_NOME, cl.CLI_OBS ');
  Add(' HAVING sum(pc.FPC_VLPARC)  > 0');
  if edDias.Text<> '' then
    add (' and max(datediff(day, fpc_vencto,CURRENT_DATE)) = '+edDias.Text );

 end;
 if DBInicio.IsDesenvolvimento then
  CopytoClipboard(qBusco.SQL.Text);

end;

procedure TfrmPesquisaInadimplencia.FormCreate(Sender: TObject);
begin
  inherited;
  self.ProcedureFiltro:=Filtro;
 // Self.CampoID:='ECTE_REGISTRO';
  self.Constraints.MinHeight:= 608;;
  self.Constraints.MinWidth:=1167;
  self.Constraints.MaxHeight:= 0;
  self.width:=1024;
  self.height:=608;
  PadraoPesquisa;
  IndiceAnos;
  btnPesquisa.Click;
end;

procedure TfrmPesquisaInadimplencia.FormShow(Sender: TObject);
begin
  inherited;
  GetColumn(DBGrid, 'CLI_OBS').Width := 1024;
end;

procedure TfrmPesquisaInadimplencia.IndiceAnos;
var
  SystemTime: TSystemTime;
  ano : word;
  indice, totalvendas,totalvencido: Currency;
begin
  GetLocalTime(SystemTime);
  ano := SystemTime.wYear;
  totalvendas:=
   BuscaUmDadoSqlAsCurrency('SELECT sum(ft.FPC_VLPARC) FROM FAT_PC01 ft WHERE FPC_EXCLUSAO = ''N'' AND extract( year from fpc_vencto ) = '+IntToStr(ano) );
  totalvencido :=
   BuscaUmDadoSqlAsCurrency('SELECT sum(ft.FPC_VLPARC) FROM FAT_PC01 ft WHERE  fpc_STATUS = ''Pendente'' AND FPC_EXCLUSAO = ''N'' '+
   ' AND fpc_vencto <= CURRENT_DATE AND extract( year from fpc_vencto ) = '+IntToStr(ano) );
  if (totalvendas> 0) and (totalvencido>0) then
    indice :=  totalvencido/totalvendas*100;

  labIndice.Caption := 'Indice de inadimplência em '+inttostr(ano) + ': '+ FormatFloat('#,###,##0.00 %', indice) ;

  dec(ano);
  totalvendas:=
   BuscaUmDadoSqlAsCurrency('SELECT sum(ft.FPC_VLPARC) FROM FAT_PC01 ft WHERE FPC_EXCLUSAO = ''N'' AND extract( year from fpc_vencto ) = '+IntToStr(ano) );
  totalvencido :=
   BuscaUmDadoSqlAsCurrency('SELECT sum(ft.FPC_VLPARC) FROM FAT_PC01 ft WHERE  fpc_STATUS = ''Pendente'' AND FPC_EXCLUSAO = ''N'' '+
   ' AND fpc_vencto <= CURRENT_DATE AND extract( year from fpc_vencto ) = '+IntToStr(ano) );

  if (totalvendas> 0) and (totalvencido>0) then
    indice :=  totalvencido/totalvendas*100;

  labIndice.Caption :=labIndice.Caption +';'+ ' em '+inttostr(ano) + ': '+ FormatFloat('#,###,##0.00 %', indice) ;
   dec(ano);
  totalvendas:=
   BuscaUmDadoSqlAsCurrency('SELECT sum(ft.FPC_VLPARC) FROM FAT_PC01 ft WHERE FPC_EXCLUSAO = ''N'' AND extract( year from fpc_vencto ) = '+IntToStr(ano) );
  totalvencido :=
   BuscaUmDadoSqlAsCurrency('SELECT sum(ft.FPC_VLPARC) FROM FAT_PC01 ft WHERE  fpc_STATUS = ''Pendente'' AND FPC_EXCLUSAO = ''N'' '+
   ' AND fpc_vencto <= CURRENT_DATE AND extract( year from fpc_vencto ) = '+IntToStr(ano) );

  if (totalvendas> 0) and (totalvencido>0) then
    indice :=  totalvencido/totalvendas*100;
  labIndice.Caption :=labIndice.Caption +';'+ ' em '+inttostr(ano) + ': '+ FormatFloat('#,###,##0.00 %', indice) ;

end;

procedure TfrmPesquisaInadimplencia.PadraoPesquisa;
begin

end;

procedure TfrmPesquisaInadimplencia.PesqClienteSelect(Sender: TObject);
begin
  inherited;
  EdClienteCodigo.Text :=   PesqCliente.idRetorno;
end;

end.
