object FormContasReceberBaixa: TFormContasReceberBaixa
  Left = 188
  Top = 82
  Caption = 'Contas '#224' Receber - Tela de Baixas'
  ClientHeight = 602
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 964
    Height = 467
    Align = alTop
    Caption = 'Parcelas '
    TabOrder = 0
    object Label2: TLabel
      Left = 9
      Top = 22
      Width = 119
      Height = 14
      Alignment = taRightJustify
      Caption = 'Data de Recebimento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 47
      Width = 960
      Height = 413
      Hint = 
        'Para descartar uma parcela que n'#227'o deseje baixar pressione  bot'#227 +
        'o direito do mouse sobre a parcela e selecione descartar'
      Align = alCustom
      DataSource = DsRecebimentos
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnExit = DBGrid1Exit
      Columns = <
        item
          Expanded = False
          FieldName = 'Fatura'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Parcela'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'PC'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vencimento'
          ReadOnly = True
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pendente'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Color = clYellow
          Expanded = False
          FieldName = 'Baixar'
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Color = clYellow
          Expanded = False
          FieldName = 'Desconto'
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Color = clYellow
          Expanded = False
          FieldName = 'Juros'
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Color = clYellow
          Expanded = False
          FieldName = 'Multa'
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CCRecebido'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Recebido'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cliente'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 204
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Banco'
          Title.Alignment = taCenter
          Title.Caption = 'Conta Banco'
          Visible = True
        end>
    end
    object DataRecebimento: TDateEdit
      Left = 130
      Top = 19
      Width = 101
      Height = 22
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 467
    Width = 964
    Height = 50
    Align = alTop
    Caption = 'Informa'#231#245'es da baixa'
    TabOrder = 1
    object Label7: TLabel
      Left = 17
      Top = 24
      Width = 65
      Height = 14
      Alignment = taRightJustify
      Caption = 'Conta Banco:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 514
      Top = 24
      Width = 104
      Height = 14
      Alignment = taRightJustify
      Caption = 'Forma de Pagamento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Sb_FormaPagamento: TSpeedButton
      Left = 939
      Top = 19
      Width = 22
      Height = 21
      Hint = 'Cadastro de Forma de Pagamento'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = Sb_FormaPagamentoClick
    end
    object CbContaBanco: TComboBoxRw
      Left = 128
      Top = 20
      Width = 281
      Height = 22
      TabOrder = 0
      OnExit = CbContaBancoExit
      OnChange = CbContaBancoChange
      CharCase = ecUpperCase
      LookupSelect = 'BAN_APELIDO'
      LookupOrderBy = 'BAN_APELIDO'
      LookupTable = 'BAN0000'
      GridAutoSize = False
      LookupSource = CbContaBanco.InternalSource
      LookupKeyField = 'BAN_CODIGO'
      FiltroTabela = 'BAN_ATIVO = '#39'S'#39
      ShowButton = True
      LookupTableShare = 'BANCOS'
      AutoF8WinTitulo = 'Contas Banc'#225'rias'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      Tabela = 'BAN0000'
      CamposCarregar = 'BAN_APELIDO'
      CamposRetornar = 'BAN_CODIGO'
      Condicao = 'BAN_ATIVO = '#39'S'#39
      CamposOrdernar = 'BAN_APELIDO'
      ConexaoBanco = DataCadastros.SQLConnection1
      Compartilhar = 'BANCOS'
      Localizado = False
      CodigoEmpresa = 0
      ResetaCampos = False
      MultiEmpresa = False
      Localizar = False
      CarregarCombo = False
      itemindex = 0
      style = csDropDown
    end
    object EdContaBanco: TEdit
      Left = 84
      Top = 20
      Width = 43
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 1
      OnExit = EdContaBancoExit
    end
    object EdFormaPagamento: TEdit
      Left = 620
      Top = 20
      Width = 43
      Height = 22
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 5
      TabOrder = 2
      OnExit = EdFormaPagamentoExit
    end
    object CBFormaPagamento: TComboBoxRw
      Left = 665
      Top = 20
      Width = 249
      Height = 22
      TabOrder = 3
      OnExit = CBFormaPagamentoExit
      OnChange = CBFormaPagamentoChange
      CharCase = ecUpperCase
      LookupSelect = 'FPG_DESCRICAO'
      LookupOrderBy = 'FPG_DESCRICAO'
      LookupTable = 'FORMA_PAGAMENTO'
      GridAutoSize = False
      LookupSource = CBFormaPagamento.InternalSource
      LookupKeyField = 'FPG_REGISTRO'
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Formas de Pagamento'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      Tabela = 'FORMA_PAGAMENTO'
      CamposCarregar = 'FPG_DESCRICAO'
      CamposRetornar = 'FPG_REGISTRO'
      CamposOrdernar = 'FPG_DESCRICAO'
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
  end
  object Bit_Gravar: TBitBtn
    Left = 753
    Top = 568
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
  object Bit_Cancelar: TBitBtn
    Left = 856
    Top = 568
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
    ModalResult = 2
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = Bit_CancelarClick
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 517
    Width = 964
    Height = 46
    Align = alTop
    Caption = 'Totais'
    Enabled = False
    TabOrder = 4
    object Label3: TLabel
      Left = 132
      Top = 19
      Width = 48
      Height = 14
      Caption = 'Pendente:'
    end
    object Label4: TLabel
      Left = 284
      Top = 19
      Width = 34
      Height = 14
      Alignment = taRightJustify
      Caption = 'Baixar:'
    end
    object Label5: TLabel
      Left = 421
      Top = 19
      Width = 49
      Height = 14
      Alignment = taRightJustify
      Caption = 'Desconto:'
    end
    object Label6: TLabel
      Left = 568
      Top = 19
      Width = 30
      Height = 14
      Alignment = taRightJustify
      Caption = 'Juros:'
    end
    object Label8: TLabel
      Left = 698
      Top = 19
      Width = 28
      Height = 14
      Alignment = taRightJustify
      Caption = 'Multa:'
    end
    object Label9: TLabel
      Left = 822
      Top = 19
      Width = 48
      Height = 14
      Alignment = taRightJustify
      Caption = 'Recebido:'
    end
    object Label10: TLabel
      Left = 5
      Top = 19
      Width = 58
      Height = 14
      Caption = 'Quantidade:'
    end
    object CurTotalPendente: TCurrencyEdit
      Left = 182
      Top = 16
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      ZeroEmpty = False
    end
    object CurTotalBaixar: TCurrencyEdit
      Left = 318
      Top = 16
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      ZeroEmpty = False
    end
    object CurTotalDesconto: TCurrencyEdit
      Left = 470
      Top = 16
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      ZeroEmpty = False
    end
    object CurTotalJuros: TCurrencyEdit
      Left = 598
      Top = 16
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      ZeroEmpty = False
    end
    object CurTotalMulta: TCurrencyEdit
      Left = 726
      Top = 16
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      ZeroEmpty = False
    end
    object CurTotalPago: TCurrencyEdit
      Left = 870
      Top = 16
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      ZeroEmpty = False
    end
    object CurrTotalQuantidade: TCurrencyEdit
      Left = 64
      Top = 16
      Width = 54
      Height = 21
      TabStop = False
      Alignment = taCenter
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 0
      DisplayFormat = '00000'
      ReadOnly = True
      TabOrder = 6
    end
  end
  object btnCheques: TButton
    Left = 649
    Top = 568
    Width = 100
    Height = 25
    Caption = 'Lan'#231'ar Cheques'
    TabOrder = 5
    Visible = False
    OnClick = btnChequesClick
  end
  object DsRecebimentos: TDataSource
    DataSet = CDSRecebimentos
    Left = 704
    Top = 96
  end
  object CDSRecebimentos: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    BeforeInsert = CDSRecebimentosBeforeInsert
    AfterPost = CDSRecebimentosAfterPost
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 553
    Top = 96
    object CDSRecebimentosFatura: TStringField
      FieldName = 'Fatura'
      Size = 10
    end
    object CDSRecebimentosParcela: TStringField
      FieldName = 'Parcela'
      Size = 5
    end
    object CDSRecebimentosVencimento: TDateField
      FieldName = 'Vencimento'
    end
    object CDSRecebimentosValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###,###,###,##0.00'
    end
    object CDSRecebimentosPendente: TFloatField
      FieldName = 'Pendente'
      DisplayFormat = '###,###,###,##0.00'
    end
    object CDSRecebimentosBaixar: TFloatField
      FieldName = 'Baixar'
      OnSetText = CDSRecebimentosBaixarSetText
      DisplayFormat = '###,###,###,##0.00'
    end
    object CDSRecebimentosDesconto: TFloatField
      FieldName = 'Desconto'
      OnSetText = CDSRecebimentosDescontoSetText
      OnValidate = CDSRecebimentosDescontoValidate
      DisplayFormat = '###,###,###,##0.00'
    end
    object CDSRecebimentosJuros: TFloatField
      FieldName = 'Juros'
      OnSetText = CDSRecebimentosJurosSetText
      DisplayFormat = '###,###,###,##0.00'
    end
    object CDSRecebimentosMulta: TFloatField
      FieldName = 'Multa'
      OnSetText = CDSRecebimentosMultaSetText
      DisplayFormat = '###,###,###,##0.00'
    end
    object CDSRecebimentosRecebido: TFloatField
      FieldName = 'CCRecebido'
      DisplayFormat = '###,###,###,##0.00'
    end
    object CDSRecebimentosCliente: TStringField
      FieldName = 'Cliente'
      Size = 100
    end
    object CDSRecebimentosFatRegistro: TIntegerField
      FieldName = 'FatRegistro'
    end
    object CDSRecebimentosBanco: TStringField
      FieldName = 'Banco'
      Size = 40
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 712
    Top = 192
    object Descartar1: TMenuItem
      Caption = 'Descartar'
      OnClick = Descartar1Click
    end
  end
end
