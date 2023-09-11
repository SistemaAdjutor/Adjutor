unit Nfs0004;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,  basedbform,
  Dialogs,  rxCurrEdit, RXDBCtrl, StdCtrls, ExtCtrls, DBCtrls,  rxToolEdit, Mask,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, system.UITypes,
  cxDBEdit, Buttons, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrBase, ACBrValidador, SgDbSeachComboUnit, JvExMask,
  JvToolEdit, JvDBControls, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ACBrDFe, ACBrNFSe;

type
 TStatusNF = ( tsNSucesso, tsNProcessadoComErros, tsNCancelado, tsEstornado );

type
  TFrmNotaFiscalServico = class(TfrmBaseDB)
    Label2: TLabel;
    gbDescericao: TGroupBox;
    DBMemo1: TDBMemo;
    Tomador: TGroupBox;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Panel1: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    qNfse: TSQLQuery;
    dspCdsNfse: TDataSetProvider;
    CdsNfse: TClientDataSet;
    CdsNfseNFSE_CODIGO: TIntegerField;
    CdsNfsecli_codigo: TStringField;
    CdsNfsenum_lote: TIntegerField;
    CdsNfseNFSE_serie: TStringField;
    CdsNfseNFSE_cnpj_cpf: TStringField;
    CdsNfseNFSE_razaosocial: TStringField;
    CdsNfseNFSE_endereco: TStringField;
    CdsNfseNFSE_numero_end: TStringField;
    CdsNfseNFSE_complemento: TStringField;
    CdsNfseNFSE_bairro: TStringField;
    CdsNfseNFSE_codigomunicipio: TIntegerField;
    CdsNfseNFSE_uf: TStringField;
    CdsNfseNFSE_telefone: TStringField;
    CdsNfseNFSE_email: TStringField;
    dsNfse: TDataSource;
    CdsNfseNFSe_naturezaoperacao: TIntegerField;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    qNfse_it: TSQLQuery;
    dspNfse_it: TDataSetProvider;
    cdsNfse_it: TClientDataSet;
    cdsNfse_itValorServicos: TFMTBCDField;
    cdsNfse_itValorDeducoes: TFMTBCDField;
    cdsNfse_itValorPIS: TFMTBCDField;
    cdsNfse_itValorCofins: TFMTBCDField;
    cdsNfse_itValorINSS: TFMTBCDField;
    cdsNfse_itNFSI_valorir: TFMTBCDField;
    cdsNfse_itValorCSLL: TFMTBCDField;
    cdsNfse_itISSRetido: TIntegerField;
    cdsNfse_itValorISS: TFMTBCDField;
    cdsNfse_itValorISSRetido: TFMTBCDField;
    cdsNfse_itOutrasRetencoes: TFMTBCDField;
    cdsNfse_itBaseCalculo: TFMTBCDField;
    cdsNfse_itAliqISS: TFMTBCDField;
    cdsNfse_itValorLiquido: TFMTBCDField;
    cdsNfse_itDescontoIncodicional: TFMTBCDField;
    cdsNfse_itDescontoCondicional: TFMTBCDField;
    cdsNfse_itdiscriminacao: TBlobField;
    dsNfse_it: TDataSource;
    cdsNfse_itNFSI_CODIGO: TIntegerField;
    cdsNfse_itNFSI_Aliqpis: TFMTBCDField;
    cdsNfse_itNFSI_Aliqir: TFMTBCDField;
    cdsNfse_itNFSI_Aliqcofins: TFMTBCDField;
    cdsNfse_itNFSI_Aliqinss: TFMTBCDField;
    cdsNfse_itNFSI_Aliqcsll: TFMTBCDField;
    chkOpSimples: TDBCheckBox;
    dbIncetivadorCultural: TDBCheckBox;
    CdsNfseNFSE_incentivadorcultural: TIntegerField;
    CdsNfseNFSE_optantesimplesnacional: TIntegerField;
    ACBrValidador1: TACBrValidador;
    Label27: TLabel;
    PesqCNAE: TSgDbSearchCombo;
    qCnae: TSQLQuery;
    EdCnaeCodigo: TDBEdit;
    rdgDoc: TRadioGroup;
    CdsNfseFAT_CODIGO: TStringField;
    cdsNfse_itNFSE_CODIGO: TIntegerField;
    CdsNfseEMP_CODIGO: TStringField;
    Label5: TLabel;
    edServicoCodigo: TDBEdit;
    PesqServico: TSgDbSearchCombo;
    qservico: TSQLQuery;
    CdsNfseCNAE_Codigo: TStringField;
    CdsNfseSRV_CODIGO: TStringField;
    gbValores: TGroupBox;
    DBRadioGroup1: TDBRadioGroup;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label19: TLabel;
    DBEdit1: TDBEdit;
    Label25: TLabel;
    DBEdit7: TDBEdit;
    DBEdit18: TDBEdit;
    Label24: TLabel;
    EdAliqINSS: TDBEdit;
    Label23: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    edAliqIR: TDBEdit;
    Label4: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    Label20: TLabel;
    EdAliqpis: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    edAliqcofins: TDBEdit;
    edAliqCSLL: TDBEdit;
    CdsNfsenfse_insc_municipal: TStringField;
    CdsNfsenfse_insc: TStringField;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    Label26: TLabel;
    Label28: TLabel;
    sbCidade: TSpeedButton;
    DbeCli_cidade: TDBEdit;
    Label30: TLabel;
    CdsNfseCLI_CIDADE: TStringField;
    CdsNfseNFSE_NUM_DANFSE: TIntegerField;
    CdsNfseNFSE_VALORCREDITO: TFMTBCDField;
    CdsNfseNFSE_CODVERIFICACAO: TStringField;
    CdsNfseNFSE_DTCANCELADO: TSQLTimeStampField;
    GroupBox1: TGroupBox;
    labCodVerif: TLabel;
    DBText1: TDBText;
    Label1: TLabel;
    edRPS: TDBEdit;
    Label29: TLabel;
    edSerie: TDBEdit;
    labNFSE: TLabel;
    DBText2: TDBText;
    labCancel: TLabel;
    edCancel: TDBText;
    DBText3: TDBText;
    labValorCredito: TLabel;
    DBEdit26: TDBEdit;
    CdsNfseNFSE_cep: TStringField;
    dataEmissao: TJvDBDateEdit;
    cbNatOper: TDBLookupComboBox;
    cdsNatOper: TClientDataSet;
    cdsNatOperNaturezaOperacao: TIntegerField;
    dsNatOper: TDataSource;
    cdsNatOperdescri: TStringField;
    Label31: TLabel;
    DBEdit27: TDBEdit;
    Label32: TLabel;
    DBEdit28: TDBEdit;
    cdsNfse_itNFSI_RETENCOESFEDERAIS: TFMTBCDField;
    ACBrNFSe1: TACBrNFSe;
    CdsNfseRPS_CODIGO: TIntegerField;
    CdsNfseNFS_REVISADO: TStringField;
    CdsNfseUSU_CODIGO: TIntegerField;
    btnrevisado: TBitBtn;
    Label33: TLabel;
    lbNatureza: TLabel;
    CdsNfseNFSE_dataemissao: TSQLTimeStampField;
    procedure Bit_SairClick(Sender: tObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Bit_GravarClick(Sender: TObject);
    procedure cdsNfse_itNFSI_AliqChange(Sender: TField);
    procedure PesqCNAESelect(Sender: TObject);
    procedure cdsNfse_itCodigoCnaeChange(Sender: TField);
    procedure CdsNfseNFSE_emailChange(Sender: TField);
    procedure rdgDocClick(Sender: TObject);
    procedure CdsNfseAfterOpen(DataSet: TDataSet);
    procedure CdsNfseNFSE_cnpj_cpfChange(Sender: TField);
    procedure Bit_CancelarClick(Sender: TObject);
    procedure Bit_ExcluirClick(Sender: TObject);
    procedure PesqServicoSelect(Sender: TObject);
    procedure sbCidadeClick(Sender: TObject);
    procedure cdsNfse_itISSRetidoValidate(Sender: TField);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsNfse_itISSRetidoChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure btnrevisadoClick(Sender: TObject);
    procedure cbNatOperClick(Sender: TObject);
    procedure DBRadioGroup1Change(Sender: TObject);
  private
    { Private declarations }
    FStatus : TStatusNF;
    procedure SetStatus (const AValues : TStatusNF);
    procedure NaturezaDaOperacao(operacao: integer);
  public
    { Public declarations }
    procedure BotoesAcesso;
    procedure BuscaNotaFiscal(RPS: integer);
    function IncluirNotaFiscal (CONST FAT_Codigo, Fat_Serie,Cli_Codigo, Ped_Codigo : string ;FPC_NUMER: TStringList; Data_Emissao : TDateTime; Valor : TBcd;
              const AliqISS, AliqINSS, AliqCSLL, AliqIR,AliqPIS, AliqCofins, RetencoesFederais, ISSRetido, BaseCalculo : double): integer;
    procedure ControlaComp (hab : boolean);
    property Status : TStatusNF read FStatus write SetStatus;
    procedure Gravando;
  end;

var
  FrmNotaFiscalServico: TFrmNotaFiscalServico;
  Parcelas: TStringList;
implementation

{$R *.dfm}

uses InicioDB, Uteis, DataCad, CID0002, rwfunc;

procedure TFrmNotaFiscalServico.Bit_CancelarClick(Sender: TObject);
begin
  inherited;
  if CdsNfse.State = dsInsert then
     SequenciadorPRC( dbConn, DBInicio.Empresa.EMP_CODIGO,'NFSERVICO','RPS_CODIGO', 1, IntToStr( CdsNfseRPS_CODIGO.AsInteger))  ;
  CdsNfse.CancelUpdates;
  cdsNfse_it.CancelUpdates;
  Status:= tsNCancelado;
  Close;


end;

procedure TFrmNotaFiscalServico.Bit_ExcluirClick(Sender: TObject);
begin
  inherited;
  if (MessageDlg('Deseja excluir o RPS?', mtConfirmation, [mbOK, mbCancel], 0) in [mrOk, mrNone]) then
  begin
    try
      ExecSql(' delete from NFSE_FATPC where NFSE_CODIGO =  '+ IntToStr(CdsNfseNFSE_CODIGO.AsInteger));
      cdsNfse_it.Delete;
      CdsNfse.Delete;
      cdsNfse_it.ApplyUpdates(0);
      CdsNfse.ApplyUpdates(0);
      status:= tsEstornado;
      close;
    except
      Status:= tsNProcessadoComErros;
      close;
    end;

  end;
end;

procedure TFrmNotaFiscalServico.Bit_GravarClick(Sender: TObject);
begin
  inherited;
  if (cbNatOper.KeyValue = -1) or (cbNatOper.KeyValue = Null) then
    GeraException( 'Obrigatório informar a Natureza da Operação.');
  if (CdsNfseSRV_CODIGO.IsNull) or (CdsNfseSRV_CODIGO.AsString = '') then
    GeraException( 'Item de serviço obrigatório.');
  if cdsNfse_itdiscriminacao.IsNull then
    GeraException( 'Descrição do serviço obrigatório.');

  Gravando;

  close;
end;

procedure TFrmNotaFiscalServico.Bit_SairClick(Sender: tObject);
begin
  CdsNfse.CancelUpdates;
  cdsNfse_it.CancelUpdates;
  Close;
end;

procedure TFrmNotaFiscalServico.BotoesAcesso;
begin
     if assigned(FrmNotaFiscalServico) then
     begin
       //Bit_novo.Enabled := Uteis.AcessoUsuario('ComercialEmissão de NFSe',DBInicio.Usuario.CODIGO,FrmNotaFiscalServico).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('ComercialEmissão de NFSe',DBInicio.Usuario.CODIGO,FrmNotaFiscalServico).Exluir;
       //Bit_Relatorio.Enabled := Uteis.AcessoUsuario('ComercialEmissão de NFSe',DBInicio.Usuario.CODIGO,FrmNotaFiscalServico).Relatorio;
       //DataCadastros.DsCliente.AutoEdit := Uteis.AcessoUsuario('ComercialEmissão de NFSe',DBInicio.Usuario.CODIGO,FrmNotaFiscalServico).Alterar;
     end;
end;

procedure TFrmNotaFiscalServico.btnrevisadoClick(Sender: TObject);
begin
  inherited;
  if (cbNatOper.KeyValue = -1) or (cbNatOper.KeyValue = Null) then
    GeraException( 'Obrigatório informar a Natureza da Operação.');
  if (CdsNfseSRV_CODIGO.IsNull) or (CdsNfseSRV_CODIGO.AsString = '') then
     GeraException( 'Item de serviço obrigatório.');
  if cdsNfse_itdiscriminacao.IsNull then
       GeraException( 'Descrição do serviço obrigatório.');
  if not (CdsNfse.State IN  dsEditModes) then
    CdsNfse.Edit;
  CdsNfseNFS_REVISADO.AsString := 'S';
  CdsNfse.Post;
  Gravando;

  close;
end;

procedure TFrmNotaFiscalServico.BuscaNotaFiscal(RPS: integer);
var hab : boolean;
begin
 qNfse.Close;
 hab := true;
 qNfse.CommandText :=
 'SELECT  EMP_CODIGO ,RPS_CODIGO,  NFSE_CODIGO, fat_codigo, CLI_CODIGO, NUM_LOTE, NFSE_serie, NFSE_email, '+
 ' NFSE_dataemissao,NFSE_optantesimplesnacional, NFSE_incentivadorcultural,                              '+
 '  NFSE_razaosocial, NFSE_cnpj_cpf, NFSE_endereco, NFSE_numero_end, NFSE_complemento,                   '+
 '  NFSE_bairro, NFSE_codigomunicipio, NFSE_uf, NFSE_cep, NFSE_telefone, NFSe_naturezaoperacao,          '+
 ' SRV_CODIGO, CNAE_Codigo, NFSE_DTCANCELADO, nfse_insc_municipal, nfse_insc,                            '+
 ' NFSE_NUM_DANFSE, NFSE_CODVERIFICACAO, NFSE_VALORCREDITO ,NFS_REVISADO, USU_CODIGO                     '+
 ' FROM NFSERVICO SE                                                                                     '+
 ' WHERE  SE.NFSE_CODIGO = ' + IntToStr(RPS);


 CdsNfse.Open;
 if (CdsNfse.FieldByName('NFSE_codigomunicipio').AsInteger <> 0) or not (CdsNfse.FieldByName('NFSE_codigomunicipio').IsNull ) then
 begin
   OpenAux('select CID_CIDADE from CID0000 cid where cid.CID_CODIGO = '+
          IntToStr(CdsNfse.FieldByName('NFSE_codigomunicipio').AsInteger)  );
   if qAux.FieldByName('CID_CIDADE').AsString <> '' then
   begin
      if not (CdsNfse.State in dsEditModes) then
        cdsnfse.Edit;
      CdsNfse.FieldByName('CLI_CIDADE').AsString := qAux.FieldByName('CID_CIDADE').AsString;
      CdsNfse.Post;
   end;



 end;

 qNfse_it.Close;
 qNfse_it.CommandText := 'SELECT '+
' NFSI_CODIGO, NFSE_CODIGO, NFSI_valorservicos, NFSI_valordeducoes, NFSI_valorpis, NFSI_valorcofins, '+
' NFSI_valorinss, NFSI_valorir, NFSI_valorcsll, NFSI_issretido, NFSI_valoriss, NFSI_valorissretido,  '+
' NFSI_Aliqpis, NFSI_Aliqcofins , NFSI_Aliqinss, NFSI_Aliqir, NFSI_Aliqcsll ,                         '+
' NFSI_outrasretencoes, NFSI_basecalculo , NFSI_aliquotaiss , NFSI_valorliquidonfse,                 '+
' NFSI_descontoincondicionado, NFSI_descontocondicionado, NFSI_discriminacao,NFSI_RETENCOESFEDERAIS        '+
' FROM nfse_it '+
' WHERE NFSE_CODIGO = ' + IntToStr(RPS);
cdsNfse_it.Open;

 if not ((CdsNfse.FieldByName('NUM_LOTE').IsNull) or (CdsNfse.FieldByName('NUM_LOTE').AsInteger = 0 )) then
 begin
   OpenAux('select lse_status from LOTE_NFSE where num_lote = ' +IntToStr(CdsNfse.FieldByName('NUM_LOTE').AsInteger));
   hab := (qAux.FieldByName('lse_status').AsString = 'R');
 end;

 ControlaComp(hab);


end;

procedure TFrmNotaFiscalServico.cbNatOperClick(Sender: TObject);
begin
  inherited;
//  NaturezaDaOperacao(cbNatOper.KeyValue);
end;

procedure TFrmNotaFiscalServico.CdsNfseAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not cdsnfse.IsEmpty then
  begin
   if length(cdsnfse.FieldByName('NFSE_cnpj_cpf').AsString)=14 then
     rdgDoc.ItemIndex := 1;
   if length(cdsnfse.FieldByName('NFSE_cnpj_cpf').AsString)=11 then
     rdgDoc.ItemIndex := 0;
  end;
end;

procedure TFrmNotaFiscalServico.CdsNfseNFSE_cnpj_cpfChange(Sender: TField);
begin
  inherited;
  if rdgDoc.ItemIndex = 0  then
    ACBrValidador1.TipoDocto := docCPF;
  if rdgDoc.ItemIndex = 1 then
    ACBrValidador1.TipoDocto := docCNPJ;
  if rdgDoc.ItemIndex <> -1  then
  begin
    ACBrValidador1.Documento := VarToStr(Sender.Value);
    if not ACBrValidador1.Validar then
        GeraException('Documento inválido');
  end;
end;

procedure TFrmNotaFiscalServico.CdsNfseNFSE_emailChange(Sender: TField);
begin
  inherited;
  ACBrValidador1.TipoDocto := docEmail;
  ACBrValidador1.Documento := VarToStr(Sender.Value);
  if not ACBrValidador1.Validar then
      GeraException('Email inválido');

end;

procedure TFrmNotaFiscalServico.cdsNfse_itCodigoCnaeChange(Sender: TField);
begin
  inherited;

  if (Sender.Value <>'00000') and not(Sender.IsNull) then
  begin
      PesqCNAE.idRetorno := VarToStr(sender.Value);
      if PesqCNAE.idRetorno='' then
         GeraException('CNAE não localizado com o código informado');
  end
  Else
  begin
      Sender.Clear;
      PesqCNAE.Clear;
  end;
end;

procedure TFrmNotaFiscalServico.cdsNfse_itISSRetidoChange(Sender: TField);
var valor :double;
begin
  inherited;

  if cdsNfse_itISSRetido.AsInteger = 2 then //não retido na fonte
  begin
   cdsNfse_itValorISSRetido.AsFloat := 0;
   cdsNfse_itValorLiquido.AsFloat := cdsNfse_itValorServicos.AsFloat -
    (cdsNfse_itValorPIS.AsFloat + cdsNfse_itValorCofins.AsFloat + cdsNfse_itValorINSS.AsFloat + cdsNfse_itNFSI_valorIR.AsFloat +
     cdsNfse_itValorCSLL.AsFloat+cdsNfse_itOutrasRetencoes.AsFloat+
     cdsNfse_itDescontoIncodicional.AsFloat+cdsNfse_itDescontoCondicional.AsFloat)
  end
  else
  begin
    valor := Uteis.RoundTo((cdsNfse_itBaseCalculo.AsCurrency *  cdsNfse_itAliqISS.AsFloat/100),-3);
    cdsNfse_itValorLiquido.AsFloat := cdsNfse_itValorServicos.AsFloat -
    (cdsNfse_itValorPIS.AsFloat + cdsNfse_itValorCofins.AsFloat + cdsNfse_itValorINSS.AsFloat + cdsNfse_itNFSI_valorIR.AsFloat +
     cdsNfse_itValorCSLL.AsFloat+cdsNfse_itOutrasRetencoes.AsFloat+valor+
     cdsNfse_itDescontoIncodicional.AsFloat+cdsNfse_itDescontoCondicional.AsFloat)
  end;

end;

procedure TFrmNotaFiscalServico.cdsNfse_itISSRetidoValidate(Sender: TField);
begin
  inherited;
  if (chkOpSimples.Checked) and (cdsNfse_itISSRetido.AsInteger = 1) then
    GeraException('Optante pelo simples nacional não pode reter na fonte.');

end;

procedure TFrmNotaFiscalServico.cdsNfse_itNFSI_AliqChange(Sender: TField);
Var
 valor : double;
 campo : string;
begin
  inherited;

  valor := Uteis.RoundTo((cdsNfse_itBaseCalculo.AsCurrency *  Tfield(sender).AsFloat/100),-3);
  if UpperCase(Sender.FieldName) = 'NFSI_ALIQPIS' then
     campo:= 'NFSI_valorpis';
  if UpperCase(Sender.FieldName) =  'NFSI_ALIQCOFINS' then
     campo:= 'NFSI_valorcofins';
  if UpperCase(Sender.FieldName) =  'NFSI_ALIQINSS' then
     campo := 'NFSI_valorinss';
  if UpperCase(Sender.FieldName) = 'NFSI_ALIQIR' then
     campo := 'NFSI_valorir' ;
  if UpperCase(Sender.FieldName) = 'NFSI_ALIQCSLL' then
     campo := 'NFSI_valorcsll';
  if campo<>'' then //caso seja aliq ISS, calculo a parte
    cdsNfse_it.FieldByName(campo).asBcd := valor;

  cdsNfse_itBaseCalculo.AsBCD :=   cdsNfse_itValorServicos.AsFloat -(cdsNfse_itValorDeducoes.AsFloat+ cdsNfse_itDescontoIncodicional.AsFloat);
  valor := Uteis.RoundTo((cdsNfse_itBaseCalculo.AsCurrency *  cdsNfse_itAliqISS.AsFloat/100),-3);
  cdsNfse_it.FieldByName('NFSI_valoriss').AsFloat := valor;

  if (cdsNfse_itISSRetido.AsInteger = 2) then
     cdsNfse_itValorISSRetido.AsFloat := 0
  else if  (cdsNfse_itISSRetido.AsInteger = 1) then
  begin
     cdsNfse_itValorISSRetido.AsFloat := Valor;
  end;
  if cdsNfse_itISSRetido.AsInteger = 2 then //não retido na fonte
  cdsNfse_itValorLiquido.AsFloat := cdsNfse_itBaseCalculo.AsFloat -
    (cdsNfse_itValorPIS.AsFloat + cdsNfse_itValorCofins.AsFloat + cdsNfse_itValorINSS.AsFloat + cdsNfse_itNFSI_valorIR.AsFloat +
     cdsNfse_itValorCSLL.AsFloat+cdsNfse_itOutrasRetencoes.AsFloat+
     cdsNfse_itDescontoIncodicional.AsFloat+cdsNfse_itDescontoCondicional.AsFloat)
  else
    cdsNfse_itValorLiquido.AsFloat := cdsNfse_itBaseCalculo.AsFloat -
    (cdsNfse_itValorPIS.AsFloat + cdsNfse_itValorCofins.AsFloat + cdsNfse_itValorINSS.AsFloat + cdsNfse_itNFSI_valorIR.AsFloat +
     cdsNfse_itValorCSLL.AsFloat+cdsNfse_itOutrasRetencoes.AsFloat+valor+
     cdsNfse_itDescontoIncodicional.AsFloat+cdsNfse_itDescontoCondicional.AsFloat)


end;


procedure TFrmNotaFiscalServico.ControlaComp(hab: boolean);
begin
 chkOpSimples.Enabled := hab;
 dataEmissao.Enabled := hab;
 dbIncetivadorCultural.Enabled := hab;
 Tomador.Enabled := hab;
 cbNatOper.Enabled := hab;
 gbValores.Enabled := hab;
 gbDescericao.Enabled := hab;
 edServicoCodigo.Enabled := hab;
 PesqServico.Enabled :=hab;
 EdCnaeCodigo.Enabled := hab;
 PesqCNAE.Enabled :=hab;
 Bit_Gravar.Enabled := hab;
 Bit_Excluir.Enabled := hab;
 edRPS.Enabled := hab;
 edSerie.Enabled := Hab;
 if hab then
  Bit_Cancelar.Caption :=  'Cancelar'
 else
  Bit_Cancelar.Caption :=   'Sair';

  labCancel.Visible := not CdsNfseNFSE_DTCANCELADO.IsNull;
  labCodVerif.Visible := not (CdsNfseNFSE_CODVERIFICACAO.AsString ='');
  labNFSE.Visible := not (CdsNfseNFSE_NUM_DANFSE.IsNull);
  labValorCredito.Visible := not (CdsNfseNFSE_VALORCREDITO.isnull);
end;

procedure TFrmNotaFiscalServico.DBMemo1Enter(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TFrmNotaFiscalServico.DBMemo1Exit(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TFrmNotaFiscalServico.DBRadioGroup1Change(Sender: TObject);
begin
  inherited;
  if DBRadioGroup1.ItemIndex = 0 then
  begin
    cdsNfse_it.Edit;
    cdsNfse_itISSRetido.AsInteger := 1;
    cdsNfse_itNFSI_AliqChange(DBEdit5.Field);
  end
  else
  begin
    cdsNfse_it.Edit;
    cdsNfse_itISSRetido.AsInteger := 2;
    cdsNfse_itNFSI_AliqChange(DBEdit5.Field);
  end;
end;

procedure TFrmNotaFiscalServico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TFrmNotaFiscalServico.FormCreate(Sender: TObject);
var path : string;
begin
  inherited;
  cdsNfse_itISSRetido.OnValidate := NIL;
  with ACBrNFSe1.Configuracoes.Geral do
   begin
     path := DBInicio.Versao.PATH +'NFSe\';
     PathIniCidades  := path+'ArqINI';
     PathIniProvedor := path+ 'ArqINI';
     CodigoMunicipio := DBInicio.Empresa.CID_IBGE;
   end;
   ACBrNFSe1.Configuracoes.Geral.SetConfigMunicipio;
  cdsNatOper.CreateDataSet;

  if (ACBrNFSe1.Configuracoes.Geral.xprovedor = 'IPM')  then
  begin
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 1;
    cdsNatOperdescri.AsString  :=  '1 - Tributada integralmente';
    cdsNatOper.Post;
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 3;
    cdsNatOperdescri.AsString  :=  '3 - Isenta';
    cdsNatOper.Post;
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 4;
    cdsNatOperdescri.AsString  :=  '4 - Imune';
    cdsNatOper.Post;
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 10;
    cdsNatOperdescri.AsString  :=  '10 - Não tributada - ISS regime fixo';
    cdsNatOper.Post;
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 11;
    cdsNatOperdescri.AsString  :=  '11 - Tributada integralmente e sujeita à Substituição tributária';
    cdsNatOper.Post;
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 20;
    cdsNatOperdescri.AsString  :=  '20 - Tributada integralmente com ISSRF';
    cdsNatOper.Post;
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 21;
    cdsNatOperdescri.AsString  :=  '21 - Tributada com redução da base de cálculo';
    cdsNatOper.Post;
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 22;
    cdsNatOperdescri.AsString  :=  '22 - Tributada com redução da base de cálculo com ISSRF';
    cdsNatOper.Post;
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 23;
    cdsNatOperdescri.AsString  :=  '23 - Tributada com redução da base de cálculo e sujeita à Substituição tributária';
    cdsNatOper.Post;
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 24;
    cdsNatOperdescri.AsString  :=  '24 - Não tributada ISS regime estimativa';
    cdsNatOper.Post;
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 25;
    cdsNatOperdescri.AsString  :=  '25 - Não tributada ISS Construção cível recolhido antecipadamente';
    cdsNatOper.Post;
    cdsNatOper.insert;
    cdsNatOperNaturezaOperacao.AsInteger := 26;
    cdsNatOperdescri.AsString  :=  '26 - Não tributada - ato cooperado';
    cdsNatOper.Post;



  end
  else
  //curitiba, por enquanto todos os outros
//  if DBInicio.Empresa.CID_IBGE = 4106902  then
  begin
    cdsNatOper.Insert;
    cdsNatOperdescri.AsString  :=   'Tributação no município';
    cdsNatOperNaturezaOperacao.AsInteger := 1;
    cdsNatOper.Post;
    cdsNatOper.Insert;
    cdsNatOperdescri.AsString  :=   'Tributação fora do município' ;
    cdsNatOperNaturezaOperacao.AsInteger := 2;
    cdsNatOper.Post;
    cdsNatOper.Insert;
    cdsNatOperdescri.AsString  :=   'Isenção' ;
    cdsNatOperNaturezaOperacao.AsInteger := 3;
    cdsNatOper.Post;
    cdsNatOper.Insert;
    cdsNatOperdescri.AsString  :=   'Imune' ;
    cdsNatOperNaturezaOperacao.AsInteger := 4;
    cdsNatOper.Post;
    cdsNatOper.Insert;
    cdsNatOperdescri.AsString  := 'Exigibilidade Suspensa por decisão judicial';
    cdsNatOperNaturezaOperacao.AsInteger := 5;
    cdsNatOper.Post;
    cdsNatOper.Insert;
    cdsNatOperdescri.AsString  := 'Exigibilidade Suspensa por procedimento administrativo';
    cdsNatOperNaturezaOperacao.AsInteger := 6;
    cdsNatOper.Post;
  end;

  if DBInicio.Empresa.UF = 'SP' then
  begin
    PesqServico.LookupKeyField   := 'CODIGOSERVICO';


  end
  else
  begin
    PesqServico.LookupKeyField   := 'srv_codigo';

  end;
end;

procedure TFrmNotaFiscalServico.FormDestroy(Sender: TObject);
begin
     FrmNotaFiscalServico := Nil;
end;

procedure TFrmNotaFiscalServico.FormResize(Sender: TObject);
begin
//     Height := 434;
     Width := 815;
end;

procedure TFrmNotaFiscalServico.FormShow(Sender: TObject);
begin
  inherited;
  cdsNfse_itISSRetido.OnValidate := cdsNfse_itISSRetidoValidate;
  NaturezaDaOperacao(-1);
end;

procedure TFrmNotaFiscalServico.Gravando;
var i : integer;
parcela : integer;

begin
  try
   CdsNfse.ApplyUpdates(0);
   cdsNfse_it.ApplyUpdates(0) ;

  if Assigned(parcelas) then
    for I := 0 to Parcelas.Count-1 do
    begin
      parcela := GetNextSequence('SEQ_NFSE_FATPC');
      ExecSql('INSERT INTO NFSE_FATPC (NSP_CODIGO, FAT_CODIGO, FPC_NUMER,nfse_serie, NFSE_CODIGO, EMP_CODIGO) '+
              'VALUES ('+ IntToStr(parcela) + ','+QuotedStr(CdsNfseFAT_CODIGO.AsString)+','+QuotedStr(Parcelas[i])
              +','+QuotedStr(CdsNfseNFSE_serie.AsString)+ ','+
                IntToStr(CdsNfseNFSE_CODIGO.AsInteger)+','+QuotedStr(DBInicio.Empresa.EMP_CODIGO)+') ');

    end;
     Status := tsNSucesso;
  except
    Status:= tsNProcessadoComErros;
  end;
end;

function TFrmNotaFiscalServico.IncluirNotaFiscal (CONST FAT_Codigo, Fat_Serie, Cli_Codigo, Ped_Codigo : string ; FPC_NUMER: TStringList; Data_Emissao : TDateTime; Valor : TBcd;
              const AliqISS, AliqINSS, AliqCSLL, AliqIR,AliqPIS, AliqCofins, RetencoesFederais, ISSRetido, BaseCalculo : double): integer;
var virgula : integer;
    vcodigo : integer;
  I: Integer;
  ListaServicos : TStringList;
begin
  BuscaNotaFiscal(0);
  if not (cdsnfse.State  in dsEditModes) then
    CdsNfse.Insert;
  result := 0 ;
  //rps
  vcodigo:= GetNextSequence('GEN_nfservico');
  try
    CdsNfseNFSE_CODIGO.Value := vcodigo;
    CdsNfseNFS_REVISADO.AsString := 'N';
//    CdsNfseNFSe_naturezaoperacao.AsInteger := DBInicio.NFSE.NaturezaOpe;
    CdsNfseRPS_CODIGO.AsInteger := StrToInt( SequenciadorPRC( dbConn, DBInicio.Empresa.EMP_CODIGO, 'NFSERVICO', 'RPS_CODIGO', 0));

    if DBInicio.Empresa.OPT_SIMPLES = 'S' then
      CdsNfseNFSE_optantesimplesnacional.AsInteger := 1
    else
      CdsNfseNFSE_optantesimplesnacional.AsInteger := 2;
    CdsNfseNFSE_incentivadorcultural.AsInteger := 2; //não

    OpenAux(' SELECT CLI_INSC, CLI_INSCMUNI, cli_cgc, CLI_PESSOA , cli_razao, CLI_ENDERE,CLI_BAIRRO, CLI_CIDADE, cid_codigo, CLI_CEP,CLI_FONE, '+
            ' CLI_UF, CLI_EMAIL , cnae_codigo FROM CLI0000 cli        ' +
            ' LEFT JOIN cnae c ON (c.CNAE_REGISTRO =cli.CNAE_REGISTRO) '+
      ' where cli_codigo = ' + QuotedStr(cli_codigo) );
    CdsNfseNFSE_razaosocial.asstring := qAux.fieldByName('cli_razao').asstring;
    if qAux.fieldByName('CLI_PESSOA').asstring = 'J' then
      rdgDoc.ItemIndex := 1 //cnpj
    else
      rdgDoc.ItemIndex := 0 ;//cpf

    CdsNfsenfse_insc_municipal.AsString :=  qAux.FieldByName('CLI_INSCMUNI').AsString;
    CdsNfsenfse_insc.AsString := qAux.FieldByName('CLI_INSC').AsString;
    CdsNfseNFSE_cnpj_cpf.AsString :=  qaux.FieldByName('cli_cgc').Asstring;
    CdsNfseNFSE_codigomunicipio.AsInteger := qaux.FieldByName('cid_codigo').AsInteger;


//    if
//      (dbinicio.empresa.Cid_Codigo <> CdsNfseNFSE_codigomunicipio.AsInteger)
//      and (ISSRetido > 0)
//      and ( BuscaUmDadoSqlAsInteger('SELECT CID_COD_IBGE FROM CID0000 WHERE CID_CODIGO = ' + IntToStr(dbInicio.Empresa.Cid_Codigo) + ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.Emp_codigo)  ) = 4106902 )

    if (BuscaUmDadoSqlAsString('SELECT PMT_NAT_OPER_PADRAO FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO)) = 'S')
     and (dbinicio.empresa.Cid_Codigo = CdsNfseNFSE_codigomunicipio.AsInteger)
    then
      CdsNfseNFSe_naturezaoperacao.AsInteger := DBInicio.NFSE.NaturezaOpe // 2
    else
      CdsNfseNFSe_naturezaoperacao.AsInteger := -1; // cbNatOper.KeyValue;




    CdsNfseCLI_CIDADE.AsString:= qAux.FieldByName('CLI_CIDADE').AsString;
    CdsNfseNFSE_bairro.AsString := qAux.FieldByName('CLI_BAIRRO').AsString ;
    CdsNfseNFSE_uf.AsString := qAux.FieldByName('cli_uf').AsString;
    virgula:= pos(',',qaux.FieldByName('cli_endere').AsString);
    CdsNfseNFSE_endereco.AsString := Copy(qaux.FieldByName('cli_endere').AsString,1,virgula-1);
    CdsNfseNFSE_numero_end.AsString := Copy(qaux.FieldByName('cli_endere').AsString,virgula+1,  Length(qaux.FieldByName('cli_endere').AsString));
    CdsNfseNFSE_telefone.AsString :=  qaux.FieldByName('CLI_FONE').AsString;
    CdsNfseNFSE_email.AsString := qAux.FieldByName('CLI_EMAIL').AsString;
    CdsNfseNFSE_cep.AsString :=  RetiraTodaMascara(qAux.FieldByName('CLI_CEP').AsString);
    CdsNfseNFSE_serie.AsString := Fat_Serie;
    CdsNfseNFSE_dataemissao.AsDateTime :=   Data_Emissao;
    CdsNfseFAT_CODIGO.AsString :=  FAT_Codigo;
    //CdsNfseFPC_NUMER.AsString :=   FPC_NUMER;
    CdsNfsecli_codigo.AsString := cli_codigo;
    CdsNfseEMP_CODIGO.AsString := DBInicio.Emp_Codigo;
    CdsNfseCNAE_Codigo.AsString := qaux.FieldByName('cnae_codigo').AsString;
    if Ped_Codigo <> '' then
    begin
       OpenAux('SELECT CNAE_Codigo, SRV_CODIGO FROM PED_IT01 it JOIN PRD0000 pr ON (pr.PRD_CODIGO = it.PRD_CODIGO AND PRD_PRODSERV = ''S'' )   '+
               ' WHERE PED_CODIGO = '+ QuotedStr(Ped_Codigo) );
       CdsNfseCNAE_Codigo.AsString := qAux.FieldByName('CNAE_Codigo').AsString;
       CdsNfseSRV_CODIGO.AsString :=  qAux.FieldByName('SRV_CODIGO').AsString;

    end;



    if not (cdsNfse_it.State  in dsEditModes) then
      cdsNfse_it.Insert;


    OpenAux(' SELECT PRF_PRDDESCRI, PRF_COMPL_DESCRI,PRF_PRECO,PRF_QTDE  FROM PED_IT01 pd     '+
            ' inner JOIN PRD0000 pr ON (pr.PRD_REFER = pd.PRD_REFER)       '+
            ' WHERE PED_CODIGO = '+ QuotedStr(Ped_Codigo)                   +
            ' AND PRD_PRODSERV = '+ QuotedStr('S') +
            ' AND PRF_QTDEFAT > 0 ');
    ListaServicos := TStringList.Create;
    i:=1;
    try
      qaux.First;
      while not qaux.Eof do
      begin

       ListaServicos.Add(inttostr(i)+'-'+qAux.FieldByName('PRF_PRDDESCRI').AsString +
                      ConcatSe( ': ',qAux.FieldByName('PRF_COMPL_DESCRI').AsString)
                       +'. '+ 'Valor : '+ FormatFloat('R$ #,###,##0.00',qAux.FieldByName ('PRF_QTDE').AsFloat * qAux.FieldByName ('PRF_PRECO').AsFloat) ) ;
       inc(i);
       qaux.Next;
      end;
      ListaServicos.LineBreak:= AnsiString(#13#10);
      if i=1 then
       cdsNfse_itdiscriminacao.AsString:= qAux.FieldByName('PRF_PRDDESCRI').AsString +
                                          ConcatSe( ': ',qAux.FieldByName('PRF_COMPL_DESCRI').AsString)
                                         +'. '+ 'Valor : '+ FormatFloat('R$ #,###,##0.00',qAux.FieldByName ('PRF_QTDE').AsFloat * qAux.FieldByName ('PRF_PRECO').AsFloat)
      else
        cdsNfse_itdiscriminacao.AsString := ListaServicos.Text;
    finally
      ListaServicos.Free;
    end;

    cdsNfse_itNFSI_CODIGO.AsInteger := GetNextSequence('GE_NFSERVICO_ITEM');
    cdsNfse_itNFSE_CODIGO.AsInteger :=  vcodigo;
    cdsNfse_itValorServicos.AsBCD := Valor;
    cdsNfse_itBaseCalculo.AsBCD := valor;

    cdsNfse_itAliqISS.AsFloat := AliqISS;
    cdsNfse_itNFSI_Aliqinss.AsFloat := AliqINSS;
    cdsNfse_itNFSI_Aliqcsll.AsFloat := AliqCSLL;
    cdsNfse_itNFSI_Aliqir.AsFloat := AliqIR;
    cdsNfse_itNFSI_Aliqpis.AsFloat := AliqPIS;
    cdsNfse_itNFSI_Aliqcofins.AsFloat := AliqCofins;
    if ISSRetido > 0  then
         cdsNfse_itISSRetido.AsInteger := 1
    else
      cdsNfse_itISSRetido.AsInteger := 2; // padrão 2 não retido na fonte
     cdsNfse_itNFSI_RETENCOESFEDERAIS.AsFloat := RetencoesFederais;
     cdsNfse_itValorISSRetido.AsFloat :=  ISSRetido;
     cdsNfse_itBaseCalculo.AsFloat := BaseCalculo;


    Parcelas:= TStringList.Create;
    Parcelas:=FPC_NUMER;
    result := CdsNfseRPS_CODIGO.AsInteger;
  except
   CdsNfse.CancelUpdates;
   cdsNfse_it.CancelUpdates;
    ExecSql('SET GENERATOR GEN_nfservico TO ' + IntToStr(vcodigo-1));
   raise;
  end;
end;

procedure TFrmNotaFiscalServico.PesqCNAESelect(Sender: TObject);
begin
  inherited;
  EdCnaeCodigo.Text := PesqCNAE.idRetorno;
  OpenAux2('select srv_codigo from cnae where cnae_codigo = '+ QuotedStr(EdCnaeCodigo.Text) );
  if qAux2.FieldByName('srv_codigo').AsString <> '' then
  begin
    if not (CdsNfse.State in dsEditModes) then
      CdsNfse.Edit;
    if CdsNfseSRV_CODIGO.AsString= '' then
      CdsNfseSRV_CODIGO.AsString := qAux2.FieldByName('srv_codigo').AsString;
    //CdsNfse.Post;
  end;
end;

procedure TFrmNotaFiscalServico.PesqServicoSelect(Sender: TObject);
begin
  inherited;
  edServicoCodigo.Text := PesqServico.idRetorno;

end;

procedure TFrmNotaFiscalServico.rdgDocClick(Sender: TObject);
begin
  inherited;
  case TRadioGroup(Sender).ItemIndex of
    0 : CdsNfse.FieldByName('NFSE_cnpj_cpf').EditMask :=   '999.999.999-99;0;_';
    1 : cdsnfse.FieldByName('NFSE_cnpj_cpf').EditMask :=   '99.999.999/9999-99;0;_';
  end;

end;

procedure TFrmNotaFiscalServico.sbCidadeClick(Sender: TObject);
begin
  try
    FormCidadeGrid := TFormCidadeGrid.Create(Application);
    FormCidadeGrid.ShowModal;
    if not (CdsNfse.State in dsEditModes) then
      CdsNfse.Edit;
    CdsNfseNFSE_uf.AsString := FormCidadeGrid.Estado;
    CdsNfseCLI_CIDADE.AsString := FormCidadeGrid.Cidade;
    CdsNfseNFSE_codigomunicipio.AsInteger := FormCidadeGrid.Cod_Cidade;
    CdsNfse.Post;
  finally
    FormCidadeGrid.Destroy;
    FormCidadeGrid := Nil;
  end;
end;

procedure TFrmNotaFiscalServico.SetStatus(const AValues: TStatusNF);
begin
 FStatus := AValues;
end;

procedure TFrmNotaFiscalServico.NaturezaDaOperacao(operacao: integer);
begin
//  if (DBRadioGroup1.Value = '1') AND (UpperCaSe(DbeCli_cidade.Text) <> 'CURITIBA' ) then
//    cbNatOper.KeyValue := 2; // Tributação fora do município
  if operacao = -1 then
    exit;
  if BuscaUmDadoSqlAsString('SELECT PMT_NAT_OPER_PADRAO FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO)) = 'S' then
    cbNatOper.KeyValue := DBInicio.NFSE.NaturezaOpe;
//  begin
//    if (UpperCaSe(DbeCli_cidade.Text) = UpperCase(DBInicio.Empresa.CIDADE)) and ((cbNatOper.KeyValue = -1) or (cbNatOper.KeyValue = Null)) then
//    begin
//      cbNatOper.KeyValue := DBInicio.NFSE.NaturezaOpe;
//    end;
//    else if UpperCaSe(DbeCli_cidade.Text) <> UpperCase(DBInicio.Empresa.CIDADE) then
//      cbNatOper.KeyValue := -1;
//   end;


//  lbNatureza.Visible := ((cbNatOper.KeyValue = 2) OR (DBRadioGroup1.Value = '1'))
//                        AND (UpperCaSe(DbeCli_cidade.Text) <> 'CURITIBA' );

//  if (DBRadioGroup1.Value = '2') AND (cbNatOper.KeyValue = 2)  then
//  begin
//    cbNatOper.KeyValue := -1;
//    lbNatureza.Visible := False;
//  end;


end;


end.
