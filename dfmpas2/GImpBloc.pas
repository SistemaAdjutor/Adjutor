{**********************************************************
| Programa...: GimpBloc-Nome Form = FormBloquetoBancario
| Objetivo...: Impressao de bloquetos
| Analista...: Marcio Neu Pacheco
| Programador: Everson e Márcio
|
| Comentários:  Atualmente Layout Banestado e Itaú (matricial)
|
| Criação..........: Nov/99
| Ultima Alteração.: Set/02
| Alterado por.....: Márcio
|----------------------------------------------------------
| Conversão Interbase: 04/02/04
| Ultima Alteração...:
| Convertido por.....: JEFFERSON
***********************************************************}
unit GImpBloc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons, DBCtrls, Mask, ExtCtrls,
  Db, DBTables, RWFunc,     Provider, SqlExpr,SqlClientDataSet,
  DBClient, DBLocal, DBLocalS, RDprint;

type
  TFormBloquetoBancario = class(TForm)
    Group00: TGroupBox;
    PrinterSetupDialog1: TPrinterSetupDialog;
    RadData: TRadioButton;
    RadFatura: TRadioButton;
    Group01: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox6: TGroupBox;
    LTBoxBloquetos: TListBox;
    Group02: TGroupBox;
    Label2: TLabel;
    EditFatura: TEdit;
    Label5: TLabel;
    EditParcela: TEdit;
    Group03: TGroupBox;
    BitConfig: TBitBtn;
    BitBtn1: TBitBtn;
    BitCancelar: TBitBtn;
    SqlCdsListaBox: TSQLClientDataSet;
    SqlCdsListaBoxBOL_CODBOL: TStringField;
    SqlCdsListaBoxBOL_ATIVO: TStringField;
    SqlCdsListaBoxBOL_CODBAN: TStringField;
    SqlCdsListaBoxBAN_APELIDO: TStringField;
    SqlCdsConfImpr: TSQLClientDataSet;
    SqlCdsBoleto: TSQLClientDataSet;
    SqlCdsBoletoFAT_CODIGO: TStringField;
    SqlCdsBoletoFPC_NUMER: TStringField;
    SqlCdsBoletoBAN_CODIGO: TStringField;
    SqlCdsBoletoCLI_CODIGO: TStringField;
    SqlCdsBoletoFPC_DTEMIS: TSQLTimeStampField;
    SqlCdsBoletoFPC_VENCTO: TSQLTimeStampField;
    SqlCdsBoletoFPC_VLPARC: TFMTBCdField;
    SqlCdsBoletoBAN_JUROMES: TFMTBCdField;
    SqlCdsBoletoCLI_RAZAO: TStringField;
    SqlCdsBoletoCLI_ENDERE: TStringField;
    SqlCdsBoletoCLI_ENDFAT: TStringField;
    SqlCdsBoletoCLI_CIDADE: TStringField;
    SqlCdsBoletoCLI_CIDFAT: TStringField;
    SqlCdsBoletoCLI_CEP: TStringField;
    SqlCdsBoletoCLI_CEPFAT: TStringField;
    SqlCdsBoletoCLI_UF: TStringField;
    SqlCdsBoletoCLI_UFFAT: TStringField;
    SqlCdsBoletoCLI_CGC: TStringField;
    SqlCdsConfImprBOL_CODBOL: TStringField;
    RDPrintBoleto: tRdPrintOld;
    GroupDispositivo: TGroupBox;
    RadImpressora: TRadioButton;
    RadVideo: TRadioButton;
    SqlCdsConfImprBOL_ATIVO: TStringField;
    SqlCdsConfImprBOL_CODBAN: TStringField;
    SqlCdsConfImprBOL_NRLINHA: TStringField;
    SqlCdsConfImprBOL_LOCAL: TStringField;
    SqlCdsConfImprBOL_VENCTO: TStringField;
    SqlCdsConfImprBOL_DTEMIS: TStringField;
    SqlCdsConfImprBOL_CODFAT: TStringField;
    SqlCdsConfImprBOL_ESPDOC: TStringField;
    SqlCdsConfImprBOL_DESESPDOC: TStringField;
    SqlCdsConfImprBOL_ACEITE: TStringField;
    SqlCdsConfImprBOL_DESACEITE: TStringField;
    SqlCdsConfImprBOL_DTPROCE: TStringField;
    SqlCdsConfImprBOL_USOBCO: TStringField;
    SqlCdsConfImprBOL_CARTEIRA: TStringField;
    SqlCdsConfImprBOL_DESCARTEIRA: TStringField;
    SqlCdsConfImprBOL_VLPARC: TStringField;
    SqlCdsConfImprBOL_ESPECIE: TStringField;
    SqlCdsConfImprBOL_DESPECIE: TStringField;
    SqlCdsConfImprBOL_QUANTIDADE: TStringField;
    SqlCdsConfImprBOL_VALOR: TStringField;
    SqlCdsConfImprBOL_VLDOC: TStringField;
    SqlCdsConfImprBOL_JUROMES: TStringField;
    SqlCdsConfImprBOL_DESCABAT: TStringField;
    SqlCdsConfImprBOL_OBSBOL1: TStringField;
    SqlCdsConfImprBOL_OUTDEDU: TStringField;
    SqlCdsConfImprBOL_OBSBOL2: TStringField;
    SqlCdsConfImprBOL_MORAMULTA: TStringField;
    SqlCdsConfImprBOL_OBSBOL3: TStringField;
    SqlCdsConfImprBOL_OUTACRES: TStringField;
    SqlCdsConfImprBOL_OBSBOL4: TStringField;
    SqlCdsConfImprBOL_VLCOBRADO: TStringField;
    SqlCdsConfImprBOL_RAZAO: TStringField;
    SqlCdsConfImprBOL_END: TStringField;
    SqlCdsConfImprBOL_CEP: TStringField;
    SqlCdsConfImprBOL_CID: TStringField;
    SqlCdsConfImprBOL_EST: TStringField;
    SqlCdsConfImprBOL_CNPJ: TStringField;
    SqlCdsConfImprBOL_LOCPGTO: TStringField;
    SqlCdsConfImprBOL_OBS1: TStringField;
    SqlCdsConfImprBOL_OBS2: TStringField;
    SqlCdsConfImprBOL_OBS3: TStringField;
    SqlCdsConfImprBOL_OBS4: TStringField;
    SqlCdsConfImprEMP_CODIGO: TStringField;
    EditDataI: TJvDateEdit;
    EditDataF: TJvDateEdit;
    procedure MudaCorCampos(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure BitCancelarClick(Sender: tObject);
    procedure BitOkClick(Sender: tObject);
    procedure EditDataIExit(Sender: tObject);
    procedure BitCancelaClick(Sender: tObject);
    procedure EditFaturaExit(Sender: tObject);
    procedure RadFaturaClick(Sender: tObject);
    procedure RadDataClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EditDataFExit(Sender: tObject);
    procedure BitConfigClick(Sender: tObject);
    procedure LTBoxBloquetosClick(Sender: tObject);

  private
    { Private declarations }
           {campos}
    CampoEdit    :TEdit;
    CampoData    :TDateEdit;
    CampoTDBLuk  :TDBLookupComboBox;
    procedure LayOutBloqueto;
    procedure ImprimirBloqueto;
  public
    { Public declarations }
  end;
  var
    FormBloquetoBancario: TFormBloquetoBancario;
    wCompCampo : string;
    wPagina    : Integer;

implementation

{$R *.DFM}

uses DataCad, DataCad1, DmSysCfg, uteis, iniciodb;





procedure TFormbloquetoBancario.MudaCorCampos(Sender: tObject);
begin
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
   if ActiveControl is TDateEdit then
      begin
         TDateEdit(ActiveControl).color := $0080FFFF;
         CampoData := TDateEdit(ActiveControl);
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
end;

procedure TFormBloquetoBancario.FormShow(Sender: tObject);
begin
    Left := 202;
    Top  := 82;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.cursor := crHourGlass;
    try
      SqlCdsListaBox.Close;
      SqlCdsListaBox.CommandText := SQLDEF('TABELAS','SELECT Y1.BOL_CODBOL,Y1.BOL_ATIVO,Y1.BOL_CODBAN,Y2.BAN_APELIDO FROM SYSBOLETO Y1 '+
                                           'JOIN BAN0000 Y2 ON Y1.BOL_CODBAN = Y2.BAN_CODIGO','','Y2.BAN_APELIDO','Y1.');
      SqlCdsListaBox.Open;
      if SqlCdsListaBox.IsEmpty = false then
         begin
             while not SqlCdsListaBox.Eof do
               begin
                   if SqlCdsListaBoxBOL_ATIVO.AsString = 'S' then
                      begin
                          LTBoxBloquetos.Items.Add(SqlCdsListaBoxBAN_APELIDO.AsString);
                      end;
                   SqlCdsListaBox.Next;
               end;
         end;
      LTBoxBloquetos.ItemIndex := 0;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao Abrir a Tabela de SYSBOLETO !'+E.MESSAGE));
    end;
    RadData.Checked := True;
    LayOutBloqueto;
    EditDataI.Date := now;
    EditDataF.Date := now;
    screen.cursor := crDefault;
end;

procedure TFormBloquetoBancario.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    try
      SqlCdsListaBox.Close;
      SqlCdsConfImpr.Close;
      SqlCdsBoleto.Close;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Fechar as Tabelas'+e.message));
    end;
end;

procedure TFormBloquetoBancario.BitCancelarClick(Sender: tObject);
begin
    Close;
end;

procedure TFormBloquetoBancario.BitOkClick(Sender: tObject);
var
  wDataI, wDataF, wSeleciona : String;
begin
    Screen.Cursor := crHourglass;
    {Abrir o arquivo de Configuração do Boleto}
    try
      SqlCdsConfImpr.Close;
      SqlCdsConfImpr.CommandText := SQLDEF('TABELAS','SELECT B1.* FROM SYSBOLETO B1','WHERE B1.BOL_CODBAN = '''+SqlCdsListaBoxBOL_CODBAN.AsString+'''','B1.BOL_CODBAN','B1.');
      SqlCdsConfImpr.Open;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao Abrir a Tabela SYSBOLETO !'+E.MESSAGE));
    end;
    FormatSettings.ShortDateFormat:='mm/dd/yyyy';
    wDataI := DateToStr(EditDataI.Date);
    wDataF := DateToStr(EditDataF.Date);
    // verifica se a data final é maior que a data inicial
    if EditDataI.Date > EditDataF.Date then
       begin
           uteis.erro  ('Data final não pode ser menor que a data inicial!');
           EditDataF.Setfocus;
           exit;
       end;
    if RadData.checked  then
       begin
           wSeleciona := 'WHERE P1.FPC_DTEMIS BETWEEN '''+wDataI+''' AND '''+wDataF+''' AND P1.BAN_CODIGO = '''+SqlCdsListaBoxBOL_CODBAN.AsString+'''';
       end
    else
       begin
           if EditParcela.Text <> '' then
              wSeleciona := 'WHERE P1.FAT_CODIGO = '''+StrZero(EditFatura.Text,6)+''' AND P1.FPC_NUMER = '''+StrZero(EditParcela.Text,2)+''' AND P1.BAN_CODIGO = '''+SqlCdsListaBoxBOL_CODBAN.AsString+''''
           else
              wSeleciona := 'WHERE P1.FAT_CODIGO = '''+StrZero(EditFatura.Text,6)+''' AND P1.BAN_CODIGO = '''+SqlCdsListaBoxBOL_CODBAN.AsString+'''';
       end;
    {Abrir a SqlCdsBoleto}
    try
      SqlCdsBoleto.Close;
      SqlCdsBoleto.CommandText := SQLDEF('RECEBER','SELECT P1.FAT_CODIGO,P1.FPC_NUMER,P1.BAN_CODIGO, P1.CLI_CODIGO,P1.FPC_DTEMIS,'+
                                         'P1.FPC_VENCTO,P1.FPC_VLPARC,P1.EMP_CODIGO,B1.BAN_JUROMES,C1.CLI_RAZAO,C1.CLI_ENDERE,C1.CLI_ENDFAT,'+
                                         'C1.CLI_CIDADE,C1.CLI_CIDFAT,C1.CLI_CEP,C1.CLI_CEPFAT,C1.CLI_UF,C1.CLI_UFFAT,C1.CLI_CGC FROM fat_pc01 P1 '+
                                         'JOIN ban0000 B1 ON B1.ban_codigo = P1.ban_codigo JOIN CLI0000 C1 ON C1.cli_codigo = P1.cli_codigo',wSeleciona,'P1.FPC_DTEMIS,P1.BAN_CODIGO','P1.');
      SqlCdsBoleto.Open;
    except on E:EDataBaseError do
       uteis.erro  (Pchar('Erro ao Abrir a Tabela RECEBER !'+E.MESSAGE));
    end;
    FormatSettings.ShortDateFormat:='dd/mm/yy';
    wDataI := DateToStr(EditDataI.Date);
    wDataF := DateToStr(EditDataF.Date);
    ImprimirBloqueto;
    if RadData.checked  then
       begin
           EditDataI.SetFocus;
       end
    else
       begin
           EditFatura.SetFocus;
       end;
    Screen.Cursor := crDefault;
end;

procedure TFormBloquetoBancario.ImprimirBloqueto;
var
  wJurosMes : Currency;
begin
    wPagina := 1;
    RDPrintBoleto.FonteTamanhoPadrao := S10cpp;
    RDPrintBoleto.TamanhoQteLinhas   := iif(SqlCdsConfImprBOL_NRLINHA.AsString = '',StrToInt('020'),StrToInt(SqlCdsConfImprBOL_NRLINHA.AsString));

    if RadVideo.checked  then
       RDPrintBoleto.OpcoesPreview.Preview := True
    else
       RDPrintBoleto.OpcoesPreview.Preview := False;
    //
    RDPrintBoleto.Abrir;
    screen.Cursor := CrHourglass;
    {Abrir o SqlCdsBoleto}
    while not SqlCdsBoleto.Eof do
      begin
          {Local de Pagamento}
          IF COPY(SqlCdsConfImprBOL_LOCAL.AsString,7,1) ='S' then
             RDPrintBoleto.Imp(StrToInt(Copy(SqlCdsConfImprBOL_LOCAL.AsString, 1,3)),StrToInt(Copy(SqlCdsConfImprBOL_LOCAL.AsString, 4,3)),SqlCdsConfImprBOL_LOCPGTO.AsString);
          {Vencimento}
          IF COPY(SqlCdsConfImprBOL_VENCTO.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_VENCTO.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_VENCTO.AsString,4,3)),DateToStr(SqlCdsBoletoFPC_VENCTO.AsDateTime));
          {Data documento}
          IF COPY(SqlCdsConfImprBOL_DTEMIS.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_DTEMIS.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_DTEMIS.AsString,4,3)),DateToStr(SqlCdsBoletoFPC_DTEMIS.AsDateTime));
          {Numero do Documento}
          IF COPY(SqlCdsConfImprBOL_CODFAT.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(Copy(SqlCdsConfImprBOL_CODFAT.AsString,1,3)),StrToInt(Copy(SqlCdsConfImprBOL_CODFAT.AsString,4,3)),SqlCdsBoletoFAT_CODIGO.AsString+IIF(SqlCdsBoletoFPC_NUMER.AsString<>'','/','')+SqlCdsBoletoFPC_NUMER.AsString);
          {Esp.Docum.}
          IF COPY(SqlCdsConfImprBOL_ESPDOC.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_ESPDOC.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_ESPDOC.AsString,4,3)),SqlCdsConfImprBOL_DESESPDOC.AsString);
          {Aceite}
          IF COPY(SqlCdsConfImprBOL_ACEITE.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_ACEITE.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_ACEITE.AsString,4,3)),SqlCdsConfImprBOL_DESACEITE.AsString);
          {Data processamento}
          IF COPY(SqlCdsConfImprBOL_DTPROCE.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_DTPROCE.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_DTPROCE.AsString,4,3)),DateToStr(SqlCdsBoletoFPC_DTEMIS.AsDateTime));
          //SEM PREENCHER INFORMACAO DO BANCO
          {Uso do Banco}
          //SEM PREENCHER INFORMACAO DO BANCO
          {Carteira}
          IF COPY(SqlCdsConfImprBOL_CARTEIRA.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_CARTEIRA.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_CARTEIRA.AsString,4,3)),SqlCdsConfImprBOL_DESCARTEIRA.AsString);
          {Especie}
          IF COPY(SqlCdsConfImprBOL_ESPECIE.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_ESPECIE.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_ESPECIE.AsString,4,3)),SqlCdsConfImprBOL_DESPECIE.AsString);
          {Quantidade}
          {Valor}
          IF COPY(SqlCdsConfImprBOL_VLPARC.AsString,7,1)='S' then
             RDPrintBoleto.ImpVal(StrToInt(COPY(SqlCdsConfImprBOL_VLPARC.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_VLPARC.AsString,4,3)),'#,##0.00',SqlCdsBoletoFPC_VLPARC.AsCurrency,[]);
          {Valor do documento}
          IF COPY(SqlCdsConfImprBOL_VLDOC.AsString,7,1)='S' then
             RDPrintBoleto.ImpVal(StrToInt(COPY(SqlCdsConfImprBOL_VLDOC.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_VLDOC.AsString,4,3)),'#,##0.00',SqlCdsBoletoFPC_VLPARC.AsCurrency,[]);
          {Mora}
          IF COPY(SqlCdsConfImprBOL_JUROMES.AsString,7,1)='S' then
             begin
                 wJurosMes := (SqlCdsBoletoBAN_JUROMES.AsCurrency/30)*(SqlCdsBoletoFPC_VLPARC.AsCurrency)/100;
                 RDPrintBoleto.ImpVal(StrToInt(COPY(SqlCdsConfImprBOL_JUROMES.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_JUROMES.AsString,4,3)),' MORA DIARIA R$ '+'#,##0.00',wJurosMes,[]);
             end;
          {Desconto / Abatimento}
          {Instrucao Obs1}
          IF COPY(SqlCdsConfImprBOL_OBSBOL1.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_OBSBOL1.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_OBSBOL1.AsString,4,3)),SqlCdsConfImprBOL_OBS1.AsString);
          {Outras deducoes}
          {Instrucao Obs2}
          IF COPY(SqlCdsConfImprBOL_OBSBOL2.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_OBSBOL2.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_OBSBOL2.AsString,4,3)),SqlCdsConfImprBOL_OBS2.AsString);
          {Mora / Multa}
          {Instrucao Obs3}
          IF COPY(SqlCdsConfImprBOL_OBSBOL3.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_OBSBOL3.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_OBSBOL3.AsString,4,3)),SqlCdsConfImprBOL_OBS3.AsString);
          {Outros Acrescimos}
          {Instrucao Obs4}
          IF COPY(SqlCdsConfImprBOL_OBSBOL4.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_OBSBOL4.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_OBSBOL4.AsString,4,3)),SqlCdsConfImprBOL_OBS4.AsString);
          {Valor Cobrado}
          {Razao Social}
          IF COPY(SqlCdsConfImprBOL_RAZAO.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_RAZAO.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_RAZAO.AsString,4,3)),SqlCdsBoletoCLI_RAZAO.AsString);
          {CNPJ}
          IF COPY(SqlCdsConfImprBOL_CNPJ.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_CNPJ.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_CNPJ.AsString,4,3)),MascaraCNPJ_CPF(SqlCdsBoletoCLI_CGC.AsString));
          {Verifica qual o endereço vai ser impresso (Fatura/Endereço)}
          IF SqlCdsBoletoCLI_CIDFAT.AsString<> '' THEN
             begin
                 {Endereço de Fatura}
                 IF COPY(SqlCdsConfImprBOL_END.AsString,7,1)='S' then
                    RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_END.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_END.AsString,4,3)),SqlCdsBoletoCLI_ENDFAT.AsString);
                 {Cep}
                 IF COPY(SqlCdsConfImprBOL_CEP.AsString,7,1)='S' then
                    RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_CEP.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_CEP.AsString,4,3)),MascaraCep(SqlCdsBoletoCLI_CEPFAT.AsString)+' '+TRIM(SqlCdsBoletoCLI_CIDFAT.AsString)+' - '+SqlCdsBoletoCLI_UFFAT.AsString);
             end
          else
             begin
                 {Endereço}
                 IF COPY(SqlCdsConfImprBOL_END.AsString,7,1)='S' then
                    RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_END.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_END.AsString,4,3)),SqlCdsBoletoCLI_ENDERE.AsString);
                 {Cep}
                 IF COPY(SqlCdsConfImprBOL_CEP.AsString,7,1)='S' then
                    RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_CEP.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_CEP.AsString,4,3)),MascaraCep(SqlCdsBoletoCLI_CEP.AsString)+' '+TRIM(SqlCdsBoletoCLI_CIDADE.AsString)+' - '+SqlCdsBoletoCLI_UF.AsString);
             end;
          RDPrintBoleto.Novapagina;
          SqlCdsBoleto.Next;
      end;
    RDPrintBoleto.Fechar;
    Screen.Cursor := crDefault;
end;

procedure TFormBloquetoBancario.EditDataIExit(Sender: tObject);
begin
    if not TestaDataStr(EditDataI.Text) then
       EditDataI.setfocus;
       EditDataF.Text := EditDataI.Text;
end;

procedure TFormBloquetoBancario.BitCancelaClick(Sender: tObject);
begin
    Close;
end;

procedure TFormBloquetoBancario.EditFaturaExit(Sender: tObject);
begin
    EditFatura.Text := StrZero(EditFatura.Text,6);
end;

procedure TFormBloquetoBancario.RadFaturaClick(Sender: tObject);
begin
    LayOutBloqueto;
end;

procedure TFormBloquetoBancario.RadDataClick(Sender: tObject);
begin
    LayOutBloqueto;
end;

procedure TFormBloquetoBancario.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
end;

procedure TFormBloquetoBancario.EditDataFExit(Sender: tObject);
begin
    if not TestaDataStr(EditDataF.Text) then
       EditDataF.setfocus;
end;

procedure TFormBloquetoBancario.BitConfigClick(Sender: tObject);
begin
    PrinterSetupDialog1.Execute;
end;

procedure TFormBloquetoBancario.LayOutBloqueto;
begin
    if RadData.checked  then
       begin
           Group01.Visible := True;
           Group02.Visible := False;
           Group03.Top     := 182;
       end
    else
       begin
           Group01.Visible := False;
           Group02.Visible := True;
           Group02.Top     := 141;
           Group03.Top     := 182;
       end;
    FormBloquetoBancario.AutoSize := True;
end;

procedure TFormBloquetoBancario.LTBoxBloquetosClick(Sender: tObject);
Var
  wItem:Integer;
begin
    wItem := LTBoxBloquetos.ItemIndex;
    SqlCdsListaBox.Locate('BAN_APELIDO',LTBoxBloquetos.Items.Strings[wItem],[]);
    if RadData.checked  then
       begin
           EditDataI.SetFocus;
           EditDataI.SelectAll;
       end
    else
       begin
           EditFatura.SetFocus;
           EditFatura.SelectAll;
       end;
end;

end.



