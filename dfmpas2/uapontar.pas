unit uapontar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,   TypInfo,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  SgDbSeachComboUnit, uniGUIBaseClasses, uniGUIClasses, uniDateTimePicker, uniDBDateTimePicker, uniEdit, uniDBEdit, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, dxCore, cxDateUtils, cxSpinEdit, cxTimeEdit,
  JvExStdCtrls, JvEdit, JvValidateEdit;

const
 { açoes do apontamento}
 sIniciado = 0 ;
 sFinalizacao = 1;
 sCancelamento = 2;
 sRefugar = 3;
 sAlterCol = 4;

type
  TfrmApontarProcessos = class(TfrmBaseDBEdit)
    lDataInicio: TLabel;
    lInicio: TLabel;
    edIniciado: TcxDBTextEdit;
    EdColaboradorCodigo: TEdit;
    edColaborador: TSgDbSearchCombo;
    Label1: TLabel;
    qColaborador: TSQLQuery;
    lmotivocancel: TLabel;
    edMotivo: TcxDBTextEdit;
    lrefugados: TLabel;
    edRefugado: TcxDBTextEdit;
    lqfinalizados: TLabel;
    edFinalizado: TcxDBTextEdit;
    qEquipamento: TSQLQuery;
    edPesquisaEquipamento: TSgDbSearchCombo;
    edEquipamento: TEdit;
    Label4: TLabel;
    lfinalizacao: TLabel;
    qEditAPF_CODIGO: TIntegerField;
    qEditFAB_CODIGO: TIntegerField;
    qEditCOL_CODIGO: TIntegerField;
    qEditAPF_DATA_INI: TSQLTimeStampField;
    qEditAPF_DATA_FIM: TSQLTimeStampField;
    qEditAPF_CANCELADO: TStringField;
    qEditAPF_MOTIVOCANCELAMENTO: TStringField;
    qEditEQP_CODIGO: TIntegerField;
    qEditAPF_INICIADA: TFMTBCDField;
    qEditAPF_FINALIZADAS: TFMTBCDField;
    qEditAPF_REFUGADO: TFMTBCDField;
    CdsEditAPF_CODIGO: TIntegerField;
    CdsEditFAB_CODIGO: TIntegerField;
    CdsEditCOL_CODIGO: TIntegerField;
    CdsEditAPF_DATA_INI: TSQLTimeStampField;
    CdsEditAPF_DATA_FIM: TSQLTimeStampField;
    CdsEditAPF_CANCELADO: TStringField;
    CdsEditAPF_MOTIVOCANCELAMENTO: TStringField;
    CdsEditEQP_CODIGO: TIntegerField;
    CdsEditAPF_INICIADA: TFMTBCDField;
    CdsEditAPF_FINALIZADAS: TFMTBCDField;
    CdsEditAPF_REFUGADO: TFMTBCDField;
    btnColaborador: TBitBtn;
    edHoraIni: TcxTimeEdit;
    cxDataIni: TcxDateEdit;
    cxDataFim: TcxDateEdit;
    edHoraFim: TcxTimeEdit;
    Panel1: TPanel;
    edNordem: TEdit;
    Label2: TLabel;
    grpFinalizaAnt: TGroupBox;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDataFimAnt: TcxDateEdit;
    Label6: TLabel;
    edHoraFimAnt: TcxTimeEdit;
    CdsEditAPF_CUSTOEQUIPAMENTO: TFMTBCDField;
    CdsEditAPF_CUSTOMAO: TFMTBCDField;
    qEditAPF_CUSTOEQUIPAMENTO: TFMTBCDField;
    qEditAPF_CUSTOMAO: TFMTBCDField;
    edPrograma: TJvValidateEdit;
    Label7: TLabel;
    gbAcessorio: TGroupBox;
    opeCodigo: TEdit;
    opeDescricao: TEdit;
    qEditAPF_REBARBA: TFMTBCDField;
    CdsEditAPF_REBARBA: TFMTBCDField;
    lRebarba: TLabel;
    edRebarba: TcxDBTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure edColaboradorSelect(Sender: TObject);
    procedure CdsEditAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure CdsEditAfterEdit(DataSet: TDataSet);
    procedure edPesquisaEquipamentoSelect(Sender: TObject);
    procedure edEquipamentoExit(Sender: TObject);
    procedure CdsEditAfterOpen(DataSet: TDataSet);
    procedure btnColaboradorClick(Sender: TObject);
    procedure edNordemExit(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    fFAb_Codigo: integer;
    fEQP_Codigo : integer;
    fStatus : Integer;
    fValorInicial : double;
    fope_codigo : integer;
    fiop_codigo : integer;
    FPrograma : integer;

    procedure SetFAB_Codigo (AValues : Integer);
    procedure SetEQP_Codigo (AValues : Integer);
    procedure SetStatus (AValue: Integer);
    procedure AtualizarProduzida;
    procedure ControleBotoes;
  public
    property IOP_CODIGO : integer read fiop_codigo write fiop_codigo;
    property FAB_Codigo : integer read FFab_codigo write SetFAB_Codigo;
    property EQP_Codigo : integer read fEQP_Codigo write SetEQP_Codigo;
    property OPE_Codigo : integer read fope_codigo write fope_codigo;
    property ValorInicial: double read fValorInicial write fValorInicial;
    property Status: Integer read FStatus write SetStatus;
    property Programa : integer read FPrograma write fPrograma;
  end;

var
  frmApontarProcessos: TfrmApontarProcessos;

implementation

{$R *.dfm}

uses DataCad,UColaborador, uteis, iniciodb;

procedure TfrmApontarProcessos.AtualizarProduzida;
begin
   dataCadastros.sqlUpdate.Close;


   case status of
    sIniciado : ExecSql(   'UPDATE FABRICACAO SET FAB_PRODUZINDO = FAB_PRODUZINDO + ' + FloatToSql(CdsEditAPF_INICIADA.AsFloat)   +' WHERE FAB_CODIGO = ' + IntToStr(FAB_Codigo));
    sFinalizacao :
      ExecSql(
     'UPDATE FABRICACAO SET FAB_PRODUZINDO = FAB_PRODUZINDO - ' + FloatToSql(CdsEditAPF_INICIADA.AsFloat)   +
                         ', FAB_PRODUZIDA = FAB_PRODUZIDA + ' + FloatToSql(CdsEditAPF_FINALIZADAS.AsFloat) +
                         ', FAB_REFUGADA = FAB_REFUGADA +   ' + FloatToSql(CdsEditAPF_REFUGADO.AsFloat) +
                         ', FAB_REBARBA = FAB_REBARBA +   ' + FloatToSql(CdsEditAPF_REBARBA.AsFloat) +
     ' WHERE FAB_CODIGO = ' + IntToStr(FAB_Codigo)) ;
    sCancelamento : ExecSql(
        'UPDATE FABRICACAO SET FAB_PRODUZINDO = FAB_PRODUZINDO - ' + FloatToSql(BCDToCurrency(CdsEditAPF_INICIADA.Value))   +
        ' WHERE FAB_CODIGO = ' + IntToStr(FAB_Codigo));
     sAlterCol :
       ExecSql('UPDATE FABRICACAO SET FAB_PRODUZINDO = FAB_PRODUZINDO - ' + FloatToSql(CdsEditAPF_FINALIZADAS.AsFloat)   +
                         ', FAB_PRODUZIDA = FAB_PRODUZIDA + ' + FloatToSql(CdsEditAPF_FINALIZADAS.AsFloat) +
                         ', FAB_REFUGADA = FAB_REFUGADA +   ' + FloatToSql(CdsEditAPF_REFUGADO.AsFloat) +
                         ', FAB_REBARBA = FAB_REBARBA +   ' + FloatToSql(CdsEditAPF_REBARBA.AsFloat) +
     ' WHERE FAB_CODIGO = ' + IntToStr(FAB_Codigo)) ;

   end;

   if sFinalizacao = STATUS then
   begin
     ExecSql(
      'UPDATE FABRICACAO SET DATA_CONCLUSAO = CURRENT_DATE WHERE FAB_CODIGO = ' + IntToStr(FAB_Codigo) +
      ' AND EXISTS' +
      ' (SELECT 1 FROM  ITEM_ORDEMPRODUCAO iop                '+
      '   INNER JOIN FABRICACAO fB ON (iop.IOP_CODIGO = FB.IOP_CODIGO)  '+
      '   WHERE FB.FAB_CODIGO = FABRICACAO.FAB_CODIGO                  '+
      '   AND ((IOP_QUANTIDADE = FAB_PRODUZIDA) )  )                               ');



   end;
end;

procedure TfrmApontarProcessos.btnColaboradorClick(Sender: TObject);
var
		tcr: TfmColaborador;
		flg: boolean;
begin
  inherited;
   tcr := TfmColaborador.create( self );
   try
     flg:=tcr.novo('Novo Registro') ;
   finally
		tcr.close;
		freeandnil(tcr);
   end;
end;

procedure TfrmApontarProcessos.btnOKClick(Sender: TObject);
begin
  inherited;
  if Status = sAlterCol then
  Begin
    ExecSql('INSERT INTO APONTAMENTO_FAB   '+
            ' (APF_CODIGO, FAB_CODIGO, COL_CODIGO, APF_DATA_INI, APF_INICIADA,  EQP_CODIGO) '+
            '  VALUES('   +
            IntToStr(GetNextSequence('GEN_APONTAMENTO_FAB'))+','+
            IntToStr(FAB_Codigo) + ',' +
            iif(edColaborador.idRetorno <> '',edColaborador.idRetorno,'null' )+','+
            DateTimeToSQL(now ) +','+
            FloatToSQL(CdsEditAPF_INICIADA.AsFloat - CdsEditAPF_FINALIZADAS.AsFloat) + ','+
            iif(edPesquisaEquipamento.idRetorno <> '',edPesquisaEquipamento.idRetorno,'null' )+')');


  End;
end;

procedure TfrmApontarProcessos.CdsEditAfterEdit(DataSet: TDataSet);
begin
  inherited;
   case Status of
   sFinalizacao, sCancelamento :
    begin
     cxDataFim.Date := date;
     edHoraFim.Text := FormatDateTime('hh:nn',time);
    end;
  end;
end;

procedure TfrmApontarProcessos.CdsEditAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cxDataIni.Date:= date;
  edHoraIni.Text := FormatDateTime('hh:nn',time);
  CdsEditAPF_INICIADA.AsFloat  := ValorInicial;
end;

procedure TfrmApontarProcessos.CdsEditAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State <> dsInsert then
  begin
   edColaborador.idRetorno := IntToStr(CdsEditCOL_CODIGO.AsInteger);
   edPesquisaEquipamento.idRetorno := IntToStr(CdsEditEQP_CODIGO.AsInteger);
   cxDataIni.Date :=  CdsEditAPF_DATA_INI.AsDateTime;
   cxDataFim.Date := CdsEditAPF_DATA_FIM.AsDateTime;
   edHoraIni.Text :=  FormatDateTime('hh:nn', CdsEditAPF_DATA_INI.AsDateTime);
   edHoraFim.Text :=   FormatDateTime('hh:nn',CdsEditAPF_DATA_FIM.AsDateTime);
  end;
end;

procedure TfrmApontarProcessos.CdsEditBeforePost(DataSet: TDataSet);
  function calcularDiferencaHoras (const DataHoraF,DataHoraI:TDateTime):TDateTime;
  begin
    if DataHoraI > DataHoraF then
      result:=DataHoraI - DataHoraF
    else
      result:=DataHoraF - DataHoraI;

  end;
var total,custoOpe, CustoMao, CustoEquipamento : double;
   tempoEstimado : integer;
   tempo: tdatetime;
   horas, minuto, seg, msec : word;
begin
  inherited;

 // ClearErrors;
  if not ( DBInicio.Empresa.wPMT_PRODUZIR_MAIS_OP) and (Status =  sFinalizacao)  and (CdsEditAPF_INICIADA.asFloat < (CdsEditAPF_FINALIZADAS.asFloat + CdsEditAPF_REFUGADO.AsFloat)) then
      GeraException('O total (finalizado + refugado) é diferente do inicializado');

  if (CdsEditAPF_INICIADA.IsNull) or (CdsEditAPF_INICIADA.AsInteger = 0) then
      GeraException('Deve iniciar a produção com valor maior que zero');
  if (status = sFinalizacao) and (CdsEditAPF_FINALIZADAS.IsNull) then
        GeraException('Deve finalizar algum valor');
  if status <> sAlterCol  then
  begin
    if edColaborador.idRetorno <> '' then
       CdsEditCOL_CODIGO.AsInteger := StrToInt(edColaborador.idRetorno);

    if edPesquisaEquipamento.idRetorno <> '' then
      CdsEditEQP_CODIGO.AsInteger := StrToInt(edPesquisaEquipamento.idRetorno);
  end;
  if CdsEditFAB_CODIGO.IsNull then
    CdsEditFAB_CODIGO.AsInteger := FAB_Codigo;
  if CdsEditAPF_CODIGO.IsNull then
     CdsEditAPF_CODIGO.asInteger := GetNextSequence('GEN_APONTAMENTO_FAB');
  if Status  in [sFinalizacao,sCancelamento] then
    CdsEditAPF_DATA_FIM.AsDateTime:= Date;
  if Status = sCancelamento then
  begin
    CdsEditAPF_CANCELADO.AsString := 'S';
    CdsEditAPF_FINALIZADAS.AsInteger := 0 ;
  end;

  if status = sIniciado then
    CdsEditAPF_DATA_INI.AsDateTime :=   StrToDateTime(FormatDateTime('dd/mm/yyyy',cxDataIni.Date) + ' ' +  edHoraIni.text);
  if Status = sFinalizacao then
    CdsEditAPF_DATA_FIM.AsDateTime :=   StrToDateTime(FormatDateTime('dd/mm/yyyy',cxDataFim.Date) + ' ' +  edHoraFim.text);
  if status = sAlterCol then
  begin
    if cxDataFimAnt.text = ''  then
       CdsEditAPF_DATA_FIM.AsDateTime := now
    else
      CdsEditAPF_DATA_FIM.AsDateTime :=   StrToDateTime(FormatDateTime('dd/mm/yyyy',cxDataFimAnt.Date) + ' ' +  edHoraFimAnt.text);
  end;
  if (Status = sFinalizacao) and (CdsEditAPF_FINALIZADAS.AsFloat >0) then
  begin
   IOP_CODIGO := BuscaUmDadoSqlAsInteger('select iop_codigo from FABRICACAO where fab_codigo = '+IntToStr(FAB_Codigo ));
    //** CUSTO DA OPERAÇÃO *** somente se teve algo finalizado // custo de operação soma-se com o colaborador, por isso custo do colaborador fica zero
    //  ( 2 ) Tempo padrão da Operação X  ( custo/hora operação + custo/hora colaborador)
    if (DBInicio.Empresa.PMT_CUSTOOPERACAO = '2')   then
    begin

      custoOpe := BuscaUmDadoSqlAsFloat('SELECT OPE_CUSTOHORA FROM OPERACOES WHERE OPE_CODIGO = '+ IntToStr(OPE_Codigo));
      if edColaborador.idRetorno <> '' then
        CustoMao := BuscaUmDadoSqlAsFloat('SELECT COL_SALARIO_HORA FROM COLABORADOR WHERE COL_CODIGO ='+edColaborador.idRetorno)
      else
        CustoMao := 0 ;
      //tempo padrão  da operação no cadastro de engenharia
      tempoEstimado:= BuscaUmDadoSqlAsInteger(' SELECT TEMPO_ESTIMADO FROM FABRICACAO WHERE FAB_CODIGO = '+ IntToStr(FAB_Codigo) );
      total := CdsEditAPF_FINALIZADAS.AsFloat * (CustoMao + custoOpe) * tempoEstimado/60;

      ExecSql('UPDATE ITEM_ORDEMPRODUCAO '+
              '  SET IOP_CUSTOOPERACAO = (IOP_CUSTOOPERACAO,0) + '+FloatToSQL(total) +
              '  WHERE IOP_CODIGO = '+IntToStr(IOP_CODIGO) );
    end
    else // custo operação é 1 - ]    ( 1 ) Tempo padrão da Operação X custo/hora operação
    begin

      //*** CUSTO DE MÃO-DE-OBRA / COLABORADOR
      if (DBInicio.Empresa.PMT_CUSTOCOLABORADOR = '1') and  (edColaborador.idRetorno <> '') then //Tempo padrão da Operação X custo/hora colaborador
      begin

        CustoMao := BuscaUmDadoSqlAsFloat('SELECT COL_SALARIO_HORA FROM COLABORADOR WHERE COL_CODIGO ='+edColaborador.idRetorno);
        tempoEstimado:= BuscaUmDadoSqlAsInteger(' SELECT TEMPO_ESTIMADO FROM FABRICACAO WHERE FAB_CODIGO = '+ IntToStr(FAB_Codigo) );
        total := CdsEditAPF_FINALIZADAS.AsFloat * CustoMao  * tempoEstimado/60;

        ExecSql('UPDATE ITEM_ORDEMPRODUCAO '+
                '  SET IOP_CUSTOCOLABORADOR = COALESCE(IOP_CUSTOCOLABORADOR,0) + '+FloatToSQL(total) +
                '  WHERE IOP_CODIGO = '+IntToStr(IOP_CODIGO) );
      end
      else  if (DBInicio.Empresa.PMT_CUSTOCOLABORADOR = '2') and  (edColaborador.idRetorno <> '') then //   Tempo do Apontamento Inicio e Fim  X   custo/hora colaborador
      begin
         CustoMao := BuscaUmDadoSqlAsFloat('SELECT COL_SALARIO_HORA FROM COLABORADOR WHERE COL_CODIGO ='+edColaborador.idRetorno);
         tempo := calcularDiferencaHoras  (CdsEditAPF_DATA_FIM.AsDateTime, CdsEditAPF_DATA_INI.AsDateTime) ;
         total := CdsEditAPF_FINALIZADAS.AsFloat * CustoMao  * tempo*24;
         ExecSql('UPDATE ITEM_ORDEMPRODUCAO '+
                '  SET IOP_CUSTOCOLABORADOR = COALESCE(IOP_CUSTOCOLABORADOR,0) + '+FloatToSQL(total) +
                '  WHERE IOP_CODIGO = '+IntToStr(IOP_CODIGO) );

      end;

      // CUSTO DE USO DE EQUIPAMENTO
      if (DBInicio.Empresa.PMT_CUSTOEQUIPAMENTO = '1' ) and (edPesquisaEquipamento.idRetorno <> '') then   //  Tempo padrão da Operação X custo/hora do Equipamento
      begin
        tempoEstimado:= BuscaUmDadoSqlAsInteger(' SELECT TEMPO_ESTIMADO FROM FABRICACAO WHERE FAB_CODIGO = '+ IntToStr(FAB_Codigo) );
        CustoEquipamento :=  BuscaUmDadoSqlAsFloat('SELECT EQP_CUSTOHORA FROM EQUIPAMENTO WHERE EQP_CODIGO ='+edPesquisaEquipamento.idRetorno);
        total := CdsEditAPF_FINALIZADAS.AsFloat * CustoEquipamento  * tempoEstimado/60;
        ExecSql('UPDATE ITEM_ORDEMPRODUCAO '+
                '  SET IOP_CUSTOEQUIPAMENTO = COALESCE(IOP_CUSTOEQUIPAMENTO,0) + '+FloatToSQL(total) +
                '  WHERE IOP_CODIGO = '+IntToStr(IOP_CODIGO) );
      end
      else if (DBInicio.Empresa.PMT_CUSTOEQUIPAMENTO = '2' ) and ( edPesquisaEquipamento.idRetorno <> '') then   //    Tempo do Apontamento Inicio e Fim  X   custo/hora do Equipamento
      begin
        tempo := calcularDiferencaHoras  (CdsEditAPF_DATA_FIM.AsDateTime, CdsEditAPF_DATA_INI.AsDateTime) ;
        CustoEquipamento :=  BuscaUmDadoSqlAsFloat('SELECT EQP_CUSTOHORA FROM EQUIPAMENTO WHERE EQP_CODIGO ='+edPesquisaEquipamento.idRetorno);
        total := CdsEditAPF_FINALIZADAS.AsFloat * CustoEquipamento  * tempo* 24;
        ExecSql('UPDATE ITEM_ORDEMPRODUCAO '+
                '  SET IOP_CUSTOEQUIPAMENTO = COALESCE(IOP_CUSTOEQUIPAMENTO,0) + '+FloatToSQL(total) +
                '  WHERE IOP_CODIGO = '+IntToStr(IOP_CODIGO) );
      end;


    end;
  end;


  AtualizarProduzida;
end;

procedure TfrmApontarProcessos.ControleBotoes;
begin
 case status of
  sIniciado:
     begin
      EdColaboradorCodigo.Enabled := True;
      edColaborador.Enabled := True;
      edEquipamento.Enabled := True;
      edPesquisaEquipamento.Enabled := True;

      edMotivo.Visible := False;
      lmotivocancel.Visible := False;

      cxDataIni.Enabled:= True;
      edHoraIni.Enabled := True;

      cxDataFim.Visible := False;
      edHoraFim.Visible := False;
      lfinalizacao.Visible := False;

      lInicio.Visible := true;
      edIniciado.Visible := true;

      edIniciado.Enabled := True;


      edFinalizado.Visible := False;
      lqfinalizados.Visible := False;
      lrefugados.Visible := False;
      edRefugado.Visible := False;
      lRebarba.Visible := False;
      edRebarba.Visible := False;
      if (EQP_Codigo > 0 ) then
        edPesquisaEquipamento.idRetorno := IntToStr(EQP_Codigo);
      edNordem.Enabled := True;
      edPrograma.Enabled := False;
      grpFinalizaAnt.Visible := False;

     end;
  sFinalizacao :
    begin
      EdColaboradorCodigo.Enabled := False;
      edColaborador.Enabled := False;
      edEquipamento.Enabled := False;
      edPesquisaEquipamento.Enabled := False;
      cxDataFim.Enabled:= True;
      edHoraFim.Enabled := True;
      cxDataIni.Enabled := False;
      edHoraIni.Enabled := False;
      cxDataFim.Visible:= True;
      edHoraFim.Visible := True;
      lfinalizacao.Visible:= True;
      lfinalizacao.Caption :='Finalização';


      lInicio.Visible := true;
      edIniciado.Visible := true;
      edIniciado.Enabled := False;
      edMotivo.Visible := False;
      lmotivocancel.Visible := False;



      edFinalizado.Visible := True;
      lqfinalizados.Visible := True;
      lrefugados.Visible := True;
      edRefugado.Visible := True;
      lRebarba.Visible := True;
      edRebarba.Visible := True;
      edNordem.Enabled := False;
      edPrograma.Enabled := False;
      grpFinalizaAnt.Visible := False;

    end;
  sCancelamento :
     begin
      EdColaboradorCodigo.Enabled := False;
      edColaborador.Enabled := False;
      edEquipamento.Enabled := False;
      edPesquisaEquipamento.Enabled := False;
      edIniciado.Visible := False;

      edMotivo.top := 162;
      lmotivocancel.top := 162;

      edMotivo.Visible := True;
      lmotivocancel.Visible := True;

      cxDataIni.Enabled:= False;
      edHoraIni.Enabled := False;
      cxDataFim.Enabled:= False;
      edHoraFim.Enabled:= False;

      cxDataFim.Visible:= True;
      edHoraFim.Visible := True;
      lfinalizacao.Visible:= True;
      lfinalizacao.Caption :='Cancelado';
      lInicio.Visible := False;
      edIniciado.Enabled := False;


      edFinalizado.Visible := False;
      lqfinalizados.Visible := False;
      lrefugados.Visible := False;
      edRefugado.Visible := False;
      lRebarba.Visible := False;
      edRebarba.Visible := False;
      grpFinalizaAnt.Visible := False;
      edNordem.Enabled := False;
      edPrograma.Enabled := False;
    end;
    sAlterCol :
    begin
      EdColaboradorCodigo.Enabled := True;
      edColaborador.Enabled := True;
      edEquipamento.Enabled := True;
      edPesquisaEquipamento.Enabled := True;

      edMotivo.Visible := False;
      lmotivocancel.Visible := False;
      cxDataIni.Enabled:= False;
      edHoraIni.Enabled := False;
      cxDataFim.Enabled:= False;
      edHoraFim.Enabled := False;

      cxDataFim.Visible := False;
      edHoraFim.Visible := False;
      lfinalizacao.Visible:= False;


      edIniciado.Enabled := False;


      edFinalizado.Visible := False;
      lqfinalizados.Visible := False;
      lrefugados.Visible := False;
      edRefugado.Visible := False;
      lRebarba.Visible := False;
      edRebarba.Visible := False;
      edNordem.Enabled := False;
      edPrograma.Enabled := False;
      grpFinalizaAnt.Visible := True;

    end;

 end;
end;

procedure TfrmApontarProcessos.edColaboradorSelect(Sender: TObject);
begin
  inherited;
  if edColaborador.idRetorno <> '' then
    EdColaboradorCodigo.Text :=  edColaborador.idRetorno
  else
    EdColaboradorCodigo.Clear;
end;

procedure TfrmApontarProcessos.edEquipamentoExit(Sender: TObject);
begin
  inherited;
  if edEquipamento.Text<>'' then
  begin
      edPesquisaEquipamento.idRetorno:=edEquipamento.Text;
      if edPesquisaEquipamento.idRetorno='' then
         GeraException('Equipamento não existente');
  end
  Else
  begin
      edEquipamento.clear;
      edPesquisaEquipamento.Clear;
  end;
end;

procedure TfrmApontarProcessos.edNordemExit(Sender: TObject);
 var iop_codigo : integer;
    n: integer ;
    bPrograma : boolean;
begin
  inherited;
  btnOk.Enabled := False;
  if edNordem.Text <> '' then
  begin
     //verifica se a ordem
//     n:= POS('-',edNordem.Text);
//     if n>0 then
//     begin
      bPrograma :=
          BuscaUmDadoSqlAsInteger ('SELECT COUNT(*) FROM ITEM_ORDEMPRODUCAO ' +
                                 ' WHERE IOP_NORDEM = '+ QuotedStr( edNordem.Text) +
                                 ' AND IOP_SEQ_PRG >0 ')> 0 ;

      if not bPrograma or (edPrograma.Value > 0 )  then
      begin
        // NÃO ESQUECE DE QUAL A PROGRAMAÇÃO
        OpenAux('SELECT IOP_CODIGO, IOP_DATA_CONCLUSAO  FROM ITEM_ORDEMPRODUCAO '+
                ' WHERE IOP_NORDEM = '+QuotedStr( edNordem.Text)  +
                ' AND IOP_SEQ_PRG  = '+VarToStr( edPrograma.Value)
                );
        if not qAux.FieldByName('IOP_DATA_CONCLUSAO').IsNull then
           raise Exception.Create('Ordem já concluida');
        iop_codigo :=  qAux.FieldByName('IOP_CODIGO').AsInteger;
      end
      else
        exit;
//     end
//     else
//     begin
//      iop_codigo := StrToIntDef(edNordem.Text,0);
//      edNordem.Text :=  BuscaUmDadoSqlAsString('SELECT IOP_NORDEM FROM ITEM_ORDEMPRODUCAO  WHERE IOP_CODIGO = '+IntToStr(iop_codigo) );
//     end;
    if iop_codigo = 0 then
      raise Exception.Create('Ordem inexistente');

    FAB_Codigo :=   BuscaUmDadoSqlAsInteger(' SELECT fab_codigo FROM FABRICACAO '+
                                            '  WHERE iop_codigo = '+ IntToStr(iop_codigo) +
                                            '   AND OPE_CODIGO = '+IntToStr(ope_codigo)+
                                            '   AND DATA_CONCLUSAO IS null ');
    if FAB_Codigo = 0  then
       raise Exception.Create( 'Não há operação para ordem');


  end;
  frmApontarProcessos.Caption := 'Apontamento da ordem '+ edNordem.Text;
  OpenAux(' SELECT FAB_PRODUZIDA, FAB_PRODUZINDO,  ' +
          ' (SELECT IOP_QUANTIDADE FROM ITEM_ORDEMPRODUCAO IOP WHERE IOP.IOP_CODIGO = FAB.IOP_CODIGO) IOP_QUANTIDADE '+
          '  FROM FABRICACAO FAB '+
          ' WHERE FAB_CODIGO = '+IntToStr(FAB_Codigo) );

 if qAux.FieldByName('IOP_QUANTIDADE').AsFloat> ( qAux.FieldByName('FAB_PRODUZIDA').AsFloat + qAux.FieldByName('FAB_PRODUZINDO').AsFloat) then
    CdsEditAPF_INICIADA.AsFloat := qAux.FieldByName('IOP_QUANTIDADE').AsFloat - qAux.FieldByName('FAB_PRODUZIDA').AsFloat - qAux.FieldByName('FAB_PRODUZINDO').AsFloat
 else
   CdsEditAPF_INICIADA.AsFloat := 0;

  btnOk.Enabled := True;
end;

procedure TfrmApontarProcessos.edPesquisaEquipamentoSelect(Sender: TObject);
begin
  inherited;
  if edPesquisaEquipamento.idRetorno <> '' then
     edEquipamento.Text :=  edPesquisaEquipamento.idRetorno
  else
     edEquipamento.Clear;
end;

procedure TfrmApontarProcessos.FormCreate(Sender: TObject);
begin
  inherited;
  CampoID:='APF_CODIGO';
  Tabela:='APONTAMENTO_FAB';
  DspEdit.UpdateMode := upWhereKeyOnly;
  SetTamanhoMinimo(302,705);

end;

procedure TfrmApontarProcessos.FormShow(Sender: TObject);
  Procedure VisibleAndEnabl(btn: TObject; Visible, Enabl: Boolean);
  begin
    SetPropValue(btn, 'VISIBLE', Visible);
    SetPropValue(btn, 'ENABLED', Enabl);
  end;
begin
  inherited;
  if Status = sAlterCol then
    SetTamanhoMinimo(400,705)
  else
    SetTamanhoMinimo(302,705);
  ControleBotoes;
  VisibleAndEnabl(btSave, False, False);
  VisibleAndEnabl(btFirst, false, false);
  VisibleAndEnabl(btPrior, false, false);
  VisibleAndEnabl(btNext, false, false);
  VisibleAndEnabl(btLast, false, false);
  OpenAux( 'SELECT IOP_NORDEM, IOP_SEQ_PRG  FROM ITEM_ORDEMPRODUCAO IOP   JOIN FABRICACAO FB  ON (IOP.IOP_CODIGO = FB.IOP_CODIGO) '+
          ' WHERE FAB_CODIGO =  '+IntToStr(FAB_Codigo) );
  edNordem.Text :=  qAux.FieldByName('IOP_NORDEM').AsString;
  edPrograma.Value :=qAux.FieldByName('IOP_SEQ_PRG').AsInteger  ;

  frmApontarProcessos.Caption := 'Apontamento da ordem '+ edNordem.Text;
  if edNordem.CanFocus then
    edNordem.SetFocus;
  btnOk.Caption := 'Salva  (Ctrl+ENTER)';
end;

procedure TfrmApontarProcessos.SetEQP_Codigo(AValues: Integer);
begin
 fEQP_Codigo := AValues;
end;

procedure TfrmApontarProcessos.SetFAB_Codigo(AValues: Integer);
begin
 fFAb_Codigo := AValues;

end;

procedure TfrmApontarProcessos.SetStatus(AValue: Integer);
begin
 fStatus := AValue;
end;

end.
