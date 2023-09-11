unit GimpCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,   Mask,  rxCurrEdit, SqlExpr,SqlClientDataSet, Provider,
  DB, DBClient, DBLocal, DBLocalS, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppBands, ppVar, ppCtrls, ppPrnabl, ppCache,
  ppParameter, ppModule, raCodMod, ppDesignLayer, SimpleDS, Data.DBXFirebird, JvExMask, JvToolEdit;

type
  TFrmGimpCheques = class(TForm)
    Group02: TGroupBox;
    Label1: TLabel;
    CbBanco: TComboBox;
    Group01: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox6: TGroupBox;
    LTBoxRelatorio: TListBox;
    GroupBox3: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    RadText: TRadioButton;
    Group07: TGroupBox;
    BitConfig: TBitBtn;
    BitOk: TBitBtn;
    BitCancelar: TBitBtn;
    PrinterSetupDialog1: TPrinterSetupDialog;
    SqlCdsContas: TSQLClientDataSet;
    SqlCdsContasBAN_CODIGO: TStringField;
    SqlCdsContasBAN_APELIDO: TStringField;
    SqlCdsRelCheques: TSQLClientDataSet;
    DsRelCheques: TDataSource;
    ppDBRel01: TppDBPipeline;
    ppRelCheq01: TppReport;
    SqlCdsRelChequesCHQ_REGISTRO: TIntegerField;
    SqlCdsRelChequesEMP_CODIGO: TStringField;
    SqlCdsRelChequesBAN_CODIGO: TStringField;
    SqlCdsRelChequesCHQ_EMISSAO: TDateField;
    SqlCdsRelChequesCHQ_BOMPARA: TDateField;
    SqlCdsRelChequesCHQ_NUMERO: TStringField;
    SqlCdsRelChequesCHQ_NUMERO_DV: TStringField;
    SqlCdsRelChequesCHQ_VALOR: TFMTBCdField;
    SqlCdsRelChequesCHQ_SITUACAO: TStringField;
    SqlCdsRelChequesCHQ_IMP: TStringField;
    SqlCdsRelChequesCHQ_TIPO_FAVORECIDO: TStringField;
    SqlCdsRelChequesCHQ_CODIGO_FAVORECIDO: TStringField;
    SqlCdsRelChequesCHQ_NOME_FAVORECIDO: TStringField;
    SqlCdsRelChequesCHQ_OBSERVACAO: TStringField;
    SqlCdsRelChequesCHQ_LIQUIDAR: TStringField;
    SqlCdsRelChequesUSU_CODIGO: TIntegerField;
    SqlCdsRelChequesUSU_LOGIN: TStringField;
    SqlCdsRelChequesCHQ_PAG_REGISTRO: TIntegerField;
    SqlCdsRelChequesCHQ_EXCLUSAO: TStringField;
    SqlCdsRelChequesCHQ_MOTIVO_EXCLUSAO: TStringField;
    SqlCdsRelChequesCHQ_DATA_EXCLUSAO: TDateField;
    SqlCdsRelChequesCHQ_HORA_EXCLUSAO: TTimeField;
    SqlCdsRelChequesUSU_CODIGO_EXCLUSAO: TIntegerField;
    SqlCdsRelChequesUSU_LOGIN_EXCLUSAO: TStringField;
    SqlCdsRelChequesBAN_APELIDO: TStringField;
    ppParameterList1: TppParameterList;
    SqlCdsRelChequesCC_IMP: TStringField;
    SqlCdsRelChequesCC_SITUACAO: TStringField;
    SqlCdsRelChequesCC_EXCLUSAO: TStringField;
    ppHeaderBand3: TppHeaderBand;
    ppLine20: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppLine66: TppLine;
    ppSystemVariable23: TppSystemVariable;
    ppSystemVariable24: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine4: TppLine;
    ppLabel11: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine5: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText1: TppDBText;
    ppLine1: TppLine;
    ppDBText2: TppDBText;
    ppLabel1: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine3: TppLine;
    ppLabel9: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine2: TppLine;
    raCodeModule1: TraCodeModule;
    EditDataI: TJvDateEdit;
    EditDataF: TJvDateEdit;
    Cconta: TEdit;
    procedure FormShow(Sender: tObject);
    procedure LTBoxRelatorioDblClick(Sender: tObject);
    procedure EditDataIExit(Sender: tObject);
    procedure EditDataFExit(Sender: tObject);
    procedure CcontaExit(Sender: tObject);
    procedure CbBancoClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure BitOkClick(Sender: tObject);
    procedure BitConfigClick(Sender: tObject);
    procedure SqlCdsRelChequesCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: tObject);
  private
PathNewRel : STRING;
    procedure BuscaConta(sPesquisa:String);
    procedure PreencheCombo;
    procedure Cria_Rel_Cheque_01;
  public
    { Public declarations }
  end;

var
  FrmGimpCheques: TFrmGimpCheques;





implementation

uses Uteis, RWFunc, DataCad, ufrmpreviewrb, iniciodb;

{$R *.dfm}

procedure TFrmGimpCheques.FormCreate(Sender: tObject);
begin
     PathNewRel := dbInicio.GetParametroSistema('PMT_PATHRELATORIO');
end;

procedure TFrmGimpCheques.FormShow(Sender: tObject);
begin
   PreencheCombo;
   EditDataI.Date := now;
   EditDataF.Date := now;
   LTBoxRelatorio.Items.Add('Relatório de Emissão de Cheques'); //00
   FrmGimpCheques.AutoSize := true;
   EditDataI.SetFocus;
   EditDataI.SelectAll;
end;

procedure TFrmGimpCheques.LTBoxRelatorioDblClick(Sender: tObject);
begin
   if (LTBoxRelatorio.ItemIndex = 0) then
      begin
         EditDataI.SetFocus;
      end;
end;

procedure TFrmGimpCheques.EditDataIExit(Sender: tObject);
begin
   EditDataI.Text := PreenchaData(EditDataI.Text);
   if not TestaDataStr(EditDataI.Text) then
      EditDataI.setfocus;
end;

procedure TFrmGimpCheques.EditDataFExit(Sender: tObject);
begin
   EditDataF.Text := PreenchaData(EditDataF.Text);
   if not TestaDataStr(EditDataF.Text) then
      EditDataF.setfocus
   else
      begin
         if (EditDataF.Date < EditDataI.Date) then
            begin
               uteis.aviso('Data Final menor que a Data Inicial !');
               EditDataF.Date := 0;
               EditDataF.SetFocus;
            end;
      end;
end;

procedure TFrmGimpCheques.CcontaExit(Sender: tObject);
begin
   if (StrToIntDef(Cconta.Text,0) <> 9999) then
      begin
         BuscaConta('C');
      end;
end;

procedure TFrmGimpCheques.CbBancoClick(Sender: tObject);
begin
   if (ActiveControl<> Nil)
   and(ActiveControl.Name <> 'BitCancelar')
   and(ActiveControl.Name <> 'Cconta')
   and(ActiveControl.Name <> 'EditDataI')
   and(ActiveControl.Name <> 'EditDataF') then
      if (CbBanco.Text <> 'TODAS CONTAS') then
         BuscaConta('N');
end;

procedure TFrmGimpCheques.BuscaConta(sPesquisa: String);
begin
   {Faz a Busca da Seguinte Maneira
    sPesquisa -> C = Busca pelo Código
              -> N = Busca pelo Nome }
   try
     if (sPesquisa = 'C') then
        begin
           if StrToIntDef(Cconta.text,0) <> 0 then
              begin
                  if SqlCdsContas.Locate('BAN_CODIGO',StrZero(Cconta.Text,4),[])= true then
                     begin
                        CbBanco.Text    := SqlCdsContasBAN_APELIDO.AsString;
                     end
                  else
                     begin
                         uteis.aviso('Conta não encontrado com o código informado !');
                         Cconta.text := '9999';
                         CbBanco.Text  := 'TODAS CONTAS';
                     end;
              end;
        end
     else
     if (sPesquisa = 'N') then
        begin
           if CbBanco.Text <> '' then
              begin
                  if SqlCdsContas.locate('BAN_APELIDO',CbBanco.Text,[]) = true then
                     begin
                        Cconta.Text  := SqlCdsContasBAN_CODIGO.AsString;
                        CbBanco.Text := SqlCdsContasBAN_APELIDO.AsString;
                     end
                  else
                     begin
                        uteis.aviso('Conta não encontrado com o nome informado !');
                        Cconta.Text  := '9999';
                        CbBanco.Text  := 'TODAS CONTAS';
                     end;
              end;
        end;
   except
     on E:EDataBaseError do
        begin
           uteis.erro  (pchar('Impossível realizar Busca !'+#13#10+
                      'Mensagem erro: '+e.message));
        end;
   end;
end;

procedure TFrmGimpCheques.PreencheCombo;
begin
   try
     SqlCdsContas.Close;
     SqlCdsContas.CommandText:=SQLDEF('BANCOS','SELECT T1.BAN_CODIGO,T1.BAN_APELIDO FROM BAN0000 T1 ','','T1.BAN_APELIDO','T1.');
     SqlCdsContas.Open;
     SqlCdsContas.First;
     CbBanco.Clear;
     CbBanco.Items.Add('TODAS CONTAS');
     while not SqlCdsContas.Eof do
      begin
         CbBanco.Items.Add(SqlCdsContasBAN_APELIDO.AsString);
         SqlCdsContas.Next;
      end;
     CbBanco.ItemIndex := 0;
   except on E:EdatabaseError do
       begin
          uteis.erro  (Pchar('Erro ao abrir a Tabela BANCOS !'+e.message));
       end;
   end;
end;

procedure TFrmGimpCheques.BitCancelarClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmGimpCheques.BitOkClick(Sender: tObject);
begin
   if (EditDataI.Date = 0 ) then
      begin
         uteis.aviso('Informe a Data Inicial !');
         EditDataI.SetFocus;
      end
   else
      begin
         Cria_Rel_Cheque_01;
      end;
end;

procedure TFrmGimpCheques.Cria_Rel_Cheque_01;
begin
   LBL_00_EMPRESA.Caption  := DBINICIO.EMPRESA.Razao;
   LBL_00_LTITULO1.Caption := 'RELAÇÃO DE CHEQUES EMITIDOS';
   LBL_00_LTITULO2.Caption := 'PERÍODO : '+EditDataI.Text+' ATÉ '+EditDataF.Text;
   //
   wSql1      := '';
   wSeleciona := '';
   wOrdem     := '';
   wSql1      := 'SELECT T1.*,T2.BAN_APELIDO FROM CHQ0000 T1 LEFT JOIN BAN0000 T2 ON (T2.BAN_CODIGO = T1.BAN_CODIGO) ';
   wSeleciona := 'WHERE T1.CHQ_EMISSAO BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' AND T1.CHQ_EXCLUSAO = ''N''';
   wOrdem     := 'T2.BAN_APELIDO,T1.CHQ_EMISSAO,T1.CHQ_NUMERO';
   //
   if (StrToIntDef(Cconta.text,0) <> 9999) then
      begin
         wSeleciona := wSeleciona + ' AND T1.BAN_CODIGO = '''+StrZero(Cconta.Text,4)+'''';
      end;
   //
   SqlCdsRelCheques.close;
   SqlCdsRelCheques.CommandText := SQLDEF('BANCOS',wSql1,wSeleciona,wOrdem,'T1.');
   SqlCdsRelCheques.Open;
   if (StrToIntDef(Cconta.text,0) <> 9999) then
      begin
         LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' - CONTA : '+StrZero(Cconta.Text,4)+' - '+SqlCdsRelChequesBAN_APELIDO.AsString;
      end;
   if (RadVideo.Checked) then
      begin
         ppRelCheq01.DeviceType:='Screen';
      end
   else
   if (RadImpressora.Checked) then
      begin
         ppRelCheq01.DeviceType      :='Printer';
         ppRelCheq01.ShowPrintDialog := TRUE;
      end
   else
   if (Radtext.Checked) then
      begin
         ppRelCheq01.ShowPrintDialog := False;
         ppRelCheq01.DeviceType      := 'ReportTextFile';
         ppRelCheq01.TextFileName    := PathNewRel+'\RELCHEQUES.TXT';
      end;
   RBuilderPreview(ppRelCheq01);
end;

procedure TFrmGimpCheques.BitConfigClick(Sender: tObject);
begin
   PrinterSetupDialog1.Execute;
end;

procedure TFrmGimpCheques.SqlCdsRelChequesCalcFields(DataSet: TDataSet);
begin
   SqlCdsRelChequesCC_IMP.AsString      := IIF(SqlCdsRelChequesCHQ_IMP.AsString = 'S','SIM','NãO');

   SqlCdsRelChequesCC_SITUACAO.AsString := IIF(SqlCdsRelChequesCHQ_SITUACAO.AsString = 'P','Pendente',
                                           IIF(SqlCdsRelChequesCHQ_SITUACAO.AsString = 'L','Liquidado',
                                           IIF(SqlCdsRelChequesCHQ_SITUACAO.AsString = 'C','Cancelado',
                                           IIF(SqlCdsRelChequesCHQ_SITUACAO.AsString = 'D','Devolvido',
                                           IIF(SqlCdsRelChequesCHQ_SITUACAO.AsString = 'R','Repassado','Reapresentado')))));
   //
   SqlCdsRelChequesCC_EXCLUSAO.AsString := IIF(SqlCdsRelChequesCHQ_EXCLUSAO.AsString = 'S','Sim','Não');
end;

end.
