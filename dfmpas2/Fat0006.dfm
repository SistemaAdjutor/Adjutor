object FormFatServico: TFormFatServico
  Left = 241
  Top = 140
  BorderIcons = [biSystemMenu]
  Caption = 'Faturamento da Ordem de Servi'#231'o'
  ClientHeight = 364
  ClientWidth = 839
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox1: TGroupBox
    Left = 0
    Top = 69
    Width = 839
    Height = 139
    Align = alTop
    Caption = 'Informa'#231#245'es de Servi'#231'o'
    TabOrder = 1
    object Label23: TLabel
      Left = 15
      Top = 21
      Width = 71
      Height = 14
      Caption = 'Data Emiss'#227'o :'
    end
    object Label28: TLabel
      Left = 300
      Top = 21
      Width = 43
      Height = 14
      Caption = 'N'#250'mero :'
    end
    object Label1: TLabel
      Left = 181
      Top = 21
      Width = 55
      Height = 14
      Caption = 'N'#186' Fatura : '
    end
    object Label2: TLabel
      Left = 471
      Top = 22
      Width = 12
      Height = 14
      Alignment = taRightJustify
      Caption = 'IR:'
    end
    object Label4: TLabel
      Left = 454
      Top = 46
      Width = 29
      Height = 14
      Alignment = taRightJustify
      Caption = 'CSLL:'
    end
    object Label6: TLabel
      Left = 456
      Top = 69
      Width = 26
      Height = 14
      Alignment = taRightJustify
      Caption = 'INSS:'
    end
    object Label9: TLabel
      Left = 442
      Top = 94
      Width = 40
      Height = 14
      Alignment = taRightJustify
      Caption = 'COFINS:'
    end
    object Label10: TLabel
      Left = 464
      Top = 117
      Width = 18
      Height = 14
      Alignment = taRightJustify
      Caption = 'PIS:'
    end
    object Label11: TLabel
      Left = 47
      Top = 46
      Width = 40
      Height = 14
      Caption = 'Servi'#231'o:'
    end
    object Label12: TLabel
      Left = 54
      Top = 70
      Width = 31
      Height = 14
      Caption = 'CNAE:'
    end
    object Label13: TLabel
      Left = 671
      Top = 22
      Width = 52
      Height = 14
      Alignment = taRightJustify
      Caption = 'Dedu'#231#245'es:'
    end
    object Label14: TLabel
      Left = 640
      Top = 46
      Width = 19
      Height = 14
      Alignment = taRightJustify
      Caption = 'ISS:'
    end
    object Label15: TLabel
      Left = 670
      Top = 118
      Width = 53
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor Final:'
    end
    object Label16: TLabel
      Left = 642
      Top = 70
      Width = 81
      Height = 14
      Alignment = taRightJustify
      Caption = 'Base de Calculo:'
    end
    object DBEditNumero: TDBEdit
      Left = 344
      Top = 18
      Width = 100
      Height = 21
      DataField = 'NF_NUMERO'
      DataSource = DataMovimento.DsNotaFiscal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object RxDataEmissao: TDateEdit
      Left = 88
      Top = 18
      Width = 89
      Height = 21
      DefaultToday = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      GlyphKind = gkEllipsis
      ButtonWidth = 16
      NumGlyphs = 1
      ParentFont = False
      YearDigits = dyFour
      TabOrder = 0
      Text = '08/09/2004'
      OnExit = RxDataEmissaoExit
    end
    object CurrNumNota: TCurrencyEdit
      Left = 235
      Top = 18
      Width = 55
      Height = 21
      Alignment = taCenter
      AutoSize = False
      DisplayFormat = '000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 1
      ZeroEmpty = False
      OnClick = CurrNumNotaClick
      OnEnter = CurrNumNotaEnter
      OnExit = CurrNumNotaExit
    end
    object CurrValorIR: TCurrencyEdit
      Left = 552
      Top = 18
      Width = 81
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 3
      DisplayFormat = '#,###0.000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      ZeroEmpty = False
      OnExit = CurrValorIRExit
    end
    object CurrValorCSLL: TCurrencyEdit
      Left = 552
      Top = 42
      Width = 81
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 3
      DisplayFormat = '#,###0.000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      ZeroEmpty = False
      OnExit = CurrValorIRExit
    end
    object CurrValorINSS: TCurrencyEdit
      Left = 552
      Top = 66
      Width = 81
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 3
      DisplayFormat = '#,###0.000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
      ZeroEmpty = False
      OnExit = CurrValorIRExit
    end
    object CurrValorCOFINS: TCurrencyEdit
      Left = 552
      Top = 90
      Width = 81
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 3
      DisplayFormat = '#,###0.000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
      ZeroEmpty = False
      OnExit = CurrValorIRExit
    end
    object CurrValorPIS: TCurrencyEdit
      Left = 552
      Top = 114
      Width = 81
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 3
      DisplayFormat = '#,###0.000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
      ZeroEmpty = False
      OnExit = CurrValorIRExit
    end
    object CbServico: TcxLookupComboBox
      Left = 88
      Top = 43
      Properties.KeyFieldNames = 'SRV_REGISTRO'
      Properties.ListColumns = <
        item
          FieldName = 'SRV_REGISTRO,SRV_DESCRICAO'
        end>
      Properties.ListSource = DsServico
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 3
      Width = 357
    end
    object CbCnae: TcxLookupComboBox
      Left = 88
      Top = 67
      Properties.KeyFieldNames = 'CNAE_CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'CNAE_CODIGO,CNAE_DESCRICAO'
        end>
      Properties.ListSource = DsCnae
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 4
      Width = 358
    end
    object CurrValorDeducoes: TCurrencyEdit
      Left = 725
      Top = 18
      Width = 100
      Height = 21
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,###0.000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      ZeroEmpty = False
      OnExit = CurrValorIRExit
    end
    object CurrValorISS: TCurrencyEdit
      Left = 725
      Top = 42
      Width = 100
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 3
      DisplayFormat = '#,###0.000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
      ZeroEmpty = False
      OnExit = CurrValorIRExit
    end
    object CurrValorFinal: TCurrencyEdit
      Left = 725
      Top = 114
      Width = 100
      Height = 21
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 3
      DisplayFormat = '#,###0.000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 19
      ZeroEmpty = False
    end
    object CurrValorBaseCalculo: TCurrencyEdit
      Left = 725
      Top = 66
      Width = 100
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 3
      DisplayFormat = '#,###0.000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
      ZeroEmpty = False
      OnExit = CurrValorIRExit
    end
    object CurrPercenteIR: TCurrencyEdit
      Left = 488
      Top = 18
      Width = 57
      Height = 21
      AutoSize = False
      DisplayFormat = '##0.00%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      ZeroEmpty = False
      OnExit = CurrValorIRExit
    end
    object CurrPercenteCSLL: TCurrencyEdit
      Left = 488
      Top = 42
      Width = 57
      Height = 21
      AutoSize = False
      DisplayFormat = '##0.00%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      ZeroEmpty = False
      OnExit = CurrValorIRExit
    end
    object CurrPercenteINSS: TCurrencyEdit
      Left = 488
      Top = 66
      Width = 57
      Height = 21
      AutoSize = False
      DisplayFormat = '##0.00%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      ZeroEmpty = False
      OnExit = CurrValorIRExit
    end
    object CurrPercenteCOFINS: TCurrencyEdit
      Left = 488
      Top = 90
      Width = 57
      Height = 21
      AutoSize = False
      DisplayFormat = '##0.00%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      ZeroEmpty = False
      OnExit = CurrValorIRExit
    end
    object CurrPercentePIS: TCurrencyEdit
      Left = 488
      Top = 114
      Width = 57
      Height = 21
      AutoSize = False
      DisplayFormat = '##0.00%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      ZeroEmpty = False
      OnExit = CurrValorIRExit
    end
    object CurrPercenteISS: TCurrencyEdit
      Left = 664
      Top = 42
      Width = 57
      Height = 21
      AutoSize = False
      DisplayFormat = '##0.00%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      ZeroEmpty = False
      OnExit = CurrValorIRExit
    end
  end
  object GroupBox5: TGroupBox
    Left = 0
    Top = 0
    Width = 839
    Height = 69
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 22
      Top = 20
      Width = 68
      Height = 14
      Caption = 'N'#186' do Pedido :'
    end
    object Label19: TLabel
      Left = 431
      Top = 45
      Width = 72
      Height = 14
      Caption = 'Total '#224' Faturar:'
    end
    object Label7: TLabel
      Left = 75
      Top = 43
      Width = 23
      Height = 14
      Caption = 'Tipo:'
    end
    object Label8: TLabel
      Left = 678
      Top = 20
      Width = 85
      Height = 14
      Caption = 'Consumidor Final:'
    end
    object Label33: TLabel
      Left = 679
      Top = 45
      Width = 85
      Height = 14
      Caption = 'Consumo Pr'#243'prio:'
    end
    object DBEditPedido: TDBEdit
      Left = 108
      Top = 15
      Width = 53
      Height = 21
      Color = 14145495
      DataField = 'PED_CODIGO'
      DataSource = FormFaturamento.DsPedidos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEditCliente: TDBEdit
      Left = 163
      Top = 15
      Width = 459
      Height = 21
      Color = 14145495
      DataField = 'CLI_RAZAO'
      DataSource = FormFaturamento.DsPedidos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEditValor: TDBEdit
      Left = 522
      Top = 40
      Width = 100
      Height = 21
      Color = 14145495
      DataField = 'PED_VLTOTAL_BRUTO'
      DataSource = FormFaturamento.DsPedidos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEOpv_codigo: TDBEdit
      Left = 107
      Top = 40
      Width = 54
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'OPV_CODIGO'
      DataSource = FormFaturamento.DsPedidos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 3
      ParentFont = False
      TabOrder = 3
    end
    object CbTipo1: TComboBoxRw
      Left = 163
      Top = 40
      Width = 236
      Height = 21
      TabOrder = 4
      CharCase = ecUpperCase
      color = 14145495
      font.Charset = DEFAULT_CHARSET
      font.Color = clBlack
      font.Height = -11
      font.Name = 'MS Sans Serif'
      font.Style = [fsBold]
      LookupSelect = 'OPV_DESCRICAO'
      LookupOrderBy = 'OPV_DESCRICAO'
      LookupTable = 'OPV0000'
      GridAutoSize = False
      LookupSource = CbTipo1.InternalSource
      LookupKeyField = 'OPV_CODIGO'
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Tipos'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      Tabela = 'OPV0000'
      CamposCarregar = 'OPV_DESCRICAO'
      CamposRetornar = 'OPV_CODIGO'
      CamposOrdernar = 'OPV_DESCRICAO'
      ConexaoBanco = DataCadastros.SQLConnection1
      Compartilhar = 'TABELAS'
      Localizado = False
      CodigoEmpresa = 0
      ResetaCampos = False
      MultiEmpresa = False
      Localizar = False
      CarregarCombo = False
      itemindex = 0
      style = csDropDown
    end
    object CbConsFinal: TComboBox
      Left = 781
      Top = 15
      Width = 40
      Height = 21
      Style = csSimple
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 1
      ParentFont = False
      TabOrder = 5
      Text = 'N'#195'O'
      Items.Strings = (
        'SIM'
        'N'#195'O')
    end
    object Cb_ConsProprio: TComboBox
      Left = 781
      Top = 40
      Width = 40
      Height = 21
      Style = csSimple
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 1
      ParentFont = False
      TabOrder = 6
      Text = 'N'#195'O'
      Items.Strings = (
        'SIM'
        'N'#195'O')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 330
    Width = 839
    Height = 34
    Align = alBottom
    TabOrder = 2
    object BitConfirmaNota: TBitBtn
      Left = 514
      Top = 4
      Width = 102
      Height = 25
      Caption = 'Confir&mar'
      TabOrder = 0
      TabStop = False
      OnClick = BitConfirmaNotaClick
    end
    object BitCancelar: TBitBtn
      Left = 620
      Top = 4
      Width = 102
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      TabStop = False
      OnClick = BitCancelarClick
    end
    object BitSair: TBitBtn
      Left = 727
      Top = 4
      Width = 100
      Height = 25
      Caption = '&Sair'
      TabOrder = 2
      TabStop = False
      OnClick = BitSairClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 208
    Width = 839
    Height = 113
    Align = alTop
    TabOrder = 3
    object GroupBox4: TGroupBox
      Left = 1
      Top = 1
      Width = 360
      Height = 111
      Align = alLeft
      Caption = 'Descri'#231#227'o do Servi'#231'o'
      TabOrder = 0
      object ScrollBox1: TScrollBox
        Left = 2
        Top = 16
        Width = 356
        Height = 93
        Align = alClient
        TabOrder = 0
        object MdescricaoServico: TMemo
          Left = 0
          Top = 0
          Width = 352
          Height = 89
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 361
      Top = 1
      Width = 477
      Height = 111
      Align = alClient
      Caption = 'Conta/Banco:'
      TabOrder = 1
      object Label18: TLabel
        Left = 15
        Top = 47
        Width = 50
        Height = 14
        Caption = 'Cobran'#231'a:'
      end
      object Label5: TLabel
        Left = 279
        Top = 48
        Width = 45
        Height = 14
        Caption = 'Tipo Doc:'
      end
      object CurrcodBanco: TCurrencyEdit
        Left = 15
        Top = 23
        Width = 40
        Height = 21
        Alignment = taCenter
        AutoSize = False
        DisplayFormat = '0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 4
        ParentFont = False
        TabOrder = 0
        OnExit = CurrcodBancoExit
      end
      object CbBancos: TComboBox
        Left = 56
        Top = 23
        Width = 409
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = CbBancosClick
        OnExit = CbBancosClick
      end
      object CbxCarteira: TComboBox
        Left = 14
        Top = 61
        Width = 259
        Height = 21
        Style = csDropDownList
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Items.Strings = (
          ''
          'CARTEIRA'
          'COBRAN'#199'A SIMPLES'
          'COBRAN'#199'A CAUCIONADA'
          'COBRAN'#199'A DESCONTADA'
          'COBRAN'#199'A SEM REGISTRO'
          'COBRAN'#199'A RAPIDA'
          'CUSTODIA DE CHEQUE'
          'CHEQUE DESCONTADO')
      end
      object CbxTipoDoc: TComboBox
        Left = 278
        Top = 61
        Width = 187
        Height = 21
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Items.Strings = (
          ''
          'DUPLICATA'
          'BOLETO'
          'RECIBO'
          'CHEQUE'
          'DINHEIRO'
          'OUTROS'
          'CREDITO CONTA')
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 321
    Width = 839
    Height = 9
    Align = alClient
    TabOrder = 4
  end
  object CdsBancos: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'B1.BAN_APELIDO, '#13#10'B1.BAN_CODIGO,'#13#10'B1.BAN_COBTIPO,'#13#10'B1.BA' +
      'N_COD_APELIDO'#13#10'FROM BAN0000 B1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'B1.BAN_APELIDO, '#13#10'B1.BAN_CODIGO,'#13#10'B1.BAN_COBTIPO,'#13#10'B1.BA' +
      'N_COD_APELIDO'#13#10'FROM BAN0000 B1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 714
    Top = 165
    object CdsBancosBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 14
    end
    object CdsBancosBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Required = True
      Size = 4
    end
    object CdsBancosBAN_COBTIPO: TStringField
      FieldName = 'BAN_COBTIPO'
      Size = 2
    end
    object CdsBancosBAN_COD_APELIDO: TIntegerField
      FieldName = 'BAN_COD_APELIDO'
    end
  end
  object CdsItemPedido: TSqlClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'P1.*,'#13#10'P2.IPI_CODIGO,'#13#10'P2.PRD_CODIGO as prd_produto,'#13#10'P2' +
      '.PRD_PESOKG,'#13#10'P2.PRD_PESOLIQ,'#13#10'P2.PRD_DCVAR1,'#13#10'P2.PRD_DCVAR2,'#13#10'P' +
      '2.PRD_DCVAR3,'#13#10'P2.PRD_DCVAR4,'#13#10'P2.PRD_DCVAR5,'#13#10'P2.PRD_DCVAR6,'#13#10'P' +
      '2.PRD_DCVAR7,'#13#10'P2.PRD_DCVAR8,'#13#10'P2.STB_TRIBUTACAO,'#13#10'G1.PGR_ATUALI' +
      'ZA_ESTOQUE,'#13#10'G1.PGR_CODIGO,'#13#10'T1.PTI_ATUALIZAR_ESTOQUE,'#13#10'P3.OPV_A' +
      'TESTOQUE'#13#10'FROM PED_IT01 P1'#13#10'JOIN PRD0000 P2 ON (P1.PRD_REFER = P' +
      '2.PRD_REFER)'#13#10'LEFT JOIN PRD_GRUPO G1 ON (P2.PGR_CODIGO = G1.PGR_' +
      'CODIGO)'#13#10'LEFT JOIN PRD_TIPO T1 ON (P2.PTI_CODIGO = T1.PTI_CODIGO' +
      ')'#13#10'LEFT JOIN PED0000 P0 ON (P1.PED_CODIGO = P0.PED_CODIGO) AND (' +
      'P1.EMP_CODIGO = P0.EMP_CODIGO)'#13#10'LEFT JOIN OPV0000 P3 ON (P0.OPV_' +
      'CODIGO = P3.OPV_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = CdsItemPedidoCalcFields
    CommandText = 
      'SELECT'#13#10'P1.*,'#13#10'P2.IPI_CODIGO,'#13#10'P2.PRD_CODIGO as prd_produto,'#13#10'P2' +
      '.PRD_PESOKG,'#13#10'P2.PRD_PESOLIQ,'#13#10'P2.PRD_DCVAR1,'#13#10'P2.PRD_DCVAR2,'#13#10'P' +
      '2.PRD_DCVAR3,'#13#10'P2.PRD_DCVAR4,'#13#10'P2.PRD_DCVAR5,'#13#10'P2.PRD_DCVAR6,'#13#10'P' +
      '2.PRD_DCVAR7,'#13#10'P2.PRD_DCVAR8,'#13#10'P2.STB_TRIBUTACAO,'#13#10'G1.PGR_ATUALI' +
      'ZA_ESTOQUE,'#13#10'G1.PGR_CODIGO,'#13#10'T1.PTI_ATUALIZAR_ESTOQUE,'#13#10'P3.OPV_A' +
      'TESTOQUE'#13#10'FROM PED_IT01 P1'#13#10'JOIN PRD0000 P2 ON (P1.PRD_REFER = P' +
      '2.PRD_REFER)'#13#10'LEFT JOIN PRD_GRUPO G1 ON (P2.PGR_CODIGO = G1.PGR_' +
      'CODIGO)'#13#10'LEFT JOIN PRD_TIPO T1 ON (P2.PTI_CODIGO = T1.PTI_CODIGO' +
      ')'#13#10'LEFT JOIN PED0000 P0 ON (P1.PED_CODIGO = P0.PED_CODIGO) AND (' +
      'P1.EMP_CODIGO = P0.EMP_CODIGO)'#13#10'LEFT JOIN OPV0000 P3 ON (P0.OPV_' +
      'CODIGO = P3.OPV_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 446
    Top = 206
    object CdsItemPedidoPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      Required = True
    end
    object CdsItemPedidoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object CdsItemPedidoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object CdsItemPedidoPRF_PRDDESCRI: TStringField
      FieldName = 'PRF_PRDDESCRI'
      Size = 50
    end
    object CdsItemPedidoPRF_PRECO: TFMTBCDField
      FieldName = 'PRF_PRECO'
      Precision = 15
    end
    object CdsItemPedidoPRF_IPIALIQ: TFMTBCDField
      FieldName = 'PRF_IPIALIQ'
      Precision = 15
    end
    object CdsItemPedidoPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      Precision = 15
    end
    object CdsItemPedidoPRF_QTDEFAT: TFMTBCDField
      FieldName = 'PRF_QTDEFAT'
      Precision = 15
    end
    object CdsItemPedidoPRD_PESOKG: TFMTBCDField
      FieldName = 'PRD_PESOKG'
      Precision = 15
    end
    object CdsItemPedidoPRD_PESOLIQ: TFMTBCDField
      FieldName = 'PRD_PESOLIQ'
      Precision = 15
    end
    object CdsItemPedidoPRF_QTDE_FATURAR_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'PRF_QTDE_FATURAR_CC'
      Calculated = True
    end
    object CdsItemPedidoIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object CdsItemPedidoPGR_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'PGR_ATUALIZA_ESTOQUE'
      Size = 1
    end
    object CdsItemPedidoPRF_ITEMCOMIS: TFMTBCDField
      FieldName = 'PRF_ITEMCOMIS'
      Precision = 15
    end
    object CdsItemPedidoPRF_VAR1: TFMTBCDField
      FieldName = 'PRF_VAR1'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsItemPedidoPRF_VAR2: TFMTBCDField
      FieldName = 'PRF_VAR2'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsItemPedidoPRF_VAR3: TFMTBCDField
      FieldName = 'PRF_VAR3'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsItemPedidoPRF_VAR4: TFMTBCDField
      FieldName = 'PRF_VAR4'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsItemPedidoPRF_VAR5: TFMTBCDField
      FieldName = 'PRF_VAR5'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsItemPedidoPRF_VAR6: TFMTBCDField
      FieldName = 'PRF_VAR6'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsItemPedidoPRF_VAR7: TFMTBCDField
      FieldName = 'PRF_VAR7'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsItemPedidoPRF_VAR8: TFMTBCDField
      FieldName = 'PRF_VAR8'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsItemPedidoPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object CdsItemPedidoPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object CdsItemPedidoPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object CdsItemPedidoPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object CdsItemPedidoPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object CdsItemPedidoPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object CdsItemPedidoPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object CdsItemPedidoPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
    object CdsItemPedidoPRF_QTDE_FAT_VAR1: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR1'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsItemPedidoPRF_QTDE_FAT_VAR2: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR2'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsItemPedidoPRF_QTDE_FAT_VAR3: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR3'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsItemPedidoPRF_QTDE_FAT_VAR4: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR4'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsItemPedidoPRF_QTDE_FAT_VAR5: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR5'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsItemPedidoPRF_QTDE_FAT_VAR6: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR6'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsItemPedidoPRF_QTDE_FAT_VAR7: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR7'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsItemPedidoPRF_QTDE_FAT_VAR8: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR8'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsItemPedidoQTDE_FATVAR1_IC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE_FATVAR1_IC'
      Calculated = True
    end
    object CdsItemPedidoQTDE_FATVAR2_IC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE_FATVAR2_IC'
      Calculated = True
    end
    object CdsItemPedidoQTDE_FATVAR3_IC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE_FATVAR3_IC'
      Calculated = True
    end
    object CdsItemPedidoQTDE_FATVAR4_IC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE_FATVAR4_IC'
      Calculated = True
    end
    object CdsItemPedidoQTDE_FATVAR5_IC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE_FATVAR5_IC'
      Calculated = True
    end
    object CdsItemPedidoQTDE_FATVAR6_IC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE_FATVAR6_IC'
      Calculated = True
    end
    object CdsItemPedidoQTDE_FATVAR7_IC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE_FATVAR7_IC'
      Calculated = True
    end
    object CdsItemPedidoQTDE_FATVAR8_IC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE_FATVAR8_IC'
      Calculated = True
    end
    object CdsItemPedidoCC_ID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CC_ID'
      DisplayFormat = '00'
      EditFormat = '00'
      Calculated = True
    end
    object CdsItemPedidoPRF_FLAG_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'PRF_FLAG_ATUALIZA_ESTOQUE'
      Size = 1
    end
    object CdsItemPedidoPTI_ATUALIZAR_ESTOQUE: TStringField
      FieldName = 'PTI_ATUALIZAR_ESTOQUE'
      Size = 1
    end
    object CdsItemPedidoOPV_ATESTOQUE: TStringField
      FieldName = 'OPV_ATESTOQUE'
      FixedChar = True
      Size = 1
    end
    object CdsItemPedidoPRF_SITUACAO: TStringField
      FieldName = 'PRF_SITUACAO'
      Size = 1
    end
    object CdsItemPedidoPRF_ICMSALIQ: TFMTBCDField
      FieldName = 'PRF_ICMSALIQ'
      Precision = 15
    end
    object CdsItemPedidoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsItemPedidoPRF_PRECO_BRUTO: TFMTBCDField
      FieldName = 'PRF_PRECO_BRUTO'
      Precision = 15
      Size = 5
    end
    object CdsItemPedidoPRF_OP: TStringField
      FieldName = 'PRF_OP'
      Size = 1
    end
    object CdsItemPedidoPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
    object CdsItemPedidoPRF_ORIGEM_ITEM: TStringField
      FieldName = 'PRF_ORIGEM_ITEM'
      Size = 1
    end
    object CdsItemPedidoPRF_PRODUTO_AGREGADO: TStringField
      FieldName = 'PRF_PRODUTO_AGREGADO'
      Size = 1
    end
    object CdsItemPedidoSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Size = 2
    end
    object CdsItemPedidoPRD_PRODUTO: TStringField
      FieldName = 'PRD_PRODUTO'
      Required = True
      Size = 4
    end
    object CdsItemPedidoPRF_IDESCTO1: TFloatField
      FieldName = 'PRF_IDESCTO1'
      ProviderFlags = [pfInUpdate]
    end
    object CdsItemPedidoPRF_IDESCTO2: TFloatField
      FieldName = 'PRF_IDESCTO2'
      ProviderFlags = [pfInUpdate]
    end
    object CdsItemPedidoTOTAL_PRODUTOS_AG: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TOTAL_PRODUTOS_AG'
      Active = True
      currency = True
      DisplayName = ''
      DisplayFormat = '#,##0.00'
      Expression = 'sum(PRF_PRECO * PRF_QTDE)'
    end
  end
  object DsPedItem: TDataSource
    DataSet = CdsItemPedido
    Left = 320
    Top = 192
  end
  object SQLEmpresa: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from EMP0000 order by EMP_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from EMP0000 order by EMP_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 752
    Top = 168
  end
  object CdsTipo: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from OPV0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from OPV0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 506
    Top = 214
    object CdsTipoOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      Required = True
    end
    object CdsTipoOPV_DESCRICAO: TStringField
      FieldName = 'OPV_DESCRICAO'
      Size = 30
    end
    object CdsTipoOPV_ATESTOQUE: TStringField
      FieldName = 'OPV_ATESTOQUE'
      FixedChar = True
      Size = 1
    end
    object CdsTipoOPV_TIPO: TStringField
      FieldName = 'OPV_TIPO'
      Size = 1
    end
    object CdsTipoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsTipoAMX_DESTINO: TStringField
      FieldName = 'AMX_DESTINO'
      Size = 4
    end
    object CdsTipoAMX_ORIGEM: TStringField
      FieldName = 'AMX_ORIGEM'
      Size = 4
    end
  end
  object SqlCdsServico: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from SRV0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from SRV0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 154
    Top = 102
    object SqlCdsServicoSRV_REGISTRO: TIntegerField
      FieldName = 'SRV_REGISTRO'
      Required = True
    end
    object SqlCdsServicoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsServicoSRV_DESCRICAO: TStringField
      FieldName = 'SRV_DESCRICAO'
      Size = 255
    end
  end
  object DsServico: TDataSource
    DataSet = SqlCdsServico
    Left = 400
    Top = 64
  end
  object SqlCdsCnae: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from CNAE'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from CNAE'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 314
    Top = 142
    object SqlCdsCnaeCNAE_REGISTRO: TIntegerField
      FieldName = 'CNAE_REGISTRO'
      Required = True
    end
    object SqlCdsCnaeCNAE_CODIGO: TStringField
      FieldName = 'CNAE_CODIGO'
      Size = 10
    end
    object SqlCdsCnaeCNAE_DESCRICAO: TStringField
      FieldName = 'CNAE_DESCRICAO'
      Size = 200
    end
  end
  object DsCnae: TDataSource
    DataSet = SqlCdsCnae
    Left = 408
    Top = 144
  end
end
