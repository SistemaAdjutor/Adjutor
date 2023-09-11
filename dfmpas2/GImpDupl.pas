{******************************************************************
| Programa...: GimpDupl-Nome Form = FormGimpDuplicata
| Objetivo...: Impressao de duplicatas
| Analista...: Marcio Neu Pacheco
| Programador: Márcio
|
  Comentários: Imprime Duplicata
|
| Criação..........: Nov/99
| Ultima Alteração.: Jan/03
| alterado por.....: Márcio
|--------------------------------------------------------------------
| Conversão Interbase: 04/02/04
| Ultima Alteração...:
| Convertido por.....: JEFFERSON
********************************************************************}
unit GImpDupl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, Db, DBTables,
  ComCtrls, RWFunc,   inifiles, RDprint, Provider,
  SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, Data.DBXFirebird,
  SimpleDS, JvExMask, JvToolEdit;

type
  TFormGimpDuplicata = class(TForm)
    PrinterSetupDialog1: TPrinterSetupDialog;
    Group03: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    EdtFat_codigo: TEdit;
    BitLiberaOK: TBitBtn;
    BiLiberaCancela: TBitBtn;
    Label10: TLabel;
    RDprintDup: TRDprint;
    Group04: TGroupBox;
    BitConfig: TBitBtn;
    Bit_Ok: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Group00: TGroupBox;
    RadData: TRadioButton;
    RadFatura: TRadioButton;
    Group01: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Group02: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    EditFatura: TEdit;
    EditParcela: TEdit;
    RadRemissao: TRadioButton;
    Group05: TGroupBox;
    Label7: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GroupDispositivo: TGroupBox;
    RadImpressora: TRadioButton;
    RadVideo: TRadioButton;
    SqlCdsConfDupl: TSQLClientDataSet;
    SqlCdsDupl: TSQLClientDataSet;
    SqlCdsDuplFAT_CODIGO: TStringField;
    SqlCdsDuplFPC_NUMER: TStringField;
    SqlCdsDuplCLI_CODIGO: TStringField;
    SqlCdsDuplFPC_DTEMIS: TSQLTimeStampField;
    SqlCdsDuplFPC_VENCTO: TSQLTimeStampField;
    SqlCdsDuplFPC_VLPARC: TFMTBCdField;
    SqlCdsDuplEMP_CODIGO: TStringField;
    SqlCdsDuplCLI_RAZAO: TStringField;
    SqlCdsDuplCLI_ENDERE: TStringField;
    SqlCdsDuplCLI_ENDFAT: TStringField;
    SqlCdsDuplCLI_CIDADE: TStringField;
    SqlCdsDuplCLI_CIDFAT: TStringField;
    SqlCdsDuplCLI_CEP: TStringField;
    SqlCdsDuplCLI_CEPFAT: TStringField;
    SqlCdsDuplCLI_UF: TStringField;
    SqlCdsDuplCLI_UFFAT: TStringField;
    SqlCdsDuplCLI_CGC: TStringField;
    SqlCdsConfDuplCdU_CODIGO: TStringField;
    SqlCdsConfDuplCdU_DTCADA: TDateField;
    SqlCdsConfDuplCdU_ATIVO: TStringField;
    SqlCdsConfDuplCdU_FONTE: TStringField;
    SqlCdsConfDuplEMP_CODIGO: TStringField;
    SqlCdsConfDuplCdU_NATUREZA: TStringField;
    SqlCdsConfDuplCdU_DTEMISSAO: TStringField;
    SqlCdsConfDuplCdU_FATURA: TStringField;
    SqlCdsConfDuplCdU_VALORD: TStringField;
    SqlCdsConfDuplCdU_NORDEM: TStringField;
    SqlCdsConfDuplCdU_VENCTO: TStringField;
    SqlCdsConfDuplCdU_DESCTODE: TStringField;
    SqlCdsConfDuplCdU_DESCTOATE: TStringField;
    SqlCdsConfDuplCdU_DESCTOS: TStringField;
    SqlCdsConfDuplCdU_CONDESPECIAL: TStringField;
    SqlCdsConfDuplCdU_NOMESACADO: TStringField;
    SqlCdsConfDuplCdU_ENDERECO: TStringField;
    SqlCdsConfDuplCdU_BAIRRO: TStringField;
    SqlCdsConfDuplCdU_CIDADE: TStringField;
    SqlCdsConfDuplCdU_ESTADO: TStringField;
    SqlCdsConfDuplCdU_CEP: TStringField;
    SqlCdsConfDuplCdU_FONE: TStringField;
    SqlCdsConfDuplCdU_PRACA: TStringField;
    SqlCdsConfDuplCdU_ENDECOBRA: TStringField;
    SqlCdsConfDuplCdU_CEPCOBRA: TStringField;
    SqlCdsConfDuplCdU_CNPJ: TStringField;
    SqlCdsConfDuplCdU_INSCRESTADUAL: TStringField;
    SqlCdsConfDuplCdU_DATACEITE: TStringField;
    SqlCdsConfDuplCdU_VLEXTENSO: TStringField;
    SqlCdsConfDuplCdU_LINHAS: TStringField;
    SqlCdsDuplFPC_DESCTO: TFMTBCdField;
    SqlCdsDuplFPC_DTDESC: TSQLTimeStampField;
    SqlCdsDuplFPC_IMPDUP: TStringField;
    SqlCdsDuplFPC_SITPAG: TStringField;
    SqlCdsDuplFAT_OPERACAO: TStringField;
    SqlCdsDuplCLI_BAIRRO: TStringField;
    SqlCdsDuplCLI_INSC: TStringField;
    SqlCdsDuplCLI_FONE: TStringField;
    DataEmis: TJvDateEdit;
    EditDataI: TJvDateEdit;
    EditDataF: TJvDateEdit;
    procedure MudaCorCampos(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure EditDataIExit(Sender: tObject);
    procedure EditFaturaExit(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EditParcelaExit(Sender: tObject);
    procedure BitLiberaOKClick(Sender: tObject);
    procedure EdtFat_codigoExit(Sender: tObject);
    procedure EditDataFExit(Sender: tObject);
    procedure Bit_OkClick(Sender: tObject);
    procedure RadDataClick(Sender: tObject);
    procedure RadFaturaClick(Sender: tObject);
    procedure RadRemissaoClick(Sender: tObject);
    procedure BiLiberaCancelaClick(Sender: tObject);
    procedure BitConfigClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
  private
    { Private declarations }
    {campos}
    wDataI,wDataF,wSeleciona : String;
    CampoEdit    :TEdit;
    CampoData    :TjvDateEdit;
    procedure ImprimeDuplicata(wOpcao:String);
    procedure LayOutDuplicata;
    Procedure GravaFlagDuplicata(wTipo:String);
  public
    { Public declarations }
  end;

var
  FormGimpDuplicata: TFormGimpDuplicata;
  wCompCampo : string;
  wNossocodigo : string;   // codigo da empresa no sistema

implementation

{$R *.DFM}

uses  DataCad, uteis, iniciodb;





procedure TFormGimpDuplicata.MudaCorCampos(Sender: tObject);
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
    if ActiveControl is TjvDateEdit then
       begin
          TjvDateEdit(ActiveControl).color := $0080FFFF;
          CampoData := TjvDateEdit(ActiveControl);
       end
    else
       begin
          CampoData := nil;
       end;
end;

procedure TFormGimpDuplicata.FormShow(Sender: tObject);
begin
    Left := 228;
    Top  := 82;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    screen.cursor := crHourGlass;
    Try
      SqlCdsConfDupl.Close;
      SqlCdsConfDupl.CommandText := SQLDEF('PARAMETROS','SELECT D1.* FROM SYSDUPLI D1','WHERE D1.CdU_ATIVO=''S''','D1.EMP_CODIGO','D1.');
      SqlCdsConfDupl.Open;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Abrir a Tabela de Parametros da Duplicata.'+e.message));
    end;
    LayOutDuplicata;
    screen.cursor := crDefault;
end;

procedure TFormGimpDuplicata.EditDataIExit(Sender: tObject);
begin
    if not TestaDataStr(EditDataI.Text) then
       EditDataI.setfocus;
    EditDataF.Text := EditDataI.Text;
end;

procedure TFormGimpDuplicata.EditFaturaExit(Sender: tObject);
begin
    EditFatura.Text := StrZero(EditFatura.Text,6)
end;

procedure TFormGimpDuplicata.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
end;

procedure TFormGimpDuplicata.EditParcelaExit(Sender: tObject);
begin
    if EditParcela.Text <>'' then   // branco
       EditParcela.Text := StrZero(EditParcela.Text,2);
end;

procedure TFormGimpDuplicata.BitLiberaOKClick(Sender: tObject);
var
wDataI,wModifica:String;
begin
    if EdtFat_codigo.Text <> '' then
       begin
           wModifica := 'WHERE FAT_CODIGO='''+EdtFat_Codigo.text+'''';
       end
    else
       begin
           if (EdtFat_Codigo.Text = '') and (DataEmis.Text <> '00/00/0000') then
              wModifica := 'WHERE FPC_DTEMIS='''+DataAmericana(DataEmis.Text)+''' and FPC_PREVISAO = ''N''';
       end;
    Try
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('RECEBER','UPDATE FAT_PC01 SET FPC_IMPDUP=''S''',wModifica,'','');
      DataCadastros.sqlUpdate.Execsql;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Não foi possível liberar. Tente novamente.'+e.message));
    end;
    RadData.Checked := True;
    LayOutDuplicata;
end;

procedure TFormGimpDuplicata.EdtFat_codigoExit(Sender: tObject);
begin
    EdtFat_codigo.Text := StrZero(EdtFat_codigo.Text,6);
    try
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('RECEBER','Select f1.Fat_codigo,f1.Fpc_previsao from FAT_PC01 f1 ','where  f1.FAT_CODIGO = '''+EdtFat_codigo.Text+''' and F1.FPC_PREVISAO = ''S''','F1.FAT_CODIGO','F1.');
      DataCadastros.sqlUpdate.Open;
      if DataCadastros.sqlUpdate.IsEmpty = false then
         begin
             uteis.aviso(pchar('Impossível imprimir duplicata !'+#13+'Duplicata de previsão !'));
             EdtFat_codigo.Text := '';
             EdtFat_Codigo.SelectAll;
             EdtFat_Codigo.SetFocus;
         end;

    except on e:EdataBaseError do
       uteis.erro  (pchar('erro ao checar a duplicata !'));
    end;
end;

procedure TFormGimpDuplicata.EditDataFExit(Sender: tObject);
begin
    if not TestaDataStr(EditDataF.Text) then
       EditDataF.setfocus;
end;

procedure TFormGimpDuplicata.Bit_OkClick(Sender: tObject);
begin
    // verifica se a data final é maior que a data inicial
    if EditDataI.Date > EditDataF.Date then
       begin
           uteis.erro  ('Data final não pode ser menor que a data inicial!');
           EditDataF.Setfocus;
           exit;
       end;
    if RadData.checked  then
       begin
           wSeleciona := 'WHERE F1.FPC_DTEMIS BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.text)+''' AND P1.FPC_SITPAG=''P'' AND P1.FPC_IMPDUP=''S'' AND P1.FPC_PREVISAO = ''N''';
       end
    else
       begin
           if EditParcela.Text <> '' then
              wSeleciona := 'WHERE F1.FAT_CODIGO = '''+StrZero(EditFatura.Text,6)+''' AND P1.FPC_NUMER = '''+StrZero(EditParcela.Text,2)+'''AND P1.FPC_SITPAG=''P'' AND P1.FPC_IMPDUP=''S'' AND P1.FPC_PREVISAO = ''N'''
           else
              wSeleciona := 'WHERE F1.FAT_CODIGO = '''+StrZero(EditFatura.Text,6)+''' AND P1.FPC_SITPAG = ''P'' AND P1.FPC_IMPDUP=''S'' AND P1.FPC_PREVISAO = ''N''';
       end;
    {Abrir a SqlCdsDupl}
    try
      SqlCdsDupl.CLOSE;
      SqlCdsDupl.CommandText := SQLDEF('RECEBER','SELECT P1.FAT_CODIGO,P1.FPC_NUMER,P1.CLI_CODIGO,P1.FPC_DTEMIS,P1.FPC_VENCTO,P1.FPC_VLPARC,P1.FPC_DESCTO,P1.FPC_DTDESC,P1.FPC_IMPDUP,P1.FPC_SITPAG,'+
                                       'P1.EMP_CODIGO,A1.FAT_OPERACAO,C1.CLI_RAZAO,C1.CLI_ENDERE,C1.CLI_BAIRRO,C1.CLI_CEP,C1.CLI_CIDADE,C1.CLI_UF,C1.CLI_FONE,C1.CLI_ENDFAT,C1.CLI_CIDFAT,C1.CLI_CEPFAT,'+
                                       'C1.CLI_UFFAT,C1.CLI_CGC,C1.CLI_INSC FROM fat_pc01 P1 JOIN CLI0000 C1 ON C1.cli_codigo = P1.cli_codigo JOIN FAT0000 A1 ON A1.FAT_CODIGO = P1.FAT_CODIGO ',wSeleciona,'P1.FAT_CODIGO,P1.FPC_NUMER','P1.');
      SqlCdsDupl.Open;
      if SqlCdsDupl.IsEmpty = false then
         begin
             if RadData.checked  then
                begin
                    ImprimeDuplicata('DT');
                end
             else
                begin
                    ImprimeDuplicata('NM');
                end;
         end;
    except on E:EDataBaseError do
       uteis.erro  (Pchar('Erro ao Abrir a Tabela RECEBER !'+E.MESSAGE));
    end;
    if RadData.checked  then
       begin
           EditDataI.SetFocus;
       end
    else
       begin
           EditFatura.SetFocus;
       end;

    screen.cursor := crDefault;
end;

procedure TFormGimpDuplicata.ImprimeDuplicata(wOpcao:String);
var
  wVal_Extenso:String;
  wLinha:Integer;
begin
    RDprintDup.FonteTamanhoPadrao := IIF(SqlCdsConfDuplCdU_FONTE.AsString='10',S10cpp,S17cpp);
    RDprintDup.TamanhoQteLinhas   := StrToInt(SqlCdsConfDuplCdU_LINHAS.AsString);
    if RadVideo.checked  then
       RDprintDup.OpcoesPreview.Preview := True
    else
       RDprintDup.OpcoesPreview.Preview := False;

    RDprintDup.Abrir;
    screen.Cursor := CrHourglass;
    {Abrir o SqlCdsBoleto}
    while not SqlCdsDupl.Eof do
      begin
          {Natureza da Operacao}
          if Copy(SqlCdsConfDuplCdU_NATUREZA.AsString,7,1)='S' then
             RDprintDup.Imp(StrToInt(COPY(SqlCdsConfDuplCdU_NATUREZA.AsString,1,3)),StrToInt(COPY(SqlCdsConfDuplCdU_NATUREZA.AsString,4,3)),SqlCdsDuplFAT_OPERACAO.AsString);
          {Data de Emissao}
          if Copy(SqlCdsConfDuplCdU_DTEMISSAO.AsString,7,1)='S' then
             RDprintDup.Imp(StrToInt(COPY(SqlCdsConfDuplCdU_DTEMISSAO.AsString,1,3)),StrToInt(COPY(SqlCdsConfDuplCdU_DTEMISSAO.AsString,4,3)),DateToStr(SqlCdsDuplFPC_DTEMIS.AsDateTime));
          {Fatura Nº}
          if Copy(SqlCdsConfDuplCdU_FATURA.AsString,7,1)='S' then
             RDprintDup.Imp(StrToInt(COPY(SqlCdsConfDuplCdU_FATURA.AsString,1,3)),StrToInt(COPY(SqlCdsConfDuplCdU_FATURA.AsString,4,3)),SqlCdsDuplFAT_CODIGO.AsString);
          {Valor R$}
          if Copy(SqlCdsConfDuplCdU_VALORD.AsString,7,1)='S' then
             RDprintDup.ImpVal(StrToInt(COPY(SqlCdsConfDuplCdU_VALORD.AsString,1,3)),StrToInt(COPY(SqlCdsConfDuplCdU_VALORD.AsString,4,3)),'##,###,##0.00',SqlCdsDuplFPC_VLPARC.AsCurrency,[]);
          {Nº da Ordem/Nº Parcela}
          if Copy(SqlCdsConfDuplCdU_NORDEM.AsString,7,1)='S' then
             RDprintDup.Imp(StrToInt(COPY(SqlCdsConfDuplCdU_NORDEM.AsString,1,3)),StrToInt(COPY(SqlCdsConfDuplCdU_NORDEM.AsString,4,3)),SqlCdsDuplFAT_CODIGO.AsString+IIF(SqlCdsDuplFPC_NUMER.AsString<>'','/','')+SqlCdsDuplFPC_NUMER.AsString);
          {Data de Vencto}
          if Copy(SqlCdsConfDuplCdU_VENCTO.AsString,7,1)='S' then
             RDprintDup.Imp(StrToInt(COPY(SqlCdsConfDuplCdU_VENCTO.AsString,1,3)),StrToInt(COPY(SqlCdsConfDuplCdU_VENCTO.AsString,4,3)),DateToStr(SqlCdsDuplFPC_VENCTO.AsDateTime));
          {Desconto de:}
          if Copy(SqlCdsConfDuplCdU_DESCTODE.AsString,7,1)='S' then
             RDprintDup.ImpVal(StrToInt(COPY(SqlCdsConfDuplCdU_DESCTODE.AsString,1,3)),StrToInt(COPY(SqlCdsConfDuplCdU_DESCTODE.AsString,4,3)),'##,###,##0.00',SqlCdsDuplFPC_DESCTO.AsCurrency,[]);
          {Até data}
          if Copy(SqlCdsConfDuplCdU_DESCTOATE.AsString,7,1)='S' then
             RDprintDup.Imp(StrToInt(COPY(SqlCdsConfDuplCdU_DESCTOATE.AsString,1,3)),StrToInt(COPY(SqlCdsConfDuplCdU_DESCTOATE.AsString,4,3)),DateToStr(SqlCdsDuplFPC_DTDESC.AsDateTime));
          {Sacado}
          if Copy(SqlCdsConfDuplCdU_NOMESACADO.AsString,7,1)='S' then
             RDprintDup.Imp(StrToInt(COPY(SqlCdsConfDuplCdU_NOMESACADO.AsString,1,3)),StrToInt(COPY(SqlCdsConfDuplCdU_NOMESACADO.AsString,4,3)),SqlCdsDuplCLI_RAZAO.AsString);
          {Endereço}
          if Copy(SqlCdsConfDuplCdU_ENDERECO.AsString,7,1)='S' then
             RDprintDup.Imp(StrToInt(COPY(SqlCdsConfDuplCdU_ENDERECO.AsString,1,3)),StrToInt(COPY(SqlCdsConfDuplCdU_ENDERECO.AsString,4,3)),SqlCdsDuplCLI_ENDERE.AsString);
          {Bairro}
          if Copy(SqlCdsConfDuplCdU_BAIRRO.AsString,7,1)='S' then
             RDprintDup.Imp(StrToInt(COPY(SqlCdsConfDuplCdU_BAIRRO.AsString,1,3)),StrToInt(COPY(SqlCdsConfDuplCdU_BAIRRO.AsString,4,3)),SqlCdsDuplCLI_BAIRRO.AsString);
          {Municipio}
          if Copy(SqlCdsConfDuplCdU_CIDADE.AsString,7,1)='S' then
             RDprintDup.Imp(StrToInt(COPY(SqlCdsConfDuplCdU_CIDADE.AsString,1,3)),StrToInt(COPY(SqlCdsConfDuplCdU_CIDADE.AsString,4,3)),SqlCdsDuplCLI_CIDADE.AsString);
          {Estado}
          if Copy(SqlCdsConfDuplCdU_ESTADO.AsString,7,1)='S' then
             RDprintDup.Imp(StrToInt(COPY(SqlCdsConfDuplCdU_ESTADO.AsString,1,3)),StrToInt(COPY(SqlCdsConfDuplCdU_ESTADO.AsString,4,3)),SqlCdsDuplCLI_UF.AsString);
          {Cep}
          if Copy(SqlCdsConfDuplCdU_CEP.AsString,7,1)='S' then
             RDprintDup.Imp(StrToInt(COPY(SqlCdsConfDuplCdU_CEP.AsString,1,3)),StrToInt(COPY(SqlCdsConfDuplCdU_CEP.AsString,4,3)),MASCARACEP(SqlCdsDuplCLI_CEP.AsString));
          {Fone}
          if Copy(SqlCdsConfDuplCdU_FONE.AsString,7,1)='S' then
             RDprintDup.Imp(StrToInt(COPY(SqlCdsConfDuplCdU_FONE.AsString,1,3)),StrToInt(COPY(SqlCdsConfDuplCdU_FONE.AsString,4,3)),MascaraFone(SqlCdsDuplCLI_FONE.AsString));
          {CNPJ}
          if Copy(SqlCdsConfDuplCdU_CNPJ.AsString,7,1)='S' then
             RDprintDup.Imp(StrToInt(COPY(SqlCdsConfDuplCdU_CNPJ.AsString,1,3)),StrToInt(COPY(SqlCdsConfDuplCdU_CNPJ.AsString,4,3)),MascaraCNPJ_CPF(SqlCdsDuplCLI_CGC.AsString));
          {INSC.ESTADUAL}
          if Copy(SqlCdsConfDuplCdU_INSCRESTADUAL.AsString,7,1)='S' then
             RDprintDup.Imp(StrToInt(COPY(SqlCdsConfDuplCdU_INSCRESTADUAL.AsString,1,3)),StrToInt(COPY(SqlCdsConfDuplCdU_INSCRESTADUAL.AsString,4,3)),SqlCdsDuplCLI_INSC.AsString);
          // Verificar se Praça de Pagto diferente
          if SqlCdsDuplCLI_CIDFAT.Value = '' then
             begin
                 {ENDERECO PRAÇA É O MESMO}
                 if Copy(SqlCdsConfDuplCdU_PRACA.AsString,7,1)='S' then
                    RDprintDup.Imp(StrToInt(COPY(SqlCdsConfDuplCdU_PRACA.AsString,1,3)),StrToInt(COPY(SqlCdsConfDuplCdU_PRACA.AsString,4,3)),SqlCdsDuplCLI_CIDADE.AsString+' - '+SqlCdsDuplCLI_UF.AsString);
             end
          else
             begin
                 {ENDERECO PRAÇA É OUTRO}
                 // se existe na duplicata o campo p/ end.cobrancao separado
                 if Copy(SqlCdsConfDuplCdU_ENDECOBRA.AsString,7,1)='S' then
                    begin
                        {Endereço praça - quanto tem espaço p/praça e p/end.cobrança}
                        if Copy(SqlCdsConfDuplCdU_PRACA.AsString,7,1)='S' then
                           RDprintDup.Imp(StrToInt(COPY(SqlCdsConfDuplCdU_PRACA.AsString,1,3)),StrToInt(COPY(SqlCdsConfDuplCdU_PRACA.AsString,4,3)),SqlCdsDuplCLI_CIDFAT.AsString+' - '+SqlCdsDuplCLI_UFFAT.AsString);
                        RDprintDup.Imp(StrToInt(COPY(SqlCdsConfDuplCdU_ENDECOBRA.AsString,1,3)),StrToInt(COPY(SqlCdsConfDuplCdU_ENDECOBRA.AsString,4,3)),SqlCdsDuplCLI_ENDFAT.AsString);
                    end
                 else
                    begin
//                      wCampoAux:=Trim(SqlCdsDuplCLI_ENDFAT.AsString)+' - '+Trim(SqlCdsDuplCLI_CIDFAT.AsString)+'/'+SqlCdsDuplCLI_UFFAT.AsString;
                        if Copy(SqlCdsConfDuplCdU_PRACA.AsString,7,1)='S' then
                           RDprintDup.Imp(StrToInt(COPY(SqlCdsConfDuplCdU_PRACA.AsString,1,3)),StrToInt(COPY(SqlCdsConfDuplCdU_PRACA.AsString,4,3)),Trim(SqlCdsDuplCLI_ENDFAT.AsString)+' - '+Trim(SqlCdsDuplCLI_CIDFAT.AsString)+' - '+SqlCdsDuplCLI_UFFAT.AsString);
                    end;
                    {CEP END.COBRANCA e/ou CEP DA PRAÇA PAGTO}
                    if Copy(SqlCdsConfDuplCdU_CEPCOBRA.AsString,7,1)='S' then
                       RDprintDup.Imp(StrToInt(COPY(SqlCdsConfDuplCdU_CEPCOBRA.AsString,1,3)),StrToInt(COPY(SqlCdsConfDuplCdU_CEPCOBRA.AsString,4,3)),MASCARACEP(SqlCdsDuplCLI_CEPFAT.AsString));
             end;
          {Valor por Extenso}
          if Copy(SqlCdsConfDuplCdU_VLEXTENSO.AsString,7,1)='S' then
             begin
                 wVal_Extenso:= Extenso(SqlCdsDuplFPC_VLPARC.AsCurrency);
                 wLinha:= StrToInt(Copy(SqlCdsConfDuplCdU_VLEXTENSO.AsString,1,3));
                 RDprintDup.imp(wLinha  ,StrToInt(Copy(SqlCdsConfDuplCdU_VLEXTENSO.AsString,4,3)),copy(wVal_Extenso, 1,90));
                 RDprintDup.imp(wLinha+1,StrToInt(Copy(SqlCdsConfDuplCdU_VLEXTENSO.AsString,4,3)),copy(wVal_Extenso,91,90));
             end;
          GravaFlagDuplicata(wOpcao);
          RDprintDup.Novapagina;
          SqlCdsDupl.Next;
      end;
    RDprintDup.Fechar;
    Screen.Cursor := crDefault;
end;

procedure TFormGimpDuplicata.RadDataClick(Sender: tObject);
begin
    EditFatura.Text  := '';
    EditParcela.Text := '';
    LayOutDuplicata;
end;

procedure TFormGimpDuplicata.RadFaturaClick(Sender: tObject);
begin
    EditDatai.Clear;
    EditDataF.Clear;
    LayOutDuplicata;
end;

procedure TFormGimpDuplicata.RadRemissaoClick(Sender: tObject);
begin
    LayOutDuplicata;
end;

procedure TFormGimpDuplicata.LayOutDuplicata;
begin
    {Configura o LayOut do Gerenciador de Duplicatas}
    if RadData.checked  then
       begin
           {Desativa Groups}
           Group02.Visible := False;
           Group03.Visible := False;
           {Ativar Groups}
           Group00.Visible := True;
           GroupDispositivo.Visible := True;
           Group01.Visible := True;
           Group04.Visible := True;
           Group05.Visible := True;
           {Reposicionamento do forms}
           Group01.Top     := 99;
           Group04.Top     := 140;
           Group05.Top     := 183;
           EditDataI.Date := now;
           EditDataF.Date := now;
       end;
    if RadFatura.checked  then
       begin
           {Desativa Groups}
           Group01.Visible := False;
           Group03.Visible := False;
           {Ativar Groups}
           Group00.Visible := True;
           GroupDispositivo.Visible := True;
           Group02.Visible := True;
           Group04.Visible := True;
           Group05.Visible := True;
           {Reposicionamento do forms}
           Group02.Top     := 99;
           Group04.Top     := 140;
           Group05.Top     := 183;
       end;
    if RadRemissao.checked  then
       begin
           {Desativa Groups}
           Group00.Visible := False;
           GroupDispositivo.Visible := False;
           Group01.Visible := False;
           Group02.Visible := False;
           Group04.Visible := False;
           Group05.Visible := False;
           {Ativar Groups}
           Group03.Visible := True;
           {Reposicionamento do forms}
           Group03.Top     := 0;
       end;
    FormGimpDuplicata.AutoSize := True;
end;

procedure TFormGimpDuplicata.BiLiberaCancelaClick(Sender: tObject);
begin
    RadData.Checked := true;
    LayOutDuplicata;
end;

procedure TFormGimpDuplicata.BitConfigClick(Sender: tObject);
begin
    PrinterSetupDialog1.Execute;
end;

procedure TFormGimpDuplicata.GravaFlagDuplicata(wTipo:String);
var
  wModifica : String;
begin
    // Colocar flag de impressao nas faturas impressas
    // Flag ->  S = sim
    // Paramentros : wTipo -> "DT" = impressao por Data ou "NM" = impressao por numero
    // verifica se a data final é maior que a data inicial
    if EditDataI.Date > EditDataF.Date then
       begin
           uteis.erro  ('Data final não pode ser menor que a data inicial!');
           EditDataF.Setfocus;
           exit;
       end;
    if wTipo = 'DT' then
       begin
           wModifica := 'WHERE FPC_DTEMIS BETWEEN '''+DataAmericana(EditDataI.Text)+'''AND '''+DataAmericana(EditDataF.text)+'''AND FPC_PREVISAO = ''N''';
       end
    else
       begin
           if EditParcela.Text<>'' then
              begin
                  wModifica := 'WHERE FAT_CODIGO = '''+StrZero(EditFatura.Text,EditFatura.MaxLength)+'''AND FPC_NUMER = '''+StrZero(EditParcela.text,EditParcela.MaxLength)+'''AND FPC_PREVISAO = ''N''';
              end
           else
              begin
                  wModifica := 'WHERE FAT_CODIGO = '''+StrZero(EditFatura.Text,EditFatura.MaxLength)+'''AND FPC_PREVISAO = ''N''';
              end;
       end;
    Try
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('RECEBER','UPDATE FAT_PC01 SET FPC_IMPDUP=''N''',wModifica,'','');
      DataCadastros.sqlUpdate.Execsql;
      exit;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Não foi possível Atualizar. Tente novamente.'+e.message));
    end;
end;

procedure TFormGimpDuplicata.Bit_CancelarClick(Sender: tObject);
begin
    Close;
end;

procedure TFormGimpDuplicata.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    try
      SqlCdsConfDupl.Close;
      SqlCdsDupl.Close;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao Fechar as Tabelas.'+e.message));
    end;
end;

end.
