unit uIncApontaIndustrial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditFormFDAC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, Vcl.StdCtrls,
  JvErrorIndicator, JvValidators, JvComponentBase, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab,
  Vcl.Buttons, Vcl.ExtCtrls, SgDbSeachComboUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Data.FMTBcd, Vcl.DBCtrls, Data.SqlExpr, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxDBExtLookupComboBox, System.StrUtils, uresultadoinspecao, Vcl.ComCtrls, dxCore, cxDateUtils, cxSpinEdit, cxTimeEdit, cxCalendar,
  System.DateUtils, BaseDbEstoqueForm, uPesqPedidoIndus;

type
  TfrmApontamentoIndustrial = class(TfrmBaseDBEditFDAC)
    Panel1: TPanel;
    Label3: TLabel;
    ldata: TLabel;
    cdsEditAPP_CODIGO: TIntegerField;
    cdsEditPCP_CODIGO: TIntegerField;
    cdsEditEQP_CODIGO: TIntegerField;
    cdsEditCAR_CODIGO: TIntegerField;
    cdsEditAPP_STATUS: TStringField;
    cdsEditAPP_DATAINI: TSQLTimeStampField;
    cdsEditAPP_DATAFIM: TSQLTimeStampField;
    cdsEditCOL_CODIGO: TIntegerField;
    cdsEditAPP_CANCELADO: TStringField;
    cdsEditAPP_MOTIVOCANCELAMENTO: TStringField;
    cdsEditUSU_CODIGO_CANCEL: TIntegerField;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edPesquisaEquipamento: TSgDbSearchCombo;
    edColaborador: TSgDbSearchCombo;
    qCARGAOS: TFDQuery;
    qCARGAOSIOP_CODIGO: TIntegerField;
    qCARGAOSIOP_NORDEM: TStringField;
    qCARGAOSCAR_CODIGO: TIntegerField;
    qCARGAOSDATA_CARGA: TSQLTimeStampField;
    qCARGAOSPCP_STATUS: TStringField;
    qCARGAOSCAR_STATUS: TStringField;
    qCARGAOSOPE_CODIGO: TIntegerField;
    qCARGAOSOPE_NOME: TStringField;
    qCARGAOSPCP_CODIGO: TIntegerField;
    qCARGAOSCAR_TEMPOGASTO: TBCDField;
    dsCARGAos: TDataSource;
    qColaborador: TSQLQuery;
    qEquipamento: TSQLQuery;
    ldescfase: TLabel;
    Timer1: TTimer;
    edSenha: TEdit;
    Label7: TLabel;
    ValidarSenha: TJvCustomValidator;
    ValidarUsuario: TJvCustomValidator;
    usuarioerro: TLabel;
    cdsEditUSU_CODIGO: TIntegerField;
    qCARGAOSPRO_CODIGO: TIntegerField;
    rbParado: TRadioButton;
    rbAndamento: TRadioButton;
    GroupBox1: TGroupBox;
    rbFinalizado: TRadioButton;
    Memo1: TMemo;
    dataApontamento: TcxDateEdit;
    HoraApontamento: TcxTimeEdit;
    edBusca: TEdit;
    lsituacao: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ValidarSenhaValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
    procedure ValidarUsuarioValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
    procedure btnCancelarClick(Sender: TObject);
    procedure edBuscaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure edSenhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edSenhaEnter(Sender: TObject);

  private
    carga,  operacao,  item : integer;
    nordem : string;
    procedure LimparCampos ;
  public
    pcp_codigo : integer;
    procedure FinalizacaoUltimaOperacao (const  carga, operacao : Integer; const item : integer; const situacao :string; const DataConclusao : TDateTime);
    procedure CalcularTempoGasto (carga, pcp_codigo : integer ; situacao : string ;
                                  var   DataHoraF,DataHoraI, DataHoraStart:TDateTime; var Total : real);
  end;

var
  frmApontamentoIndustrial: TfrmApontamentoIndustrial;

implementation

uses uteis, InicioDB, PesqApontamentos;

{$R *.dfm}

procedure TfrmApontamentoIndustrial.btnCancelarClick(Sender: TObject);
begin
  inherited;
  ModalResult := 2;
  close;
end;

procedure TfrmApontamentoIndustrial.btnOkClick(Sender: TObject);
var
  situacao, numeroOS : string;
  DataHoraF,DataHoraI, DataHoraStart:TDateTime;
  Total,Horas:Real;
  resultado :boolean;
  AbandonoResultado, temCarga : boolean;
  Tcr :  TfrmBaseDbEstoque;
  NaoTemApontamentoFinal : boolean;
  tpe : TfrmPedidoIndustrializacao;
  Relatorio: boolean;
  PrimeiroAndamento : boolean;
  app_codigo, app_codigoAtual : integer;
begin
  if frmApontamentosCargas <> nil then
  begin
    if frmApontamentosCargas.cxgrd1DBTableView1.DataController.Controller.SelectedRecords[0] <> nil then
      numeroOS := frmApontamentosCargas.cxgrd1DBTableView1.DataController.Controller.SelectedRecords[0].Values[frmApontamentosCargas.cxgrd1DBTableView1IOP_NORDEM.index]
    else
      numeroOS := nOrdem;
  end
  else
    numeroOS := nOrdem;
  //DEVE ESTAR PREENCHIDO O USUÁRIO
  if edColaborador.idRetorno = '' then
    GeraException('Preencha o usuário');


  //CASO SEJA EDITANDO UM APONTAMENTO
  if EstadoTela = teEdicao then
  begin
    //verificar data alteração
    OpenAux(' SELECT FIRST 1 * FROM APONTAMENTO_PROCESSO '+
            ' WHERE PCP_CODIGO =  '+ IntToStr(cdsEditPCP_CODIGO.AsInteger)+
            '  AND app_codigo < '+ IntToStr( cdsEditAPP_CODIGO.AsInteger)+
            ' AND APP_CANCELADO IS NULL '+
            'ORDER BY APP_DATAINI DESC  ');
    //NÃO POSSO APONTAR UMA DATA MENOR QUE O APONTAMENTO ANTERIOR
    if not qAux.IsEmpty then
      if qAux.FieldByName('app_dataini').AsDateTime> (dataApontamento.Date + HoraApontamento.Time) then
        GeraException('A data não pode ser menor que a data anterior do apontamento ');

    OpenAux(' SELECT FIRST 1 * FROM APONTAMENTO_PROCESSO '+
            ' WHERE PCP_CODIGO =  '+ IntToStr(cdsEditPCP_CODIGO.AsInteger)+
            '  AND app_codigo > '+ IntToStr( cdsEditAPP_CODIGO.AsInteger)+
            ' AND APP_CANCELADO IS NULL '+
            'ORDER BY APP_DATAINI   ');
    // NÃO PODE APONTAR DATA MAIOR QUE UM APONTAMENTO POSTERIOR
    if not qAux.IsEmpty then
      if qAux.FieldByName('app_dataini').AsDateTime< (dataApontamento.Date + HoraApontamento.Time) then
        GeraException('A data não pode ser maior que a data posterior do apontamento ');

    if item = 0  then
      item := BuscaUmDadoSqlAsInteger( ' SELECT iop_codigo FROM APONTAMENTO_PROCESSO ap ' +
                                       '   JOIN processos_producao pcp ON pcp.PCP_CODIGO = ap.PCP_CODIGO '+
                                       '   WHERE APP_CODIGO = '+ cdsEditAPP_CODIGO.AsString);
  end;


  if EstadoTela = tenovo then
  begin
    dataApontamento.Date := date;
    HoraApontamento.Time := now;


  end;


  if EstadoTela = teNovo then
    btnOk.Tag := 0;

  if self.EstadoTela<> teEdicao then
  begin
     // quando apontar por ordem (ao invez de carga), verificar se todo processo anterior foi já apontado
     if (carga = 0)   and  (BuscaUmDadoSqlAsInteger('SELECT FIRST 1 ope_codigo               '+
                      '  FROM ITEM_ORDEMPRODUCAO IOP JOIN PRD0000 PR ON (PR.PRD_CODIGO = IOP.PRD_CODIGO) ' +
                      '  JOIN PROCESSOS_OPERACOES POP ON (POP.PRO_CODIGO = iop.PRO_CODIGO) '+ // copia o modelo do processo
                      '  WHERE IOP.IOP_CODIGO = '+IntToStr(item) +' AND                                   '+
                      '  NOT EXISTS (SELECT * FROM  PROCESSOS_PRODUCAO PCP                '+
                      '             WHERE PCP.PCP_STATUS  = ''F'' AND  PCP.IOP_CODIGO = IOP.IOP_CODIGO AND PCP.OPE_CODIGO = POP.OPE_CODIGO) '+
                      ' ORDER BY POP_SEQ               ') <> operacao) then
       raise Exception.Create('Fase não pode ser carregada com a OS antes de fazer fases anteriores');

   // Verifica se uma carga em andamento está usando o equipamento selecionado
    if  (edPesquisaEquipamento.idRetorno <> '')  then
    begin
       //verifica se está usando o equipamento em uma carga ainda em processo
        OpenAux3 (' SELECT car_codigo FROM CARGA WHERE CAR_STATUS IN (''E'',''S'') ' +
                ' AND EQP_CODIGO = ' +edPesquisaEquipamento.idRetorno +
                ' AND CAR_CODIGO <> ' +IntToStr(Carga)  );
       if qAux3.FieldByName('car_codigo').AsInteger > 0  then
         raise Exception.Create('Equipamento já em uso na carga nº '+IntToStr( qAux3.FieldByName('car_codigo').AsInteger ));

       // verificando se está usando o equipamento em uma ordem ainda em processo, não terminada
       OpenAux3(' select iop_nordem from processos_producao  pcp '+
                ' join item_ordemproducao iop on (iop.iop_codigo = pcp.iop_codigo) '+
                ' where pcp_status = ''E'' '+
                ' AND EQP_CODIGO =  '+ edPesquisaEquipamento.idRetorno +
                ' AND IOP.IOP_CODIGO <> ' +IntToStr(item) +
                ' and PCP.car_codigo is null ');
       if qAux3.FieldByName('iop_nordem').AsString <> ''  then
         raise Exception.Create('Equipamento já em uso na OS '+ qAux3.FieldByName('iop_nordem').AsString);
    end;
    // validação se nhsa. usuário novo é asenha especial
      if not Validar then
        exit;
      if (edColaborador.Text =  'NOVI')  AND (UpperCase(edSenha.Text) <> DBInicio.Usuario.SENHAPADRAO) then
        raise Exception.Create('Senha inválida');

      if not dbinicio.ValidaUserSenha(edColaborador.CDS.FieldByName('USU_LOGIN').AsString , UpperCase( edSenha.Text))  then
        exit;


  END
  Else if EstadoTela = teEdicao then
  begin
     //se mudou o equipamento na edição mudar de todos apontamentos da carga ou  da ordem
     if cdsEditEQP_CODIGO.AsInteger <> StrToIntDef(edPesquisaEquipamento.idRetorno,0) then
     begin
        //se for carga
        if carga > 0  then
        begin
           ExecSql(' UPDATE APONTAMENTO_PROCESSO '+
                   ' SET EQP_CODIGO = '+ (edPesquisaEquipamento.idRetorno)+
                   '  WHERE CAR_CODIGO = '+IntToStr(CARGA ));


           ExecSql(' update carga SET EQP_CODIGO = '+ (edPesquisaEquipamento.idRetorno)+
                   '  WHERE CAR_CODIGO = '+IntToStr(CARGA ));
          ShowMessage(' O equipamento de todos os apontamentos da CG '+ IntToStr(carga)+' foram atualizados.');

        end
        Else
        begin
            ExecSql(' UPDATE APONTAMENTO_PROCESSO '+
                   ' SET EQP_CODIGO = '+ (edPesquisaEquipamento.idRetorno)+
                   '  WHERE pcp_CODIGO = '+IntToStr(cdsEditPCP_CODIGO.AsInteger ));

          ShowMessage(' O equipamento de todos os apontamentos da ORDEM '+ edBusca.Text+' foram atualizados.');
        end;

     end

  end;


  dbConn.StartTransaction;

  try
      if self.EstadoTela<> teEdicao then
      begin
        // incluir o apontamento
        if cdsEditAPP_CODIGO.IsNull then
          cdsEditAPP_CODIGO.AsInteger := GetNextSequence('GEN_APONTAMENTO_PROCESSO');
        if cdsEditCAR_CODIGO.IsNull AND (CARGA > 0 ) then
          cdsEditCAR_CODIGO.AsInteger := Carga;
        if (cdsEditPCP_CODIGO.IsNull) then
        begin
          if  (pcp_codigo> 0)  then
            cdsEditPCP_CODIGO.AsInteger := pcp_codigo      // codigo do pcp
          else if carga = 0 then // sem carga
          begin
             //inclusão do pcp, porque não é feito pcp para quando aponta por ordem
             // só cria pcp para carga
             pcp_codigo := GetNextSequence('GEN_PROCESSOS_PRODUCAO');   //gera um pcp, já que não foi feita carga
             //item := BuscaUmDadoSqlAsInteger(' SELECT IOP_CODIGO FROM ITEM_ORDEMPRODUCAO WHERE IOP_NORDEM = '+ QuotedStr(NORDEM));
             ExecSql( 'INSERT INTO PROCESSOS_PRODUCAO '+
                      ' (PCP_CODIGO, IOP_CODIGO, OPE_CODIGO, PCP_STATUS, pcp_dataini , EQP_CODIGO ) '+
                      '  VALUES('+IntToStr(pcp_codigo)+','+ IntToStr(item) + ','+ IntToStr(Operacao) + ','+
                      QuotedStr( cdsEditAPP_STATUS.AsString)+','+DateTimeToSQL(now)+','+
                      IIF(edPesquisaEquipamento.idRetorno<>'',edPesquisaEquipamento.idRetorno,'NULL')+
                       ')');

             cdsEditPCP_CODIGO.AsInteger := pcp_codigo;
          end //carga
          else
          begin
              pcp_codigo := BuscaUmDadoSqlAsInteger('SELECT FIRST 1 PCP_CODIGO FROM PROCESSOS_PRODUCAO '+
                                                    ' WHERE CAR_CODIGO = '+IntToStr(carga) );


             cdsEditPCP_CODIGO.AsInteger := pcp_codigo;
          end
        end;
      end;

  //somente para processo que não é carga, inspeção de uma peça, somente quando é por ordem
  resultado := False;
  if BuscaUmDadoSqlAsString('select OPE_TEMRESULTADO from operacoes where ope_codigo = '+IntToStr(operacao) ) = 'S' then
  begin
    frmResultadoInspecao := TfrmResultadoInspecao.Create(Self);
    try
       frmResultadoInspecao.operacao := operacao;
       frmResultadoInspecao.iop_codigo := item;
       frmResultadoInspecao.pcp_codigo := pcp_codigo;
       AbandonoResultado:= frmResultadoInspecao.ShowModal = mrAbort;
    finally
      frmResultadoInspecao.Free;
      resultado := True;
      relatorio := true;
    end;

  end;
  if AbandonoResultado then
    exit;

  if  edColaborador.idRetorno <> '' then
    cdsEditCOL_CODIGO.AsInteger := StrToInt(edColaborador.idRetorno)
  else
    cdsEditCOL_CODIGO.Clear;
  if edPesquisaEquipamento.idRetorno <> '' then
   cdsEditEQP_CODIGO.AsInteger := StrToInt(edPesquisaEquipamento.idRetorno)
  else
    cdsEditEQP_CODIGO.Clear;
  if self.EstadoTela<> teEdicao then
    cdsEditAPP_DATAINI.AsDateTime := now
  else
    cdsEditAPP_DATAINI.AsDateTime :=   dataApontamento.Date + HoraApontamento.Time;
  cdsEditUSU_CODIGO.AsInteger := StrToInt(edColaborador.idRetorno);
  if rbParado.Checked then
   cdsEditAPP_STATUS.AsString := 'P'
  else if rbAndamento.Checked then
   cdsEditAPP_STATUS.AsString := 'E'
  else if rbFinalizado.Checked then
   cdsEditAPP_STATUS.AsString := 'F';
  app_codigoAtual := cdsEditAPP_CODIGO.AsInteger ;

  if cdsEdit.State in dsEditModes  then
    cdsEdit.Post;
    inherited;
    situacao :=  cdsEditAPP_STATUS.AsString;
    dbConn.close;
    dbConn.Open(DBInicio.FDACConn.ConnectionString);
    dbConn.StartTransaction;

   //cálculo o tempo gasto
   // VERIFICA SE A SITUAÇÃO DO APONTAMENTO É FINALIZADADO, AI ELE ELE CALCULO O TEMPO GASTO E ATUALIZA CARGA, PROCESSO_PRODUCAO
   // NA EDIÇÃO ELE VAI RECALCULAR O TEMPO GASTO EITHER, PORQUE PODE SER TANTO APONTAMENTO FINALIZADO, OU INICIADO ELE DEVE RECALCULAR
   // ATUALIZANDO A CARGA E PROCESSO PRODUCAO
    // e edição mas não tem apontamento final
    if carga > 0  then // APONTAMENTO POR CARGA
       NaoTemApontamentoFinal :=
        BuscaUmDadoSqlAsInteger(' SELECT cast(count(*) as integer) FROM APONTAMENTO_PROCESSO  '+
                                ' WHERE app_status = ''F'' '+
                                ' and CAR_CODIGO = '+IntToStr(carga) +
                                ' AND APP_CANCELADO IS NULL ') =0
    else
     NaoTemApontamentoFinal :=
       BuscaUmDadoSqlAsInteger(' SELECT cast(count(*) as integer) FROM APONTAMENTO_PROCESSO  '+
                                ' WHERE app_status = ''F'' '+
                                ' and PCP_CODIGO = '+IntToStr( pcp_codigo)+
                                ' AND APP_CANCELADO IS NULL ') =0  ;

    If (situacao = 'F') or ((EstadoTela = teEdicao) and NaoTemApontamentoFinal) then
    begin
      CalcularTempoGasto (carga, pcp_codigo , situacao ,
                          DataHoraF,DataHoraI, DataHoraStart,  Total ) ;

      Horas:=total - Trunc(total);
      if not resultado  then
        Showmessage('Tempo gasto :  '+inttostr(TRUNC(Total))+' Dias e Horas :  '+timetostr(Horas));
      if carga > 0  then
      begin
        ExecSql(' UPDATE CARGA ' +
                ' SET CAR_STATUS = '+ QuotedStr(situacao) +
                '    ,CAR_DATAFIM = '+DateTimeToSQL( DataHoraF) +
                '    ,CAR_DATAINI = '+DateTimeToSQL (DataHoraStart)+
                '    ,CAR_TEMPOGASTO = '+FloatToSQL(Total) +
                IIF(edPesquisaEquipamento.idRetorno <> '',' , EQP_CODIGO = '+(edPesquisaEquipamento.idRetorno),'') +
                ' WHERE CAR_CODIGO = '+ IntToStr(carga) )  ;


        OpenAux2('  SELECT PP.IOP_CODIGO , PR.PRO_CODIGO ,              '+
                 '  (SELECT FIRST 1 OPE_CODIGO FROM PROCESSOS_OPERACOES '+
                 ' POP WHERE POP.PRO_CODIGO = PR.PRO_CODIGO ORDER BY POP_SEQ DESC ) as OPE_CODIGO '+
                 ' FROM PROCESSOS_PRODUCAO PP '+
                  '  JOIN ITEM_ORDEMPRODUCAO IOP ON (IOP.IOP_CODIGO = PP.IOP_CODIGO) '+
                  '        JOIN PRD0000 PR ON (PR.PRD_CODIGO = IOP.PRD_CODIGO)   '+
                  '        WHERE CAR_CODIGO = '+ IntToStr(carga) )  ;
        qAux2.First;
        //PROCURAR POR ORDEM JA NA ULTIMA OPERAÇÃO
        while not qAux2.Eof do
        begin
          if qAux2.FieldByName('OPE_CODIGO').AsInteger = operacao then
            ExecSql(' update ITEM_ORDEMPRODUCAO '+
                    ' SET  IOP_STATUS = ''F'' '+      ///FINALIZAR
                    ' WHERE  IOP_CODIGO = '+IntToStr(qAux2.FieldByName('IOP_CODIGO').AsInteger));

          qAux2.Next
        end;
       // atualiza o tempo gasto
       ExecSql(' UPDATE PROCESSOS_PRODUCAO '+
                '   SET PCP_STATUS =  '+ QuotedStr(situacao) +
                '   ,PCP_TEMPO_GASTO = '+FloatToSQL(Total) +
                '   ,PCP_DATAFIM = ' +DateTimeToSQL(DataHoraF) +
                '   ,PCP_DATAINI = '+DateTimeToSQL (DataHoraStart)+
                ' WHERE CAR_CODIGO = '+ IntToStr(carga) );

      end
      ELSE
      begin
       // atualiza o tempo gasto
        ExecSql(' UPDATE PROCESSOS_PRODUCAO '+
                '   SET PCP_STATUS =  '+ QuotedStr(situacao) +
                '   ,PCP_TEMPO_GASTO = '+FloatToSQL(Total) +
                '   ,PCP_DATAFIM = ' +DateTimeToSQL( DataHoraF) +
                '   ,PCP_DATAINI = '+DateTimeToSQL (DataHoraStart)+
                ' WHERE PCP_CODIGO = '+ IntToStr(pcp_codigo) );
      end;

      temCarga := BuscaUmDadoSqlAsInteger('SELECT COUNT(*) FROM PROCESSOS_PRODUCAO pp WHERE CAR_CODIGO IS NOT NULL AND IOP_CODIGO  = (SELECT IOP_CODIGO FROM ITEM_ORDEMPRODUCAO WHERE IOP_NORDEM = ' + QuotedStr(numeroOS) +')') > 0 ;
      ExecSql('UPDATE ITEM_ORDEMPRODUCAO SET IOP_TEMCARGA = ' + QuotedStr(iif(temCarga, 'S', 'N')) + ' WHERE IOP_NORDEM = ' + QuotedStr(numeroOS));

    end //FIM SE FOR DO TIPO FINALIZAR
    else if  MatchStr(situacao,['E']) then     //EM ANDAMENTO
    begin

      if carga > 0  then   // em andamento, quando é por carga
      begin
         // É O PRIMEIRO ANDAMENTO ''E'' da carga
        app_codigo :=
          BuscaUmDadoSqlAsInteger(' select app_codigo from apontamento_processo  ' +
                                ' where car_codigo = '+ IntToStr(carga)          +
                                ' and app_cancelado is null                    '+
                                '  and app_status = ''E'' '+
                                '  order by app_dataini ' );
        PrimeiroAndamento := (app_codigo = 0 ) or (app_codigo = app_codigoAtual) ;

         // primeiro andamento e tem apontamento final
         if PrimeiroAndamento and not  NaoTemApontamentoFinal then
           CalcularTempoGasto (carga, pcp_codigo , situacao , DataHoraF,DataHoraI, DataHoraStart,  Total ) ;


        ExecSql(' UPDATE CARGA ' +
               iif(NaoTemApontamentoFinal, ' SET CAR_STATUS = '+ QuotedStr('E') , ' SET CAR_STATUS = '+ QuotedStr('F') )+
                iif( primeiroAndamento, ' , CAR_DATAINI = '+ DateTimeToSQL( dataApontamento.Date + HoraApontamento.Time)    ,'')+
                IIF(edPesquisaEquipamento.idRetorno <> '',' , EQP_CODIGO = '+(edPesquisaEquipamento.idRetorno),'') +
              iif( PrimeiroAndamento and not  NaoTemApontamentoFinal , '   ,CAR_TEMPOGASTO = '+FloatToSQL(Total),'') +
                ' WHERE CAR_CODIGO = '+ IntToStr(carga) );

        ExecSql(' UPDATE PROCESSOS_PRODUCAO '+
              iif(NaoTemApontamentoFinal,    '   SET PCP_STATUS =  '+ QuotedStr('E') ,  '   SET PCP_STATUS =  '+ QuotedStr('F')) +
             IIF(edPesquisaEquipamento.idRetorno <> '',' , EQP_CODIGO = '+(edPesquisaEquipamento.idRetorno),'') +
               iif( primeiroAndamento, ' , PCP_DATAINI = '+ DateTimeToSQL( dataApontamento.Date + HoraApontamento.Time)  ,'')+
               iif( PrimeiroAndamento and not  NaoTemApontamentoFinal , '   ,PCP_TEMPO_GASTO = '+FloatToSQL(Total),'') +
               ' WHERE CAR_CODIGO = '+ IntToStr(carga) );

      end
      else
      begin
        app_codigo :=
          BuscaUmDadoSqlAsInteger(' select app_codigo from apontamento_processo  ' +
                                ' where pcp_codigo = '+ IntToStr(pcp_codigo)          +
                                ' and app_cancelado is null                    '+
                                ' and app_status = ''E'' '+
                                ' order by app_dataini ' );
         PrimeiroAndamento := (app_codigo = 0 ) or (app_codigo = app_codigoAtual) ;

         // primeiro andamento e tem apontamento final
         if PrimeiroAndamento and not  NaoTemApontamentoFinal then
           CalcularTempoGasto (carga, pcp_codigo , situacao , DataHoraF,DataHoraI, DataHoraStart,  Total ) ;

         ExecSql(' UPDATE PROCESSOS_PRODUCAO '+
                 iif(NaoTemApontamentoFinal,    '   SET PCP_STATUS =  '+ QuotedStr('E') ,  '   SET PCP_STATUS =  '+ QuotedStr('F')) +
                 IIF(edPesquisaEquipamento.idRetorno <> '',' , EQP_CODIGO = '+(edPesquisaEquipamento.idRetorno),'') +
                 iif( primeiroAndamento,  ' , PCP_DATAINI = '+ DateTimeToSQL( dataApontamento.Date + HoraApontamento.Time),'') +
                 iif( PrimeiroAndamento and not  NaoTemApontamentoFinal , '   ,PCP_TEMPO_GASTO = '+FloatToSQL(Total),'') +
                ' WHERE PCP_CODIGO = '+ IntToStr(pcp_codigo) );
      end;

    end
    else if situacao = 'P' then    //PARADO
    begin
      if carga > 0  then
      begin
        ExecSql(' UPDATE CARGA ' +
                ' SET CAR_STATUS = '+ QuotedStr('S') +
                 IIF(edPesquisaEquipamento.idRetorno <> '',' , EQP_CODIGO = '+(edPesquisaEquipamento.idRetorno),'') +
                ' WHERE CAR_CODIGO = '+ IntToStr(carga) ) ;

        ExecSql(' UPDATE PROCESSOS_PRODUCAO '+
                '   SET PCP_STATUS =  '+ QuotedStr('S') +
                  IIF(edPesquisaEquipamento.idRetorno <> '',' , EQP_CODIGO = '+(edPesquisaEquipamento.idRetorno),'') +
     //           '   ,PCP_TEMPO_GASTO = '+FloatToSQL(Total) +
                ' WHERE CAR_CODIGO = '+ IntToStr(carga)  );
      end
      else
        ExecSql(' UPDATE PROCESSOS_PRODUCAO '+
                '   SET PCP_STATUS =  '+ QuotedStr('S') +
                  IIF(edPesquisaEquipamento.idRetorno <> '',' , EQP_CODIGO = '+(edPesquisaEquipamento.idRetorno),'') +
     //           '   ,PCP_TEMPO_GASTO = '+FloatToSQL(Total) +
                ' WHERE PCP_CODIGO = '+ IntToStr(pcp_codigo) );

    end;

    FinalizacaoUltimaOperacao(carga,operacao,item,situacao, DataHoraF );

    ShowMessage('Registrado com sucesso');
    dbConn.Commit;

    //visualizar relatório
    if relatorio and NOT AbandonoResultado then
    BEGIN
       // IMPRIMIR O RELATÓRIO AQUI
      if (MessageDlg('Deseja visualizar o relatório', mtConfirmation, [mbYes, mbNo], 0) in [mrYes]) then
      begin
         tpe := TfrmPedidoIndustrializacao.Create(Self);
         try
           tpe.RelatorioInspecao(nordem);
         finally
           tpe.Free;
         end;

      end;

    END;




    dbConn.close;
    dbConn.Open(DBInicio.FDACConn.ConnectionString);
    LimparCampos;
    edBusca.Clear;
    if edBusca.CanFocus then
      edbusca.SetFocus;
    cdsEdit.Close;
    cdsEdit.Params[0].AsInteger := -1;
    CdsEdit.Open;
    CdsEdit.Insert;

//    qCARGAOS.Close;
//    qCARGAOS.Open;
  except on E: Exception do
   begin
    dbConn.Transaction.Rollback;
    raise Exception.Create(e.Message);

   end;
  end;
end;

procedure TfrmApontamentoIndustrial.CalcularTempoGasto(carga, pcp_codigo: integer; situacao: string;
                               var DataHoraF, DataHoraI, DataHoraStart: TDateTime; var Total: real);
  function calcularDiferencaHoras (const DataHoraF,DataHoraI:TDateTime):TDateTime;
  begin
    if DataHoraI > DataHoraF then
      result:=DataHoraI - DataHoraF
    else
      result:=DataHoraF - DataHoraI;

  end;
begin
  if carga > 0  then // APONTAMENTO POR CARGA
     OpenAux(' SELECT * FROM APONTAMENTO_PROCESSO ' +
          ' WHERE CAR_CODIGO = '+IntToStr(carga) +
          ' AND APP_CANCELADO IS NULL '+
          ' ORDER BY APP_DATAINI ')
  else //apontamento por operação
   OpenAux(' SELECT * FROM APONTAMENTO_PROCESSO ' +
           '  WHERE PCP_CODIGO = '+IntToStr( pcp_codigo)+
           ' AND APP_CANCELADO IS NULL '+
           ' ORDER BY APP_DATAINI ')  ;

  qAux.First;

  situacao := qAux.FieldByName('app_status').AsString;
  DataHoraI :=  qAux.FieldByName('APP_DATAINI').AsDateTime; // data hora de cada inicio, depois de uma parada ou inicio de todo o processo
  DataHoraStart :=   DataHoraI ; // esta hora e data inicial de todo processo
  TOTAL:= 0 ;
  // PROCURAR APONTAMENTO EM ANDAMENTO
  // DEPOIS PROCURAR APONTAMENTO PARADO
  while not qAux.Eof do
  begin

    while (situacao = 'E') and not qAux.Eof do
    begin
      qAux.Next;
      situacao := qAux.FieldByName('app_status').AsString;
    end;
    DataHoraF :=  qAux.FieldByName('APP_DATAINI').AsDateTime;
    TOTAL := TOTAL + calcularDiferencaHoras(DataHoraF, DataHoraI);
    while (situacao = 'P') and not qAux.Eof do
    begin
      qAux.Next;
      situacao := qAux.FieldByName('app_status').AsString;
    end;
    DataHoraI :=  qAux.FieldByName('APP_DATAINI').AsDateTime;

    qAux.Next;
  end;
  //SE AO FINAL DOS APONTAMENTOS AINDA ESTÁ EM ENDAMENTO , A DATA FINAL E CONSIDERADA A DATA CORRENTE
  if qAux.FieldByName('app_status').AsString = 'E' then
     TOTAL := TOTAL + calcularDiferencaHoras(Now, DataHoraI);
end;

procedure TfrmApontamentoIndustrial.edBuscaExit(Sender: TObject);
Var situacao, equipamento : string;
    listaOrdem : TStringList;
    IOP_CODIGO : integer;
    aux, aux2 : string;
    N: INTEGER;
begin
  inherited;
 // LimparCampos;
  if edBusca.Text = '' then
    exit;

  if copy(edBusca.Text,1,2) = 'CG' then  //busca por carga
  begin
    TryStrToInt(ReplaceStr(edBusca.Text,'CG',''),carga);
    OpenAux('SELECT CAR_STATUS, OPE_CODIGO, EQP_CODIGO FROM carga WHERE CAR_CODIGO = '+IntToStr(carga));
    if qAux.IsEmpty then
    begin
      LimparCampos;
      GeraException('Carga inexistente');
    end;

    if qAux.FieldByName('CAR_STATUS').AsString = 'F' then
    begin
      LimparCampos;
      GeraException('Carga já finalizada');
    end;

    if qAux.FieldByName('CAR_STATUS').AsString = 'A' then
    begin
      LimparCampos;
      GeraException('Carga já cancelada');
    end;
    operacao:= qAux.FieldByName('OPE_CODIGO').AsInteger;
    situacao := qAux.FieldByName('CAR_STATUS').AsString ;
    equipamento :=  IntToStr( qAux.FieldByName('EQP_CODIGO').AsInteger );
    // 'STATUS P - PENDENTE ; C - CONFIRMADO ;F- FINALIZADO ;A- CANCELADO E - EM ANDAMENTO ; S - PARADO STAND BY';
    if equipamento <> '' then
      edPesquisaEquipamento.idRetorno := equipamento;

    //pego todas as ordens da carga selecionada
    memo1.Lines.Text := 'Carga: '+ VarToStr( carga);
    OpenAux2('SELECT IOP_NORDEM FROM PROCESSOS_PRODUCAO PCP JOIN ITEM_ORDEMPRODUCAO IOP ON (IOP.IOP_CODIGO = PCP.IOP_CODIGO) ' +
             ' WHERE CAR_CODIGO = '+ IntToStr(CARGA));
    listaOrdem := TStringList.Create;
    listaOrdem.Delimiter:= ',';
    try
      while not qAux2.Eof do
      begin
        listaOrdem.Add(qAux2.FieldByName('IOP_NORDEM').AsString);
        qAux2.Next;
      end;
      memo1.Lines.Text := memo1.Lines.Text + ' OS: '+ listaOrdem.DelimitedText;
    finally
      listaOrdem.Free;
    end;
    if EstadoTela = teEdicao then
    begin
       edPesquisaEquipamento.Enabled := True;
    end
    else
    begin
      if MatchStr(situacao,['E']) then
      begin
         rbAndamento.Enabled := False;
         rbParado.Enabled := True;
         rbFinalizado.Enabled := True;
         rbFinalizado.Checked:= True;
         edPesquisaEquipamento.Enabled := False;

      end
      Else if  MatchStr(situacao,['P','C','S']) then
      Begin
         rbAndamento.Enabled := True;
         rbParado.Enabled := False;
         rbFinalizado.Enabled := False;
         rbAndamento.Checked:= True;
        edPesquisaEquipamento.Enabled := False;
      End
      else
      if situacao = 'F' then
      begin
        ldescfase.Caption := '';
        Memo1.Clear;
        carga := 0;
        pcp_codigo := 0;
        nordem := '';
        operacao:=0;
        raise Exception.Create('Carga finalizada');
      end;
    end;



  end
   //selecione POR ORDEM
  else
  begin
    // verifica a formatação posso digitar tanto 9102-01 ou 9102
    n:= POS('-',edBusca.Text);
    if n=0 then
       edBusca.Text:= strzero(edBusca.Text,6)+'-'+'01'
    else if n>0 then
    begin
      aux := trim(Copy(edBusca.Text, 1,n-1));
      aux2 := trim(Copy(edBusca.Text,n+1,2));
      edBusca.Text := strzero(aux,6)+'-'+strzero(aux2,2);
    end;

    OpenAux('SELECT IOP_CODIGO FROM ITEM_ORDEMPRODUCAO WHERE IOP_NORDEM = '+QuotedStr( edBusca.Text) );
    if (qAux.FieldByName('iop_codigo').AsInteger =0) or qAux.IsEmpty then
    begin
      LimparCampos;
      GeraException('OS '+edBusca.Text+' inexistente');
    end;
    nordem := edBusca.Text;
    IOP_CODIGO := qAux.FieldByName('iop_codigo').AsInteger;
    item := qAux.FieldByName('iop_codigo').AsInteger;
    //pego a operação seguinte
    operacao := BuscaUmDadoSqlAsInteger(
              ' SELECT OPE.OPE_CODIGO  from item_ordemproducao iop                                                '+
              '  join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)                                              '+
              ' join PROCESSOS_OPERACOES pop on (iop.pro_codigo = pop.pro_codigo)                                  '+  // copia do modelo
              ' join operacoes ope on (ope.ope_codigo = pop.ope_codigo AND OPE_NAOUSACARGA = ''S'')               '+
              ' LEFT JOIN PROCESSOS_PRODUCAO pp ON (pp.OPE_CODIGO = ope.OPE_CODIGO AND iop.iop_codigo = pp.iop_codigo AND car_codigo  IS null ) '+
              'WHERE (PCP_status NOT IN (''F'',''A'') or (PCP_status IS NULL))                                            '+
              '  AND IOP.IOP_CODIGO = '+ inttostr(item)+
              ' ORDER BY pop_seq  ');
    //não encontrou mais nenhuma operação
    if OPERACAO = 0  then
    begin
      LimparCampos;
      GeraException('Não há fases a serem feitas');

    end;

    OpenAux(' select * from processos_producao ' +
                ' where IOP_CODIGO = '+ inttostr(item)+  '   AND OPE_CODIGO = '+ IntToStr(operacao));
    situacao := qaux.FieldByName('PCP_STATUS').AsString ;
    //QUANDO TEM INSPEÇÃO DE RESULTADO SO PRECISA FINALIZAR , NÃO PRECISA INICIAR
    if  BuscaUmDadoSqlAsString('select OPE_TEMRESULTADO from operacoes where ope_codigo = '+IntToStr(operacao) ) = 'S' then
    Begin
       rbAndamento.Enabled := False;
       rbParado.Enabled := False;
       rbFinalizado.Enabled := True;
       rbFinalizado.Checked:= True;
       edPesquisaEquipamento.Enabled := True;
    End
    else
    if qAux.IsEmpty or MatchStr(situacao,['C','S'])  then
    begin
       rbAndamento.Enabled := True;
       rbParado.Enabled := False;
       rbFinalizado.Enabled := False;
       rbAndamento.Checked:= True;
        edPesquisaEquipamento.Enabled := True;

    end
    else if MatchStr(situacao,['E'])  then
    begin
       rbAndamento.Enabled := False;
       rbParado.Enabled := True;
       rbFinalizado.Enabled := True;
       rbFinalizado.Checked:= True;
       edPesquisaEquipamento.Enabled := False;
       edPesquisaEquipamento.idRetorno := inttostr( qAux.FieldByName('eqp_codigo').AsInteger);

    end;
    pcp_codigo := qAux.FieldByName('pcp_codigo').AsInteger;
  end;
  ldescfase.Caption := IntToStr(operacao)+'-'+ BuscaUmDadoSqlAsString('SELECT  OPE_DESCRICAO  FROM OPERACOES WHERE OPE_CODIGO = '+IntToStr(operacao) );
  edPesquisaEquipamento.Enabled := edPesquisaEquipamento.idRetorno = '';

  //atualizar situação
  //STATUS P - PENDENTE ; C - CONFIRMADO ;F- FINALIZADO ;A- CANCELADO E - EM ANDAMENTO ; S - PARADO STAND BY
  if situacao = 'E' then
    lsituacao.Caption := 'Situação atual: Em andamento'
  else if situacao = 'P' then
    lsituacao.Caption := 'Situação atual: Pendente'
  else if situacao = 'C'  then
   lsituacao.Caption := 'Situação atual: Confirmado'
  else if situacao = 'S' then
   lsituacao.Caption := 'Situação atual: Parado'
  else if situacao = 'F' then
   lsituacao.Caption := 'Situação atual: Finalizado';


end;

procedure TfrmApontamentoIndustrial.edSenhaEnter(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TfrmApontamentoIndustrial.edSenhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_ESCAPE) then
  begin
    btnOk.Click;

  end;
end;

procedure TfrmApontamentoIndustrial.edSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  //inherited;
  if (Key = #13) then
  begin
    btnOk.Click;

  end;
end;

procedure TfrmApontamentoIndustrial.FinalizacaoUltimaOperacao(const carga, operacao : Integer; const item: integer; const situacao : string; const DataConclusao : TDateTime);
var kardex :  TfrmBaseDbEstoque ;
   pedido: string ;
   leadtime : double;
begin

   //verifica se é a ultimo processo e, assim é um apontamento de finalização
    //e não pode ser finalização para não alterar o estoque e status de finalização da ordem
    if (carga = 0) and (situacao = 'F')    then
    begin
      // quantos processos ainda faltam  PARA O ITEM DO APONTAMENTO
      if  BuscaUmDadoSqlAsInteger
                     ( 'SELECT cast(COUNT (*) AS integer ) faltando                           '+
                      '  FROM ITEM_ORDEMPRODUCAO IOP                                          '+
                      '     JOIN PROCESSOS_OPERACOES POP ON (POP.PRO_CODIGO = iop.PRO_CODIGO) '+ // copia o modelo de processo
                      '   WHERE ope_codigo <> '+ IntToStr(operacao) +
                      '    and IOP_CODIGO = '+IntToStr(item)+
                      '     AND NOT EXISTS (SELECT * FROM  PROCESSOS_PRODUCAO PCP  '+
                      '                     WHERE PCP.PCP_STATUS  = ''F'' AND  PCP.IOP_CODIGO = IOP.IOP_CODIGO AND PCP.OPE_CODIGO = POP.OPE_CODIGO) ') = 0 Then


      begin
         leadtime := DataConclusao -
          BuscaUmDadoSqlAsDateTime('SELECT OPR_EMISSAO FROM ORDEMPRODUCAO OPR  WHERE OPR.OPR_CODIGO ='+
                                  ' (SELECT opr_codigo FROM ITEM_ORDEMPRODUCAO WHERE iop_codigo = '+IntToStr(ITEM)+ ' ) ');
         pedido :=  BuscaUmDadoSqlAsString( 'SELECT  first 1 ped_codigo FROM ITEM_ORDEMPRODUCAO IOP JOIN ORDEMPRODUCAO opr ON (opr.OPR_CODIGO = iop.OPR_CODIGO) WHERE IOP_CODIGO = '+IntToStr(item) );
         // VERIFICAR SE É O ULTIMA OPERAÇÃO DE TODA A ORDEM E OS OUTROS ITENS ESTÃO OK
         IF BuscaUmDadoSqlAsInteger(' SELECT cast(COUNT (*) AS integer ) faltando '+
                                    ' FROM ITEM_ORDEMPRODUCAO IOP                                                                                               '+
                                    '     JOIN ORDEMPRODUCAO opr ON (opr.OPR_CODIGO = iop.OPR_CODIGO)                                                           '+
                                    '     JOIN PROCESSOS_OPERACOES POP ON (POP.PRO_CODIGO = iop.PRO_CODIGO)                                                     '+
                                    '   WHERE ped_codigo = '+ QuotedStr(pedido) +
                                    '     AND NOT (IOP_CODIGO = '+IntToStr(item) + ' AND POP.OPE_CODIGO = '+IntToStr(operacao) + ') '+
                                    '     AND NOT EXISTS (SELECT * FROM  PROCESSOS_PRODUCAO PCP                                                                 '+
                                    '                     WHERE PCP.PCP_STATUS  = ''F'' AND  PCP.IOP_CODIGO = IOP.IOP_CODIGO AND PCP.OPE_CODIGO = POP.OPE_CODIGO) ') = 0 then
         begin

             //PEDIDO COMO COCNLUIDO
             ExecSql(' UPDATE ORDEMPRODUCAO '+
                     ' SET OPR_CONCLUSAO = ' + DateTimeToSQL(DataConclusao) +
                     ' , OPR_LEADTIME =   '+ FloatToSQL(leadtime) +
                     ' , OPR_STATUS = ''F'' '+
                     ' WHERE PED_CODIGO = '+QuotedStr( pedido) +
                     DBInicio.ExclusivoSql('ORDEMPRODUCAO') );
         end;

        // ENTRADA DO ESTOQUE
        //somente se for inclusão do apontamento
        if (EstadoTela <> teEdicao) then
        begin
          if not Assigned(kardex) then
              kardex := TfrmBaseDbEstoque.Create(Application);
          try
            OpenAux4('SELECT * FROM ITEM_ORDEMPRODUCAO IOP    '+
                     ' JOIN ORDEMPRODUCAO opr ON (opr.OPR_CODIGO = iop.OPR_CODIGO)   '+
                     ' WHERE IOP_CODIGO = ' + IntToStr(ITEM));
            qAux4.First;

            kardex.KardexLancamento(IntToStr(item),
                                    'PRO',
                                    DBInicio.Empresa.PMT_AMX_PRODUCAO_ENTRADA,'',
                                    qAux4.FieldByName('prd_codigo').AsString,
                                     '', // grade
                                     '', //unidade
                                     'E', //ITPO
                                     '',  //LOTE
                                     '',  //LOTE
                                     '',//OSBERVAÇÃO
                                     NOW,
                                     qAux4.FieldByName('IOP_QUANTIDADE').AsFloat,
                                     qAux4.FieldByName('IOP_NORDEM').AsString,
                                     '', //DESCRIÇÃO
                                     0,
                                      qAux4.FieldByName('CLI_CODIGO').AsString

                                     )  ;



          finally
            FreeAndNil(kardex);
          end;
        end;
        ExecSql('UPDATE ITEM_ORDEMPRODUCAO SET IOP_STATUS = ''F'' , IOP_DATA_CONCLUSAO = '+DateTimeToSQL(DataConclusao) +
         ',IOP_LEADTIME = '+ FloatToSQL(leadtime)  +
       ' WHERE IOP_CODIGO = '+IntToStr(ITEM) );

      end;
    end;
end;

procedure TfrmApontamentoIndustrial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  action := caFree;
end;

procedure TfrmApontamentoIndustrial.FormCreate(Sender: TObject);
begin
  inherited;
	CampoID:='APP_CODIGO';
	Tabela:='APONTAMENTO_PROCESSO';
  self.Constraints.MinHeight:= 221;
  self.Constraints.MinWidth:=474;
  self.Height:= 300;
  self.Width:= 490;
  TemDetalhe := false;

end;

procedure TfrmApontamentoIndustrial.FormDestroy(Sender: TObject);
begin
  inherited;
   frmApontamentoIndustrial := nil ;
end;

procedure TfrmApontamentoIndustrial.FormResize(Sender: TObject);
begin
  inherited;
  Width := 766;
  Height := 342;
end;

procedure TfrmApontamentoIndustrial.FormShow(Sender: TObject);
 VAR listaOrdem : TStringList;
    IOP_CODIGO : integer;

begin
  inherited;
   lsituacao.Caption := '';
   edBusca.Enabled := ( EstadoTela <> teEdicao );

  //qCARGAOS.Close;
  ldata.Caption := FormatDateTime('DD/mm/yyyy hh:nn:ss',now)    ;
//  If self.EstadoTela <> teEdicao then
//    qCARGAOS.Open;
  dataApontamento.Visible := self.EstadoTela = teEdicao;
  HoraApontamento.Visible := self.EstadoTela = teEdicao;
  ldata.Visible  := self.EstadoTela <> teEdicao;
  if self.EstadoTela = teEdicao then
  begin
     edBusca.ReadOnly := True;
     edBusca.OnExit := NIL;
     if cdsEditCAR_CODIGO.AsInteger > 0  then
       edBusca.Text := 'CG'+ IntToStr(cdsEditCAR_CODIGO.AsInteger)
     else
     begin
       OpenAux(' SELECT iop_nordem,iop.IOP_CODIGO FROM PROCESSOS_PRODUCAO pp '+
               ' JOIN ITEM_ORDEMPRODUCAO iop                            '+
               '   ON iop.IOP_CODIGO = pp.IOP_CODIGO                    '+
               '  WHERE PCP_CODIGO =  '+ IntToStr(cdsEditPCP_CODIGO.AsInteger) );
       nordem := qAux.FieldByName('iop_nordem').AsString;
       IOP_CODIGO := qAux.FieldByName('iop_codigo').AsInteger;
       edBusca.text := nordem;
     end;

     edPesquisaEquipamento.idRetorno := IntToStr(cdsEditEQP_CODIGO.AsInteger);
     dataApontamento.Date := DateOf(cdsEditAPP_DATAINI.AsDateTime);
     HoraApontamento.Time := TimeOf(cdsEditAPP_DATAINI.AsDateTime);
     carga := cdsEditCAR_CODIGO.AsInteger;

     rbParado.Checked := cdsEditAPP_STATUS.AsString = 'P';
     rbAndamento.Checked :=   cdsEditAPP_STATUS.AsString = 'E';
     rbFinalizado.Checked :=  cdsEditAPP_STATUS.AsString = 'F';

     rbAndamento.Enabled := False;
     rbParado.Enabled := False;
     rbFinalizado.Enabled := False;
     OpenAux('SELECT * '+
             ' FROM PROCESSOS_PRODUCAO PCP JOIN  OPERACOES OPE ON (OPE.OPE_CODIGO = PCP.OPE_CODIGO) '+
             ' WHERE PCP_CODIGO = '+IntToStr(cdsEditPCP_CODIGO.ASINTEGER  )
             ) ;
      ldescfase.Caption :=qAux.FieldByName('OPE_CODIGO').AsString+'-'+ qAux.FieldByName('OPE_NOME').AsString;


      if (cdsEditCAR_CODIGO.AsInteger>0) then
      begin
        OpenAux2('SELECT IOP_NORDEM FROM PROCESSOS_PRODUCAO PCP JOIN ITEM_ORDEMPRODUCAO IOP ON (IOP.IOP_CODIGO = PCP.IOP_CODIGO) ' +
                 ' WHERE CAR_CODIGO = '+ IntToStr(cdsEditCAR_CODIGO.AsInteger));

      end
      else
      begin
        OpenAux2('SELECT IOP_NORDEM FROM PROCESSOS_PRODUCAO PCP JOIN ITEM_ORDEMPRODUCAO IOP ON (IOP.IOP_CODIGO = PCP.IOP_CODIGO) ' +
                 ' WHERE PCP_CODIGO = '+ IntToStr(cdsEditPCP_CODIGO.AsInteger));
        edBusca.Text := qAux2.FieldByName('IOP_NORDEM').AsString;
      end;

      listaOrdem := TStringList.Create;
      listaOrdem.Delimiter:= ',';
      try
        while not qAux2.Eof do
        begin
          listaOrdem.Add(qAux2.FieldByName('IOP_NORDEM').AsString);
          qAux2.Next;
        end;
        memo1.Lines.Text := memo1.Lines.Text + ' OS: '+ listaOrdem.DelimitedText;
      finally
        listaOrdem.Free;
      end;
  end;


end;

procedure TfrmApontamentoIndustrial.LimparCampos;
begin
 ACBrEnterTab1.EnterAsTab := True;

  edColaborador.idRetorno := '';
  edsenha.Text := '';
  edPesquisaEquipamento.Clear;
  ldescfase.Caption :='';
  Memo1.Clear ;
  ldescfase.Caption := '';
  carga := 0;
  pcp_codigo := 0;
  nordem := '';
  operacao:=0;
  lsituacao.Caption:='';
end;

procedure TfrmApontamentoIndustrial.Timer1Timer(Sender: TObject);
begin
  inherited;
  ldata.Caption := FormatDateTime('DD/mm/yyyy hh:nn:ss',now)    ;
end;

procedure TfrmApontamentoIndustrial.ValidarSenhaValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
begin
  inherited;
  Valid :=  edSenha.Text <> '';
end;

procedure TfrmApontamentoIndustrial.ValidarUsuarioValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
begin
  inherited;
  Valid := edColaborador.idRetorno <> '';
end;

end.
