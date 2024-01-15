inherited FrmPedidoTipo: TFrmPedidoTipo
  Left = 377
  Top = 163
  Caption = 'Altera'#231#227'o de Tipo de Pedido'
  ClientHeight = 468
  ClientWidth = 830
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  Position = poDesigned
  ExplicitWidth = 846
  ExplicitHeight = 507
  PixelsPerInch = 96
  TextHeight = 14
  object LblAlteracao: TLabel [0]
    Left = 0
    Top = 119
    Width = 830
    Height = 16
    Align = alTop
    Caption = 'itens sem saldo no estoque  - venda pendente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 291
  end
  object GroupBox1: TGroupBox [1]
    Left = 0
    Top = 0
    Width = 830
    Height = 119
    Align = alTop
    Caption = 'Op'#231#245'es de Altera'#231#227'o'
    TabOrder = 0
    object GroupBox3: TGroupBox
      Left = 2
      Top = 16
      Width = 826
      Height = 49
      Align = alTop
      Caption = 'Informa'#231#245'es Atuais'
      TabOrder = 0
      object Label1: TLabel
        Left = 402
        Top = 22
        Width = 73
        Height = 14
        Caption = 'Tipo do Pedido:'
      end
      object Label5: TLabel
        Left = 10
        Top = 22
        Width = 45
        Height = 14
        Caption = 'Empresa:'
      end
      object EdPedidoAtualNumero: TEdit
        Left = 477
        Top = 19
        Width = 43
        Height = 22
        TabStop = False
        CharCase = ecUpperCase
        Color = 14145495
        MaxLength = 5
        ReadOnly = True
        TabOrder = 0
        OnChange = EdPedidoAtualNumeroChange
      end
      object EdPedidoAtualDescricao: TEdit
        Left = 522
        Top = 19
        Width = 257
        Height = 22
        TabStop = False
        CharCase = ecUpperCase
        Color = 14145495
        MaxLength = 5
        ReadOnly = True
        TabOrder = 1
      end
      object EdCodigoEmpresaAtual: TEdit
        Left = 57
        Top = 19
        Width = 43
        Height = 22
        TabStop = False
        CharCase = ecUpperCase
        Color = 14145495
        MaxLength = 5
        ReadOnly = True
        TabOrder = 2
        OnChange = EdPedidoAtualNumeroChange
      end
      object EdEmpresaAtual: TEdit
        Left = 102
        Top = 19
        Width = 294
        Height = 22
        TabStop = False
        CharCase = ecUpperCase
        Color = 14145495
        MaxLength = 5
        ReadOnly = True
        TabOrder = 3
      end
    end
    object GroupBox4: TGroupBox
      Left = 2
      Top = 65
      Width = 826
      Height = 48
      Align = alTop
      Caption = 'Novas Informa'#231#245'es'
      TabOrder = 1
      object Label2: TLabel
        Left = 423
        Top = 21
        Width = 51
        Height = 14
        Caption = 'Novo Tipo:'
      end
      object Label6: TLabel
        Left = 11
        Top = 22
        Width = 45
        Height = 14
        Caption = 'Empresa:'
      end
      object EdPedidoNovoNumero: TEdit
        Left = 476
        Top = 18
        Width = 43
        Height = 22
        CharCase = ecUpperCase
        Color = clWhite
        MaxLength = 5
        TabOrder = 2
        OnChange = EdPedidoNovoNumeroChange
        OnExit = EdPedidoNovoNumeroExit
      end
      object CbNovoTipo2: TComboBoxRw
        Left = 781
        Top = 6
        Width = 39
        Height = 22
        TabOrder = 3
        CharCase = ecUpperCase
        Visible = False
        LookupSelect = 'OPV_DESCRICAO'
        LookupOrderBy = 'OPV_DESCRICAO'
        LookupTable = 'OPV0000'
        GridAutoSize = False
        LookupSource = CbNovoTipo2.InternalSource
        LookupKeyField = 'OPV_CODIGO'
        ShowButton = True
        LookupTableShare = 'TABELAS'
        AutoF8WinTitulo = 'Tipos de Pedidos'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
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
      object EdCodigoEmpresa: TEdit
        Left = 57
        Top = 18
        Width = 43
        Height = 22
        CharCase = ecUpperCase
        Color = clWhite
        MaxLength = 3
        TabOrder = 0
        OnExit = EdCodigoEmpresaExit
      end
      object CbEmpresa: TComboBoxRw
        Left = 103
        Top = 18
        Width = 286
        Height = 22
        TabOrder = 1
        OnExit = CbEmpresaExit
        OnChange = CbEmpresaChange
        CharCase = ecUpperCase
        LookupSelect = 'EMP_RAZAO'
        LookupOrderBy = 'EMP_RAZAO'
        LookupTable = 'EMP0000'
        GridAutoSize = False
        LookupSource = CbEmpresa.InternalSource
        LookupKeyField = 'EMP_CODIGO'
        ShowButton = True
        AutoF8WinTitulo = 'Empresas'
        AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
        Tabela = 'EMP0000'
        CamposCarregar = 'EMP_RAZAO'
        CamposRetornar = 'EMP_CODIGO'
        CamposOrdernar = 'EMP_RAZAO'
        ConexaoBanco = DataCadastros.SQLConnection1
        Localizado = False
        CodigoEmpresa = 0
        ResetaCampos = False
        MultiEmpresa = False
        Localizar = False
        CarregarCombo = False
        itemindex = 0
        style = csDropDown
      end
      object CbNovoTipo: TSgDbSearchCombo
        Left = 522
        Top = 18
        Width = 235
        Height = 22
        TabStop = False
        TabOrder = 4
        OnExit = CbNovoTipoExit
        OnChange = CbNovoTipoChange
        OnKeyPress = CbNovoTipoKeyPress
        LookupSelect = 'OPV_DESCRICAO, OPV_CODIGO'
        LookupOrderBy = 'OPV_DESCRICAO'
        LookupTable = 'OPV0000'
        LookupDispl = 'OPV_DESCRICAO'
        OnSelect = CbNovoTipoSelect
        GridAutoSize = False
        LookupSource = qAux
        LookupKeyField = 'OPV_CODIGO'
        ShowButton = True
        LookupTableShare = 'TABELAS'
        AutoF8WinTitulo = 'Tipos de Pedidos'
        AutoF8ColumnsTitulo = 'Nome, C'#243'digo'
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
  object Bit_Cancelar: TBitBtn [2]
    Left = 727
    Top = 435
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Hint = '|Cancela registro atual...'
    Cancel = True
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      04000000000068010000CE0E0000D80E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033333333333333333333333F333333333333
      0000333333333333333333333388F333333F3333000033300333333300033333
      38F38F333F88F33300003330003333300033333338F338F3F8338F3300003333
      000333000333333338F3338F833338F3000033333000300033333333338F3338
      3333F8330000333333000003333333333338F333333F83330000333333300033
      3333333333338F3333383333000033333300000333333333333338F333833333
      00003333300030003333333333333833338F3333000033330003330003333333
      33338333338F333300003330003333300033333333383338F338F33300003330
      0333333300033333338333838F338F3300003333333333333003333333833833
      38F338F300003333333333333333333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = Bit_CancelarClick
  end
  object Bit_Gravar: TBitBtn [3]
    Left = 621
    Top = 435
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Hint = '|Grava registro...'
    Caption = '&Gravar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000CE0E0000D80E00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555550055555
      55555555577FF5555555555500005555555555557777F5555555555500005555
      555555557777FF5555555550000005555555555777777F555555550000000555
      5555557777777FF5555557000500005555555777757777F55555700555500055
      55557775555777FF5555555555500005555555555557777F5555555555550005
      555555555555777FF5555555555550005555555555555777FF55555555555570
      05555555555555777FF5555555555557005555555555555777FF555555555555
      5000555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = Bit_GravarClick
  end
  object GroupBox2: TGroupBox [4]
    Left = 0
    Top = 135
    Width = 830
    Height = 294
    Align = alTop
    TabOrder = 1
    object DbGradePerda: TDBGrid
      Left = 2
      Top = 16
      Width = 826
      Height = 276
      Align = alClient
      DataSource = DsVendaPerdida
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = DbGradePerdaDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'Referencia'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Width = 134
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 357
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QtdeSolicitada'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde. Solicitada'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QtdeEstoque'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde Estoque'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QtdePerda'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde pendente'
          Width = 86
          Visible = True
        end>
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 128
  end
  inherited DBConn: TSQLConnection
    Left = 112
    Top = 185
  end
  object CdsVendaPerdida: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 544
    Top = 24
    object CdsVendaPerdidaReferencia: TStringField
      FieldName = 'Referencia'
      Size = 15
    end
    object CdsVendaPerdidaDescricao: TStringField
      FieldName = 'Descricao'
      Size = 200
    end
    object CdsVendaPerdidaQtdeSolicitada: TFloatField
      FieldName = 'QtdeSolicitada'
    end
    object CdsVendaPerdidaQtdeEstoque: TFloatField
      FieldName = 'QtdeEstoque'
    end
    object CdsVendaPerdidaQtdePerda: TFloatField
      FieldName = 'QtdePerda'
    end
  end
  object DsVendaPerdida: TDataSource
    DataSet = CdsVendaPerdida
    Left = 584
    Top = 48
  end
end
