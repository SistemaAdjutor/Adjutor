unit SINTEGRA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Rwfunc, DBCtrls, Mask, Db, dbTables,
  Grids, DBGrids, ComCtrls,  rxToolEdit, Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal,
  DBLocalS, jpeg, DateUtils, Data.DBXFirebird, SimpleDS, JvExMask, JvToolEdit;

type
  TFormSINTEGRA = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Lb_Razao: TLabel;
    Lb_CNPJ: TLabel;
    Pn_Processo: TPanel;
    Label3: TLabel;
    Cb_UF: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Edt_Contato: TEdit;
    Label6: TLabel;
    Panel4: TPanel;
    Lb_Tipo10: TLabel;
    Lb_Tipo11: TLabel;
    Lb_Tipo50: TLabel;
    Lb_Tipo51: TLabel;
    Lb_Tipo53: TLabel;
    Lb_Tipo54: TLabel;
    Lb_Tipo70: TLabel;
    Lb_Tipo75: TLabel;
    Lb_Tipo90: TLabel;
    Panel3: TPanel;
    Panel7: TPanel;
    Lb_Arquivo: TLabel;
    Label7: TLabel;
    Mem_Arquivo: TRichEdit;
    SqlCdsEmpresa: TSQLClientDataSet;
    SqlCdsEmpresaEMP_CODIGO: TStringField;
    SqlCdsEmpresaEMP_RAZAO: TStringField;
    SqlCdsEmpresaEMP_ENDERE: TStringField;
    SqlCdsEmpresaEMP_BAIRRO: TStringField;
    SqlCdsEmpresaEMP_CXPOSTAL: TStringField;
    SqlCdsEmpresaEMP_CIDADE: TStringField;
    SqlCdsEmpresaEMP_UF: TStringField;
    SqlCdsEmpresaEMP_CEP: TStringField;
    SqlCdsEmpresaEMP_ENDENTR: TStringField;
    SqlCdsEmpresaEMP_CIDENTR: TStringField;
    SqlCdsEmpresaEMP_UFENTR: TStringField;
    SqlCdsEmpresaEMP_CEPENTR: TStringField;
    SqlCdsEmpresaEMP_FONE: TStringField;
    SqlCdsEmpresaEMP_FAX: TStringField;
    SqlCdsEmpresaEMP_EMAIL: TStringField;
    SqlCdsEmpresaEMP_EMAILCOMPRAS: TStringField;
    SqlCdsEmpresaEMP_NOMECOMPRADOR: TStringField;
    SqlCdsEmpresaEMP_EMAILVENDAS: TStringField;
    SqlCdsEmpresaEMP_CGC: TStringField;
    SqlCdsEmpresaEMP_INSC: TStringField;
    SqlCdsEmpresaEMP_FANTASIA: TStringField;
    SqlCdsEmpresaEMP_HOME: TStringField;
    SqlCdsParam: TSQLClientDataSet;
    SqlCdsParamSIN_COD_FINALID: TStringField;
    SqlCdsParamSIN_COD_IDENTIF: TStringField;
    SqlCdsParamSIN_CONTATO: TStringField;
    SqlCdsParamSIN_MODE_NF: TStringField;
    SqlCdsParamSIN_SERIE_NF: TStringField;
    SqlCdsParamSIN_SUBSERIE: TStringField;
    SqlCdsNF: TSQLClientDataSet;
    SqlCdsNFIT01: TSQLClientDataSet;
    SqlCdsNFNF_NOTANUMBER: TStringField;
    SqlCdsNFNF_EMISSAO: TDateField;
    SqlCdsNFOPE_NATUREZA: TStringField;
    SqlCdsNFNF_TOT_NOTA: TFMTBCdField;
    SqlCdsNFNF_BASEICMS: TFMTBCdField;
    SqlCdsNFNF_ALIQ_ICMS: TFMTBCdField;
    SqlCdsNFNF_VLBASESUBTRIB: TFMTBCdField;
    SqlCdsNFNF_VL_SUBTRIB: TFMTBCdField;
    SqlCdsNFNF_DESP_ACES: TFMTBCdField;
    SqlCdsNFNF_CANCELADA: TStringField;
    SqlCdsNFNF_INTERNO: TStringField;
    SqlCdsNFNF_TP_DESCTO: TStringField;
    SqlCdsNFNF_VL_DESCTO: TFMTBCdField;
    SqlCdsNFNF_PC_DESCTO1: TFMTBCdField;
    SqlCdsNFNF_PC_DESCTO2: TFMTBCdField;
    SqlCdsNFCLI_CODIGO: TStringField;
    SqlCdsNFCLI_CGC: TStringField;
    SqlCdsNFCLI_INSC: TStringField;
    SqlCdsNFCLI_UF: TStringField;
    SqlCdsNFIT01NF_IT_NOTANUMER: TStringField;
    SqlCdsNFIT01NF_QTDE: TFMTBCdField;
    SqlCdsNFIT01NF_PRECO: TFMTBCdField;
    SqlCdsNFIT01PRD_REFER: TStringField;
    SqlCdsNFIT01PRD_DESCRI: TStringField;
    SqlCdsNFIT01PRD_UND: TStringField;
    SqlCdsNFIT01PRD_SITRIBUT: TStringField;
    SqlCdsNFIT01PRD_TEMSUB: TStringField;
    SqlCdsNFIT01PRD_ICMSUBS: TFMTBCdField;
    SqlCdsNFIT01NF_EMISSAO: TDateField;
    SqlCdsNFIT01NF_INTERNO: TStringField;
    SqlCdsNFIT01NF_CANCELADA: TStringField;
    SqlCdsNFIT01CLI_UF: TStringField;
    SqlCdsNFIT01NF_IPIALIQ: TFMTBCdField;
    SqlCdsNFIT01NF_ICMSALIQ: TFMTBCdField;
    SqlCdsNFIT01NF_ALIQ_ICMS: TFMTBCdField;
    SqlCdsParamSIN_ARQ_MAGNETICO: TStringField;
    SqlCdsNFE: TSQLClientDataSet;
    SqlCdsNFEIT01: TSQLClientDataSet;
    SqlCdsNFEENF_NOTANUMBER: TStringField;
    SqlCdsNFEENF_EMISSAO: TDateField;
    SqlCdsNFEOPE_NATUREZA: TStringField;
    SqlCdsNFEENF_TOT_NOTA: TFMTBCdField;
    SqlCdsNFEENF_BASEICMS: TFMTBCdField;
    SqlCdsNFEENF_ALIQ_ICMS: TFMTBCdField;
    SqlCdsNFEENF_VL_ICMS: TFMTBCdField;
    SqlCdsNFEENF_VLBASESUBTRIB: TFMTBCdField;
    SqlCdsNFEENF_VL_SUBTRIB: TFMTBCdField;
    SqlCdsNFEENF_DESP_ACES: TFMTBCdField;
    SqlCdsNFEENF_VLFRETE: TFMTBCdField;
    SqlCdsNFEENF_VLSEGURO: TFMTBCdField;
    SqlCdsNFEENF_INTERNO: TStringField;
    SqlCdsNFEENF_CANCELADA: TStringField;
    SqlCdsNFEENF_VL_DESCTO: TFMTBCdField;
    SqlCdsNFEFOR_CODIGO: TStringField;
    SqlCdsNFEFOR_RAZAO: TStringField;
    SqlCdsNFEFOR_CGC: TStringField;
    SqlCdsNFEFOR_INSC: TStringField;
    SqlCdsNFEFOR_UF: TStringField;
    SqlCdsNFEIT01ENF_IT_NOTANUMBER: TStringField;
    SqlCdsNFEIT01ENF_QTDE: TFMTBCdField;
    SqlCdsNFEIT01ENF_PRECO: TFMTBCdField;
    SqlCdsNFEIT01PRD_REFER: TStringField;
    SqlCdsNFEIT01ENF_IPIALIQ: TFMTBCdField;
    SqlCdsNFEIT01PRD_DESCRI: TStringField;
    SqlCdsNFEIT01PRD_UND: TStringField;
    SqlCdsNFEIT01PRD_SITRIBUT: TStringField;
    SqlCdsNFEIT01PRD_TEMSUB: TStringField;
    SqlCdsNFEIT01PRD_ICMSUBS: TFMTBCdField;
    SqlCdsNFEIT01ENF_ALIQ_ICMS: TFMTBCdField;
    SqlCdsNFEIT01ENF_EMISSAO: TDateField;
    SqlCdsNFEIT01FOR_UF: TStringField;
    SqlCdsNFEENF_SERIE: TStringField;
    SqlCdsNFNF_VL_ICMS: TFMTBCdField;
    SqlCdsNFEENF_TIPO_FRETE: TIntegerField;
    SqlCdsParamSIN_MODE_ENF: TStringField;
    SqlCdsParamSIN_SERIE_ENF: TStringField;
    SqlCdsParamSIN_SUBSERIE_ENF: TStringField;
    SqlCdsReg70: TSQLClientDataSet;
    SqlCdsReg70ENF_NOTANUMBER: TStringField;
    SqlCdsReg70ENF_EMISSAO: TDateField;
    SqlCdsReg70ENF_SERIE: TStringField;
    SqlCdsReg70OPE_NATUREZA: TStringField;
    SqlCdsReg70ENF_TOT_NOTA: TFMTBCdField;
    SqlCdsReg70ENF_BASEICMS: TFMTBCdField;
    SqlCdsReg70ENF_ALIQ_ICMS: TFMTBCdField;
    SqlCdsReg70ENF_VL_ICMS: TFMTBCdField;
    SqlCdsReg70ENF_VLBASESUBTRIB: TFMTBCdField;
    SqlCdsReg70ENF_VL_SUBTRIB: TFMTBCdField;
    SqlCdsReg70ENF_DESP_ACES: TFMTBCdField;
    SqlCdsReg70ENF_VLFRETE: TFMTBCdField;
    SqlCdsReg70ENF_TIPO_FRETE: TIntegerField;
    SqlCdsReg70ENF_VLSEGURO: TFMTBCdField;
    SqlCdsReg70ENF_INTERNO: TStringField;
    SqlCdsReg70ENF_CANCELADA: TStringField;
    SqlCdsReg70ENF_VL_DESCTO: TFMTBCdField;
    SqlCdsReg70FOR_CODIGO: TStringField;
    SqlCdsReg70TRP_RAZAO: TStringField;
    SqlCdsReg70TRP_CGC: TStringField;
    SqlCdsReg70TRP_INSC: TStringField;
    SqlCdsReg70TRP_UF: TStringField;
    SqlCdsNFEIT01ENF_CFOP: TStringField;
    wCdSCfop: TClientDataSet;
    wCdSCfopCFOP: TStringField;
    wQuery: TSQLClientDataSet;
    SqlCdsNFEENF_ENTRADA: TDateField;
    wCdSCfopPRODUTO: TFloatField;
    wCdSCfopFRETE: TFloatField;
    wCdSCfopDESP: TFloatField;
    wCdSCfopSEGURO: TFloatField;
    SqlCdsNFNF_VL_IPI: TFMTBCdField;
    SqlCdsNFEENF_VL_IPI: TFMTBCdField;
    wCdSCfopIPI: TFloatField;
    Image1: TImage;
    RbE: TRadioButton;
    RbS: TRadioButton;
    RbES: TRadioButton;
    CBTipo51: TCheckBox;
    Bit_Sair: TBitBtn;
    BitBtn1: TBitBtn;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    SqlCdsNFIT01STB_TRIBUTACAO: TStringField;
    SqlCdsNFIT01PRD_ORIGEM: TIntegerField;
    SqlCdsNFEIT01STB_TRIBUTACAO: TStringField;
    SqlCdsNFEIT01PRD_ORIGEM: TIntegerField;
    cbTipo74: TCheckBox;
    lb_Tipo74: TLabel;
    sqlTipo74: TSQLClientDataSet;
    sqlTipo74TIPO: TIntegerField;
    sqlTipo74DATAINVENTARIO: TSQLTimeStampField;
    sqlTipo74QUANTIDADE: TFMTBCdField;
    sqlTipo74VALORPRODUTO: TFMTBCdField;
    sqlTipo74CODIGOPOSSE: TIntegerField;
    sqlTipo74CNPJ: TStringField;
    sqlTipo74INSCRICAOESTADUAL: TStringField;
    sqlTipo74UF: TStringField;
    sqlTipo74BANCOS: TStringField;
    sqlTipo74CODIGOPRODUTO: TStringField;
    sqlTipo74PES_TIPO: TStringField;
    SqlCdsNFNF_NUM_NFE: TIntegerField;
    SqlCdsNFIT01NF_NUM_NFE: TIntegerField;
    SqlCdsEmpresaCID_CODIGO: TIntegerField;
    SqlCdsEmpresaEMP_AMBIENTE_NFE: TIntegerField;
    SqlCdsEmpresaEMP_MODELO_NFE: TIntegerField;
    SqlCdsEmpresaEMP_SERIE_NFE: TIntegerField;
    SqlCdsEmpresaEMP_CAMINHO_LOGO: TStringField;
    SqlCdsEmpresaEMP_HOST: TStringField;
    SqlCdsEmpresaEMP_USERNAME: TStringField;
    SqlCdsEmpresaEMP_PASSWORD: TStringField;
    SqlCdsEmpresaEMP_REQUER_AUTENTICACAO: TStringField;
    SqlCdsEmpresaEMP_MENSAGEM_NFE: TStringField;
    SqlCdsEmpresaEMP_SISTEMA_CONTINGENCIA_NFE: TStringField;
    SqlCdsEmpresaEMP_OPTANTE_SIMPLES: TStringField;
    SqlCdsEmpresaEMP_PERCENT_SIMPLES: TFMTBCdField;
    SqlCdsEmpresaEMP_CODIGO_CONTABILIDADE: TStringField;
    SqlCdsEmpresaEMP_EMAIL_CONTADOR: TStringField;
    SqlCdsEmpresaEMP_EMAIL_INTERNO: TStringField;
    SqlCdsEmpresaEMP_GENERATION_NFE: TStringField;
    SqlCdsNFEENF_MODELO_NF: TStringField;
    SqlCdsNFEENF_CHAVE_NFESE: TStringField;
    SqlCdsNFEENF_CHAVE_NFE: TStringField;
    SqlCdsNFEIT01IPI_CODIGO: TStringField;
    SqlCdsNFIT01IPI_CODIGO: TStringField;
    CdsReferencia: TClientDataSet;
    CdsReferenciaReferencia: TStringField;
    wCdSCfopICMSBASE: TFloatField;
    wCdSCfopICMSBASEST: TFloatField;
    wCdSCfopICMSALIQ: TFloatField;
    wCdSCfopICMSVALOR: TFloatField;
    wCdSCfopICMSSTVALOR: TFloatField;
    SqlCdsNFEENF_TOT_PROD: TFMTBCdField;
    SqlCdsNFNF_TOT_PROD: TFMTBCdField;
    SqlCdsNFNF_VLFRETE: TFMTBCdField;
    SqlCdsNFNF_VLSEGURO: TFMTBCdField;
    SqlCdsReg70ENF_MODELO_NF: TStringField;
    SqlCdsNFIT01NF_IFRETE: TFMTBCdField;
    SqlCdsNFIT01NF_ISEGURO: TFMTBCdField;
    SqlCdsNFIT01NF_IDESP_ACES: TFMTBCdField;
    SqlCdsNFEIT01ENF_IT_VALFRETE: TFMTBCdField;
    SqlCdsNFEIT01ENF_IT_VLSEGURO: TFMTBCdField;
    SqlCdsNFEIT01ENF_IT_VLDESP_ACES: TFMTBCdField;
    Cds54_complemento: TClientDataSet;
    Cds54_complementoCFOP: TStringField;
    Cds54_complementoFrete: TFloatField;
    Cds54_complementoSeguro: TFloatField;
    Cds54_complementoDespesas: TFloatField;
    Dat_Final: TJvDateEdit;
    Dat_Inicio: TJvDateEdit;
    procedure MudaCorCampos(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Dat_InicioExit(Sender: tObject);
    procedure Dat_FinalExit(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure BitBtn1Click(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
        {campos}
    CampoEdit   :TEdit;
    CampoData   :TDateEdit;
    CampoBox    :TComboBox;

    wCalculo,
    wVlDescto,
    wDesc,
    wPorCdescto :Currency;
    wArquivo    :TextFile;
    wLinha,
    wPrd_refer,
    wprimeiro   :String;
    wAux        :String;
    wVal        :Double;


    rFrete,
    rSuguro,
    rDespesas,
    rTemp:Real;
    sAdicionadoValoresNF:String;

    procedure Sintegra_NF_ENTRADA;
    procedure Sintegra_NF_SAIDA;
    procedure Sintegra_Entrada_Saida;
    procedure Registro_10_11;
    procedure Registro_50;
    procedure Registro_51;
    procedure Registro_53;
    procedure Registro_54;
    procedure Registro_70;
    procedure Registro_74;
    procedure Registro_75;
    procedure Registro_90;
    procedure Abrir_NF_ENTRADA;
    procedure Abrir_NF_SAIDA;
    procedure Abrir_NF_70;

    procedure IncluirRederencia75(Referencia:String);
  public
    { Public declarations }
  end;

var
  FormSINTEGRA: TFormSINTEGRA;

implementation

uses Uteis, Men0001, DataCad, Fat0000, Math, iniciodb;

{$R *.DFM}





procedure TFormSINTEGRA.MudaCorCampos(Sender: tObject);
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

   {CampoData  :TDateEdit}
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
    {cor dos campos TCampoBox}
    if Assigned(CampoBox) then
       begin
          CampoBox.color := clWindow;
       end;
    if ActiveControl is TComboBox then
       begin
          TComboBox(ActiveControl).color := $0080FFFF;
          CampoBox := TComboBox(ActiveControl);
       end
    else
       begin
          CampoBox := nil;
       end;
end;

procedure TFormSINTEGRA.FormShow(Sender: tObject);
begin
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    wCdSCfop.CreateDataSet;
    {abrindo tabelas}
    try
      SqlCdsEmpresa.Close;
      SqlCdsEmpresa.CommandText := SQLDEF('TABELAS','Select EM.* from EMP0000 EM ','WHERE EM.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''','EM.EMP_CODIGO','EM.');
      SqlCdsEmpresa.Open;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao abrir a tabela da Empresa ! '+e.Message))
    end;
    try
      SqlCdsParam.Close;
      SqlCdsParam.CommandText := SQLDEF('TABELAS','SELECT P1.SIN_COD_FINALID,P1.SIN_COD_IDENTIF,P1.SIN_CONTATO,P1.SIN_MODE_NF,P1.SIN_SERIE_NF,P1.SIN_SUBSERIE,P1.SIN_MODE_ENF,P1.SIN_SERIE_ENF,P1.SIN_SUBSERIE_ENF,P1.SIN_ARQ_MAGNETICO FROM PRMT0001 P1 ','','','P1.');
      SqlCdsParam.Open;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao abrir a tabela de Parametros ! '+e.Message))
    end;
    Dat_Inicio.Date := PrimeiroDiadoMes(Date);
    Dat_Final.Date := Now;
    Lb_Tipo10.Caption := '0';Lb_Tipo11.Caption := '0';Lb_Tipo50.Caption  := '0';Lb_Tipo51.Caption := '0';
    Lb_Tipo53.Caption := '0';Lb_Tipo54.Caption := '0';
    Lb_Tipo70.Caption := '0';Lb_Tipo75.Caption := '0';
    Lb_Tipo90.Caption := '0';Lb_Arquivo.Caption := '0';
    lb_Tipo74.Caption := '0';
    {dados da Empresa P/ LABELS}
    Lb_Razao.Caption := SqlCdsEmpresaEMP_RAZAO.AsString;
    Lb_CNPJ.Caption  := copy(SqlCdsEmpresaEMP_CGC.AsString,1,2)+'.';
    Lb_CNPJ.Caption  := Lb_CNPJ.Caption + copy(SqlCdsEmpresaEMP_CGC.AsString,3,3)+'.';
    Lb_CNPJ.Caption  := Lb_CNPJ.Caption + copy(SqlCdsEmpresaEMP_CGC.AsString,6,3)+'/';
    Lb_CNPJ.Caption  := Lb_CNPJ.Caption + copy(SqlCdsEmpresaEMP_CGC.AsString,9,4)+'-';
    Lb_CNPJ.Caption  := Lb_CNPJ.Caption + copy(SqlCdsEmpresaEMP_CGC.AsString,13,2);
    Edt_Contato.Text := copy(SqlCdsParamSIN_CONTATO.AsString,1,30);
    Mem_Arquivo.Clear;
end;

procedure TFormSINTEGRA.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   wCdSCfop.Destroy;
   CdsReferencia.EmptyDataSet;   
   CdsReferencia.Close;
   Screen.OnActiveControlChange := NIL;
   Action := CaFree;
end;

procedure TFormSINTEGRA.FormDestroy(Sender: TObject);
begin
     FormSINTEGRA := Nil;
end;

procedure TFormSINTEGRA.Dat_InicioExit(Sender: tObject);
begin
    if not TestaDataStr(Dat_Inicio.Text) then
       Dat_Inicio.setfocus;
end;

procedure TFormSINTEGRA.Dat_FinalExit(Sender: tObject);
begin
    if not TestaDataStr(Dat_Final.Text) then
       Dat_Final.setfocus;
    if (Dat_Final.Date < Dat_Inicio.Date) then
       begin
           uteis.aviso('Data Final menor que a data inicial !');
           Dat_Final.SetFocus;
           Dat_Final.SelectAll;
       end;
end;

procedure TFormSINTEGRA.Bit_SairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormSINTEGRA.Sintegra_NF_ENTRADA;
Var
wI:Integer;
begin

end;

procedure TFormSINTEGRA.BitBtn1Click(Sender: tObject);
begin
   CdsReferencia.EmptyDataSet;
   Lb_Tipo10.Caption := '0';
   Lb_Tipo11.Caption := '0';
   Lb_Tipo50.Caption := '0';
   Lb_Tipo51.Caption := '0';
   Lb_Tipo53.Caption := '0';
   Lb_Tipo54.Caption := '0';
   Lb_Tipo70.Caption := '0';
   lb_Tipo74.Caption := '0';
   Lb_Tipo75.Caption := '0';
   Lb_Tipo90.Caption := '0';

   if (RbES.Checked) then
      Sintegra_Entrada_Saida
   else
   if (RbS.Checked) then
      //Sintegra_NF_SAIDA - mar desativei em abril 2012 - rotinas duplicadas
      Sintegra_Entrada_Saida
   else
   if (RbE.Checked) then
      //Sintegra_NF_ENTRADA; - mar desativei em abril 2012 - rotinas duplicadas
      Sintegra_Entrada_Saida
end;

procedure TFormSINTEGRA.Sintegra_NF_SAIDA;
Var
wI:Integer;
begin
end;

procedure TFormSINTEGRA.Sintegra_Entrada_Saida;
begin
   Screen.Cursor := crHourGlass;
   try
     if Cb_UF.Text = '' then
        begin
            uteis.aviso('Defina o Estado para Processar as Notas!');
            Cb_UF.SetFocus;
        end
     else
     if (Dat_Inicio.Text = '  /  /    ')or(Dat_Inicio.Text = '') then
        begin
            uteis.aviso('Entre com a Data Inicial!');
            Dat_Inicio.SetFocus;
        end
     else
     if (Dat_Final.Text = '  /  /    ')or(Dat_Final.Text = '') then
        begin
            uteis.aviso('Entre com a Data Final!');
            Dat_Final.SetFocus;
        end
     else
     if Edt_Contato.Text = '' then
        begin
            uteis.aviso('Defina o Responsável!');
            Edt_Contato.SetFocus;
        end
     else
        begin
            {Criando nome para o arquivo}
            wAux := dbInicio.SistemaLocal+'ARQUIVO';
            if not DirectoryExists(wAux) then
               begin
                   ForceDirectories(wAux);
                   wAux := dbInicio.SistemaLocal+'ARQUIVO'+
                        '\'+copy(Dat_Inicio.Text,4,2)+Cb_UF.Text+copy(Dat_Inicio.Text,7,4)+'.TXT';
               end
            else
               begin
                   wAux := dbInicio.SistemaLocal+'ARQUIVO'+
                        '\'+copy(Dat_Inicio.Text,4,2)+Cb_UF.Text+copy(Dat_Inicio.Text,7,4)+'.TXT';
               end;
            {Aloca arquivo na memória - existente ou não}
            AssignFile(wArquivo,wAux);
            {Grava arquivo no disco}
            Rewrite(wArquivo);
            {Prepara Arquivo para Edição}
            Append(wArquivo);

            {Registro 10 e 11}
            Registro_10_11;

            {Abrir a Tabela de Entrada e Saida}
            Abrir_NF_ENTRADA;
            Abrir_NF_SAIDA;

            {Registro 50}
            Registro_50;

            {Registro 51}
            Registro_51;

            {Registro 53}
            Registro_53;

            {Registro 54}
            Registro_54;

            {Registro 70}
            Registro_70;

            {Registro 74}
            if cbTipo74.Checked then
              Registro_74;

            {Registro 75}
            Registro_75;

            {Registro 90}
            Registro_90;
        end;
   finally
      Screen.Cursor := crDefault;
      uteis.aviso('Sintegra gerado com sucesso !');
   end;
end;

procedure TFormSINTEGRA.Registro_10_11;
Var
  wI : Integer;
begin
    {CRIA REGISTRO TIPO 10}
    wAux := '';
    {Prepara INSC}
    for wI := 1 to Length(SqlCdsEmpresaEMP_INSC.AsString) do
     if ((copy(SqlCdsEmpresaEMP_INSC.AsString,wI,1)>='0')and(copy(SqlCdsEmpresaEMP_INSC.AsString,wI,1)<='9'))
     or ((copy(SqlCdsEmpresaEMP_INSC.AsString,wI,1)>='a')and(copy(SqlCdsEmpresaEMP_INSC.AsString,wI,1)<='z'))
     or ((copy(SqlCdsEmpresaEMP_INSC.AsString,wI,1)>='A')and(copy(SqlCdsEmpresaEMP_INSC.AsString,wI,1)<='Z'))then
        wAux := wAux + copy(SqlCdsEmpresaEMP_INSC.AsString,wI,1);
    {criando registro Tipo 10 na var wLinha}
    {01-TIPO - posicao: 1-2}
    wLinha := '10';
    {02-CNPJ - posicao: 3-16}
    wLinha := wLinha+justifica('e',SqlCdsEmpresaEMP_CGC.AsString,14,'0');
    {03-Inscricao Estadual - posicao: 17-30}
    wLinha := wLinha + justifica('d',wAux,14,' ');
    {04-Razao Social - posicao: 31-65}
    wLinha := wLinha+Justifica('d',copy(SqlCdsEmpresaEMP_RAZAO.AsString,1,35),35,' ');
    {05-Municipio - posicao: 66-95}
    wLinha := wLinha+Justifica('d',copy(SqlCdsEmpresaEMP_CIDADE.AsString,1,30),30,' ');
    {06-Unidade de Federacao - posicao: 96-97}
    wLinha := wLinha+Justifica('d',copy(SqlCdsEmpresaEMP_UF.AsString,1,2),2,' ');
    wAux := '';
    {Prepara Fax}
    for wI := 1 to Length(SqlCdsEmpresaEMP_FAX.AsString) do
      if (copy(SqlCdsEmpresaEMP_FAX.AsString,wI,1)>='0')and(copy(SqlCdsEmpresaEMP_FAX.AsString,wI,1)<='9')then
         wAux := wAux + copy(SqlCdsEmpresaEMP_FAX.AsString,wI,1);
    //
    {07-Fax - posicao: 98-107}
    wLinha := wLinha+Justifica('e',copy(wAux,1,10),10,'0');
    {08-Data Inicial - posicao: 108-115}
    wLinha := wLinha+copy(Dat_Inicio.Text,7,4)+copy(Dat_Inicio.Text,4,2)+copy(Dat_Inicio.Text,1,2);
    {09-Data final - posicao: 116-123}
    wLinha := wLinha+copy(Dat_Final.Text,7,4)+copy(Dat_Final.Text,4,2)+copy(Dat_Final.Text,1,2);
    {10-Codigo da Identificacao do Convênio - posicao: 124-124}
    wLinha := wLinha+SqlCdsParamSIN_ARQ_MAGNETICO.AsString;
    {11-Codigo da Identificacao natureza das operacoes - posicao: 125-125}
    wLinha := wLinha+SqlCdsParamSIN_COD_IDENTIF.AsString;
    {12-Codigo da finalidade do arquivo magnetico - posicao: 126-126}
    wLinha := wLinha+SqlCdsParamSIN_COD_FINALID.AsString;
    wLinha := TiraAcento(wLinha,true);
    Writeln(wArquivo,wLinha);
    Mem_Arquivo.Text := '';
    Mem_Arquivo.Lines.Add(wLinha);
    Lb_Tipo10.Caption  := '1';
    //
    {CRIANDO REGISTRO TIPO 11}
    wLinha :=   '11'+Justifica('D',copy(SqlCdsEmpresaEMP_ENDERE.AsString,1,34),34,' ')+'99999';
    wLinha := wLinha+Justifica('D',' ',22,' ')+Justifica('D',copy(SqlCdsEmpresaEMP_BAIRRO.AsString,1,15),15,' ');
    wLinha := wLinha+Justifica('e',copy(SqlCdsEmpresaEMP_CEP.AsString,1,8),8,'0');
    wLinha := wLinha+Justifica('d',copy(Edt_Contato.Text,1,28),28,' ');
    wAux := '';
    {Prepara Fone contato}
    for wI := 1 to Length(SqlCdsEmpresaEMP_FONE.AsString) do
      if (copy(SqlCdsEmpresaEMP_FONE.AsString,wI,1)>='0')and(copy(SqlCdsEmpresaEMP_FONE.AsString,wI,1)<='9')then
         wAux := wAux + copy(SqlCdsEmpresaEMP_FONE.AsString,wI,1);
    //
    wLinha := wLinha+Justifica('e',copy(wAux,1,12),12,'0');
    wLinha := TiraAcento(wLinha,true);
    Writeln(wArquivo,wLinha);
    Mem_Arquivo.Lines.Add(wLinha);
    Lb_Tipo11.Caption  := '1';
end;

procedure TFormSINTEGRA.Abrir_NF_ENTRADA;
begin
   try
     wSql1      := 'Select E1.enf_notanumber,E1.ENF_VL_IPI,E1.enf_emissao,e1.ENF_ENTRADA,E1.ENF_MODELO_NF,E1.enf_serie,E1.ENF_CHAVE_NFE,E1.ENF_CHAVE_NFESE,E1.ope_natureza,E1.enf_tot_nota,E1.enf_baseicms,E1.enf_aliq_icms,';
     wSql2      := 'E1.enf_vl_icms,E1.enf_vlbasesubtrib,E1.enf_vl_subtrib,E1.enf_desp_aces,E1.enf_vlfrete,E1.enf_tipo_frete,E1.enf_vlseguro,E1.enf_interno,E1.enf_cancelada,E1.enf_vl_descto,E1.for_codigo,F1.for_razao,';
     wSql3      := 'F1.for_cgc,F1.for_insc,F1.for_uf,e1.enf_tot_prod from ENF0001 E1 LEFT JOIN FOR0000 F1 ON (F1.for_codigo = E1.for_codigo) ';
     wSeleciona := 'WHERE E1.ENF_ENTRADA BETWEEN '''+DataAmericana(Dat_Inicio.Text)+''' AND '''+DataAmericana(Dat_Final.Text)+''' AND E1.enf_tipo_nf_entrada = ''N'' '+iif(Cb_UF.Text = 'TODOS','',' AND F1.for_uf = '''+Cb_UF.Text+''' ');
     wOrdem     := 'E1.ENF_ENTRADA, E1.enf_notanumber';
     SqlCdsNFE.Close;
     SqlCdsNFE.CommandText := SQLDEF('RECEBER',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'E1.');
     SqlCdsNFE.Open;
   except on E:EDataBaseError do
     uteis.erro  (pchar('Erro ao abrir a tabela ! '+e.message));
   end;
end;

procedure TFormSINTEGRA.Abrir_NF_SAIDA;
begin
   try
     wSql1 := 'SELECT NF.NF_NOTANUMBER,NF.NF_NUM_NFE,NF.NF_VL_IPI,NF.NF_EMISSAO,NF.OPE_NATUREZA,NF.NF_TOT_NOTA,NF.NF_BASEICMS,NF.NF_VL_ICMS,NF.NF_ALIQ_ICMS,NF.NF_VLBASESUBTRIB,NF.NF_VL_SUBTRIB,NF.NF_DESP_ACES,NF.NF_CANCELADA,';
     wSql2 := 'NF.NF_INTERNO,NF.NF_TP_DESCTO,NF.NF_VL_DESCTO,NF.NF_PC_DESCTO1,NF.NF_PC_DESCTO2,NF.CLI_CODIGO,C1.CLI_CGC,C1.CLI_INSC,C1.CLI_UF,NF.nf_tot_prod,NF.nf_vlfrete, NF.nf_vlseguro FROM NF0001 NF ';
     wSql3 := 'JOIN CLI0000 C1 ON (C1.CLI_CODIGO = NF.CLI_CODIGO) AND (NF.EMP_CODIGO = C1.EMP_CODIGO) ';
     wSeleciona := 'WHERE NF.NF_INTERNO = ''N'' AND NF.NF_EMISSAO BETWEEN '''+DataAmericana(Dat_Inicio.Text)+''' AND '''+DataAmericana(Dat_Final.Text)+''' '+iif(Cb_UF.Text = 'TODOS','',' AND C1.CLI_UF = '''+Cb_UF.Text+'''');
     wOrdem     := 'NF.NF_EMISSAO,NF.NF_NOTANUMBER';
     SqlCdsNF.Close;
     SqlCdsNF.CommandText := SQLDEF('RECEBER',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'NF.');
     SqlCdsNF.Open;
   except on E:EDataBaseError do
     uteis.erro  (pchar('Erro ao abrir a tabela ! '+e.message));
   end;
end;

procedure TFormSINTEGRA.Registro_50;
Var
  wI : Integer;
  sNumeroNota:string;
begin
   {CRIANDO REGISTROS TIPO 50 - Entrada 51 SE TIVER IPI}
   Lb_Tipo50.Caption := '0';
 // seleciou entradas e saidas ou somente entradas
 if (RbES.checked ) OR (RbE.checked ) then
  begin
   SqlCdsNFE.First;
   while not SqlCdsNFE.Eof do
      begin
         {inicialização das variáveis}
         wAux       := '';
         rFrete     := 0;
         rSuguro    := 0;
         rDespesas  := 0;
         rTemp      := 0;
        {prepara cfop dos itens}
        wQuery.Close;
        wQuery.CommandText := 'SELECT '
                              +'e2.ENF_IT_NOTANUMBER, '
                              +'E2.ENF_CFOP,  '
                              +'e2.FOR_CODIGO, '
                              +'CAST(SUM((e2.ENF_QTDE *  e2.ENF_PRECO) - E2.ENF_IT_DESCTO) AS NUMERIC(18,4)) AS PRODUTOS,  '
                              +' SUM(cast(E2.enf_it_valfrete AS NUMERIC(18,4))) AS ENF_VLFRETE, '
                              +' SUM(cast(E2.enf_it_vlseguro AS NUMERIC(18,4))) AS ENF_VLSEGURO, '
                              +' SUM(cast(E2.enf_it_vldesp_aces AS NUMERIC(18,4))) AS ENF_DESP_ACES, '
                              +' SUM(CAST((E2.ENF_IPIALIQ/100)AS NUMERIC (18,4))*CAST((E2.ENF_QTDE*E2.ENF_PRECO)AS NUMERIC (18,4))) AS ENF_VL_IPI, '
                              +'SUM(cast(E2.ENF_ICMS AS NUMERIC(18,4))) AS ENF_ICMS, '
                              +'SUM(cast(E2.enf_it_baseicms AS NUMERIC(18,4))) AS enf_it_baseicms, '
                              +'SUM(cast(E2.enf_it_basesubtrib AS NUMERIC(18,4))) AS enf_it_basesubtrib, '
                              +'SUM(cast(E2.ENF_VLSUBST AS NUMERIC(18,4))) AS enf_vl_subtrib, '
                              +'e2.enf_icmsaliq '
                              +'FROM ENF_IT01 E2 '
                              +' JOIN ENF0001 E3 ON (E3.ENF_NOTANUMBER = E2.ENF_IT_NOTANUMBER AND E3.FOR_CODIGO = E2.FOR_CODIGO)'
                              +'where E2.ENF_CFOP is not null and e2.ENF_IT_NOTANUMBER = '''+SqlCdsNFEENF_NOTANUMBER.AsString+''' and e2.FOR_CODIGO = '''+SqlCdsNFEFOR_CODIGO.AsString+''' '
                              +'GROUP BY '
                              +'E2.ENF_CFOP,'
                              +'e2.ENF_IT_NOTANUMBER,'
                              +'e2.FOR_CODIGO,'
                              +'e2.enf_icmsaliq '
                              +'ORDER BY '
                              +'E2.ENF_CFOP, '
                              +'e2.ENF_IT_NOTANUMBER';
        wQuery.Open;
        sAdicionadoValoresNF := 'N';
        wCdSCfop.EmptyDataSet;
        if (wQuery.IsEmpty) then
           begin
             wCdSCfop.Append;
             wCdSCfopCFOP.AsString       := SqlCdsNFEOPE_NATUREZA.AsString;
             wCdSCfopPRODUTO.AsFloat     := SqlCdsNFEENF_TOT_PROD.AsFloat;
             wCdSCfopFRETE.AsFloat       := SqlCdsNFEENF_VLFRETE.AsFloat;
             wCdSCfopDESP.AsFloat        := SqlCdsNFEENF_DESP_ACES.AsFloat;
             wCdSCfopSEGURO.AsFloat      := SqlCdsNFEENF_VLSEGURO.AsFloat;
             wCdSCfopICMSALIQ.AsFloat    := SqlCdsNFEENF_ALIQ_ICMS.AsFloat;
             wCdSCfopICMSVALOR.AsFloat   := SqlCdsNFEENF_VL_ICMS.AsFloat;
             wCdSCfopICMSBASE.AsFloat    := SqlCdsNFEENF_BASEICMS.AsFloat;
             wCdSCfopICMSBASEST.AsFloat  := SqlCdsNFEENF_VLBASESUBTRIB.AsFloat;
             wCdSCfopICMSSTVALOR.AsCurrency := SqlCdsNFEENF_VL_SUBTRIB.AsCurrency;
             wCdSCfopIPI.AsFloat         := SqlCdsNFEENF_VL_IPI.AsFloat;
             wCdSCfop.Post;
           end
        else
           while (not wQuery.Eof) do
              begin

                wCdSCfop.Append;
                wCdSCfopCFOP.AsString       := wQuery.FieldByName('ENF_CFOP').AsString;
                wCdSCfopPRODUTO.AsFloat     := wQuery.FieldByName('PRODUTOS').AsFloat;
                wCdSCfopICMSALIQ.AsFloat    := wQuery.FieldByName('enf_icmsaliq').AsFloat;
                wCdSCfopICMSVALOR.AsFloat   := wQuery.FieldByName('ENF_ICMS').AsFloat;
                wCdSCfopICMSBASE.AsFloat    := wQuery.FieldByName('enf_it_baseicms').AsFloat;
                wCdSCfopICMSBASEST.AsFloat  := wQuery.FieldByName('enf_it_basesubtrib').AsFloat;
                wCdSCfopFRETE.AsFloat       := wQuery.FieldByName('ENF_VLFRETE').AsFloat;
                wCdSCfopDESP.AsFloat        := wQuery.FieldByName('ENF_DESP_ACES').AsFloat;
                wCdSCfopSEGURO.AsFloat      := wQuery.FieldByName('ENF_VLSEGURO').AsFloat;
                wCdSCfopICMSSTVALOR.AsCurrency := wQuery.FieldByName('enf_vl_subtrib').AsFloat;      
                wCdSCfopIPI.AsFloat         := wQuery.FieldByName('ENF_VL_IPI').AsFloat;
                wCdSCfop.Post;
                wQuery.Next;
              end;

        wCdSCfop.First;
        while (not wCdSCfop.Eof) do
           begin
              wAux := '';
              wLinha := '';
               {Prepara INSC}
              for wI := 1 to Length(TRIM(SqlCdsNFEFOR_INSC.AsString)) do
                 if ((copy(SqlCdsNFEFOR_INSC.AsString,wI,1)>='0')and(copy(SqlCdsNFEFOR_INSC.AsString,wI,1)<='9'))
                 or ((copy(SqlCdsNFEFOR_INSC.AsString,wI,1)>='a')and(copy(SqlCdsNFEFOR_INSC.AsString,wI,1)<='z'))
                 or ((copy(SqlCdsNFEFOR_INSC.AsString,wI,1)>='A')and(copy(SqlCdsNFEFOR_INSC.AsString,wI,1)<='Z'))then
                     wAux := wAux + copy(SqlCdsNFEFOR_INSC.AsString,wI,1);
              if wAux = ''then
                 wAux := 'ISENTO';
              {concatenando INSC, e CNPJ na var wAux}
              wAux := justifica('e',SqlCdsNFEFOR_CGC.AsString,14,'0')+justifica('d',wAux,14,' ');
              wLinha := '50'+wAux+Copy(SqlCdsNFEENF_ENTRADA.AsString,7,4)+Copy(SqlCdsNFEENF_ENTRADA.AsString,4,2)+Copy(SqlCdsNFEENF_ENTRADA.AsString,1,2);
              wLinha := wLinha+Justifica('d',copy(SqlCdsNFEFOR_UF.AsString,1,2),2,' ');
              // se preencheu chave da NFe
              if Length(trim(SqlCdsNFEENF_CHAVE_NFE.AsString)) > 0 then        //NFE
                 begin
                  // notas do passado que nao foi preenhido modelo e serie
                  if SqlCdsNFEENF_MODELO_NF.AsString = '' then
                    begin
                     wLinha := wLinha+Justifica('e',copy('55',1,2),2,' ');  // modelo   55
                     wLinha := wLinha+Justifica('d',copy('1  ',1,3),3,' '); // serie    1
                    end
                  else
                    begin
                    // usar valor digitado no campo da entrada de nota
                    wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_MODELO_NF.AsString,1,2),2,'0');
                    wLinha := wLinha+Justifica('d',copy(IIF(sqlCdsNFEENF_SERIE.AsString = '0','1',sqlCdsNFEENF_SERIE.AsString) ,1,3),3,' ');
                    end;
                end
              else
                // não é nota eletronica (papel)
                begin
                 // notas do passado que nao foi preenhido modelo e serie
                 if SqlCdsNFEENF_MODELO_NF.AsString = '' then
                   begin
                    // pega default dos parametros
                    wLinha := wLinha+Justifica('e',copy(SqlCdsParamSIN_MODE_NF.AsString,1,2),2,'0');
                    wLinha := wLinha+Justifica('d',copy(SqlCdsParamSIN_SERIE_NF.AsString,1,3),3,' ');
                   end
                 else
                  begin
                   // usar valor digitado no campo da entrada de nota
                   wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_MODELO_NF.AsString,1,2),2,'0');
                   wLinha := wLinha+Justifica('d',copy(IIF(sqlCdsNFEENF_SERIE.AsString = '0','1',sqlCdsNFEENF_SERIE.AsString),1,3),3,' ');
                  end;
                end;
              if (Length(SqlCdsNFEENF_NOTANUMBER.AsString) > 6) then
                 wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_NOTANUMBER.AsString,Length(SqlCdsNFEENF_NOTANUMBER.AsString)-5,6),6,'0')
              else
                 wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_NOTANUMBER.AsString,1,6),6,'0');
              wLinha := wLinha+justifica('e',copy(wCdSCfopCFOP.AsString,1,4),4,'0')+'T'; // mudei de P para t P=emitente proprio ou T=terceiros
              wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[(wCdSCfopPRODUTO.AsFloat+wCdSCfopFRETE.AsFloat+wCdSCfopDESP.AsFloat+wCdSCfopSEGURO.AsFloat+wCdSCfopIPI.AsFloat+wCdSCfopICMSSTVALOR.AsCurrency)*100])),13,'0');
              wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[(wCdSCfopICMSBASE.AsCurrency)*100])),13,'0');
              //wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[SqlCdsNFEENF_ALIQ_ICMS.AsCurrency*SqlCdsNFEENF_BASEICMS.AsCurrency])),13,'0');
              wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[wCdSCfopICMSVALOR.AsCurrency*100])),13,'0');
              wLinha := wLinha+Justifica('E','',13,'0');
              wLinha := wLinha+Justifica('E','',13,'0');
              wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[wCdSCfopICMSALIQ.AsCurrency*100])),4,'0');
              wLinha := wLinha+'N';
              Lb_Tipo50.Caption := IntToStr(StrToInt(Lb_Tipo50.Caption)+1);
              wLinha := TiraAcento(wLinha,true);
              Writeln(wArquivo,wLinha);
              Mem_Arquivo.Lines.Add(wLinha);
              wCdSCfop.Next;
           end;
        SqlCdsNFE.Next;
        Application.ProcessMessages;
    end;
  end;  //endif das notas de entrada
   {CRIANDO REGISTROS TIPO 50 - Saída}
   rFrete     := 0;
 // selecionou Entradas e Saidas ou somente saidas
 if (RbES.checked ) OR (RbS.checked ) then
   begin
   SqlCdsNF.First;
   while not SqlCdsNF.Eof do
    begin
        wAux := '';
        {Prepara INSC}
        rSuguro    := 0;
         rDespesas  := 0;
         rTemp      := 0;
        {prepara cfop dos itens}
        wQuery.Close;
        wQuery.CommandText := 'SELECT '
                             +'e2.NF_IT_NOTANUMER,   '
                             +' SUM(cast(E2.nf_qtde * E2.nf_preco AS NUMERIC(18,4))) AS PRODUTOS, '
                             +'E2.NTP_CFOP,  '
                             +'SUM(cast(E2.nf_ifrete AS NUMERIC(18,4))) AS NF_VLFRETE, SUM(cast(E2.nf_iseguro AS NUMERIC(18,4))) AS NF_VLSEGURO, SUM(cast(E2.nf_idesp_aces AS NUMERIC(18,4))) AS NF_DESP_ACES,  SUM(cast(E2.nf_ipivalor AS NUMERIC(18,4))) AS NF_VL_IPI, '
                             +'E3.NF_NUM_NFE , SUM(cast(E2.nf_icmsbase AS NUMERIC(18,4))) AS nf_icmsbase, E2.nf_icmsaliq, SUM(cast(E2.NF_ICMSVALOR AS NUMERIC(18,4))) AS NF_ICMSVALOR, SUM(cast(E2.NF_VLSUBST AS NUMERIC(18,4))) AS NF_VLSUBST  '
                             +'FROM NF_IT01 E2 '
                             +'JOIN NF0001 E3 ON (e3.NF_NOTANUMBER = E2.NF_IT_NOTANUMER) '
                             +'where E2.NTP_CFOP is not null and E2.NF_IT_NOTANUMER =  '+RetornaNull(SqlCdsNFNF_NOTANUMBER.AsString)
                             +'GROUP BY   '
                             +'E2.NTP_CFOP,  '
                             +'e2.NF_IT_NOTANUMER,   '
                             +'E3.NF_NUM_NFE , E2.nf_icmsaliq '
                             +'ORDER BY   '
                             +'E2.NTP_CFOP, '
                             +'e2.NF_IT_NOTANUMER';
        wQuery.Open;
        sAdicionadoValoresNF := 'N';
        wCdSCfop.EmptyDataSet;
        if (wQuery.IsEmpty) then
           begin
             wCdSCfop.Append;
             wCdSCfopCFOP.AsString        := SqlCdsNFOPE_NATUREZA.AsString;
             wCdSCfopPRODUTO.AsFloat      := SqlCdsNFNF_TOT_PROD.AsFloat;
             wCdSCfopFRETE.AsFloat        := SqlCdsNFNF_VLFRETE.AsFloat;
             wCdSCfopDESP.AsFloat         := SqlCdsNFNF_DESP_ACES.AsFloat;
             wCdSCfopSEGURO.AsFloat       := SqlCdsNFNF_VLSEGURO.AsFloat;
             wCdSCfopICMSALIQ.AsCurrency  := SqlCdsNFNF_ALIQ_ICMS.AsFloat;
             wCdSCfopICMSVALOR.AsCurrency := SqlCdsNFNF_VL_ICMS.AsCurrency;
             wCdSCfopICMSBASE.AsCurrency  := SqlCdsNFNF_BASEICMS.AsCurrency;
             wCdSCfopIPI.AsCurrency       := SqlCdsNFNF_VL_IPI.AsCurrency;
             wCdSCfopICMSSTVALOR.AsCurrency := SqlCdsNFNF_VL_SUBTRIB.AsCurrency;
             wCdSCfop.Post;
           end
        else
           while (not wQuery.Eof) do
              begin
                wCdSCfop.Append;
                wCdSCfopCFOP.AsString        := wQuery.FieldByName('NTP_CFOP').AsString;
                wCdSCfopPRODUTO.AsFloat      := wQuery.FieldByName('PRODUTOS').AsFloat;
                wCdSCfopICMSALIQ.AsCurrency  := wQuery.FieldByName('nf_icmsaliq').AsFloat;
                wCdSCfopICMSVALOR.AsCurrency := wQuery.FieldByName('NF_ICMSVALOR').AsFloat;
                wCdSCfopICMSBASE.AsCurrency  := wQuery.FieldByName('nf_icmsbase').AsFloat;
                wCdSCfopFRETE.AsFloat        := wQuery.FieldByName('NF_VLFRETE').AsFloat;
                wCdSCfopDESP.AsFloat         := wQuery.FieldByName('NF_DESP_ACES').AsFloat;
                wCdSCfopSEGURO.AsFloat       := wQuery.FieldByName('NF_VLSEGURO').AsFloat;
                wCdSCfopIPI.AsFloat          := wQuery.FieldByName('NF_VL_IPI').AsFloat;
                wCdSCfopICMSSTVALOR.AsCurrency := wQuery.FieldByName('NF_VLSUBST').AsFloat;
                wCdSCfop.Post;
                wQuery.Next;
              end;
        wCdSCfop.First;
        while (not wCdSCfop.Eof) do
           begin
              wAux := '';
              wLinha := '';
              for wI := 1 to Length(SqlCdsNFCLI_INSC.AsString) do
                 if ((copy(SqlCdsNFCLI_INSC.AsString,wI,1)>='0')and(copy(SqlCdsNFCLI_INSC.AsString,wI,1)<='9'))
                 or ((copy(SqlCdsNFCLI_INSC.AsString,wI,1)>='a')and(copy(SqlCdsNFCLI_INSC.AsString,wI,1)<='z'))
                 or ((copy(SqlCdsNFCLI_INSC.AsString,wI,1)>='A')and(copy(SqlCdsNFCLI_INSC.AsString,wI,1)<='Z'))then
                     wAux := wAux + copy(SqlCdsNFCLI_INSC.AsString,wI,1);
              if wAux = ''then
                 wAux := 'ISENTO';
              {concatenando INSC, e CNPJ na var wAux}
              wAux := justifica('e',SqlCdsNFCLI_CGC.AsString,14,'0')+justifica('d',wAux,14,' ');
              wLinha := '50'+wAux+Copy(SqlCdsNFNF_EMISSAO.AsString,7,4)+Copy(SqlCdsNFNF_EMISSAO.AsString,4,2)+Copy(SqlCdsNFNF_EMISSAO.AsString,1,2);
              wLinha := wLinha+Justifica('d',copy(SqlCdsNFCLI_UF.AsString,1,2),2,' ');
              if (SqlCdsNFNF_NUM_NFE.AsString <> EmptyStr) and (SqlCdsNFNF_NUM_NFE.AsInteger > 0) then
              begin
                wLinha := wLinha+Justifica('e',copy(SqlCdsEmpresaEMP_MODELO_NFE.AsString,1,2),2,'0');
                wLinha := wLinha+Justifica('d',copy(SqlCdsEmpresaEMP_SERIE_NFE.AsString,1,3),3,' ');
                wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,1,6),6,'0');
              end
            else
              begin
                wLinha := wLinha+Justifica('e',copy(SqlCdsParamSIN_MODE_NF.AsString,1,2),2,'0');
                wLinha := wLinha+Justifica('d',copy(SqlCdsParamSIN_SERIE_NF.AsString,1,3),3,' ');
                wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NOTANUMBER.AsString,1,6),6,'0');
              end;

              wLinha := wLinha+justifica('e',copy(wCdSCfopCFOP.AsString ,1,4),4,'0')+'P'; // P=emitente proprio ou T=terceiros
              wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[(wCdSCfopPRODUTO.AsCurrency+wCdSCfopFRETE.AsFloat+wCdSCfopDESP.AsFloat+wCdSCfopSEGURO.AsFloat+wCdSCfopIPI.AsFloat+wCdSCfopICMSSTVALOR.AsCurrency )*100])),13,'0');
              wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[wCdSCfopICMSBASE.AsCurrency*100])),13,'0');
              wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[wCdSCfopICMSVALOR.AsCurrency*100])),13,'0');
              wLinha := wLinha+Justifica('E','',13,'0');
              wLinha := wLinha+Justifica('E','',13,'0');
              wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[wCdSCfopICMSALIQ.AsCurrency*100])),4,'0');
              if (SqlCdsNFNF_CANCELADA.AsString = 'S') then
                 wLinha := wLinha+'S'
              else
                 wLinha := wLinha+'N';
              Lb_Tipo50.Caption := IntToStr(StrToInt(Lb_Tipo50.Caption)+1);
              wLinha := TiraAcento(wLinha,true);
              Writeln(wArquivo,wLinha);
              Mem_Arquivo.Lines.Add(wLinha);
              wCdSCfop.Next;
           end;
        SqlCdsNF.Next;
        Application.ProcessMessages;
    end;
  end; // endif das saidas
end;

procedure TFormSINTEGRA.Registro_53;
Var
  wI : Integer;
begin
   {CRIANDO REGISTROS TIPO 53 - Subst.Tributária - Entrada}
 // seleciou entradas e saidas ou somente entradas
 if (RbES.checked ) OR (RbE.checked ) then
  begin
   Lb_Tipo53.Caption := '0';
   SqlCdsNFE.First;
   while not SqlCdsNFE.Eof do
    begin
        if SqlCdsNFEENF_VLBASESUBTRIB.AsCurrency > 0 then
           begin
               wAux := '';
               wAux       := '';
               rFrete     := 0;
               rSuguro    := 0;
               rDespesas  := 0;
               rTemp      := 0;
              {prepara cfop dos itens}
              wQuery.Close;
              wQuery.CommandText := 'SELECT '
                                    +'e2.ENF_IT_NOTANUMBER, '
                                    +'E2.ENF_CFOP,  '
                                    +'e2.FOR_CODIGO, '
                                    +'CAST(SUM(e2.ENF_QTDE *  e2.ENF_PRECO)AS NUMERIC(18,2)) AS PRODUTOS,SUM(cast(E2.enf_it_basesubtrib AS NUMERIC(18,4))) AS enf_it_basesubtrib,SUM(cast(E2.enf_it_vlsubtrib AS NUMERIC(18,4))) AS enf_it_vlsubtrib, '
                                    +'SUM(cast(E2.enf_it_valfrete AS NUMERIC(18,4))) AS ENF_VLFRETE, SUM(cast(E2.enf_it_vlseguro AS NUMERIC(18,4))) AS ENF_VLSEGURO,SUM(cast(E2.enf_it_vldesp_aces AS NUMERIC(18,4))) AS ENF_DESP_ACES,SUM(cast(E2.enf_it_vlipi AS NUMERIC(18,4))) AS ENF_VL_IPI'
                                    +' FROM ENF_IT01 E2 '
                                    +' JOIN ENF0001 E3 ON (E3.ENF_NOTANUMBER = E2.ENF_IT_NOTANUMBER AND E3.FOR_CODIGO = E2.FOR_CODIGO)'
                                    +'where E2.ENF_CFOP is not null and e2.ENF_IT_NOTANUMBER = '''+SqlCdsNFEENF_NOTANUMBER.AsString+''' and e2.FOR_CODIGO = '''+SqlCdsNFEFOR_CODIGO.AsString+''' '
                                    +'GROUP BY '
                                    +'E2.ENF_CFOP,'
                                    +'e2.ENF_IT_NOTANUMBER,'
                                    +'e2.FOR_CODIGO '
                                    +'ORDER BY '
                                    +'E2.ENF_CFOP, '
                                    +'e2.ENF_IT_NOTANUMBER';
              wQuery.Open;
              sAdicionadoValoresNF := 'N';
              wCdSCfop.EmptyDataSet;
              if (wQuery.IsEmpty) then
                 begin
                   wCdSCfop.Append;
                   wCdSCfopCFOP.AsString          := SqlCdsNFEOPE_NATUREZA.AsString;
                   wCdSCfopPRODUTO.AsFloat        := SqlCdsNFEENF_TOT_PROD.AsFloat;
                   wCdSCfopFRETE.AsFloat          := SqlCdsNFEENF_VLFRETE.AsFloat;
                   wCdSCfopDESP.AsFloat           := SqlCdsNFEENF_DESP_ACES.AsFloat;
                   wCdSCfopSEGURO.AsFloat         := SqlCdsNFEENF_VLSEGURO.AsFloat;
                   wCdSCfopICMSBASEST.AsFloat     := SqlCdsNFEENF_VLBASESUBTRIB.AsCurrency;
                   wCdSCfopICMSSTVALOR.AsCurrency := SqlCdsNFEENF_VL_SUBTRIB.AsCurrency;
                   wCdSCfopIPI.AsCurrency         := SqlCdsNFEENF_VL_IPI.AsCurrency;
                   wCdSCfop.Post;
                 end
              else
                 while (not wQuery.Eof) do
                    begin
                      wCdSCfop.Append;
                      wCdSCfopCFOP.AsString          := wQuery.FieldByName('ENF_CFOP').AsString;
                      wCdSCfopPRODUTO.AsFloat        := wQuery.FieldByName('PRODUTOS').AsFloat;
                      wCdSCfopFRETE.AsFloat          := wQuery.FieldByName('ENF_VLFRETE').AsFloat;
                      wCdSCfopDESP.AsFloat           := wQuery.FieldByName('ENF_DESP_ACES').AsFloat;
                      wCdSCfopSEGURO.AsFloat         := wQuery.FieldByName('ENF_VLSEGURO').AsFloat;
                      wCdSCfopIPI.AsFloat            := wQuery.FieldByName('ENF_VL_IPI').AsFloat;
                      wCdSCfopICMSBASEST.AsFloat     := wQuery.FieldByName('enf_it_basesubtrib').AsFloat;
                      wCdSCfopICMSSTVALOR.AsCurrency := wQuery.FieldByName('enf_it_vlsubtrib').AsFloat;
                      wCdSCfopIPI.AsCurrency         := wQuery.FieldByName('ENF_VL_IPI').AsFloat;
                      wCdSCfop.Post;
                      wQuery.Next;
                    end;
              wCdSCfop.First;
              while (not wCdSCfop.Eof) do
                 begin
                     {Prepara INSC}
                     for wI := 1 to Length(SqlCdsNFEFOR_INSC.AsString) do
                        if ((copy(SqlCdsNFEFOR_INSC.AsString,wI,1)>='0')and(copy(SqlCdsNFEFOR_INSC.AsString,wI,1)<='9'))
                        or ((copy(SqlCdsNFEFOR_INSC.AsString,wI,1)>='a')and(copy(SqlCdsNFEFOR_INSC.AsString,wI,1)<='z'))
                        or ((copy(SqlCdsNFEFOR_INSC.AsString,wI,1)>='A')and(copy(SqlCdsNFEFOR_INSC.AsString,wI,1)<='Z'))then
                            wAux := wAux + copy(SqlCdsNFEFOR_INSC.AsString,wI,1);
                     if wAux = ''then
                        wAux := 'ISENTO';
                     {concatenando INSC, e CNPJ na var wAux}
                     wAux := justifica('e',SqlCdsNFEFOR_CGC.AsString,14,'0')+justifica('d',wAux,14,' ');
                     wLinha := '53'+wAux+Copy(SqlCdsNFEENF_ENTRADA.AsString,7,4)+Copy(SqlCdsNFEENF_ENTRADA.AsString,4,2)+Copy(SqlCdsNFEENF_ENTRADA.AsString,1,2);
                     wLinha := wLinha+Justifica('d',copy(SqlCdsNFEFOR_UF.AsString,1,2),2,' ');

                     // se preencheu chave da NFe
                    if Length(trim(SqlCdsNFEENF_CHAVE_NFE.AsString)) > 0 then        //NFE
                      begin
                       // notas do passado que nao foi preenhido modelo e serie
                       if SqlCdsNFEENF_MODELO_NF.AsString = '' then
                         begin
                          wLinha := wLinha+Justifica('e',copy('55',1,2),2,'0');  // modelo   55
                          wLinha := wLinha+Justifica('d',copy('1  ',1,3),3,' '); // serie    1
                         end
                       else
                         begin
                         // usar valor digitado no campo da entrada de nota
                         wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_MODELO_NF.AsString,1,2),2,'0');
                         wLinha := wLinha+Justifica('d',copy(IIF(sqlCdsNFEENF_SERIE.AsString = '0','1',sqlCdsNFEENF_SERIE.AsString),1,3),3,' ');
                         end;
                     end
                    else
                     // não é nota eletronica (papel)
                     begin
                      // notas do passado que nao foi preenhido modelo e serie
                      if SqlCdsNFEENF_MODELO_NF.AsString = '' then
                        begin
                         // pega default dos parametros
                         wLinha := wLinha+Justifica('e',copy(SqlCdsParamSIN_MODE_NF.AsString,1,2),2,'0');
                         wLinha := wLinha+Justifica('d',copy(SqlCdsParamSIN_SERIE_NF.AsString,1,3),3,' ');
                        end
                      else
                       begin
                        // usar valor digitado no campo da entrada de nota
                        wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_MODELO_NF.AsString,1,2),2,'0');
                        wLinha := wLinha+Justifica('d',copy(IIF(sqlCdsNFEENF_SERIE.AsString = '0','1',sqlCdsNFEENF_SERIE.AsString),1,3),3,' ');
                       end;
                      end;
                     if (Length(SqlCdsNFEENF_NOTANUMBER.AsString) > 6) then
                        wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_NOTANUMBER.AsString,Length(SqlCdsNFEENF_NOTANUMBER.AsString)-5,6),6,'0')
                     else
                        wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_NOTANUMBER.AsString,1,6),6,'0');
                     wLinha := wLinha+justifica('e',copy(wCdSCfopCFOP.AsString,1,4),4,'0');
                     wLinha := wLinha+'T';
                     wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[wCdSCfopICMSBASEST.AsCurrency*100])),13,'0');
                     wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[wCdSCfopICMSSTVALOR.AsCurrency*100])),13,'0');
                     wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[(wCdSCfopDESP.AsCurrency+wCdSCfopFRETE.AsCurrency+wCdSCfopSEGURO.AsCurrency++wCdSCfopIPI.AsCurrency)*100])),13,'0');
                     wLinha := wLinha+'N';
                     wLinha := wLinha+Justifica('d','',30,' ');
                     //
                     Lb_Tipo53.Caption := IntToStr(StrToInt(Lb_Tipo53.Caption)+1);
                     wLinha := TiraAcento(wLinha,true);
                     Writeln(wArquivo,wLinha);
                     Mem_Arquivo.Lines.Add(wLinha);
                     wAux := '';
                     wCdSCfop.Next;
                  end;
           end;
        SqlCdsNFE.Next;
        Application.ProcessMessages;
    end;
  end; // endif entradas
 // seleciou entradas e saidas ou somente entradas
 if (RbES.checked ) OR (RbS.checked ) then
  begin
   {CRIANDO REGISTROS TIPO 53 - Subst.Tributária - Saida}
   SqlCdsNF.First;
   while not SqlCdsNF.Eof do
    begin
        if SqlCdsNFNF_VLBASESUBTRIB.AsCurrency > 0 then
           begin
               wAux := '';
               wAux := '';
               rSuguro    := 0;
                rDespesas  := 0;
                rTemp      := 0;
               {prepara cfop dos itens}
               wQuery.Close;
               wQuery.CommandText := 'SELECT '
                                    +'e2.NF_IT_NOTANUMER,   '
                                    +' SUM(cast(E2.nf_qtde * E2.nf_preco AS NUMERIC(18,4))) AS PRODUTOS, '
                                    +'E2.NTP_CFOP, SUM(cast(E2.NF_SUBTRIBASE AS NUMERIC(18,4))) AS NF_SUBTRIBASE, SUM(cast(E2.NF_VLSUBST AS NUMERIC(18,4))) AS NF_VLSUBST, '
                                    +'SUM(cast(E2.nf_ifrete AS NUMERIC(18,4))) AS NF_VLFRETE, SUM(cast(E2.nf_iseguro AS NUMERIC(18,4))) AS NF_VLSEGURO, SUM(cast(E2.nf_idesp_aces AS NUMERIC(18,4))) AS NF_DESP_ACES,  SUM(cast(E2.nf_ipivalor AS NUMERIC(18,4))) AS NF_VL_IPI '
                                    +' FROM NF_IT01 E2 '
                                    +'JOIN NF0001 E3 ON (e3.NF_NOTANUMBER = E2.NF_IT_NOTANUMER and NF_CANCELADA <> ''S'') '
                                    +'where E2.NTP_CFOP is not null and E2.NF_IT_NOTANUMER =  '+RetornaNull(SqlCdsNFNF_NOTANUMBER.AsString)
                                    +'GROUP BY   '
                                    +'E2.NTP_CFOP,  '
                                    +'e2.NF_IT_NOTANUMER   '
                                    +'ORDER BY   '
                                    +'E2.NTP_CFOP, '
                                    +'e2.NF_IT_NOTANUMER';
               wQuery.Open;
               sAdicionadoValoresNF := 'N';
               wCdSCfop.EmptyDataSet;
               if (wQuery.IsEmpty) then
                  begin
                    wCdSCfop.Append;
                    wCdSCfopCFOP.AsString   := SqlCdsNFOPE_NATUREZA.AsString;
                    wCdSCfopPRODUTO.AsFloat := SqlCdsNFNF_TOT_PROD.AsFloat;
                    wCdSCfopFRETE.AsFloat   := SqlCdsNFNF_VLFRETE.AsCurrency;
                    wCdSCfopDESP.AsFloat    := SqlCdsNFNF_DESP_ACES.AsFloat;
                    wCdSCfopSEGURO.AsFloat  := SqlCdsNFNF_VLSEGURO.AsCurrency;
                    wCdSCfopIPI.AsFloat     := SqlCdsNFNF_VL_IPI.AsCurrency;
                    wCdSCfopICMSBASEST.AsCurrency := SqlCdsNFNF_VLBASESUBTRIB.AsCurrency;
                    wCdSCfopICMSSTVALOR.AsCurrency := SqlCdsNFNF_VL_SUBTRIB.AsCurrency;
                    wCdSCfop.Post;
                  end
               else
                  while (not wQuery.Eof) do
                     begin
                       wCdSCfop.Append;
                       wCdSCfopCFOP.AsString   := wQuery.FieldByName('NTP_CFOP').AsString;
                       wCdSCfopPRODUTO.AsFloat := wQuery.FieldByName('PRODUTOS').AsCurrency;
                       wCdSCfopFRETE.AsFloat   := wQuery.FieldByName('NF_VLFRETE').AsCurrency;
                       wCdSCfopDESP.AsFloat    := wQuery.FieldByName('NF_DESP_ACES').AsFloat;
                       wCdSCfopSEGURO.AsFloat  := wQuery.FieldByName('NF_VLSEGURO').AsCurrency;
                       wCdSCfopIPI.AsFloat     := wQuery.FieldByName('NF_VL_IPI').AsCurrency;
                       wCdSCfopICMSBASEST.AsCurrency := wQuery.FieldByName('NF_SUBTRIBASE').AsCurrency;
                       wCdSCfopICMSSTVALOR.AsCurrency := wQuery.FieldByName('NF_VLSUBST').AsCurrency;
                       wCdSCfop.Post;
                       wQuery.Next;
                     end;
               wCdSCfop.First;
               while (not wCdSCfop.Eof) do
                  begin
                     {Prepara INSC}
                     for wI := 1 to Length(SqlCdsNFCLI_INSC.AsString) do
                        if ((copy(SqlCdsNFCLI_INSC.AsString,wI,1)>='0')and(copy(SqlCdsNFCLI_INSC.AsString,wI,1)<='9'))
                        or ((copy(SqlCdsNFCLI_INSC.AsString,wI,1)>='a')and(copy(SqlCdsNFCLI_INSC.AsString,wI,1)<='z'))
                        or ((copy(SqlCdsNFCLI_INSC.AsString,wI,1)>='A')and(copy(SqlCdsNFCLI_INSC.AsString,wI,1)<='Z'))then
                            wAux := wAux + copy(SqlCdsNFCLI_INSC.AsString,wI,1);
                     if wAux = ''then
                        wAux := 'ISENTO';
                     {concatenando INSC, e CNPJ na var wAux}
                     wAux := justifica('e',SqlCdsNFCLI_CGC.AsString,14,'0')+justifica('d',wAux,14,' ');
                     wLinha := '53'+wAux+Copy(SqlCdsNFNF_EMISSAO.AsString,7,4)+Copy(SqlCdsNFNF_EMISSAO.AsString,4,2)+Copy(SqlCdsNFNF_EMISSAO.AsString,1,2);
                     wLinha := wLinha+Justifica('d',copy(SqlCdsNFCLI_UF.AsString,1,2),2,' ');
                     if (SqlCdsNFNF_NUM_NFE.AsString <> EmptyStr) and (SqlCdsNFNF_NUM_NFE.AsInteger > 0) then
                     begin
                       wLinha := wLinha+Justifica('e',copy(SqlCdsEmpresaEMP_MODELO_NFE.AsString,1,2),2,'0');
                       wLinha := wLinha+Justifica('d',copy(SqlCdsEmpresaEMP_SERIE_NFE.AsString,1,3),3,' ');
                       wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,1,6),6,'0');
                     end
                   else
                     begin
                       wLinha := wLinha+Justifica('e',copy(SqlCdsParamSIN_MODE_NF.AsString,1,2),2,'0');
                       wLinha := wLinha+Justifica('d',copy(SqlCdsParamSIN_SERIE_NF.AsString,1,3),3,' ');
                       wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NOTANUMBER.AsString,1,6),6,'0');
                     end;

                     wLinha := wLinha+justifica('e',copy(wCdSCfopCFOP.AsString,1,4),4,'0');
                     wLinha := wLinha+'P';
                     wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[wCdSCfopICMSBASEST.AsCurrency*100])),13,'0');
                     wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[wCdSCfopICMSSTVALOR.AsCurrency*100])),13,'0');
                     wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[(SqlCdsNFNF_VLFRETE.AsCurrency+SqlCdsNFNF_VLSEGURO.AsCurrency+SqlCdsNFNF_DESP_ACES.AsCurrency+SqlCdsNFNF_VL_IPI.AsCurrency)*100])),13,'0');
                     if (SqlCdsNFNF_CANCELADA.AsString = 'S') then
                        wLinha := wLinha+'S'
                     else
                        wLinha := wLinha+'N';
                     wLinha := wLinha+Justifica('d','',30,' ');
                     //
                     Lb_Tipo53.Caption := IntToStr(StrToInt(Lb_Tipo53.Caption)+1);
                     wLinha := TiraAcento(wLinha,true);
                     Writeln(wArquivo,wLinha);
                     Mem_Arquivo.Lines.Add(wLinha);
                     wAux := '';
                     wCdSCfop.Next;
                  end;
           end;
        SqlCdsNF.Next;
        Application.ProcessMessages;
    end;
  end;  // endif saidas  
end;

procedure TFormSINTEGRA.Registro_54;
Var
  wI : Integer;
  sCfopItem:string;
begin
 // seleciou entradas e saidas ou somente entradas
 if (RbES.checked ) OR (RbE.checked ) then
  begin
   {CRIANDO REGISTROS TIPO 54 - Entrada}
   Lb_Tipo54.Caption := '0';
   SqlCdsNFE.First;
   while not SqlCdsNFE.Eof do
    begin
        try
          wSQL1     := 'SELECT I1.ENF_IT_VALFRETE, I1.ENF_IT_VLSEGURO, I1.ENF_IT_VLDESP_ACES, I1.ENF_IT_NOTANUMBER,I1.ENF_QTDE,I1.ENF_PRECO,I1.PRD_REFER,I1.ENF_IPIALIQ,P1.PRD_DESCRI,P1.PRD_UND,P1.PRD_SITRIBUT,P1.STB_TRIBUTACAO, P1.PRD_ORIGEM,P1.PRD_TEMSUB,';
          wSQL2     := 'P1.PRD_ICMSUBS,P1.IPI_CODIGO,I1.enf_icmsaliq as ENF_ALIQ_ICMS,N1.ENF_EMISSAO,I1.ENF_CFOP,F1.FOR_UF FROM ENF_IT01 I1 JOIN PRD0000 P1 ON (P1.PRD_REFER = I1.PRD_REFER) ';
          wSQL3     := 'JOIN ENF0001 N1 ON (N1.ENF_NOTANUMBER = I1.ENF_IT_NOTANUMBER) AND (N1.EMP_CODIGO = I1.EMP_CODIGO)JOIN FOR0000 F1 ON (F1.FOR_CODIGO = N1.FOR_CODIGO) ';
          //
          wSeleciona := 'WHERE I1.ENF_IT_NOTANUMBER = '''+SqlCdsNFEENF_NOTANUMBER.AsString+''' AND I1.FOR_CODIGO = '''+SqlCdsNFEFOR_CODIGO.AsString+'''';
          wOrdem     := 'I1.ENF_IT_NOTANUMBER,I1.PRD_REFER';
          SqlCdsNFEIT01.Close;
          SqlCdsNFEIT01.CommandText := SQLDEF('RECEBER',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'I1.');
          SqlCdsNFEIT01.Open;
          SqlCdsNFEIT01.First;
          //

          Cds54_complemento.EmptyDataSet;

          for wI := 1 to SqlCdsNFEIT01.RecordCount do
             begin
               wVlDescto := 0;
               wLinha :=   '54'+justifica('e',SqlCdsNFEFOR_CGC.AsString,14,'0');
               // se preencheu chave da NFe
               if Length(trim(SqlCdsNFEENF_CHAVE_NFE.AsString)) > 0 then        //NFE
                  begin
                    // notas do passado que nao foi preenhido modelo e serie
                    if SqlCdsNFEENF_MODELO_NF.AsString = '' then
                       begin
                          wLinha := wLinha+Justifica('e',copy('55',1,2),2,'0');  // modelo   55
                          wLinha := wLinha+Justifica('d',copy('1  ',1,3),3,' '); // serie    1
                       end
                    else
                       begin
                          // usar valor digitado no campo da entrada de nota
                          wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_MODELO_NF.AsString,1,2),2,'0');
                          wLinha := wLinha+Justifica('d',copy(IIF(sqlCdsNFEENF_SERIE.AsString = '0','1',sqlCdsNFEENF_SERIE.AsString),1,3),3,' ');
                       end;
                  end
               else
                // não é nota eletronica (papel)
                begin
                 // notas do passado que nao foi preenhido modelo e serie
                 if SqlCdsNFEENF_MODELO_NF.AsString = '' then
                   begin
                    // pega default dos parametros
                    wLinha := wLinha+Justifica('e',copy(SqlCdsParamSIN_MODE_NF.AsString,1,2),2,'0');
                    wLinha := wLinha+Justifica('d',copy(SqlCdsParamSIN_SERIE_NF.AsString,1,3),3,' ');
                   end
                 else
                  begin
                   // usar valor digitado no campo da entrada de nota
                   wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_MODELO_NF.AsString,1,2),2,'0');
                   wLinha := wLinha+Justifica('d',copy(IIF(sqlCdsNFEENF_SERIE.AsString = '0','1',sqlCdsNFEENF_SERIE.AsString),1,3),3,' ');
                  end;
                 end;
                 if (Length(SqlCdsNFEENF_NOTANUMBER.AsString) > 6) then
                    wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_NOTANUMBER.AsString,Length(SqlCdsNFEENF_NOTANUMBER.AsString)-5,6),6,'0')
                 else
                    wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_NOTANUMBER.AsString,1,6),6,'0');
                 wLinha := wLinha+justifica('e',copy(IIF(SqlCdsNFEIT01ENF_CFOP.AsString <> '',SqlCdsNFEIT01ENF_CFOP.AsString,SqlCdsNFEOPE_NATUREZA.AsString),1,4),4,'0');
                 {Seta TbProduto}
                 wLinha := wLinha+Justifica('e',SqlCdsNFEIT01PRD_ORIGEM.AsString+SqlCdsNFEIT01STB_TRIBUTACAO.AsString,3,'0');
                 wLinha := wLinha+justifica('e',copy(IntToStr(wI),1,3),3,'0'); //numero do item
                 wLinha := wLinha+justifica('d',copy(SqlCdsNFEIT01PRD_REFER.AsString,1,14),14,' ');

                 IncluirRederencia75(SqlCdsNFEIT01PRD_REFER.AsString);

                 {Quantidade c\ 3 casa decimais}
                 wAux   := SemMilhar(Format('%.0n',[SqlCdsNFEIT01ENF_QTDE.AsCurrency*1000]));
                 wLinha := wLinha+justifica('e',copy(wAux,1,11),11,'0');
                 {Valor c\ 2 casas decimais}
                 wAux   := SemMilhar(Format('%.0n',[SqlCdsNFEIT01ENF_PRECO.AsCurrency*SqlCdsNFEIT01ENF_QTDE.AsCurrency*100]));
                 wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                 wVal   := wVlDescto;
                 wAux   := SemMilhar(Format('%.0n',[wVal*100]));
                 wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                 {Base de Calculo do ICMS c\ 2 casas decimais}
                 wVal   := SqlCdsNFEIT01ENF_PRECO.AsCurrency*SqlCdsNFEIT01ENF_QTDE.AsCurrency;
                 wVal   := wVal - (wVlDescto * SqlCdsNFEIT01ENF_QTDE.AsCurrency);
                 wAux   := SemMilhar(Format('%.0n',[(wVal)*100]));
                 wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                 {Base de Calculo do ICMS SUBST. c/2 casas decimais}
                 if (SqlCdsNFEIT01PRD_TEMSUB.AsString = 'S') then
                    begin
                        wVal   := SqlCdsNFEIT01ENF_PRECO.AsCurrency * SqlCdsNFEIT01ENF_QTDE.AsCurrency;
                        wVal   := wVal - wVlDescto;
                        wVal   := wVal * SqlCdsNFEIT01PRD_ICMSUBS.AsCurrency;
                        wAux   := SemMilhar(Format('%.0n',[(wVal)*100]));
                        wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                    end
                 else
                    begin
                        wLinha := wLinha+'000000000000';
                    end;
                 {Aliquota IPI}
                 wLinha := wLinha+'000000000000';
                 {Aliquota ICMS}
                 wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[SqlCdsNFEIT01ENF_ALIQ_ICMS.AsCurrency*100])),4,'0');
                 //
                 Lb_Tipo54.Caption := IntToStr(StrToInt(Lb_Tipo54.Caption)+1);
                 wLinha := TiraAcento(wLinha,true);
                 Writeln(wArquivo,wLinha);
                 Mem_Arquivo.Lines.Add(wLinha);


                 sCfopItem := justifica('e',copy(IIF(SqlCdsNFEIT01ENF_CFOP.AsString <> '',SqlCdsNFEIT01ENF_CFOP.AsString,SqlCdsNFEOPE_NATUREZA.AsString),1,4),4,'0');

                 //Frete
                 if (SqlCdsNFEIT01ENF_IT_VALFRETE.AsFloat > 0) then
                    begin
                       if (Cds54_complemento.Locate('CFOP',sCfopItem,[])) then
                          begin
                              Cds54_complemento.Edit;
                              Cds54_complementoFrete.AsFloat := Cds54_complementoFrete.AsFloat + SqlCdsNFEIT01ENF_IT_VALFRETE.AsFloat;
                              Cds54_complemento.Post;
                          end
                       else
                          begin
                              Cds54_complemento.Insert;
                              Cds54_complementoCFOP.AsString := sCfopItem;
                              Cds54_complementoFrete.AsFloat := Cds54_complementoFrete.AsFloat + SqlCdsNFEIT01ENF_IT_VALFRETE.AsFloat;
                              Cds54_complemento.Post;
                          end;
                    end;

                 //Seguro
                 if (SqlCdsNFEIT01ENF_IT_VLSEGURO.AsFloat > 0) then
                    begin
                       if (Cds54_complemento.Locate('CFOP',sCfopItem,[])) then
                          begin
                              Cds54_complemento.Edit;
                              Cds54_complementoSeguro.AsFloat := Cds54_complementoSeguro.AsFloat + SqlCdsNFEIT01ENF_IT_VLSEGURO.AsFloat;
                              Cds54_complemento.Post;
                          end
                       else
                          begin
                              Cds54_complemento.Insert;
                              Cds54_complementoCFOP.AsString := sCfopItem;
                              Cds54_complementoSeguro.AsFloat := Cds54_complementoSeguro.AsFloat + SqlCdsNFEIT01ENF_IT_VLSEGURO.AsFloat;
                              Cds54_complemento.Post;
                          end;
                    end;

                  //Despesas
                 if (SqlCdsNFEIT01ENF_IT_VLDESP_ACES.AsFloat > 0) then
                    begin
                       if (Cds54_complemento.Locate('CFOP',sCfopItem,[])) then
                          begin
                              Cds54_complemento.Edit;
                              Cds54_complementoDespesas.AsFloat := Cds54_complementoDespesas.AsFloat + SqlCdsNFEIT01ENF_IT_VLDESP_ACES.AsFloat;
                              Cds54_complemento.Post;
                          end
                       else
                          begin
                              Cds54_complemento.Insert;
                              Cds54_complementoCFOP.AsString := sCfopItem;
                              Cds54_complementoDespesas.AsFloat := Cds54_complementoDespesas.AsFloat + SqlCdsNFEIT01ENF_IT_VLDESP_ACES.AsFloat;
                              Cds54_complemento.Post;
                          end;
                    end;



                 SqlCdsNFEIT01.Next;
                 Application.ProcessMessages;
             end;

          if (not Cds54_complemento.IsEmpty) then
            begin
               Cds54_complemento.First;
               while (not Cds54_complemento.Eof) do
                  begin
                     if (Cds54_complementoCFOP.AsString <> '') then
                        begin
                           //Frete
                           if (Cds54_complementoFrete.AsFloat > 0) then
                              begin
                                  wLinha :=   '54'+justifica('e',SqlCdsNFEFOR_CGC.AsString,14,'0');
                                  // se preencheu chave da NFe
                                  if Length(trim(SqlCdsNFEENF_CHAVE_NFE.AsString)) > 0 then        //NFE
                                    begin
                                     // notas do passado que nao foi preenhido modelo e serie
                                     if SqlCdsNFEENF_MODELO_NF.AsString = '' then
                                       begin
                                        wLinha := wLinha+Justifica('e',copy('55',1,2),2,'0');  // modelo   55
                                        wLinha := wLinha+Justifica('d',copy('1  ',1,3),3,' '); // serie    1
                                       end
                                     else
                                       begin
                                       // usar valor digitado no campo da entrada de nota
                                       wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_MODELO_NF.AsString,1,2),2,'0');
                                       wLinha := wLinha+Justifica('d',copy(IIF(sqlCdsNFEENF_SERIE.AsString = '0','1',sqlCdsNFEENF_SERIE.AsString),1,3),3,' ');
                                       end;
                                   end
                                  else
                                   begin
                                    // notas do passado que nao foi preenhido modelo e serie
                                    if SqlCdsNFEENF_MODELO_NF.AsString = '' then
                                      begin
                                       // pega default dos parametros
                                       wLinha := wLinha+Justifica('e',copy(SqlCdsParamSIN_MODE_NF.AsString,1,2),2,'0');
                                       wLinha := wLinha+Justifica('d',copy(SqlCdsParamSIN_SERIE_NF.AsString,1,3),3,' ');
                                      end
                                    else
                                     begin
                                      // usar valor digitado no campo da entrada de nota
                                      wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_MODELO_NF.AsString,1,2),2,'0');
                                      wLinha := wLinha+Justifica('d',copy(IIF(sqlCdsNFEENF_SERIE.AsString = '0','1',sqlCdsNFEENF_SERIE.AsString),1,3),3,' ');
                                     end;
                                    end;
                                    if (Length(SqlCdsNFEENF_NOTANUMBER.AsString) > 6) then
                                       wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_NOTANUMBER.AsString,Length(SqlCdsNFEENF_NOTANUMBER.AsString)-5,6),6,'0')
                                    else
                                       wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_NOTANUMBER.AsString,1,6),6,'0');
                                    wLinha := wLinha+justifica('e',Cds54_complementoCFOP.AsString,4,'0');
                                    {Seta TbProduto}
                                    wLinha := wLinha+justifica('d','',3,' ');
                                    wLinha := wLinha+'991'; //numero do frete
                                    wLinha := wLinha+justifica('d','',14,' ');

                                    {Quantidade c\ 3 casa decimais}
                                    wAux   := '';
                                    wLinha := wLinha+justifica('e',copy(wAux,1,11),11,'0');
                                    {Valor c\ 2 casas decimais}
                                    wAux   := '';
                                    wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                                    wVal   := Cds54_complementoFrete.AsFloat;
                                    wAux   := SemMilhar(Format('%.0n',[wVal*100]));
                                    wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                                    {Base de Calculo do ICMS c\ 2 casas decimais}
                                    wVal   := 0;
                                    wAux   := SemMilhar(Format('%.0n',[(wVal)*100]));
                                    wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                                    {Base de Calculo do ICMS SUBST. c/2 casas decimais}
                                    wLinha := wLinha+'000000000000';
                                    {Aliquota IPI}
                                    wLinha := wLinha+'000000000000';
                                    {Aliquota ICMS}
                                    wLinha := wLinha+Justifica('E','',4,'0');
                                    //
                                    Lb_Tipo54.Caption := IntToStr(StrToInt(Lb_Tipo54.Caption)+1);
                                    wLinha := TiraAcento(wLinha,true);
                                    Writeln(wArquivo,wLinha);
                                    Mem_Arquivo.Lines.Add(wLinha);
                              end;

                           //Seguro
                           if (Cds54_complementoSeguro.AsFloat > 0) then
                              begin
                                  wLinha :=   '54'+justifica('e',SqlCdsNFEFOR_CGC.AsString,14,'0');
                                  // se preencheu chave da NFe
                                  if Length(trim(SqlCdsNFEENF_CHAVE_NFE.AsString)) > 0 then        //NFE
                                    begin
                                     // notas do passado que nao foi preenhido modelo e serie
                                     if SqlCdsNFEENF_MODELO_NF.AsString = '' then
                                       begin
                                        wLinha := wLinha+Justifica('e',copy('55',1,2),2,'0');  // modelo   55
                                        wLinha := wLinha+Justifica('d',copy('1  ',1,3),3,' '); // serie    1
                                       end
                                     else
                                       begin
                                       // usar valor digitado no campo da entrada de nota
                                       wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_MODELO_NF.AsString,1,2),2,'0');
                                       wLinha := wLinha+Justifica('d',copy(IIF(sqlCdsNFEENF_SERIE.AsString = '0','1',sqlCdsNFEENF_SERIE.AsString),1,3),3,' ');
                                       end;
                                   end
                                  else
                                   begin
                                    // notas do passado que nao foi preenhido modelo e serie
                                    if SqlCdsNFEENF_MODELO_NF.AsString = '' then
                                      begin
                                       // pega default dos parametros
                                       wLinha := wLinha+Justifica('e',copy(SqlCdsParamSIN_MODE_NF.AsString,1,2),2,'0');
                                       wLinha := wLinha+Justifica('d',copy(SqlCdsParamSIN_SERIE_NF.AsString,1,3),3,' ');
                                      end
                                    else
                                     begin
                                      // usar valor digitado no campo da entrada de nota
                                      wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_MODELO_NF.AsString,1,2),2,'0');
                                      wLinha := wLinha+Justifica('d',copy(IIF(sqlCdsNFEENF_SERIE.AsString = '0','1',sqlCdsNFEENF_SERIE.AsString),1,3),3,' ');
                                     end;
                                    end;
                                    if (Length(SqlCdsNFEENF_NOTANUMBER.AsString) > 6) then
                                       wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_NOTANUMBER.AsString,Length(SqlCdsNFEENF_NOTANUMBER.AsString)-5,6),6,'0')
                                    else
                                       wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_NOTANUMBER.AsString,1,6),6,'0');
                                    wLinha := wLinha+justifica('e',Cds54_complementoCFOP.AsString,4,'0');
                                    {Seta TbProduto}
                                    wLinha := wLinha+justifica('d','',3,' ');
                                    wLinha := wLinha+'992'; //numero do frete
                                    wLinha := wLinha+justifica('d','',14,' ');

                                    {Quantidade c\ 3 casa decimais}
                                    wAux   := '';
                                    wLinha := wLinha+justifica('e',copy(wAux,1,11),11,'0');
                                    {Valor c\ 2 casas decimais}
                                    wAux   := '';
                                    wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                                    wVal   := Cds54_complementoSeguro.AsFloat;
                                    wAux   := SemMilhar(Format('%.0n',[wVal*100]));
                                    wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                                    {Base de Calculo do ICMS c\ 2 casas decimais}
                                    wVal   := 0;
                                    wAux   := SemMilhar(Format('%.0n',[(wVal)*100]));
                                    wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                                    {Base de Calculo do ICMS SUBST. c/2 casas decimais}
                                    wLinha := wLinha+'000000000000';
                                    {Aliquota IPI}
                                    wLinha := wLinha+'000000000000';
                                    {Aliquota ICMS}
                                    wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[0])),4,'0');
                                    //
                                    Lb_Tipo54.Caption := IntToStr(StrToInt(Lb_Tipo54.Caption)+1);
                                    wLinha := TiraAcento(wLinha,true);
                                    Writeln(wArquivo,wLinha);
                                    Mem_Arquivo.Lines.Add(wLinha);
                              end;

                           //Despesas
                           if (Cds54_complementoDespesas.AsFloat > 0) then
                              begin
                                  wLinha :=   '54'+justifica('e',SqlCdsNFEFOR_CGC.AsString,14,'0');
                                  // se preencheu chave da NFe
                                  if Length(trim(SqlCdsNFEENF_CHAVE_NFE.AsString)) > 0 then        //NFE
                                    begin
                                     // notas do passado que nao foi preenhido modelo e serie
                                     if SqlCdsNFEENF_MODELO_NF.AsString = '' then
                                       begin
                                        wLinha := wLinha+Justifica('e',copy('55',1,2),2,'0');  // modelo   55
                                        wLinha := wLinha+Justifica('d',copy('1  ',1,3),3,' '); // serie    1
                                       end
                                     else
                                       begin
                                       // usar valor digitado no campo da entrada de nota
                                       wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_MODELO_NF.AsString,1,2),2,'0');
                                       wLinha := wLinha+Justifica('d',copy(IIF(sqlCdsNFEENF_SERIE.AsString = '0','1',sqlCdsNFEENF_SERIE.AsString),1,3),3,' ');
                                       end;
                                   end
                                  else
                                   begin
                                    // notas do passado que nao foi preenhido modelo e serie
                                    if SqlCdsNFEENF_MODELO_NF.AsString = '' then
                                      begin
                                       // pega default dos parametros
                                       wLinha := wLinha+Justifica('e',copy(SqlCdsParamSIN_MODE_NF.AsString,1,2),2,'0');
                                       wLinha := wLinha+Justifica('d',copy(SqlCdsParamSIN_SERIE_NF.AsString,1,3),3,' ');
                                      end
                                    else
                                     begin
                                      // usar valor digitado no campo da entrada de nota
                                      wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_MODELO_NF.AsString,1,2),2,'0');
                                      wLinha := wLinha+Justifica('d',copy(IIF(sqlCdsNFEENF_SERIE.AsString = '0','1',sqlCdsNFEENF_SERIE.AsString),1,3),3,' ');
                                     end;
                                    end;
                                    if (Length(SqlCdsNFEENF_NOTANUMBER.AsString) > 6) then
                                       wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_NOTANUMBER.AsString,Length(SqlCdsNFEENF_NOTANUMBER.AsString)-5,6),6,'0')
                                    else
                                       wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_NOTANUMBER.AsString,1,6),6,'0');
                                    wLinha := wLinha+justifica('e',Cds54_complementoCFOP.AsString,4,'0');
                                    {Seta TbProduto}
                                    wLinha := wLinha+justifica('d','',3,' ');
                                    wLinha := wLinha+'999'; //numero do frete
                                    wLinha := wLinha+justifica('d','',14,' ');

                                    {Quantidade c\ 3 casa decimais}
                                      wAux   := '';
                                    wLinha := wLinha+justifica('e',copy(wAux,1,11),11,'0');
                                    {Valor c\ 2 casas decimais}
                                    wAux   := '';
                                    wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                                    wVal   := Cds54_complementoDespesas.AsFloat;
                                    wAux   := SemMilhar(Format('%.0n',[wVal*100]));
                                    wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                                    {Base de Calculo do ICMS c\ 2 casas decimais}
                                    wVal   := 0;
                                    wAux   := SemMilhar(Format('%.0n',[(wVal)*100]));
                                    wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                                    {Base de Calculo do ICMS SUBST. c/2 casas decimais}
                                    wLinha := wLinha+'000000000000';
                                    {Aliquota IPI}
                                    wLinha := wLinha+'000000000000';
                                    {Aliquota ICMS}
                                    wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[0])),4,'0');
                                    //
                                    Lb_Tipo54.Caption := IntToStr(StrToInt(Lb_Tipo54.Caption)+1);
                                    wLinha := TiraAcento(wLinha,true);
                                    Writeln(wArquivo,wLinha);
                                    Mem_Arquivo.Lines.Add(wLinha);
                              end;
                        end;
                     Cds54_complemento.Next;
                  end;
            end;

          SqlCdsNFE.Next;
        except on E:EDataBaseError do
          uteis.erro  (pchar('Erro ao localizar os itens da nota fiscal ! '+e.message))
        end;
    end;
   end;  // endif entradas
   {CRIANDO REGISTROS TIPO 54 - Saida}
 // seleciou entradas e saidas ou somente saidas
 if (RbES.checked ) OR (RbS.checked ) then
  begin
   SqlCdsNF.First;
   while not SqlCdsNF.Eof do
    begin
        try
          wSql1 := 'SELECT N1.NF_IFRETE, N1.NF_ISEGURO, N1.NF_IDESP_ACES ,N1.NF_IT_NOTANUMER,N1.NF_QTDE,N1.NF_PRECO,N1.PRD_REFER,N1.NF_IPIALIQ,N1.NF_ICMSALIQ,P1.PRD_DESCRI,P1.PRD_UND,P1.PRD_SITRIBUT,P1.STB_TRIBUTACAO, P1.PRD_ORIGEM,P1.PRD_TEMSUB,P1.PRD_ICMSUBS'+
                   ',P1.IPI_CODIGO,N2.NF_EMISSAO,N2.NF_INTERNO,N2.NF_CANCELADA,';
          wSql2 := 'N2.NF_ALIQ_ICMS,C1.CLI_UF,N2.NF_NUM_NFE FROM NF_IT01 N1 JOIN PRD0000 P1 ON (P1.PRD_REFER = N1.PRD_REFER) JOIN NF0001 N2 ON (N2.NF_NOTANUMBER = N1.NF_IT_NOTANUMER) AND (N2.EMP_CODIGO = N1.EMP_CODIGO) JOIN CLI0000 C1 ON (C1.CLI_CODIGO = N2.CLI_CODIGO) ';
          wSeleciona := 'WHERE N1.NF_IT_NOTANUMER = '''+SqlCdsNFNF_NOTANUMBER.AsString+'''';
          wOrdem     := 'N1.NF_IT_NOTANUMER';
          SqlCdsNFIT01.Close;
          SqlCdsNFIT01.CommandText := SQLDEF('RECEBER',wSql1+wSql2,wSeleciona,wOrdem,'N1.');
          SqlCdsNFIT01.Open;
          SqlCdsNFIT01.First;

          Cds54_complemento.EmptyDataSet;


          for wI := 1 to SqlCdsNFIT01.RecordCount do
             begin
                 wLinha := '54'+justifica('e',SqlCdsNFCLI_CGC.AsString,14,'0');
                 if (SqlCdsNFNF_NUM_NFE.AsString <> EmptyStr) and (SqlCdsNFNF_NUM_NFE.AsInteger > 0) then
                    begin
                      wLinha := wLinha+Justifica('e',copy(SqlCdsEmpresaEMP_MODELO_NFE.AsString,1,2),2,'0');
                      wLinha := wLinha+Justifica('d',copy(SqlCdsEmpresaEMP_SERIE_NFE.AsString,1,3),3,' ');
                      //wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,1,6),6,'0');

                      if (Length(SqlCdsNFNF_NUM_NFE.AsString) > 6) then
                         wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,Length(SqlCdsNFNF_NUM_NFE.AsString)-5,6),6,'0')
                      else
                         wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,1,6),6,'0');

                    end
                 else
                    begin
                      wLinha := wLinha+Justifica('e',copy(SqlCdsParamSIN_MODE_NF.AsString,1,2),2,'0');
                      wLinha := wLinha+Justifica('d',copy(SqlCdsParamSIN_SERIE_NF.AsString,1,3),3,' ');
                      //wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NOTANUMBER.AsString,1,6),6,'0');
                      if (Length(SqlCdsNFNF_NUM_NFE.AsString) > 6) then
                         wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,Length(SqlCdsNFNF_NUM_NFE.AsString)-5,6),6,'0')
                      else
                         wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,1,6),6,'0');
                    end;

                 wLinha := wLinha+justifica('e',copy(SqlCdsNFOPE_NATUREZA.AsString,1,4),4,'0');
                 {Seta TbProduto}
                 wLinha := wLinha+Justifica('e',SqlCdsNFIT01PRD_ORIGEM.AsString+SqlCdsNFIT01STB_TRIBUTACAO.AsString,3,'0');
                 wLinha := wLinha+justifica('e',copy(IntToStr(wI),1,3),3,'0'); //numero do item
                 wLinha := wLinha+justifica('d',copy(SqlCdsNFIT01PRD_REFER.AsString,1,14),14,' ');

                 IncluirRederencia75(SqlCdsNFIT01PRD_REFER.AsString);

                   {Quantidade c\ 3 casa decimais}
                 wAux   := SemMilhar(Format('%.0n',[SqlCdsNFIT01NF_QTDE.AsCurrency*1000]));
                 wLinha := wLinha+justifica('e',copy(wAux,1,11),11,'0');
                 {Valor c\ 2 casas decimais}
                 wAux   := SemMilhar(Format('%.0n',[SqlCdsNFIT01NF_PRECO.AsCurrency*SqlCdsNFIT01NF_QTDE.AsCurrency*100]));
                 wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                 {Desconto c\ 2 casas decimais}
                 if (SqlCdsNFNF_VL_DESCTO.AsCurrency > 0) Then
                    begin
                        if (SqlCdsNFNF_TP_DESCTO.AsString = 'P') then
                           begin
                               wCALCULO  := 0;
                               wDesc     := 0;
                               wCALCULO  := ( 100      - (( 100      * SqlCdsNFNF_PC_DESCTO1.AsCurrency) / 100));
                               wCALCULO  := ( wCALCULO - (( wCALCULO * SqlCdsNFNF_PC_DESCTO2.AsCurrency) / 100));
                               {mostra o resultado}
                               wDesc     := (100 - wCALCULO );
                               wVlDescto := ((SqlCdsNFIT01NF_PRECO.AsCurrency * wDesc) /100);
                           end;
                    end;
                 wVal   := wVlDescto;
                 wAux   := SemMilhar(Format('%.0n',[wVal*100]));
                 wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                 {Base de Calculo do ICMS c\ 2 casas decimais}
                 wVal   := SqlCdsNFIT01NF_PRECO.AsCurrency*SqlCdsNFIT01NF_QTDE.AsCurrency;
                 wVal   := wVal-(wVlDescto * SqlCdsNFIT01NF_QTDE.AsCurrency);
                 wAux   := SemMilhar(Format('%.0n',[(wVal)*100]));
                 wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                 {Base de Calculo do ICMS SUBST. c\ 2 casas decimais}
                 if (SqlCdsNFIT01PRD_TEMSUB.AsString = 'S') then
                    begin
                        wVal   := SqlCdsNFIT01NF_PRECO.AsCurrency*SqlCdsNFIT01NF_QTDE.AsCurrency;
                        wVal   := wVal-wVlDescto;
                        wVal   := wVal*SqlCdsNFIT01PRD_ICMSUBS.AsCurrency;
                        wAux   := SemMilhar(Format('%.0n',[(wVal)*100]));
                        wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                    end
                 else
                    begin
                        wLinha := wLinha+'000000000000';
                    end;
                 {Aliquota IPI}
                 wLinha := wLinha+'000000000000';
                 {Aliquota ICMS}
                 wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[SqlCdsNFIT01NF_ICMSALIQ.AsCurrency*100])),4,'0');
                 //
                 Lb_Tipo54.Caption := IntToStr(StrToInt(Lb_Tipo54.Caption)+1);
                 wLinha            := TiraAcento(wLinha,true);
                 Writeln(wArquivo,wLinha);
                 Mem_Arquivo.Lines.Add(wLinha);


                 sCfopItem := justifica('e',copy(SqlCdsNFOPE_NATUREZA.AsString,1,4),4,'0');

                 //Frete
                 if (SqlCdsNFIT01NF_IFRETE.AsFloat > 0) then
                    begin
                       if (Cds54_complemento.Locate('CFOP',sCfopItem,[])) then
                          begin
                              Cds54_complemento.Edit;
                              Cds54_complementoFrete.AsFloat := Cds54_complementoFrete.AsFloat + SqlCdsNFIT01NF_IFRETE.AsFloat;
                              Cds54_complemento.Post;
                          end
                       else
                          begin
                              Cds54_complemento.Insert;
                              Cds54_complementoCFOP.AsString := sCfopItem;
                              Cds54_complementoFrete.AsFloat := Cds54_complementoFrete.AsFloat + SqlCdsNFIT01NF_IFRETE.AsFloat;
                              Cds54_complemento.Post;
                          end;
                    end;

                 //Seguro
                 if (SqlCdsNFIT01NF_ISEGURO.AsFloat > 0) then
                    begin
                       if (Cds54_complemento.Locate('CFOP',sCfopItem,[])) then
                          begin
                              Cds54_complemento.Edit;
                              Cds54_complementoSeguro.AsFloat := Cds54_complementoSeguro.AsFloat + SqlCdsNFIT01NF_ISEGURO.AsFloat;
                              Cds54_complemento.Post;
                          end
                       else
                          begin
                              Cds54_complemento.Insert;
                              Cds54_complementoCFOP.AsString := sCfopItem;
                              Cds54_complementoSeguro.AsFloat := Cds54_complementoSeguro.AsFloat + SqlCdsNFIT01NF_ISEGURO.AsFloat;
                              Cds54_complemento.Post;
                          end;
                    end;

                  //Despesas
                 if (SqlCdsNFIT01NF_IDESP_ACES.AsFloat > 0) then
                    begin
                       if (Cds54_complemento.Locate('CFOP',sCfopItem,[])) then
                          begin
                              Cds54_complemento.Edit;
                              Cds54_complementoDespesas.AsFloat := Cds54_complementoDespesas.AsFloat + SqlCdsNFIT01NF_IDESP_ACES.AsFloat;
                              Cds54_complemento.Post;
                          end
                       else
                          begin
                              Cds54_complemento.Insert;
                              Cds54_complementoCFOP.AsString := sCfopItem;
                              Cds54_complementoDespesas.AsFloat := Cds54_complementoDespesas.AsFloat + SqlCdsNFIT01NF_IDESP_ACES.AsFloat;
                              Cds54_complemento.Post;
                          end;
                    end;

                 SqlCdsNFIT01.Next;
                 Application.ProcessMessages;
             end;
          if (not Cds54_complemento.IsEmpty) then
            begin
               Cds54_complemento.First;
               while (not Cds54_complemento.Eof) do
                  begin
                     if (Cds54_complementoCFOP.AsString <> '') then
                        begin
                           //Frete
                           if (Cds54_complementoFrete.AsFloat > 0) then
                             begin
                                wLinha := '54'+justifica('e',SqlCdsNFCLI_CGC.AsString,14,'0');
                                if (SqlCdsNFNF_NUM_NFE.AsString <> EmptyStr) and (SqlCdsNFNF_NUM_NFE.AsInteger > 0) then
                                   begin
                                     wLinha := wLinha+Justifica('e',copy(SqlCdsEmpresaEMP_MODELO_NFE.AsString,1,2),2,'0');
                                     wLinha := wLinha+Justifica('d',copy(SqlCdsEmpresaEMP_SERIE_NFE.AsString,1,3),3,' ');
                                     //wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,1,6),6,'0');

                                     if (Length(SqlCdsNFNF_NUM_NFE.AsString) > 6) then
                                        wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,Length(SqlCdsNFNF_NUM_NFE.AsString)-5,6),6,'0')
                                     else
                                        wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,1,6),6,'0');

                                   end
                                else
                                   begin
                                     wLinha := wLinha+Justifica('e',copy(SqlCdsParamSIN_MODE_NF.AsString,1,2),2,'0');
                                     wLinha := wLinha+Justifica('d',copy(SqlCdsParamSIN_SERIE_NF.AsString,1,3),3,' ');
                                     //wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NOTANUMBER.AsString,1,6),6,'0');
                                     if (Length(SqlCdsNFNF_NUM_NFE.AsString) > 6) then
                                        wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,Length(SqlCdsNFNF_NUM_NFE.AsString)-5,6),6,'0')
                                     else
                                        wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,1,6),6,'0');
                                   end;

                                wLinha := wLinha+justifica('e',copy(Cds54_complementoCFOP.AsString,1,4),4,'0');
                                {Seta TbProduto}
                                wLinha := wLinha+justifica('d','',3,' ');
                                wLinha := wLinha+'991'; //numero do frete
                                wLinha := wLinha+justifica('d','',14,' ');

                                  {Quantidade c\ 3 casa decimais}
                                wAux   := '';
                                wLinha := wLinha+justifica('e',copy(wAux,1,11),11,'0');
                                {Valor c\ 2 casas decimais}
                                wAux   := '';
                                wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                                wVal   := Cds54_complementoFrete.AsFloat;
                                wAux   := SemMilhar(Format('%.0n',[wVal*100]));
                                wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                                {Base de Calculo do ICMS c\ 2 casas decimais}
                                wVal   := 0;
                                wAux   := SemMilhar(Format('%.0n',[(wVal)*100]));
                                wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                                wLinha := wLinha+'000000000000';
                                {Aliquota IPI}
                                wLinha := wLinha+'000000000000';
                                {Aliquota ICMS}
                                wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[0])),4,'0');
                                //
                                Lb_Tipo54.Caption := IntToStr(StrToInt(Lb_Tipo54.Caption)+1);
                                wLinha            := TiraAcento(wLinha,true);
                                Writeln(wArquivo,wLinha);
                                Mem_Arquivo.Lines.Add(wLinha);
                             end;

                           //Seguro
                           if (Cds54_complementoSeguro.AsFloat > 0) then
                             begin
                                wLinha := '54'+justifica('e',SqlCdsNFCLI_CGC.AsString,14,'0');
                                if (SqlCdsNFNF_NUM_NFE.AsString <> EmptyStr) and (SqlCdsNFNF_NUM_NFE.AsInteger > 0) then
                                   begin
                                     wLinha := wLinha+Justifica('e',copy(SqlCdsEmpresaEMP_MODELO_NFE.AsString,1,2),2,'0');
                                     wLinha := wLinha+Justifica('d',copy(SqlCdsEmpresaEMP_SERIE_NFE.AsString,1,3),3,' ');
                                     //wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,1,6),6,'0');

                                     if (Length(SqlCdsNFNF_NUM_NFE.AsString) > 6) then
                                        wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,Length(SqlCdsNFNF_NUM_NFE.AsString)-5,6),6,'0')
                                     else
                                        wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,1,6),6,'0');

                                   end
                                else
                                   begin
                                     wLinha := wLinha+Justifica('e',copy(SqlCdsParamSIN_MODE_NF.AsString,1,2),2,'0');
                                     wLinha := wLinha+Justifica('d',copy(SqlCdsParamSIN_SERIE_NF.AsString,1,3),3,' ');
                                     //wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NOTANUMBER.AsString,1,6),6,'0');
                                     if (Length(SqlCdsNFNF_NUM_NFE.AsString) > 6) then
                                        wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,Length(SqlCdsNFNF_NUM_NFE.AsString)-5,6),6,'0')
                                     else
                                        wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,1,6),6,'0');
                                   end;

                                wLinha := wLinha+justifica('e',copy(Cds54_complementoCFOP.AsString,1,4),4,'0');
                                {Seta TbProduto}
                                wLinha := wLinha+justifica('d','',3,' ');
                                wLinha := wLinha+'992'; //numero do frete
                                wLinha := wLinha+justifica('d','',14,' ');

                                  {Quantidade c\ 3 casa decimais}
                                wAux   := '';
                                wLinha := wLinha+justifica('e',copy(wAux,1,11),11,'0');
                                {Valor c\ 2 casas decimais}
                                wAux   := '';
                                wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                                wVal   := Cds54_complementoSeguro.AsFloat;
                                wAux   := SemMilhar(Format('%.0n',[wVal*100]));
                                wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                                {Base de Calculo do ICMS c\ 2 casas decimais}
                                wVal   := 0;
                                wAux   := SemMilhar(Format('%.0n',[(wVal)*100]));
                                wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                                wLinha := wLinha+'000000000000';
                                {Aliquota IPI}
                                wLinha := wLinha+'000000000000';
                                {Aliquota ICMS}
                                wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[0])),4,'0');
                                //
                                Lb_Tipo54.Caption := IntToStr(StrToInt(Lb_Tipo54.Caption)+1);
                                wLinha            := TiraAcento(wLinha,true);
                                Writeln(wArquivo,wLinha);
                                Mem_Arquivo.Lines.Add(wLinha);
                             end;

                           //Despesas
                           if (Cds54_complementoDespesas.AsFloat > 0) then
                             begin
                                wLinha := '54'+justifica('e',SqlCdsNFCLI_CGC.AsString,14,'0');
                                if (SqlCdsNFNF_NUM_NFE.AsString <> EmptyStr) and (SqlCdsNFNF_NUM_NFE.AsInteger > 0) then
                                   begin
                                     wLinha := wLinha+Justifica('e',copy(SqlCdsEmpresaEMP_MODELO_NFE.AsString,1,2),2,'0');
                                     wLinha := wLinha+Justifica('d',copy(SqlCdsEmpresaEMP_SERIE_NFE.AsString,1,3),3,' ');
                                     //wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,1,6),6,'0');

                                     if (Length(SqlCdsNFNF_NUM_NFE.AsString) > 6) then
                                        wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,Length(SqlCdsNFNF_NUM_NFE.AsString)-5,6),6,'0')
                                     else
                                        wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,1,6),6,'0');

                                   end
                                else
                                   begin
                                     wLinha := wLinha+Justifica('e',copy(SqlCdsParamSIN_MODE_NF.AsString,1,2),2,'0');
                                     wLinha := wLinha+Justifica('d',copy(SqlCdsParamSIN_SERIE_NF.AsString,1,3),3,' ');
                                     //wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NOTANUMBER.AsString,1,6),6,'0');
                                     if (Length(SqlCdsNFNF_NUM_NFE.AsString) > 6) then
                                        wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,Length(SqlCdsNFNF_NUM_NFE.AsString)-5,6),6,'0')
                                     else
                                        wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,1,6),6,'0');
                                   end;

                                wLinha := wLinha+justifica('e',copy(Cds54_complementoCFOP.AsString,1,4),4,'0');
                                {Seta TbProduto}
                                wLinha := wLinha+justifica('d','',3,' ');
                                wLinha := wLinha+'999'; //numero do frete
                                wLinha := wLinha+justifica('d','',14,' ');

                                  {Quantidade c\ 3 casa decimais}
                                  wAux   := '';
                                wLinha := wLinha+justifica('e',copy(wAux,1,11),11,'0');
                                {Valor c\ 2 casas decimais}
                                wAux   := '';
                                wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                                wVal   := Cds54_complementoDespesas.AsFloat;
                                wAux   := SemMilhar(Format('%.0n',[wVal*100]));
                                wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                                {Base de Calculo do ICMS c\ 2 casas decimais}
                                wVal   := 0;
                                wAux   := SemMilhar(Format('%.0n',[(wVal)*100]));
                                wLinha := wLinha+justifica('e',copy(wAux,1,12),12,'0');
                                wLinha := wLinha+'000000000000';
                                {Aliquota IPI}
                                wLinha := wLinha+'000000000000';
                                {Aliquota ICMS}
                                wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[0])),4,'0');
                                //
                                Lb_Tipo54.Caption := IntToStr(StrToInt(Lb_Tipo54.Caption)+1);
                                wLinha            := TiraAcento(wLinha,true);
                                Writeln(wArquivo,wLinha);
                                Mem_Arquivo.Lines.Add(wLinha);
                             end;
                        end;
                     Cds54_complemento.Next;
                  end;
            end;

          SqlCdsNF.Next;
        except on E:EDataBaseError do
          uteis.erro  (pchar('Erro ao localizar os itens da nota fiscal ! '+e.message))
        end;
    end;
 end; // endif saidas   
end;

procedure TFormSINTEGRA.Registro_74;
var
  DataInicial,
  DataFinal : TDate;
  Produto   : string;
  Quantidade,
  ValorProduto,
  Total,
  ValorTotal : Currency;
  Controle,DadosReal,DadosRecalculado : integer;

begin
   Lb_Tipo74.Caption := '0';
   DataFinal   := Dat_Final.Date;
   IncHour(DataFinal,99);
   //Kardex novo
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :='SELECT '+
                                          '     P1.prd_refer, '+
                                          '     P1.prd_pmedio, '+
                                          '     (SELECT SALDO FROM pCd_kardex_saldo_fisico(P1.emp_codigo,P1.prd_codigo,'+QuotedStr(DataAmericana(DateToStr(DataFinal)))+')) AS SALDO, '+
                                          '     EMP.emp_uf  '+
                                          ' FROM  '+
                                          ' prd0000 P1 '+
                                          ' JOIN emp0000 EMP ON EMP.emp_codigo = P1.emp_codigo'+
                                          ' where (SELECT SALDO FROM pCd_kardex_saldo_fisico(P1.emp_codigo,P1.prd_codigo,'+QuotedStr(DataAmericana(DateToStr(DataFinal)))+')) > 0';

   DataCadastros.sqlUpdate.Open;
   DataCadastros.sqlUpdate.First;

   while (not DataCadastros.sqlUpdate.Eof) do
   begin
         wLinha   := '74';//1

         IncluirRederencia75(DataCadastros.sqlUpdate.FieldByName('prd_refer').AsString);

         wLinha := wLinha+copy(Dat_Final.Text,7,4)
                         +copy(Dat_Final.Text,4,2)
                         +copy(Dat_Final.Text,1,2); //2
         wLinha := wLinha+justifica('d',copy(DataCadastros.sqlUpdate.FieldByName('prd_refer').AsString,1,14),14,' ');//3
         wAux   := SemMilhar(Format('%.0n',[DataCadastros.sqlUpdate.FieldByName('saldo').AsCurrency*1000]));
         wLinha := wLinha+justifica('e',copy(wAux,1,13),13,'0');//4
         wAux   := SemMilhar(Format('%.0n',[(DataCadastros.sqlUpdate.FieldByName('prd_pmedio').AsCurrency * DataCadastros.sqlUpdate.FieldByName('saldo').AsCurrency)*100]));
         wLinha := wLinha+justifica('e',copy(wAux,1,13),13,'0');//5
         wLinha := wLinha+justifica('d',copy('1',1,1),1,' ');//6
         wLinha := wLinha+justifica('e','0',14,'0');//7
         wLinha := wLinha+justifica('d',' ',14,' ');//8
         wLinha := wLinha+justifica('d',copy(DataCadastros.sqlUpdate.FieldByName('emp_uf').AsString,1,2),2,' ');//9
         wLinha := wLinha+justifica('d','                                         ',45,' ');//10
         Lb_Tipo74.Caption := IntToStr(StrToInt(Lb_Tipo74.Caption)+1);
         wLinha := TiraAcento(wLinha,true);
         Writeln(wArquivo,wLinha);
         Mem_Arquivo.Lines.Add(wLinha);
         DataCadastros.sqlUpdate.Next;

   end;
   DataCadastros.sqlUpdate.Close;
end;

procedure TFormSINTEGRA.Registro_75;
var
  DataInicial,
  DataFinal : TDate;
begin
  {CRIANDO REGISTROS TIPO 75 - Entrada}
   Lb_Tipo75.Caption := '0';
   DataFinal   := Dat_Final.Date;
   IncHour(DataFinal,99);
   //Kardex novo

   CdsReferencia.First;

   while (not CdsReferencia.Eof) do
      begin
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :='select '+
                                                't1.PRD_REFER, '+
                                                't1.PRD_DESCRI, '+
                                                't1.PRD_UND, '+
                                                'IPI.IPI_ALIQ, '+
                                                'ICM.ICM_ALIQ, '+
                                                't1.IPI_CODIGO '+
                                                'from '+
                                                'PRD0000 t1  '+
                                                'left JOIN EMP0000 EMP on EMP.EMP_CODIGO = t1.EMP_CODIGO  '+
                                                'left join IPI0000 IPI on IPI.IPI_CODIGO = T1.IPI_CODIGO   '+
                                                'left join ICM0000 ICM on ICM.ICM_UF_DESTINO = EMP.EMP_UF '+
                                                ' WHERE t1.PRD_REFER = '+QuotedStr(CdsReferenciaReferencia.AsString)

                                                ;

         DataCadastros.sqlUpdate.Open;
         DataCadastros.sqlUpdate.First;

         while (not DataCadastros.sqlUpdate.Eof) do
            begin
               wLinha :=   '75'+copy(Dat_Inicio.Text,7,4)+copy(Dat_Inicio.Text,4,2)+copy(Dat_Inicio.Text,1,2);                //8
                           wLinha := wLinha+copy(Dat_Final.Text,7,4) +copy(Dat_Final.Text,4,2) +copy(Dat_Final.Text,1,2);                 //8
                           wLinha := wLinha+justifica('d',copy(DataCadastros.sqlUpdate.FieldByName('PRD_REFER').AsString,1,14),14,' ');
                           wLinha := wLinha+justifica('d',copy(DataCadastros.sqlUpdate.FieldByName('IPI_CODIGO').AsString,1,8),8,' ');
                           // NCM obrigatorio para contribuintes do simples
                           wLinha := wLinha+justifica('d',copy(DataCadastros.sqlUpdate.FieldByName('PRD_DESCRI').AsString,1,53),53,' ');                           //53
                           wLinha := wLinha+justifica('d',copy(DataCadastros.sqlUpdate.FieldByName('PRD_UND').AsString,1,6),6,' ');                                //6
                           wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[DataCadastros.sqlUpdate.FieldByName('IPI_ALIQ').AsFloat*100])),5,'0');     //5
                           {Aliquota do ICMS c\ 2 casas decimais}
                           wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[DataCadastros.sqlUpdate.FieldByName('ICM_ALIQ').AsFloat*100])),4,'0');   //4
                           wLinha := wLinha+'00000';
                           {Base de Calculo do ICMS SUBST. c\ 2 casas decimais}
                           if (SqlCdsNFEIT01PRD_TEMSUB.AsString = 'S') then
                             begin
                                 wAux := SemMilhar(Format('%.0n',[(SQLCdSNFEIT01PRD_ICMSUBS.AsCurrency)*100])); //SQLCdSNFEIT01PRD_ICMSUBS.AsCurrency
                                 wLinha := wLinha+justifica('e',copy(wAux,1,13),13,'0');
                             end
                           else
                              wLinha := wLinha+'0000000000000';
                           //
                           Lb_Tipo75.Caption := IntToStr(StrToInt(Lb_Tipo75.Caption)+1);
                           //
                           wLinha := TiraAcento(wLinha,true);
                           Writeln(wArquivo,wLinha);
                           Mem_Arquivo.Lines.Add(wLinha);
                           Application.ProcessMessages;
               DataCadastros.sqlUpdate.Next;
            end;
         DataCadastros.sqlUpdate.Close;
         CdsReferencia.Next;
      end;
end;

procedure TFormSINTEGRA.Registro_90;
Var
  wI : Integer;
begin
   {CRIANDO REGISTROS TIPO 90}
   wAux := '';
   {Prepara INSC}
   for wI := 1 to Length(SqlCdsEmpresaEMP_INSC.AsString) do
     if ((copy(SqlCdsEmpresaEMP_INSC.AsString,wI,1)>='0')and(copy(SqlCdsEmpresaEMP_INSC.AsString,wI,1)<='9'))
     or ((copy(SqlCdsEmpresaEMP_INSC.AsString,wI,1)>='a')and(copy(SqlCdsEmpresaEMP_INSC.AsString,wI,1)<='z'))
     or ((copy(SqlCdsEmpresaEMP_INSC.AsString,wI,1)>='A')and(copy(SqlCdsEmpresaEMP_INSC.AsString,wI,1)<='Z'))then
        wAux := wAux + copy(SqlCdsEmpresaEMP_INSC.AsString,wI,1);
   {criando registro Tipo 10 na var wLinha}
   wLinha := '90'+justifica('e',SqlCdsEmpresaEMP_CGC.AsString,14,'0')+justifica('d',wAux,14,' ');
   wLinha := wLinha+'50'+justifica('e',copy(Lb_Tipo50.Caption ,1,8),8,'0');
   wLinha := wLinha+'51'+justifica('e',copy(Lb_Tipo51.Caption ,1,8),8,'0');
   {sem tipo 53}
   if Lb_Tipo53.Caption <> '0'then
      wLinha := wLinha+'53'+justifica('e',copy(Lb_Tipo53.Caption ,1,8),8,'0');
   wLinha := wLinha+'54'+justifica('e',copy(Lb_Tipo54.Caption ,1,8),8,'0');
   wLinha := wLinha+'70'+justifica('e',copy(Lb_Tipo70.Caption ,1,8),8,'0');
   wLinha := wLinha+'74'+justifica('e',copy(Lb_Tipo74.Caption ,1,8),8,'0');
   wLinha := wLinha+'75'+justifica('e',copy(Lb_Tipo75.Caption ,1,8),8,'0');
   {total de registros}
   wI     := 3+StrToInt(Lb_Tipo50.Caption)+StrToInt(Lb_Tipo51.Caption)+StrToInt(Lb_Tipo53.Caption)+StrToInt(Lb_Tipo54.Caption)+StrToInt(Lb_Tipo70.Caption)+StrToInt(Lb_Tipo74.Caption)+StrToInt(Lb_Tipo75.Caption);
   wLinha := wLinha+'99'+justifica('e',copy(IntToStr(wI),1,8),8,'0');
//   {sem tipo 53}
//   if Lb_Tipo53.Caption <> '0'then
//      wLinha := wLinha+justifica('d','',45,' ')
//   else

   if (Lb_Tipo53.Caption <> '0') then
      wLinha := wLinha+justifica('d','',15,' ')
   else
      wLinha := wLinha+justifica('d','',25,' ');

   wLinha := wLinha+'1';
   Lb_Tipo90.Caption := '1';
   wLinha := TiraAcento(wLinha,true);
   Writeln(wArquivo,wLinha);
   Mem_Arquivo.Lines.Add(wLinha);
   CloseFile(wArquivo);
   {Fecha Arquivo NF ENTRADA}
   SqlCdsNFE.Close;
   {Fecha Arquivo NF SAIDA}
   SqlCdsNF.Close;
   {Fecha arquivo NF Transp}
   SqlCdsReg70.Close;
   //
   Lb_Arquivo.Caption := dbInicio.SistemaLocal+'Arquivo'+
                      '\'+copy(Dat_Inicio.Text,4,2)+Cb_UF.Text+copy(Dat_Inicio.Text,7,4)+'.TXT';
   Pn_Processo.Enabled := True;
end;

procedure TFormSINTEGRA.Registro_70;
Var
  wI : Integer;
begin
   {CRIANDO REGISTROS TIPO 70 - Entrada}
   Lb_Tipo70.Caption := '0';
   Abrir_NF_70;
   SqlCdsReg70.First;
   while not SqlCdsReg70.Eof do
    begin
        wAux := '';
        {Prepara INSC}
        for wI := 1 to Length(TRIM(SqlCdsReg70TRP_INSC.AsString)) do
           if ((copy(SqlCdsReg70TRP_INSC.AsString,wI,1)>='0')and(copy(SqlCdsReg70TRP_INSC.AsString,wI,1)<='9'))
           or ((copy(SqlCdsReg70TRP_INSC.AsString,wI,1)>='a')and(copy(SqlCdsReg70TRP_INSC.AsString,wI,1)<='z'))
           or ((copy(SqlCdsReg70TRP_INSC.AsString,wI,1)>='A')and(copy(SqlCdsReg70TRP_INSC.AsString,wI,1)<='Z'))then
               wAux := wAux + copy(SqlCdsReg70TRP_INSC.AsString,wI,1);
        if wAux = ''then
           wAux := 'ISENTO';
        {concatenando INSC, e CNPJ na var wAux}
        wAux := justifica('e',SqlCdsReg70TRP_CGC.AsString,14,'0')+justifica('d',wAux,14,' ');
        wLinha := '70'+wAux+Copy(SqlCdsReg70ENF_EMISSAO.AsString,7,4)+Copy(SqlCdsReg70ENF_EMISSAO.AsString,4,2)+Copy(SqlCdsReg70ENF_EMISSAO.AsString,1,2);
        wLinha := wLinha+Justifica('d',copy(SqlCdsReg70TRP_UF.AsString,1,2),2,' ');

        wLinha := wLinha+Justifica('e',copy(SqlCdsReg70ENF_MODELO_NF.AsString,1,2),2,'0');
        wLinha := wLinha+Justifica('d',copy(IIF(SqlCdsReg70ENF_SERIE.AsString = '','1',SqlCdsReg70ENF_SERIE.AsString),1,3),3,' ');

        //wLinha := wLinha+Justifica('e',copy(SqlCdsReg70ENF_NOTANUMBER.AsString,1,6),6,'0');
        if (Length(SqlCdsNFEENF_NOTANUMBER.AsString) > 6) then
           wLinha := wLinha+Justifica('e',copy(SqlCdsReg70ENF_NOTANUMBER.AsString,Length(SqlCdsReg70ENF_NOTANUMBER.AsString)-5,6),6,'0')
        else
           wLinha := wLinha+Justifica('e',copy(SqlCdsReg70ENF_NOTANUMBER.AsString,1,6),6,'0');


        wLinha := wLinha+justifica('e',copy(SqlCdsReg70OPE_NATUREZA.AsString,1,4),4,'0');
        wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[SqlCdsReg70ENF_TOT_NOTA.AsCurrency*100])),13,'0');
        wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[SqlCdsReg70ENF_BASEICMS.AsCurrency*100])),14,'0');
        wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[SqlCdsReg70ENF_VL_ICMS.AsCurrency*100])),14,'0');
        wLinha := wLinha+Justifica('E','',14,'0');
        wLinha := wLinha+Justifica('E','',14,'0');
        //wLinha := wLinha+Justifica('e',copy(SqlCdsReg70ENF_TIPO_FRETE.AsString,1,1),1,'0');
        wLinha := wLinha+Justifica('E','',1,'1'); {PADRAO COMO cif FRETE PAGO PELO DESTINATARIO}
        wLinha := wLinha+'N';
        Lb_Tipo70.Caption := IntToStr(StrToInt(Lb_Tipo70.Caption)+1);
        wLinha := TiraAcento(wLinha,true);
        Writeln(wArquivo,wLinha);
        Mem_Arquivo.Lines.Add(wLinha);
        SqlCdsReg70.Next;
        Application.ProcessMessages;
    end;
end;

procedure TFormSINTEGRA.Abrir_NF_70;
begin
   try
     wSql1      := 'Select e1.enf_modelo_nf,E1.enf_notanumber,E1.ENF_ENTRADA as enf_emissao,E1.enf_serie,E1.ope_natureza,E1.enf_tot_nota,E1.enf_baseicms,E1.enf_aliq_icms,E1.enf_vl_icms,';
     wSql2      := 'E1.enf_vlbasesubtrib,E1.enf_vl_subtrib,E1.enf_desp_aces,E1.enf_vlfrete,E1.enf_tipo_frete,E1.enf_vlseguro,E1.enf_interno,E1.enf_cancelada,';
     wSql3      := 'E1.enf_vl_descto,E1.for_codigo,T1.trp_razao,T1.trp_cgc,T1.trp_insc,T1.trp_uf from ENF0001 E1 LEFT JOIN TRP0000 T1 ON (T1.TRP_codigo = E1.for_codigo) ';
     wSeleciona := 'WHERE E1.ENF_ENTRADA BETWEEN '''+DataAmericana(Dat_Inicio.Text)+''' AND '''+DataAmericana(Dat_Final.Text)+''' AND E1.enf_tipo_nf_entrada = ''C'' '+iif(Cb_UF.Text = 'TODOS','','AND T1.trp_uf = '''+Cb_UF.Text+'''');
     wOrdem     := 'E1.ENF_ENTRADA';
     SqlCdsReg70.Close;
     SqlCdsReg70.CommandText := SQLDEF('RECEBER',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'E1.');
     SqlCdsReg70.Open;
   except on E:EDataBaseError do
     uteis.erro  (pchar('Erro ao abrir a tabela ! '+e.message));
   end;
end;

procedure TFormSINTEGRA.Registro_51;
Var
  wI : Integer;
begin
   {Entrada 51 SE TIVER IPI}
   Lb_Tipo51.Caption := '0';
   if (CBTipo51.Checked) then
      begin
       // seleciou entradas e saidas ou somente entradas
       if (RbES.checked ) OR (RbE.checked ) then
         begin
         SqlCdsNFE.First;
         while not SqlCdsNFE.Eof do
            begin
               {inicialização das variáveis}
               wAux       := '';
               rFrete     := 0;
               rSuguro    := 0;
               rDespesas  := 0;
               rTemp      := 0;
              {prepara cfop dos itens}
              wQuery.Close;
              wQuery.CommandText := 'SELECT '
                                    +'e2.ENF_IT_NOTANUMBER, '
                                    +'E2.ENF_CFOP,  '
                                    +'e2.FOR_CODIGO, '
                                    +'CAST(SUM(e2.ENF_QTDE *  e2.ENF_PRECO)AS NUMERIC(18,4)) AS PRODUTOS,  '
                                    +' SUM(cast(E2.enf_it_valfrete AS NUMERIC(18,4))) AS ENF_VLFRETE, '
                                    +' SUM(cast(E2.enf_it_vlseguro AS NUMERIC(18,4))) AS ENF_VLSEGURO, '
                                    +' SUM(cast(E2.enf_it_vldesp_aces AS NUMERIC(18,4))) AS ENF_DESP_ACES, '
                                    +' SUM(cast(E2.enf_it_vlipi AS NUMERIC(18,4))) AS ENF_VL_IPI, '
                                    +'SUM(cast(E2.ENF_ICMS AS NUMERIC(18,4))) AS ENF_ICMS, '
                                    +'SUM(cast(E2.enf_it_baseicms AS NUMERIC(18,4))) AS enf_it_baseicms, '
                                    +'SUM(cast(E2.enf_it_basesubtrib AS NUMERIC(18,4))) AS enf_it_basesubtrib '
                                    +' FROM ENF_IT01 E2 '
                                    +' JOIN ENF0001 E3 ON (E3.ENF_NOTANUMBER = E2.ENF_IT_NOTANUMBER AND E3.FOR_CODIGO = E2.FOR_CODIGO)'
                                    +'where E2.ENF_CFOP is not null and e2.ENF_IT_NOTANUMBER = '''+SqlCdsNFEENF_NOTANUMBER.AsString+''' and e2.FOR_CODIGO = '''+SqlCdsNFEFOR_CODIGO.AsString+''' '
                                    +'GROUP BY '
                                    +'E2.ENF_CFOP,'
                                    +'e2.ENF_IT_NOTANUMBER,'
                                    +'e2.FOR_CODIGO '
                                    +'ORDER BY '
                                    +'E2.ENF_CFOP, '
                                    +'e2.ENF_IT_NOTANUMBER';
              wQuery.Open;
              sAdicionadoValoresNF := 'N';
              wCdSCfop.EmptyDataSet;
              if (wQuery.IsEmpty) then
                 begin
                   wCdSCfop.Append;
                   wCdSCfopCFOP.AsString   := SqlCdsNFEOPE_NATUREZA.AsString;
                   wCdSCfopPRODUTO.AsFloat := SqlCdsNFEENF_TOT_PROD.AsFloat;
                   wCdSCfopFRETE.AsFloat   := SqlCdsNFEENF_VLFRETE.AsFloat;
                   wCdSCfopDESP.AsFloat    := SqlCdsNFEENF_DESP_ACES.AsFloat;
                   wCdSCfopSEGURO.AsFloat  := SqlCdsNFEENF_VLSEGURO.AsFloat;
                   wCdSCfopIPI.AsFloat     := SqlCdsNFEENF_VL_IPI.AsFloat;
                   wCdSCfop.Post;
                 end
              else
                 while (not wQuery.Eof) do
                    begin
                      wCdSCfop.Append;
                      wCdSCfopCFOP.AsString   := wQuery.FieldByName('ENF_CFOP').AsString;
                      wCdSCfopPRODUTO.AsFloat := wQuery.FieldByName('PRODUTOS').AsFloat;
                      wCdSCfopFRETE.AsFloat   := wQuery.FieldByName('ENF_VLFRETE').AsFloat;
                      wCdSCfopDESP.AsFloat    := wQuery.FieldByName('ENF_DESP_ACES').AsFloat;
                      wCdSCfopSEGURO.AsFloat  := wQuery.FieldByName('ENF_VLSEGURO').AsFloat;
                      wCdSCfopIPI.AsFloat     := wQuery.FieldByName('ENF_VL_IPI').AsFloat;
                      wCdSCfop.Post;
                      wQuery.Next;
                    end;
              wCdSCfop.First;
              while (not wCdSCfop.Eof) do
                 begin
                    wAux := '';
                    if (wCdSCfopIPI.AsFloat > 0) then
                      begin
                          {Prepara INSC}
                         for wI := 1 to Length(TRIM(SqlCdsNFEFOR_INSC.AsString)) do
                            if ((copy(SqlCdsNFEFOR_INSC.AsString,wI,1)>='0')and(copy(SqlCdsNFEFOR_INSC.AsString,wI,1)<='9'))
                            or ((copy(SqlCdsNFEFOR_INSC.AsString,wI,1)>='a')and(copy(SqlCdsNFEFOR_INSC.AsString,wI,1)<='z'))
                            or ((copy(SqlCdsNFEFOR_INSC.AsString,wI,1)>='A')and(copy(SqlCdsNFEFOR_INSC.AsString,wI,1)<='Z'))then
                                wAux := wAux + copy(SqlCdsNFEFOR_INSC.AsString,wI,1);
                         if wAux = ''then
                            wAux := 'ISENTO';
                         {concatenando INSC, e CNPJ na var wAux}
                         wAux := justifica('e',SqlCdsNFEFOR_CGC.AsString,14,'0')+justifica('d',wAux,14,' ');
                         wLinha := '51'+wAux+Copy(SqlCdsNFEENF_ENTRADA.AsString,7,4)+Copy(SqlCdsNFEENF_ENTRADA.AsString,4,2)+Copy(SqlCdsNFEENF_ENTRADA.AsString,1,2);
                         wLinha := wLinha+Justifica('d',copy(SqlCdsNFEFOR_UF.AsString,1,2),2,' ');
                         // se preencheu chave da NFe
                         if Length(trim(SqlCdsNFEENF_CHAVE_NFE.AsString)) > 0 then        //NFE
                           begin
                               // notas do passado que nao foi preenhido serie
                              if (SqlCdsNFEENF_SERIE.AsString = '')or(SqlCdsNFEENF_SERIE.AsString = '0') then
                                begin
                                 wLinha := wLinha+Justifica('d',copy('1  ',1,3),3,' '); // serie    1
                               end
                             else
                                begin
                                // usar valor digitado no campo da entrada de nota
                                wLinha := wLinha+Justifica('d',copy(sqlCdsNFEENF_SERIE.AsString,1,3),3,' ');
                                end;
                           end
                        else
                         // não é nota eletronica (papel)
                          begin
                         // notas do passado que nao foi preenhido modelo e serie
                         if (SqlCdsNFEENF_SERIE.AsString = '')or(SqlCdsNFEENF_SERIE.AsString = '0') then
                            begin
                            // pega default dos parametros
                            wLinha := wLinha+Justifica('d',copy(SqlCdsParamSIN_SERIE_NF.AsString,1,3),3,' ');
                            end
                         else
                           begin
                           // usar valor digitado no campo da entrada de nota
                            wLinha := wLinha+Justifica('d',copy(sqlCdsNFEENF_SERIE.AsString,1,3),3,' ');
                           end;
                         end;
                         if (Length(SqlCdsNFEENF_NOTANUMBER.AsString) > 6) then
                            wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_NOTANUMBER.AsString,Length(SqlCdsNFEENF_NOTANUMBER.AsString)-5,6),6,'0')
                         else
                            wLinha := wLinha+Justifica('e',copy(SqlCdsNFEENF_NOTANUMBER.AsString,1,6),6,'0');
                         wLinha := wLinha+justifica('e',copy(wCdSCfopCFOP.AsString,1,4),4,'0')+''; // mudei de P para t P=emitente proprio ou T=terceiros
                         wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[(wCdSCfopIPI.AsFloat+wCdSCfopPRODUTO.AsFloat+wCdSCfopFRETE.AsFloat+wCdSCfopDESP.AsFloat+wCdSCfopSEGURO.AsFloat)*100])),13,'0');
                         wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[(wCdSCfopIPI.AsFloat)*100])),13,'0');
                         wLinha := wLinha+Justifica('E','',13,'0');
                         wLinha := wLinha+Justifica('E','',13,'0');
                         wLinha := wLinha+Justifica('E','',20,' ');
                         wLinha := wLinha+'N';
                         Lb_Tipo51.Caption := IntToStr(StrToInt(Lb_Tipo51.Caption)+1);
                         wLinha := TiraAcento(wLinha,true);
                         Writeln(wArquivo,wLinha);
                         Mem_Arquivo.Lines.Add(wLinha);
                     end;
                    wCdSCfop.Next;
                 end;
              SqlCdsNFE.Next;
              Application.ProcessMessages;
             end; // endif entradas
          end;
         {CRIANDO REGISTROS TIPO 51 - Saída}
       /// seleciou entradas e saidas ou somente entradas
       if (RbES.checked ) OR (RbS.checked ) then
         begin
             SqlCdsNF.First;
             while not SqlCdsNF.Eof do
              begin
                  wAux := '';
                  {Prepara INSC}
                  rSuguro    := 0;
                   rDespesas  := 0;
                   rTemp      := 0;
                  {prepara cfop dos itens}
                  wQuery.Close;
                  wQuery.CommandText := 'SELECT '
                                       +'e2.NF_IT_NOTANUMER,   '
                                       +' SUM(cast(E2.nf_qtde * E2.nf_preco AS NUMERIC(18,4))) AS PRODUTOS, '
                                       +'E2.NTP_CFOP,  '
                                       +'SUM(cast(E2.nf_ifrete AS NUMERIC(18,4))) AS NF_VLFRETE, SUM(cast(E2.nf_iseguro AS NUMERIC(18,4))) AS NF_VLSEGURO, SUM(cast(E2.nf_idesp_aces AS NUMERIC(18,4))) AS NF_DESP_ACES,  SUM(cast(E2.nf_ipivalor AS NUMERIC(18,4))) AS NF_VL_IPI, '
                                       +'E3.NF_NUM_NFE , SUM(cast(E2.nf_icmsbase AS NUMERIC(18,4))) AS nf_icmsbase, E2.nf_icmsaliq, SUM(cast(E2.NF_ICMSVALOR AS NUMERIC(18,4))) AS NF_ICMSVALOR, SUM(cast(E2.NF_VLSUBST AS NUMERIC(18,4))) AS NF_VLSUBST '
                                       +' FROM NF_IT01 E2 '
                                       +'JOIN NF0001 E3 ON (e3.NF_NOTANUMBER = E2.NF_IT_NOTANUMER) '
                                       +'where E2.NTP_CFOP is not null and E2.NF_IT_NOTANUMER =  '+RetornaNull(SqlCdsNFNF_NOTANUMBER.AsString)
                                       +' GROUP BY   '
                                       +'E2.NTP_CFOP,  '
                                       +'e2.NF_IT_NOTANUMER,   '
                                       +'E3.NF_NUM_NFE , E2.nf_icmsaliq '
                                       +'ORDER BY   '
                                       +'E2.NTP_CFOP, '
                                       +'e2.NF_IT_NOTANUMER';
                  wQuery.Open;
                  sAdicionadoValoresNF := 'N';
                  wCdSCfop.EmptyDataSet;
                  if (wQuery.IsEmpty) then
                     begin
                       wCdSCfop.Append;
                       wCdSCfopCFOP.AsString        := SqlCdsNFOPE_NATUREZA.AsString;
                       wCdSCfopPRODUTO.AsFloat      := SqlCdsNFNF_TOT_PROD.AsFloat;
                       wCdSCfopFRETE.AsFloat        := SqlCdsNFNF_VLFRETE.AsFloat;
                       wCdSCfopDESP.AsFloat         := SqlCdsNFNF_DESP_ACES.AsFloat;
                       wCdSCfopSEGURO.AsFloat       := SqlCdsNFNF_VLSEGURO.AsFloat;
                       wCdSCfopICMSALIQ.AsCurrency  := SqlCdsNFNF_ALIQ_ICMS.AsFloat;
                       wCdSCfopICMSVALOR.AsCurrency := SqlCdsNFNF_VL_ICMS.AsCurrency;
                       wCdSCfopICMSBASE.AsCurrency  := SqlCdsNFNF_BASEICMS.AsCurrency;
                       wCdSCfopICMSSTVALOR.AsFloat  := SqlCdsNFNF_VL_SUBTRIB.AsCurrency;
                       wCdSCfopIPI.AsCurrency       := SqlCdsNFNF_VL_IPI.AsCurrency;
                       wCdSCfop.Post;
                     end
                  else
                     while (not wQuery.Eof) do
                        begin
                          wCdSCfop.Append;
                          wCdSCfopCFOP.AsString        := wQuery.FieldByName('NTP_CFOP').AsString;
                          wCdSCfopPRODUTO.AsFloat      := wQuery.FieldByName('PRODUTOS').AsFloat;
                          wCdSCfopICMSALIQ.AsCurrency  := wQuery.FieldByName('nf_icmsaliq').AsFloat;
                          wCdSCfopICMSVALOR.AsCurrency := wQuery.FieldByName('NF_ICMSVALOR').AsFloat;
                          wCdSCfopICMSBASE.AsCurrency  := wQuery.FieldByName('nf_icmsbase').AsFloat;
                          wCdSCfopFRETE.AsFloat        := wQuery.FieldByName('NF_VLFRETE').AsFloat;
                          wCdSCfopDESP.AsFloat         := wQuery.FieldByName('NF_DESP_ACES').AsFloat;
                          wCdSCfopSEGURO.AsFloat       := wQuery.FieldByName('NF_VLSEGURO').AsFloat;
                          wCdSCfopIPI.AsFloat          := wQuery.FieldByName('NF_VL_IPI').AsFloat;
                          wCdSCfopICMSSTVALOR.AsFloat  := wQuery.FieldByName('NF_VLSUBST').AsFloat;
                          wCdSCfop.Post;
                          wQuery.Next;
                        end;
                  wCdSCfop.First;
                  while (not wCdSCfop.Eof) do
                     begin
                        wAux := '';
                        if (wCdSCfopIPI.AsFloat > 0) then
                           begin
                              {Prepara INSC}
                              for wI := 1 to Length(SqlCdsNFCLI_INSC.AsString) do
                                 if ((copy(SqlCdsNFCLI_INSC.AsString,wI,1)>='0')and(copy(SqlCdsNFCLI_INSC.AsString,wI,1)<='9'))
                                 or ((copy(SqlCdsNFCLI_INSC.AsString,wI,1)>='a')and(copy(SqlCdsNFCLI_INSC.AsString,wI,1)<='z'))
                                 or ((copy(SqlCdsNFCLI_INSC.AsString,wI,1)>='A')and(copy(SqlCdsNFCLI_INSC.AsString,wI,1)<='Z'))then
                                     wAux := wAux + copy(SqlCdsNFCLI_INSC.AsString,wI,1);
                              if wAux = ''then
                                 wAux := 'ISENTO';
                              {concatenando INSC, e CNPJ na var wAux}
                              wAux := justifica('e',SqlCdsNFCLI_CGC.AsString,14,'0')+justifica('d',wAux,14,' ');
                              wLinha := '51'+wAux+Copy(SqlCdsNFNF_EMISSAO.AsString,7,4)+Copy(SqlCdsNFNF_EMISSAO.AsString,4,2)+Copy(SqlCdsNFNF_EMISSAO.AsString,1,2);
                              wLinha := wLinha+Justifica('d',copy(SqlCdsNFCLI_UF.AsString,1,2),2,' ');
                              //wLinha := wLinha+Justifica('d',copy(SqlCdsParamSIN_SERIE_NF.AsString,1,3),3,' ');

                              if (SqlCdsNFNF_NUM_NFE.AsString <> EmptyStr) and (SqlCdsNFNF_NUM_NFE.AsInteger > 0) then
                              begin
                                //wLinha := wLinha+Justifica('e',copy(SqlCdsEmpresaEMP_MODELO_NFE.AsString,1,2),2,'0');
                                wLinha := wLinha+Justifica('d',copy(SqlCdsEmpresaEMP_SERIE_NFE.AsString,1,3),3,' ');
                                wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NUM_NFE.AsString,1,6),6,'0');
                              end
                            else
                              begin
                                //wLinha := wLinha+Justifica('e',copy(SqlCdsParamSIN_MODE_NF.AsString,1,2),2,'0');
                                wLinha := wLinha+Justifica('d',copy(SqlCdsParamSIN_SERIE_NF.AsString,1,3),3,' ');
                                wLinha := wLinha+Justifica('e',copy(SqlCdsNFNF_NOTANUMBER.AsString,1,6),6,'0');
                              end;

                              wLinha := wLinha+justifica('e',copy(wCdSCfopCFOP.AsString,1,4),4,'0')+''; // P=emitente proprio ou T=terceiros
                              wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[(wCdSCfopICMSSTVALOR.AsFloat+wCdSCfopIPI.AsFloat+wCdSCfopPRODUTO.AsFloat+wCdSCfopFRETE.AsFloat+wCdSCfopDESP.AsFloat+wCdSCfopSEGURO.AsFloat)*100])),13,'0');
                              wLinha := wLinha+Justifica('E',SemMilhar(Format('%.0n',[wCdSCfopIPI.AsFloat*100])),13,'0');
                              wLinha := wLinha+Justifica('E','',13,'0');
                              wLinha := wLinha+Justifica('E','',13,'0');
                              wLinha := wLinha+Justifica('E','',20,' ');
                              if (SqlCdsNFNF_CANCELADA.AsString = 'S') then
                                 wLinha := wLinha+'S'
                              else
                                 wLinha := wLinha+'N';
                              Lb_Tipo51.Caption := IntToStr(StrToInt(Lb_Tipo51.Caption)+1);
                              wLinha := TiraAcento(wLinha,true);
                              Writeln(wArquivo,wLinha);
                              Mem_Arquivo.Lines.Add(wLinha);
                           end;
                        wCdSCfop.Next;
                        Application.ProcessMessages;
                      end;
               SqlCdsNF.Next;
               Application.ProcessMessages;
            end; // endif das saidas
         end;
   end;
end;

procedure TFormSINTEGRA.IncluirRederencia75(Referencia: String);
begin
   if (not CdsReferencia.Locate('Referencia',Referencia,[])) then
      begin
         CdsReferencia.Insert;
         CdsReferenciaReferencia.AsString := Referencia;
         CdsReferencia.Post;
      end;

end;

end.


