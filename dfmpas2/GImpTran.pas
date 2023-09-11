 {********************************************************
 Programa...: GImpTRan - Nome formulario = FormGImpTran *
 Objetivo...: Chamar Relatórios De Transportadoras      *
 Analista...: Márcio Neu Pacheco                        *
 Programador: Márcio Neu Pacheco                        *
                                                        *
 Comentários:                                           *
                                                        *
 Criação..........: 06/99.                              *
 Ultima Alteração.:                                     *
 Feito por........:                                     *
                                                        *
*********************************************************}
unit GImpTran;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Provider, SqlExpr,SqlClientDataSet, ppProd, ppClass, RwFunc,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, DBClient, DBLocal,
  DBLocalS, ppModule, raCodMod, ppCtrls, ppBands, ppVar, ppPrnabl, ppCache,
  ppParameter, ppStrtch, ppSubRpt, ppMemo, Data.DBXFirebird, ppDesignLayer,
  SimpleDS;

type
  TFormGImpTran = class(TForm)
    PrinterSetupDialog1: TPrinterSetupDialog;
    GroupBox3: TGroupBox;
    LTBoxTransp: TListBox;
    GrpDispositivo: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    RadText: TRadioButton;
    GrpOrdem: TGroupBox;
    RadCodigo: TRadioButton;
    RadAlfa: TRadioButton;
    GrpBotoes: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SqlCdsTransp: TSQLClientDataSet;
    DsTransp: TDataSource;
    ppDBTransp: TppDBPipeline;
    ppRP00: TppReport;
    ppParameterList1: TppParameterList;
    GroupBox1: TGroupBox;
    Rad_Todas: TRadioButton;
    Rad_Ativo: TRadioButton;
    Rad_Inativo: TRadioButton;
    SqlCdsTranspCC_ATIVO: TStringField;
    SqlCdsTranspTRP_CODIGO: TStringField;
    SqlCdsTranspTRP_RAZAO: TStringField;
    SqlCdsTranspTRP_ENDERE: TStringField;
    SqlCdsTranspTRP_CIDADE: TStringField;
    SqlCdsTranspTRP_UF: TStringField;
    SqlCdsTranspTRP_CEP: TStringField;
    SqlCdsTranspTRP_CGC: TStringField;
    SqlCdsTranspTRP_INSC: TStringField;
    SqlCdsTranspTRP_FONE: TStringField;
    SqlCdsTranspTRP_FAX: TStringField;
    SqlCdsTranspTRP_EMAIL: TStringField;
    SqlCdsTranspTRP_CONTATO: TStringField;
    SqlCdsTranspEMP_CODIGO: TStringField;
    SqlCdsTranspTRP_HOME: TStringField;
    SqlCdsTranspTRP_ATIVO: TStringField;
    SqlCdsTranspTRP_OBSERVACAO: TMemoField;
    ppHeaderBand1: TppHeaderBand;
    ppLine20: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppSystemVariable23: TppSystemVariable;
    ppSystemVariable24: TppSystemVariable;
    ppLine66: TppLine;
    pp00DetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppDBText6: TppDBText;
    ppDBText4: TppDBText;
    pp00SummaryBand2: TppSummaryBand;
    ppLabel25: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine2: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLineOBS: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLObservacao: TppLabel;
    ppDBMEMOBS: TppDBMemo;
    raCodeModule2: TraCodeModule;
    procedure BitConfigClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure BitOkClick(Sender: tObject);
    procedure pp00HeaderBand2BeforePrint(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure pp00DetailBand2BeforePrint(Sender: tObject);
    procedure SqlCdsTranspCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
     {campos}
  public
    { Public declarations }
  end;

var
  FormGImpTran: TFormGImpTran;

implementation

uses Uteis, DataCad, Men0001, ufrmpreviewrb, iniciodb;

{$R *.DFM}





procedure TFormGImpTran.BitConfigClick(Sender: tObject);
begin
    PrinterSetupDialog1.Execute;
end;

procedure TFormGImpTran.FormShow(Sender: tObject);
begin
    Left :=  83;
    Top  := 260;
    {ativa o método ao evento OnActiveControlChange}
    // carregar  comob com nome dos relatórios
    LTBoxTransp.Items.Add('Relatório de Transportadoras');
    LTBoxTransp.ItemIndex := 0;
    FormGimpTran.AutoSize := true;
end;

procedure TFormGImpTran.BitCancelarClick(Sender: tObject);
begin
   Close;
end;

procedure TFormGImpTran.BitOkClick(Sender: tObject);
begin
    LBL_00_EMPRESA.Caption  := '';
    LBL_00_LTITULO1.Caption := '';
    LBL_00_LTITULO2.Caption := '';
    //
    if (Rad_Todas.Checked) then
       begin
          wSeleciona              := '';
          LBL_00_LTITULO2.Caption := '';
       end
    else
    if (Rad_Ativo.Checked) then
       begin
          wSeleciona := 'WHERE TRP_ATIVO = ''S''';
          LBL_00_LTITULO2.Caption := 'TRANSPORTADORA(S) ATIVA(S) ';
       end
    else
    if (Rad_Inativo.Checked) then
       begin
          wSeleciona := 'WHERE TRP_ATIVO = ''N''';
          LBL_00_LTITULO2.Caption := 'TRANSPORTADORA(S) INATIVA(S) ';
       end;
    //
    if LTBoxTransp.ItemIndex = 0 then
       begin
           if RadAlfa.checked  then
              begin
                  wOrdem := 'TRP_RAZAO';
              end
           else
              begin
                  wOrdem := 'TRP_CODIGO';
              end;
           try
             SqlCdsTransp.Close;
             SqlCdsTransp.CommandText:=SQLDEF('TRANSPORTADORAS','SELECT * FROM TRP0000',wSeleciona,wOrdem,'');
             SqlCdsTransp.Open;
           except on E:EdatabaseError do
             begin
                 uteis.erro  (Pchar('Erro ao abrir tabela TRANSPORTADORAS !'+e.message));
             end;
           end;
           //
           LBL_00_EMPRESA.Caption  := dbInicio.Empresa.FANTASIA;
           LBL_00_LTITULO1.Caption := 'RELATÓRIO DE TRANSPORTADORA';
           LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + IIF(RadAlfa.Checked=true,'Por Ordem Alfabética','Por Ordem de Código');
           screen.cursor := crDefault;
           if RadVideo.Checked then
              begin
                  ppRP00.DeviceType:='Screen';
              end else
           if RadImpressora.Checked then
              begin
                  ppRP00.DeviceType:='Printer';
                  ppRP00.ShowPrintDialog := TRUE;
              end;

           RBuilderPreview(ppRP00);
       end;
    RadVideo.Checked:= True;
end;

procedure TFormGImpTran.pp00HeaderBand2BeforePrint(Sender: tObject);
begin
    LBL_00_EMPRESA.Caption:=dbInicio.Empresa.Razao;
end;

procedure TFormGImpTran.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Close;
end;

procedure TFormGImpTran.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    try
      SqlCdsTransp.Close;
    except on E:EdatabaseError do
      uteis.erro  ('Impossível fechar a tabela TRANSPORTADORA !');
    end;
end;

procedure TFormGImpTran.pp00DetailBand2BeforePrint(Sender: tObject);
begin
   if (SqlCdsTranspTRP_OBSERVACAO.AsString <> '') then
      begin
         ppLObservacao.Visible  := True;
         ppDBMEMOBS.Visible     := True;
         ppLineOBS.Visible      := True;
//         pp00DetailBand2.Height := 7.408;
      end
   else
      begin
         ppLObservacao.Visible  := False;
         ppDBMEMOBS.Visible     := False;
         ppLineOBS.Visible      := False;
//         pp00DetailBand2.Height := 3.175;
      end;
end;

procedure TFormGImpTran.SqlCdsTranspCalcFields(DataSet: TDataSet);
begin
   SqlCdsTranspCC_ATIVO.AsString := IIF(SqlCdsTranspTRP_ATIVO.AsString = 'S','Ativo','Inativo');
end;

end.
