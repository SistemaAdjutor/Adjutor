inherited FormGImpPagar: TFormGImpPagar
  Left = 354
  Top = 73
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gerenciador de impress'#227'o (Contas '#224' Pagar)'
  ClientHeight = 665
  ClientWidth = 1402
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  OldCreateOrder = True
  Position = poDesktopCenter
  ExplicitWidth = 1408
  ExplicitHeight = 690
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 457
    Height = 665
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 0
    object Group01: TGroupBox
      Left = 0
      Top = 193
      Width = 457
      Height = 41
      Align = alTop
      Caption = '&Contas no Per'#237'odo:'
      TabOrder = 0
      object Label5: TLabel
        Left = 155
        Top = 17
        Width = 17
        Height = 13
        Caption = '&De:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 282
        Top = 17
        Width = 16
        Height = 13
        Caption = '&At'#233
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object EditDataI: TJvDateEdit
        Left = 174
        Top = 13
        Width = 97
        Height = 22
        DefaultToday = True
        Glyph.Data = {
          76050000424D760500000000000036000000280000001C0000000C0000000100
          2000000000004005000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
          0000800000008000000000000000800000000000000000000000800000008080
          8000FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
          0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
          80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
          C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FF00FF00}
        ImageKind = ikCustom
        NumGlyphs = 2
        PopupColor = clBtnFace
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 0
        OnExit = EditDataIExit
      end
      object EditDataF: TJvDateEdit
        Left = 305
        Top = 13
        Width = 100
        Height = 22
        Glyph.Data = {
          76050000424D760500000000000036000000280000001C0000000C0000000100
          2000000000004005000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
          0000800000008000000000000000800000000000000000000000800000008080
          8000FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
          0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
          80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
          C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FF00FF00}
        ImageKind = ikCustom
        NumGlyphs = 2
        PopupColor = clBtnFace
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 1
        OnExit = EditDataFExit
      end
      object cbPeriodo: TComboBox
        Left = 15
        Top = 13
        Width = 113
        Height = 22
        ItemIndex = 0
        TabOrder = 2
        Text = 'VENCIMENTO'
        Items.Strings = (
          'VENCIMENTO'
          'EMISS'#195'O')
      end
    end
    object Group02: TGroupBox
      Left = 0
      Top = 234
      Width = 457
      Height = 41
      Align = alTop
      Caption = 'Selecionar'
      TabOrder = 1
      object Label1: TLabel
        Left = 27
        Top = 20
        Width = 62
        Height = 14
        Caption = 'Fornecedor :'
      end
      object CbFornecedor: TComboBox
        Left = 118
        Top = 16
        Width = 300
        Height = 22
        CharCase = ecUpperCase
        ItemIndex = 0
        TabOrder = 1
        Text = 'TODOS'
        OnClick = CbFornecedorClick
        OnExit = CbFornecedorClick
        Items.Strings = (
          'TODOS')
      end
      object EdtFor: TEdit
        Left = 87
        Top = 16
        Width = 30
        Height = 22
        MaxLength = 4
        TabOrder = 0
        Text = '9999'
        OnExit = EdtForExit
      end
    end
    object Group05: TGroupBox
      Left = 0
      Top = 337
      Width = 457
      Height = 41
      Align = alTop
      Caption = 'Conta An'#225'lise'
      TabOrder = 2
      object Label2: TLabel
        Left = 60
        Top = 20
        Width = 31
        Height = 14
        Caption = 'Conta:'
      end
      object CbContaAnalise: TComboBox
        Left = 118
        Top = 16
        Width = 300
        Height = 22
        ItemIndex = 0
        TabOrder = 1
        Text = 'TODOS'
        OnClick = CbContaAnaliseClick
        OnExit = CbContaAnaliseClick
        Items.Strings = (
          'TODOS')
      end
      object EdtConta: TEdit
        Left = 92
        Top = 16
        Width = 25
        Height = 22
        MaxLength = 3
        TabOrder = 0
        Text = '999'
        OnExit = EdtContaExit
      end
    end
    object Group09: TGroupBox
      Left = 0
      Top = 378
      Width = 457
      Height = 41
      Align = alTop
      Caption = 'Contas do Tipo:'
      TabOrder = 3
      object Label4: TLabel
        Left = 66
        Top = 20
        Width = 23
        Height = 14
        Caption = 'Tipo:'
      end
      object CbxTipos: TComboBox
        Left = 117
        Top = 16
        Width = 300
        Height = 22
        CharCase = ecUpperCase
        ItemIndex = 0
        TabOrder = 1
        Text = 'TODOS'
        OnClick = CbxTiposClick
        OnExit = CbxTiposClick
        Items.Strings = (
          'TODOS')
      end
      object EdtTipo: TEdit
        Left = 91
        Top = 16
        Width = 25
        Height = 22
        MaxLength = 3
        TabOrder = 0
        Text = '999'
        OnExit = EdtTipoExit
      end
    end
    object Group06: TGroupBox
      Left = 0
      Top = 419
      Width = 457
      Height = 41
      Align = alTop
      Caption = 'Tipo de Consolida'#231#227'o'
      TabOrder = 4
      object RadDetalhada: TRadioButton
        Left = 24
        Top = 16
        Width = 73
        Height = 17
        Caption = '&Detalhada'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RadResumida: TRadioButton
        Left = 152
        Top = 16
        Width = 73
        Height = 17
        Caption = '&Resumida'
        TabOrder = 1
      end
    end
    object Group07: TGroupBox
      Left = 0
      Top = 460
      Width = 457
      Height = 41
      Align = alTop
      Caption = 'Centro de Custo'
      TabOrder = 5
      object LblProjCx: TLabel
        Left = 56
        Top = 20
        Width = 36
        Height = 14
        Caption = 'C'#243'digo:'
      end
      object CbCaixa: TComboBox
        Left = 118
        Top = 16
        Width = 300
        Height = 22
        CharCase = ecUpperCase
        Enabled = False
        ItemIndex = 0
        TabOrder = 1
        Text = 'TODOS'
        OnClick = CbCaixaClick
        OnExit = CbCaixaClick
        Items.Strings = (
          'TODOS')
      end
      object EdtPcx: TEdit
        Left = 92
        Top = 16
        Width = 25
        Height = 22
        MaxLength = 3
        TabOrder = 0
        Text = '999'
        OnExit = EdtPcxExit
      end
    end
    object Group10: TGroupBox
      Left = 0
      Top = 501
      Width = 457
      Height = 41
      Align = alTop
      Caption = 'Documento:'
      TabOrder = 6
      object Label7: TLabel
        Left = 68
        Top = 20
        Width = 23
        Height = 14
        Caption = 'Tipo:'
      end
      object CbTpDocs: TComboBox
        Left = 92
        Top = 16
        Width = 326
        Height = 22
        CharCase = ecUpperCase
        ItemIndex = 0
        TabOrder = 0
        Text = 'TODOS OS DOCUMENTOS'
        Items.Strings = (
          'TODOS OS DOCUMENTOS'
          'BLOQUETO'
          'CHEQUE'
          'CN'
          'DARF'
          'DUPLICATA'
          'GUIA RECOLHIMENTO'
          'NOTA FISCAL'
          'RECIBO'
          'OUTROS')
      end
    end
    object Group12: TGroupBox
      Left = 0
      Top = 542
      Width = 457
      Height = 41
      Align = alTop
      Caption = 'Selecionar Banco de Pagamento'
      TabOrder = 7
      object Label8: TLabel
        Left = 17
        Top = 20
        Width = 31
        Height = 14
        Caption = 'Conta:'
      end
      object CbxBanco: TComboBox
        Left = 88
        Top = 16
        Width = 329
        Height = 22
        CharCase = ecUpperCase
        ItemIndex = 0
        TabOrder = 0
        Text = 'TODOS'
        OnClick = CbxBancoClick
        Items.Strings = (
          'TODOS')
      end
      object Cconta: TEdit
        Left = 49
        Top = 16
        Width = 38
        Height = 22
        Alignment = taCenter
        AutoSize = False
        MaxLength = 4
        TabOrder = 1
        Text = '9999'
        OnExit = CcontaExit
      end
    end
    object Group13: TGroupBox
      Left = 0
      Top = 583
      Width = 457
      Height = 41
      Align = alTop
      Caption = 'Op'#231#245'es da Observa'#231#227'o'
      TabOrder = 8
      object rbCabecalho: TRadioButton
        Left = 24
        Top = 16
        Width = 73
        Height = 17
        Caption = 'Cabe'#231'alho'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rbParcela: TRadioButton
        Left = 152
        Top = 16
        Width = 73
        Height = 17
        Caption = 'Parcela'
        TabOrder = 1
      end
      object rbAmbas: TRadioButton
        Left = 272
        Top = 16
        Width = 73
        Height = 17
        Caption = 'Ambas'
        TabOrder = 2
      end
    end
    object Group08: TGroupBox
      Left = 0
      Top = 624
      Width = 457
      Height = 41
      Align = alTop
      TabOrder = 9
      object BitConfig: TBitBtn
        Left = 15
        Top = 11
        Width = 185
        Height = 25
        Cursor = crHandPoint
        Caption = 'C&onfigura'#231#227'o de Impress'#227'o'
        TabOrder = 2
        TabStop = False
        OnClick = BitConfigClick
      end
      object BitOk: TBitBtn
        Left = 217
        Top = 11
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = '&OK'
        TabOrder = 0
        TabStop = False
        OnClick = BitOkClick
      end
      object BitCancelar: TBitBtn
        Left = 325
        Top = 11
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = '&Cancelar'
        TabOrder = 1
        TabStop = False
        OnClick = BitCancelarClick
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 457
      Height = 193
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 10
      object GroupBox6: TGroupBox
        Left = 0
        Top = 0
        Width = 296
        Height = 193
        Align = alLeft
        Caption = 'Relat'#243'rios'
        TabOrder = 0
        object LTBoxRelatorio: TListBox
          Left = 2
          Top = 16
          Width = 292
          Height = 175
          Style = lbOwnerDrawVariable
          Align = alClient
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 11599871
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = LTBoxRelatorioClick
          OnDblClick = LTBoxRelatorioDblClick
        end
      end
      object GroupBox1: TGroupBox
        Left = 296
        Top = 0
        Width = 161
        Height = 193
        Align = alClient
        Caption = 'Dispositivo de sa'#237'da'
        TabOrder = 1
        object RadVideo: TRadioButton
          Left = 14
          Top = 23
          Width = 65
          Height = 17
          Caption = '&V'#237'deo'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object RadImpressora: TRadioButton
          Left = 14
          Top = 56
          Width = 81
          Height = 17
          Caption = '&Impressora'
          TabOrder = 1
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 275
      Width = 457
      Height = 62
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 11
      object Group03: TGroupBox
        Left = 0
        Top = 0
        Width = 299
        Height = 62
        Align = alClient
        Caption = 'Filtrar Contas'
        TabOrder = 0
        object RadTodas: TRadioButton
          Left = 24
          Top = 17
          Width = 51
          Height = 17
          Caption = '&Todas'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = RadTodasClick
        end
        object RadPendente: TRadioButton
          Left = 144
          Top = 17
          Width = 80
          Height = 17
          Caption = 'Pen&dentes'
          TabOrder = 1
          OnClick = RadTodasClick
        end
        object RadPagas: TRadioButton
          Left = 144
          Top = 37
          Width = 53
          Height = 17
          Caption = 'Pa&gas'
          TabOrder = 3
          OnClick = RadTodasClick
        end
        object radParcial: TRadioButton
          Left = 24
          Top = 37
          Width = 80
          Height = 17
          Caption = 'Pa&rcial'
          TabOrder = 2
          OnClick = RadTodasClick
        end
      end
      object Group11: TGroupBox
        Left = 299
        Top = 0
        Width = 158
        Height = 62
        Align = alRight
        Caption = 'Contas Pagas por'
        TabOrder = 1
        object Rad_Vencto: TRadioButton
          Left = 25
          Top = 17
          Width = 86
          Height = 17
          Caption = '&Vencimento'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object Rad_Pagto: TRadioButton
          Left = 25
          Top = 37
          Width = 75
          Height = 17
          Caption = 'Pa&gamento'
          TabOrder = 1
        end
      end
    end
  end
  object SqlCdsProjCx: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select PCX_CODIGO, PCX_DESCRI, EMP_CODIGO from PCX0000 ORDER BY ' +
      'PCX_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select PCX_CODIGO, PCX_DESCRI, EMP_CODIGO from PCX0000 ORDER BY ' +
      'PCX_DESCRI'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 252
    Top = 430
    object SqlCdsProjCxPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object SqlCdsProjCxPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object SqlCdsProjCxEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      FixedChar = True
      Size = 3
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 294
    Top = 430
  end
  object SqlCdsFornecedor: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select FOR_CODIGO, FOR_RAZAO, EMP_CODIGO from FOR0000 ORDER BY F' +
      'OR_RAZAO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select FOR_CODIGO, FOR_RAZAO, EMP_CODIGO from FOR0000 ORDER BY F' +
      'OR_RAZAO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 589
    Top = 496
    object SqlCdsFornecedorFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlCdsFornecedorFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsFornecedorEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsContaAnalise: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select CCT_CODIGO, CCT_DESCRI, EMP_CODIGO from CCT_0000 ORDER BY' +
      ' CCT_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select CCT_CODIGO, CCT_DESCRI, EMP_CODIGO from CCT_0000 ORDER BY' +
      ' CCT_DESCRI'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 567
    Top = 601
    object SqlCdsContaAnaliseCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlCdsContaAnaliseCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      Size = 35
    end
    object SqlCdsContaAnaliseEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsPag00: TSimpleDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select P2.PAG_CODIGO, P2.PPC_DTEMIS, P2.PAG_NUMDOC, P2.PCX_CODIG' +
      'O, P2.PPC_NUMER, P2.PPC_VENCTO, P2.PPC_VLPARC,'#13#10'       P2.PPC_JU' +
      'ROS, P2.PPC_MULTA, P2.PPC_DESCTO, P2.PPC_VLPAGO, P2.PPC_PAGTO, P' +
      '2.PPC_SITPAG, P2.PPC_BANCO,'#13#10'       P2.BAN_CODIGO, P2.PPC_STATUS' +
      ', B1.BAN_APELIDO, P2.PPC_OBS, P2.FOR_CODIGO, F1.FOR_RAZAO, P2.PP' +
      'C_VALOR_N_RATEIA,'#13#10'       PG.PAG_OBS, PG.CCT_CODIGO, CT.CCT_DESC' +
      'RI, CT.cct_provisao, ( P2.PPC_VLPARC - P2.PPC_VALOR_N_RATEIA) AS' +
      ' PPC_VLLIQUIDO'#13#10'from PAG_PC01 P2'#13#10'join PAG0000 PG on PG.PAG_CODI' +
      'GO = P2.PAG_CODIGO'#13#10'left join CCT_0000 CT on CT.CCT_CODIGO = PG.' +
      'CCT_CODIGO'#13#10'left join FOR0000 F1 on (P2.FOR_CODIGO = F1.FOR_CODI' +
      'GO)'#13#10'left join BAN0000 B1 on (B1.BAN_CODIGO = P2.BAN_CODIGO)'#13#10'wh' +
      'ere 1=2'#13#10'order by P2.PPC_VENCTO, P2.PPC_PAGTO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsPag00CalcFields
    Left = 480
    Top = 24
    object SqlCdsPag00PAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsPag00PAG_NUMDOC: TStringField
      FieldName = 'PAG_NUMDOC'
      Size = 12
    end
    object SqlCdsPag00PCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object SqlCdsPag00PPC_NUMER: TStringField
      FieldName = 'PPC_NUMER'
      Size = 2
    end
    object SqlCdsPag00PPC_VLPARC: TFMTBCDField
      FieldName = 'PPC_VLPARC'
      Precision = 15
      Size = 2
    end
    object SqlCdsPag00PPC_VLPAGO: TFMTBCDField
      FieldName = 'PPC_VLPAGO'
      Precision = 15
      Size = 2
    end
    object SqlCdsPag00PPC_BANCO: TStringField
      FieldName = 'PPC_BANCO'
      Size = 12
    end
    object SqlCdsPag00PPC_OBS: TStringField
      FieldName = 'PPC_OBS'
      Size = 15
    end
    object SqlCdsPag00FOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlCdsPag00FOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsPag00PPC_VLPAGAR_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PPC_VLPAGAR_CC'
      Calculated = True
    end
    object SqlCdsPag00PPC_SITPAG: TStringField
      FieldName = 'PPC_SITPAG'
      Size = 1
    end
    object SqlCdsPag00CCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlCdsPag00PPC_DTEMIS: TSQLTimeStampField
      FieldName = 'PPC_DTEMIS'
    end
    object SqlCdsPag00PPC_VENCTO: TSQLTimeStampField
      FieldName = 'PPC_VENCTO'
    end
    object SqlCdsPag00PPC_PAGTO: TSQLTimeStampField
      FieldName = 'PPC_PAGTO'
    end
    object SqlCdsPag00PAG_MES_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'PAG_MES_CC'
      Size = 2
      Calculated = True
    end
    object SqlCdsPag00PAG_MES_PAGTO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'PAG_MES_PAGTO_CC'
      Size = 2
      Calculated = True
    end
    object SqlCdsPag00BAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object SqlCdsPag00BAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
    object SqlCdsPag00PPC_STATUS: TStringField
      FieldName = 'PPC_STATUS'
      Size = 12
    end
    object SqlCdsPag00PPC_JUROS: TFMTBCDField
      FieldName = 'PPC_JUROS'
      Precision = 20
      Size = 5
    end
    object SqlCdsPag00PPC_MULTA: TFMTBCDField
      FieldName = 'PPC_MULTA'
      Precision = 20
      Size = 5
    end
    object SqlCdsPag00PPC_DESCTO: TFMTBCDField
      FieldName = 'PPC_DESCTO'
      Precision = 20
      Size = 5
    end
    object SqlCdsPag00PPC_VALOR_N_RATEIA: TFMTBCDField
      FieldName = 'PPC_VALOR_N_RATEIA'
      Precision = 15
      Size = 2
    end
    object SqlCdsPag00PAG_OBS: TStringField
      FieldName = 'PAG_OBS'
      Size = 500
    end
    object SqlCdsPag00CCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      Size = 82
    end
    object SqlCdsPag00CCT_PROVISAO: TFMTBCDField
      FieldName = 'CCT_PROVISAO'
      Precision = 18
      Size = 5
    end
    object SqlCdsPag00PPC_VLLIQUIDO: TFMTBCDField
      FieldName = 'PPC_VLLIQUIDO'
      Precision = 18
      Size = 5
    end
  end
  object DsPag00: TDataSource
    DataSet = SqlCdsPag00
    Left = 560
    Top = 40
  end
  object ppRPRelConPagar00: TppReport
    AutoStop = False
    DataPipeline = ppPBPagar00
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Developer\adjutor\fontesrelatorios\RELCONPAGAR00.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConPagar00BeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 711
    Top = 96
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppPBPagar00'
    object pp00HeaderBand2: TppHeaderBand
      BeforePrint = pp00HeaderBand2BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 23548
      mmPrintPosition = 0
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 794
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 6350
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 9790
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14288
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy hh:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 169598
        mmTop = 794
        mmWidth = 26459
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = paginaGetText
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 174114
        mmTop = 8731
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 15081
        mmWidth = 12841
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#211'D.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 13494
        mmTop = 15081
        mmWidth = 7056
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' DOC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3246
        mmLeft = 27728
        mmTop = 15081
        mmWidth = 10160
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'PC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3246
        mmLeft = 48164
        mmTop = 15081
        mmWidth = 3951
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'FAVORECIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3246
        mmLeft = 54186
        mmTop = 15081
        mmWidth = 23989
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR '#192' PAGAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 108744
        mmTop = 15081
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 23283
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 128323
        mmTop = 15081
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA PAGTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 145609
        mmTop = 15081
        mmWidth = 9878
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'STATUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 7938
        mmLeft = 160867
        mmTop = 15081
        mmWidth = 13547
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBS.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 7938
        mmLeft = 179123
        mmTop = 15081
        mmWidth = 6773
        BandType = 0
        LayerName = Foreground
      end
    end
    object pp00DetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_DTEMIS'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_CODIGO'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 15346
        mmTop = 0
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_NUMDOC'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 24871
        mmTop = 0
        mmWidth = 23283
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_NUMER'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 48419
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_RAZAO'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 53446
        mmTop = 0
        mmWidth = 52652
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPAGAR_CC'
        DataPipeline = ppPBPagar00
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 107156
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPAGO'
        DataPipeline = ppPBPagar00
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 125413
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_PAGTO'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 143669
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_STATUS'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 161396
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_OBS'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 175948
        mmTop = 0
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground
      end
    end
    object pp00SummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL GERAL.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 86201
        mmTop = 794
        mmWidth = 20955
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc7: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPAGAR_CC'
        DataPipeline = ppPBPagar00
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3316
        mmLeft = 107421
        mmTop = 793
        mmWidth = 16669
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc8: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPAGO'
        DataPipeline = ppPBPagar00
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3316
        mmLeft = 125413
        mmTop = 793
        mmWidth = 16669
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'SOMA.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 150195
        mmTop = 794
        mmWidth = 9878
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc9: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPARC'
        DataPipeline = ppPBPagar00
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3316
        mmLeft = 161396
        mmTop = 793
        mmWidth = 16933
        BandType = 7
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 80698
        mmTop = 265
        mmWidth = 97896
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'PAG_MES_CC'
      DataPipeline = ppPBPagar00
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppPBPagar00'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 3440
        mmPrintPosition = 0
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label8'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'M'#234'S.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 0
          mmTop = 0
          mmWidth = 7549
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PAG_MES_CC'
          DataPipeline = ppPBPagar00
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppPBPagar00'
          mmHeight = 3316
          mmLeft = 9260
          mmTop = 0
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLabel15: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label15'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TOTAL DO M'#234'S.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3246
          mmLeft = 84738
          mmTop = 794
          mmWidth = 22154
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc4: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc4'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PPC_VLPAGAR_CC'
          DataPipeline = ppPBPagar00
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppPBPagar00'
          mmHeight = 3316
          mmLeft = 107156
          mmTop = 794
          mmWidth = 16669
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc5: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PPC_VLPAGO'
          DataPipeline = ppPBPagar00
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppPBPagar00'
          mmHeight = 3316
          mmLeft = 125413
          mmTop = 794
          mmWidth = 16669
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel16: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label16'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'SOMA.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3246
          mmLeft = 150195
          mmTop = 794
          mmWidth = 9878
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc6: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc6'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PPC_VLPARC'
          DataPipeline = ppPBPagar00
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppPBPagar00'
          mmHeight = 3316
          mmLeft = 161396
          mmTop = 794
          mmWidth = 16933
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine9: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line9'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 80698
          mmTop = 265
          mmWidth = 97896
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'PPC_VENCTO'
      DataPipeline = ppPBPagar00
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppPBPagar00'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 3704
        mmPrintPosition = 0
        object ppLabel12: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label11'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'VENCIMENTO.: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 0
          mmTop = 0
          mmWidth = 21308
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PPC_VENCTO'
          DataPipeline = ppPBPagar00
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppPBPagar00'
          mmHeight = 3246
          mmLeft = 22490
          mmTop = 0
          mmWidth = 24871
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppLabel13: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label13'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TOTAL DO DIA.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3246
          mmLeft = 85866
          mmTop = 794
          mmWidth = 21026
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PPC_VLPAGAR_CC'
          DataPipeline = ppPBPagar00
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppPBPagar00'
          mmHeight = 3316
          mmLeft = 107156
          mmTop = 793
          mmWidth = 16669
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PPC_VLPAGO'
          DataPipeline = ppPBPagar00
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppPBPagar00'
          mmHeight = 3316
          mmLeft = 125413
          mmTop = 794
          mmWidth = 16669
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel14: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label14'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'SOMA.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3246
          mmLeft = 150195
          mmTop = 794
          mmWidth = 9878
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc3: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PPC_VLPARC'
          DataPipeline = ppPBPagar00
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppPBPagar00'
          mmHeight = 3316
          mmLeft = 161396
          mmTop = 794
          mmWidth = 16933
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLine8: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line4'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 80698
          mmTop = 0
          mmWidth = 97896
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {00}
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppPBPagar00: TppDBPipeline
    DataSource = DsPag00
    UserName = 'PBPagar00'
    Left = 616
    Top = 64
    object ppPBPagar00ppField1: TppField
      FieldAlias = 'PAG_CODIGO'
      FieldName = 'PAG_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField2: TppField
      FieldAlias = 'PAG_NUMDOC'
      FieldName = 'PAG_NUMDOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField3: TppField
      FieldAlias = 'PCX_CODIGO'
      FieldName = 'PCX_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField4: TppField
      FieldAlias = 'PPC_NUMER'
      FieldName = 'PPC_NUMER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField5: TppField
      FieldAlias = 'PPC_VLPARC'
      FieldName = 'PPC_VLPARC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField6: TppField
      FieldAlias = 'PPC_VLPAGO'
      FieldName = 'PPC_VLPAGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField7: TppField
      FieldAlias = 'PPC_BANCO'
      FieldName = 'PPC_BANCO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField8: TppField
      FieldAlias = 'PPC_OBS'
      FieldName = 'PPC_OBS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField9: TppField
      FieldAlias = 'FOR_CODIGO'
      FieldName = 'FOR_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField10: TppField
      FieldAlias = 'FOR_RAZAO'
      FieldName = 'FOR_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField11: TppField
      FieldAlias = 'PPC_VLPAGAR_CC'
      FieldName = 'PPC_VLPAGAR_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField12: TppField
      FieldAlias = 'PPC_SITPAG'
      FieldName = 'PPC_SITPAG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField13: TppField
      FieldAlias = 'CCT_CODIGO'
      FieldName = 'CCT_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField14: TppField
      FieldAlias = 'PPC_DTEMIS'
      FieldName = 'PPC_DTEMIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField15: TppField
      FieldAlias = 'PPC_VENCTO'
      FieldName = 'PPC_VENCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField16: TppField
      FieldAlias = 'PPC_PAGTO'
      FieldName = 'PPC_PAGTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField17: TppField
      FieldAlias = 'PAG_MES_CC'
      FieldName = 'PAG_MES_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField18: TppField
      FieldAlias = 'PAG_MES_PAGTO_CC'
      FieldName = 'PAG_MES_PAGTO_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField19: TppField
      FieldAlias = 'BAN_CODIGO'
      FieldName = 'BAN_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField20: TppField
      FieldAlias = 'BAN_APELIDO'
      FieldName = 'BAN_APELIDO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField21: TppField
      FieldAlias = 'PPC_STATUS'
      FieldName = 'PPC_STATUS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField22: TppField
      FieldAlias = 'PPC_JUROS'
      FieldName = 'PPC_JUROS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField23: TppField
      FieldAlias = 'PPC_MULTA'
      FieldName = 'PPC_MULTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField24: TppField
      FieldAlias = 'PPC_DESCTO'
      FieldName = 'PPC_DESCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField25: TppField
      FieldAlias = 'PPC_VALOR_N_RATEIA'
      FieldName = 'PPC_VALOR_N_RATEIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField26: TppField
      FieldAlias = 'PAG_OBS'
      FieldName = 'PAG_OBS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField27: TppField
      FieldAlias = 'CCT_DESCRI'
      FieldName = 'CCT_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField28: TppField
      FieldAlias = 'CCT_PROVISAO'
      FieldName = 'CCT_PROVISAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppPBPagar00ppField29: TppField
      FieldAlias = 'PPC_VLLIQUIDO'
      FieldName = 'PPC_VLLIQUIDO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
  end
  object SqlCdsCentroCustos: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'SELECT * FROM CEC_0000 ORDER BY CEC_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT * FROM CEC_0000 ORDER BY CEC_DESCRI'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 567
    Top = 562
    object SqlCdsCentroCustosCEC_CODIGO: TStringField
      FieldName = 'CEC_CODIGO'
      Size = 3
    end
    object SqlCdsCentroCustosCEC_DESCRI: TStringField
      FieldName = 'CEC_DESCRI'
      Size = 35
    end
    object SqlCdsCentroCustosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object ppRPRelConPagar01: TppReport
    AutoStop = False
    DataPipeline = ppPBPagar00
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Developer\adjutor\fontesrelatorios\RELCONPAGAR01.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConPagar00BeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 896
    Top = 96
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppPBPagar00'
    object pp01HeaderBand1: TppHeaderBand
      BeforePrint = pp01HeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 22754
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_01_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_01_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 794
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_01_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_01_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 6350
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_01_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_01_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 9790
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14023
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy hh:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 169069
        mmTop = 794
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = paginaGetText
        AutoSize = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 169069
        mmTop = 8202
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#211'D.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 14552
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DOC.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 17198
        mmTop = 14552
        mmWidth = 7056
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3246
        mmLeft = 12171
        mmTop = 14552
        mmWidth = 3951
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR '#192' PAGAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 114300
        mmTop = 14552
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 22489
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 6491
        mmLeft = 132821
        mmTop = 14552
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'STATUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 150548
        mmTop = 14552
        mmWidth = 11218
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBS.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 171186
        mmTop = 14552
        mmWidth = 6773
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'FAVORECIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 67204
        mmTop = 14552
        mmWidth = 18627
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label25'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA DE PAGTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 36513
        mmTop = 14552
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label26'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA DE VENCTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 51858
        mmTop = 14552
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground1
      end
    end
    object pp01DetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_CODIGO'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_NUMDOC'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 17198
        mmTop = 0
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_NUMER'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 12171
        mmTop = 0
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_RAZAO'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 67204
        mmTop = 0
        mmWidth = 46002
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPAGAR_CC'
        DataPipeline = ppPBPagar00
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 114300
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPAGO'
        DataPipeline = ppPBPagar00
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3175
        mmLeft = 132821
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_STATUS'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 150548
        mmTop = 0
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_OBS'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 166952
        mmTop = 0
        mmWidth = 28310
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText23'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_PAGTO'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 36248
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VENCTO'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 51858
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground1
      end
    end
    object pp01SummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL GERAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 0
        mmTop = 265
        mmWidth = 19685
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc10: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPAGAR_CC'
        DataPipeline = ppPBPagar00
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3316
        mmLeft = 114300
        mmTop = 265
        mmWidth = 16669
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc11: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPAGO'
        DataPipeline = ppPBPagar00
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3316
        mmLeft = 132821
        mmTop = 265
        mmWidth = 16669
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'SOMA.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 150548
        mmTop = 265
        mmWidth = 9878
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc12: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPARC'
        DataPipeline = ppPBPagar00
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3316
        mmLeft = 161925
        mmTop = 265
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 4233
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground1
      end
    end
    object ppGroup9: TppGroup
      BreakName = 'BAN_CODIGO'
      DataPipeline = ppPBPagar00
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group9'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppPBPagar00'
      NewFile = False
      object ppGroupHeaderBand7: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppLabel83: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label83'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'BANCO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 176
          mmWidth = 11430
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText91: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText91'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'BAN_CODIGO'
          DataPipeline = ppPBPagar00
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppPBPagar00'
          mmHeight = 3175
          mmLeft = 11642
          mmTop = 176
          mmWidth = 6879
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine49: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line49'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3968
          mmWidth = 196057
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText92: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText92'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'BAN_APELIDO'
          DataPipeline = ppPBPagar00
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppPBPagar00'
          mmHeight = 3175
          mmLeft = 19579
          mmTop = 176
          mmWidth = 112184
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLine50: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line50'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 196057
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc52: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc52'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PPC_VLPAGAR_CC'
          DataPipeline = ppPBPagar00
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppPBPagar00'
          mmHeight = 3440
          mmLeft = 114036
          mmTop = 529
          mmWidth = 16669
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc54: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc54'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PPC_VLPAGO'
          DataPipeline = ppPBPagar00
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppPBPagar00'
          mmHeight = 3440
          mmLeft = 132557
          mmTop = 529
          mmWidth = 16669
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel85: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label85'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'SOMA.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 150284
          mmTop = 529
          mmWidth = 9790
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc55: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc55'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PPC_VLPARC'
          DataPipeline = ppPBPagar00
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppPBPagar00'
          mmHeight = 3440
          mmLeft = 161661
          mmTop = 529
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine51: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line501'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4498
          mmWidth = 196057
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel95: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label95'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Sub-Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 38629
          mmTop = 529
          mmWidth = 11853
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {00}
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppRPRelConPagar02: TppReport
    AutoStop = False
    DataPipeline = ppDBPagar02
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELCONPAGAR02.r' +
      'tm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConPagar00BeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 712
    Top = 221
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPagar02'
    object pp02HeaderBand1: TppHeaderBand
      BeforePrint = pp02HeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 258763
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_02_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 794
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_02_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 6350
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_02_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 9790
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14288
        mmWidth = 259292
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable5: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy hh:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 230982
        mmTop = 1588
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable6: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = paginaGetText
        AutoSize = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 231246
        mmTop = 7938
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3598
        mmLeft = 0
        mmTop = 14817
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR '#192' PAGAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 125061
        mmTop = 14817
        mmWidth = 20365
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 146672
        mmTop = 14817
        mmWidth = 19661
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA PAGTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 182120
        mmTop = 14817
        mmWidth = 17457
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA VENCTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 107156
        mmTop = 14817
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 22754
        mmWidth = 259557
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label35'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' DOC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 15081
        mmTop = 14817
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label37'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'FAVORECIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 38629
        mmTop = 14817
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel115: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label115'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBSERVA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 200025
        mmTop = 15081
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppBandDetail: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_DTEMIS'
        DataPipeline = ppDBPagar02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPagar02'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_NUMDOC'
        DataPipeline = ppDBPagar02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPagar02'
        mmHeight = 3246
        mmLeft = 15081
        mmTop = 0
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_RAZAO'
        DataPipeline = ppDBPagar02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPagar02'
        mmHeight = 3246
        mmLeft = 38365
        mmTop = 0
        mmWidth = 67998
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPARC'
        DataPipeline = ppDBPagar02
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar02'
        mmHeight = 3246
        mmLeft = 125061
        mmTop = 0
        mmWidth = 20365
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPAGO'
        DataPipeline = ppDBPagar02
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar02'
        mmHeight = 3246
        mmLeft = 146672
        mmTop = 0
        mmWidth = 19661
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_PAGTO'
        DataPipeline = ppDBPagar02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPagar02'
        mmHeight = 3246
        mmLeft = 182120
        mmTop = 0
        mmWidth = 17192
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText24'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VENCTO'
        DataPipeline = ppDBPagar02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPagar02'
        mmHeight = 3246
        mmLeft = 107156
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText93: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText101'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_OBS'
        DataPipeline = ppDBPagar02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPagar02'
        mmHeight = 3175
        mmLeft = 200819
        mmTop = 0
        mmWidth = 58208
        BandType = 4
        LayerName = Foreground2
      end
    end
    object pp02SummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label34'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL GERAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3316
        mmLeft = 635
        mmTop = 794
        mmWidth = 19685
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc19: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPARC'
        DataPipeline = ppDBPagar02
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar02'
        mmHeight = 3316
        mmLeft = 124796
        mmTop = 793
        mmWidth = 20894
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc20: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc20'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPAGO'
        DataPipeline = ppDBPagar02
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar02'
        mmHeight = 3316
        mmLeft = 146672
        mmTop = 793
        mmWidth = 19661
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc21: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc21'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_VALOR'
        DataPipeline = ppDBPagar02
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar02'
        mmHeight = 3316
        mmLeft = 180532
        mmTop = 793
        mmWidth = 19044
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line19'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 259292
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label43'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'SOMA.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 167746
        mmTop = 793
        mmWidth = 10089
        BandType = 7
        LayerName = Foreground2
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'CCT_CODIGO'
      DataPipeline = ppDBPagar02
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPagar02'
      NewFile = False
      object ppGroupHeaderConta: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppDBText33: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText33'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'CCT_CODIGO'
          DataPipeline = ppDBPagar02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPagar02'
          mmHeight = 3316
          mmLeft = 0
          mmTop = 0
          mmWidth = 5027
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBText34: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText34'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'CCT_DESCRI'
          DataPipeline = ppDBPagar02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPagar02'
          mmHeight = 3316
          mmLeft = 5556
          mmTop = 0
          mmWidth = 63500
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel20: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label20'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'PROVIS'#195'O.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 70115
          mmTop = 0
          mmWidth = 16651
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBText35: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText35'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'CCT_PROVISAO'
          DataPipeline = ppDBPagar02
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPagar02'
          mmHeight = 3316
          mmLeft = 89694
          mmTop = 0
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLine15: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line15'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3969
          mmWidth = 259292
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
      end
      object ppGroupFooterConta: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLabel21: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label21'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3316
          mmLeft = 618
          mmTop = 529
          mmWidth = 9172
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc16: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc16'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PPC_VLPARC'
          DataPipeline = ppDBPagar02
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPagar02'
          mmHeight = 3316
          mmLeft = 124796
          mmTop = 529
          mmWidth = 20894
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc17: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc17'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PPC_VLPAGO'
          DataPipeline = ppDBPagar02
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPagar02'
          mmHeight = 3316
          mmLeft = 146672
          mmTop = 529
          mmWidth = 19661
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppDBCalc18: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc18'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PAG_VALOR'
          DataPipeline = ppDBPagar02
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPagar02'
          mmHeight = 3316
          mmLeft = 180532
          mmTop = 529
          mmWidth = 19044
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel42: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label42'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'SOMA.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 167746
          mmTop = 529
          mmWidth = 10089
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'FOR_RAZAO'
      DataPipeline = ppDBPagar02
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPagar02'
      NewFile = False
      object ppBandFavorecido: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppBandFavor: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppLine16: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line16'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 259292
          BandType = 5
          GroupNo = 1
          LayerName = Foreground2
        end
        object ppDBText26: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText26'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FOR_CODIGO'
          DataPipeline = ppDBPagar02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPagar02'
          mmHeight = 3316
          mmLeft = 29898
          mmTop = 793
          mmWidth = 7408
          BandType = 5
          GroupNo = 1
          LayerName = Foreground2
        end
        object ppDBText31: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText31'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'FOR_RAZAO'
          DataPipeline = ppDBPagar02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPagar02'
          mmHeight = 3316
          mmLeft = 38365
          mmTop = 793
          mmWidth = 67998
          BandType = 5
          GroupNo = 1
          LayerName = Foreground2
        end
        object ppDBCalc13: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc13'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PPC_VLPARC'
          DataPipeline = ppDBPagar02
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPagar02'
          mmHeight = 3316
          mmLeft = 124796
          mmTop = 794
          mmWidth = 20894
          BandType = 5
          GroupNo = 1
          LayerName = Foreground2
        end
        object ppDBCalc14: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc14'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PAG_VALOR'
          DataPipeline = ppDBPagar02
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPagar02'
          mmHeight = 3316
          mmLeft = 180532
          mmTop = 793
          mmWidth = 19044
          BandType = 5
          GroupNo = 1
          LayerName = Foreground2
        end
        object ppDBCalc15: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc15'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PPC_VLPAGO'
          DataPipeline = ppDBPagar02
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPagar02'
          mmHeight = 3316
          mmLeft = 146672
          mmTop = 793
          mmWidth = 19661
          BandType = 5
          GroupNo = 1
          LayerName = Foreground2
        end
        object ppLabel36: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label36'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'SOMA.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 167746
          mmTop = 794
          mmWidth = 10089
          BandType = 5
          GroupNo = 1
          LayerName = Foreground2
        end
        object ppLine17: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line17'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4762
          mmWidth = 259557
          BandType = 5
          GroupNo = 1
          LayerName = Foreground2
        end
      end
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object ppDBPagar02: TppDBPipeline
    DataSource = DsPag02
    UserName = 'DBPagar02'
    Left = 616
    Top = 189
    object ppDBPagar02ppField1: TppField
      FieldAlias = 'PAG_CODIGO'
      FieldName = 'PAG_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPagar02ppField2: TppField
      FieldAlias = 'PCX_CODIGO'
      FieldName = 'PCX_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPagar02ppField3: TppField
      FieldAlias = 'PPC_VLPARC'
      FieldName = 'PPC_VLPARC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPagar02ppField4: TppField
      FieldAlias = 'PPC_VLPAGO'
      FieldName = 'PPC_VLPAGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPagar02ppField5: TppField
      FieldAlias = 'PAG_NUMDOC'
      FieldName = 'PAG_NUMDOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPagar02ppField6: TppField
      FieldAlias = 'CCT_CODIGO'
      FieldName = 'CCT_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPagar02ppField7: TppField
      FieldAlias = 'CCT_DESCRI'
      FieldName = 'CCT_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPagar02ppField8: TppField
      FieldAlias = 'FOR_CODIGO'
      FieldName = 'FOR_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPagar02ppField9: TppField
      FieldAlias = 'FOR_RAZAO'
      FieldName = 'FOR_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPagar02ppField10: TppField
      FieldAlias = 'CCT_PROVISAO'
      FieldName = 'CCT_PROVISAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPagar02ppField11: TppField
      FieldAlias = 'PPC_VLPAGAR_CC'
      FieldName = 'PPC_VLPAGAR_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPagar02ppField12: TppField
      FieldAlias = 'PPC_VENCTO'
      FieldName = 'PPC_VENCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPagar02ppField13: TppField
      FieldAlias = 'PPC_PAGTO'
      FieldName = 'PPC_PAGTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPagar02ppField14: TppField
      FieldAlias = 'PPC_DTEMIS'
      FieldName = 'PPC_DTEMIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPagar02ppField15: TppField
      FieldAlias = 'PPC_OBS'
      FieldName = 'PPC_OBS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPagar02ppField16: TppField
      FieldAlias = 'PPC_JUROS'
      FieldName = 'PPC_JUROS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPagar02ppField17: TppField
      FieldAlias = 'PPC_MULTA'
      FieldName = 'PPC_MULTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPagar02ppField18: TppField
      FieldAlias = 'PPC_DESCTO'
      FieldName = 'PPC_DESCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPagar02ppField19: TppField
      FieldAlias = 'PAG_VALOR'
      FieldName = 'PAG_VALOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
  end
  object DsPag02: TDataSource
    DataSet = SqlCdsPag02
    Left = 560
    Top = 165
  end
  object SqlCdsPag02: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT T1.pag_valor, P2.PAG_CODIGO, T5.PAG_OBS as PPC_OBS,P2.PPC' +
      '_VENCTO,P2.PPC_VLPARC,P2.PPC_VLPAGO,P2.PPC_PAGTO,P2.PCX_CODIGO,P' +
      '2.PPC_DTEMIS,'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsPag02CalcFields
    CommandText = 
      'SELECT T1.pag_valor, P2.PAG_CODIGO, T5.PAG_OBS as PPC_OBS,P2.PPC' +
      '_VENCTO,P2.PPC_VLPARC,P2.PPC_VLPAGO,P2.PPC_PAGTO,P2.PCX_CODIGO,P' +
      '2.PPC_DTEMIS,'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 480
    Top = 133
    object SqlCdsPag02PAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsPag02PCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object SqlCdsPag02PPC_VLPARC: TFMTBCDField
      FieldName = 'PPC_VLPARC'
      Precision = 15
      Size = 2
    end
    object SqlCdsPag02PPC_VLPAGO: TFMTBCDField
      FieldName = 'PPC_VLPAGO'
      Precision = 15
      Size = 2
    end
    object SqlCdsPag02PAG_NUMDOC: TStringField
      FieldName = 'PAG_NUMDOC'
      Size = 12
    end
    object SqlCdsPag02CCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlCdsPag02CCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      Size = 35
    end
    object SqlCdsPag02FOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlCdsPag02FOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsPag02CCT_PROVISAO: TFMTBCDField
      FieldName = 'CCT_PROVISAO'
      Precision = 15
      Size = 2
    end
    object SqlCdsPag02PPC_VLPAGAR_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PPC_VLPAGAR_CC'
      Calculated = True
    end
    object SqlCdsPag02PPC_VENCTO: TSQLTimeStampField
      FieldName = 'PPC_VENCTO'
    end
    object SqlCdsPag02PPC_PAGTO: TSQLTimeStampField
      FieldName = 'PPC_PAGTO'
    end
    object SqlCdsPag02PPC_DTEMIS: TSQLTimeStampField
      FieldName = 'PPC_DTEMIS'
    end
    object SqlCdsPag02PPC_OBS: TStringField
      FieldName = 'PPC_OBS'
      Size = 15
    end
    object SqlCdsPag02PPC_JUROS: TFMTBCDField
      FieldName = 'PPC_JUROS'
      Precision = 20
      Size = 5
    end
    object SqlCdsPag02PPC_MULTA: TFMTBCDField
      FieldName = 'PPC_MULTA'
      Precision = 20
      Size = 5
    end
    object SqlCdsPag02PPC_DESCTO: TFMTBCDField
      FieldName = 'PPC_DESCTO'
      Precision = 20
      Size = 5
    end
    object SqlCdsPag02PAG_VALOR: TFMTBCDField
      FieldName = 'PAG_VALOR'
      Size = 15
    end
  end
  object SqlCdsPag06: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'P1.PAG_CODIGO,'#13#10'P1.opv_codigo,'#13#10'O1.OPV_DESCRICAO,'#13#10'P1.PA' +
      'G_DTEMIS,'#13#10'P1.PAG_NUMDOC,'#13#10'P1.PAG_VLNOTA,'#13#10'P1.PAG_VL_IPI,'#13#10'P1.PA' +
      'G_ALIQICMS,'#13#10'P1.PAG_BASEICMS,'#13#10'P1.FOR_CODIGO,'#13#10'F1.FOR_RAZAO'#13#10'FRO' +
      'M PAG0000 P1'#13#10'JOIN FOR0000 F1 ON P1.FOR_CODIGO = F1.FOR_CODIGO'#13#10 +
      'JOIN OPV0000 O1 ON O1.OPV_CODIGO = P1.OPV_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsPag06CalcFields
    CommandText = 
      'SELECT'#13#10'P1.PAG_CODIGO,'#13#10'P1.opv_codigo,'#13#10'O1.OPV_DESCRICAO,'#13#10'P1.PA' +
      'G_DTEMIS,'#13#10'P1.PAG_NUMDOC,'#13#10'P1.PAG_VLNOTA,'#13#10'P1.PAG_VL_IPI,'#13#10'P1.PA' +
      'G_ALIQICMS,'#13#10'P1.PAG_BASEICMS,'#13#10'P1.FOR_CODIGO,'#13#10'F1.FOR_RAZAO'#13#10'FRO' +
      'M PAG0000 P1'#13#10'JOIN FOR0000 F1 ON P1.FOR_CODIGO = F1.FOR_CODIGO'#13#10 +
      'JOIN OPV0000 O1 ON O1.OPV_CODIGO = P1.OPV_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 480
    Top = 200
    object SqlCdsPag06PAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsPag06PAG_DTEMIS: TSQLTimeStampField
      FieldName = 'PAG_DTEMIS'
    end
    object SqlCdsPag06PAG_NUMDOC: TStringField
      FieldName = 'PAG_NUMDOC'
      Size = 12
    end
    object SqlCdsPag06PAG_VLNOTA: TFMTBCDField
      FieldName = 'PAG_VLNOTA'
      Precision = 15
    end
    object SqlCdsPag06PAG_VL_IPI: TFMTBCDField
      FieldName = 'PAG_VL_IPI'
      Precision = 15
    end
    object SqlCdsPag06PAG_ALIQICMS: TFMTBCDField
      FieldName = 'PAG_ALIQICMS'
      Precision = 15
    end
    object SqlCdsPag06PAG_BASEICMS: TFMTBCDField
      FieldName = 'PAG_BASEICMS'
      Precision = 15
    end
    object SqlCdsPag06FOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlCdsPag06FOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsPag06PAG_VLNOTA_CC: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'PAG_VLNOTA_CC'
      Calculated = True
    end
    object SqlCdsPag06PAG_ICMS_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PAG_ICMS_CC'
      Calculated = True
    end
    object SqlCdsPag06OPV_CODIGO: TSmallintField
      FieldName = 'OPV_CODIGO'
    end
    object SqlCdsPag06OPV_DESCRICAO: TStringField
      FieldName = 'OPV_DESCRICAO'
      Size = 30
    end
  end
  object DsPag06: TDataSource
    DataSet = SqlCdsPag06
    Left = 560
    Top = 232
  end
  object ppDBPagar06: TppDBPipeline
    DataSource = DsPag06
    UserName = 'DBPagar06'
    Left = 616
    Top = 256
  end
  object ppRPRelConPagar06: TppReport
    AutoStop = False
    DataPipeline = ppDBPagar06
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELCONPAGAR06.r' +
      'tm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConPagar00BeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 712
    Top = 272
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPagar06'
    object pp06HeaderBand1: TppHeaderBand
      BeforePrint = pp06HeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 18521
      mmPrintPosition = 0
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground3
      end
      object LBL_06_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 265
        mmTop = 794
        mmWidth = 159809
        BandType = 0
        LayerName = Foreground3
      end
      object LBL_06_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'RELAT'#211'RIO DE NOTAS FISCAIS DE COMPRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 6350
        mmWidth = 61129
        BandType = 0
        LayerName = Foreground3
      end
      object LBL_06_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 9790
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14288
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground3
      end
      object ppSystemVariable9: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 163460
        mmTop = 794
        mmWidth = 32597
        BandType = 0
        LayerName = Foreground3
      end
      object ppSystemVariable10: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 174114
        mmTop = 8202
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 18256
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label44'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.Lanc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 14817
        mmWidth = 8819
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label45'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'EMISS'#227'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 10848
        mmTop = 14817
        mmWidth = 12488
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label46'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' Doc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 26988
        mmTop = 14817
        mmWidth = 9666
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label53'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'FORNECEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 46567
        mmTop = 14817
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label54'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOT.PROD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 117229
        mmTop = 14817
        mmWidth = 14534
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label55'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOT.IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 139294
        mmTop = 14817
        mmWidth = 9666
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label56'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL NOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 153017
        mmTop = 14817
        mmWidth = 17639
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label57'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 173197
        mmTop = 14817
        mmWidth = 6985
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label58'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VL.ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 184574
        mmTop = 14817
        mmWidth = 11218
        BandType = 0
        LayerName = Foreground3
      end
    end
    object pp06DetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText40'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_CODIGO'
        DataPipeline = ppDBPagar06
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPagar06'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText41'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_DTEMIS'
        DataPipeline = ppDBPagar06
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPagar06'
        mmHeight = 3246
        mmLeft = 10848
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText42'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_NUMDOC'
        DataPipeline = ppDBPagar06
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPagar06'
        mmHeight = 3246
        mmLeft = 26988
        mmTop = 0
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText43: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText43'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_CODIGO'
        DataPipeline = ppDBPagar06
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar06'
        mmHeight = 3246
        mmLeft = 46567
        mmTop = 0
        mmWidth = 6879
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText44'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_RAZAO'
        DataPipeline = ppDBPagar06
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPagar06'
        mmHeight = 3246
        mmLeft = 53975
        mmTop = 0
        mmWidth = 60325
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText45'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_VLNOTA_CC'
        DataPipeline = ppDBPagar06
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar06'
        mmHeight = 3246
        mmLeft = 115888
        mmTop = 0
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText46'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_VL_IPI'
        DataPipeline = ppDBPagar06
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar06'
        mmHeight = 3246
        mmLeft = 133350
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText47'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_VLNOTA'
        DataPipeline = ppDBPagar06
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar06'
        mmHeight = 3246
        mmLeft = 150548
        mmTop = 0
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText48'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_BASEICMS'
        DataPipeline = ppDBPagar06
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar06'
        mmHeight = 3246
        mmLeft = 171715
        mmTop = 0
        mmWidth = 8467
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText49: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText49'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_ICMS_CC'
        DataPipeline = ppDBPagar06
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar06'
        mmHeight = 3246
        mmLeft = 181769
        mmTop = 0
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground3
      end
    end
    object pp06SummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBCalc28: TppDBCalc
        DesignLayer = ppDesignLayer4
        UserName = 'DBCalc28'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_VLNOTA_CC'
        DataPipeline = ppDBPagar06
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar06'
        mmHeight = 3316
        mmLeft = 111654
        mmTop = 529
        mmWidth = 20108
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBCalc29: TppDBCalc
        DesignLayer = ppDesignLayer4
        UserName = 'DBCalc29'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_VL_IPI'
        DataPipeline = ppDBPagar06
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar06'
        mmHeight = 3316
        mmLeft = 133350
        mmTop = 529
        mmWidth = 15346
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBCalc30: TppDBCalc
        DesignLayer = ppDesignLayer4
        UserName = 'DBCalc30'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_VLNOTA'
        DataPipeline = ppDBPagar06
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar06'
        mmHeight = 3316
        mmLeft = 150548
        mmTop = 529
        mmWidth = 20108
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBCalc31: TppDBCalc
        DesignLayer = ppDesignLayer4
        UserName = 'DBCalc31'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_ICMS_CC'
        DataPipeline = ppDBPagar06
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar06'
        mmHeight = 3316
        mmLeft = 182034
        mmTop = 529
        mmWidth = 14023
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label48'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL GERAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3316
        mmLeft = 83044
        mmTop = 529
        mmWidth = 20673
        BandType = 7
        LayerName = Foreground3
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'OPV_CODIGO'
      DataPipeline = ppDBPagar06
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPagar06'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLabel47: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label47'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Tipo :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3316
          mmLeft = 0
          mmTop = 0
          mmWidth = 7620
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBText32: TppDBText
          DesignLayer = ppDesignLayer4
          UserName = 'DBText32'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'OPV_CODIGO'
          DataPipeline = ppDBPagar06
          DisplayFormat = '000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPagar06'
          mmHeight = 3316
          mmLeft = 7938
          mmTop = 0
          mmWidth = 5556
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBText36: TppDBText
          DesignLayer = ppDesignLayer4
          UserName = 'DBText36'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'OPV_DESCRICAO'
          DataPipeline = ppDBPagar06
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPagar06'
          mmHeight = 3316
          mmLeft = 14023
          mmTop = 0
          mmWidth = 84667
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLine18: TppLine
          DesignLayer = ppDesignLayer4
          UserName = 'Line18'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3704
          mmWidth = 196057
          BandType = 3
          GroupNo = 0
          LayerName = Foreground3
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLine28: TppLine
          DesignLayer = ppDesignLayer4
          UserName = 'Line4'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 196057
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc22: TppDBCalc
          DesignLayer = ppDesignLayer4
          UserName = 'DBCalc22'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PAG_VLNOTA_CC'
          DataPipeline = ppDBPagar06
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPagar06'
          mmHeight = 3316
          mmLeft = 111654
          mmTop = 529
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc23: TppDBCalc
          DesignLayer = ppDesignLayer4
          UserName = 'DBCalc23'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PAG_VL_IPI'
          DataPipeline = ppDBPagar06
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPagar06'
          mmHeight = 3316
          mmLeft = 133350
          mmTop = 529
          mmWidth = 15346
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc24: TppDBCalc
          DesignLayer = ppDesignLayer4
          UserName = 'DBCalc301'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PAG_VLNOTA'
          DataPipeline = ppDBPagar06
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPagar06'
          mmHeight = 3316
          mmLeft = 150548
          mmTop = 529
          mmWidth = 20108
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppDBCalc25: TppDBCalc
          DesignLayer = ppDesignLayer4
          UserName = 'DBCalc25'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PAG_ICMS_CC'
          DataPipeline = ppDBPagar06
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPagar06'
          mmHeight = 3316
          mmLeft = 182034
          mmTop = 529
          mmWidth = 14023
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
        object ppLine21: TppLine
          DesignLayer = ppDesignLayer4
          UserName = 'Line21'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4233
          mmWidth = 196057
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
        end
      end
    end
    object raCodeModule4: TraCodeModule
      ProgramStream = {00}
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'Foreground3'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object SqlCdsPag07: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'P1.PAG_CODIGO,'#13#10'P1.OPV_CODIGO,'#13#10'P1.FOR_CODIGO,'#13#10'F1.FOR_R' +
      'AZAO,'#13#10'P1.PAG_DTEMIS,'#13#10'P1.PAG_NUMDOC,'#13#10'P1.PAG_VLNOTA,'#13#10'P1.PAG_VL' +
      '_RET,'#13#10'P1.PAG_IRPJ_RET,'#13#10'P1.PAG_PIS_RET,'#13#10'P1.PAG_COFINS_RET,'#13#10'P1' +
      '.PAG_INSS_RET,'#13#10'P1.PAG_CONTSOCIAL_RET,'#13#10'P1.PAG_BASE_ISS,'#13#10'P1.PAG' +
      '_BASE_INSS,'#13#10'P1.PAG_ISS_RET'#13#10'FROM PAG0000 P1'#13#10'JOIN FOR0000  F1 O' +
      'N P1.for_codigo = F1.for_codigo'#13#10'where p1.pag_dtemis between '#39'01' +
      '.03.2006'#39' and '#39'31.03.2006'#39' and P1.OPV_CODIGO = 1 and P1.EMP_CODI' +
      'GO = '#39'001'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsPag07CalcFields
    CommandText = 
      'SELECT'#13#10'P1.PAG_CODIGO,'#13#10'P1.OPV_CODIGO,'#13#10'P1.FOR_CODIGO,'#13#10'F1.FOR_R' +
      'AZAO,'#13#10'P1.PAG_DTEMIS,'#13#10'P1.PAG_NUMDOC,'#13#10'P1.PAG_VLNOTA,'#13#10'P1.PAG_VL' +
      '_RET,'#13#10'P1.PAG_IRPJ_RET,'#13#10'P1.PAG_PIS_RET,'#13#10'P1.PAG_COFINS_RET,'#13#10'P1' +
      '.PAG_INSS_RET,'#13#10'P1.PAG_CONTSOCIAL_RET,'#13#10'P1.PAG_BASE_ISS,'#13#10'P1.PAG' +
      '_BASE_INSS,'#13#10'P1.PAG_ISS_RET'#13#10'FROM PAG0000 P1'#13#10'JOIN FOR0000  F1 O' +
      'N P1.for_codigo = F1.for_codigo'#13#10'where p1.pag_dtemis between '#39'01' +
      '.03.2006'#39' and '#39'31.03.2006'#39' and P1.OPV_CODIGO = 1 and P1.EMP_CODI' +
      'GO = '#39'001'#39
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 480
    Top = 232
    object SqlCdsPag07PAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsPag07OPV_CODIGO: TSmallintField
      FieldName = 'OPV_CODIGO'
    end
    object SqlCdsPag07FOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlCdsPag07FOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsPag07PAG_DTEMIS: TSQLTimeStampField
      FieldName = 'PAG_DTEMIS'
    end
    object SqlCdsPag07PAG_NUMDOC: TStringField
      FieldName = 'PAG_NUMDOC'
      Size = 12
    end
    object SqlCdsPag07PAG_VLNOTA: TFMTBCDField
      FieldName = 'PAG_VLNOTA'
      Precision = 15
    end
    object SqlCdsPag07PAG_VL_RET: TFMTBCDField
      FieldName = 'PAG_VL_RET'
      Precision = 15
    end
    object SqlCdsPag07PAG_IRPJ_RET: TFMTBCDField
      FieldName = 'PAG_IRPJ_RET'
      Precision = 15
    end
    object SqlCdsPag07PAG_PIS_RET: TFMTBCDField
      FieldName = 'PAG_PIS_RET'
      Precision = 15
    end
    object SqlCdsPag07PAG_COFINS_RET: TFMTBCDField
      FieldName = 'PAG_COFINS_RET'
      Precision = 15
    end
    object SqlCdsPag07PAG_INSS_RET: TFMTBCDField
      FieldName = 'PAG_INSS_RET'
      Precision = 15
    end
    object SqlCdsPag07PAG_CONTSOCIAL_RET: TFMTBCDField
      FieldName = 'PAG_CONTSOCIAL_RET'
      Precision = 15
    end
    object SqlCdsPag07PAG_BASE_ISS: TFMTBCDField
      FieldName = 'PAG_BASE_ISS'
      Precision = 15
    end
    object SqlCdsPag07PAG_BASE_INSS: TFMTBCDField
      FieldName = 'PAG_BASE_INSS'
      Precision = 15
    end
    object SqlCdsPag07PAG_ISS_RET: TFMTBCDField
      FieldName = 'PAG_ISS_RET'
      Precision = 15
    end
    object SqlCdsPag07PAG_TLIQUIDO: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PAG_TLIQUIDO'
      Calculated = True
    end
  end
  object DsPag07: TDataSource
    DataSet = SqlCdsPag07
    Left = 560
    Top = 264
  end
  object ppRPRelConPagar07: TppReport
    AutoStop = False
    DataPipeline = ppDBPagar07
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 5000
    PrinterSetup.mmMarginRight = 5000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELCONPAGAR07.r' +
      'tm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConPagar00BeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 712
    Top = 320
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPagar07'
    object pp07HeaderBand1: TppHeaderBand
      BeforePrint = pp07HeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 19050
      mmPrintPosition = 0
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 285000
        BandType = 0
        LayerName = Foreground4
      end
      object LBL_07_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LBL_07_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 794
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground4
      end
      object LBL_07_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LBL_07_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 6350
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground4
      end
      object LBL_07_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LBL_07_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 9790
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14288
        mmWidth = 285000
        BandType = 0
        LayerName = Foreground4
      end
      object ppSystemVariable15: TppSystemVariable
        DesignLayer = ppDesignLayer5
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 251831
        mmTop = 794
        mmWidth = 32597
        BandType = 0
        LayerName = Foreground4
      end
      object ppSystemVariable16: TppSystemVariable
        DesignLayer = ppDesignLayer5
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 262485
        mmTop = 8202
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine40: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 18785
        mmWidth = 285000
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel77: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label77'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.Lanc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 1764
        mmTop = 15081
        mmWidth = 8819
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel86: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label86'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Emiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 37800
        mmTop = 15081
        mmWidth = 10654
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel87: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label87'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Raz'#227'o Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 51594
        mmTop = 15081
        mmWidth = 16439
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel88: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label88'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 132680
        mmTop = 15081
        mmWidth = 12841
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel89: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label89'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'T.Reten'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 147268
        mmTop = 15081
        mmWidth = 14393
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel90: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label90'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'IRPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 196074
        mmTop = 15081
        mmWidth = 6068
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel91: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label91'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 210590
        mmTop = 15081
        mmWidth = 4516
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel92: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label92'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'COFINS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 217488
        mmTop = 15081
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel93: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label93'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'C.Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 228865
        mmTop = 15081
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel94: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label94'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'ISS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 241565
        mmTop = 15081
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel60: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label60'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' Doc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 12965
        mmTop = 15081
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel61: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label61'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'B.INSS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 163513
        mmTop = 15081
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel62: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label62'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'B.ISS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 176742
        mmTop = 15081
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label63'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'INSS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 254530
        mmTop = 15081
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel64: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label64'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Liquido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 267494
        mmTop = 15081
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground4
      end
    end
    object pp07DetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText67: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText67'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_CODIGO'
        DataPipeline = ppDBPagar07
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText68: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText68'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_DTEMIS'
        DataPipeline = ppDBPagar07
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 34396
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText69: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText69'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_RAZAO'
        DataPipeline = ppDBPagar07
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 59002
        mmTop = 0
        mmWidth = 66411
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText70: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText70'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_VLNOTA'
        DataPipeline = ppDBPagar07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 129646
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText71: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText71'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_VL_RET'
        DataPipeline = ppDBPagar07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 146579
        mmTop = 0
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText72: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText72'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_IRPJ_RET'
        DataPipeline = ppDBPagar07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 188913
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText73: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText73'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_PIS_RET'
        DataPipeline = ppDBPagar07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 201877
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText74: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText74'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_COFINS_RET'
        DataPipeline = ppDBPagar07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 214842
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText75: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText75'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_CONTSOCIAL_RET'
        DataPipeline = ppDBPagar07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 227542
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText76: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText76'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_ISS_RET'
        DataPipeline = ppDBPagar07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 240507
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText50: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText50'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_NUMDOC'
        DataPipeline = ppDBPagar07
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 11642
        mmTop = 0
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText51: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText51'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_BASE_INSS'
        DataPipeline = ppDBPagar07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 162190
        mmTop = 0
        mmWidth = 12000
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText52: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText52'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_BASE_ISS'
        DataPipeline = ppDBPagar07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 175419
        mmTop = 0
        mmWidth = 12000
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText53: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText53'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_INSS_RET'
        DataPipeline = ppDBPagar07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 254794
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText54: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText54'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_TLIQUIDO'
        DataPipeline = ppDBPagar07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 267759
        mmTop = 0
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText55: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText55'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_CODIGO'
        DataPipeline = ppDBPagar07
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 51329
        mmTop = 0
        mmWidth = 6615
        BandType = 4
        LayerName = Foreground4
      end
    end
    object pp07SummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine41: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 285000
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc39: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc39'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_VLNOTA'
        DataPipeline = ppDBPagar07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3260
        mmLeft = 116777
        mmTop = 529
        mmWidth = 28744
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc40: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc40'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_VL_RET'
        DataPipeline = ppDBPagar07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 147902
        mmTop = 529
        mmWidth = 14023
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc41: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc401'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_IRPJ_RET'
        DataPipeline = ppDBPagar07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 190236
        mmTop = 529
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc42: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc42'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_PIS_RET'
        DataPipeline = ppDBPagar07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 203200
        mmTop = 529
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc43: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc43'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_COFINS_RET'
        DataPipeline = ppDBPagar07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 216165
        mmTop = 529
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc44: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc44'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_CONTSOCIAL_RET'
        DataPipeline = ppDBPagar07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 228865
        mmTop = 529
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc45: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc45'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_ISS_RET'
        DataPipeline = ppDBPagar07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 241830
        mmTop = 529
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc32: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc32'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_BASE_INSS'
        DataPipeline = ppDBPagar07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 163513
        mmTop = 529
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc33: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc33'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_BASE_ISS'
        DataPipeline = ppDBPagar07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 176742
        mmTop = 529
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc34: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc34'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_INSS_RET'
        DataPipeline = ppDBPagar07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 254794
        mmTop = 529
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc35: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc35'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_TLIQUIDO'
        DataPipeline = ppDBPagar07
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar07'
        mmHeight = 3246
        mmLeft = 267759
        mmTop = 529
        mmWidth = 19315
        BandType = 7
        LayerName = Foreground4
      end
      object ppLabel65: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label65'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3316
        mmLeft = 0
        mmTop = 529
        mmWidth = 7620
        BandType = 7
        LayerName = Foreground4
      end
    end
    object raCodeModule5: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650611
        44425465787436394F6E476574546578740B50726F6772616D54797065070B74
        7450726F63656475726506536F75726365066F70726F63656475726520444254
        65787436394F6E476574546578742876617220546578743A20537472696E6729
        3B0D0A626567696E0D0A0D0A202054657874203A3D20636F7079284442506167
        617230375B27464F525F52415A414F275D2C312C3335293B0D0A0D0A656E643B
        0D0A0D436F6D706F6E656E744E616D6506084442546578743639094576656E74
        4E616D6506094F6E47657454657874074576656E744944023508436172657450
        6F730102000200000000}
    end
    object ppDesignLayers5: TppDesignLayers
      object ppDesignLayer5: TppDesignLayer
        UserName = 'Foreground4'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList6: TppParameterList
    end
  end
  object ppDBPagar07: TppDBPipeline
    DataSource = DsPag07
    UserName = 'DBPagar07'
    Left = 616
    Top = 288
  end
  object SqlCdsPag08: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT '#13#10'P1.PAG_CODIGO,'#13#10'P1.PPC_NUMER,'#13#10'P1.PPC_DTEMIS,'#13#10'P1.PPC_V' +
      'ENCTO,'#13#10'P1.PPC_VLPARC,'#13#10'P1.PPC_OBS,'#13#10'P1.PPC_PREVISAO,'#13#10'P1.PAG_NU' +
      'MDOC,'#13#10'P1.FOR_CODIGO,'#13#10'F1.FOR_RAZAO'#13#10'FROM pag_pc01 P1'#13#10'JOIN FOR0' +
      '000  F1 ON P1.FOR_CODIGO = F1.FOR_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsPag00CalcFields
    CommandText = 
      'SELECT '#13#10'P1.PAG_CODIGO,'#13#10'P1.PPC_NUMER,'#13#10'P1.PPC_DTEMIS,'#13#10'P1.PPC_V' +
      'ENCTO,'#13#10'P1.PPC_VLPARC,'#13#10'P1.PPC_OBS,'#13#10'P1.PPC_PREVISAO,'#13#10'P1.PAG_NU' +
      'MDOC,'#13#10'P1.FOR_CODIGO,'#13#10'F1.FOR_RAZAO'#13#10'FROM pag_pc01 P1'#13#10'JOIN FOR0' +
      '000  F1 ON P1.FOR_CODIGO = F1.FOR_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 480
    Top = 264
    object SqlCdsPag08PAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsPag08PPC_NUMER: TStringField
      FieldName = 'PPC_NUMER'
      Size = 2
    end
    object SqlCdsPag08PPC_VLPARC: TFMTBCDField
      FieldName = 'PPC_VLPARC'
      Precision = 15
    end
    object SqlCdsPag08PPC_OBS: TStringField
      FieldName = 'PPC_OBS'
      Size = 15
    end
    object SqlCdsPag08PPC_PREVISAO: TStringField
      FieldName = 'PPC_PREVISAO'
      Size = 1
    end
    object SqlCdsPag08PAG_NUMDOC: TStringField
      FieldName = 'PAG_NUMDOC'
      Size = 12
    end
    object SqlCdsPag08FOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsPag08FOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsPag08PPC_DTEMIS: TSQLTimeStampField
      FieldName = 'PPC_DTEMIS'
    end
    object SqlCdsPag08PPC_VENCTO: TSQLTimeStampField
      FieldName = 'PPC_VENCTO'
    end
  end
  object DsPag08: TDataSource
    DataSet = SqlCdsPag08
    Left = 560
    Top = 296
  end
  object ppRPRelConPagar08: TppReport
    AutoStop = False
    DataPipeline = ppDBPagar08
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELCONPAGAR08.r' +
      'tm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConPagar00BeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 712
    Top = 376
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPagar08'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 18521
      mmPrintPosition = 0
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground5
      end
      object LBL_08_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'LBL_08_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 265
        mmTop = 794
        mmWidth = 159809
        BandType = 0
        LayerName = Foreground5
      end
      object LBL_08_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'LBL_08_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 6350
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground5
      end
      object LBL_08_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'LBL_08_LTITULO2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 9790
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground5
      end
      object ppSystemVariable11: TppSystemVariable
        DesignLayer = ppDesignLayer6
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 163725
        mmTop = 794
        mmWidth = 32597
        BandType = 0
        LayerName = Foreground5
      end
      object ppSystemVariable12: TppSystemVariable
        DesignLayer = ppDesignLayer6
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 174378
        mmTop = 8202
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground5
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14288
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel68: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label68'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.LANC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 14817
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground5
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line30'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 18256
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel69: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label69'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VENCTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 58473
        mmTop = 14817
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel70: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label70'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'FAVORECIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 73819
        mmTop = 14817
        mmWidth = 75406
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel71: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label71'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VL.PAGAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 150284
        mmTop = 14817
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel73: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label73'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'PC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 13229
        mmTop = 14817
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel74: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label74'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' DCTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 18256
        mmTop = 14817
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel75: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label75'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBSERVA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 166159
        mmTop = 14817
        mmWidth = 30163
        BandType = 0
        LayerName = Foreground5
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line301'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 265
        mmTop = 18256
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel59: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label59'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 42863
        mmTop = 14817
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground5
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText56: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText56'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_CODIGO'
        DataPipeline = ppDBPagar08
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPagar08'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText57: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText57'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_NUMER'
        DataPipeline = ppDBPagar08
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPagar08'
        mmHeight = 3246
        mmLeft = 13229
        mmTop = 0
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText58: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText58'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_NUMDOC'
        DataPipeline = ppDBPagar08
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPagar08'
        mmHeight = 3246
        mmLeft = 18256
        mmTop = 0
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText59: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText59'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VENCTO'
        DataPipeline = ppDBPagar08
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPagar08'
        mmHeight = 3246
        mmLeft = 58473
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText60: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText60'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_CODIGO'
        DataPipeline = ppDBPagar08
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPagar08'
        mmHeight = 3246
        mmLeft = 73819
        mmTop = 0
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText61: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText601'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_RAZAO'
        DataPipeline = ppDBPagar08
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPagar08'
        mmHeight = 3246
        mmLeft = 81227
        mmTop = 0
        mmWidth = 67998
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText62: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText62'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_OBS'
        DataPipeline = ppDBPagar08
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPagar08'
        mmHeight = 3246
        mmLeft = 166159
        mmTop = 0
        mmWidth = 30163
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText63: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText63'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPARC'
        DataPipeline = ppDBPagar08
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar08'
        mmHeight = 3246
        mmLeft = 150284
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText64: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText64'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_DTEMIS'
        DataPipeline = ppDBPagar08
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPagar08'
        mmHeight = 3246
        mmLeft = 42863
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground5
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line302'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground5
      end
      object ppDBCalc36: TppDBCalc
        DesignLayer = ppDesignLayer6
        UserName = 'DBCalc36'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPARC'
        DataPipeline = ppDBPagar08
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar08'
        mmHeight = 3316
        mmLeft = 149490
        mmTop = 529
        mmWidth = 16404
        BandType = 7
        LayerName = Foreground5
      end
      object ppLabel72: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label72'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total das Previs'#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 109009
        mmTop = 529
        mmWidth = 39952
        BandType = 7
        LayerName = Foreground5
      end
    end
    object raCodeModule9: TraCodeModule
      ProgramStream = {00}
    end
    object ppDesignLayers6: TppDesignLayers
      object ppDesignLayer6: TppDesignLayer
        UserName = 'Foreground5'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList7: TppParameterList
    end
  end
  object ppDBPagar08: TppDBPipeline
    DataSource = DsPag08
    UserName = 'DBPagar08'
    Left = 616
    Top = 320
  end
  object SqlCdsTipos: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'SELECT'#13#10'OPV_CODIGO,'#13#10'OPV_DESCRICAO,'#13#10'OPV_TIPO'#13#10'FROM'#13#10'OPV0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT'#13#10'OPV_CODIGO,'#13#10'OPV_DESCRICAO,'#13#10'OPV_TIPO'#13#10'FROM'#13#10'OPV0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 575
    Top = 641
    object SqlCdsTiposOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      Required = True
    end
    object SqlCdsTiposOPV_DESCRICAO: TStringField
      FieldName = 'OPV_DESCRICAO'
      Size = 30
    end
    object SqlCdsTiposOPV_TIPO: TStringField
      FieldName = 'OPV_TIPO'
      Size = 1
    end
  end
  object SqlCdsPag09: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'P1.PAG_CODIGO,'#13#10'P1.OPV_CODIGO,'#13#10'P1.FOR_CODIGO,'#13#10'F1.FOR_R' +
      'AZAO,'#13#10'P1.PAG_DTEMIS,'#13#10'P1.PAG_NUMDOC,'#13#10'P1.PAG_TIPO,'#13#10'P1.PAG_VLNO' +
      'TA,'#13#10'P1.PAG_VL_IPI,'#13#10'P1.PAG_ALIQICMS,'#13#10'P1.PAG_BASEICMS'#13#10'FROM PAG' +
      '0000 P1'#13#10'JOIN FOR0000  F1 ON (P1.FOR_CODIGO = F1.FOR_CODIGO)'#13#10'WH' +
      'ERE P1.PAG_DTEMIS BETWEEN '#39'01.01.2005'#39' AND '#39'31.01.2005'#39' AND P1.P' +
      'AG_TIPO = '#39'NF'#39#13#10'ORDER BY'#13#10'P1.PAG_TIPO,P1.PAG_DTEMIS,F1.FOR_RAZAO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsPag09CalcFields
    CommandText = 
      'SELECT'#13#10'P1.PAG_CODIGO,'#13#10'P1.OPV_CODIGO,'#13#10'P1.FOR_CODIGO,'#13#10'F1.FOR_R' +
      'AZAO,'#13#10'P1.PAG_DTEMIS,'#13#10'P1.PAG_NUMDOC,'#13#10'P1.PAG_TIPO,'#13#10'P1.PAG_VLNO' +
      'TA,'#13#10'P1.PAG_VL_IPI,'#13#10'P1.PAG_ALIQICMS,'#13#10'P1.PAG_BASEICMS'#13#10'FROM PAG' +
      '0000 P1'#13#10'JOIN FOR0000  F1 ON (P1.FOR_CODIGO = F1.FOR_CODIGO)'#13#10'WH' +
      'ERE P1.PAG_DTEMIS BETWEEN '#39'01.01.2005'#39' AND '#39'31.01.2005'#39' AND P1.P' +
      'AG_TIPO = '#39'NF'#39#13#10'ORDER BY'#13#10'P1.PAG_TIPO,P1.PAG_DTEMIS,F1.FOR_RAZAO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 480
    Top = 296
    object SqlCdsPag09PAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsPag09OPV_CODIGO: TSmallintField
      FieldName = 'OPV_CODIGO'
    end
    object SqlCdsPag09FOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlCdsPag09FOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsPag09PAG_DTEMIS: TSQLTimeStampField
      FieldName = 'PAG_DTEMIS'
    end
    object SqlCdsPag09PAG_NUMDOC: TStringField
      FieldName = 'PAG_NUMDOC'
      Size = 12
    end
    object SqlCdsPag09PAG_TIPO: TStringField
      FieldName = 'PAG_TIPO'
      Size = 2
    end
    object SqlCdsPag09PAG_VLNOTA: TFMTBCDField
      FieldName = 'PAG_VLNOTA'
      Precision = 15
    end
    object SqlCdsPag09TP_DOC_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'TP_DOC_CC'
      Calculated = True
    end
    object SqlCdsPag09PAG_VL_IPI: TFMTBCDField
      FieldName = 'PAG_VL_IPI'
      Precision = 15
    end
    object SqlCdsPag09PAG_ALIQICMS: TFMTBCDField
      FieldName = 'PAG_ALIQICMS'
      Precision = 15
    end
    object SqlCdsPag09PAG_BASEICMS: TFMTBCDField
      FieldName = 'PAG_BASEICMS'
      Precision = 15
    end
    object SqlCdsPag09PAG_TLIQUIDO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PAG_TLIQUIDO_CC'
      Calculated = True
    end
    object SqlCdsPag09PAG_ICMS_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PAG_ICMS_CC'
      Calculated = True
    end
    object SqlCdsPag09PAG_VLNOTA_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PAG_VLNOTA_CC'
      Calculated = True
    end
  end
  object DsPag09: TDataSource
    DataSet = SqlCdsPag09
    Left = 560
    Top = 328
  end
  object ppRPRelConPagar09: TppReport
    AutoStop = False
    DataPipeline = ppDBPagar09
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELCONPAGAR09.r' +
      'tm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConPagar00BeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 712
    Top = 432
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPagar09'
    object ppHeaderBand2: TppHeaderBand
      BeforePrint = pp07HeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 15081
      mmPrintPosition = 0
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer7
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 191000
        BandType = 0
        LayerName = Foreground6
      end
      object LBL_09_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'LBL_09_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 794
        mmWidth = 154782
        BandType = 0
        LayerName = Foreground6
      end
      object LBL_09_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'LBL_09_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 6350
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground6
      end
      object LBL_09_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'LBL_09_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 9790
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground6
      end
      object ppSystemVariable7: TppSystemVariable
        DesignLayer = ppDesignLayer7
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy hh:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 794
        mmWidth = 26459
        BandType = 0
        LayerName = Foreground6
      end
      object ppSystemVariable8: TppSystemVariable
        DesignLayer = ppDesignLayer7
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = paginaGetText
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 168275
        mmTop = 8202
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground6
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer7
        UserName = 'Line33'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14552
        mmWidth = 191000
        BandType = 0
        LayerName = Foreground6
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText67'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_CODIGO'
        DataPipeline = ppDBPagar09
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPagar09'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText68'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_DTEMIS'
        DataPipeline = ppDBPagar09
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPagar09'
        mmHeight = 3246
        mmLeft = 34396
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText69'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_RAZAO'
        DataPipeline = ppDBPagar09
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPagar09'
        mmHeight = 3246
        mmLeft = 59002
        mmTop = 0
        mmWidth = 66411
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText65: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText70'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_VLNOTA'
        DataPipeline = ppDBPagar09
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar09'
        mmHeight = 3246
        mmLeft = 128323
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText82: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText50'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_NUMDOC'
        DataPipeline = ppDBPagar09
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPagar09'
        mmHeight = 3246
        mmLeft = 11642
        mmTop = 0
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText87: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText55'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_CODIGO'
        DataPipeline = ppDBPagar09
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar09'
        mmHeight = 3246
        mmLeft = 51329
        mmTop = 0
        mmWidth = 6615
        BandType = 4
        LayerName = Foreground6
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer7
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 4498
        mmWidth = 191000
        BandType = 7
        LayerName = Foreground6
      end
      object ppDBCalc26: TppDBCalc
        DesignLayer = ppDesignLayer7
        UserName = 'DBCalc39'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_VLNOTA'
        DataPipeline = ppDBPagar09
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPagar09'
        mmHeight = 3704
        mmLeft = 117740
        mmTop = 529
        mmWidth = 26458
        BandType = 7
        LayerName = Foreground6
      end
      object ppLabel98: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label65'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 68792
        mmTop = 529
        mmWidth = 18256
        BandType = 7
        LayerName = Foreground6
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'TP_DOC_CC'
      DataPipeline = ppDBPagar09
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPagar09'
      NewFile = False
      object ppGroupHeaderBand4: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 8996
        mmPrintPosition = 0
        object ppLine22: TppLine
          DesignLayer = ppDesignLayer7
          UserName = 'Line2'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4233
          mmWidth = 191000
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLine23: TppLine
          DesignLayer = ppDesignLayer7
          UserName = 'Line3'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 8731
          mmWidth = 191000
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel52: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label77'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'N.Lanc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 529
          mmTop = 5027
          mmWidth = 8731
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel66: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label86'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 36513
          mmTop = 5027
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel67: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label87'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Raz'#227'o Social'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 51065
          mmTop = 5027
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel76: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label88'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Total Conta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 128588
          mmTop = 5027
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel84: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label60'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'N'#186' Doc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 11642
          mmTop = 5027
          mmWidth = 21960
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel49: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label49'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Tipo de documento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 0
          mmTop = 0
          mmWidth = 29633
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppDBText88: TppDBText
          DesignLayer = ppDesignLayer7
          UserName = 'DBText88'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'TP_DOC_CC'
          DataPipeline = ppDBPagar09
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPagar09'
          mmHeight = 3440
          mmLeft = 30163
          mmTop = 0
          mmWidth = 47890
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLine34: TppLine
          DesignLayer = ppDesignLayer7
          UserName = 'Line34'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 191000
          BandType = 5
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel50: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label50'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Sub-Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 68263
          mmTop = 529
          mmWidth = 18785
          BandType = 5
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppDBCalc53: TppDBCalc
          DesignLayer = ppDesignLayer7
          UserName = 'DBCalc53'
          HyperlinkEnabled = False
          AutoSize = True
          Border.Weight = 1.000000000000000000
          DataField = 'PAG_VLNOTA'
          DataPipeline = ppDBPagar09
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPagar09'
          mmHeight = 3704
          mmLeft = 118004
          mmTop = 529
          mmWidth = 26459
          BandType = 5
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLine35: TppLine
          DesignLayer = ppDesignLayer7
          UserName = 'Line35'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4498
          mmWidth = 191000
          BandType = 5
          GroupNo = 0
          LayerName = Foreground6
        end
      end
    end
    object raCodeModule3: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650611
        44425465787436394F6E476574546578740B50726F6772616D54797065070B74
        7450726F63656475726506536F75726365067370726F63656475726520444254
        65787436394F6E476574546578742876617220546578743A20537472696E6729
        3B0D0A626567696E0D0A0D0A202054657874203A3D20636F7079284442506167
        617230395B27464F525F52415A414F275D2C312C3335293B0D0A20200D0A0D0A
        656E643B0D0A0D436F6D706F6E656E744E616D65060844425465787436390945
        76656E744E616D6506094F6E47657454657874074576656E7449440235084361
        726574506F730102000200000000}
    end
    object ppDesignLayers7: TppDesignLayers
      object ppDesignLayer7: TppDesignLayer
        UserName = 'Foreground6'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList8: TppParameterList
    end
  end
  object ppDBPagar09: TppDBPipeline
    DataSource = DsPag09
    UserName = 'DBPagar09'
    Left = 616
    Top = 352
    object ppDBPagar09ppField1: TppField
      FieldAlias = 'PAG_CODIGO'
      FieldName = 'PAG_CODIGO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPagar09ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'OPV_CODIGO'
      FieldName = 'OPV_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPagar09ppField3: TppField
      FieldAlias = 'FOR_CODIGO'
      FieldName = 'FOR_CODIGO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 2
    end
    object ppDBPagar09ppField4: TppField
      FieldAlias = 'FOR_RAZAO'
      FieldName = 'FOR_RAZAO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 3
    end
    object ppDBPagar09ppField5: TppField
      FieldAlias = 'PAG_DTEMIS'
      FieldName = 'PAG_DTEMIS'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 4
    end
    object ppDBPagar09ppField6: TppField
      FieldAlias = 'PAG_NUMDOC'
      FieldName = 'PAG_NUMDOC'
      FieldLength = 12
      DisplayWidth = 12
      Position = 5
    end
    object ppDBPagar09ppField7: TppField
      FieldAlias = 'PAG_TIPO'
      FieldName = 'PAG_TIPO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 6
    end
    object ppDBPagar09ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'PAG_VLNOTA'
      FieldName = 'PAG_VLNOTA'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 7
    end
    object ppDBPagar09ppField9: TppField
      FieldAlias = 'TP_DOC_CC'
      FieldName = 'TP_DOC_CC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object ppDBPagar09ppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'PAG_VL_IPI'
      FieldName = 'PAG_VL_IPI'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 9
    end
    object ppDBPagar09ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'PAG_ALIQICMS'
      FieldName = 'PAG_ALIQICMS'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 10
    end
    object ppDBPagar09ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'PAG_BASEICMS'
      FieldName = 'PAG_BASEICMS'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 11
    end
    object ppDBPagar09ppField13: TppField
      FieldAlias = 'PAG_TLIQUIDO_CC'
      FieldName = 'PAG_TLIQUIDO_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 12
    end
    object ppDBPagar09ppField14: TppField
      FieldAlias = 'PAG_ICMS_CC'
      FieldName = 'PAG_ICMS_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 13
    end
    object ppDBPagar09ppField15: TppField
      FieldAlias = 'PAG_VLNOTA_CC'
      FieldName = 'PAG_VLNOTA_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 14
    end
  end
  object SqlCdsContas: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'C1.CCT_NIVEL,'#13#10'C1.CCT_DESCRI,'#13#10'C1.cct_conta,'#13#10'C1.CCT_COD' +
      'IGO,'#13#10'C1.CCT_PROVISAO,'#13#10'C1.CCT_STATUS'#13#10'FROM cct_0000 C1'#13#10'ORDER B' +
      'Y'#13#10'CCT_NIVEL'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'C1.CCT_NIVEL,'#13#10'C1.CCT_DESCRI,'#13#10'C1.cct_conta,'#13#10'C1.CCT_COD' +
      'IGO,'#13#10'C1.CCT_PROVISAO,'#13#10'C1.CCT_STATUS'#13#10'FROM cct_0000 C1'#13#10'ORDER B' +
      'Y'#13#10'CCT_NIVEL'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 480
    Top = 165
    object SqlCdsContasCCT_NIVEL: TStringField
      FieldName = 'CCT_NIVEL'
      Size = 19
    end
    object SqlCdsContasCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      Size = 82
    end
    object SqlCdsContasCCT_CONTA: TStringField
      FieldName = 'CCT_CONTA'
      Size = 1
    end
    object SqlCdsContasCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsContasCCT_PROVISAO: TFMTBCDField
      FieldName = 'CCT_PROVISAO'
      Precision = 15
    end
    object SqlCdsContasCCT_STATUS: TStringField
      FieldName = 'CCT_STATUS'
      Size = 1
    end
  end
  object SqlCdsLanctos: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'P1.CCT_CODIGO,'#13#10'C1.CCT_NIVEL,'#13#10'SUM(P1.PPC_VLPARC-P1.PPC_' +
      'VLPAGO) AS WVLPAGAR,'#13#10'SUM(P1.PPC_VLPAGO) AS WVLPAGO'#13#10'FROM PAG_PC' +
      '01 P1'#13#10'JOIN CCT_0000 C1 ON (C1.CCT_CODIGO = P1.CCT_CODIGO)'#13#10'WHER' +
      'E P1.PPC_VENCTO BETWEEN '#39'01.01.2004'#39' AND '#39'31.12.2004'#39' AND P1.EMP' +
      '_CODIGO = '#39'001'#39#13#10'GROUP BY'#13#10'P1.CCT_CODIGO,'#13#10'C1.CCT_NIVEL'#13#10'ORDER B' +
      'Y'#13#10'P1.CCT_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'P1.CCT_CODIGO,'#13#10'C1.CCT_NIVEL,'#13#10'SUM(P1.PPC_VLPARC-P1.PPC_' +
      'VLPAGO) AS WVLPAGAR,'#13#10'SUM(P1.PPC_VLPAGO) AS WVLPAGO'#13#10'FROM PAG_PC' +
      '01 P1'#13#10'JOIN CCT_0000 C1 ON (C1.CCT_CODIGO = P1.CCT_CODIGO)'#13#10'WHER' +
      'E P1.PPC_VENCTO BETWEEN '#39'01.01.2004'#39' AND '#39'31.12.2004'#39' AND P1.EMP' +
      '_CODIGO = '#39'001'#39#13#10'GROUP BY'#13#10'P1.CCT_CODIGO,'#13#10'C1.CCT_NIVEL'#13#10'ORDER B' +
      'Y'#13#10'P1.CCT_CODIGO'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 560
    Top = 197
    object SqlCdsLanctosCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlCdsLanctosWVLPAGAR: TFMTBCDField
      FieldName = 'WVLPAGAR'
      Precision = 15
    end
    object SqlCdsLanctosWVLPAGO: TFMTBCDField
      FieldName = 'WVLPAGO'
      Precision = 15
    end
  end
  object DsResultado: TDataSource
    DataSet = CdsResultado
    Left = 840
    Top = 221
  end
  object ppRepResultado: TppReport
    AutoStop = False
    DataPipeline = ppDBPResultado
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'X:\adjutor\fontesrelatorios\RELPAGAR045'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConPagar00BeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 864
    Top = 269
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPResultado'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 20373
      mmPrintPosition = 0
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer8
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground7
      end
      object LBL_45_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'LBL_45_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 794
        mmWidth = 159809
        BandType = 0
        LayerName = Foreground7
      end
      object LBL_45_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'LBL_45_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 6350
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground7
      end
      object LBL_45_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'LBL_45_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 9790
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground7
      end
      object ppSystemVariable13: TppSystemVariable
        DesignLayer = ppDesignLayer8
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy hh:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 169863
        mmTop = 794
        mmWidth = 26458
        BandType = 0
        LayerName = Foreground7
      end
      object ppSystemVariable14: TppSystemVariable
        DesignLayer = ppDesignLayer8
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = paginaGetText
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 178188
        mmTop = 8202
        mmWidth = 18133
        BandType = 0
        LayerName = Foreground7
      end
      object ppLine37: TppLine
        DesignLayer = ppDesignLayer8
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14552
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label51'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#237'vel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 15346
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel78: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label78'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descri'#231#227'o da Conta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 46831
        mmTop = 15346
        mmWidth = 76200
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel79: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label79'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Provis'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 125148
        mmTop = 15346
        mmWidth = 22490
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel80: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label80'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vl.Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 148432
        mmTop = 15346
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel81: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label801'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vl.Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 171980
        mmTop = 15346
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground7
      end
      object ppLine42: TppLine
        DesignLayer = ppDesignLayer8
        UserName = 'Line42'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 20108
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel82: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label82'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 34751
        mmTop = 15346
        mmWidth = 11375
        BandType = 0
        LayerName = Foreground7
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppSharp: TppShape
        OnPrint = ppSharpPrint
        DesignLayer = ppDesignLayer8
        UserName = 'Sharp'
        Brush.Color = clActiveBorder
        mmHeight = 4233
        mmLeft = 0
        mmTop = 529
        mmWidth = 196321
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBTNIVEL: TppDBText
        OnPrint = ppDBTNIVELPrint
        DesignLayer = ppDesignLayer8
        UserName = 'DBTNIVEL'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Color = clBlue
        DataField = 'NIVEL'
        DataPipeline = ppDBPResultado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPResultado'
        mmHeight = 4163
        mmLeft = 2381
        mmTop = 529
        mmWidth = 32544
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBTDESCRI: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBTDESCRI'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO'
        DataPipeline = ppDBPResultado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPResultado'
        mmHeight = 4233
        mmLeft = 46831
        mmTop = 529
        mmWidth = 76465
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBTPROVI: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBTPROVI'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PROVISAO'
        DataPipeline = ppDBPResultado
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPResultado'
        mmHeight = 4233
        mmLeft = 125413
        mmTop = 529
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBTPAGAR: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBTPAGAR'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'VLPAGAR'
        DataPipeline = ppDBPResultado
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPResultado'
        mmHeight = 4233
        mmLeft = 148432
        mmTop = 529
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBTPAGO: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBTPAGO'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'VLPAGO'
        DataPipeline = ppDBPResultado
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPResultado'
        mmHeight = 4233
        mmLeft = 171980
        mmTop = 529
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBTCODIGO: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBTCODIGO'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CCT_CODIGO'
        DataPipeline = ppDBPResultado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPResultado'
        mmHeight = 4163
        mmLeft = 35983
        mmTop = 529
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground7
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 2646
      mmPrintPosition = 0
      object ppLineRoda: TppLine
        DesignLayer = ppDesignLayer8
        UserName = 'LineTotal1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196321
        BandType = 8
        LayerName = Foreground7
      end
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object pplbltotal: TppLabel
        OnPrint = pplbltotalPrint
        DesignLayer = ppDesignLayer8
        UserName = 'lbltotal'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4304
        mmLeft = 0
        mmTop = 723
        mmWidth = 18627
        BandType = 7
        LayerName = Foreground7
      end
      object ppLineTotal: TppLine
        DesignLayer = ppDesignLayer8
        UserName = 'LineTotal'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196321
        BandType = 7
        LayerName = Foreground7
      end
      object ppVarPagar: TppVariable
        DesignLayer = ppDesignLayer8
        UserName = 'VarPagar'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        OnCalc = ppVarPagarCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 148432
        mmTop = 794
        mmWidth = 22225
        BandType = 7
        LayerName = Foreground7
      end
      object ppVarPago: TppVariable
        DesignLayer = ppDesignLayer8
        UserName = 'ppVarPago'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4304
        mmLeft = 175684
        mmTop = 794
        mmWidth = 18697
        BandType = 7
        LayerName = Foreground7
      end
    end
    object raCodeModule8: TraCodeModule
      ProgramStream = {00}
    end
    object ppDesignLayers8: TppDesignLayers
      object ppDesignLayer8: TppDesignLayer
        UserName = 'Foreground7'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList9: TppParameterList
    end
  end
  object CdsResultado: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 816
    Top = 269
    object CdsResultadoNIVEL: TStringField
      FieldName = 'NIVEL'
      Size = 19
    end
    object CdsResultadoCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object CdsResultadoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object CdsResultadoPROVISAO: TFloatField
      FieldName = 'PROVISAO'
    end
    object CdsResultadoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object CdsResultadoVLPAGAR: TFloatField
      FieldName = 'VLPAGAR'
    end
    object CdsResultadoVLPAGO: TFloatField
      FieldName = 'VLPAGO'
    end
  end
  object ppDBPResultado: TppDBPipeline
    DataSource = DsResultado
    UserName = 'DBPResultado'
    Left = 760
    Top = 181
    object ppDBPResultadoppField1: TppField
      FieldAlias = 'NIVEL'
      FieldName = 'NIVEL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPResultadoppField2: TppField
      FieldAlias = 'CCT_CODIGO'
      FieldName = 'CCT_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPResultadoppField3: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPResultadoppField4: TppField
      FieldAlias = 'PROVISAO'
      FieldName = 'PROVISAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPResultadoppField5: TppField
      FieldAlias = 'TIPO'
      FieldName = 'TIPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPResultadoppField6: TppField
      FieldAlias = 'VLPAGAR'
      FieldName = 'VLPAGAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPResultadoppField7: TppField
      FieldAlias = 'VLPAGO'
      FieldName = 'VLPAGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
  end
  object ppRPRelConPagar00A: TppReport
    AutoStop = False
    DataPipeline = ppPBPagar00
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Developer\adjutor\fontesrelatorios\RELCONPAGAR00.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConPagar00BeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 791
    Top = 80
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppPBPagar00'
    object ppHeaderBand4: TppHeaderBand
      BeforePrint = ppHeaderBand4BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 23548
      mmPrintPosition = 0
      object ppLine43: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground8
      end
      object LBL_0A_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'LBL_0A_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 794
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground8
      end
      object LBL_0A_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'LBL_0A_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 6350
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground8
      end
      object LBL_0A_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'LBL_0A_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 9790
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground8
      end
      object ppLine44: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14288
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground8
      end
      object ppSystemVariable17: TppSystemVariable
        DesignLayer = ppDesignLayer9
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy hh:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 169598
        mmTop = 794
        mmWidth = 26459
        BandType = 0
        LayerName = Foreground8
      end
      object ppSystemVariable18: TppSystemVariable
        DesignLayer = ppDesignLayer9
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = paginaGetText
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 174114
        mmTop = 8467
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel96: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 15081
        mmWidth = 12841
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel97: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#211'D.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 15346
        mmTop = 15081
        mmWidth = 7056
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel99: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' DOC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3246
        mmLeft = 26988
        mmTop = 15081
        mmWidth = 10160
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel100: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'PC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3246
        mmLeft = 48419
        mmTop = 15081
        mmWidth = 3951
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel101: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'FAVORECIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3246
        mmLeft = 53446
        mmTop = 15081
        mmWidth = 22049
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel102: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR '#192' PAGAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 107156
        mmTop = 15081
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground8
      end
      object ppLine45: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 23283
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel103: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 125413
        mmTop = 15081
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel104: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA VENCTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 143669
        mmTop = 15081
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel105: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'STATUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 7938
        mmLeft = 161396
        mmTop = 15081
        mmWidth = 13547
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel106: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label7'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBS.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 7938
        mmLeft = 179652
        mmTop = 15081
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground8
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText66: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_DTEMIS'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText77: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_CODIGO'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 15346
        mmTop = 0
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText78: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_NUMDOC'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 24871
        mmTop = 0
        mmWidth = 23283
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText79: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_NUMER'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 48419
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText80: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_RAZAO'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 53446
        mmTop = 0
        mmWidth = 52652
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText81: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPAGAR_CC'
        DataPipeline = ppPBPagar00
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 107156
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText83: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPAGO'
        DataPipeline = ppPBPagar00
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 125413
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText84: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VENCTO'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 143669
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText85: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_STATUS'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 161396
        mmTop = 0
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText86: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_OBS'
        DataPipeline = ppPBPagar00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3246
        mmLeft = 176477
        mmTop = 0
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground8
      end
    end
    object ppSummaryBand4: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLabel107: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL GERAL.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 86201
        mmTop = 794
        mmWidth = 20955
        BandType = 7
        LayerName = Foreground8
      end
      object ppDBCalc27: TppDBCalc
        DesignLayer = ppDesignLayer9
        UserName = 'DBCalc7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPAGAR_CC'
        DataPipeline = ppPBPagar00
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3316
        mmLeft = 107421
        mmTop = 793
        mmWidth = 16669
        BandType = 7
        LayerName = Foreground8
      end
      object ppDBCalc37: TppDBCalc
        DesignLayer = ppDesignLayer9
        UserName = 'DBCalc8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPAGO'
        DataPipeline = ppPBPagar00
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3316
        mmLeft = 125413
        mmTop = 793
        mmWidth = 16669
        BandType = 7
        LayerName = Foreground8
      end
      object ppLabel108: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label18'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'SOMA.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 150195
        mmTop = 794
        mmWidth = 9878
        BandType = 7
        LayerName = Foreground8
      end
      object ppDBCalc38: TppDBCalc
        DesignLayer = ppDesignLayer9
        UserName = 'DBCalc9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPARC'
        DataPipeline = ppPBPagar00
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPBPagar00'
        mmHeight = 3316
        mmLeft = 161396
        mmTop = 793
        mmWidth = 16933
        BandType = 7
        LayerName = Foreground8
      end
      object ppLine46: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line10'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 80698
        mmTop = 265
        mmWidth = 97896
        BandType = 7
        LayerName = Foreground8
      end
    end
    object ppGroup6: TppGroup
      BreakName = 'PAG_MES_PAGTO_CC'
      DataPipeline = ppPBPagar00
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppPBPagar00'
      NewFile = False
      object ppGroupHeaderBand5: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 3440
        mmPrintPosition = 0
        object ppLabel109: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label8'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'M'#234'S.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3316
          mmLeft = 0
          mmTop = 0
          mmWidth = 7549
          BandType = 3
          GroupNo = 0
          LayerName = Foreground8
        end
        object ppDBText89: TppDBText
          DesignLayer = ppDesignLayer9
          UserName = 'DBText1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PAG_MES_PAGTO_CC'
          DataPipeline = ppPBPagar00
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppPBPagar00'
          mmHeight = 3316
          mmLeft = 9260
          mmTop = 0
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
          LayerName = Foreground8
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLabel110: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label15'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TOTAL DO M'#234'S.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3246
          mmLeft = 84738
          mmTop = 794
          mmWidth = 22154
          BandType = 5
          GroupNo = 0
          LayerName = Foreground8
        end
        object ppDBCalc46: TppDBCalc
          DesignLayer = ppDesignLayer9
          UserName = 'DBCalc4'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PPC_VLPAGAR_CC'
          DataPipeline = ppPBPagar00
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppPBPagar00'
          mmHeight = 3316
          mmLeft = 107156
          mmTop = 794
          mmWidth = 16669
          BandType = 5
          GroupNo = 0
          LayerName = Foreground8
        end
        object ppDBCalc47: TppDBCalc
          DesignLayer = ppDesignLayer9
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PPC_VLPAGO'
          DataPipeline = ppPBPagar00
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppPBPagar00'
          mmHeight = 3316
          mmLeft = 125413
          mmTop = 794
          mmWidth = 16669
          BandType = 5
          GroupNo = 0
          LayerName = Foreground8
        end
        object ppLabel111: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label16'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'SOMA.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3246
          mmLeft = 150195
          mmTop = 794
          mmWidth = 9878
          BandType = 5
          GroupNo = 0
          LayerName = Foreground8
        end
        object ppDBCalc48: TppDBCalc
          DesignLayer = ppDesignLayer9
          UserName = 'DBCalc6'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PPC_VLPARC'
          DataPipeline = ppPBPagar00
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppPBPagar00'
          mmHeight = 3316
          mmLeft = 161396
          mmTop = 794
          mmWidth = 16933
          BandType = 5
          GroupNo = 0
          LayerName = Foreground8
        end
        object ppLine47: TppLine
          DesignLayer = ppDesignLayer9
          UserName = 'Line9'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 80698
          mmTop = 265
          mmWidth = 97896
          BandType = 5
          GroupNo = 0
          LayerName = Foreground8
        end
      end
    end
    object ppGroup8: TppGroup
      BreakName = 'PPC_PAGTO'
      DataPipeline = ppPBPagar00
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppPBPagar00'
      NewFile = False
      object ppGroupHeaderBand6: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 3704
        mmPrintPosition = 0
        object ppLabel112: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label11'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Data Pagamento.: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 0
          mmWidth = 25400
          BandType = 3
          GroupNo = 1
          LayerName = Foreground8
        end
        object ppDBText90: TppDBText
          DesignLayer = ppDesignLayer9
          UserName = 'DBText2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PPC_PAGTO'
          DataPipeline = ppPBPagar00
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppPBPagar00'
          mmHeight = 3175
          mmLeft = 26988
          mmTop = 0
          mmWidth = 24871
          BandType = 3
          GroupNo = 1
          LayerName = Foreground8
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppLabel113: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label13'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TOTAL DO DIA.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3246
          mmLeft = 85866
          mmTop = 794
          mmWidth = 21026
          BandType = 5
          GroupNo = 1
          LayerName = Foreground8
        end
        object ppDBCalc49: TppDBCalc
          DesignLayer = ppDesignLayer9
          UserName = 'DBCalc1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PPC_VLPAGAR_CC'
          DataPipeline = ppPBPagar00
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppPBPagar00'
          mmHeight = 3316
          mmLeft = 107156
          mmTop = 793
          mmWidth = 16669
          BandType = 5
          GroupNo = 1
          LayerName = Foreground8
        end
        object ppDBCalc50: TppDBCalc
          DesignLayer = ppDesignLayer9
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PPC_VLPAGO'
          DataPipeline = ppPBPagar00
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppPBPagar00'
          mmHeight = 3316
          mmLeft = 125413
          mmTop = 794
          mmWidth = 16669
          BandType = 5
          GroupNo = 1
          LayerName = Foreground8
        end
        object ppLabel114: TppLabel
          DesignLayer = ppDesignLayer9
          UserName = 'Label14'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'SOMA.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3246
          mmLeft = 150195
          mmTop = 794
          mmWidth = 9878
          BandType = 5
          GroupNo = 1
          LayerName = Foreground8
        end
        object ppDBCalc51: TppDBCalc
          DesignLayer = ppDesignLayer9
          UserName = 'DBCalc3'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PPC_VLPARC'
          DataPipeline = ppPBPagar00
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppPBPagar00'
          mmHeight = 3316
          mmLeft = 161396
          mmTop = 794
          mmWidth = 16933
          BandType = 5
          GroupNo = 1
          LayerName = Foreground8
        end
        object ppLine48: TppLine
          DesignLayer = ppDesignLayer9
          UserName = 'Line4'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 80698
          mmTop = 0
          mmWidth = 97896
          BandType = 5
          GroupNo = 1
          LayerName = Foreground8
        end
      end
    end
    object raCodeModule7: TraCodeModule
      ProgramStream = {00}
    end
    object ppDesignLayers9: TppDesignLayers
      object ppDesignLayer9: TppDesignLayer
        UserName = 'Foreground8'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object SqlCdsBancos: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select BAN_CODIGO, BAN_APELIDO from BAN0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select BAN_CODIGO, BAN_APELIDO from BAN0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 208
    Top = 519
    object SqlCdsBancosBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsBancosBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
  end
  object SqlCdsPag11: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'sum(P2.PPC_VLPARC) as PPC_VLPARC,'#13#10'sum(P2.PPC_VLPAGO) as' +
      ' PPC_VLPAGO,'#13#10'(sum(COALESCE(P2.PPC_VLPARC,0)) - sum(COALESCE(P2.' +
      'PPC_VLPAGO,0)) + sum(COALESCE(P2.PPC_JUROS,0)) + sum(COALESCE(P2' +
      '.PPC_MULTA,0)) - sum(COALESCE(P2.PPC_DESCTO,0))) AS PPC_VLPAGAR_' +
      'CC,'#13#10'P2.FOR_CODIGO,'#13#10'F1.FOR_RAZAO'#13#10'FROM PAG_PC01 P2'#13#10'LEFT JOIN F' +
      'OR0000 F1 ON (P2.FOR_CODIGO = F1.FOR_CODIGO)'#13#10'LEFT JOIN BAN0000 ' +
      'B1 ON (B1.BAN_CODIGO = P2.BAN_CODIGO)'#13#10'group by'#13#10'P2.FOR_CODIGO,'#13 +
      #10'F1.FOR_RAZAO'#13#10'order by sum(P2.PPC_VLPARC) desc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'sum(P2.PPC_VLPARC) as PPC_VLPARC,'#13#10'sum(P2.PPC_VLPAGO) as' +
      ' PPC_VLPAGO,'#13#10'(sum(COALESCE(P2.PPC_VLPARC,0)) - sum(COALESCE(P2.' +
      'PPC_VLPAGO,0)) + sum(COALESCE(P2.PPC_JUROS,0)) + sum(COALESCE(P2' +
      '.PPC_MULTA,0)) - sum(COALESCE(P2.PPC_DESCTO,0))) AS PPC_VLPAGAR_' +
      'CC,'#13#10'P2.FOR_CODIGO,'#13#10'F1.FOR_RAZAO'#13#10'FROM PAG_PC01 P2'#13#10'LEFT JOIN F' +
      'OR0000 F1 ON (P2.FOR_CODIGO = F1.FOR_CODIGO)'#13#10'LEFT JOIN BAN0000 ' +
      'B1 ON (B1.BAN_CODIGO = P2.BAN_CODIGO)'#13#10'group by'#13#10'P2.FOR_CODIGO,'#13 +
      #10'F1.FOR_RAZAO'#13#10'order by sum(P2.PPC_VLPARC) desc'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 480
    Top = 101
    object SqlCdsPag11PPC_VLPARC: TFMTBCDField
      FieldName = 'PPC_VLPARC'
      Precision = 20
      Size = 5
    end
    object SqlCdsPag11PPC_VLPAGO: TFMTBCDField
      FieldName = 'PPC_VLPAGO'
      Precision = 20
      Size = 5
    end
    object SqlCdsPag11FOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlCdsPag11FOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsPag11PPC_VLPAGAR_CC: TFMTBCDField
      FieldName = 'PPC_VLPAGAR_CC'
      Precision = 20
      Size = 5
    end
  end
  object DsPag11: TDataSource
    DataSet = SqlCdsPag11
    Left = 560
    Top = 133
  end
  object ppRPRelConPagar11: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41740.638999733800000000
    ReportOptions.LastChange = 41740.654340590280000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = ppRPRelConPagar11GetValue
    Left = 992
    Top = 21
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 127.944960000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object LogoEmpresa: TfrxPictureView
          Width = 196.535560000000000000
          Height = 68.031540000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Line1: TfrxLineView
          Left = 2.000000000000000000
          Top = 72.590600000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object wFrxRazao: TfrxMemoView
          Left = 201.771800000000000000
          Top = 26.456710000000000000
          Width = 517.795610000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 691.606680000000000000
          Top = 3.220470000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PAGE#]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 663.504330000000000000
          Top = 3.220470000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Pag.:')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Top = 72.811070000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[TITULO]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          Top = 127.944960000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          Top = 105.826840000000000000
          Width = 415.748300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 419.527830000000000000
          Top = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor '#224' Pagar')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 521.575140000000000000
          Top = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor Pago')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 86.929190000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Filtro: [filtro]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 619.842920000000000000
          Top = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SALDO')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1FOR_CODIGO: TfrxMemoView
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'FOR_CODIGO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."FOR_CODIGO"]')
          ParentFont = False
        end
        object frxDBDataset1FOR_RAZAO: TfrxMemoView
          Left = 34.015770000000000000
          Width = 381.732530000000000000
          Height = 18.897650000000000000
          DataField = 'FOR_RAZAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."FOR_RAZAO"]')
          ParentFont = False
        end
        object frxDBDataset1PPC_VLPARC: TfrxMemoView
          Left = 419.527830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'PPC_VLPARC'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PPC_VLPARC"]')
          ParentFont = False
        end
        object frxDBDataset1PPC_VLPAGO: TfrxMemoView
          Left = 521.575140000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'PPC_VLPAGO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PPC_VLPAGO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 619.842920000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PPC_VLPAGAR_CC"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 419.527830000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."PPC_VLPARC">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 521.575140000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."PPC_VLPAGO">,MasterData1,3)]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 279.685220000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo4: TfrxSysMemoView
          Left = 619.842920000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."PPC_VLPAGAR_CC">,MasterData1,3)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PPC_VLPARC=PPC_VLPARC'
      'PPC_VLPAGO=PPC_VLPAGO'
      'FOR_CODIGO=FOR_CODIGO'
      'FOR_RAZAO=FOR_RAZAO'
      'PPC_VLPAGAR_CC=PPC_VLPAGAR_CC')
    DataSet = SqlCdsPag11
    BCDToCurrency = False
    Left = 704
    Top = 157
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 936
    Top = 352
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 936
    Top = 424
  end
  object frxRelConPagar10Novo: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41740.638999733800000000
    ReportOptions.LastChange = 42301.509014386570000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'VAR      '
      '       status:string;                                          '
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '       status:='#39#39';                     '
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if(<frxDBDataset2."PPC_VLPAGAR_CC"> <= 0)then'
      '  begin'
      
        '       status:='#39'Liquidado'#39';                                     ' +
        '      '
      '  end'
      '  else'
      '  begin'
      '       status:='#39'Pendente'#39';               '
      '  end;              '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxRelConPagar10NovoGetValue
    Left = 896
    Top = 24
    Datasets = <
      item
        DataSet = frxdbRel10
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset2."FOR_CODIGO"'
        object Memo2: TfrxMemoView
          Top = 3.000000000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'FORNECEDOR:')
          ParentFont = False
        end
        object frxDBDataset2FOR_RAZAO: TfrxMemoView
          Left = 83.149660000000000000
          Top = 3.000000000000000000
          Width = 634.961040000000000000
          Height = 18.897650000000000000
          DataField = 'FOR_RAZAO'
          DataSet = frxdbRel10
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."FOR_RAZAO"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxdbRel10
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2PAG_CODIGO: TfrxMemoView
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataField = 'PAG_CODIGO'
          DataSet = frxdbRel10
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."PAG_CODIGO"]')
          ParentFont = False
        end
        object frxDBDataset2PAG_NUMDOC: TfrxMemoView
          Left = 56.692950000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'PAG_NUMDOC'
          DataSet = frxdbRel10
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."PAG_NUMDOC"]')
          ParentFont = False
        end
        object frxDBDataset2PPC_NUMER: TfrxMemoView
          Left = 34.015770000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DataField = 'PPC_NUMER'
          DataSet = frxdbRel10
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."PPC_NUMER"]')
          ParentFont = False
        end
        object frxDBDataset2PPC_PAGTO: TfrxMemoView
          Left = 168.566929130000000000
          Width = 102.047244090000000000
          Height = 15.118120000000000000
          DataField = 'PPC_PAGTO'
          DataSet = frxdbRel10
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."PPC_PAGTO"]')
          ParentFont = False
        end
        object frxDBDataset2PPC_VENCTO: TfrxMemoView
          Left = 270.236220470000000000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          DataField = 'PPC_VENCTO'
          DataSet = frxdbRel10
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."PPC_VENCTO"]')
          ParentFont = False
        end
        object frxDBDataset2PPC_VLPARC: TfrxMemoView
          Left = 382.488188980000000000
          Width = 83.149606300000000000
          Height = 15.118120000000000000
          DataField = 'PPC_VLPARC'
          DataSet = frxdbRel10
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."PPC_VLPARC"]')
          ParentFont = False
        end
        object frxDBDataset2PPC_VLPAGO: TfrxMemoView
          Left = 466.015748030000000000
          Width = 83.149606300000000000
          Height = 15.118120000000000000
          DataField = 'PPC_VLPAGO'
          DataSet = frxdbRel10
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."PPC_VLPAGO"]')
          ParentFont = False
        end
        object frxDBDataset2PPC_VLPAGAR_CC: TfrxMemoView
          Left = 549.921259840000000000
          Width = 83.149606300000000000
          Height = 15.118120000000000000
          DataField = 'PPC_VLPAGAR_CC'
          DataSet = frxdbRel10
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."PPC_VLPAGAR_CC"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 634.582677170000000000
          Width = 83.149606299212600000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[status]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Top = 3.000000000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL FORNECEDOR')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 549.921259840000000000
          Top = 3.000000000000000000
          Width = 83.149606300000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."PPC_VLPAGAR_CC">,MasterData1,1)]')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 382.488188980000000000
          Top = 3.000000000000000000
          Width = 83.149606300000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."PPC_VLPARC">,MasterData1,1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 466.015748030000000000
          Top = 3.000000000000000000
          Width = 83.149606300000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."PPC_VLPAGO">,MasterData1,1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line5: TfrxLineView
          Top = 22.677180000000020000
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 355.275820000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Top = 5.000000000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL GERAL')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 549.921259840000000000
          Top = 5.000000000000000000
          Width = 83.149606300000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."PPC_VLPAGAR_CC">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          Left = 382.488188980000000000
          Top = 5.000000000000000000
          Width = 83.149606300000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."PPC_VLPARC">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          Left = 466.015748030000000000
          Top = 5.000000000000000000
          Width = 83.149606300000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."PPC_VLPAGO">,MasterData1,3)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object LogoEmpresa: TfrxPictureView
          Width = 196.535560000000000000
          Height = 68.031540000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Line1: TfrxLineView
          Left = 2.000000000000000000
          Top = 72.590600000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object wFrxRazao: TfrxMemoView
          Left = 201.771800000000000000
          Top = 26.456710000000000000
          Width = 517.795610000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Top = 77.811070000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[TITULO]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          Left = -3.779530000000000000
          Top = 139.283550000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 382.393940000000000000
          Top = 117.826840000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor '#224' Pagar')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 466.102660000000000000
          Top = 117.826840000000000000
          Width = 83.149606300000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Pago')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 96.929190000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Filtro: [filtro]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 550.031850000000000000
          Top = 117.826840000000000000
          Width = 83.149606300000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'SALDO')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 117.826840000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cod.')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 34.015770000000000000
          Top = 117.826840000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'PC')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 168.637910000000000000
          Top = 117.826840000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data de Pagamento')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 270.346630000000000000
          Top = 117.826840000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data de Vencimento')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 634.520100000000000000
          Top = 117.826840000000000000
          Width = 83.149606300000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 56.692950000000000000
          Top = 117.826840000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Doc.')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 555.590910000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbRel10: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PAG_CODIGO=PAG_CODIGO'
      'PAG_NUMDOC=PAG_NUMDOC'
      'PCX_CODIGO=PCX_CODIGO'
      'PPC_NUMER=PPC_NUMER'
      'PPC_VLPARC=PPC_VLPARC'
      'PPC_VLPAGO=PPC_VLPAGO'
      'PPC_BANCO=PPC_BANCO'
      'PPC_OBS=PPC_OBS'
      'FOR_CODIGO=FOR_CODIGO'
      'FOR_RAZAO=FOR_RAZAO'
      'PPC_VLPAGAR_CC=PPC_VLPAGAR_CC'
      'PPC_SITPAG=PPC_SITPAG'
      'CCT_CODIGO=CCT_CODIGO'
      'PPC_DTEMIS=PPC_DTEMIS'
      'PPC_VENCTO=PPC_VENCTO'
      'PPC_PAGTO=PPC_PAGTO'
      'PAG_MES_CC=PAG_MES_CC'
      'PAG_MES_PAGTO_CC=PAG_MES_PAGTO_CC'
      'BAN_CODIGO=BAN_CODIGO'
      'BAN_APELIDO=BAN_APELIDO'
      'PPC_STATUS=PPC_STATUS'
      'PPC_JUROS=PPC_JUROS'
      'PPC_MULTA=PPC_MULTA'
      'PPC_DESCTO=PPC_DESCTO')
    DataSet = SqlCdsPag00
    BCDToCurrency = False
    Left = 632
    Top = 125
  end
  object ppRPRelConPagar13: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Developer\adjutor\fontesrelatorios\RELCONPAGAR00.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = ppRPRelConPagar00BeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 1007
    Top = 192
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand5: TppHeaderBand
      BeforePrint = pp00HeaderBand2BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 23548
      mmPrintPosition = 0
      object ppLine52: TppLine
        DesignLayer = ppDesignLayer10
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground9
      end
      object ppLabel116: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 794
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground9
      end
      object LBL_13_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'LBL_13_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 6350
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground9
      end
      object LBL_13_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'LBL_13_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 9790
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground9
      end
      object ppLine53: TppLine
        DesignLayer = ppDesignLayer10
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14288
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground9
      end
      object ppSystemVariable19: TppSystemVariable
        DesignLayer = ppDesignLayer10
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 163460
        mmTop = 794
        mmWidth = 32597
        BandType = 0
        LayerName = Foreground9
      end
      object ppSystemVariable20: TppSystemVariable
        DesignLayer = ppDesignLayer10
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 174114
        mmTop = 8731
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground9
      end
      object ppLabel119: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 15081
        mmWidth = 12841
        BandType = 0
        LayerName = Foreground9
      end
      object ppLabel120: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#211'D.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 34925
        mmTop = 15081
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground9
      end
      object ppLabel121: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' DOC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3175
        mmLeft = 47096
        mmTop = 15081
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground9
      end
      object ppLabel122: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'PC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3175
        mmLeft = 67469
        mmTop = 15081
        mmWidth = 3969
        BandType = 0
        LayerName = Foreground9
      end
      object ppLabel123: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'FAVORECIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3175
        mmLeft = 73554
        mmTop = 15081
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground9
      end
      object ppLabel124: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR '#192' PAGAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 128059
        mmTop = 15081
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground9
      end
      object ppLine54: TppLine
        DesignLayer = ppDesignLayer10
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 23283
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground9
      end
      object ppLabel125: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR C.Part'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 150284
        mmTop = 15081
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground9
      end
      object ppLabel126: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label10'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR Liquido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 173832
        mmTop = 15081
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground9
      end
      object ppLabel117: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label117'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VENCIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 16140
        mmTop = 15081
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground9
      end
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText94: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_DTEMIS'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText95: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 34660
        mmTop = 0
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText96: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAG_NUMDOC'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 44186
        mmTop = 0
        mmWidth = 23283
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText97: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_NUMER'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 67733
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText98: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_RAZAO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 72761
        mmTop = 0
        mmWidth = 52652
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText99: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPARC'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 126204
        mmTop = 0
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText100: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VALOR_N_RATEIA'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 146048
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText101: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLLIQUIDO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 166952
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText102: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText102'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VENCTO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 17463
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground9
      end
    end
    object ppSummaryBand5: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLabel129: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label129'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL GERAL.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 83131
        mmTop = 794
        mmWidth = 20637
        BandType = 7
        LayerName = Foreground9
      end
      object ppLine56: TppLine
        DesignLayer = ppDesignLayer10
        UserName = 'Line56'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 64056
        mmTop = 0
        mmWidth = 124343
        BandType = 7
        LayerName = Foreground9
      end
      object ppDBCalc60: TppDBCalc
        DesignLayer = ppDesignLayer10
        UserName = 'DBCalc60'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLPARC'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 108744
        mmTop = 794
        mmWidth = 16669
        BandType = 7
        LayerName = Foreground9
      end
      object ppDBCalc66: TppDBCalc
        DesignLayer = ppDesignLayer10
        UserName = 'DBCalc66'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VALOR_N_RATEIA'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 128323
        mmTop = 794
        mmWidth = 16933
        BandType = 7
        LayerName = Foreground9
      end
      object ppDBCalc56: TppDBCalc
        DesignLayer = ppDesignLayer10
        UserName = 'DBCalc56'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PPC_VLLIQUIDO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 147638
        mmTop = 1059
        mmWidth = 16933
        BandType = 7
        LayerName = Foreground9
      end
    end
    object ppDesignLayers10: TppDesignLayers
      object ppDesignLayer10: TppDesignLayer
        UserName = 'Foreground9'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList10: TppParameterList
    end
  end
  object ctpgrel14: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41740.638999733800000000
    ReportOptions.LastChange = 42675.392977060190000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      '  '
      'end.')
    OnGetValue = frxRelConPagar10NovoGetValue
    Left = 1112
    Top = 336
    Datasets = <
      item
        DataSet = DBDataset14
        DataSetName = 'DBDataset14'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 222.992270000000000000
        Width = 1084.725110000000000000
        DataSet = DBDataset14
        DataSetName = 'DBDataset14'
        RowCount = 0
        object frxDBDataset2PAG_CODIGO: TfrxMemoView
          Left = 57.031496060000000000
          Width = 52.913385830000000000
          Height = 11.338582677165350000
          DataField = 'PPC_PAGTO'
          DataSet = DBDataset14
          DataSetName = 'DBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataset14."PPC_PAGTO"]')
          ParentFont = False
        end
        object frxDBDataset2PPC_NUMER: TfrxMemoView
          Left = 164.031496062992100000
          Width = 200.314960629921300000
          Height = 11.338582680000000000
          DataSet = DBDataset14
          DataSetName = 'DBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataset14."FOR_RAZAO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Width = 52.913378500000000000
          Height = 11.338582677165350000
          DataSet = DBDataset14
          DataSetName = 'DBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataset14."PPC_VENCTO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 371.905511810000000000
          Width = 147.401489370000000000
          Height = 11.338582677165350000
          DataField = 'PAG_OBS'
          DataSet = DBDataset14
          DataSetName = 'DBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataset14."PAG_OBS"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 524.220472440000000000
          Width = 71.811023620000000000
          Height = 11.338582677165350000
          DataSet = DBDataset14
          DataSetName = 'DBDataset14'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBDataset14."PPC_VLPARC"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 604.724409450000000000
          Top = 0.220470000000006000
          Width = 71.811023620000000000
          Height = 11.338582680000000000
          DataSet = DBDataset14
          DataSetName = 'DBDataset14'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBDataset14."CCT_PROVISAO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 814.866141730000000000
          Width = 268.346449370000000000
          Height = 11.338582680000000000
          DataField = 'CCT_DESCRI'
          DataSet = DBDataset14
          DataSetName = 'DBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataset14."CCT_DESCRI"]')
          ParentFont = False
        end
        object DBDataset14CCT_CODIGO: TfrxMemoView
          Left = 763.842519690000000000
          Top = 1.212739999999997000
          Width = 41.574803150000000000
          Height = 11.338582677165350000
          DataSet = DBDataset14
          DataSetName = 'DBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataset14."CCT_CODIGO"]')
          ParentFont = False
        end
        object DBDataset14PAG_CODIGO: TfrxMemoView
          Left = 115.275590551181100000
          Width = 45.354330708661410000
          Height = 11.338582680000000000
          DataField = 'PAG_CODIGO'
          DataSet = DBDataset14
          DataSetName = 'DBDataset14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DBDataset14."PAG_CODIGO"]')
          ParentFont = False
        end
        object DBDataset14CCT_PROVISAO: TfrxMemoView
          Left = 685.031449690000000000
          Width = 71.811070000000000000
          Height = 11.338582680000000000
          DataSet = DBDataset14
          DataSetName = 'DBDataset14'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBDataset14."CCT_PROVISAO"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 260.787570000000000000
        Width = 1084.725110000000000000
        object Memo13: TfrxMemoView
          Left = 514.559370000000000000
          Top = 4.913385829999981000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL GERAL')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 593.196850390000000000
          Top = 4.913385829999981000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DBDataset14."PPC_VLPARC">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baWidth
          Width = 1084.725110000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 143.622140000000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object LogoEmpresa: TfrxPictureView
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          Visible = False
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 72.590600000000000000
          Width = 1084.725110000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object wFrxRazao: TfrxMemoView
          Left = 9.015770000000000000
          Top = 26.456710000000000000
          Width = 676.535870000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Top = 77.811070000000000000
          Width = 1084.725110000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[TITULO]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 524.370010390000000000
          Top = 117.165354330000000000
          Width = 71.811023620000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Bruto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 604.684973460000000000
          Top = 116.385824330000000000
          Width = 71.811023620000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Previsto M'#202'S'
            '& Realizado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Top = 96.929190000000000000
          Width = 1084.725110000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Filtro: [filtro]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 685.251902600000000000
          Top = 117.165354330000000000
          Width = 71.811023620000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Provis'#227'o Para o M'#234's Seguinte')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Top = 117.165354330000000000
          Width = 52.913385826771700000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 57.031496060000000000
          Top = 117.165354330000000000
          Width = 52.913385830000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Data Pagto.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 164.031496060000000000
          Top = 117.165354330000000000
          Width = 200.314960630000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Favorecido')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 371.810955280000000000
          Top = 117.165354330000000000
          Width = 147.401567480000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Descri'#231#227'o / Observa'#231#227'o'
            'da conta')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 763.960566460000000000
          Top = 117.165354330000000000
          Width = 41.574805590000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Conta Custos')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo3: TfrxSysMemoView
          Align = baRight
          Left = 922.205320000000100000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 812.803086140000000000
          Top = 117.165354330000000000
          Width = 226.771719450000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Descri'#231#227'o da Conta / '
            'Plano de Contas')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo15: TfrxMemoView
          Left = 1044.685039370000000000
          Top = 117.165354330000000000
          Width = 37.795246300000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'An'#225'lise')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 115.275590550000000000
          Top = 117.385900000000000000
          Width = 45.354330710000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'd. Lancto')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object DBDataset14: TfrxDBDataset
    UserName = 'DBDataset14'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PAG_CODIGO=PAG_CODIGO'
      'PAG_NUMDOC=PAG_NUMDOC'
      'PCX_CODIGO=PCX_CODIGO'
      'PPC_NUMER=PPC_NUMER'
      'PPC_VLPARC=PPC_VLPARC'
      'PPC_VLPAGO=PPC_VLPAGO'
      'PPC_BANCO=PPC_BANCO'
      'PPC_OBS=PPC_OBS'
      'FOR_CODIGO=FOR_CODIGO'
      'FOR_RAZAO=FOR_RAZAO'
      'PPC_VLPAGAR_CC=PPC_VLPAGAR_CC'
      'PPC_SITPAG=PPC_SITPAG'
      'CCT_CODIGO=CCT_CODIGO'
      'PPC_DTEMIS=PPC_DTEMIS'
      'PPC_VENCTO=PPC_VENCTO'
      'PPC_PAGTO=PPC_PAGTO'
      'PAG_MES_CC=PAG_MES_CC'
      'PAG_MES_PAGTO_CC=PAG_MES_PAGTO_CC'
      'BAN_CODIGO=BAN_CODIGO'
      'BAN_APELIDO=BAN_APELIDO'
      'PPC_STATUS=PPC_STATUS'
      'PPC_JUROS=PPC_JUROS'
      'PPC_MULTA=PPC_MULTA'
      'PPC_DESCTO=PPC_DESCTO'
      'PPC_VALOR_N_RATEIA=PPC_VALOR_N_RATEIA'
      'PAG_OBS=PAG_OBS'
      'CCT_DESCRI=CCT_DESCRI'
      'CCT_PROVISAO=CCT_PROVISAO')
    DataSet = SqlCdsPag00
    BCDToCurrency = False
    Left = 1112
    Top = 400
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DsPag00
    UserName = 'DBPipeline1'
    Left = 1104
    Top = 192
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'PAG_CODIGO'
      FieldName = 'PAG_CODIGO'
      FieldLength = 5
      DisplayWidth = 5
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'PAG_NUMDOC'
      FieldName = 'PAG_NUMDOC'
      FieldLength = 12
      DisplayWidth = 12
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'PCX_CODIGO'
      FieldName = 'PCX_CODIGO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'PPC_NUMER'
      FieldName = 'PPC_NUMER'
      FieldLength = 2
      DisplayWidth = 2
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'PPC_VLPARC'
      FieldName = 'PPC_VLPARC'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'PPC_VLPAGO'
      FieldName = 'PPC_VLPAGO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'PPC_BANCO'
      FieldName = 'PPC_BANCO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'PPC_OBS'
      FieldName = 'PPC_OBS'
      FieldLength = 15
      DisplayWidth = 15
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'FOR_CODIGO'
      FieldName = 'FOR_CODIGO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'FOR_RAZAO'
      FieldName = 'FOR_RAZAO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'PPC_VLPAGAR_CC'
      FieldName = 'PPC_VLPAGAR_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'PPC_SITPAG'
      FieldName = 'PPC_SITPAG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'CCT_CODIGO'
      FieldName = 'CCT_CODIGO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'PPC_DTEMIS'
      FieldName = 'PPC_DTEMIS'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'PPC_VENCTO'
      FieldName = 'PPC_VENCTO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'PPC_PAGTO'
      FieldName = 'PPC_PAGTO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'PAG_MES_CC'
      FieldName = 'PAG_MES_CC'
      FieldLength = 2
      DisplayWidth = 2
      Position = 16
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'PAG_MES_PAGTO_CC'
      FieldName = 'PAG_MES_PAGTO_CC'
      FieldLength = 2
      DisplayWidth = 2
      Position = 17
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'BAN_CODIGO'
      FieldName = 'BAN_CODIGO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 18
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'BAN_APELIDO'
      FieldName = 'BAN_APELIDO'
      FieldLength = 25
      DisplayWidth = 25
      Position = 19
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'PPC_STATUS'
      FieldName = 'PPC_STATUS'
      FieldLength = 12
      DisplayWidth = 12
      Position = 20
    end
    object ppDBPipeline1ppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'PPC_JUROS'
      FieldName = 'PPC_JUROS'
      FieldLength = 5
      DataType = dtDouble
      DisplayWidth = 21
      Position = 21
    end
    object ppDBPipeline1ppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'PPC_MULTA'
      FieldName = 'PPC_MULTA'
      FieldLength = 5
      DataType = dtDouble
      DisplayWidth = 21
      Position = 22
    end
    object ppDBPipeline1ppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'PPC_DESCTO'
      FieldName = 'PPC_DESCTO'
      FieldLength = 5
      DataType = dtDouble
      DisplayWidth = 21
      Position = 23
    end
    object ppDBPipeline1ppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'PPC_VALOR_N_RATEIA'
      FieldName = 'PPC_VALOR_N_RATEIA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 24
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'PAG_OBS'
      FieldName = 'PAG_OBS'
      FieldLength = 500
      DisplayWidth = 500
      Position = 25
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'CCT_DESCRI'
      FieldName = 'CCT_DESCRI'
      FieldLength = 82
      DisplayWidth = 82
      Position = 26
    end
    object ppDBPipeline1ppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'CCT_PROVISAO'
      FieldName = 'CCT_PROVISAO'
      FieldLength = 5
      DataType = dtDouble
      DisplayWidth = 19
      Position = 27
    end
    object ppDBPipeline1ppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'PPC_VLLIQUIDO'
      FieldName = 'PPC_VLLIQUIDO'
      FieldLength = 5
      DataType = dtDouble
      DisplayWidth = 19
      Position = 28
    end
  end
end
