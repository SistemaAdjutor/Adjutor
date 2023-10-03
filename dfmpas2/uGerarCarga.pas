unit uGerarCarga;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditFormFDAC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, JvErrorIndicator,
  JvValidators, JvComponentBase, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.Buttons, Vcl.ExtCtrls,
  Data.FMTBcd, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Data.SqlExpr, Vcl.StdCtrls, SgDbSeachComboUnit, Vcl.DBCtrls, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxSpinEdit,
  cxTimeEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,DateUtils,  System.StrUtils,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmGerarCarga = class(TfrmBaseDBEditFDAC)
    Panel1: TPanel;
    Label2: TLabel;
    edPesquisaEquipamento: TSgDbSearchCombo;
    qEquipamento: TSQLQuery;
    cdsEditCAR_CODIGO: TIntegerField;
    cdsEditDATA_CARGA: TSQLTimeStampField;
    cdsEditCAR_STATUS: TStringField;
    cdsEditCAR_DATAINI: TSQLTimeStampField;
    cdsEditCAR_DATAFIM: TSQLTimeStampField;
    cdsEditCAR_PESOTOTAL: TBCDField;
    cdsEditCAR_CUSTO: TBCDField;
    cdsEditCAR_PRECOTOTAL: TBCDField;
    cdsEditCAR_TEMPOGASTO: TBCDField;
    cdsEditEQP_CODIGO: TIntegerField;
    cdsEditCAR_DTPREVINI: TSQLTimeStampField;
    cdsEditCAR_DTPREVFIM: TSQLTimeStampField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cdsEditDetailIOP_NORDEM: TStringField;
    cdsEditDetailIOP_PESO: TFMTBCDField;
    cdsEditDetailPRD_REFER: TStringField;
    cdsEditDetailPRD_DESCRI: TStringField;
    cdsEditDetailCLI_CODIGO: TStringField;
    cdsEditDetailCLI_RAZAO: TStringField;
    cdsEditDetailPCP_CODIGO: TIntegerField;
    cdsEditDetailIOP_CODIGO: TIntegerField;
    cdsEditDetailOPE_CODIGO: TIntegerField;
    cdsEditDetailCAR_CODIGO: TIntegerField;
    cdsEditDetailPCP_STATUS: TStringField;
    Label1: TLabel;
    DBText1: TDBText;
    cdsEditOPE_CODIGO: TIntegerField;
    cdsEditOPE_DESCRICAO: TStringField;
    cxGrid1DBTableView1IOP_NORDEM: TcxGridDBColumn;
    cxGrid1DBTableView1IOP_PESO: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_REFER: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_DESCRI: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1CLI_RAZAO: TcxGridDBColumn;
    DBText2: TDBText;
    Label3: TLabel;
    grpPrevisao: TGroupBox;
    Label4: TLabel;
    Término: TLabel;
    cdsEditDetailpesototal: TAggregateField;
    cdsEditOPE_NOME: TStringField;
    DBText3: TDBText;
    DataIni: TcxDateEdit;
    HoraIni: TcxTimeEdit;
    DataFim: TcxDateEdit;
    HoraFim: TcxTimeEdit;
    tempoExecucao: TcxTimeEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBText4: TDBText;
    Panel2: TPanel;
    panel4: TPanel;
    btnNovo: TSpeedButton;
    btnExclui: TSpeedButton;
    cdsEditDetailPCP_DATAINI: TSQLTimeStampField;
    cdsEditDetailPCP_DATAFIM: TSQLTimeStampField;
    cdsEditDetailEQP_CODIGO: TIntegerField;
    cdsEditDetailPCP_TEMPO_GASTO: TBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure tempoExecucaoExit(Sender: TObject);
    procedure HoraFimExit(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure cdsEditAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    fSTATUS : string;
    procedure SetStatus (const Avalue: string);

  public
    property statusCarga : string read fSTATUS write SetStatus;
  end;

var
  frmGerarCarga: TfrmGerarCarga;

implementation

{$R *.dfm}
 uses uteis;
procedure TfrmGerarCarga.btnExcluiClick(Sender: TObject);
begin
  inherited;
  if (MessageDlg('Deseja excluir a ordem' +cdsEditDetailIOP_NORDEM.AsString, mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    cdsEditDetail.Delete;
end;

procedure TfrmGerarCarga.btnNovoClick(Sender: TObject);
var aux2, aux, item :String;
 n : integer;
 iop_codigo, carga_ant : integer;

begin
  inherited;
  item := InputBox('Ordem de Serviço','Item','');
    n:= POS('-',item);
  if n=0 then
     item:= strzero(item,6)+'-'+'01'
  else if n>0 then
  begin
    aux := trim(Copy(item, 1,n-1));
    aux2 := trim(Copy(item,n+1,2));
    item := strzero(aux,6)+'-'+strzero(aux2,2);
  end;
  OpenAux('SELECT IOP_CODIGO FROM ITEM_ORDEMPRODUCAO WHERE IOP_NORDEM = '+QuotedStr( item) );
  if qAux.IsEmpty then
    raise Exception.Create('Item inexistente');

  iop_codigo := qAux.FieldByName('iop_codigo').AsInteger;
  if cdsEditDetail.Locate('iop_codigo',iop_codigo,[]) then
    raise Exception.Create('Item já está nesta carga');

  //verifica se tem operação para este ordem
  OpenAux('SELECT *  from item_ordemproducao iop '+
          '  join prd0000 pr on (pr.prd_codigo = iop.prd_codigo) '+
          '  join PROCESSOS_OPERACOES pop on (iop.pro_codigo = pop.pro_codigo) ' +
          ' where iop_codigo = '+IntToStr(iop_codigo)+
          '  AND OPE_CODIGO =  '+IntToStr(cdsEditOPE_CODIGO.AsInteger)
          );
  if qAux.IsEmpty then
    raise Exception.Create('O item não foi programado para a operação da carga');

  OpenAux(' SELECT ca.car_codigo, car_status FROM PROCESSOS_PRODUCAO pp JOIN carga ca ON (ca.CAR_CODIGO = pp.CAR_CODIGO) '+
          ' WHERE iop_codigo = '+IntToStr(iop_codigo)+
          ' AND pp.OPE_CODIGO =  '+IntToStr(cdsEditOPE_CODIGO.AsInteger)
          );
  if not qAux.IsEmpty then
  begin
     if qAux.FieldByName('CAR_STATUS').AsString = 'F' then
        GeraException('Item se encontra em uma carga já finalizada')
      else if qAux.FieldByName('CAR_STATUS').AsString = 'E' then
        GeraException('Item se encontra em uma Carga em andamento')
      else if qAux.FieldByName('CAR_STATUS').AsString = 'S' then
        GeraException('Item se encontra em uma Carga iniciada') ;

      if (MessageDlg('Item se encontra em outra carga.'+#13+#10+
          ' Deseja excluir da carga anterior e incluir nesta ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
         ExecSql(' DELETE FROM PROCESSOS_PRODUCAO '+// set car_codigo =  '+IntToStr(cdsEditCAR_CODIGO.AsInteger) +
           ' where iop_codigo = '+IntToStr(iop_codigo)+
           ' AND OPE_CODIGO =  '+IntToStr(cdsEditOPE_CODIGO.AsInteger));
         //verificar se a carga tem alguma ordem
        OpenAux2( ' SELECT * FROM CARGA c  '+
                 ' WHERE NOT EXISTS ( SELECT * FROM PROCESSOS_PRODUCAO pp WHERE pp.CAR_CODIGO = c.CAR_CODIGO ) '+
                 ' AND CAR_CODIGO = '+ IntToStr(qAux.FieldByName('CAR_CODIGO').AsInteger));
        if  qAux2.IsEmpty then
          ExecSql('update CARGA set CAR_STATUS = '+QuotedStr('A') + ' WHERE CAR_CODIGO = '+IntToStr(qAux.FieldByName('CAR_CODIGO').AsInteger) );


      end
      else
       exit;
  end;
        OpenAux(' SELECT IOP_NORDEM, PRD_REFER, PRD_DESCRI, cl.CLI_CODIGO,CLI_RAZAO,IOP_PESO,IOP_QUANTIDADE,    '+
                ' (SELECT FIRST 1 PRF_QTDE_ENV_PRODUCAO FROM PED_IT01 IT WHERE IT.PED_CODIGO = op.PED_CODIGO AND IOP.PRD_CODIGO = IT.PRD_CODIGO) AS PRF_QTDE_ENV_PRODUCAO '+
                ' FROM ITEM_ORDEMPRODUCAO iop JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO) '+
                ' JOIN ORDEMPRODUCAO OP ON (OP.OPR_CODIGO = IOP.OPR_CODIGO) '+
                ' JOIN CLI0000 CL ON (CL.CLI_CODIGO = OP.CLI_CODIGO) ' +
                ' where iop_codigo = '+IntToStr(iop_codigo));

         cdsEditDetail.Insert;
        //campos obrigatórios
        cdsEditDetailPCP_CODIGO.AsInteger := GetNextSequence('GEN_PROCESSOS_PRODUCAO') ;
        cdsEditDetailIOP_CODIGO.AsInteger := iop_codigo;
        cdsEditDetailOPE_CODIGO.AsInteger := cdsEditOPE_CODIGO.AsInteger ;
        cdsEditDetailCAR_CODIGO.AsInteger := cdsEditCAR_CODIGO.AsInteger ;
        // se a carga foi iniciada ou finalizada
        if MatchStr(statusCarga,['E','S','F']) then
        begin
           cdsEditDetailPCP_STATUS.AsString := statusCarga;
           cdsEditDetailPCP_DATAINI.AsDateTime := cdsEditCAR_DATAINI.AsDateTime;
           if statusCarga = 'F' then
           Begin
             cdsEditDetailPCP_DATAFIM.AsDateTime :=  cdsEditCAR_DATAFIM.AsDateTime;
             cdsEditDetailPCP_TEMPO_GASTO.AsFloat := cdsEditCAR_TEMPOGASTO.AsFloat;
           End;
           cdsEditDetailEQP_CODIGO.AsInteger := cdsEditEQP_CODIGO.AsInteger;
        end
        Else
          cdsEditDetailPCP_STATUS.AsString := 'C';
        cdsEditDetailIOP_NORDEM.AsString := qAux.FieldByName('IOP_NORDEM').AsString;
        cdsEditDetailPRD_REFER.AsString :=  qAux.FieldByName('PRD_REFER').AsString;
        cdsEditDetailPRD_DESCRI.AsString := qAux.FieldByName('PRD_DESCRI').AsString;
        cdsEditDetailCLI_RAZAO.AsString := qAux.FieldByName('CLI_RAZAO').AsString;
        cdsEditDetailCLI_CODIGO.AsString:= qAux.FieldByName('CLI_CODIGO').AsString;
        if qAux.FieldByName('PRF_QTDE_ENV_PRODUCAO').AsFloat = 0  then
           cdsEditDetailIOP_PESO.AsFloat := qAux.FieldByName('IOP_QUANTIDADE').AsFloat
        else
           cdsEditDetailIOP_PESO.AsFloat := qAux.FieldByName('IOP_PESO').AsFloat*qAux.FieldByName('PRF_QTDE_ENV_PRODUCAO').AsFloat ;

        cdsEditDetail.Post;
      cxGrid1.Refresh;

end;

procedure TfrmGerarCarga.btnOkClick(Sender: TObject);
begin
  if cdsEditDetail.RecordCount = 0  then
    raise Exception.Create('Sem item na carga');

   if not (cdsedit.State in dsEditModes) then
    cdsedit.edit;
    if cdsEditDetailpesototal.value > 0  then
      cdsEditCAR_PESOTOTAL.AsFloat :=  cdsEditDetailpesototal.Value;
   if DataIni.Date> 0  then
    cdsEditCAR_DTPREVINI.AsDateTime := DataIni.Date + HoraIni.Time;
   if  DataFim.Date>0 then
    cdsEditCAR_DTPREVFIM.AsDateTime := DataFim.Date + HoraFim.time;
  cdsedit.Post;

  inherited;

end;

procedure TfrmGerarCarga.cdsEditAfterOpen(DataSet: TDataSet);
var  termino, inicio  : TDateTime;
begin
  inherited;
  if not cdsEdit.IsEmpty then
  begin
   if  cdsEditCAR_DTPREVINI.AsDateTime > 0  then
   begin
    DataIni.Date := DateOf(  cdsEditCAR_DTPREVINI.AsDateTime);
    HoraIni.Time := TimeOf(  cdsEditCAR_DTPREVINI.AsDateTime);
   end;
   if cdsEditCAR_DTPREVFIM.AsDateTime > 0  then
   begin
    datafim.Date := dateof(cdsEditCAR_DTPREVFIM.AsDateTime);
    HoraFim.time := TimeOf(cdsEditCAR_DTPREVFIM.AsDateTime);
   end;
    if (DataIni.Date > 0 ) and (HoraIni.Time > 0 ) and (HoraFim.Time > 0 )  and (DataFim.Date>0) then
    begin
      inicio :=  DataIni.Date + HoraIni.Time  ;
      termino := DataFim.Date + HoraFim.Time;
      TimeInRange(tempoExecucao.time,inicio,termino,false)
    end;

  end;
end;

procedure TfrmGerarCarga.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmGerarCarga.FormCreate(Sender: TObject);
begin
  inherited;
  TemDetalhe := TRUE;
end;

procedure TfrmGerarCarga.FormDestroy(Sender: TObject);
begin
  inherited;
  frmGerarCarga := NIL;
end;

procedure TfrmGerarCarga.FormResize(Sender: TObject);
begin
  inherited;
  SELF.Height := 572;
  SELF.Width :=  970;
end;

procedure TfrmGerarCarga.FormShow(Sender: TObject);
begin
  inherited;

 if MatchStr(statusCarga,['E','S']) then
  self.Caption := 'Gerar Carga de industrialização - EM ANDAMENTO '
 Else if statusCarga = 'F' then
  self.Caption := 'Gerar Carga de industrialização - JÁ FINALIZADA '
 else
  self.Caption := 'Gerar Carga de industrialização';
  if MatchStr(statusCarga,['E','P','F'])  then
  Begin
    btnExclui.Enabled := False;
    edPesquisaEquipamento.Enabled := False;
    grpPrevisao.Enabled := False;
    HoraIni.Enabled := False;
    HoraFim.Enabled := False;
  End;

end;

procedure TfrmGerarCarga.HoraFimExit(Sender: TObject);
var  termino, inicio  : TDateTime;
begin
  inherited;
  if (DataIni.Date > 0 ) and (HoraIni.Time > 0 ) and (HoraFim.Time > 0 )  and (DataFim.Date>0) then
  begin
    inicio :=  DataIni.Date + HoraIni.Time  ;
    termino := DataFim.Date + HoraFim.Time;
    TimeInRange(tempoExecucao.time,inicio,termino,false)
  end;

end;

procedure TfrmGerarCarga.SetStatus(const Avalue: string);
begin
  fSTATUS := Avalue;
end;

procedure TfrmGerarCarga.tempoExecucaoExit(Sender: TObject);
var  termino : TDateTime;
begin
  inherited;
  if (DataIni.Date > 0 ) and (HoraIni.Time > 0 ) and (tempoExecucao.Time > 0 )  then
  begin
    termino :=  DataIni.Date + HoraIni.Time  +tempoExecucao.Time;
    datafim.Date := DateOf(termino);
    HoraFim.Time := TimeOf(termino);
  end;

end;

end.
