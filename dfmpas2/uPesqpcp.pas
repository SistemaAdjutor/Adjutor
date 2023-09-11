unit uPesqpcp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaFDAC, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, frxClass, Vcl.Menus, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab, JvExControls, JvArrowButton, Vcl.StdCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, cxCheckBox, cxGridBandedTableView, cxGridDBBandedTableView, Data.FMTBcd,
  SgDbSeachComboUnit, Data.SqlExpr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, ACBrCalculadora,   System.StrUtils;

type
  TfrmPCP = class(TfrmBaseDBPesquisaFDAC)
    cdsBuscaOPE_NOME: TStringField;
    cdsBuscaIOP_NORDEM: TStringField;
    cdsBuscaCAR_CODIGO: TIntegerField;
    cdsBuscaDATA_CARGA: TSQLTimeStampField;
    cdsBuscaPRD_CODIGO: TStringField;
    cdsBuscaPRD_DESCRI: TStringField;
    cdsBuscaPRO_DESCRICAO: TStringField;
    cdsBuscaCLI_CODIGO: TStringField;
    cdsBuscaCLI_RAZAO: TStringField;
    cdsBuscaPED_CODIGO: TStringField;
    cdsBuscaIOP_CODIGO: TIntegerField;
    cxgrd1DBTableView1OPE_NOME: TcxGridDBColumn;
    cxgrd1DBTableView1IOP_NORDEM: TcxGridDBColumn;
    cxgrd1DBTableView1CAR_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1DATA_CARGA: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_DESCRI: TcxGridDBColumn;
    cxgrd1DBTableView1PRO_DESCRICAO: TcxGridDBColumn;
    cxgrd1DBTableView1CLI_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1CLI_RAZAO: TcxGridDBColumn;
    cxgrd1DBTableView1PED_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1IOP_QUANTIDADE: TcxGridDBColumn;
    cxgrd1DBTableView1IOP_PESO: TcxGridDBColumn;
    cxgrd1DBTableView1IOP_CUSTO: TcxGridDBColumn;
    cxgrd1DBTableView1IOP_PRECO: TcxGridDBColumn;
    cxgrd1DBTableView1PESO_TOTAL: TcxGridDBColumn;
    cxgrd1DBTableView1Column1: TcxGridDBColumn;
    cxgrd1DBBandedTableView1: TcxGridDBBandedTableView;
    cdsBuscaPRD_REFER: TStringField;
    cxgrd1DBBandedTableView1selecionado: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1OPE_NOME: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_NORDEM: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1CAR_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1DATA_CARGA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRD_REFER: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRD_DESCRI: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRO_DESCRICAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1CLI_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1CLI_RAZAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PED_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_CUSTO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_PRECO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PESO_TOTAL: TcxGridDBBandedColumn;
    cdsBuscaMARCADO: TIntegerField;
    qCli: TSQLQuery;
    Label1: TLabel;
    PesqCliente: TSgDbSearchCombo;
    NumOS: TLabeledEdit;
    pmGerarCarga: TPopupMenu;
    numPedido: TLabeledEdit;
    numCarga: TLabeledEdit;
    Incluirnovacarga1: TMenuItem;
    Incluirnacarga1: TMenuItem;
    cdsBuscaCAR_STATUS: TStringField;
    cxgrd1DBBandedTableView1Situacao: TcxGridDBBandedColumn;
    cdsBuscaOPE_CODIGO: TIntegerField;
    cdsBuscaPCP_STATUS: TStringField;
    cbSituacaoPCP: TComboBox;
    Label2: TLabel;
    cdsBuscaIOP_QUANTIDADE: TFMTBCDField;
    cdsBuscaPESO_TOTAL: TFMTBCDField;
    cdsBuscaIOP_PESO: TFMTBCDField;
    cdsBuscaIOP_CUSTO: TFMTBCDField;
    cdsBuscaIOP_PRECO: TFMTBCDField;
    cdsBuscaOPE_DESCRICAO: TStringField;
    EditarCarga1: TMenuItem;
    cdsBuscaPRF_QTDE_ENV_PRODUCAO: TFMTBCDField;
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PesqClienteButtonClick(Sender: TObject);
    procedure PesqClienteSelect(Sender: TObject);
    procedure NumOSExit(Sender: TObject);
    procedure numPedidoExit(Sender: TObject);
    procedure numCargaExit(Sender: TObject);
    procedure Incluirnovacarga1Click(Sender: TObject);
    procedure cdsBuscaCAR_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsBuscaPCP_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cbSituacaoPCPChange(Sender: TObject);
    procedure Incluirnacarga1Click(Sender: TObject);
    procedure cxgrd1DBBandedTableView1Editing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    function VerificaFase( const iop_codigo, operacao : integer): boolean;
    procedure cdsBuscaCAR_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure EditarCarga1Click(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
  private
    procedure filtro;
  public
    { Public declarations }
  end;

var
  frmPCP: TfrmPCP;

implementation

uses InicioDB, Uteis, PesquisaClientesForm, uGerarCarga ;
{$R *.dfm}

procedure TfrmPCP.btnPesquisaClick(Sender: TObject);
VAR IOP_CODIGO, OPE_CODIGO : INTEGER;
begin
  iop_codigo := cdsBuscaIOP_CODIGO.AsInteger;
  ope_codigo := cdsBuscaOPE_CODIGO.AsInteger;
  inherited;
  if ope_codigo >0  then
   cdsBusca.Locate('iop_codigo;ope_codigo',VarArrayOf([iop_codigo,ope_codigo]),[]);
end;

procedure TfrmPCP.cbSituacaoPCPChange(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

procedure TfrmPCP.cdsBuscaCAR_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if sender.AsInteger>0 then
  begin
    Text := 'CG '+ IntToStr(Sender.AsInteger);


  end;
end;

procedure TfrmPCP.cdsBuscaCAR_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
   if Sender.AsString = 'P' then
    Text := 'Aguardando carga'
  else if Sender.AsString = 'C' then
    Text := 'Carga confirmada'
  else if Sender.AsString = 'F' then
    Text := 'Finalizado'
  else if Sender.AsString = 'S' then
    Text := 'Carga parada'
  else if Sender.AsString = 'E' then
    Text := 'Carga iniciada'
  else if Sender.AsString = 'A' then
    Text := 'Cancelado';
end;

procedure TfrmPCP.cdsBuscaPCP_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'G' then
    Text := 'Aguardando carga'
  else if Sender.AsString = 'C' then
    Text := 'Carga confirmada'
  else if Sender.AsString = 'A' then
    Text := 'Em andamento'
  else if Sender.AsString = 'F' then
    Text := 'Finalizado';

end;

procedure TfrmPCP.cxgrd1DBBandedTableView1Editing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
var
  carga : integer;
begin
  inherited;

  if AItem.Index = cxgrd1DBBandedTableView1selecionado.Index then
  begin
   if  cdsBuscaCAR_CODIGO.AsInteger>0 then
   Begin
     ShowMessage('Carga já foi confirmada ');

   end;
    aallow :=  cdsBuscaCAR_CODIGO.AsInteger = 0;


  end;
end;

procedure TfrmPCP.EditarCarga1Click(Sender: TObject);
var iop_codigo, ope_codigo : integer;
begin
  inherited;
  if cdsBuscaCAR_CODIGO.AsInteger >0 then
  begin
    OpenAux( ' select car_codigo, car_status from carga where car_codigo = ' + inttostr(cdsBuscaCAR_CODIGO.AsInteger)) ;
    // P - PENDENTE ; C - CONFIRMADO ;F- FINALIZADO OU CONCLUIDO ;A- CANCELADO E - EM ANDAMENTO';
//    if qAux.FieldByName('car_status').AsString = 'F' then
//      raise Exception.Create('Carga já finalizada')
//    else if qAux.FieldByName('car_status').AsString = 'E' then
//      raise Exception.Create('Carga em andamento')
     if qAux.FieldByName('car_status').AsString = 'A' then
      raise Exception.Create('Carga cancelada');
//    else if qAux.FieldByName('car_status').AsString = 'S' then
//      raise Exception.Create('Carga já foi iniciada') ;


    frmGerarCarga := TfrmGerarCarga.Create(Application);
    try
     iop_codigo := cdsBuscaIOP_CODIGO.AsInteger;
     ope_codigo := cdsBuscaOPE_CODIGO.AsInteger;
     frmGerarCarga.statusCarga := qAux.FieldByName('car_status').AsString;
     frmGerarCarga.EditaUnico(inttostr(cdsBuscaCAR_CODIGO.AsInteger), 'Edição da carga '+inttostr(cdsBuscaCAR_CODIGO.AsInteger));
    finally
      cdsBusca.Filtered := False;
      cdsBusca.Filter := '';
      cdsBusca.EnableControls;
      cdsBusca.Connection.Close;
      cdsbusca.Connection.Open;
      cdsbusca.Open;
      if ope_codigo >0  then
       cdsBusca.Locate('iop_codigo;ope_codigo',VarArrayOf([iop_codigo,ope_codigo]),[]);
    end;

  end;
end;

procedure TfrmPCP.filtro;
var sqltext : string;
begin
  with cdsBusca,sql do
  begin

    sqltext := ' SELECT 0 marcado, iop.iop_codigo,ope.ope_codigo, ope.ope_nome, coalesce(PCP_STATUS,''G'') PCP_STATUS,  coalesce(CAR_STATUS,''P'') CAR_STATUS , IOP_NORDEM, ca.car_codigo, '+
              '  ca.DATA_CARGA,  IOP_PESO* IOP_QUANTIDADE  peso_total, '+
               '  pr.prd_codigo,pr.prd_refer, pr.prd_descri, pro.pro_descricao, '+
               '  cl.cli_codigo, cl.cli_razao, OP.ped_codigo, IOP_QUANTIDADE, IOP_PESO, IOP_CUSTO, IOP_PRECO, ope_descricao, '+
               ' (SELECT FIRST 1 PRF_QTDE_ENV_PRODUCAO FROM PED_IT01 IT WHERE IT.PED_CODIGO = PE.PED_CODIGO AND IOP.PRD_CODIGO = IT.PRD_CODIGO) AS PRF_QTDE_ENV_PRODUCAO '+
               '  from item_ordemproducao iop '+
               '  join ordemproducao op on (op.opr_codigo = iop.opr_codigo) '+
               '  join ped0000 pe on (pe.ped_codigo = op.ped_codigo and PE.EMP_CODIGO = OP.EMP_CODIGO )  '+
               '  join cli0000 cl on (cl.cli_codigo = op.cli_codigo)  '+
               '  join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)  '+
               '  join processos pro on (pro.pro_codigo = iop.pro_codigo)'+ //usando copia do modelo
               '  join PROCESSOS_OPERACOES po on (po.pro_codigo = pro.pro_codigo)'+
               '  join operacoes ope on (ope.ope_codigo = po.ope_codigo AND OPE_NAOUSACARGA = ''N'' )'+
               '  left join PROCESSOS_PRODUCAO pp on (pp.ope_codigo = ope.ope_codigo and iop.iop_codigo = pp.iop_codigo)'+
               '  left join carga ca on (ca.car_codigo = pp.car_codigo)';

    cdsBusca.SQL.Text := sqltext;


    if DBINICIO.Exclusivo('PEDIDOS') then
       SqlAdd(' op.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
     SqlAdd(' OPR_CONCLUSAO is null' );
    if PesqCliente.idRetorno <> '' then
      SqlAdd('cl.cli_codigo = '+QuotedStr(PesqCliente.idRetorno) );
    if  (cbSituacaoPCP.ItemIndex > 0  ) then
    begin
      case cbSituacaoPCP.ItemIndex of
        1:  SqlAdd(' pp.iop_codigo IS NULL ');//AGUARDANDO CARGA
        2:  SqlAdd('CAR_STATUS = ' +QuotedStr('C')); //Carga confirmada
        3:  SqlAdd('CAR_STATUS = ' +QuotedStr('E')); //Carga em andamento
        4:  SqlAdd('CAR_STATUS = ' +QuotedStr('F')); //Carga FINALIZADA
      end;

    end;
    if NumOS.Text <> '' then
      SqlAdd('IOP_NORDEM  CONTAINING '+ QuotedStr(NumOS.Text));
    if numPedido.Text <> '' then
      SqlAdd(' OP.ped_codigo CONTAINING '+ QuotedStr(numPedido.Text) );
    if numCarga.Text <> ''  then
      SqlAdd('ca.car_codigo CONTAINING '+ QuotedStr(numCarga.Text));

  end;

end;

procedure TfrmPCP.FormCreate(Sender: TObject);
begin
  inherited;

  Self.ProcedureFiltro := filtro;
//  self.ProcedureFiltroDetalhe := filtroDetalhe;
  self.Constraints.MinHeight:= 612;;
  self.Constraints.MinWidth:=1175;
  self.Constraints.MaxHeight:= 0;
//  self.width:=1175;
//  self.height:=612;
  Menu := 'ProduçãoPCP';

  self.CampoID := 'IOP_CODIGO';
end;

procedure TfrmPCP.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPCP := NIL;
end;

procedure TfrmPCP.FormShow(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
  cbSituacaoPCP.ItemIndex := 1;
  btnPesquisa.Click;
  cxgrd1DBBandedTableView1.DataController.Groups.FullCollapse;
end;

procedure TfrmPCP.Incluirnacarga1Click(Sender: TObject);
var carga : string;
    operacao,iop_codigo, ope_codigo : integer;
begin



  if cdsBusca.State in dsEditModes then
    cdsbusca.Post;

  carga :=  InputBox('Digite número carga', 'Carga','');
  CARGA := trim(ReplaceStr(UpperCase(carga),'CG',''));
  if StrToIntDef(carga,0) <= 0 then
    raise Exception.Create('Carga inválida');
  OpenAux( ' select car_codigo, car_status from carga where car_codigo = ' + carga) ;
  // P - PENDENTE ; C - CONFIRMADO ;F- FINALIZADO OU CONCLUIDO ;A- CANCELADO E - EM ANDAMENTO';
  if qAux.FieldByName('car_status').AsString = 'F' then
    raise Exception.Create('Carga já finalizada. Edite a carga para acrescentar OS quando estiver finalizada.')
  else if qAux.FieldByName('car_status').AsString = 'E' then
    raise Exception.Create('Carga em andamento. Edite a carga para acrescentar OS quando estiver em andamento.')
  else if qAux.FieldByName('car_status').AsString = 'A' then
    raise Exception.Create('Carga cancelada') ;


  if BuscaUmDadoSqlAsInteger(' select car_codigo from carga where car_codigo = ' + carga )> 0 then
  begin
//    FDTransac.Connection := dbConn;

    ope_codigo := cdsBuscaOPE_CODIGO.AsInteger;
    iop_codigo := cdsBuscaIOP_CODIGO.AsInteger;
    try

      cdsBusca.DisableControls;
      cdsBusca.Filtered := False;
      cdsBusca.Filter := ' marcado = 1';
      cdsBusca.Filtered := True;
      if cdsbusca.RecordCount=0 then
        raise Exception.Create('Nada foi selecionado');

      OpenAux('SELECT first 1 OPE_CODIGO FROM PROCESSOS_PRODUCAO '+
             ' where CAR_CODIGO = '+ (carga) );


     operacao := qAux.FieldByName('OPE_CODIGO').AsInteger;

     cdsBusca.First;
     while not cdsbusca.Eof do
     begin
       if operacao <> cdsBusca.FieldByName('OPE_CODIGO').AsInteger then
         raise Exception.Create('Ordem não compatível com a fase da carga');

       cdsBusca.Next;
     end;
//     if (MessageDlg('Confirma a carga nº '+carga , mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
//      Exit;
      dbConn.Transaction.StartTransaction;
      try
        frmGerarCarga := TfrmGerarCarga.Create(Application);
         iop_codigo := cdsBuscaIOP_CODIGO.AsInteger;
         ope_codigo := cdsBuscaOPE_CODIGO.AsInteger;
          with frmGerarCarga do
          begin
            cdsEdit.Close;
            cdsEdit.Params[0].Value := StrToInt( carga);
            cdsEdit.open;
            cdsedit.Edit;
            cdsEditOPE_CODIGO.AsInteger := cdsBusca.FieldByName('OPE_CODIGO').AsInteger;
            cdsEditOPE_DESCRICAO.AsString := cdsBuscaOPE_DESCRICAO.AsString;
            cdsEditOPE_NOME.AsString := cdsBuscaOPE_NOME.AsString;
            cdsEditDetail.Close;
            cdsEditDetail.Params[0].Value := StrToInt( carga);
            cdsEditDetail.Open;

             cdsBusca.First;

             while not cdsBusca.Eof do
             begin
                cdsEditDetail.Insert;
                //campos obrigatórios
                cdsEditDetailPCP_CODIGO.AsInteger := GetNextSequence('GEN_PROCESSOS_PRODUCAO') ;
                cdsEditDetailIOP_CODIGO.AsInteger := cdsBusca.FieldByName('iop_codigo').AsInteger;
                cdsEditDetailOPE_CODIGO.AsInteger := cdsBusca.FieldByName('OPE_CODIGO').AsInteger;
                cdsEditDetailCAR_CODIGO.AsInteger := StrToInt(carga);
                cdsEditDetailPCP_STATUS.AsString := 'C';
                cdsEditDetailIOP_NORDEM.AsString := cdsBusca.FieldByName('IOP_NORDEM').AsString;
                cdsEditDetailPRD_REFER.AsString := cdsBuscaPRD_REFER.AsString;
                cdsEditDetailPRD_DESCRI.AsString := cdsBuscaPRD_DESCRI.AsString;
                cdsEditDetailCLI_RAZAO.AsString := cdsBuscaCLI_RAZAO.AsString;
                cdsEditDetailCLI_CODIGO.AsString:= cdsBuscaCLI_CODIGO.AsString;
                if cdsBuscaPRF_QTDE_ENV_PRODUCAO.AsFloat = 0  then
                   cdsEditDetailIOP_PESO.AsFloat := cdsBuscaIOP_QUANTIDADE.AsFloat
                else
                 cdsEditDetailIOP_PESO.AsFloat := cdsBuscaIOP_PESO.AsFloat*cdsBuscaPRF_QTDE_ENV_PRODUCAO.AsFloat ;

                cdsEditDetail.Post;
               cdsBusca.Next;
             end;
             frmGerarCarga.ShowModal;
           end;
       if dbConn.Transaction.active then
        dbConn.Transaction.Commit;
      except on E: Exception do
        begin
         raise Exception.Create(e.Message);
         dbConn.Transaction.Rollback;
        end;
      end;

    finally
      cdsBusca.Filtered := False;
      cdsBusca.Filter := '';
      cdsBusca.EnableControls;
      cdsBusca.Connection.Close;
      cdsbusca.Connection.Open;
      cdsbusca.Open;
      if ope_codigo >0  then
       cdsBusca.Locate('iop_codigo;ope_codigo',VarArrayOf([iop_codigo,ope_codigo]),[]);


    end;


  end
  else
   raise Exception.Create('Carga inexistente');
end;

procedure TfrmPCP.Incluirnovacarga1Click(Sender: TObject);
var
 operacao : integer;
 iop_codigo, ope_codigo : integer;
begin
  inherited;
  if cdsBusca.State in dsEditModes then
    cdsbusca.Post;
  ope_codigo := cdsBuscaOPE_CODIGO.AsInteger;
  iop_codigo := cdsBuscaIOP_CODIGO.AsInteger;

  dbConn.Transaction.StartTransaction;
  try
    cdsBusca.DisableControls;
    cdsBusca.Filtered := False;
    cdsBusca.Filter := ' marcado = 1';
    cdsBusca.Filtered := True;

    if cdsbusca.RecordCount=0 then
        raise Exception.Create('Nada foi selecionado');
     cdsBusca.First;
     operacao := cdsBusca.FieldByName('OPE_CODIGO').AsInteger;
     cdsBusca.Next;
     while not cdsbusca.Eof do
     begin
       if operacao <> cdsBusca.FieldByName('OPE_CODIGO').AsInteger then
         raise Exception.Create('Seleção de fases diferentes para mesma carga não é possível');


       cdsBusca.Next;
     end;

    try

      frmGerarCarga := TfrmGerarCarga.Create(Application);
       with frmGerarCarga do
        begin

           cdsEdit.Close;
           cdsEdit.Params[0].Value := -1;
           cdsEdit.open;
           cdsedit.Insert;
           cdsEditCAR_CODIGO.AsInteger :=  GetNextSequence('GEN_CARGA');
           cdsEditDATA_CARGA.AsDateTime := now;
           cdsEditCAR_STATUS.AsString := 'C';
           cdsEditOPE_CODIGO.AsInteger := cdsBusca.FieldByName('OPE_CODIGO').AsInteger;
           cdsEditOPE_DESCRICAO.AsString := cdsBuscaOPE_DESCRICAO.AsString;
           cdsEditOPE_NOME.AsString := cdsBuscaOPE_NOME.AsString;
//           cdsEditCAR_PESOTOTAL.
           cdsEdit.Post;
           cdsBusca.First;
           cdsEditDetail.Close;
           cdsEditDetail.Params[0].Value := -1;
           cdsEditDetail.Open;
           while not cdsBusca.Eof do
           begin
              cdsEditDetail.Insert;
              //campos obrigatórios
              cdsEditDetailPCP_CODIGO.AsInteger := GetNextSequence('GEN_PROCESSOS_PRODUCAO') ;
              cdsEditDetailIOP_CODIGO.AsInteger := cdsBusca.FieldByName('iop_codigo').AsInteger;
              cdsEditDetailOPE_CODIGO.AsInteger := cdsBusca.FieldByName('OPE_CODIGO').AsInteger;
              cdsEditDetailCAR_CODIGO.AsInteger := cdsEditCAR_CODIGO.AsInteger ;
              cdsEditDetailPCP_STATUS.AsString := 'C';
              cdsEditDetailIOP_NORDEM.AsString := cdsBusca.FieldByName('IOP_NORDEM').AsString;
              cdsEditDetailPRD_REFER.AsString := cdsBuscaPRD_REFER.AsString;
              cdsEditDetailPRD_DESCRI.AsString := cdsBuscaPRD_DESCRI.AsString;
              cdsEditDetailCLI_RAZAO.AsString := cdsBuscaCLI_RAZAO.AsString;
              cdsEditDetailCLI_CODIGO.AsString:= cdsBuscaCLI_CODIGO.AsString;
              if cdsBuscaPRF_QTDE_ENV_PRODUCAO.AsFloat = 0  then
                 cdsEditDetailIOP_PESO.AsFloat := cdsBuscaIOP_QUANTIDADE.AsFloat
              else
               cdsEditDetailIOP_PESO.AsFloat := cdsBuscaIOP_PESO.AsFloat*cdsBuscaPRF_QTDE_ENV_PRODUCAO.AsFloat ;
              cdsEditDetail.Post;
             cdsBusca.Next;
           end;
          IF frmGerarCarga.ShowModal = mrOk then
          begin
            ShowMessage('Carga '+ cdsEditCAR_CODIGO.AsString+ ' gerado com sucesso ');

          end;

        end;


    except on E: Exception do
      begin
       raise Exception.Create(e.Message);
       dbConn.Transaction.Rollback;
      end;
    end;

  finally
      cdsBusca.Filtered := False;
      cdsBusca.Filter := '';
      cdsBusca.EnableControls;
      cdsBusca.Connection.Close;
      cdsbusca.Connection.Open;
      cdsbusca.Open;
      if ope_codigo >0  then
       cdsBusca.Locate('iop_codigo;ope_codigo',VarArrayOf([iop_codigo,ope_codigo]),[]);
  end;


end;

procedure TfrmPCP.numCargaExit(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

procedure TfrmPCP.NumOSExit(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

procedure TfrmPCP.numPedidoExit(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

procedure TfrmPCP.PesqClienteButtonClick(Sender: TObject);
var tcr : tFrmPesquisaClientes;
begin
  inherited;
  tcr:= tFrmPesquisaClientes.Create(self);
  try
    tcr.ShowModal;
    if tcr.modalresult = mrok then
      PesqCliente.idRetorno := tcr.IDRetorno;
    btnPesquisa.Click;

  finally
       FreeAndNil(tcr);
  end;
end;

procedure TfrmPCP.PesqClienteSelect(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

function TfrmPCP.VerificaFase(const iop_codigo, operacao: integer): boolean;
begin
 result :=
  BuscaUmDadoSqlAsInteger('SELECT FIRST 1 ope_codigo               '+
                  '  FROM ITEM_ORDEMPRODUCAO IOP JOIN PRD0000 PR ON (PR.PRD_CODIGO = IOP.PRD_CODIGO) ' +
                  '  JOIN PROCESSOS_OPERACOES POP ON (POP.PRO_CODIGO = iop.PRO_CODIGO) '+
                  '  WHERE IOP.IOP_CODIGO = '+IntToStr(iop_codigo) +' AND                                   '+
                  '  NOT EXISTS (SELECT * FROM  PROCESSOS_PRODUCAO PCP                '+
                  '             WHERE PCP.PCP_STATUS  <> ''A'' AND  PCP.IOP_CODIGO = IOP.IOP_CODIGO AND PCP.OPE_CODIGO = POP.OPE_CODIGO) '+
                  ' ORDER BY POP_SEQ               ') =   operacao ;

end;

end.
