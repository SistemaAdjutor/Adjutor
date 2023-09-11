unit CELN0007;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, ExtCtrls, Mask, Buttons, RwFunc,DB, DBTables,
  Grids, DBGrids,  rxToolEdit, RXDBCtrl,  rxCurrEdit, RDprint, Provider, SqlExpr,SqlClientDataSet,
  DBClient, DBLocal, DBLocalS, Data.DBXFirebird, SimpleDS, JvExMask, JvToolEdit, JvDBControls;

type
  TFormEnviaCelulaNovo = class(TForm)
    GrpCelulaOP: TGroupBox;
    Label2: TLabel;
    DBLkCboCelula: TDBLookupComboBox;
    Label3: TLabel;
    Panel2: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_Incluir: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label7: TLabel;
    EditOsv_codigo: TEdit;
    EditPrdDescri: TEdit;
    EditPrd_refer: TEdit;
    GrpSitProducao: TGroupBox;
    GroupEntrega: TGroupBox;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    GroupBox5: TGroupBox;
    DBGrid2: TDBGrid;
    CProduzida: TCurrencyEdit;
    Cdefeito: TCurrencyEdit;
    Label19: TLabel;
    DBEdit1: TDBEdit;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    DbeOsv_Qtde: TDBEdit;
    Label18: TLabel;
    DbeOsv_Defe: TDBEdit;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    DbeOsv_ValorPeca: TDBEdit;
    Label15: TLabel;
    DbeOsv_ValorDefe: TDBEdit;
    BitExcluiEntrega: TBitBtn;
    RdPrintEntrega: TRDprint;
    Panel1: TPanel;
    Bit_Imprimi: TBitBtn;
    CurrTupProd: TCurrencyEdit;
    CurrTupTotal: TCurrencyEdit;
    CurrQtdeTotalProduz: TCurrencyEdit;
    SqlCdsExecuta: TSQLClientDataSet;
    DsExecuta: TDataSource;
    DsOPCelulas: TDataSource;
    SqlCdsOPCelulas: TSQLClientDataSet;
    SqlCdsCelulaOP: TSQLClientDataSet;
    DsCelulaOP: TDataSource;
    SqlCdsCelulaOPCEL_CODIGO: TStringField;
    SqlCdsCelulaOPCEL_NOME: TStringField;
    SqlCdsExecutaCEM_QTDE: TFMTBCdField;
    SqlCdsExecutaCEM_DEFEITO: TFMTBCdField;
    SqlCdsExecutaCEL_CODIGO: TStringField;
    SqlCdsOPCelulasCEL_CODIGO: TStringField;
    SqlCdsOPCelulasCEL_NOME: TStringField;
    SqlCdsOPCelulasCEM_TRABALHO: TStringField;
    SqlCdsOPCelulasCEM_TUPTRAB: TFMTBCdField;
    SqlCdsOPCelulasOSV_QTDECONC: TFMTBCdField;
    SqlCdsExecutaCEM_DTPRODUZ: TDateField;
    SqlCdsOPCelulasCEM_DTENTROU: TDateField;
    SqlCdsOPCelulasCEM_DTCONCLUIU: TDateField;
    SqlCdsExecutaOSV_CODIGO: TStringField;
    SqlCdsExecutaCEM_REGISTRO: TIntegerField;
    SqlCdsExecutaEMP_CODIGO: TStringField;
    SqlCdsOPCelulasOSV_QTDEDEFE: TFMTBCdField;
    Db_TupTrab: TDBEdit;
    SqlCdsOPCelulasCEM_REGISTRO: TIntegerField;
    SqlCdsOPCelulasOSV_CODIGO: TStringField;
    SqlCdsOPCelulasPRD_REFER: TStringField;
    SqlCdsOPCelulasOSV_EMISSAO: TDateField;
    SqlCdsOPCelulasOSV_QTDE: TFMTBCdField;
    SqlCdsOPCelulasOSV_VALORPECA: TFMTBCdField;
    SqlCdsOPCelulasOSV_VALORDEFE: TFMTBCdField;
    SqlCdsOPCelulasPED_CODIGO: TStringField;
    SqlCdsOPCelulasCME_CODIGO: TStringField;
    SqlCdsOPCelulasCEM_PRECOUNIT: TFMTBCdField;
    SqlCdsOPCelulasCEM_TUPUNIT: TFMTBCdField;
    SqlCdsOPCelulasCEM_CELAUX: TStringField;
    SqlCdsOPCelulasVCT_TUP: TFMTBCdField;
    SqlCdsOPCelulasCEM_SITUACAO: TStringField;
    SqlCdsOPCelulasEMP_CODIGO: TStringField;
    CDTProduzida: TJvDateEdit;
    DbeDataEntrada: TJvDBDateEdit;
    DbDt_Conclusao: TJvDBDateEdit;
    procedure MudaCorCampos(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_IncluirClick(Sender: tObject);
    procedure HabilitaBotoes;
    procedure DesabilitaBotoes;
    procedure Bit_GravarClick(Sender: tObject);
    procedure DBGrid1KeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure Bit_SairClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure DbeDataEntradaExit(Sender: tObject);
    procedure DbDt_ConclusaoExit(Sender: tObject);
    procedure CProduzidaEnter(Sender: tObject);
    procedure CdefeitoEnter(Sender: tObject);
    procedure CdTProduzidaEnter(Sender: tObject);
    procedure CdTProduzidaExit(Sender: tObject);
    procedure CProduzidaChange(Sender: tObject);
    procedure DbeOsv_ValorPecaEnter(Sender: tObject);
    procedure DbeOsv_ValorDefeEnter(Sender: tObject);
    procedure ValidaProducao;
    procedure BitExcluiEntregaClick(Sender: tObject);
    procedure Bit_ImprimiClick(Sender: tObject);
    procedure SqlCdsOPCelulasBeforeOpen(DataSet: TDataSet);
    procedure SqlCdsOPCelulasAfterScroll(DataSet: TDataSet);
    procedure GroupEntregaEnter(Sender: tObject);
  private
    { Private declarations }
       {campos}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
    CampoData    :TDBDateEdit;
    CampoTDBLuk  :TDBLookupComboBox;
    CampoCurrency:TCurrencyEdit;
    procedure ImprimeFichaEntrega;
  public
    { Public declarations }
  end;

var
  FormEnviaCelulaNovo: TFormEnviaCelulaNovo;
  wVct_tup:Double;

implementation

uses Uteis, Osv0001, CEL0008, Men0001, DmProdu, DataCad,
  OsvN0001, iniciodb;

{$R *.DFM}





procedure TFormEnviaCelulaNovo.MudaCorCampos(Sender: tObject);
begin
  {cor dos campos TDBEdit}
   if Assigned(CampoDbEdit) then
      begin
         CampoDbEdit.color := clWindow;
      end;
   if ActiveControl is TDBEdit then
      begin
         if TDBEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TDBEdit(ActiveControl).color := $0080FFFF;
         CampoDbEdit := TDBEdit(ActiveControl);
      end
   else
      begin
         CampoDbEdit := nil;
      end;
  {CampoEdit :TEdit}
   if Assigned(CampoEdit) then
      begin
         CampoEdit.color := clWindow;
      end;
   if ActiveControl is TEdit then
      begin
         if TEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TEdit(ActiveControl).color := $0080FFFF;
         CampoEdit := TEdit(ActiveControl);
      end
   else
      begin
         CampoEdit := nil;
      end;
  {CampoData  :TDBDateEdit}
   if Assigned(CampoData) then
      begin
         CampoData.color := clWindow;
      end;
   if ActiveControl is TDBDateEdit then
      begin
         TDBDateEdit(ActiveControl).color := $0080FFFF;
         CampoData := TDBDateEdit(ActiveControl);
      end
   else
      begin
         CampoData := nil;
      end;
  {CampoTDBLuk  :TDBLookupComboBox}
   if Assigned(CampoTDBLuk) then
      begin
         CampoTDBLuk.color := clWindow;
      end;
   if ActiveControl is TDBLookupComboBox then
      begin
         TDBLookupComboBox(ActiveControl).color := $0080FFFF;
         CampoTDBLuk := TDBLookupComboBox(ActiveControl);
      end
   else
      begin
         CampoTDBLuk := nil;
      end;
   {CampoCurrency :TCurrencyEdit}
   if Assigned(CampoCurrency) then
      begin
         CampoCurrency.color := clWindow;
      end;
   if ActiveControl is TCurrencyEdit then
      begin
         TMaskEdit(ActiveControl).color := $0080FFFF;
         CampoCurrency := TCurrencyEdit(ActiveControl);
      end
   else
      begin
         CampoCurrency := nil;
      end;
end;

procedure TFormEnviaCelulaNovo.HabilitaBotoes;
begin
    Bit_Incluir.Enabled  := True;
    Bit_Excluir.Enabled  := True;
    Bit_Sair.Enabled     := True;
    Bit_Gravar.Enabled   := False;
    Bit_Cancelar.Enabled := False;
end;

procedure TFormEnviaCelulaNovo.DesabilitaBotoes;
begin
    Bit_Incluir.Enabled  := False;
    Bit_Excluir.Enabled  := False;
    Bit_Sair.Enabled     := False;
    Bit_Gravar.Enabled   := True;
    Bit_Cancelar.Enabled := True;
end;

procedure TFormEnviaCelulaNovo.FormShow(Sender: tObject);
begin
    left := 25;
    Top  := 65;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourGlass;
    EditOsv_codigo.Text       := FormOrdServCentroNovo.CdsOPOSV_CODIGO.AsString;
    EditPrd_refer.Text        := FormOrdServCentroNovo.CdsOPPRD_REFER.AsString;
    EditPrdDescri.Text        := FormOrdServCentroNovo.CdsOPPRD_DESCRI.AsString;
    CurrTupProd.Value         := FormOrdServCentroNovo.CdsOPFTC_TUP.AsCurrency;
    CurrQtdeTotalProduz.Value := FormOrdServCentroNovo.CdsOPOSV_QTDE.AsCurrency;
    CurrTupTotal.Value        := (CurrTupProd.Value * CurrQtdeTotalProduz.Value);
    HabilitaBotoes;
    try
      {Atualizar a comboBox}
      SqlCdsCelulaOP.Close;
      SqlCdsCelulaOP.CommandText := SQLDEF('ORDEMPRODUCAO','select T1.CEL_CODIGO, T1.CEL_NOME from CEL0000 T1 ','','T1.CEL_NOME','T1.');
      SqlCdsCelulaOP.Open;
      DmProducao.CdsFatorCustos.Close;
      DmProducao.CdsFatorCustos.CommandText := SQLDEF('PRODUTOS','Select F1.* from VCT0000 F1 ','where F1.VCT_CLASSE = '''+FormOrdServCentroNovo.SqlCdsParamPMT_EMPRESACLASSE.AsString+'''','F1.VCT_CLASSE','F1.');
      DmProducao.CdsFatorCustos.Open;
      if DmProducao.CdsFatorCustos.IsEmpty = false then
         begin
             wVct_tup := DmProducao.CdsFatorCustosVCT_TUP.AsCurrency;
         end;
      DmProducao.CdsFatorCustos.Close;
      {Abre as Celulas da Ordem de Producao}
      SqlCdsOPCelulas.Close;
      SqlCdsOPCelulas.CommandText := SQLDEF('ORDEMPRODUCAO','SELECT C1.*,C2.CEL_NOME FROM CEL_MOV03 C1 '+
                                            'LEFT JOIN CEL0000 C2 ON (C2.CEL_CODIGO = C1.CEL_CODIGO) ','WHERE C1.OSV_CODIGO = '''+EditOsv_codigo.Text+'''','C1.CEM_TRABALHO','C1.');
      SqlCdsOPCelulas.Open;
    except on E:EdataBaseError do
      uteis.erro  (pchar('Erro ao abrir as tabelas !'+e.message));
    end;
    ValidaProducao;
    DBGrid1.SetFocus;
    Screen.Cursor := crDefault;
end;

procedure TFormEnviaCelulaNovo.Bit_ExcluirClick(Sender: tObject);
begin
    if DmProducao.CdsMovCel.IsEmpty then
       begin
           uteis.aviso('A Célula não recebeu Ordem de Produção .');
       end
    else
       begin
           if uteis.confirmacao ( 'Tem certeza que deseja tirar a O.P. dessa Célula ?')= Mryes then
              begin
                  // Excluir os movimentos de situação da produção
                  try
                    DataCadastros.sqlUpdate.close;
                    DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDEMPRODUCAO','Delete from CEL_MOV04 ','where OSV_CODIGO = '''+EditOsv_codigo.TEXT+''' and CEL_CODIGO = '''+SqlCdsOPCelulasCEL_CODIGO.AsString+'''','','');
                    DataCadastros.sqlUpdate.Execsql;
                    SqlCdsExecuta.Refresh;
                  except on E:EdataBaseError do
                    uteis.erro  (pchar('Erro ao excluir os movimentos da Celula !'+e.message));
                  end;
                     DmProducao.CdsMovCel.Delete;
                     DmProducao.CdsMovCel.ApplyUpdates(0);
                  SqlCdsOPCelulas.Refresh;
              end;
       end;
    {Atualizar marcador de celula da ordem de producao qdo nao tive mais envio para celula}
    if SqlCdsOPCelulas.IsEmpty then
       begin
           GrpCelulaOP.Enabled := False;
           {Tira o marcador da O.P.}
           try
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDEMPRODUCAO','Update OSV0001 set CEL_CODIGO = ''''','where OSV_CODIGO = '''+EditOsv_codigo.Text+'''','','');
             DataCadastros.sqlUpdate.Execsql;
           except on E:EDataBaseError do
             uteis.erro  (pchar('Erro ao atualizar a tabela OSV0001 !'+E.MESSAGE));
           end;
       end;
    DmProducao.CdsMovCel.Close;
    DmProducao.CdsMovProduz.Close;
    ValidaProducao;
    HabilitaBotoes;
    DBLkCboCelula.ReadOnly := True;
    DbGrid1.SetFocus;
end;

procedure TFormEnviaCelulaNovo.Bit_CancelarClick(Sender: tObject);
begin
    DmProducao.CdsMovCel.CancelUpdates;
    if DmProducao.CdsMovCel.IsEmpty then
       GrpCelulaOP.Enabled := False;
    CProduzida.Value :=0;
    Cdefeito.Value   :=0;
    CdTProduzida.Text:='  /  /    ';
    DBLkCboCelula.ReadOnly := True;
    DBGrid1.Enabled := true;
    DBGrid1.SetFocus;
    HabilitaBotoes;
end;

procedure TFormEnviaCelulaNovo.Bit_IncluirClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    try
      GrpCelulaOP.Enabled := True;
      DBLkCboCelula.ReadOnly := False;
      DesabilitaBotoes;
      DmProducao.CdsMovCel.Close;
      DmProducao.CdsMovCel.CommandText := SQLDEF('ORDEMPRODUCAO','SELECT M1.*,C1.CEL_NOME from CEL_MOV03 M1 LEFT JOIN CEL0000 C1 ON (C1.CEL_CODIGO = M1.CEL_CODIGO) ','where M1.OSV_CODIGO = '''+EditOsv_codigo.Text+'''','M1.OSV_CODIGO','M1.');
      DmProducao.CdsMovCel.Open;
      DmProducao.CdsMovCel.Insert;
      DmProducao.CdsMovCelOSV_CODIGO.AsString      := EditOsv_codigo.Text;
      DmProducao.CdsMovCelCEM_DTENTROU.AsDateTime  := Now;
      DmProducao.CdsMovCelCEM_TUPUNIT.AsCurrency   := CurrTupProd.Value;
      DmProducao.CdsMovCelCEM_PRECOUNIT.AsCurrency := FormOrdServCentroNovo.CdsOPOSV_PRECOUNIT.AsCurrency;
      DmProducao.CdsMovCelOSV_EMISSAO.AsDateTime   := FormOrdServCentroNovo.CdsOPOSV_EMISSAO.AsDateTime;
      DmProducao.CdsMovCelOSV_QTDE.AsCurrency      := FormOrdServCentroNovo.CdsOPOSV_QTDE.AsCurrency;
      DmProducao.CdsMovCelPRD_REFER.AsString       := FormOrdServCentroNovo.CdsOPPRD_REFER.AsString;
      DmProducao.CdsMovCelCEM_TUPTRAB.AsCurrency   := FormOrdServCentroNovo.CdsOPFTC_TUP.AsCurrency;
      DBLkCboCelula.SetFocus;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao inserir o registro !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormEnviaCelulaNovo.Bit_GravarClick(Sender: tObject);
var
wproduz_qtde,wproduz_defe : Currency;
begin
    if DmProducao.CdsMovCelCEL_CODIGO.IsNull = true then
       begin
           uteis.aviso('É preciso definir uma Célula!');
           DBLkCboCelula.SetFocus;
           exit;
       end;
    if (CProduzida.Value > 0) and (CdTProduzida.Text = '  /  /    ') then
       begin
           uteis.aviso('É preciso informar a data de conclusão da entrega da produção');
           CdTProduzida.SetFocus;
           exit;
       end;
    if DbDt_Conclusao.Text <> '  /  /    ' then
       begin
           {Cria Codigo chave de Metas = CME_CODIGO}
           DmProducao.CdsMovCelCME_CODIGO.AsString   := copy(DbDt_Conclusao.Text,7,4)+copy(DbDt_Conclusao.Text,4,2)+DBEdit1.Text;
           DmProducao.CdsMovCelCEM_SITUACAO.AsString := 'C';
       end
    else
       begin
           DmProducao.CdsMovCelCME_CODIGO.AsString   := '000000'+DBEdit1.Text;
           DmProducao.CdsMovCelCEM_SITUACAO.AsString := '';
       end;
    {Gravar o a tabela de conclusão da Ordem (completa ou parcial)}
    if (CProduzida.Value>0)or(Cdefeito.Value>0)and(CdTProduzida.Text<>'  /  /    ') then
       begin
           SqlCdsExecuta.Refresh;
           SqlCdsExecuta.First;
           wproduz_qtde :=0;
           wproduz_defe :=0;
           {soma todos movimentos da grade de entradas já executadas (por Célula)}
           while not SqlCdsExecuta.Eof do
            begin
                if SqlCdsExecutaCEL_CODIGO.AsString = DBEdit1.Text then
                   begin
                       wproduz_qtde := wproduz_qtde + SqlCdsExecutaCEM_QTDE.AsCurrency;
                       wproduz_defe := wproduz_defe + SqlCdsExecutaCEM_DEFEITO.AsCurrency;
                   end;
                SqlCdsExecuta.Next;
            end;
           if (wproduz_qtde+wproduz_defe+CProduzida.Value+Cdefeito.Value) > (CurrQtdeTotalProduz.Value) then
              begin
                  uteis.aviso(pchar('Impossível gravar. As qtdes concluídas e com defeitos soma-'#13+
                       'das serão maior que a qtde total que a célula deve produzir.'));
                  CProduzida.SetFocus;
                  CProduzida.Value :=0;
                  Cdefeito.Value   :=0;
                  CdTProduzida.Text:='  /  /    ';
                  exit;
              end
           else
              begin
                  try
                    DmProducao.CdsMovProduz.Close;
                    DmProducao.CdsMovProduz.CommandText := SQLDEF('ORDEMPRODUCAO','Select N1.* from CEL_MOV04 N1 ','where N1.OSV_CODIGO = '''+EditOsv_codigo.Text+'''','N1.OSV_CODIGO','N1.');
                    DmProducao.CdsMovProduz.Open;
                    DmProducao.CdsMovProduz.Insert;
                    DmProducao.CdsMovProduzOSV_CODIGO.AsString    := EditOsv_codigo.Text;
                    DmProducao.CdsMovProduzCEL_CODIGO.AsString    := DBEdit1.Text;
                    DmProducao.CdsMovProduzCEM_QTDE.AsCurrency    := CProduzida.Value;
                    DmProducao.CdsMovProduzCEM_DEFEITO.AsCurrency := Cdefeito.Value;
                    DmProducao.CdsMovProduzCEM_DTPRODUZ.AsDateTime:= CdTProduzida.Date;
                    DmProducao.CdsMovProduzEMP_CODIGO.AsString    := dbInicio.Empresa.EMP_CODIGO;
                    DmProducao.CdsMovProduz.ApplyUpdates(0);
                    SqlCdsExecuta.Refresh;
                    {gravar total na tabela de movimento principal }
                    DmProducao.CdsMovCelOSV_QTDECONC.AsCurrency   := DmProducao.CdsMovCelOSV_QTDECONC.AsCurrency + CProduzida.Value;
                    DmProducao.CdsMovCelOSV_QTDEDEFE.AsCurrency   := DmProducao.CdsMovCelOSV_QTDEDEFE.AsCurrency + Cdefeito.Value;
                  except on E:EdataBaseError do
                    uteis.erro  (pchar('Erro ao inserir o registro na tabela CEL_MOV04 !'+E.MESSAGE));
                  end;
              end;
       end;
    {grava Movimento principal}
    SqlCdsExecuta.First;
    wproduz_qtde :=0;
    wproduz_defe :=0;
    {soma todos movimentos da grade de entradas já executadas (por Célula)}
    while not SqlCdsExecuta.Eof do
     begin
         if SqlCdsExecutaCEL_CODIGO.AsString = DBEdit1.Text then
            begin
                wproduz_qtde := wproduz_qtde + SqlCdsExecutaCEM_QTDE.AsCurrency;
                wproduz_defe := wproduz_defe + SqlCdsExecutaCEM_DEFEITO.AsCurrency;
            end;
         SqlCdsExecuta.Next;
     end;
    {Verifica a qtde da entrega parcial}
    if (wProduz_qtde + wProduz_defe)=(CurrQtdeTotalProduz.Value) then
       begin
           DmProducao.CdsMovCelCEM_DTCONCLUIU.AsDateTime := CdTProduzida.Date;
           DmProducao.CdsMovCelCEM_SITUACAO.AsString     := 'C';           
           DbeOsv_qtde.Field.AsCurrency := wproduz_qtde;
           DbeOsv_defe.Field.AsCurrency := wproduz_defe;
       end
    else
       begin
           if (DbDt_Conclusao.Field.Text = '')or(DbDt_Conclusao.Field.IsNull) then
              begin
                  if (SqlCdsExecuta.IsEmpty = False) then
                     begin
                         DbeOsv_qtde.Field.AsCurrency := wproduz_qtde;
                         DbeOsv_defe.Field.AsCurrency := wproduz_defe;
                     end
                  else
                     begin
                         DbeOsv_qtde.Field.AsCurrency := 0;
                         DbeOsv_defe.Field.AsCurrency := 0;
                     end;
              end;
       end;
    CProduzida.Value :=0;
    Cdefeito.Value   :=0;
    CdTProduzida.Text:='  /  /    ';
    DmProducao.CdsMovCelVCT_TUP.AsCurrency  := wVct_tup;
    DmProducao.CdsMovCelEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
    DmProducao.CdsMovCel.ApplyUpdates(0);
    SqlCdsOPCelulas.Refresh;
    SqlCdsExecuta.Refresh;
    {marcar que a O.P. foi locado c/ uma celula (visualiza na grade)}
    try
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDEMPRODUCAO','Update OSV0001 set CEL_CODIGO = ''///''','where OSV_CODIGO = '''+EditOsv_codigo.Text+'''','','');
      DataCadastros.sqlUpdate.Execsql;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao atualizar a tabela OSV0001 !'+E.MESSAGE));
    end;
    ValidaProducao;
    HabilitaBotoes;
    DBLkCboCelula.ReadOnly := True;
    DbGrid1.Enabled := true;
    DBGrid1.SetFocus;
end;

procedure TFormEnviaCelulaNovo.DBGrid1KeyDown(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
    {Faz com que a grade libere o focu c/ tecla TAB}
    if Key = 9 then
       if Shift = [ssShift] then
          SelectNext(ActiveControl,False,true)
       else  if Shift = [] then
          SelectNext(ActiveControl,True,true);
end;

procedure TFormEnviaCelulaNovo.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormEnviaCelulaNovo.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    if DmProducao.CdsMovCel.State in [dsEdit,dsInsert]then
       Begin
           uteis.aviso('Você deve Gravar ou Cancelar o Envio Atual!');
           CanClose := False;
       end
    else
       begin
           DmProducao.CdsMovCel.Close;
           DmProducao.CdsMovProduz.Close;
       end;
end;

procedure TFormEnviaCelulaNovo.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    try
      SqlCdsExecuta.Close;
      SqlCdsOPCelulas.close;
      SqlCdsCelulaOP.Close;
    except
      uteis.erro  ('Impossível fechar a tabela "TbFatorCustos"');
    end;
end;

procedure TFormEnviaCelulaNovo.DbeDataEntradaExit(Sender: tObject);
begin
    if not TestaDataStr(DbeDataEntrada.Text) then
       DbeDataEntrada.SetFocus;
end;

procedure TFormEnviaCelulaNovo.DbDt_ConclusaoExit(Sender: tObject);
begin
    if not TestaDataStr(DbDt_Conclusao.Text) then
       DbDt_Conclusao.SetFocus
    else
       if DbDt_Conclusao.Text <> '  /  /    ' then
          if DmProducao.CdsMovCel.State in [dsEdit,dsInsert] then
             DmProducao.CdsMovCelOSV_QTDECONC.AsCurrency := CurrQtdeTotalProduz.Value;
end;

procedure TFormEnviaCelulaNovo.CProduzidaEnter(Sender: tObject);
begin
    CProduzida.SelectAll;
end;

procedure TFormEnviaCelulaNovo.CdefeitoEnter(Sender: tObject);
begin
    Cdefeito.SelectAll;
end;

procedure TFormEnviaCelulaNovo.CdTProduzidaEnter(Sender: tObject);
begin
    CdTProduzida.SelectAll;
end;

procedure TFormEnviaCelulaNovo.CdTProduzidaExit(Sender: tObject);
begin
    if not TestaDataStr(CdTProduzida.Text) then
       CdTProduzida.setfocus;
end;

procedure TFormEnviaCelulaNovo.CProduzidaChange(Sender: tObject);
begin
    DmProducao.CdsMovCel.Edit;
    Desabilitabotoes;
end;

procedure TFormEnviaCelulaNovo.ValidaProducao;
begin
    {nao precisa validar se vazio (valor será zero)}
    if DmProducao.CdsMovCelOSV_QTDE.AsCurrency = 0 then
       exit;
    {valida p/ liberar ou nao o usuario alterar situação da producao}
    if (DmProducao.CdsMovCelOSV_QTDECONC.AsCurrency + DmProducao.CdsMovCelOSV_QTDEDEFE.AsCurrency) = (DmProducao.CdsMovCelOSV_QTDE.AsCurrency) then
       begin
           GroupEntrega.Enabled:= False;
           // se nao tem registro de entrega nao liberar excluir
           if DmProducao.CdsMovProduz.IsEmpty then
              BitExcluiEntrega.Enabled := False;
           GrpCelulaOP.color := clSilver;
       end
    else
       begin
           GroupEntrega.Enabled:= True;
           if not DmProducao.CdsMovProduz.IsEmpty then
              BitExcluiEntrega.Enabled := True;
           GrpCelulaOP.color := clBtnFace;
       end;
end;

procedure TFormEnviaCelulaNovo.DbeOsv_ValorPecaEnter(Sender: tObject);
begin
    DbeOsv_ValorPeca.SelectAll;
end;

procedure TFormEnviaCelulaNovo.DbeOsv_ValorDefeEnter(Sender: tObject);
begin
    DbeOsv_ValorDefe.SelectAll;
end;

procedure TFormEnviaCelulaNovo.BitExcluiEntregaClick(Sender: tObject);
begin
    if uteis.confirmacao ( 'Confirma exclusão desta entrega de Produção?')= Mryes then
       begin
           {Atualizando Qtde Concluida}
           ValidaProducao;
           try
             if (DmProducao.CdsMovCelOSV_QTDECONC.AsCurrency>0) and (DmProducao.CdsMovCelOSV_QTDEDEFE.AsCurrency>0) then
                begin
                    DataCadastros.sqlUpdate.close;
                    DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDEMPRODUCAO','Update CEL_MOV03 set OSV_QTDECONC = (OSV_QTDECONC - '+FloatToStr(SqlCdsExecutaCEM_QTDE.AsCurrency)+'),OSV_QTDEDEFE = (OSV_QTDEDEFE - '+FloatToStr(SqlCdsExecutaCEM_DEFEITO.AsCurrency)+'),CEM_DTCONCLUIU = null ','where OSV_CODIGO = '''+SqlCdsExecutaOSV_CODIGO.AsString+''' and CEL_CODIGO = '''+SqlCdsExecutaCEL_CODIGO.AsString+'''','','');
                    DataCadastros.sqlUpdate.Execsql;
                    SqlCdsOPCelulas.Refresh;
                    DmProducao.CdsMovCel.Refresh;
                end;
           except on E:EdataBaseError do
             uteis.erro  (pchar('Erro ao atualizar a tabela CEL_MOV03 !'+e.message));
           end;
           {Excluindo a Entrega}
           try
             DataCadastros.sqlUpdate.close;
             DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDEMPRODUCAO','Delete from CEL_MOV04 ','where CEM_REGISTRO = '''+IntToStr(SqlCdsExecutaCEM_REGISTRO.AsInteger)+'''','','');
             DataCadastros.sqlUpdate.Execsql;
             SqlCdsExecuta.Refresh;
           except on E:EDataBaseError do
             uteis.erro  (pchar('Erro ao excluir a célula da Entrega da Produção !'+e.message));
           end;
           GrpCelulaOP.Color := clBtnFace;
       end;
end;

procedure TFormEnviaCelulaNovo.ImprimeFichaEntrega;
var
wlinha,wconta:integer;
begin
    RdPrintEntrega.Abrir;
    wlinha:= 0;
    wconta:= 0;
    while wconta < 3 do
     begin
         RdPrintEntrega.Imp(wlinha    +001,004,dbInicio.Empresa.Razao);
         RdPrintEntrega.Imp(wlinha    +001,114,'Data: '+DateTimeToStr(Date));
         RdPrintEntrega.Imp(wlinha    +002,004,'--------------------------------------------------------------------------------------------------------------------------------');
         RdPrintEntrega.ImpF(wlinha   +003,004,'FICHA DE ENVIO DE PRODUÇÃO',[Negrito]);
         RdPrintEntrega.ImpF(wlinha   +003,092,'O.P. Nº: '+EditOsv_codigo.Text,[Negrito]);
         RdPrintEntrega.ImpF(wlinha   +005,004,'REFERÊNCIA : '+EditPrd_refer.Text+'-'+EditPrdDescri.Text,[Negrito]);
         RdPrintEntrega.ImpF(wlinha   +005,072,'CÉLULA DE PRODUÇÃO: '+SqlCdsOPCelulasCEL_CODIGO.AsString+'-'+SqlCdsOPCelulasCEL_NOME.AsString,[Negrito]);
         RdPrintEntrega.Imp(wlinha    +006,004,'+---------+------------+-------------------------------+----------+---------+-----------+----------+---------------------------+');
         RdPrintEntrega.Imp(wlinha    +007,004,'|  Quant. |Data Entrada| Serviço                       | Vl./Peça | Defeito |Concluídas |C/Defeito | Obs.                      |');
         RdPrintEntrega.Imp(wlinha    +008,004,'+---------|------------|-------------------------------|----------|---------|-----------|----------|---------------------------|');
         RdPrintEntrega.Imp(wlinha    +009,004,'|         |            |                               |          |         |           |          |                           |');
         RdPrintEntrega.ImpVal(wlinha +009,005,'####,##0',CurrQtdeTotalProduz.Value,[]);
         RdPrintEntrega.Imp(wlinha    +009,016,SqlCdsOPCelulasCEM_DTENTROU.AsString);
         RdPrintEntrega.Imp(wlinha    +009,028,SqlCdsOPCelulasCEM_TRABALHO.AsString);
         RdPrintEntrega.ImpVal(wlinha +009,061,'#,##0.00',SqlCdsOPCelulasOSV_VALORPECA.AsCurrency,[]);
         RdPrintEntrega.ImpVal(wlinha +009,071,'#,##0.00',SqlCdsOPCelulasOSV_VALORDEFE.AsCurrency,[]);
         RdPrintEntrega.ImpVal(wlinha +009,084,'#,###',SqlCdsOPCelulasOSV_QTDECONC.AsCurrency,[]);
         RdPrintEntrega.ImpVal(wlinha +009,094,'#,###',SqlCdsOPCelulasOSV_QTDEDEFE.AsCurrency,[]);
         RdPrintEntrega.Imp(wlinha    +010,004,'+---------|------------|-------------------------------|----------|---------|-----------|----------|---------------------------|');
         RdPrintEntrega.Imp(wlinha    +011,004,'|         |            |                               |          |         |           |          |                           |');
         RdPrintEntrega.Imp(wlinha    +012,004,'+---------+------------+-------------------------------+----------+---------+-----------+----------+---------------------------+');
         if wconta = 0 then
            RdPrintEntrega.Imp(wlinha+013,116,'1a via - Célula');
         if wconta = 1 then
            RdPrintEntrega.Imp(wlinha+013,114,'2a via - Produção');
         if wconta = 2 then
            RdPrintEntrega.Imp(wlinha+013,111,'3a via - C.Qualidade');

         RdPrintEntrega.Imp(wlinha+014,004,'Observações:--------------------------------------------------------------------------------------------------------------------');
         RdPrintEntrega.Imp(wlinha+016,004,'--------------------------------------------------------------------------------------------------------------------------------');
         RdPrintEntrega.Imp(wlinha+018,004,'----------------------------------------------                                       -------------------------------------------');
         RdPrintEntrega.Imp(wlinha+019,004,'               Visto Supervisor                                                                    Visto Fábrica                ');
         RdPrintEntrega.Imp(wlinha+020,004,'_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ');
         inc(wconta);
         if wconta = 1 then
            wlinha := 21;
         if wconta = 2 then
            wlinha := 42;
     end;
    RdPrintEntrega.Fechar;
end;

procedure TFormEnviaCelulaNovo.Bit_ImprimiClick(Sender: tObject);
begin
    ImprimeFichaEntrega;
end;

procedure TFormEnviaCelulaNovo.SqlCdsOPCelulasBeforeOpen(DataSet: TDataSet);
begin
    try
      SqlCdsExecuta.close;
      SqlCdsExecuta.CommandText := SQLDEF('ORDEMPRODUCAO','Select X1.* from CEL_MOV04 X1 ','where X1.OSV_CODIGO = '''+EditOsv_codigo.Text+'''','X1.CEM_DTPRODUZ','X1.');
      SqlCdsExecuta.Open;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao abrir a tabela CEL_MOV04 !'+E.MESSAGE));
    end;
end;

procedure TFormEnviaCelulaNovo.SqlCdsOPCelulasAfterScroll(DataSet: TDataSet);
begin
    if SqlCdsOPCelulas.IsEmpty = false then
       begin
           try
             DmProducao.CdsMovCel.Close;
             DmProducao.CdsMovCel.CommandText := SQLDEF('ORDEMPRODUCAO','SELECT M1.*,C1.CEL_NOME from CEL_MOV03 M1 LEFT JOIN CEL0000 C1 ON (C1.CEL_CODIGO = M1.CEL_CODIGO) ','where M1.OSV_CODIGO = '''+EditOsv_codigo.Text+''' and M1.CEL_CODIGO = '''+SqlCdsOPCelulasCEL_CODIGO.AsString+'''','M1.OSV_CODIGO,M1.CEL_CODIGO','M1.');
             DmProducao.CdsMovCel.Open;
             ValidaProducao;
           except on E:EdataBaseError do
             uteis.erro  (pchar('Erro ao Localizar a Celula no Grid !'+e.message));
           end;
       end
    else
       begin
           uteis.aviso('Não há envio de Ordem de Produção para Células !');
           DBLkCboCelula.SetFocus;
       end;
    if (not SqlCdsOPCelulasCEM_DTCONCLUIU.IsNull) or (SqlCdsOPCelulasCEM_DTCONCLUIU.Text <>'') then
       begin
           GrpCelulaOP.Color := clSilver;
       end
    else
       begin
           GrpCelulaOP.Color := clBtnFace;
       end;
end;

procedure TFormEnviaCelulaNovo.GroupEntregaEnter(Sender: tObject);
begin
    DBGrid1.Enabled := false;
end;

end.
