unit FATPARC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseDbForm,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DB,  Mask,
  DBCtrls, RWFunc, ExtCtrls, SqlExpr, Provider, DBClient,
  ComboBoxRw,  SgDbSeachComboUnit, Data.DBXFirebird, Data.FMTBCd, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  ualterarfaturaParcela, JvExMask, JvToolEdit, JvDBControls, JvExStdCtrls, JvEdit, JvValidateEdit, RxToolEdit, RxCurrEdit;

type
  TfrmFATPARC = class(TfrmBaseDB)
    DBGrid1: TDBGrid;
    BitConfirmaParcelas: TBitBtn;
    edParcela: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edTotalReceber: TEdit;
    BitBtn2: TBitBtn;
    pnParc: TPanel;
    edTotalNF: TEdit;
    Label5: TLabel;
    grpContaFinanceira: TGroupBox;
    EdtOpe_Codigo: TEdit;
    CbxCtaAnalise: TComboBoxRw;
    pnPgto: TPanel;
    lblDiferenca: TLabel;
    dsRecParce: TDataSource;
    cdsParcelas: TClientDataSet;
    cdsParcelasFPC_NUMBER: TStringField;
    cdsParcelasFAT_NUMSERIE: TStringField;
    DBDateEdit1: TJvDBDateEdit;
    Label4: TLabel;
    currValorAntecipado: TJvValidateEdit;
    edtDiferenca: TCurrencyEdit;
    btnCredito: TSpeedButton;
    cdsCreditoConta: TClientDataSet;
    cdsCreditoContaCodigo: TStringField;
    cdsCreditoContaDocumento: TStringField;
    cdsCreditoContaData: TSQLTimeStampField;
    cdsCreditoContacredito: TFMTBCDField;
    cdsCreditoContausado: TFMTBCDField;
    cdsCreditoContaselecionado: TBooleanField;
    procedure BitConfirmaParcelasClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure BitBtn2Click(Sender: tObject);
    procedure EdtOpe_CodigoExit(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure edParcelaExit(Sender: tObject);
    procedure CbxCtaAnaliseSelect(Sender: TObject);
    procedure edParcelaChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure currValorAntecipadoExit(Sender: TObject);
    procedure btnCreditoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private

   WPCL_CODIGO, fNumfatura, FNumSerie, sOperFat, FEmp_codigo :String;
   wFAT_VLFAT, fFat_VlLiq: currency ;
   fIntegrar , fExisteFatura : boolean;
   procedure CalculaDiferenca;
   procedure SetNumFatura(const Value: String);
   procedure SetNumSerie (const value: string);
   procedure TirarDuplicidade;

  public
    rValorFaturar:Real;
    Property NumFatura: String Write SetNumFatura;
    Property FAT_VLFAT: currency read wFAT_VLFAT write wFAT_VLFAT;
    property Fat_vlliq: currency read fFat_VlLiq write fFat_VlLiq;
    Property PCL_CODIGO: string read WPCL_CODIGO write WPCL_CODIGO;
    Property NumeroSerie :string read FNumSerie write SetNumSerie;
    property Integrar :boolean read fIntegrar write fIntegrar;
    property ExisteFatura: boolean read fExisteFatura write fExisteFatura;
    property Emp_Codigo : string read FEmp_codigo write FEmp_codigo;
    function ContasReceberBaixaAuto(const sFaturaRegistro, sContaBancoRegistro, sFormaPgtoRegistro,
             sUsuarioCodido: String; const rBaixar, rDesconto, rJuros, rMulta, rRecebido, rTarifa: Currency;
             const dDataRecebimento: TDateTime): Boolean;

  end;

var
   frmFATPARC: TfrmFATPARC;

implementation

uses Uteis, Fat0003, iniciodb, uPesqCreditoFatura, BaseDbFaturamentoForm;

{$R *.dfm}

procedure TfrmFATPARC.BitConfirmaParcelasClick(Sender: tObject);
var wfatura, wConcatSE, wValidaFatura, wValidaParcela, wValidaCliente   :string;
    bVencimentoMenosEmissao, semValorComercial :Boolean;
    wValidaValor  : currency ;
    wValidaVencto : TDateTime;
    wQuantidadeParcelas: integer;

begin
   try
     BitConfirmaParcelas.Enabled := False;
     wFatura := StrZero( FNumFatura , 6 );
     if (EdtOpe_Codigo.Text = '000') or (EdtOpe_Codigo.Text = '') then
         uteis.aviso('Informe uma Conta Financeira!')
     else
     if (FormFatPedido.CdsRecParce.IsEmpty) then
        ModalResult:=mrOk
     Else
     begin
         bVencimentoMenosEmissao := False;
         FormFatPedido.CdsRecParce.DisableControls;

             FormFatPedido.CdsRecParce.First;
             while not FormFatPedido.CdsRecParce.Eof do
             begin
                  if (FormFatPedido.CdsRecParceFPC_DTEMIS.AsDateTime > FormFatPedido.CdsRecParceFPC_VENCTO.AsDateTime) then
                     bVencimentoMenosEmissao := True;
                  FormFatPedido.CdsRecParce.Edit;
                  FormFatPedido.CdsRecParceCCT_CODIGO.AsString := EdtOpe_Codigo.Text;
                  FormFatPedido.CdsRecParce.Post;


                  if ( BuscaUmDadoSqlAsString('select FPG_BAIXARECEBER from FORMA_PAGAMENTO where fpg_registro = '+IntToStr(FormFatPedido.CdsRecParceFPG_REGISTRO.AsInteger)) = 'S')
                  and (FormFatPedido.CdsRecParceFPC_VLPARC.AsCurrency > 0)
                  then
                    ContasReceberBaixaAuto(
                        inttostr(FormFatPedido.CdsRecParceFAT_REGISTRO.AsInteger),
                        FormFatPedido.CdsRecParceBAN_CODIGO.asString,
                        IntToStr(FormFatPedido.CdsRecParceFPG_REGISTRO.AsInteger) ,
                        dbInicio.Usuario.Codigo,
                        FormFatPedido.CdsRecParceFPC_VLPARC.AsCurrency, 0,0,0,
                        FormFatPedido.CdsRecParceFPC_VLPARC.AsCurrency,0,now);

                  FormFatPedido.CdsRecParce.Next;

             end;

             if Uteis.RoundTo( FormFatPedido.CdsRecParceTotalParc.Value, -2) <> uteis.roundto(fFat_VlLiq-currValorAntecipado.AsCurrency,-2)  then
             begin
                  Application.MessageBox('A soma das parcelas não pode ser diferente do valor da total da fatura. Verifique.', 'Atenção',MB_ICONERROR);
                  edParcela.SetFocus;
                  Exit;
             end
             Else
             if (bVencimentoMenosEmissao) then
                 if Uteis.Confirmacao('Verificada(s) Fatura(s) com Vencimento Menor que a Emissão !!'+#13+'Deseja Salvar Assim Mesmo???')<>mrYes then
                 begin
                      edParcela.SetFocus;
                      Exit;
                 end;

             FormFatPedido.CdsRecParce.First;
             if not ExisteFatura  then
                ExecSql('DELETE FROM NF_PC01 WHERE FAT_CODIGO = '+qStr(StrZero(FormFatPedido.CdsRecParceFAT_CODIGO.AsString,6)));
             cdsParcelas.CreateDataSet;
             WHILE NOT FormFatPedido.CdsRecParce.Eof DO
             begin
                wfatura := FormFatPedido.CdsRecParceFAT_CODIGO.Value;
              ///  if not cdsParcelas.Locate('FPC_NUMBER',FormFatPedido.CdsRecParceFPC_NUMER.AsString,[]) then
                if not ExisteFatura then
                begin
                  ExecSql('insert into NF_PC01 ( FAT_CODIGO, FPC_NUMER, REP_CODIGO, BAN_CODIGO, PCX_CODIGO, FPC_DTEMIS, FPC_NPARCELAS, '+
                          '                      FPC_COBNUM, FPC_COBTIPO, FPC_TIPODOC, FPC_SITPAG, FPC_STATUS, FPC_DESCTO, FPC_DTDESC, FPC_VENCTO, '+
                          '                      FPC_PAGTO, FPC_VLPARC, FPC_VLPAGO, FPC_OBS, CLI_CODIGO, FPC_IMPDUP, FPC_JUROS, FPC_MULTA, FPC_VL_RET, '+
                          '                      EMP_CODIGO, CCT_NOVO, FPC_PREVISAO, FPC_STATUS_REMESSA, FPC_DATA_REMESSA, BAN_COD_APELIDO, FPC_STATUS_BAIXA, '+
                          '                      FPC_FORMAPAGTO, FPC_DESCONTADO, FPC_DATADESCTO, FPC_CONFIRMADESCTO, FPC_CONFIRMADEVOLUCAO, FPC_DATADEVOLUCAO, '+
                          '                      FPC_OBS_DESCTO, FPC_JUROS_DESCTO, PAG_CODIGO, FPC_BANCO_CHEQUE, FPC_NUM_CHEQUE, FPC_NUM_CHEQUE_DV, FPC_CHEQUE_DATA, '+
                          '                      FPC_SACADO_CHEQUE, FPC_EXCLUSAO, FPC_DATA_EXCLUSAO, FPC_HORA_EXCLUSAO, FPC_MOTIVO_EXCLUSAO, USU_CODIGO, '+
                          '                      USU_LOGIN, CCT_CODIGO ) '+
                          'values ( '+qStr(StrZero(FormFatPedido.CdsRecParceFAT_CODIGO.assTring,6))+', '+  //FAT_CODIGO
                          '         '+qStr(FormFatPedido.CdsRecParceFPC_NUMER.asstring)+', '+  //FPC_NUMER
                          '         '+qStr(FormFatPedido.CdsRecParceREP_CODIGO.asString)+', '+ //REP_CODIGO
                          '         '+qStr(FormFatPedido.CdsRecParceBAN_CODIGO.asString)+', '+ // BAN_CODIGO
                          '         '+qStr(FormFatPedido.CdsRecParcePCX_CODIGO.asString)+', '+ //  PCX_CODIGO
                          '         '+DateToSql(FormFatPedido.CdsRecParceFPC_DTEMIS.AsDateTime)+', '+ // FPC_DTEMIS
                          '         '+FormFatPedido.CdsRecParceFPC_NPARCELAS.asString+', '+ //FPC_NPARCELAS
                          '         '+qStr(FormFatPedido.CdsRecParceFPC_COBNUM.asString)+', '+  //FPC_COBNUM
                          '         '+qStr(FormFatPedido.CdsRecParceFPC_COBTIPO.asString)+', '+ //FPC_COBTIPO
                          '         '+qStr(FormFatPedido.CdsRecParceFPC_TIPODOC.asString)+', '+ //FPC_TIPODOC
                          '         '+qStr(FormFatPedido.CdsRecParceFPC_SITPAG.asString)+', '+ // FPC_SITPAG
                          '         '+qStr(FormFatPedido.CdsRecParceFPC_STATUS.asString)+', '+ //FPC_STATUS
                          '         '+FloatToSql(FormFatPedido.CdsRecParceFPC_DESCTO.AsCurrency)+', '+ //FPC_DESCTO
                          '         '+DateToSql(FormFatPedido.CdsRecParceFPC_DTDESC.AsDateTime)+', '+ //FPC_DTDESC
                          '         '+DateToSql(FormFatPedido.CdsRecParceFPC_VENCTO.AsDateTime)+', '+ //FPC_VENCTO
                          '         '+DateToSql(FormFatPedido.CdsRecParceFPC_PAGTO.AsDateTime)+', '+  //FPC_PAGTO
                          '         '+FloatToSql(FormFatPedido.CdsRecParceFPC_VLPARC.AsCurrency)+', '+ //  FPC_VLPARC
                          '         '+FloatToSql(FormFatPedido.CdsRecParceFPC_VLPAGO.AsCurrency)+', '+ //FPC_VLPAGO
                          '         '+qStr(FormFatPedido.CdsRecParceFPC_OBS.asString)+', '+ // FPC_OBS
                          '         '+qStr(FormFatPedido.CdsRecParceCLI_CODIGO.asString)+', '+ // CLI_CODIGO
                          '         '+qStr(FormFatPedido.CdsRecParceFPC_IMPDUP.asString)+', '+ //FPC_IMPDUP
                          '         '+FloatToSql(FormFatPedido.CdsRecParceFPC_JUROS.AsCurrency)+', '+ // FPC_JUROS
                          '         '+FloatToSql(FormFatPedido.CdsRecParceFPC_MULTA.AsCurrency)+', '+ //FPC_MULTA
                          '         '+FloatToSql(FormFatPedido.CdsRecParceFPC_VL_RET.AsCurrency)+', '+ //FPC_VL_RET, '
                          '         '+qStr(Emp_Codigo)+', '+  //EMP_CODIGO
                          '         '+qStr(FormFatPedido.CdsRecParceCCT_NOVO.asString)+', '+ //CCT_NOVO
                          '         '+qStr(FormFatPedido.CdsRecParceFPC_PREVISAO.asString)+', '+ //FPC_PREVISAO
                          '         '+qStr(FormFatPedido.CdsRecParceFPC_STATUS_REMESSA.asString)+', '+ //FPC_STATUS_REMESSA
                          '         '+DateToSql(FormFatPedido.CdsRecParceFPC_DATA_REMESSA.AsDateTime)+', '+ //FPC_DATA_REMESSA
                          '         '+FormFatPedido.CdsRecParceBAN_COD_APELIDO.AsString+', '+ //BAN_COD_APELIDO
                          '         '+qStr(FormFatPedido.CdsRecParceFPC_STATUS_BAIXA.asString)+', '+ //FPC_STATUS_BAIXA
                          '         '+qStr(FormFatPedido.CdsRecParceFPC_FORMAPAGTO.asString)+', '+  //FPC_FORMAPAGTO
                          '         '+qStr(FormFatPedido.CdsRecParceFPC_DESCONTADO.asString)+', '+ //FPC_DESCONTADO
                          '         '+DateToSql(FormFatPedido.CdsRecParceFPC_DATADESCTO.AsDateTime)+', '+ //FPC_DATADESCTO
                          '         '+qStr(FormFatPedido.CdsRecParceFPC_CONFIRMADESCTO.asString)+', '+ //FPC_CONFIRMADESCTO
                          '         '+qStr(FormFatPedido.CdsRecParceFPC_CONFIRMADEVOLUCAO.asString)+', '+ //FPC_CONFIRMADEVOLUCAO
                          '         '+DateToSql(FormFatPedido.CdsRecParceFPC_DATADEVOLUCAO.AsDateTime)+', '+ //FPC_DATADEVOLUCAO
                          '         '+qStr(FormFatPedido.CdsRecParceFPC_OBS_DESCTO.asString)+', '+  //FPC_OBS_DESCTO
                          '         '+FloatToSql(FormFatPedido.CdsRecParceFPC_JUROS_DESCTO.AsCurrency)+', '+ //FPC_JUROS_DESCTO
                          '         '+qStr(FormFatPedido.CdsRecParcePAG_CODIGO.asString)+', '+ //PAG_CODIGO
                          '         0, '+ //FPC_BANCO_CHEQUE
                          '         '+qStr(FormFatPedido.CdsRecParceFPC_NUM_CHEQUE.asString)+', '+ //FPC_NUM_CHEQUE
                          '         '+qStr(FormFatPedido.CdsRecParceFPC_NUM_CHEQUE_DV.asString)+', '+ //FPC_NUM_CHEQUE_DV
                          '         '+DateToSql(FormFatPedido.CdsRecParceFPC_CHEQUE_DATA.AsDateTime)+', '+ //FPC_CHEQUE_DATA
                          '         '+qStr(FormFatPedido.CdsRecParceFPC_SACADO_CHEQUE.asString)+', '+ //FPC_SACADO_CHEQUE
                          '         '+qStr(FormFatPedido.CdsRecParceFPC_EXCLUSAO.asString)+', '+ //FPC_EXCLUSAO
                          '         '+DateToSql(FormFatPedido.CdsRecParceFPC_DATA_EXCLUSAO.AsDateTime)+', '+ // FPC_DATA_EXCLUSAO
                          '         '+DateToSql(FormFatPedido.CdsRecParceFPC_HORA_EXCLUSAO.AsDateTime)+', '+ // FPC_HORA_EXCLUSAO
                          '         '+qStr(FormFatPedido.CdsRecParceFPC_MOTIVO_EXCLUSAO.asString)+', '+ // FPC_MOTIVO_EXCLUSAO
                          '         '+FormFatPedido.CdsRecParceUSU_CODIGO.AsString+', '+ //USU_CODIGO
                          '         '+qStr(FormFatPedido.CdsRecParceUSU_LOGIN.asString)+', '+ //USU_LOGIN
                          '         '+qStr(StrZero(EdtOpe_Codigo.Text,3))+' )' ); //CCT_CODIGo


                  cdsParcelas.Insert;
                  cdsParcelasFPC_NUMBER.AsString :=  FormFatPedido.CdsRecParceFPC_NUMER.AsString;
                  cdsParcelasFAT_NUMSERIE.AsString := NumeroSerie;
                  cdsParcelas.Post;

                end
                else
                begin
                  ExecSql('update NF_PC01 set FPC_VLPARC = FPC_VLPARC + '+FloatToSql(FormFatPedido.CdsRecParceFPC_VLPARC.AsCurrency)+
                          ' where  FAT_CODIGO = '+QuotedStr(StrZero(FormFatPedido.CdsRecParceFAT_CODIGO.assTring,6))+
                          ' and FPC_NUMER =  '+QuotedStr(FormFatPedido.CdsRecParceFPC_NUMER.asstring) )

                end;
                 FormFatPedido.CdsRecParce.Next;
             end;
             { se a fatura é sem valor comercial o receber foi gravado para mostrar venctos na Danfe, então deve-se excluir o receber e parcela agora}


             semValorComercial := True;
             FormFatPedido.CdsItemPedido.First;
             while not FormFatPedido.CdsItemPedido.Eof do
             begin
               qAux.Close;
               qAux.SQL.Text:='select * from ope0000 where ope_codigo='+ qStr(  iif(FormFatPedido.CdsItemPedidoCFOP_Codigo.AsString = '', FormFatPedido.cbOper.IdRetorno, FormFatPedido.CdsItemPedidoCFOP_Codigo.AsString )      );
               qAux.Open;
               if qAux.FieldByName('OPE_SEMVLCOM').AsString = 'N' then
                 semValorComercial := False;
               FormFatPedido.CdsItemPedido.Next;
             end;


             // FormFatPedido.qOperFiscOPE_SEMVLCOM.AsString = 'S'
             if semValorcomercial then
             begin
                  wConcatSE := ConcatSe( ' and ', dbInicio.ExclusivoSql('RECEBER') );
                  ExecSql( 'Delete from FAT0000 where FAT_CODIGO = '+qStr(wfatura)+wConcatSE );
                  ExecSql( 'Delete from FAT_PC01 where FAT_CODIGO = '+qStr(wfatura)+wConcatSE );
                  ExecSql( 'Delete from FAT_IT02 where FAT_CODIGO = '+qStr(wfatura)+wConcatSE );
             end;

             // para resolver um bug que acontece de duplicar parcela aleatoriamente - marcio 17/03/17
             TirarDuplicidade;


             //Atualiza o CCT_CODIGO
             if (wfatura <> '') and not ExisteFatura then
             begin
                   ExecSql( 'update FAT0000 set CCT_codigo = '+qStr(StrZero(EdtOpe_Codigo.Text,3))+' where FAT_CODIGO = '+qStr(wfatura) );
                   ExecSql( 'update FAT_PC01 set CCT_codigo = '+qStr(StrZero(EdtOpe_Codigo.Text,3))+' where FAT_CODIGO = '+qStr(wfatura) );
             end;


         //uteis.aviso('Fatura(s) gravada com sucesso! Pronta para gerar NFe. ');
         ModalResult := mrOk ;
     end;
   finally
     FormFatPedido.CdsRecParce.EnableControls;
     BitConfirmaParcelas.Enabled := True;

   end;
end;

procedure TfrmFATPARC.btnCreditoClick(Sender: TObject);
var credito : double;
begin
  inherited;
  if not assigned(frmPesqcreditoFatura) then
    frmPesqcreditoFatura := TfrmPesqcreditoFatura.Create(Application);
  try
    frmPesqcreditoFatura.Cod_Cliente := FormFatPedido.CdsRecParceCLI_CODIGO.AsString;
    frmPesqcreditoFatura.ValorMaximo := StrToFloat(StringReplace(edTotalReceber.Text,'.','',[])) ;
    frmPesqcreditoFatura.Filtro;
    frmPesqcreditoFatura.cdsBusco.Open;
    if  cdsCreditoConta.Active and not cdsCreditoConta.IsEmpty then
    begin
      cdscreditoconta.Filtered := False;
      cdsCreditoConta.Filter := 'selecionado = true';
      cdscreditoconta.Filtered := True;
      while not cdscreditoconta.Eof do
      begin
        if frmPesqcreditoFatura.cdsBusco.Locate('codigo',cdsCreditoContaCodigo.AsString,[]) then
        begin
          frmPesqcreditoFatura.cdsBusco.Edit;
          frmPesqcreditoFatura.cdsBuscoselecionado.AsBoolean := cdsCreditoContaselecionado.AsBoolean ;
          frmPesqcreditoFatura.cdsBuscousado.AsFloat := cdsCreditoContausado.AsFloat ;
          frmPesqcreditoFatura.cdsBusco.Post;
        end;
        cdscreditoconta.Next;
      end;
    end;

    if frmPesqcreditoFatura.ShowModal = mrok then
    begin

       frmPesqcreditoFatura.cdsBusco.Filtered := False;
       frmPesqcreditoFatura.cdsBusco.Filter := 'selecionado = true';
       frmPesqcreditoFatura.cdsBusco.Filtered := True;
       if not frmPesqcreditoFatura.cdsBusco.IsEmpty then
       begin
         frmPesqcreditoFatura.cdsBusco.Filtered := False;
         frmPesqcreditoFatura.cdsBusco.First;
         if cdscreditoconta.Active then
           cdscreditoconta.Close;
         cdscreditoconta.CreateDataSet;
         while not frmPesqcreditoFatura.cdsBusco.Eof do
         begin

           cdscreditoconta.Insert;
           cdsCreditoContaCodigo.AsString := frmPesqcreditoFatura.cdsBuscoCodigo.AsString;
           cdsCreditoContaselecionado.AsBoolean := frmPesqcreditoFatura.cdsBuscoselecionado.AsBoolean;
           cdsCreditoContaDocumento.AsString := frmPesqcreditoFatura.cdsBuscoDocumento.AsString;
           cdsCreditoContaData.AsDateTime := frmPesqcreditoFatura.cdsBuscoData.AsDateTime;
           cdsCreditoContacredito.AsFloat := frmPesqcreditoFatura.cdsBuscocredito.AsFloat;
           cdsCreditoContausado.AsFloat := frmPesqcreditoFatura.cdsBuscousado.AsFloat;
           cdscreditoconta.Post;
           frmPesqcreditoFatura.cdsBusco.Next;
         end;
       end;

       cdscreditoconta.Filtered := False;
       cdsCreditoConta.Filter := 'selecionado = true';
       cdscreditoconta.Filtered := True;
       if not cdsCreditoConta.isEmpty then
       begin
         cdsCreditoConta.First;
         credito := 0 ;
         while not cdsCreditoConta.Eof do
         begin
          credito := credito +  cdsCreditoConta.FieldByName('usado').AsFloat;
          cdsCreditoConta.Next;
         end;
       end;
       currValorAntecipado.Value := credito;
    end;
  finally
    FreeAndNil(frmPesqcreditoFatura);
    currValorAntecipado.SetFocus;
    BitConfirmaParcelas.SetFocus;
  end;
end;
procedure TfrmFATPARC.FormCreate(Sender: tObject);
begin
  inherited;
  width := 839;
  height := 439;
  WPCL_CODIGO:='';
  wFAT_VLFAT:=0;
  fFat_VlLiq := 0 ;
  btnCredito.Enabled := DBInicio.Empresa.bUSP_USA_CREDITO_CC;
  currValorAntecipado.Enabled := DBInicio.Empresa.bUSP_USA_CREDITO_CC ;
end;

procedure TfrmFATPARC.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F4 ) and DBInicio.Empresa.bUSP_USA_CREDITO_CC then
    btnCredito.Click;
end;

procedure TfrmFATPARC.BitBtn2Click(Sender: tObject);
begin
     if uteis.confirmacao ( 'Abandonar esta operação ?') = mrYes then
        ModalResult := mrCancel;
end;

procedure TfrmFATPARC.EdtOpe_CodigoExit(Sender: tObject);
begin
     EdtOpe_Codigo.Text := PreenchezeroEsquerda(EdtOpe_Codigo.Text,3);
     if (EdtOpe_Codigo.Text = '000') then
        CbxCtaAnalise.idRetorno := ''
     else
     begin
         CbxCtaAnalise.idRetorno := EdtOpe_Codigo.Text;
         if CbxCtaAnalise.idRetorno='' then
         begin
               uteis.aviso('Conta Financeira não localizada com o código informado');
               CbxCtaAnalise.Clear;
         end;
     end;
end;

procedure TfrmFATPARC.CbxCtaAnaliseSelect(Sender: TObject);
begin
     inherited;
     EdtOpe_Codigo.Text := CbxCtaAnalise.idRetorno;
end;

function TfrmFATPARC.ContasReceberBaixaAuto(const sFaturaRegistro, sContaBancoRegistro, sFormaPgtoRegistro, sUsuarioCodido: String;const  rBaixar, rDesconto,
rJuros, rMulta, rRecebido,
  rTarifa: Currency; const dDataRecebimento: TDateTime): Boolean;
begin
     dbInicio.ExecSql( 'delete from FAT_RECEBIMENTO '+
                       'where emp_codigo = '+qStr(Emp_Codigo)+
                       '      and fat_registro='+qStr(sFaturaRegistro));

     dbInicio.ExecSql( 'INSERT INTO FAT_RECEBIMENTO ( EMP_CODIGO, FAT_REGISTRO, FRE_DATA_RECEBIMENTO, FRE_VALOR, FRE_DESCONTO, FRE_JUROS,'+
                       '       FRE_MULTA, FRE_RECEBIDO, BAN_CODIGO, FPG_REGISTRO, USU_CODIGO )'+
                       'VALUES ('+QuotedStr(Emp_Codigo)+','+ //EMP_CODIGO,
                       '        '+QuotedStr(sFaturaRegistro)+','+ //FAT_REGISTRO,
                       '        '+QuotedStr(DataAmericana(DateToStr(dDataRecebimento)))+','+ //FRE_DATA_RECEBIMENTO,
                       '        '+QuotedStr(ValorAmericano(FloatToStr(rBaixar)))+','+ //FRE_VALOR,
                       '        '+QuotedStr(ValorAmericano(FloatToStr(rDesconto)))+','+ //FRE_DESCONTO,
                       '        '+QuotedStr(ValorAmericano(FloatToStr(rJuros)))+','+ //FRE_JUROS,
                       '        '+QuotedStr(ValorAmericano(FloatToStr(rMulta)))+','+ //FRE_MULTA,
                       '        '+QuotedStr(ValorAmericano(FloatToStr(rRecebido)))+','+ //FRE_RECEBIDO,
                       '        '+QuotedStr(sContaBancoRegistro)+','+ //BAN_CODIGO,
                       '        '+QuotedStr(sFormaPgtoRegistro)+','+ //FPG_REGISTRO,
                       '        '+QuotedStr(sUsuarioCodido)+') ' ); //USU_CODIGO )'+

end;

procedure TfrmFATPARC.currValorAntecipadoExit(Sender: TObject);
var wValor,dValorEntrada, wtotal,wcentavos : Currency;
  iNumeroParcelaPrazo : Integer;


begin
  inherited;
  if currValorAntecipado.AsCurrency >0 then
  begin
    // retiar valor antecipado do reparcelamento
    wtotal:= wFAT_VLFAT- currValorAntecipado.AsCurrency;
    wValor:= wtotal;
    wValor := Uteis.RoundTo(wValor, -2);
    wcentavos := 0 ;
    OpenAux ( 'SELECT * FROM PCL0000 '+
          'where PCL_CODIGO = '+qStr(wPCL_CODIGO)+
          ConcatSe(' and ', dbInicio.ExclusivoSql( 'TABELAS' ) ) );
   if (qAux.IsEmpty) then
       GeraException('O prazo do Pedido esta em branco ou errado no cadastro. Não confirme, estorne este faturamento, volte ao pedido e coloque o prazo.')
   else
   begin
     iNumeroParcelaPrazo:=  formFatPedido.CdsRecParce.RecordCount;
    //Verifica % entrada
     if (qAux.FieldByName('PCL_PERCENTUAL_PRIMEIRA_P').AsCurrency > 0) then
     begin
          dValorEntrada :=  Uteis.RoundTo( (wtotal * (qAux.FieldByName('PCL_PERCENTUAL_PRIMEIRA_P').AsCurrency/100)),-2);
          wvalor := wtotal - dValorEntrada;
          wvalor:=int(100*(wvalor/(iNumeroParcelaPrazo-1) ))/100  ;
          wcentavos :=  Uteis.RoundTo( (wTotal - (wvalor * (iNumeroParcelaPrazo-1)) -dValorEntrada   ), -2);

     end
     else
     begin
       dValorEntrada:=0;
       wvalor:=int(100*(wvalor/(iNumeroParcelaPrazo)))/100;
       wcentavos :=  Uteis.RoundTo( (wTotal - (wvalor * iNumeroParcelaPrazo)), -2);
     end;
     wValor:=Uteis.RoundTo( wValor , -2 ) ;

     FormFatPedido.CdsRecParce.First;


     while not FormFatPedido.CdsRecParce.Eof do
     begin
        FormFatPedido.CdsRecParce.Edit;

       if (FormFatPedido.CdsRecParceFPC_NUMER.AsString = '01') and (dValorEntrada>0) then
         FormFatPedido.CdsRecParce.FieldByName('FPC_VLPARC').AsCurrency := (dValorEntrada + wcentavos)
       else
         FormFatPedido.CdsRecParce.FieldByName('FPC_VLPARC').AsCurrency :=  (wValor + wcentavos);

       if wcentavos>0 then
          wcentavos:=0  ;

       FormFatPedido.CdsRecParce.Edit;
       FormFatPedido.CdsRecParce.Post;
       FormFatPedido.CdsRecParce.Next;
     end;




   end;

  end;
  CalculaDiferenca;

end;

procedure TfrmFATPARC.DBGrid1CellClick(Column: TColumn);
var bliquidaForma: boolean;
begin
  inherited;
  if not DBInicio.Empresa.bUSP_ALTERA_FORMA_PAG_FAT then // não permite alterar forma de pagamento
    exit;
  if DBGrid1.SelectedField.FieldName = 'BOTAO' then
  begin
   formParcelaFatura := TformParcelaFatura.Create(application);
   try
     formParcelaFatura.CbBancos.idRetorno := FormFatPedido.CdsRecParceBAN_CODIGO.asString;
     formParcelaFatura.edFPagto.idRetorno := IntToStr(FormFatPedido.CdsRecParceFPG_REGISTRO.AsInteger);
    formParcelaFatura.ShowModal;
    if formParcelaFatura.ModalResult = mrOk then
    begin
      if not (FormFatPedido.CdsRecParce.State  = dsEdit) then
         FormFatPedido.CdsRecParce.Edit;
      FormFatPedido.CdsRecParceBAN_CODIGO.asString := formParcelaFatura.CbBancos.idRetorno;
      FormFatPedido.CdsRecParceBAN_APELIDO.AsString := formParcelaFatura.CbBancos.CDS.FieldByName('BAN_APELIDO').AsString;
      if  formParcelaFatura.edFPagto.idRetorno <> '' then
      begin
        bliquidaForma := ( BuscaUmDadoSqlAsString('select FPG_BAIXARECEBER from FORMA_PAGAMENTO where fpg_registro = '+(formParcelaFatura.edFPagto.idRetorno)) = 'S');
        FormFatPedido.CdsRecParceFPG_REGISTRO.AsInteger := StrToInt(formParcelaFatura.edFPagto.idRetorno );
        FormFatPedido.CdsRecParceFPG_DESCRICAO.AsString :=  formParcelaFatura.edFPagto.CDS.FieldByName('FPG_DESCRICAO').AsString ;
        if  bliquidaForma then
         begin
           FormFatPedido.CdsRecParceFPC_SITPAG.AsString            := 'L'; //padrao é sempre entrar como pendente
           FormFatPedido.CdsRecParceFPC_STATUS.AsString            := 'Liquidada';
           FormFatPedido.CdsRecParceFPC_PAGTO.AsDateTime           := now;
           FormFatPedido.CdsRecParceFPC_VLPAGO.AsCurrency          := FormFatPedido.CdsRecParceFPC_VLPARC.AsCurrency;
           FormFatPedido.CdsRecParcefpc_obs.AsString               := 'BAIXA AUTOMATICA';
           ContasReceberBaixaAuto(
              inttostr(FormFatPedido.CdsRecParceFAT_REGISTRO.AsInteger),
              FormFatPedido.CdsRecParceBAN_CODIGO.asString,
              IntToStr(FormFatPedido.CdsRecParceFPG_REGISTRO.AsInteger) ,
              dbInicio.Usuario.Codigo,
              FormFatPedido.CdsRecParceFPC_VLPARC.AsCurrency, 0,0,0,
              FormFatPedido.CdsRecParceFPC_VLPARC.AsCurrency,0,now);



         end
         else
         begin
           FormFatPedido.CdsRecParceFPC_SITPAG.AsString            := 'P'; //padrao é sempre entrar como pendente
           FormFatPedido.CdsRecParceFPC_STATUS.AsString            := 'Pendente';
           FormFatPedido.CdsRecParceFPC_PAGTO.Clear;
           FormFatPedido.CdsRecParceFPC_VLPAGO.AsCurrency          := 0;
           FormFatPedido.CdsRecParcefpc_obs.AsString               := ''
         end;

      end;


      FormFatPedido.CdsRecParce.Post;
    end;
   finally
     formParcelaFatura.Free;
   end;

  end;
end;

procedure TfrmFATPARC.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  BUTTON: Integer;
  R: TRect;
  bcolor: TColor;
begin
  if not DBInicio.Empresa.bUSP_ALTERA_FORMA_PAG_FAT then // não permite alterar forma de pagamento
    exit;

  if Column.FieldName = 'BOTAO' then
  begin
    DBGrid1.Canvas.FillRect(Rect);
    BUTTON := 0;
    R:=Rect;
    InflateRect(R,-1,-1); //Diminue o tamanho do Botão
    DrawFrameControl(DBGrid1.Canvas.Handle,R,BUTTON, BUTTON or BUTTON);
    bcolor := DBGrid1.Canvas.Brush.Color; // guarda a cor de fundo original
    DBGrid1.Canvas.Brush.Color := clBtnFace; // muda a cor de fundo
    DBGrid1.Canvas.Font.Color := clBlack;
    DrawText(DBGrid1.Canvas.Handle,'Alterar',7,R,DT_VCENTER or DT_CENTER);
    DBGrid1.Canvas.Brush.Color := bcolor; // devolve a cor original
  end;

end;

procedure TfrmFATPARC.CalculaDiferenca;
var antecipado : Currency;
begin

     try
       if currValorAntecipado.AsCurrency > 0 then
           antecipado :=currValorAntecipado.AsCurrency
       else
          antecipado := 0 ;
       if FormFatPedido.CdsRecParceTotalParc.Value=Null  then
           GeraException('O prazo de pagamento escolhido esta com problemas, verifique!');
        edtDiferenca.Value := fFat_VlLiq - FormFatPedido.CdsRecParceTotalParc.Value - antecipado;
     Except
           Raise;
     end;
end;

procedure TfrmFATPARC.TirarDuplicidade;
var
  wConcatSE, wValidaFatura, wValidaParcela, wValidaCliente   :string;
  bVencimentoMenosEmissao:Boolean;
  wValidaValor  : currency ;
  wValidaVencto : TDateTime;

begin
{devido a um bug que aleatoria em alguma situação gera parcelas duplicatas foi provisóriamente
feito esta rotina para tirar duplicidade se ocorrer - marcio 17/03/17}

    wValidaFatura := FormFatPedido.CdsRecParceFAT_CODIGO.AsString;
    FormFatPedido.CdsRecParce.First;
    WHILE NOT FormFatPedido.CdsRecParce.Eof DO
       begin
        if (FormFatPedido.CdsRecParceFAT_CODIGO.AsString = wValidaFatura )
            and (formFatPedido.CdsRecParceFPC_NUMER.AsString = wValidaParcela)
            and (FormFatPedido.CdsRecParceFPC_VLPARC.AsCurrency = wValidaValor)
            and (FormFatPedido.CdsRecParceFPC_VENCTO.AsDateTime = wValidaVencto)
            and (FormFatPedido.CdsRecParceCLI_CODIGO.AsString = wValidaCliente ) then
         begin
           wConcatSE := ConcatSe( ' and ', dbInicio.ExclusivoSql('RECEBER') );
           ExecSql( 'Delete from FAT_PC01 where FAT_CODIGO = '+qStr(wValidaFatura)+wConcatSE );
         end;
         // receber dados do registro atual para comparar com o proximo registro
         wValidaFatura  := FormFatPedido.CdsRecParceFAT_CODIGO.AsString;
         wValidaParcela := FormFatPedido.CdsRecParceFPC_NUMER.AsString;
         wValidaValor   := FormFatPedido.CdsRecParceFPC_VLPARC.AsCurrency;
         wValidaVencto  := FormFatPedido.CdsRecParceFPC_VENCTO.AsDateTime;
         wValidaCliente := FormFatPedido.CdsRecParceCLI_CODIGO.AsString;

         FormFatPedido.CdsRecParce.Next;
       end;

end;




procedure TfrmFATPARC.FormShow(Sender: tObject);
begin
    inherited;

    // para resolver um bug que acontece de duplicar parcela aleatoriamente - marcio 17/03/17
    TirarDuplicidade;

    CalculaDiferenca;
end;

procedure TfrmFATPARC.SetNumFatura(const Value: String);
var lpcl_nome: string;
begin
     fNumFatura:=Value;

     lpcl_nome:='';
     if wPCL_CODIGO<>'' then
        lpcl_nome:=BuscaUmDadoSqlasString('select pcl_nome from pcl0000 where pcl_codigo = '+qStr(wPcl_codigo) );

     edTotalReceber.Text   := FormatFloat('###,##0.00', fFat_VlLiq );
     edTotalNF.Text   := FormatFloat('###,##0.00', wFAT_VLFAT );

     pnParc.Caption := 'Condição de Pagamento: ' ;

     if FormFatPedido.qOperFiscOPE_SEMVLCOM.AsString = 'S' then
        pnParc.Caption := pnParc.Caption + ' (SEM VL COMERCIAL)'
     Else
        pnParc.Caption := pnParc.Caption + lpcl_nome;

     FormFatPedido.CdsRecParce.Edit;

     if (FormFatPedido.CBoPER.idRetorno<>'') then
        sOperFat := FormFatPedido.qOperFiscCCT_CODIGO.AsString;

     pnPgto.Caption := 'Forma Pagamento: ';
     if ( (FormFatPedido.CdsPedidosFPG_REGISTRO.AsString <> '')and(FormFatPedido.CdsPedidosFPG_REGISTRO.AsString <> '0')) then
     begin
          openAux ( 'SELECT CCT_CODIGO, FPG_DESCRICAO FROM FORMA_PAGAMENTO WHERE FPG_REGISTRO = '+qStr( FormFatPedido.CdsPedidosFPG_REGISTRO.AsString )) ;
          sOperFat := qAux.FieldByName('CCT_CODIGO').AsString;
          pnPgto.Caption := 'Forma Pagamento: '+qAux.FieldByName('FPG_DESCRICAO').AsString;
          qAux.Close;
     end;

     EdtOpe_Codigo.Text := sOperFat;
     CbxCtaAnalise.idRetorno := sOperFat;
end;

procedure TfrmFATPARC.SetNumSerie(const value: string);
begin
  fNumSerie := Value;
end;

procedure TfrmFATPARC.edParcelaChange(Sender: TObject);
begin
  inherited;
  // se ele alterou e colou forma de pagamento que faz baixa automatica, atualizar o valor pago
  if (FormFatPedido.CdsRecParceFPC_SITPAG.AsString = 'L') AND (FormFatPedido.CdsRecParceFPC_VLPAGO.AsCurrency > 0) and
  (FormFatPedido.CdsRecParceFPC_VLPARC.AsCurrency <>  FormFatPedido.CdsRecParceFPC_VLPAGO.AsCurrency)  then
  begin
    if not (FormFatPedido.CdsRecParce.State in dsEditModes) then
       FormFatPedido.CdsRecParce.Edit;
    FormFatPedido.CdsRecParceFPC_VLPAGO.AsCurrency := FormFatPedido.CdsRecParceFPC_VLPARC.AsCurrency;
    try
    FormFatPedido.CdsRecParce.Post;
    except
    on e:EBcdException do
     // raise ;

    end;
     ContasReceberBaixaAuto(
        inttostr(FormFatPedido.CdsRecParceFAT_REGISTRO.AsInteger),
        FormFatPedido.CdsRecParceBAN_CODIGO.asString,
        IntToStr(FormFatPedido.CdsRecParceFPG_REGISTRO.AsInteger) ,
        dbInicio.Usuario.Codigo,
        FormFatPedido.CdsRecParceFPC_VLPARC.AsCurrency, 0,0,0,
        FormFatPedido.CdsRecParceFPC_VLPARC.AsCurrency,0,now);
  end;
  CalculaDiferenca;
end;

procedure TfrmFATPARC.edParcelaExit(Sender: tObject);
begin
     if dsRecParce.dataset.state <> dsBrowse then
        dsRecParce.dataset.post;
     Calculadiferenca;
end;

end.




