unit GImpComp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DBTables, Provider, SqlExpr,SqlClientDataSet, DBClient,
  DBLocal, DBLocalS, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppModule, raCodMod, ppCtrls, ppBands, ppVar, ppPrnabl, ppCache,
  Data.DBXFirebird, ppDesignLayer, ppParameter, SimpleDS;

type
  TFormGimpComponentes = class(TForm)
    PrintSetup: TPrinterSetupDialog;
    GroupBox4: TGroupBox;
    LTBoxIntCelulas: TListBox;
    GrpDispositivo: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    RadText: TRadioButton;
    GrpCelula: TGroupBox;
    Cb_Celula: TComboBox;
    GrpBotoes: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SqlCdsCelula: TSQLClientDataSet;
    SqlCdsCelulaCEL_CODIGO: TStringField;
    SqlCdsCelulaCEL_NOME: TStringField;
    SqlCdsIntCel: TSQLClientDataSet;
    DsIntCel: TDataSource;
    ppDBIntCel: TppDBPipeline;
    ppRP00: TppReport;
    SqlCdsIntCelCCP_CODIGO: TStringField;
    SqlCdsIntCelCCP_NOME: TStringField;
    SqlCdsIntCelCCP_FUNCAO: TStringField;
    SqlCdsIntCelCCP_TUPDIARIO: TFloatField;
    SqlCdsIntCelCEL_CODIGO: TStringField;
    SqlCdsIntCelCEL_NOME: TStringField;
    pp00HeaderBand2: TppHeaderBand;
    ppLine5: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppLine6: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    pp00DetailBand2: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    pp00SummaryBand2: TppSummaryBand;
    ppLabel25: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel7: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine3: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel6: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine4: TppLine;
    ppLine2: TppLine;
    raCodeModule2: TraCodeModule;
    procedure FormShow(Sender: tObject);
    procedure BitConfigClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure BitOkClick(Sender: tObject);
    procedure Cb_CelulaEnter(Sender: tObject);
    procedure Cb_CelulaExit(Sender: tObject);
    procedure Cb_CelulaClick(Sender: tObject);
  private
    { Private declarations }
    wCelCodigo,wCelNome:String;
  public
    { Public declarations }
  end;

var
  FormGimpComponentes: TFormGimpComponentes;

implementation

Uses Uteis, RWFunc, DataCad, Men0001, ufrmpreviewrb, iniciodb;


{$R *.DFM}





procedure TFormGimpComponentes.FormShow(Sender: tObject);
begin
    Screen.cursor := crHourGlass;
    Left := 182;
    Top := 82;
    {ativa o método ao evento OnActiveControlChange}
    try
      SqlCdsCelula.Close;
      SqlCdsCelula.CommandText:=SQLDEF('TABELAS','SELECT c1.CEL_CODIGO,c1.CEL_NOME FROM CEL0000 c1','','c1.CEL_NOME','c1.');
      SqlCdsCelula.Open;
      SqlCdsCelula.First;
      Cb_Celula.items.Clear;
      Cb_Celula.Items.Add('TODOS');
      while not SqlCdsCelula.Eof do
        begin
            Cb_Celula.Items.Add(SqlCdsCelulaCEL_NOME.AsString);
            SqlCdsCelula.Next;
        end;
      Cb_Celula.ItemIndex := 0;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao abrir tabela CEL0000 !'+e.message));
    end;
    Cb_Celula.ItemIndex := 0;
    // carregar combo com nome dos relatórios
    LTBoxIntCelulas.Items.Add('Relação de Integrantes das Células');
    LTBoxIntCelulas.ItemIndex :=0;   // seta no primeiro item
    Screen.cursor := crDefault;
    FormGimpComponentes.AutoSize := true;
end;

procedure TFormGimpComponentes.BitConfigClick(Sender: tObject);
begin
    PrintSetup.Execute;
end;

procedure TFormGimpComponentes.BitCancelarClick(Sender: tObject);
begin
    Close;
end;

procedure TFormGimpComponentes.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    SqlCdsCelula.Close;
end;

procedure TFormGimpComponentes.BitOkClick(Sender: tObject);
Var
  wSeleciona,wOrdem:String;
begin
    if (LTBoxIntCelulas.ItemIndex = 0) then
       begin
           screen.cursor := crHourGlass;
           if cb_Celula.ItemIndex<>0 then
              begin
                  wSeleciona:=' where P1.CEL_CODIGO = '''+wCelCodigo+'''';
              end
           else
              begin
                  wSeleciona:='';
              end;
           wOrdem:='C1.CEL_NOME,P1.CEL_CODIGO,P1.CCP_NOME';
           try
             SqlCdsIntCel.Close;
             SqlCdsIntCel.CommandText:=SQLDEF('ORDEMPRODUCAO','SELECT P1.*,C1.CEL_NOME FROM CEL_CP01 P1 LEFT JOIN cel0000 C1 ON P1.cel_codigo = C1.cel_codigo ',wSeleciona,wOrdem,'P1.');
             SqlCdsIntCel.Open;
           except on E:EdatabaseError do
              uteis.erro  (Pchar('Erro ao abrir tabela de CEL_CP01 !'+e.message));
           end;
           screen.cursor := crDefault;
           LBL_00_EMPRESA.Caption  := dbInicio.Empresa.Razao;
           LBL_00_LTitulo1.Caption := 'RELAÇÃO DE INTEGRANTES DAS CELULAS';
           LBL_00_LTITULO2.Caption := 'Célula.: '+wCelCodigo+' - '+wCelNome;
           if RadVideo.Checked then
              begin
                  ppRP00.DeviceType:='Screen';
              end else
           if RadImpressora.Checked then
              begin
                  ppRP00.DeviceType:='Printer';
                  ppRP00.ShowPrintDialog := True;
              end;
           RBuilderPreview(ppRP00);
       end;
    Cb_Celula.ItemIndex := 0;
    Cb_Celula.SetFocus;
    RadVideo.Checked := True;
end;

procedure TFormGimpComponentes.Cb_CelulaEnter(Sender: tObject);
begin
    Cb_Celula.Color := $0080FFFF;
end;

procedure TFormGimpComponentes.Cb_CelulaExit(Sender: tObject);
begin
    if Cb_Celula.ItemIndex<>0 then
       begin
           SqlCdsCelula.Locate('CEL_NOME',CB_CELULA.TEXT,[]);
           wCelCodigo:=SqlCdsCelulaCEL_CODIGO.AsString;
           wCelNome  :=SqlCdsCelulaCEL_NOME.AsString;
       end
    else
       begin
           wCelCodigo:='000';
           wCelNome  :='TODAS AS CÉLULAS';
       end;
    Cb_Celula.Color := clWindow;
end;

procedure TFormGimpComponentes.Cb_CelulaClick(Sender: tObject);
begin
{
    if Cb_Celula.ItemIndex<>0 then
       begin
           SqlCdsCelula.Locate('CEL_NOME',CB_CELULA.TEXT,[]);
           wCelCodigo:=SqlCdsCelulaCEL_CODIGO.AsString;
           wCelNome  :=SqlCdsCelulaCEL_NOME.AsString;
       end
    else
       begin
           wCelCodigo:='000';
           wCelNome  :='TODAS AS CÉLULAS';
       end;
}       
end;

end.
