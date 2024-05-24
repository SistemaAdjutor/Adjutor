inherited frmFinanceiroConciliacaoLancamentoPagarReceber: TfrmFinanceiroConciliacaoLancamentoPagarReceber
  Caption = 'Concilia'#231#227'o: Lan'#231'amento Contas a Receber/Pagar'
  ClientHeight = 393
  ClientWidth = 608
  ExplicitWidth = 624
  ExplicitHeight = 432
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtil: TPanel
    Top = 361
    Width = 608
    TabOrder = 1
    ExplicitTop = 361
    ExplicitWidth = 608
    DesignSize = (
      608
      32)
    inherited btnOk: TSpeedButton
      Left = 308
      ExplicitLeft = 717
    end
    inherited btnCancelar: TSpeedButton
      Left = 457
      ExplicitLeft = 866
    end
    inherited pnMove: TPanel
      inherited btFirst: TSpeedButton
        Visible = False
      end
      inherited btPrior: TSpeedButton
        Visible = False
      end
      inherited btNext: TSpeedButton
        Visible = False
      end
      inherited btLast: TSpeedButton
        Visible = False
      end
      inherited btSave: TSpeedButton
        Visible = False
      end
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 608
    Height = 43
    Align = alTop
    TabOrder = 0
    object rgReceitaDespesa: TRadioGroup
      Left = 3
      Top = 0
      Width = 215
      Height = 41
      BiDiMode = bdLeftToRight
      Caption = 'Tipo do Lan'#231'amanto'
      Columns = 2
      Ctl3D = True
      Items.Strings = (
        'Receita'
        'Despesa')
      ParentBiDiMode = False
      ParentCtl3D = False
      TabOrder = 0
      OnClick = rgReceitaDespesaClick
    end
  end
  object GroupBox2: TGroupBox [2]
    Left = 0
    Top = 43
    Width = 608
    Height = 318
    Align = alClient
    Caption = 'Informa'#231#245'es do Lan'#231'amento'
    TabOrder = 2
    object Panel2: TPanel
      Left = 2
      Top = 15
      Width = 604
      Height = 301
      Align = alClient
      TabOrder = 0
      object lbCliFor: TLabel
        Left = 27
        Top = 9
        Width = 91
        Height = 14
        Alignment = taRightJustify
        Caption = 'Cliente/Fornecedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 40
        Top = 114
        Width = 101
        Height = 14
        Alignment = taRightJustify
        Caption = 'Forma de Pagamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 37
        Top = 63
        Width = 81
        Height = 14
        Alignment = taRightJustify
        Caption = 'Data Vencimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 169
        Top = 63
        Width = 109
        Height = 14
        Alignment = taRightJustify
        Caption = 'Data de Compensa'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 304
        Top = 63
        Width = 25
        Height = 14
        Alignment = taRightJustify
        Caption = 'Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 40
        Top = 164
        Width = 74
        Height = 14
        Alignment = taRightJustify
        Caption = 'Conta Banc'#225'ria'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 230
        Top = 114
        Width = 92
        Height = 14
        Alignment = taRightJustify
        Caption = 'Categoria da Conta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 230
        Top = 164
        Width = 78
        Height = 14
        Alignment = taRightJustify
        Caption = 'Centro de Custo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbVendedor: TLabel
        Left = 71
        Top = 36
        Width = 47
        Height = 14
        Alignment = taRightJustify
        Caption = 'Vendedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object sbCliFor: TSgDbSearchCombo
        Left = 124
        Top = 6
        Width = 333
        Height = 21
        TabOrder = 0
        CharCase = ecUpperCase
        Enabled = False
        LookupSelect = 'FPG_DESCRICAO, FPG_REGISTRO'
        LookupOrderBy = 'FPG_DESCRICAO'
        LookupTable = 'FORMA_PAGAMENTO'
        LookupDispl = 'FPG_DESCRICAO'
        GridAutoSize = False
        LookupSource = qCliFor
        LookupKeyField = 'FPG_REGISTRO'
        ShowButton = True
        AutoF8WinTitulo = 'Formas de Pagamento'
        AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
      object sbFormaPagamento: TSgDbSearchCombo
        Left = 40
        Top = 127
        Width = 151
        Height = 21
        TabOrder = 5
        CharCase = ecUpperCase
        LookupSelect = 'FPG_DESCRICAO, FPG_REGISTRO'
        LookupOrderBy = 'FPG_DESCRICAO'
        LookupTable = 'FORMA_PAGAMENTO'
        LookupDispl = 'FPG_DESCRICAO'
        GridAutoSize = False
        LookupSource = qFPagto
        DataField = 'FPG_REGISTRO'
        DataSource = DataMovimento.DsrecParc
        LookupKeyField = 'FPG_REGISTRO'
        ShowButton = True
        AutoF8WinTitulo = 'Formas de Pagamento'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
      object edDataVencimento: TJvDateEdit
        Left = 37
        Top = 76
        Width = 92
        Height = 21
        ShowNullDate = False
        TabOrder = 2
      end
      object edDataCompensacao: TJvDateEdit
        Left = 169
        Top = 76
        Width = 92
        Height = 21
        ShowNullDate = False
        TabOrder = 3
      end
      object edValor: TJvValidateEdit
        Left = 304
        Top = 76
        Width = 100
        Height = 22
        AllowEmpty = True
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloat
        DecimalPlaces = 3
        EditText = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object sbContaBancaria: TSgDbSearchCombo
        Left = 40
        Top = 179
        Width = 151
        Height = 21
        TabOrder = 7
        CharCase = ecUpperCase
        LookupSelect = 'BAN_CODIGO,BAN_APELIDO'
        LookupOrderBy = 'BAN_APELIDO'
        LookupTable = 'BAN0000'
        LookupDispl = 'BAN_APELIDO'
        GridAutoSize = False
        LookupSource = qContaBancaria
        LookupKeyField = 'BAN_CODIGO'
        ShowButton = True
        AutoF8WinTitulo = 'Bancos'
        AutoF8ColumnsTitulo = 'C'#243'digo, Apelido'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
      object sbCategoriaConta: TSgDbSearchCombo
        Left = 230
        Top = 127
        Width = 151
        Height = 21
        TabOrder = 6
        CharCase = ecUpperCase
        LookupSelect = 'CCT_CODIGO,CCT_DESCRI'
        LookupOrderBy = 'CCT_DESCRI'
        LookupTable = 'CCT_0000'
        LookupDispl = 'CCT_DESCRI'
        GridAutoSize = False
        LookupSource = qContaContabil
        LookupKeyField = 'CCT_CODIGO'
        ShowButton = True
        AutoF8WinTitulo = 'Contas Cont'#225'beis'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
      object sbCentroCusto: TSgDbSearchCombo
        Left = 230
        Top = 179
        Width = 151
        Height = 21
        TabOrder = 8
        CharCase = ecUpperCase
        LookupSelect = 'PCX_CODIGO,PCX_DESCRI'
        LookupOrderBy = 'PCX_DESCRI'
        LookupTable = 'PCX0000'
        LookupDispl = 'PCX_DESCRI'
        GridAutoSize = False
        LookupSource = qCentroCusto
        LookupKeyField = 'PCX_CODIGO'
        ShowButton = True
        AutoF8WinTitulo = 'Centro de Custo'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 215
        Width = 602
        Height = 85
        Align = alBottom
        Caption = 'Observa'#231#227'o'
        TabOrder = 9
        object edObservacao: TMemo
          Left = 2
          Top = 15
          Width = 598
          Height = 68
          Align = alClient
          TabOrder = 0
        end
      end
      object sbVendedor: TSgDbSearchCombo
        Left = 124
        Top = 33
        Width = 333
        Height = 21
        TabOrder = 1
        CharCase = ecUpperCase
        Visible = False
        Enabled = False
        LookupSelect = 'REP_RAZAO, REP_CODIGO'
        LookupOrderBy = 'REP_RAZAO'
        LookupTable = 'REP0000'
        LookupDispl = 'REP_RAZAO'
        GridAutoSize = False
        LookupSource = qVendedor
        LookupKeyField = 'REP_CODIGO'
        ShowButton = True
        AutoF8WinTitulo = 'Vendedores'
        AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
      end
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 808
    Top = 8
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 816
    Top = 64
  end
  inherited DBConn: TSQLConnection
    Left = 736
    Top = 8
  end
  inherited qAux: TSQLQuery
    Left = 818
    Top = 117
  end
  inherited qAux2: TSQLQuery
    Left = 818
    Top = 172
  end
  inherited qAux3: TSQLQuery
    Left = 818
    Top = 228
  end
  inherited qEdit: TSQLQuery
    Left = 740
    Top = 63
  end
  inherited DspEdit: TDataSetProvider
    Left = 744
    Top = 119
  end
  inherited CdsEdit: TClientDataSet
    Left = 743
    Top = 175
  end
  inherited dsEditS: TDataSource
    Left = 749
    Top = 231
  end
  inherited qAuditoria: TSQLQuery
    Left = 832
  end
  inherited dspAuditoria: TDataSetProvider
    Left = 908
  end
  inherited cdsAuditoria: TClientDataSet
    Left = 984
  end
  object qCliFor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select FPG_DESCRICAO, FPG_REGISTRO'
      'from FORMA_PAGAMENTO'
      'Where FPG_REGISTRO='#39'-1'#39
      'order by FPG_DESCRICAO'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 422
    Top = 36
  end
  object qFPagto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select FPG_DESCRICAO, FPG_REGISTRO'
      'from FORMA_PAGAMENTO'
      'Where FPG_REGISTRO='#39'-1'#39
      'order by FPG_DESCRICAO'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 142
    Top = 180
  end
  object qContaBancaria: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select FPG_DESCRICAO, FPG_REGISTRO'
      'from FORMA_PAGAMENTO'
      'Where FPG_REGISTRO='#39'-1'#39
      'order by FPG_DESCRICAO'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 142
    Top = 236
  end
  object qContaContabil: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select FPG_DESCRICAO, FPG_REGISTRO'
      'from FORMA_PAGAMENTO'
      'Where FPG_REGISTRO='#39'-1'#39
      'order by FPG_DESCRICAO'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 350
    Top = 180
  end
  object qCentroCusto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select FPG_DESCRICAO, FPG_REGISTRO'
      'from FORMA_PAGAMENTO'
      'Where FPG_REGISTRO='#39'-1'#39
      'order by FPG_DESCRICAO'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 342
    Top = 236
  end
  object qVendedor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select FPG_DESCRICAO, FPG_REGISTRO'
      'from FORMA_PAGAMENTO'
      'Where FPG_REGISTRO='#39'-1'#39
      'order by FPG_DESCRICAO'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 422
    Top = 92
  end
end
