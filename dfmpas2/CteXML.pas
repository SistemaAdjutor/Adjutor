unit CteXML;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  BaseDBForm,
  Data.DBXFirebird,
  Data.FMTBcd,
  ACBrDFe,
  ACBrCTe,
  Vcl.Mask,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Data.DB,
  Data.SqlExpr,
  ACBrEnterTab,
  ACBrBase,
  ACBrCalculadora,
  ctexmlopcao,
  ACBrCTeDACTEClass,
  ACBrCTeDACTeRLClass,
  uteis,
  rwfunc,
  pcnconversao,
  pcteconversaocte,
  SgDbSeachComboUnit,
  ComboBoxRW,
  Datasnap.Provider,
  Datasnap.DBClient,
  ACBrDFeReport,
  JvExStdCtrls,
  JvEdit,
  JvValidateEdit,
  Vcl.ComCtrls,
  JvExComCtrls,
  JvDateTimePicker;

type
  TStatus = ( stNovo, stAlterando, stMostrando );

  TfrmCte = class( TfrmBaseDB )
    GroupBox1 : TGroupBox;
    lblNrNota : TLabel;
    Label1 : TLabel;
    Label2 : TLabel;
    Label3 : TLabel;
    Label4 : TLabel;
    Label6 : TLabel;
    edtNumerNfe : TEdit;
    edtModelo : TEdit;
    edtSerie : TEdit;
    edtNatureza : TEdit;
    edtEmissao : TEdit;
    edtChave : TEdit;
    grpFornecedor : TGroupBox;
    Label7 : TLabel;
    Label8 : TLabel;
    Label9 : TLabel;
    Label10 : TLabel;
    Label11 : TLabel;
    Label12 : TLabel;
    Label13 : TLabel;
    Label14 : TLabel;
    Label15 : TLabel;
    Label16 : TLabel;
    edtFornecedorCnpj : TEdit;
    edtFornecedorRazao : TEdit;
    edtFornecedorFantasia : TEdit;
    edtFornecedorEndereco : TEdit;
    edtFornecedorNumero : TEdit;
    edtFornecedorCidade : TEdit;
    edtFornecedorUF : TEdit;
    edtFornecedorCEP : TEdit;
    edtFornecedorFone : TEdit;
    edtFornecedorBairro : TEdit;
    pnlCadastroFornecedor : TPanel;
    imgFornecedor : TImage;
    grpTotais : TGroupBox;
    Label18 : TLabel;
    Label19 : TLabel;
    Label20 : TLabel;
    Label21 : TLabel;
    Label22 : TLabel;
    Label23 : TLabel;
    Label24 : TLabel;
    Label25 : TLabel;
    ACBrCTe1 : TACBrCTe;
    ACBrCTeDACTeRL1 : TACBrCTeDACTeRL;
    edMuniOrigem : TEdit;
    edMuniDest : TEdit;
    Label5 : TLabel;
    Label17 : TLabel;
    edCodFor : TEdit;
    Label26 : TLabel;
    qCfop : TSQLQuery;
    CbOper : TComboBoxRw;
    SqlCtAnalise : TSQLQuery;
    SqlCtAnaliseCCT_CODIGO : TStringField;
    SqlCtAnaliseCCT_DESCRI : TStringField;
    SqlCtAnaliseCCT_NIVEL : TStringField;
    Label27 : TLabel;
    cbContaContabil : TSgDbSearchCombo;
    Panel1 : TPanel;
    btnFornecedor : TBitBtn;
    btnDanfe : TBitBtn;
    btnBit_Gravar : TBitBtn;
    btnBit_Cancelar : TBitBtn;
    edCFOP : TEdit;
    cdsCte : TClientDataSet;
    dspCte : TDataSetProvider;
    qCte : TSQLQuery;
    cdsCteECTE_REGISTRO : TIntegerField;
    cdsCteEMP_CODIGO : TStringField;
    cdsCteECTE_NUMERO : TStringField;
    cdsCteECTE_MODELO_NF : TStringField;
    cdsCteECTE_SERIE : TStringField;
    cdsCteECTE_EMISSAO : TSQLTimeStampField;
    cdsCteFOR_CODIGO : TStringField;
    cdsCteOPE_CODIGO : TStringField;
    cdsCteOPE_NATUREZA : TStringField;
    cdsCteECTE_VALOR_PREST : TFMTBCDField;
    cdsCteCCT_CODIGO : TStringField;
    cdsCteECTE_ALIQ_ICMS : TFMTBCDField;
    cdsCteECTE_CST_ICMS : TStringField;
    cdsCteECTE_BASEICMS : TFMTBCDField;
    cdsCteECTE_VL_ICMS : TFMTBCDField;
    cdsCteCID_CODIGO_DEST_IBGE : TIntegerField;
    cdsCteCID_CODIGO_ORIG_IBGE : TIntegerField;
    cdsCteECTE_VALOR_NOTA : TFMTBCDField;
    cdsCteECTE_CHAVE : TStringField;
    cdsCtePAG_REGISTRO : TIntegerField;
    edtCST : TEdit;
    cdsCteECTE_XML : TBlobField;
    edtBaseIcms : TJvValidateEdit;
    edtAliquotaICMS : TJvValidateEdit;
    edtValorIcms : TJvValidateEdit;
    edtValorNota : TJvValidateEdit;
    edtValorPrest : TJvValidateEdit;
    edtValorDesconto : TJvValidateEdit;
    edtValorSemTributos : TJvValidateEdit;
    cdsCteECTE_DATAENTRADA : TSQLTimeStampField;
    dataEntrada : TJvDateTimePicker;
    Label28 : TLabel;
    Panel2 : TPanel;
    cdsCteECTE_observacao : TBlobField;
    mobservacao : TMemo;
    Label29 : TLabel;
    Label30 : TLabel;
    dataVencimento : TJvDateTimePicker;
    cdsCteECTE_VENCTO : TSQLTimeStampField;
    Label31 : TLabel;
    cbTipoFrete : TComboBox;
    cdsCteECTE_TIPO_FRETE : TIntegerField;
    procedure btnDanfeClick( Sender : TObject );
    procedure btnBit_GravarClick( Sender : TObject );
    procedure btnFornecedorClick( Sender : TObject );
    procedure cbContaContabilChange( Sender : TObject );
    procedure CbOperChange( Sender : TObject );
    procedure btnBit_CancelarClick( Sender : TObject );
    procedure edCFOPChange( Sender : TObject );
    procedure CbOperSelect( Sender : TObject );
    private
      scam : string;
      FStatus : TStatus;
      procedure SetStatus( const Values : TStatus );
      procedure GravaCte;
      procedure AtualizaCTE;
      function GetCodFor : string;
      procedure CadastraFornecedor;
    public
      procedure CarregaXML( const scaminho : string );
      property Status : TStatus
        read FStatus
        write SetStatus;

  end;

var
  frmCte : TfrmCte;

implementation

{$R *.dfm}

uses
  InicioDB,
  For0001,
  Nfs0001,
  DataCad;

procedure TfrmCte.btnFornecedorClick( Sender : TObject );
  begin
    inherited;
    try
      btnFornecedor.Enabled := True;
      openaux( 'select for_codigo from for0000 where for_cgc=' +
        qStr( ExtrairNumeros( edtFornecedorCnpj.text ) ) + ConcatSe( ' and ',
        dbInicio.ExclusivoSql( 'FORNECEDORES' ) ) );
      if qAux.IsEmpty
      then
        CadastraFornecedor;
      // FormFornec := TFormFornec.Create(Application);
      // try
      // FormFornec.FormStyle := fsNormal;
      // FormFornec.EdtFor_codigo.Text :=  qaux.FieldByName('for_codigo').AsString;
      // FormFornec.BuscaFornec;
      // FormFornec.ShowModal;
      // edCodFor.Text:= FormFornec.EdtFor_codigo.Text;
      // finally
      // FreeAndNil( FormFornec );
      // end;

    finally
      btnFornecedor.Visible := False;
      pnlCadastroFornecedor.Visible := edCodFor.text = '';
    end;
  end;

procedure TfrmCte.AtualizaCTE;
  var
    parc_reg : string;
  begin
    if not ( cdsCte.State in dsEditModes )
    then
      cdsCte.Edit;
    cdsCteOPE_CODIGO.AsString := CbOper.idRetorno;
    cdsCteOPE_NATUREZA.AsString := edCFOP.text;
    cdsCteCCT_CODIGO.AsString := cbContaContabil.idRetorno;
    cdsCteECTE_DATAENTRADA.AsDateTime := dataEntrada.Date +
      StrToTime( '00:00:00' );
    cdsCteECTE_observacao.AsString := mobservacao.Lines.text;
    cdsCteECTE_VENCTO.AsDateTime := dataVencimento.Date +
      StrToTime( '00:00:00' );

    case cbTipoFrete.ItemIndex of
      0, 1, 2 :
        cdsCteECTE_TIPO_FRETE.AsInteger := cbTipoFrete.ItemIndex;
      3 :
        cdsCteECTE_TIPO_FRETE.AsInteger := 9;
    end;

    cdsCte.Post;
    cdsCte.ApplyUpdates( 0 );
    if cdsCtePAG_REGISTRO.AsInteger > 0
    then
    begin
      ExecSql( ' update pag0000  ' + '  set  cct_codigo = ' +
        QuotedStr( cbContaContabil.idRetorno ) + ' where pag_registro = ' +
        IntToStr( cdsCtePAG_REGISTRO.AsInteger ) );
      parc_reg := BuscaUmDadoSqlAsString
        ( 'select  pag_codigo from pag0000  where pag_registro = ' +
        IntToStr( cdsCtePAG_REGISTRO.AsInteger ) );

      ExecSql( ' update PAG_PC01   ' + '  set  cct_codigo = ' +
        QuotedStr( cbContaContabil.idRetorno ) + ' , PPC_VENCTO = ' +
        DateToSQL( dataVencimento.Date ) + ' where pag_codigo = ' +
        QuotedStr( parc_reg ) + ' and emp_codigo = ' +
        QuotedStr( dbInicio.Empresa.EMP_CODIGO ) );
      CommitTransaction;
    end;
  end;

procedure TfrmCte.btnBit_CancelarClick( Sender : TObject );
  begin
    inherited;
    Close;
  end;

procedure TfrmCte.btnBit_GravarClick( Sender : TObject );
  begin
    inherited;
    if pnlCadastroFornecedor.Visible
    then
      raise Exception.Create( 'Fornecedor não cadastrado' );

    if Status = stNovo
    then
      GravaCte
    Else if Status = stAlterando
    then
      AtualizaCTE;
    Close;

  end;

procedure TfrmCte.btnDanfeClick( Sender : TObject );
  begin
    inherited;
    ACBrCTe1.Conhecimentos.Imprimir;
  end;

procedure TfrmCte.CadastraFornecedor;
  var
    sCodigoCidade : string;
  begin
    try
      DataCadastros.CdsFornecedor.Close;
      DataCadastros.CdsFornecedor.CommandText :=
        SQLDEF( 'FORNECEDORES', 'SELECT F1.* FROM FOR0000 F1', '',
        'F1.FOR_CODIGO', 'F1.' );
      DataCadastros.CdsFornecedor.Open;

      // Localiza cidade tabela
      openaux( 'SELECT T1.CID_CODIGO FROM CID0000 T1 WHERE T1.CID_COD_IBGE = ' +
        IntToStr( ACBrCTe1.Conhecimentos.items[ 0 ].CTe.emit.enderEmit.cMun ) );
      if ( not qAux.IsEmpty )
      then
        sCodigoCidade := qAux.FieldByName( 'CID_CODIGO' ).AsString;

      DataCadastros.sqlUpdate.Close;

      // Cadastra Fornecedor
      DataCadastros.CdsFornecedor.Insert;
      DataCadastros.CdsFornecedorFOR_ATUALIZA_PCUSTO.AsString := 'S';
      DataCadastros.CdsFornecedorFOR_ATUALIZA_PVENDA.AsString := 'S';
      DataCadastros.CdsFornecedorFOR_DTCADASTRO.AsDateTime := Date;
      DataCadastros.CdsFornecedorFOR_RAZAO.AsString :=
        UpperCase( edtFornecedorRazao.text );
      DataCadastros.CdsFornecedorFOR_ENDERE.AsString :=
        UpperCase( edtFornecedorEndereco.text + ',' +
        edtFornecedorNumero.text );
      DataCadastros.CdsFornecedorFOR_CIDADE.AsString :=
        UpperCase( edtFornecedorCidade.text );
      DataCadastros.CdsFornecedorFOR_UF.AsString :=
        UpperCase( edtFornecedorUF.text );
      DataCadastros.CdsFornecedorFOR_CEP.AsString :=
        ExtrairNumeros( edtFornecedorCEP.text );
      DataCadastros.CdsFornecedorFOR_FONE.AsString :=
        ExtrairNumeros( edtFornecedorFone.text );
      DataCadastros.CdsFornecedorFOR_CGC.AsString :=
        ExtrairNumeros( edtFornecedorCnpj.text );
      DataCadastros.CdsFornecedorFOR_INSC.AsString :=
        ACBrCTe1.Conhecimentos.items[ 0 ].CTe.emit.IE;
      DataCadastros.CdsFornecedorFOR_BAIRRO.AsString :=
        UpperCase( edtFornecedorBairro.text );
      DataCadastros.CdsFornecedorFOR_INSCST.AsString :=
        ACBrCTe1.Conhecimentos.items[ 0 ].CTe.emit.IEST;
      DataCadastros.CdsFornecedorFOR_ATIVO.AsString := 'A';
      DataCadastros.CdsFornecedorEMP_CODIGO.AsString :=
        dbInicio.Empresa.EMP_CODIGO;
      DataCadastros.CdsFornecedorCID_CODIGO.AsString := sCodigoCidade;
      DataCadastros.CdsFornecedor.ApplyUpdates( 0 );
      edCodFor.text := dbInicio.BuscaUmDadoSqlAsString
        ( 'SELECT FOR_CODIGO FROM FOR0000 WHERE FOR_CGC=' +
        QuotedStr( ExtrairNumeros( edtFornecedorCnpj.text ) ) +
        ConcatSe( ' AND ', dbInicio.ExclusivoSql( 'FORNECEDORES' ) ) );
    Except
      on e : Exception do
        raise Exception.Create( e.Message );

    end;

  end;

procedure TfrmCte.CarregaXML( const scaminho : string );
  var
    sql : string;
  begin
    if scaminho <> ''
    then
      if not ACBrCTe1.Conhecimentos.LoadFromFile( scaminho )
      then
        GeraException( 'Não foi possível carregar a Nota de conhecimento' );
    scam := scaminho;


    if ACBrCTe1.Conhecimentos.items[ 0 ].CTe.ide.toma03.Toma = tmRemetente then
      if ACBrCTe1.Conhecimentos.items[ 0 ].CTe.rem.CNPJCPF <> RetirarMascaraCNPJ_INSC(dbInicio.Empresa.CNPJ_CNPF) then
      begin
        uteis.Aviso('CNPJ do tomador diverge da empresa');
        Abort;
      end;





    edtFornecedorCnpj.text := MascaraCNPJ_CPF( ACBrCTe1.Conhecimentos.items[ 0 ]
      .CTe.emit.CNPJ );
    edtFornecedorRazao.text := ACBrCTe1.Conhecimentos.items[ 0 ].CTe.emit.xNome;
    edtFornecedorFantasia.text := ACBrCTe1.Conhecimentos.items[ 0 ]
      .CTe.emit.xFant;
    openaux( SQLDEF( 'FORNECEDORES', 'SELECT for_codigo FROM FOR0000 F1',
      ' where for_cgc = ' + QuotedStr( ACBrCTe1.Conhecimentos.items[ 0 ]
      .CTe.emit.CNPJ ), 'F1.FOR_CODIGO', 'F1.' ) );
    // OpenAux('select for_codigo from for0000 where for_cgc = '+ QuotedStr(edtFornecedorCnpj.Text) );
    imgFornecedor.Visible := qAux.IsEmpty;
    edCodFor.text := qAux.FieldByName( 'for_codigo' ).AsString;

    edtFornecedorEndereco.text := ACBrCTe1.Conhecimentos.items[ 0 ]
      .CTe.emit.enderEmit.xLgr;
    edtFornecedorNumero.text := ACBrCTe1.Conhecimentos.items[ 0 ]
      .CTe.emit.enderEmit.nro;
    edtFornecedorCidade.text := ACBrCTe1.Conhecimentos.items[ 0 ]
      .CTe.emit.enderEmit.xMun;
    edtFornecedorUF.text := ACBrCTe1.Conhecimentos.items[ 0 ]
      .CTe.emit.enderEmit.UF;
    edtFornecedorFone.text :=
      MascaraFone( ACBrCTe1.Conhecimentos.items[ 0 ].CTe.emit.enderEmit.fone );
    edtFornecedorBairro.text := ACBrCTe1.Conhecimentos.items[ 0 ]
      .CTe.emit.enderEmit.xBairro;
    edtFornecedorCEP.text :=
      MascaraCep( IntToStr( ACBrCTe1.Conhecimentos.items[ 0 ]
      .CTe.emit.enderEmit.CEP ) );
    edMuniOrigem.text := IntToStr( ACBrCTe1.Conhecimentos.items[ 0 ]
      .CTe.ide.cMunIni ) + '-' + ACBrCTe1.Conhecimentos.items[ 0 ]
      .CTe.ide.xMunIni;
    edMuniDest.text := IntToStr( ACBrCTe1.Conhecimentos.items[ 0 ]
      .CTe.ide.cMunFim ) + '-' + ACBrCTe1.Conhecimentos.items[ 0 ]
      .CTe.ide.xMunFim;
    // ACBrCTe1.Conhecimentos.Items[0].CTe.infCTeNorm.infDoc.infOutros.Items[0].descOutros
    edtNumerNfe.text := IntToStr( ACBrCTe1.Conhecimentos.items[ 0 ]
      .CTe.ide.nCT );

    edtModelo.text := IntToStr( ACBrCTe1.Conhecimentos.items[ 0 ]
      .CTe.ide.modelo );
    edtSerie.text := IntToStr( ACBrCTe1.Conhecimentos.items[ 0 ]
      .CTe.ide.serie );
    edtNatureza.text := ACBrCTe1.Conhecimentos.items[ 0 ].CTe.ide.natOp;
    edtEmissao.text := DateToStr( ACBrCTe1.Conhecimentos.items[ 0 ]
      .CTe.ide.dhEmi );
    edtChave.text := ExtrairNumeros( ACBrCTe1.Conhecimentos.items[ 0 ]
      .CTe.infCTe.ID );
    case ACBrCTe1.Conhecimentos.items[ 0 ].CTe.imp.ICMS.SituTrib of
      cstICMSSN :
        begin
          edtBaseIcms.Value := ACBrCTe1.Conhecimentos.items[ 0 ].CTe.imp.ICMS.ICMS00.vBC;
          edtValorIcms.Value := ACBrCTe1.Conhecimentos.items[ 0 ].CTe.imp.ICMS.ICMS00.vICMS;
          edtCST.text := '41';
          edtAliquotaICMS.Value := ACBrCTe1.Conhecimentos.items[ 0 ].CTe.imp.ICMS.ICMS00.pICMS;
        end;
      cst40 :
        begin
          edtBaseIcms.Value := ACBrCTe1.Conhecimentos.items[ 0 ].CTe.imp.ICMS.ICMS00.vBC;
          edtValorIcms.Value := ACBrCTe1.Conhecimentos.items[ 0 ].CTe.imp.ICMS.ICMS00.vICMS;
          edtCST.text := '40';
          edtAliquotaICMS.Value := ACBrCTe1.Conhecimentos.items[ 0 ].CTe.imp.ICMS.ICMS00.pICMS;
        end;
      cst00 :
        begin
          edtBaseIcms.Value := ACBrCTe1.Conhecimentos.items[ 0 ]
            .CTe.imp.ICMS.ICMS00.vBC;
          edtValorIcms.Value := ACBrCTe1.Conhecimentos.items[ 0 ]
            .CTe.imp.ICMS.ICMS00.vICMS;
          edtCST.text := '00';
          edtAliquotaICMS.Value := ACBrCTe1.Conhecimentos.items[ 0 ]
            .CTe.imp.ICMS.ICMS00.pICMS;
        end;
      cst90 :
        begin
          edtBaseIcms.Value := ACBrCTe1.Conhecimentos.items[ 0 ]
            .CTe.imp.ICMS.ICMS90.vBC;
          edtValorIcms.Value := ACBrCTe1.Conhecimentos.items[ 0 ]
            .CTe.imp.ICMS.ICMS90.vICMS;
          edtCST.text := '90';
          edtAliquotaICMS.Value := ACBrCTe1.Conhecimentos.items[ 0 ]
            .CTe.imp.ICMS.ICMS90.pICMS;
        end;
      cstICMSOutraUF :
        begin
          edtBaseIcms.Value := ACBrCTe1.Conhecimentos.items[ 0 ]
            .CTe.imp.ICMS.ICMSOutraUF.vBCOutraUF;
          edtValorIcms.Value := ACBrCTe1.Conhecimentos.items[ 0 ]
            .CTe.imp.ICMS.ICMSOutraUF.vICMSOutraUF;
          edtCST.text := '90';
          edtAliquotaICMS.Value := ACBrCTe1.Conhecimentos.items[ 0 ]
            .CTe.imp.ICMS.ICMSOutraUF.pICMSOutraUF;
        end;
    end;

    edtValorPrest.Value := ACBrCTe1.Conhecimentos.items[ 0 ].CTe.vPrest.vTPrest;
    edtValorNota.Value := ACBrCTe1.Conhecimentos.items[ 0 ].CTe.vPrest.vTPrest;
    edtValorSemTributos.Value := edtValorNota.Value - edtBaseIcms.Value;

    cdsCte.Close;
    qCte.CommandText := 'SELECT * FROM ENTCTE WHERE ECTE_NUMERO = ' +
      QuotedStr( edtNumerNfe.text ) + ' AND FOR_CODIGO = ' +
      QuotedStr( edCodFor.text ) + ' AND ECTE_SERIE = ' +
      QuotedStr( edtSerie.text );
    cdsCte.Open;
    if cdsCte.RecordCount = 1
    then
    begin
      Status := stMostrando;
      edCodFor.text := cdsCte.FieldByName( 'FOR_CODIGO' ).AsString;
      CbOper.idRetorno := cdsCte.FieldByName( 'OPE_CODIGO' ).AsString;
      case cdsCte.FieldByName( 'ECTE_TIPO_FRETE' ).AsInteger of
        0, 1, 2 :
          cbTipoFrete.ItemIndex :=  cdsCte.FieldByName( 'ECTE_TIPO_FRETE' ).AsInteger;
        9 :
          cbTipoFrete.ItemIndex :=  3;
      end;



      cbContaContabil.idRetorno := cdsCte.FieldByName( 'CCT_CODIGO' ).AsString;
      dataEntrada.DateTime := cdsCte.FieldByName( 'ECTE_DATAENTRADA' ).AsDateTime;
      dataVencimento.DateTime := cdsCte.FieldByName( 'ECTE_VENCTO' ).AsDateTime;
      if cdsCteECTE_observacao.AsString <> EmptyStr
      then
        mobservacao.Lines.text := cdsCteECTE_observacao.AsString;
      btnBit_Cancelar.Caption := 'Fechar';
    end
    else
    begin
      sql := SQLDEF( 'OPERACAOFISCAL', 'SELECT * FROM OPE0000 op2',
        ' WHERE OPE_NATUREZA = (SELECT FIRST 1 OPE_NATUREZA_ENTRADA FROM OPE0000 ope1 '
        + ' WHERE ope1.emp_codigo = op2.emp_codigo and OPE_NATUREZA = ' +
        QuotedStr( IntToStr( ACBrCTe1.Conhecimentos.items[ 0 ].CTe.ide.CFOP ) )
        + ') ', 'OPE_CODIGO', 'op2.' );
      OpenAux3( sql );
      if NOT ( qAux3.IsEmpty )
      then
        CbOper.Condicao := 'OPE_NATUREZA = ' +
          QuotedStr( qAux3.FieldByName( 'ope_natureza' ).AsString );
      CbOper.idRetorno := qAux3.FieldByName( 'OPE_CODIGO' ).AsString;
      dataEntrada.DateTime := Date;
      dataVencimento.DateTime := Date + 1;
      edCFOP.text := CbOper.idRetorno;
      case cdsCte.FieldByName( 'ECTE_TIPO_FRETE' ).AsInteger of
        0, 1, 2 :
          cbTipoFrete.ItemIndex :=  cdsCte.FieldByName( 'ECTE_TIPO_FRETE' ).AsInteger;
        9 :
          cbTipoFrete.ItemIndex :=  3;
      end;
      Status := stNovo;
      edCodFor.text := GetCodFor;
      btnBit_Cancelar.Caption := 'Cancelar';
    end;
    pnlCadastroFornecedor.Visible := ( edCodFor.text = '' );
    // btnBit_Gravar.Enabled :=   Status = stNovo;
    btnFornecedor.Visible := ( edCodFor.text = '' );
    dataEntrada.Date := Date;

  end;

procedure TfrmCte.cbContaContabilChange( Sender : TObject );
  begin
    inherited;
    if Status <> stNovo
    then
      Status := stAlterando;
  end;

procedure TfrmCte.CbOperChange( Sender : TObject );
  begin
    inherited;
    if Status <> stNovo
    then
      Status := stAlterando;
  end;

procedure TfrmCte.CbOperSelect( Sender : TObject );
  begin
    inherited;
    edCFOP.text := CbOper.idRetorno;
  end;

procedure TfrmCte.edCFOPChange( Sender : TObject );
  begin
    inherited;
    CbOper.idRetorno := edCFOP.text;
  end;

function TfrmCte.GetCodFor : string;
  var
    CNPJ : string;
  begin
    CNPJ := RetirarMascaraCNPJ_INSC( edtFornecedorCnpj.text );
    result := dbInicio.BuscaUmDadoSqlAsString
      ( 'SELECT FOR_CODIGO FROM FOR0000 WHERE FOR_CGC=' + qStr( CNPJ ) +
      ConcatSe( ' AND ', dbInicio.ExclusivoSql( 'FORNECEDORES' ) ) );
  end;

procedure TfrmCte.GravaCte;
  var
    parc_reg, pag_registro : integer;
    pag_codigo : string;
    xml : TStringStream;
  begin
    { inserir dados no arquivo cte }
    cdsCte.Insert;
    cdsCteECTE_REGISTRO.AsInteger := dbInicio.GetNextSequence
      ( 'GEN_ENTRADA_CTE' );
    cdsCteEMP_CODIGO.AsString := dbInicio.EMP_CODIGO;
    cdsCteECTE_NUMERO.AsString := edtNumerNfe.text;
    cdsCteECTE_MODELO_NF.AsString := edtModelo.text;
    cdsCteECTE_SERIE.AsString := edtSerie.text;
    cdsCteECTE_EMISSAO.AsDateTime := StrToDate( edtEmissao.text );
    cdsCteFOR_CODIGO.AsString := edCodFor.text;
    cdsCteOPE_CODIGO.AsString := CbOper.idRetorno;
    cdsCteOPE_NATUREZA.AsString := edCFOP.text;
    cdsCteECTE_VALOR_PREST.AsFloat := edtValorPrest.Value;
    cdsCteCCT_CODIGO.AsString := cbContaContabil.idRetorno;
    cdsCteECTE_ALIQ_ICMS.AsFloat := edtAliquotaICMS.Value;
    cdsCteECTE_CST_ICMS.AsString := edtCST.text;
    cdsCteECTE_BASEICMS.AsFloat := edtBaseIcms.Value;
    cdsCteECTE_VL_ICMS.AsFloat := edtValorIcms.Value;
    cdsCteECTE_VALOR_NOTA.AsFloat := edtValorNota.Value;
    // cdsCteCID_CODIGO_DEST_IBGE.AsInteger := ACBrCTe1.Conhecimentos.Items[0].CTe.ide.cMunIni ;
    // cdsCteCID_CODIGO_ORIG_IBGE.AsInteger :=ACBrCTe1.Conhecimentos.Items[0].CTe.ide.cMunFim;

    cdsCteCID_CODIGO_DEST_IBGE.AsInteger := ACBrCTe1.Conhecimentos.items[ 0 ]
      .CTe.ide.cMunFim;
    cdsCteCID_CODIGO_ORIG_IBGE.AsInteger := ACBrCTe1.Conhecimentos.items[ 0 ]
      .CTe.ide.cMunIni;

    cdsCteECTE_CHAVE.AsString := edtChave.text;
    cdsCteECTE_DATAENTRADA.AsDateTime := dataEntrada.Date +
      StrToTime( '00:00:00' );
    cdsCteECTE_VENCTO.AsDateTime := dataVencimento.Date +
      StrToTime( '00:00:00' );
    cdsCteECTE_observacao.AsString := mobservacao.Lines.text;
    case cbTipoFrete.ItemIndex of
      0, 1, 2 :
        cdsCteECTE_TIPO_FRETE.AsInteger := cbTipoFrete.ItemIndex;
      3 :
        cdsCteECTE_TIPO_FRETE.AsInteger := 9;
    end;

    xml := TStringStream.Create;
    try
      ACBrCTe1.Conhecimentos.items[ 0 ].GravarStream( xml );
      cdsCteECTE_XML.LoadFromStream( xml );
    finally
      xml.Free;
    end;


    // cdsCteECTE_XML.LoadFromFile(scam);

    pag_codigo := SequenciadorPRC( DBConn, // Conexao
      dbInicio.Empresa.EMP_CODIGO, // empresa
      'PAG0000', // Tabela
      'PAG_CODIGO', // Campo da Tabela
      0 ); // Busca a Sequencia
    pag_codigo := strzero( pag_codigo, 5 );
    // pag_registro := dbinicio.GetNextSequence('gen_pag0000'); valor desatualizado
    openaux( 'SELECT max(pag_registro) as pag_registro FROM pag0000' );
    pag_registro := qAux.FieldByName( 'pag_registro' ).AsInteger + 1;

    ExecSql( 'insert into pag0000 (pag_registro, pag_codigo,PAG_NUMDOC, for_codigo, cct_codigo,PAG_DTEMIS,PAG_VLNOTA,PAG_PREVISAO, '
      + ' emp_codigo, pag_exclusao  ) values (' + IntToStr( pag_registro ) + ','
      + QuotedStr( pag_codigo ) + ',' + QuotedStr( 'CTe' + edtNumerNfe.text ) +
      ',' + QuotedStr( edCodFor.text ) + ',' +
      QuotedStr( cbContaContabil.idRetorno ) + ',' +
      DateToSQL( StrToDate( edtEmissao.text ) ) + ',' +
      FloatToSQL( edtValorNota.Value ) + ',' + QuotedStr( 'S' ) + ',' +
      // PROVISÃO
      QuotedStr( dbInicio.Empresa.EMP_CODIGO ) + ',' + QuotedStr( 'N' ) + ')' );
    parc_reg := dbInicio.GetNextSequence( 'gen_pag_pc01' );
    ExecSql( 'insert into PAG_PC01 (pag_registro, PAG_CODIGO, PPC_NUMER, CCT_CODIGO,PPC_DTEMIS, PPC_VENCTO, emp_codigo, ppc_nparcelas, '
      + ' ppc_sitpag, ppc_status, ppc_previsao, ppc_exclusao, PPC_VLPARC, for_codigo)  VALUES('
      + IntToStr( parc_reg ) + ',' + QuotedStr( pag_codigo ) + ',' +
      QuotedStr( '01' ) + ',' + QuotedStr( cbContaContabil.idRetorno ) + ',' +
      DateToSQL( StrToDate( edtEmissao.text ) + 10 ) + ',' +
      DateToSQL( dataVencimento.Date ) + ',' +
      QuotedStr( dbInicio.Empresa.EMP_CODIGO ) + ',' + '1,' + QuotedStr( 'P' ) +
      ',' + QuotedStr( 'Pendente' ) + ',' + QuotedStr( 'N' ) + ',' +
      QuotedStr( 'N' ) + ',' + FloatToSQL( edtValorNota.Value ) + ',' +
      QuotedStr( edCodFor.text ) + ')' );

    cdsCtePAG_REGISTRO.AsInteger := pag_registro;
    cdsCte.Post;
    cdsCte.ApplyUpdates( 0 );
    CommitTransaction;
  end;

procedure TfrmCte.SetStatus( const Values : TStatus );
  begin
    FStatus := Values;
  end;

end.
