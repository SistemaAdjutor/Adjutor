unit uFinanceiroManutencaoRateio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SqlExpr,SqlClientDataSet, Provider, Grids, DBGrids, DB, DBClient, DBLocal,
  DBLocalS, StdCtrls, Buttons, RWFunc, ComCtrls, ExtCtrls, ImgList, Menus, Data.DBXFirebird, System.ImageList, SimpleDS;

type
  TFrmFinanceiroRateioCentroCusto = class(TForm)
    grpPerfilRateio: TGroupBox;
    GroupBox1: TGroupBox;
    dsRateioCentroCusto: TDataSource;
    CdsRateioCentroCusto: TSQLClientDataSet;
    CdsRateioCentroCustoPCX_CODIGO: TStringField;
    CdsRateioCentroCustoPCX_DESCRI: TStringField;
    CdsRateioCentroCustoPCX_NIVEL: TStringField;
    CdsRateioCentroCustoFIR_INDICE: TFMTBCdField;
    CdsRateioCentroCustoVALOR: TFMTBCdField;
    CdsRateioCentroCustoCC_VALOR: TFloatField;
    dbgrdPerfilRateio: TDBGrid;
    CdsDuplicataPerfil: TSQLClientDataSet;
    CdsDuplicataPerfilREGISTRO: TIntegerField;
    CdsDuplicataPerfilTIPO: TStringField;
    CdsDuplicataPerfilFATURA: TStringField;
    CdsDuplicataPerfilPARCELA: TStringField;
    CdsDuplicataPerfilEMISSAO: TSQLTimeStampField;
    CdsDuplicataPerfilVENCIMENTO: TSQLTimeStampField;
    CdsDuplicataPerfilVALOR: TFMTBCdField;
    CdsDuplicataPerfilCLIENTE_FORNECEDOR: TStringField;
    CdsDuplicataPerfilCONTA_NIVEL: TStringField;
    CdsDuplicataPerfilCONTA_DESCRICAO: TStringField;
    CdsDuplicataPerfilPERFIL_RATEIO: TIntegerField;
    dsDuplicataPerfil: TDataSource;
    Bit_Sair: TBitBtn;
    BtnEstoque: TBitBtn;
    BtnConsultar: TBitBtn;
    CdsDuplicataSemPerfil: TSQLClientDataSet;
    dsDuplicataSemPerfil: TDataSource;
    CdsDuplicataSemPerfilREGISTRO: TIntegerField;
    CdsDuplicataSemPerfilTIPO: TStringField;
    CdsDuplicataSemPerfilFATURA: TStringField;
    CdsDuplicataSemPerfilPARCELA: TStringField;
    CdsDuplicataSemPerfilEMISSAO: TSQLTimeStampField;
    CdsDuplicataSemPerfilVENCIMENTO: TSQLTimeStampField;
    CdsDuplicataSemPerfilVALOR: TFMTBCdField;
    CdsDuplicataSemPerfilCLIENTE_FORNECEDOR: TStringField;
    CdsDuplicataSemPerfilCONTA_NIVEL: TStringField;
    CdsDuplicataSemPerfilCONTA_DESCRICAO: TStringField;
    CdsDuplicataSemPerfilPERFIL_RATEIO: TIntegerField;
    DBGrid1: TDBGrid;
    CdsPerfilRateio: TSQLClientDataSet;
    CdsPerfilRateioPCXPF_REGISTRO: TIntegerField;
    CdsPerfilRateioEMP_CODIGO: TStringField;
    CdsPerfilRateioPCXPF_DATA_INICIAL: TDateField;
    CdsPerfilRateioPCXPF_DATA_FINAL: TDateField;
    dsPerfilRateio: TDataSource;
    pnlProgresso: TPanel;
    Label1: TLabel;
    pbProgresso: TProgressBar;
    Label39: TLabel;
    Image2: TImage;
    Label40: TLabel;
    Image3: TImage;
    ImageList1: TImageList;
    pmRateioManualSem: TPopupMenu;
    pmRateioManualCom: TPopupMenu;
    RateioManual1: TMenuItem;
    RateioManual2: TMenuItem;
    PageControl1: TPageControl;
    ts1: TTabSheet;
    TabSheet1: TTabSheet;
    grpVinculadas: TGroupBox;
    dbgrdDuplicatasPerfil: TDBGrid;
    GroupBox2: TGroupBox;
    dbgrdRateio: TDBGrid;
    CdsDuplicataPerfilManual: TSQLClientDataSet;
    dsDuplicataPerfilManual: TDataSource;
    GroupBox3: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox4: TGroupBox;
    DBGrid3: TDBGrid;
    CdsRateioCentroCustoManual: TSQLClientDataSet;
    dsRateioCentroCustoManual: TDataSource;
    CdsDuplicataPerfilManualEMP_CODIGO: TStringField;
    CdsDuplicataPerfilManualREGISTRO: TIntegerField;
    CdsDuplicataPerfilManualTIPO: TStringField;
    CdsDuplicataPerfilManualFATURA: TStringField;
    CdsDuplicataPerfilManualPARCELA: TStringField;
    CdsDuplicataPerfilManualEMISSAO: TSQLTimeStampField;
    CdsDuplicataPerfilManualVENCIMENTO: TSQLTimeStampField;
    CdsDuplicataPerfilManualVALOR: TFMTBCdField;
    CdsDuplicataPerfilManualCLIENTE_FORNECEDOR: TStringField;
    CdsDuplicataPerfilManualCCT_CODIGO: TStringField;
    CdsDuplicataPerfilManualCONTA_NIVEL: TStringField;
    CdsDuplicataPerfilManualCONTA_DESCRICAO: TStringField;
    CdsDuplicataPerfilManualPERFIL_RATEIO: TIntegerField;
    CdsRateioCentroCustoManualPCX_CODIGO: TStringField;
    CdsRateioCentroCustoManualPCX_DESCRI: TStringField;
    CdsRateioCentroCustoManualPCX_NIVEL: TStringField;
    CdsRateioCentroCustoManualFIR_INDICE: TFMTBCdField;
    CdsRateioCentroCustoManualVALOR: TFMTBCdField;
    CdsRateioCentroCustoManualCC_VALOR: TFloatField;
    pmRateioManualRateadoManual: TPopupMenu;
    MenuItem1: TMenuItem;
    procedure Bit_SairClick(Sender: tObject);
    procedure BtnConsultarClick(Sender: tObject);
    procedure BtnEstoqueClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure dsPerfilRateioDataChange(Sender: tObject; Field: TField);
    procedure dsDuplicataPerfilDataChange(Sender: tObject; Field: TField);
    procedure dbgrdDuplicatasPerfilDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RateioManual1Click(Sender: tObject);
    procedure RateioManual2Click(Sender: tObject);
    procedure MenuItem1Click(Sender: tObject);
    procedure DBGrid2DrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrdDuplicatasPerfilTitleClick(Column: TColumn);
    procedure dbgrdRateioTitleClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    procedure Busca_Rateios;
    procedure RefazerRateioPerfil;
    procedure ChamaManutencaoRateioManual(sRegistro,sTipo:String);
  public
    { Public declarations }
  end;

var
  FrmFinanceiroRateioCentroCusto: TFrmFinanceiroRateioCentroCusto;

implementation

uses
  DataCad, CCT0001, uFinanceiroDao, uPlanoContasCentroCustoManual, uteis, iniciodb;

{$R *.dfm}

procedure TFrmFinanceiroRateioCentroCusto.Bit_SairClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmFinanceiroRateioCentroCusto.Busca_Rateios;
var
   wSql1,
   wSeleciona,
   wOrdem:string;
begin
   CdsRateioCentroCusto.Close;
   CdsRateioCentroCustoManual.Close;
   if (not CdsDuplicataPerfil.IsEmpty) then
      begin
         if (CdsDuplicataPerfilTIPO.AsString = 'R') then
            begin
               wSql1      := 'SELECT '+
                             '    t3.pcx_codigo, '+
                             '    t3.pcx_descri, '+
                             '    t3.pcx_nivel, '+
                             '    t2.fir_indice_real * 100  as fir_indice, '+
                             '    cast(t1.fpc_vlparc * t2.fir_indice_real as numeric(18,2)) as  valor '+
                             'FROM '+
                             'fat_pc01 t1 '+
                             'join fin_rateio t2 on (t2.fir_registro_cp_cr = t1.fat_registro and t2.fir_registro_tipo = ''R'' and t2.FIR_TIPO = ''L'') '+
                             'join pcx0000 t3 on (t3.pcx_codigo = t2.pcx_codigo)';
               wSeleciona := 'WHERE t1.FPC_EXCLUSAO <> ''S'' and T1.fat_registro = '+CdsDuplicataPerfilREGISTRO.AsString;
               wOrdem     := 't3.pcx_nivel';
               CdsRateioCentroCusto.CommandText := SQLDEF('RECEBER',wSql1,wSeleciona,wOrdem,'T1.');
               CdsRateioCentroCusto.Open;
            end
         else
            begin
               wSql1      := 'SELECT '+
                             '    t3.pcx_codigo, '+
                             '    t3.pcx_descri, '+
                             '    t3.pcx_nivel, '+
                             '    t2.fir_indice_real * 100  as fir_indice, '+
                             '    cast(t1.ppc_vlparc * t2.fir_indice_real as numeric(18,2)) as  valor '+
                             'FROM '+
                             'pag_pc01 t1 '+
                             'join fin_rateio t2 on (t2.fir_registro_cp_cr = t1.pag_registro and t2.fir_registro_tipo = ''P'' and t2.FIR_TIPO = ''L'') '+
                             'join pcx0000 t3 on (t3.pcx_codigo = t2.pcx_codigo)';
               wSeleciona := 'WHERE t1.PPC_EXCLUSAO <> ''S'' and T1.PAG_REGISTRO = '+CdsDuplicataPerfilREGISTRO.AsString;
               wOrdem     := 't3.pcx_nivel';
               CdsRateioCentroCusto.CommandText := SQLDEF('PAGAR',wSql1,wSeleciona,wOrdem,'T1.');
               CdsRateioCentroCusto.Open;
            end;
      end;
      if (not CdsDuplicataPerfilManual.IsEmpty) then
      begin
         if (CdsDuplicataPerfilManualTIPO.AsString = 'R') then
            begin
               wSql1      := 'SELECT '+
                             '    t3.pcx_codigo, '+
                             '    t3.pcx_descri, '+
                             '    t3.pcx_nivel, '+
                             '    t2.fir_indice_real * 100  as fir_indice, '+
                             '    t1.fpc_vlparc * t2.fir_indice_real as  valor '+
                             'FROM '+
                             'fat_pc01 t1 '+
                             'join fin_rateio t2 on (t2.FIR_INDICE > 0 and t2.fir_registro_cp_cr = t1.fat_registro and t2.fir_registro_tipo = ''R'' and t2.FIR_TIPO = ''L'') '+
                             'join pcx0000 t3 on (t3.pcx_codigo = t2.pcx_codigo)';
               wSeleciona := 'WHERE  t1.FPC_EXCLUSAO <> ''S'' and  T1.fat_registro = '+CdsDuplicataPerfilManualREGISTRO.AsString;
               wOrdem     := 't3.pcx_nivel';
               CdsRateioCentroCustoManual.CommandText := SQLDEF('RECEBER',wSql1,wSeleciona,wOrdem,'T1.');
               CdsRateioCentroCustoManual.Open;
            end
         else
            begin
               wSql1      := 'SELECT '+
                             '    t3.pcx_codigo, '+
                             '    t3.pcx_descri, '+
                             '    t3.pcx_nivel, '+
                             '    t2.fir_indice_real * 100  as fir_indice, '+
                             '    t1.ppc_vlparc * t2.fir_indice_real as  valor '+
                             'FROM '+
                             'pag_pc01 t1 '+
                             'join fin_rateio t2 on (t2.FIR_INDICE > 0 and t2.fir_registro_cp_cr = t1.pag_registro and t2.fir_registro_tipo = ''P'' and t2.FIR_TIPO = ''L'') '+
                             'join pcx0000 t3 on (t3.pcx_codigo = t2.pcx_codigo)';
               wSeleciona := 'WHERE  t1.PPC_EXCLUSAO <> ''S'' and T1.PAG_REGISTRO = '+CdsDuplicataPerfilManualREGISTRO.AsString;
               wOrdem     := 't3.pcx_nivel';
               CdsRateioCentroCustoManual.CommandText := SQLDEF('PAGAR',wSql1,wSeleciona,wOrdem,'T1.');
               CdsRateioCentroCustoManual.Open;
            end;
      end;
end;

procedure TFrmFinanceiroRateioCentroCusto.BtnConsultarClick(
  Sender: tObject);
begin
    try
       try
         FormContAnalise := TFormContAnalise.Create(Application);
         FormContAnalise.ShowModal;
       finally
         FormContAnalise.Destroy;
         FormContAnalise := nil;
       end;                          
       CdsPerfilRateio.Refresh;
       CdsDuplicataSemPerfil.Refresh;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
    Self.height := 637;
    Self.width := 973;
end;

procedure TFrmFinanceiroRateioCentroCusto.RefazerRateioPerfil;
begin
   if (CdsPerfilRateio.IsEmpty) then
      uteis.aviso('Informe o Perfil de Rateio')
   else
   begin
         if (uteis.confirmacao ( ('Confirma o Rateio para o perfil '+CdsPerfilRateioPCXPF_DATA_INICIAL.AsString+' / '+CdsPerfilRateioPCXPF_DATA_FINAL.AsString))=mrYes) then
         begin
               DataCadastros.sqlUpdate1.Close;
               DataCadastros.sqlUpdate1.sql.text:= SQLDEF('PAGAR','select * from VW_FINANCEIRO_DUPLICATA_RATEIO ','where ((TIPO_RATEIO <> ''M'')or(TIPO_RATEIO is null)) AND VENCIMENTO BETWEEN '+QuotedStr(DataAmericana(CdsPerfilRateioPCXPF_DATA_INICIAL.AsString))+' AND '+QuotedStr(DataAmericana(CdsPerfilRateioPCXPF_DATA_FINAL.AsString)),'vencimento','');
               DataCadastros.sqlUpdate1.Open;
               DataCadastros.sqlUpdate1.First;
               pnlProgresso.Visible := True;
               pbProgresso.Position := 0;
               pbProgresso.Max :=  DataCadastros.sqlUpdate1.RecordCount;
               while (not DataCadastros.sqlUpdate1.Eof) do
               begin
                     pbProgresso.Position := pbProgresso.Position +1;
                     LancaRateioCentroCustoBasePlano(DataCadastros.sqlUpdate1.FieldByName('REGISTRO').AsString,
                                                     DataCadastros.sqlUpdate1.FieldByName('TIPO').AsString,
                                                     DataCadastros.sqlUpdate1.FieldByName('CCT_CODIGO').AsString,
                                                     CdsPerfilRateioPCXPF_REGISTRO.AsString);

                     DataCadastros.sqlUpdate1.Next;
                     Application.ProcessMessages;
               end;
               DataCadastros.sqlUpdate1.Close;
               CdsPerfilRateio.Refresh;
               CdsDuplicataSemPerfil.Refresh;
               pnlProgresso.Visible := False;
         end;
   end;
end;

procedure TFrmFinanceiroRateioCentroCusto.BtnEstoqueClick(Sender: tObject);
begin
   RefazerRateioPerfil;
end;

procedure TFrmFinanceiroRateioCentroCusto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TFrmFinanceiroRateioCentroCusto.FormCreate(Sender: TObject);
begin
     height := 637;
     width := 973;
end;

procedure TFrmFinanceiroRateioCentroCusto.FormDestroy(Sender: TObject);
begin
     FrmFinanceiroRateioCentroCusto := Nil;
end;

procedure TFrmFinanceiroRateioCentroCusto.FormResize(Sender: TObject);
begin
     height := 637;
     width := 973;
end;

procedure TFrmFinanceiroRateioCentroCusto.FormShow(Sender: tObject);
begin
   //Lista Perfils
   CdsPerfilRateio.Close;
   CdsPerfilRateio.Open;
   CdsDuplicataSemPerfil.Close;
   CdsDuplicataSemPerfil.CommandText := SQLDEF('PAGAR','select * from VW_FINANCEIRO_DUPLICATA_RATEIO ',' WHERE ( (PERFIL_RATEIO is null) or (PERFIL_RATEIO = 0) ) ',' VENCIMENTO desc','');
   CdsDuplicataSemPerfil.Open;
   //
   CdsDuplicataPerfilManual.Close;
   CdsDuplicataPerfilManual.CommandText := SQLDEF('PAGAR','select * from VW_FINANCEIRO_DUPLICATA_RATEIO',' WHERE ( (PERFIL_RATEIO = -1) )','VENCIMENTO desc','');
   CdsDuplicataPerfilManual.Open;

end;

procedure TFrmFinanceiroRateioCentroCusto.dsPerfilRateioDataChange(
  Sender: tObject; Field: TField);
begin
   CdsDuplicataPerfil.Close;
   if (not CdsPerfilRateio.IsEmpty) then
      begin
         CdsDuplicataPerfil.CommandText := SQLDEF('PAGAR','select * from VW_FINANCEIRO_DUPLICATA_RATEIO',' WHERE PERFIL_RATEIO = '+CdsPerfilRateioPCXPF_REGISTRO.AsString,'VENCIMENTO desc','');
         CdsDuplicataPerfil.Open;
      end;
end;

procedure TFrmFinanceiroRateioCentroCusto.dsDuplicataPerfilDataChange(
  Sender: tObject; Field: TField);
begin
   Busca_Rateios;
end;

procedure TFrmFinanceiroRateioCentroCusto.dbgrdDuplicatasPerfilDrawColumnCell(
  Sender: tObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if (not CdsDuplicataPerfil.IsEmpty) then
      begin
         if Column.Field = (CdsDuplicataPerfilTIPO) then
            begin
              dbgrdDuplicatasPerfil.Canvas.FillRect(Rect);
              //0 = amarelo (parcial) | 1 = azul | = 2 cinza (previsao) | 3 = preto (pendente) | 4 = vermelho (vencida) | 5 = verde (liquidada)
              if (CdsDuplicataPerfilTIPO.AsString = 'R') then
                ImageList1.Draw(dbgrdDuplicatasPerfil.Canvas,Rect.Left+03,Rect.Top+1,1)
              else
                ImageList1.Draw(dbgrdDuplicatasPerfil.Canvas,Rect.Left+03,Rect.Top+1,4);
            end;
      end;
end;

procedure TFrmFinanceiroRateioCentroCusto.DBGrid1DrawColumnCell(
  Sender: tObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if (not CdsDuplicataSemPerfil.IsEmpty) then
      begin
         if Column.Field = (CdsDuplicataSemPerfilTIPO) then
            begin
              DBGrid1.Canvas.FillRect(Rect);
              //0 = amarelo (parcial) | 1 = azul | = 2 cinza (previsao) | 3 = preto (pendente) | 4 = vermelho (vencida) | 5 = verde (liquidada)
              if (CdsDuplicataSemPerfilTIPO.AsString = 'R') then
                ImageList1.Draw(DBGrid1.Canvas,Rect.Left+03,Rect.Top+1,1)
              else
                ImageList1.Draw(DBGrid1.Canvas,Rect.Left+03,Rect.Top+1,4);
            end;
      end;
end;

procedure TFrmFinanceiroRateioCentroCusto.ChamaManutencaoRateioManual(
  sRegistro, sTipo: String);
begin
   if (sRegistro <> '')and(sTipo <> '') then
      begin
         try
            FrmPlanoContasCentroCustoManual := TFrmPlanoContasCentroCustoManual.Create(Application);
            FrmPlanoContasCentroCustoManual.iRegistroDuplicata := StrToInt(sRegistro);
            FrmPlanoContasCentroCustoManual.sTipoRegistro := sTipo;
            FrmPlanoContasCentroCustoManual.ShowModal;
         finally
            FrmPlanoContasCentroCustoManual.Destroy;
            FrmPlanoContasCentroCustoManual := nil;
         end;
         CdsPerfilRateio.Refresh;  
         CdsDuplicataPerfilManual.Refresh;
         CdsDuplicataSemPerfil.Refresh;
      end;
end;

procedure TFrmFinanceiroRateioCentroCusto.RateioManual1Click(
  Sender: tObject);
begin
   if (not CdsDuplicataPerfil.IsEmpty) then
      ChamaManutencaoRateioManual(CdsDuplicataPerfilREGISTRO.AsString,CdsDuplicataPerfilTIPO.AsString);
end;

procedure TFrmFinanceiroRateioCentroCusto.RateioManual2Click(
  Sender: tObject);
begin
   if (not CdsDuplicataSemPerfil.IsEmpty) then
      ChamaManutencaoRateioManual(CdsDuplicataSemPerfilREGISTRO.AsString,CdsDuplicataSemPerfilTIPO.AsString);
end;

procedure TFrmFinanceiroRateioCentroCusto.MenuItem1Click(Sender: tObject);
begin
   if (not CdsDuplicataPerfilManual.IsEmpty) then
      ChamaManutencaoRateioManual(CdsDuplicataPerfilManualREGISTRO.AsString,CdsDuplicataPerfilManualTIPO.AsString);
end;

procedure TFrmFinanceiroRateioCentroCusto.DBGrid2DrawColumnCell(
  Sender: tObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if (not CdsDuplicataPerfilManual.IsEmpty) then
      begin
         if Column.Field = (CdsDuplicataPerfilManualTIPO) then
            begin
              DBGrid2.Canvas.FillRect(Rect);
              //0 = amarelo (parcial) | 1 = azul | = 2 cinza (previsao) | 3 = preto (pendente) | 4 = vermelho (vencida) | 5 = verde (liquidada)
              if (CdsDuplicataPerfilManualTIPO.AsString = 'R') then
                ImageList1.Draw(DBGrid2.Canvas,Rect.Left+03,Rect.Top+1,1)
              else
                ImageList1.Draw(DBGrid2.Canvas,Rect.Left+03,Rect.Top+1,4);
            end;
      end;
end;

procedure TFrmFinanceiroRateioCentroCusto.dbgrdDuplicatasPerfilTitleClick(
  Column: TColumn);
begin
   try
      CdsDuplicataPerfil.IndexFieldNames:=Column.FieldName;
   except
      uteis.aviso('Não é possivel ordenar por esta coluna');
   end;
end;

procedure TFrmFinanceiroRateioCentroCusto.dbgrdRateioTitleClick(
  Column: TColumn);
begin
   try
      CdsRateioCentroCusto.IndexFieldNames:=Column.FieldName;
   except
      uteis.aviso('Não é possivel ordenar por esta coluna');
   end;
end;

procedure TFrmFinanceiroRateioCentroCusto.DBGrid1TitleClick(
  Column: TColumn);
begin
   try
      CdsDuplicataSemPerfil.IndexFieldNames:=Column.FieldName;
   except
      uteis.aviso('Não é possivel ordenar por esta coluna');
   end;
end;

procedure TFrmFinanceiroRateioCentroCusto.DBGrid2TitleClick(
  Column: TColumn);
begin
   try
      CdsDuplicataPerfilManual.IndexFieldNames:=Column.FieldName;
   except
      uteis.aviso('Não é possivel ordenar por esta coluna');
   end;
end;

procedure TFrmFinanceiroRateioCentroCusto.DBGrid3TitleClick(
  Column: TColumn);
begin
   try
      CdsRateioCentroCustoManual.IndexFieldNames:=Column.FieldName;
   except
      uteis.aviso('Não é possivel ordenar por esta coluna');
   end;
end;

end.
