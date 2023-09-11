unit Caixa002;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Grids, DBGrids, Mask,   Buttons,
  ExtCtrls,Rwfunc,   Provider, SqlExpr,SqlClientDataSet, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, DBClient, DBLocal, DBLocalS, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppCache, ppDesignLayer, ppParameter, SimpleDS,
  Data.DBXFirebird, basedbform, Data.FMTBCd, ACBrEnterTab, ACBrBase, ACBrCalculadora, ACBrETQ, JvExMask, JvToolEdit;

type
  TFormCaixaFecha = class(TfrmBaseDB)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Bit_Sair: TBitBtn;
    Bit_Gera: TBitBtn;
    CheckTransporte: TCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    BitBtnEstornar: TBitBtn;
    BitExcluirCaixa: TBitBtn;
    Bit_Imprimir: TBitBtn;
    SqlCdsRelFechaCx: TSQLClientDataSet;
    DsRelFechaCx: TDataSource;
    ppDBFechaCx: TppDBPipeline;
    ppRELFechaCx: TppReport;
    SqlCdsRelFechaCxCXA_SALDO_CC: TCurrencyField;
    pp00HeaderBand1: TppHeaderBand;
    ppLine18: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppLine20: TppLine;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLine21: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    pp00DetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine2: TppLine;
    ppLabel8: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine22: TppLine;
    ppLabel10: TppLabel;
    ppDBText8: TppDBText;
    SqlCdsRelFechaCxCCT_DESCRI: TStringField;
    SqlCdsRelFechaCxCXA_LANCTO: TStringField;
    SqlCdsRelFechaCxCXA_DATA: TSQLTimeStampField;
    SqlCdsRelFechaCxCCT_CODIGO: TStringField;
    SqlCdsRelFechaCxCXA_HISTORICO: TStringField;
    SqlCdsRelFechaCxCXA_DOCUMENTO: TStringField;
    SqlCdsRelFechaCxCXA_TIPODOC: TStringField;
    SqlCdsRelFechaCxCXA_SAIDA: TFMTBCdField;
    SqlCdsRelFechaCxCXA_ENTRADA: TFMTBCdField;
    SqlCdsRelFechaCxCXA_SITUACAO: TStringField;
    SqlCdsRelFechaCxEMP_CODIGO: TStringField;
    ppSummaryBand1: TppSummaryBand;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    CdsRelFechaCx: TClientDataSet;
    CdsRelFechaCxDATA: TDateField;
    CdsRelFechaCxLANCTO: TStringField;
    CdsRelFechaCxDOCUMENTO: TStringField;
    CdsRelFechaCxCONTANALISE: TStringField;
    CdsRelFechaCxHISTORICO: TStringField;
    CdsRelFechaCxENTRADA: TCurrencyField;
    CdsRelFechaCxSAIDA: TCurrencyField;
    CdsRelFechaCxACUMULADO: TCurrencyField;
    CdsRelFechaCxSALDO_CC: TCurrencyField;
    qFechaCaixa: TSQLQuery;
    qFechaCaixaCXF_CODIGO: TStringField;
    qFechaCaixaCXF_ANTERIOR: TFMTBCdField;
    qFechaCaixaCXF_DATAFECHA: TSQLTimeStampField;
    qFechaCaixaCXF_ENTRADAS: TFMTBCdField;
    qFechaCaixaCXF_SAIDAS: TFMTBCdField;
    qFechaCaixaCXF_DINICIO: TSQLTimeStampField;
    qFechaCaixaCXF_DFIM: TSQLTimeStampField;
    qFechaCaixaEMP_CODIGO: TStringField;
    DspFechaCaixa: TDataSetProvider;
    CdsFechaCaixa: TClientDataSet;
    CdsFechaCaixaCXF_CODIGO: TStringField;
    CdsFechaCaixaCXF_ANTERIOR: TFMTBCdField;
    CdsFechaCaixaCXF_DATAFECHA: TSQLTimeStampField;
    CdsFechaCaixaCXF_ENTRADAS: TFMTBCdField;
    CdsFechaCaixaCXF_SAIDAS: TFMTBCdField;
    CdsFechaCaixaCXF_DINICIO: TSQLTimeStampField;
    CdsFechaCaixaCXF_DFIM: TSQLTimeStampField;
    CdsFechaCaixaEMP_CODIGO: TStringField;
    CdsFechaCaixaCC_SALDOCAIXA: TCurrencyField;
    DsFechaCaixa: TDataSource;
    EditDataI: TJvDateEdit;
    EditDataf: TJvDateEdit;
    procedure FormShow(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_GeraClick(Sender: tObject);
    procedure EditDataIExit(Sender: tObject);
    procedure BitBtnEstornarClick(Sender: tObject);
    procedure BitExcluirCaixaClick(Sender: tObject);
    procedure Bit_ImprimirClick(Sender: tObject);
    procedure DBGrid1DblClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure pp00HeaderBand1BeforePrint(Sender: tObject);
    procedure CdsRelFechaCxCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure CdsFechaCaixaCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    wUltData  : String;
    wDataProx : TdateTime;
    wDataFinal: TdateTime;
    cSaldo, cSaldo_Acumulado : Currency;
    procedure OpenMovimento;
  public
    { Public declarations }
    procedure BotoesAcesso;
  end;

var
  FormCaixaFecha: TFormCaixaFecha;

implementation

{$R *.dfm}

uses Uteis, ufrmpreviewrb, iniciodb;

procedure TFormCaixaFecha.FormShow(Sender: tObject);
begin
      inherited;
      wDataProx:=date;
      EditDataI.Date := wDataProx;
      //EditDataF.Date := EditDataF.Date;
      BitBtnEstornar.Enabled := False;
      OpenMovimento ;
end;

procedure TFormCaixaFecha.OpenMovimento ;
begin
     CdsFechaCaixa.Close;
     qFechaCaixa.sql.clear;
     qFechaCaixa.sql.add('SELECT * FROM CAIXA002 '+ConcatSe(' where ',dbInicio.ExclusivoSql('PAGAR') ) );
     qFechaCaixa.sql.add('ORDER BY CXF_CODIGO');
     CdsFechaCaixa.Open;
     if CdsFechaCaixa.IsEmpty then
        wDataProx := Date
     Else
     begin
          CdsFechaCaixa.Last;
          wDataProx := CdsFechaCaixaCXF_DATAFECHA.AsDateTime+1;
     end;
     CdsFechaCaixa.First;
end;

procedure TFormCaixaFecha.Bit_SairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormCaixaFecha.BotoesAcesso;
begin
     if assigned(FormCaixaFecha) then
     begin
       Bit_Imprimir.Enabled := Uteis.AcessoUsuario('FinanceiroFechamento do Caixa Fixo',DBInicio.Usuario.CODIGO,FormCaixaFecha).Relatorio;
       BitExcluirCaixa.Enabled := Uteis.AcessoUsuario('FinanceiroFechamento do Caixa Fixo',DBInicio.Usuario.CODIGO,FormCaixaFecha).Exluir;
     end;
end;

procedure TFormCaixaFecha.Bit_GeraClick(Sender: tObject);
var
   wDataI,wDataF,wCxf_codigo,wCodigo:String;
   wEntradas,wSaidas,wCxf_anterior :Double;
begin
    if uteis.confirmacao ( 'Fechar todos os lançamentos do caixa no período informado. Confirma?')= mrYes then
    begin
          if EditDataI.date=0 then
             uteis.aviso('Informe a data inicial.')
          else
          if EditDataF.date=0 then
                 uteis.aviso('Informe a data final.')
          else
          if EditDataI.Date > EditDataF.Date then
          begin
               uteis.erro  ('Data final não pode ser menor que a data inicial!');
               EditDataF.SetFocus;
          end
          else
          begin
                wCxf_anterior:= 0;
                wCodigo      := '';
                wUltData     := '';
                wCxf_codigo  := '';
                if not CdsFechaCaixa.IsEmpty then
                begin
                     OPENAUX ( 'SELECT CXF_DFIM,CXF_CODIGO,CXF_ENTRADAS,CXF_SAIDAS,CXF_ANTERIOR FROM CAIXA002 '+
                               'WHERE CXF_CODIGO = (SELECT MAX(CXF_CODIGO) FROM CAIXA002 WHERE EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+') ' +
                               'ORDER BY CXF_CODIGO' );
                     if not qAux.IsEmpty then
                     begin
                          wUltData      := DateToStr(qAux.FieldByName('CXF_DFIM').AsDateTime);
                          wCxf_anterior := (qAux.FieldByName('CXF_ENTRADAS').AsCurrency - qAux.FieldByName('CXF_SAIDAS').AsCurrency) + qAux.FieldByName('CXF_ANTERIOR').AsCurrency;
                          if EditDataI.Date <= StrToDate(wUltData) then
                             GeraException('Impossível fechar nestas datas, já existe caixa fechado entre este período.');
                          wCodigo       := BuscaUmDadoSqlAsString( 'SELECT max(CXF_CODIGO) as CXF_CODIGO FROM CAIXA002' );
                          wCxf_codigo   := StrZero(IntToStr(StrToInt(wCodigo)+1),6);
                     end
                     else
                         GeraException('Impossível fechar nestas datas.');

                end
                else
                begin
                      wCxf_codigo := BuscaUmDadoSqlAsString( 'SELECT max(CXF_CODIGO) as CXF_CODIGO FROM CAIXA002' );
                      if wCxf_codigo<>'' then
                           wCxf_codigo :=  StrZero(wCxf_codigo.ToInteger+1,6)
                      else
                           wCxf_codigo:='000001';
                      wCxf_anterior:=0;        // nao existe ainda
                end;

                { Pesquisar os lancamentos para serem fechados e atualizá-los }
                wDataI := DateToSql(EditDataI.date);
                wDataF := DateToSql(EditDataF.date);
                // Data de inicio do proximo caixa. quando é transportado
                OpenAux( 'SELECT SUM(CXA_ENTRADA) AS Tot_Entradas, '+
                         '       SUM(CXA_SAIDA) as Tot_Saidas '+
                         'FROM CAIXA001 '+
                         'WHERE CXA_SITUACAO = '+qStr('A')+
                         '      AND CXA_TIPODOC <> '+qStr('T')+
                         '      AND CXA_DATA>='+DateTosql(EditDataI.date)+
                         '      AND CXA_DATA<='+DateToSql(EditDataF.date)+
                         ConcatSe(' and ',dbInicio.ExclusivoSql('PAGAR') ) );
                wEntradas := qAux.FieldByName('Tot_Entradas').AsCurrency;
                wSaidas   := qAux.FieldByName('Tot_Saidas').AsCurrency;

                CdsFechaCaixa.Insert;
                CdsFechaCaixaCXF_CODIGO.AsString      := wCxF_Codigo;
                CdsFechaCaixaCXF_ANTERIOR.AsCurrency  := wCxF_Anterior;
                CdsFechaCaixaCXF_DATAFECHA.AsDateTime := EditDataf.Date;
                CdsFechaCaixaCXF_ENTRADAS.AsCurrency  := wEntradas;
                CdsFechaCaixaCXF_SAIDAS.AsCurrency    := wSaidas;
                CdsFechaCaixaCXF_DINICIO.AsDateTime   := EditDataI.Date;
                CdsFechaCaixaCXF_DFIM.AsDateTime      := EditDataF.Date;
                CdsFechaCaixaEMP_CODIGO.AsString      := dbInicio.Empresa.EMP_CODIGO;
                CdsFechaCaixa.Post;
                if CdsFechaCaixa.ApplyUpdates(0)>0 then
                   showmessage('erro');

                ExecSql( ' Update CAIXA001 Set CXA_SITUACAO='+qStr('F')+
                         ' WHERE CXA_DATA BETWEEN '+DateToSql(EditDataI.date)+' AND '+DateToSql(EditDataF.date)+
                         ConcatSe(' and ',dbInicio.ExclusivoSql('PAGAR') ) );

                if CheckTransporte.checked  then
                begin
                     ExecSql('insert into CAIXA001 ( CXA_LANCTO, CXA_DATA, CXA_HISTORICO, CXA_TIPODOC, CXA_ENTRADA, CXA_SITUACAO, EMP_CODIGO ) '+
                             'values ( '+qStr(StrZero( dbInicio.GetNextSequence( 'gen_caixa001_lancto') ,6))+', '+
                             '         '+DateToSql( EditDataf.Date+1 )+', '+
                             '         '+qStr('SALDO TRANSPORTADO DO DIA ('+EditDataF.Text+')')+', '+
                             '         '+qStr('T')+', '+
                             '         '+FloatTosql(((wEntradas-wSaidas)+wCxf_anterior))+', '+
                             '         '+qStr('A')+', '+
                             '         '+qStr(dbInicio.Empresa.EMP_CODIGO)+' )' );
                end;
                EditDataI.SetFocus;
                EditDataI.SelectAll;
          end;
    end;
end;

procedure TFormCaixaFecha.EditDataIExit(Sender: tObject);
begin
    EditDataF.Text := EditDataI.Text;
end;

procedure TFormCaixaFecha.BitBtnEstornarClick(Sender: tObject);
var
   wDataI,wDataF,wDtTransporte:string;
begin
    CdsFechaCaixa.Next;
    if not CdsFechaCaixa.Eof then
    begin
          uteis.aviso('O estorno do caixa ocorre do último para o inicio.');
          CdsFechaCaixa.Last;
          DBgrid1.SetFocus;
          BitExcluirCaixa.Enabled := False;
          BitBtnEstornar.Enabled  := False;
    end
    Else
    if uteis.confirmacao ( ('Todos os lançamentos do último caixa fechado voltarão a ficar abertos.'+#13+'Tem certeza que deseja estorná-lo?'))= Mryes then
    begin
           {Deve-se estornar seguindo a logica de estorno do ultimo para o anterior,
           jamais deixar estornar um caixa que não seja o ultimo da lista}

           wDataI:=DateToSql(CdsFechaCaixaCXF_DINICIO.AsDateTime);
           wDataF:=DateToSql(CdsFechaCaixaCXF_DFIM.AsDateTime);

           ExecSql( 'Update CAIXA001 '+
                    'Set CXA_SITUACAO='+qStr('A')+
                    ' WHERE CXA_DATA>='+wDataI+' AND CXA_DATA<='+wDataF+
                    ConcatSe(' and ',dbInicio.ExclusivoSql('PAGAR') ) );

             {Deletar o registro de lancto do tipo transporte 'T'}
           wDtTransporte:=DateToSql(CdsFechaCaixaCXF_DFIM.AsDateTime +1);
           ExecSql( 'Delete FROM CAIXA001 '+
                    'WHERE CXA_TIPODOC ='+qStr('T')+
                    '      AND CXA_DATA='+wDtTransporte+
                    ConcatSe(' and ',dbInicio.ExclusivoSql('PAGAR') ) );
           ExecSql( 'Delete FROM CAIXA002 '+
                    'WHERE CXF_DINICIO='+wDataI+
                    '      AND CXF_DFIM='+wDataF+
                    ConcatSe(' and ',dbInicio.ExclusivoSql('PAGAR') ) );
           CdsFechaCaixa.Refresh;
    end;
    BitExcluirCaixa.Enabled := False;
    BitBtnEstornar.Enabled  := False;
    EditDataI.SetFocus;
end;

procedure TFormCaixaFecha.BitExcluirCaixaClick(Sender: tObject);
var   wDataI,wDataF,wDtExclui:string;
begin
    {limpar as datas do topo do form}
    EditDataI.Clear;
    EditDataf.Clear;
    CdsFechaCaixa.Next;
    if not CdsFechaCaixa.Eof then
    begin
          uteis.aviso('A Exclusão ocorre do último para o inicio.');
          CdsFechaCaixa.Last;
          DBgrid1.SetFocus;
          BitExcluirCaixa.Enabled := False;
          BitBtnEstornar.Enabled  := False;
    end
    Else
    if uteis.confirmacao ( ('Todos os lançamentos deste caixa serão excluídos.'+#13+'Você perderá todos os lançamentos do período.Tem certeza?'))= Mryes then
    begin
           if uteis.confirmacao ( 'Confirma a exclusão ?')= mrNo then
              exit;
           wDataI:=DateToSql(CdsFechaCaixaCXF_DINICIO.AsDateTime);
           wDataF:=DateToSql(CdsFechaCaixaCXF_DFIM.AsDateTime);
           wDtExclui:=DateToSql(CdsFechaCaixaCXF_DFIM.AsDateTime+1);//Essa variavel é utilizada pra Excluir o proximo transportado na tabela Caixa Fixo

           {Deletar o Fechamento de Caixa Selecionado}
           CdsFechaCaixa.Delete;
           CdsFechaCaixa.ApplyUpdates(0);
           if not CdsFechaCaixa.IsEmpty then
              BitExcluirCaixa.Enabled := True
           else
              BitExcluirCaixa.Enabled := False;
           {Deletar o registro de lancto do tipo transporte 'T'}
           ExecSql( 'DELETE FROM CAIXA001 '+
                    'WHERE CXA_SITUACAO='+qStr('F')+
                    '      AND CXA_TIPODOC<> '+qStr('T')+
                    '      AND CXA_DATA BETWEEN '+wDataI+
                    '      AND '+wDataF+
                    ConcatSe(' and ',dbInicio.ExclusivoSql('PAGAR') ) );
           {Deletar o Registros que foi Transportado no Lancamento de Caixa do Dia Seguinte}
           ExecSql( 'DELETE FROM CAIXA001 '+
                    'WHERE CXA_TIPODOC='+qStr('T')+
                    '      AND CXA_DATA >='+wDtExclui+
                    ConcatSe(' and ',dbInicio.ExclusivoSql('PAGAR') ) );
           {Inseri o proximo valor Transportado com a data do dia seguinte no Caixa Fixo}
           ExecSql( 'UPDATE CAIXA001 '+
                    'SET CXA_SITUACAO ='+qStr('A')+
                    ' WHERE CXA_DATA = '+wDataF+
                    ' AND CXA_TIPODOC='+qStr('T')+
                    ConcatSe(' and ',dbInicio.ExclusivoSql('PAGAR') ) );
    end;
    BitExcluirCaixa.Enabled := False;
    BitBtnEstornar.Enabled  := False;
end;

procedure TFormCaixaFecha.Bit_ImprimirClick(Sender: tObject);
var wGrupo,wSeleciona,wOrdem,wDataI,wDataF:String;
begin
    {Ativar a Tabela Temporaria}
    if (not CdsRelFechaCx.Active) then
       CdsRelFechaCx.CreateDataSet;
    CdsRelFechaCx.EmptyDataSet;

    EditDataI.Clear;
    EditDataF.Clear;
    // converte p/ data americana para sql
    //    FormatSettings.ShortDateFormat:='mm/dd/yyyy';
    wDataI := DateToSql(CdsFechaCaixaCXF_DINICIO.AsDateTime);
    wDataF := DateToSql(CdsFechaCaixaCXF_DFIM.AsDateTime);
    if uteis.confirmacao ( ('Imprimir Todos os Lançamentos do Caixa selecionado.'+#13+'Periódo de: '+CdsFechaCaixaCXF_DINICIO.asString+' até '+CdsFechaCaixaCXF_DFIM.asstring+#13+'Confirma Impressão'))= mrYes then
    begin
          SqlCdsRelFechaCx.Close;
          SqlCdsRelFechaCx.CommandText := 'SELECT Y1.*, Y2.CCT_DESCRI '+
                                          'FROM CAIXA001 Y1 '+
                                          '     LEFT JOIN CCT_0000 Y2 ON Y1.CCT_CODIGO = Y2.CCT_CODIGO '+
                                          'Where CXA_SITUACAO = '+qStr('F')+' AND CXA_DATA BETWEEN '+wDataI+' AND '+wDataF+
                                          ConcatSe(' and Y1.',dbInicio.ExclusivoSql('PAGAR') )+
                                          ' order by CXA_DATA,CXA_TIPODOC DESC,CXA_LANCTO' ;
          SqlCdsRelFechaCx.Open;
          if (not SqlCdsRelFechaCx.IsEmpty) then
          begin
                cSaldo_Acumulado := 0;
                while (not SqlCdsRelFechaCx.Eof) do
                begin
                    cSaldo                            := 0;
                    cSaldo                            := (SqlCdsRelFechaCxCXA_ENTRADA.AsCurrency - SqlCdsRelFechaCxCXA_SAIDA.AsCurrency);
                    cSaldo_Acumulado                  := cSaldo_Acumulado + cSaldo;
                    CdsRelFechaCx.Append;
                    CdsRelFechaCxDATA.AsDateTime      := SqlCdsRelFechaCxCXA_DATA.AsDateTime;
                    CdsRelFechaCxLANCTO.AsString      := SqlCdsRelFechaCxCXA_LANCTO.AsString;
                    CdsRelFechaCxDOCUMENTO.AsString   := SqlCdsRelFechaCxCXA_DOCUMENTO.AsString;
                    CdsRelFechaCxCONTANALISE.AsString := SqlCdsRelFechaCxCCT_DESCRI.AsString;
                    CdsRelFechaCxHISTORICO.AsString   := SqlCdsRelFechaCxCXA_HISTORICO.AsString;
                    CdsRelFechaCxENTRADA.AsCurrency   := SqlCdsRelFechaCxCXA_ENTRADA.AsCurrency;
                    CdsRelFechaCxSAIDA.AsCurrency     := SqlCdsRelFechaCxCXA_SAIDA.AsCurrency;
                    CdsRelFechaCxACUMULADO.AsCurrency := cSaldo_Acumulado;
                    CdsRelFechaCx.Post;
                    SqlCdsRelFechaCx.Next;
                end;
          end;
          //
          CdsRelFechaCx.First;
          //
          {Converte a data para padrao Brasileiro}
          wDataI := CdsFechaCaixaCXF_DINICIO.AsString;
          wDataF := CdsFechaCaixaCXF_DFIM.AsString;
          {Coloca o Cabecalho no relatorio}
          LBL_00_LTITULO1.Caption := 'MOVIMENTO DO CAIXA FECHADO';
          LBL_00_LTITULO2.Caption := 'Periódo de : '+wDataI+' até '+wDataF;
          {Excecuta o Relatorio}
          ppRelFechaCx.DeviceType := 'Screen';
          RBuilderPreview(ppRelFechaCx);
          EditDataI.Date := Date;
          EditDataI.SetFocus;
    end;
end;

procedure TFormCaixaFecha.DBGrid1DblClick(Sender: tObject);
begin
    if not CdsFechaCaixa.IsEmpty then
    begin
           BitBtnEstornar.Enabled  := True;
           BitExcluirCaixa.Enabled := True;
    end
    else
    begin
           BitBtnEstornar.Enabled  := False;
           BitExcluirCaixa.Enabled := True;
    end;
end;

procedure TFormCaixaFecha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TFormCaixaFecha.FormCloseQuery(Sender: tObject;var CanClose: Boolean);
begin
      inherited;
      SqlCdsRelFechaCx.Close;
end;

procedure TFormCaixaFecha.FormCreate(Sender: TObject);
begin
  inherited;
  height := 440;
  width :=  580;
end;

procedure TFormCaixaFecha.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCaixaFecha := Nil;
end;

procedure TFormCaixaFecha.FormResize(Sender: TObject);
begin
  inherited;
  height := 440;
  width :=  580;
end;

procedure TFormCaixaFecha.pp00HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_00_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormCaixaFecha.CdsFechaCaixaCalcFields(DataSet: TDataSet);
begin
  inherited;
    CdsFechaCaixaCC_SALDOCAIXA.AsCurrency :=(CdsFechaCaixaCXF_ENTRADAS.AsCurrency-CdsFechaCaixaCXF_SAIDAS.AsCurrency)+CdsFechaCaixaCXF_ANTERIOR.AsCurrency;
end;

procedure TFormCaixaFecha.CdsRelFechaCxCalcFields(DataSet: TDataSet);
begin
     CdsRelFechaCxSALDO_CC.AsCurrency := (CdsRelFechaCxENTRADA.AsCurrency - CdsRelFechaCxSAIDA.AsCurrency);
end;

end.
