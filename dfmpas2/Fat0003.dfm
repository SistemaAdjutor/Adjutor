inherited FormFatPedido: TFormFatPedido
  Left = 220
  Top = 145
  BorderIcons = [biSystemMenu]
  Caption = 'Faturamento do Pedido'
  ClientHeight = 589
  ClientWidth = 1484
  Font.Name = 'Arial'
  KeyPreview = True
  ExplicitWidth = 1500
  ExplicitHeight = 628
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox1: TGroupBox [0]
    Left = 0
    Top = 219
    Width = 1484
    Height = 150
    Align = alTop
    Caption = 'Nota'
    TabOrder = 2
    ExplicitWidth = 1284
    object Label23: TLabel
      Left = 28
      Top = 49
      Width = 71
      Height = 14
      Alignment = taRightJustify
      Caption = 'Data Emiss'#227'o :'
    end
    object Label20: TLabel
      Left = 68
      Top = 74
      Width = 31
      Height = 14
      Alignment = taRightJustify
      Caption = 'Frete :'
    end
    object Label26: TLabel
      Left = 3
      Top = 99
      Width = 96
      Height = 14
      Alignment = taRightJustify
      Caption = 'Qtde de Volume(s) :'
    end
    object Label28: TLabel
      Left = 56
      Top = 124
      Width = 43
      Height = 14
      Alignment = taRightJustify
      Caption = 'N'#250'mero :'
    end
    object Label24: TLabel
      Left = 242
      Top = 49
      Width = 58
      Height = 14
      Alignment = taRightJustify
      Caption = 'Data Sa'#237'da :'
    end
    object Label21: TLabel
      Left = 259
      Top = 74
      Width = 41
      Height = 14
      Alignment = taRightJustify
      Caption = 'Seguro :'
    end
    object Label27: TLabel
      Left = 256
      Top = 99
      Width = 44
      Height = 14
      Alignment = taRightJustify
      Caption = 'Esp'#233'cie :'
    end
    object Label29: TLabel
      Left = 241
      Top = 124
      Width = 59
      Height = 14
      Alignment = taRightJustify
      Caption = 'Peso Bruto :'
    end
    object Label25: TLabel
      Left = 450
      Top = 49
      Width = 59
      Height = 14
      Alignment = taRightJustify
      Caption = 'Hora Sa'#237'da :'
    end
    object Label22: TLabel
      Left = 417
      Top = 74
      Width = 92
      Height = 14
      Alignment = taRightJustify
      Caption = 'Desp. Acess'#243'rias :'
    end
    object Label2: TLabel
      Left = 473
      Top = 99
      Width = 36
      Height = 14
      Alignment = taRightJustify
      Caption = 'Marca :'
    end
    object Label30: TLabel
      Left = 439
      Top = 124
      Width = 67
      Height = 14
      Alignment = taRightJustify
      Caption = 'Peso Liqu'#237'do :'
    end
    object Label1: TLabel
      Left = 626
      Top = 18
      Width = 55
      Height = 14
      Caption = 'N'#186' Fatura : '
    end
    object Label17: TLabel
      Left = 140
      Top = 17
      Width = 85
      Height = 14
      Caption = 'Opera'#231#227'o Fiscal :'
    end
    object Label6: TLabel
      Left = 888
      Top = 48
      Width = 28
      Height = 14
      Caption = 'S'#233'rie:'
    end
    object Label9: TLabel
      Left = 799
      Top = 49
      Width = 37
      Height = 14
      Alignment = taRightJustify
      Caption = 'Modelo:'
    end
    object Label10: TLabel
      Left = 722
      Top = 74
      Width = 114
      Height = 14
      Alignment = taRightJustify
      Caption = 'Imposto da Importa'#231#227'o :'
      ParentShowHint = False
      ShowHint = True
    end
    object Label15: TLabel
      Left = 658
      Top = 124
      Width = 46
      Height = 14
      Alignment = taRightJustify
      Caption = 'Servi'#231'os:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label31: TLabel
      Left = 810
      Top = 124
      Width = 46
      Height = 14
      Alignment = taRightJustify
      Caption = 'Produtos:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label36: TLabel
      Left = 772
      Top = 18
      Width = 34
      Height = 14
      Caption = 'S'#233'rie : '
    end
    object btnMudaNumeroFatura: TSpeedButton
      Left = 744
      Top = 14
      Width = 24
      Height = 22
      Hint = 'Mudar o N'#250'mero da Fatura'
      Enabled = False
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDDCC2C07900FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFEDDCC2C07900C3800EC07900C07900C07900C07900C07900C07900C079
        00D4AC71FFFFFFFFFFFFFFFFFFFFFFFFEDDCC2BC7500CB8C21D4972CD4972CD4
        972CD4972CD4972CD4972CD4972CCB8C21BC7500BC7500EDDCC2FFFFFFEDDCC2
        B67000D49A38DFAA49DFAA49DFAA49DFA949E0A949DFAA49DFAA49DFA949E0A9
        49D49A38B67000B67000FFFFFFFFFFFFEDDCC2B06A00DBA74BE9BA63E9BA63E9
        BA63E9BA63E9BA63E9BA63E9BA63DBA74BB06900AF6900B06900FFFFFFFFFFFF
        FFFFFFEDDCC2A96300E1AF59A96300A96300A96400A96300A96300A86300A963
        00A86300A96400A96400FFFFFFEDDCC29F5A00FFFFFFEDDCC2A35E00FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFEDDCC2A35E00A35E00EDDCC2EDDCC2A35E00
        A35E00EDDCC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA35E00EDDCC2FFFF
        FF9F5A00EDDCC2FFFFFFA96400A96400A86300A96300A86300A96300A96300A9
        6400A96300A96300C3800EA96300EDDCC2FFFFFFFFFFFFFFFFFFB06900AF6900
        B06900CB8D21D4972CD4972CD4972CD4972CD3972CD3972CD4972CCB8D21B06A
        00EDDCC2FFFFFFFFFFFFB67000B67000D49A38E0A949DFA949DFAA49DFAA49E0
        A949DFA949DFAA49DFAA49DFAA49D49A38B67000EDDCC2FFFFFFEDDCC2BC7500
        BC7500DCA74BE9B963E9BA63EABA63EABA63E9BA63E9BA63E9BA63DBA74BBC75
        00EDDCC2FFFFFFFFFFFFFFFFFFFFFFFFD4AC71C07900C07900C07900C07900C0
        7900C07900C07900E1AF59C07900EDDCC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07900EDDCC2FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = btnMudaNumeroFaturaClick
    end
    object Label32: TLabel
      Left = 733
      Top = 99
      Width = 51
      Height = 14
      Alignment = taRightJustify
      Caption = 'Finalidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBEditNumero: TDBEdit
      Left = 100
      Top = 120
      Width = 107
      Height = 22
      DataField = 'NF_NUMERO'
      DataSource = DsNotaFiscal
      TabOrder = 16
    end
    object DBEditQtde: TDBEdit
      Left = 100
      Top = 95
      Width = 107
      Height = 22
      DataField = 'NF_QTDE'
      DataSource = DsNotaFiscal
      TabOrder = 13
      OnKeyPress = DBEditQtdeKeyPress
    end
    object DBEditFrete: TDBEdit
      Left = 100
      Top = 70
      Width = 107
      Height = 22
      Color = 14145495
      DataField = 'NF_VLFRETE'
      DataSource = DsNotaFiscal
      ReadOnly = True
      TabOrder = 10
    end
    object DBEditPesoBruto: TDBEdit
      Left = 303
      Top = 120
      Width = 108
      Height = 22
      DataField = 'NF_PESOBRU'
      DataSource = DsNotaFiscal
      TabOrder = 17
      OnExit = DBEditPesoBrutoExit
    end
    object DBEditEsp: TDBEdit
      Left = 303
      Top = 95
      Width = 108
      Height = 22
      CharCase = ecUpperCase
      DataField = 'NF_ESPECIE'
      DataSource = DsNotaFiscal
      TabOrder = 14
    end
    object DBEditSeguro: TDBEdit
      Left = 303
      Top = 70
      Width = 108
      Height = 22
      Color = 14145495
      DataField = 'NF_VLSEGURO'
      DataSource = DsNotaFiscal
      ReadOnly = True
      TabOrder = 11
    end
    object DBEditPesoLiq: TDBEdit
      Left = 512
      Top = 120
      Width = 108
      Height = 22
      DataField = 'NF_PESOLIQ'
      DataSource = DsNotaFiscal
      TabOrder = 18
      OnExit = DBEditPesoLiqExit
    end
    object DBEditMarca: TDBEdit
      Left = 512
      Top = 95
      Width = 108
      Height = 22
      CharCase = ecUpperCase
      DataField = 'NF_MARCA'
      DataSource = DsNotaFiscal
      TabOrder = 15
    end
    object DBEditDesp: TDBEdit
      Left = 512
      Top = 70
      Width = 108
      Height = 22
      Color = 14145495
      DataField = 'NF_DESP_ACES'
      DataSource = DsNotaFiscal
      ReadOnly = True
      TabOrder = 12
    end
    object DBEditHs: TDBEdit
      Left = 512
      Top = 45
      Width = 108
      Height = 22
      AutoSelect = False
      DataField = 'NF_HORASAIDA'
      DataSource = DsNotaFiscal
      TabOrder = 6
    end
    object RadSaida: TRadioButton
      Left = 11
      Top = 15
      Width = 69
      Height = 19
      Caption = 'Sa'#237'da'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = RadSaidaClick
    end
    object RadEntrada: TRadioButton
      Left = 74
      Top = 15
      Width = 55
      Height = 20
      Caption = 'Entrada'
      TabOrder = 3
      OnClick = RadEntradaClick
    end
    object CurrNumNota: TCurrencyEdit
      Left = 684
      Top = 14
      Width = 60
      Height = 23
      TabStop = False
      Alignment = taCenter
      AutoSize = False
      Color = 14145495
      DisplayFormat = '000000'
      MaxLength = 6
      ReadOnly = True
      TabOrder = 1
      ZeroEmpty = False
      OnChange = CurrNumNotaChange
      OnExit = CurrNumNotaExit
    end
    object DBEdit1: TDBEdit
      Left = 918
      Top = 43
      Width = 40
      Height = 22
      DataField = 'NF_SERIE'
      DataSource = DsNotaFiscal
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit2: TDBEdit
      Left = 839
      Top = 43
      Width = 31
      Height = 22
      DataField = 'NF_MODELO_NF'
      DataSource = DsNotaFiscal
      ReadOnly = True
      TabOrder = 7
    end
    object DBEditDespImport: TDBEdit
      Left = 839
      Top = 70
      Width = 119
      Height = 22
      Color = 14145495
      DataField = 'NF_DESP_IMPORT'
      DataSource = DsNotaFiscal
      ReadOnly = True
      TabOrder = 9
    end
    object ChkComplementar: TDBCheckBox
      Left = 875
      Top = 17
      Width = 100
      Height = 18
      Caption = 'NF. Edit'#225'vel'
      DataField = 'NF_COMPLEMENTAR'
      DataSource = DsNotaFiscal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 19
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object CbOper: TComboBoxRw
      Left = 230
      Top = 14
      Width = 362
      Height = 22
      Hint = 'CFOP'
      TabOrder = 0
      CharCase = ecUpperCase
      OnClick = CbOperClick
      LookupSelect = 'ope_codigo, cfop, OPE_NATUREZA'
      LookupOrderBy = 'ope_descri'
      LookupTable = 'OPE0000_VIEW_PESQUISA'
      LookupDispl = 'CFOP'
      OnSelect = CbOperSelect
      GridAutoSize = False
      LookupSource = qCfop
      LookupKeyField = 'ope_codigo'
      FiltroTabela = 'OPE_ATIVA='#39'S'#39
      ShowButton = True
      LookupTableShare = 'OPERACAOFISCAL'
      AutoF8WinTitulo = 'Opera'#231#245'es Fiscais - CFOP '
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
      Tabela = 'OPE0000_VIEW_PESQUISA'
      CamposCarregar = 'ope_codigo, cfop, OPE_NATUREZA'
      CamposRetornar = 'ope_codigo'
      Condicao = 'OPE_ATIVA='#39'S'#39
      CamposOrdernar = 'ope_descri'
      Compartilhar = 'OPERACAOFISCAL'
      Localizado = False
      CodigoEmpresa = 0
      ResetaCampos = True
      MultiEmpresa = True
      Localizar = True
      CarregarCombo = True
      itemindex = 0
      style = csDropDown
    end
    object CurServicos: TCurrencyEdit
      Left = 706
      Top = 121
      Width = 100
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 3
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 20
      ZeroEmpty = False
    end
    object CurProdutos: TCurrencyEdit
      Left = 858
      Top = 121
      Width = 100
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 3
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 21
      ZeroEmpty = False
    end
    object edSerie: TEdit
      Left = 808
      Top = 15
      Width = 61
      Height = 22
      Color = 14145495
      ReadOnly = True
      TabOrder = 22
      Text = 'edSerie'
    end
    object RxDataEmissao: TJvDateEdit
      Left = 100
      Top = 45
      Width = 106
      Height = 22
      DefaultToday = True
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000B000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFE000003320000033200000FFE00000}
      ImageKind = ikCustom
      ButtonWidth = 17
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 4
      OnExit = RxDataEmissaoExit
    end
    object RxDataSaida: TJvDateEdit
      Left = 303
      Top = 45
      Width = 107
      Height = 22
      DefaultToday = True
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000B000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFE000003320000033200000FFE00000}
      ImageKind = ikCustom
      ButtonWidth = 17
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 5
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 790
      Top = 95
      Width = 168
      Height = 22
      DataField = 'nf_finalidade'
      DataSource = DsNotaFiscal
      KeyField = 'codigo'
      ListField = 'finalidade'
      ListSource = dsFinalidade
      TabOrder = 23
    end
  end
  object GroupBox5: TGroupBox [1]
    Left = 0
    Top = 0
    Width = 1484
    Height = 69
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1284
    object Label3: TLabel
      Left = 45
      Top = 19
      Width = 68
      Height = 14
      Caption = 'N'#186' do Pedido :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 89
      Top = 45
      Width = 23
      Height = 14
      Caption = 'Tipo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label33: TLabel
      Left = 782
      Top = 71
      Width = 138
      Height = 14
      Caption = 'Consumo p/ industrializa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lbInscricaoEstadual: TLabel
      Left = 437
      Top = 46
      Width = 88
      Height = 14
      Caption = 'Inscri'#231#227'o Estadual'
    end
    object DBEditPedido: TDBEdit
      Left = 119
      Top = 16
      Width = 57
      Height = 22
      Color = 14145495
      DataField = 'PED_CODIGO'
      DataSource = dsPedidos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEditCliente: TDBEdit
      Left = 176
      Top = 16
      Width = 544
      Height = 22
      Color = 14145495
      DataField = 'CLI_RAZAO'
      DataSource = dsPedidos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEOpv_codigo: TDBEdit
      Left = 117
      Top = 42
      Width = 58
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'OPV_CODIGO'
      DataSource = dsPedidos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 2
    end
    object CbTipo1: TComboBoxRw
      Left = 178
      Top = 42
      Width = 226
      Height = 22
      TabStop = False
      TabOrder = 3
      ReadOnly = True
      CharCase = ecUpperCase
      color = 14145495
      LookupSelect = 'OPV_DESCRICAO'
      LookupOrderBy = 'OPV_DESCRICAO'
      LookupTable = 'OPV0000'
      GridAutoSize = False
      LookupSource = CbTipo1.InternalSource
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
      ConexaoBanco = DBConn
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
    object dblcInscricaoEstadual: TDBLookupComboBox
      Left = 531
      Top = 41
      Width = 189
      Height = 22
      KeyField = 'EMI_CODIGO'
      ListField = 'EMI_DESCRICAO'
      ListSource = dsInscricaoEstadual
      TabOrder = 4
      OnClick = dblcInscricaoEstadualClick
    end
    object GroupBox6: TGroupBox
      Left = 726
      Top = 6
      Width = 235
      Height = 59
      Caption = 'Venda para:'
      TabOrder = 5
      object luso: TLabel
        Left = 69
        Top = 41
        Width = 136
        Height = 14
        Caption = 'Uso e consumo ou Revenda'
      end
      object Label8: TLabel
        Left = 14
        Top = 18
        Width = 166
        Height = 14
        Caption = 'Consumidor Final/N'#227'o contribuinte:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label52: TLabel
        Left = 16
        Top = 41
        Width = 51
        Height = 14
        Caption = 'Finalidade:'
      end
      object CbConsFinal: TComboBox
        Left = 181
        Top = 14
        Width = 43
        Height = 22
        Style = csSimple
        Color = 14145495
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ItemIndex = 1
        ParentFont = False
        TabOrder = 0
        Text = 'N'#195'O'
        Items.Strings = (
          'SIM'
          'N'#195'O')
      end
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 552
    Width = 1484
    Height = 37
    Align = alBottom
    ParentColor = True
    TabOrder = 3
    ExplicitWidth = 1284
    object Label13: TLabel
      Left = 8
      Top = 19
      Width = 452
      Height = 14
      Caption = 
        'Cfop M = Opera'#231#227'o Fiscal Definida Manualmente e n'#227'o '#233' aplicada a' +
        ' regra e nem usa a padr'#227'o'
    end
    object Label14: TLabel
      Left = 8
      Top = 3
      Width = 114
      Height = 14
      Caption = 'P = Produto S = Servi'#231'o'
    end
    object btnLimpar: TSpeedButton
      Left = 960
      Top = 4
      Width = 85
      Height = 27
      Hint = 'Limpa Quantidade a Faturar.'
      Caption = '&Limpar     '
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555558888F888555F55500000000555055558888888855F85555005500055055
        555588F5888F58555555005550055555555588FF588F5FF55555500550050055
        5555588FF88588FF555555005050110555555588F858888FF555555505099910
        555555FF85888888FF555005550999910555588F5F88888885F5500505509990
        3055588F85F88888585F55005055090B030555885855888585855555555550B0
        B03055555F555858585855550555550B0B335555855555858555555555555550
        BBB35555F55555585F555550555555550BBB55585555555585F5555555555555
        50BB555555555555585F555555555555550B5555555555555585}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnLimparClick
    end
    object BitConfirmaNota: TBitBtn
      Left = 729
      Top = 4
      Width = 109
      Height = 27
      Caption = '&Confirmar'
      Glyph.Data = {
        AA040000424DAA04000000000000360000002800000013000000130000000100
        18000000000074040000C40E0000C40E00000000000000000000008080008080
        0080800080800080800080808000008000000080800080800080800080800080
        8000808000808000808000808000808000808000000000808000808000808000
        8080008080800000008000008000800000008080008080008080008080008080
        0080800080800080800080800080800000000080800080800080800080808000
        0000800000800000800000800080000000808000808000808000808000808000
        8080008080008080008080000000008080008080008080800000008000008000
        0080000080000080000080008000000080800080800080800080800080800080
        8000808000808000000000808000808080000000800000800000800000FF0000
        8000008000008000008000800000008080008080008080008080008080008080
        00808000000000808000808000800000800000800000FF0000800000FF000080
        0000800000800080000000808000808000808000808000808000808000808000
        000000808000808000FF0000800000FF0000800000800000800000FF00008000
        0080000080008000000080800080800080800080800080800080800000000080
        8000808080000000FF0000800000800000800000800000800000FF0000800000
        8000008000800000008080008080008080008080008080000000008080800000
        00800000800000800000FF0000800000800000800000800000FF000080000080
        0000800080000000808000808000808000808000000000808000800000800000
        800000FF0000808000FF0000800000800000800080000000FF00008000008000
        00800080000000808000808000808000000000808000FF0000800000FF000080
        8000808000808000FF0000800000800000800080000000FF0000800000800000
        800080000000808000808000000000808000808000FF00008080008080008080
        00808000808000FF0000800000800000800080000000FF000080000080000080
        0080000000808000000000808000808000808000808000808000808000808000
        808000808000FF0000800000800000800080000000FF00008000008000800000
        0080800000000080800080800080800080800080800080800080800080800080
        8000808000FF0000800000800000800080000000FF0000800000800000808000
        0000008080008080008080008080008080008080008080008080008080008080
        00808000FF0000800000800000800080000000FF000080800080800000000080
        8000808000808000808000808000808000808000808000808000808000808000
        808000FF00008000008000008000800000008080008080000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000FF0000800000800080000000808000808000000000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        00FF000080000080000080800080800000000080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        FF00008080008080008080000000}
      TabOrder = 0
      TabStop = False
      OnClick = BitConfirmaNotaClick
    end
    object BitCancelar: TBitBtn
      Left = 844
      Top = 4
      Width = 110
      Height = 27
      Caption = '&Abandonar'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 1
      TabStop = False
      OnClick = BitCancelarClick
    end
    object ChkNFE: TCheckBox
      Left = 466
      Top = 4
      Width = 99
      Height = 17
      Caption = 'Enviar NFe 4.0 SEFAZ'
      TabOrder = 2
      Visible = False
      OnClick = ChkNFEClick
    end
    object chkNotaConsumidor: TCheckBox
      Left = 466
      Top = 19
      Width = 97
      Height = 17
      Hint = 'Nota Consumidor'
      Caption = 'Gerar NFC-e'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = chkNotaConsumidorClick
    end
    object btnEmpresa: TBitBtn
      Left = 617
      Top = 4
      Width = 109
      Height = 27
      Caption = 'Mudar Empresa'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF694117
        6941176941176941176941176941176941176941176941176941176941176941
        17694117694117FF00FF694117694117AA7341A7703FA76F3EA76F3DA76F3DA7
        6F3DA76F3DA76F3DA7703EA7703FA7703FAA72406941176941176941178A5223
        884F21884F21874F21834D21844E22844E22834E22834D2181491C83491B8950
        21884F218B5223694117694117804619804519804519804519D9DAD9D9DAD9D9
        DAD9D9DAD9D9DAD9BBAC9D8B6541783E1281451981461969411769411782471A
        82471A82471A82471AD9DAD9D9DAD9D9DAD9D9DAD9D9DAD9D9DAD9E1E6EA9776
        577D411383471A694117694117894E20894E20894F20884D1F83461883481A86
        4A1C84491C834819915E33D8D4CFCFCCC9834F248A4D1F694117694117905426
        9054269055268B4D1E966B44D9DAD98F5222905425905425894A1ABCA48AE7ED
        F291653F905122694117694117965B2D975A2C9153239F724AD9DAD9D9DAD993
        5524975A2A975A2A8F4F1FBAA088EEF3F89A6D459658286941176941179D6332
        995B2B9D734CDDDCDAF0F4F8D9DAD9925A2C955E32965E31A0764FD5D4D0D1CF
        CA9862359E6030694117694117A06534A4754CD9D8D7DDDEE1E9EBEEE9EBEEE9
        EBEEE9EBEEE9EBEEEBF0F4E5E6E7A983609E6231A46A3A694117694117AF794B
        B1875FE6E3E0E6E9EAE9EBEEE9EBEEE9EBEEE9EBEECFC6BCC6B29EB48A64A972
        43AF794CB27E51694117694117BD8F66B8865BBD9876E9E7E5E9EBEEE9EBEEB5
        8358B6875DB6865CB58358B8875CBB8B62BA8A62BD8E66694117694117C79D78
        C49872C0926BC6A484E7E6E3E9EBEEC2956DC49772C49772C49872C49772C497
        72C49772C99D77694117694117CEAB8BCFA686CCA684CAA17ECBAF93E9EBEECC
        A582CCA683CCA683CCA683CCA683CCA683CEA684D1AD8E694117694117694117
        D9BBA0DCBCA0DCBC9FD9B89CD9BA9DDCBBA0DABB9FDABB9FDABB9FDABB9FDCBC
        A0DABCA1694117694117FF00FF69411769411769411769411769411769411769
        4117694117694117694117694117694117694117694117FF00FF}
      TabOrder = 4
      TabStop = False
      OnClick = btnEmpresaClick
    end
    object chkFreteProporcional: TCheckBox
      Left = 155
      Top = 3
      Width = 256
      Height = 17
      Caption = 'Utilizar frete proporcional '#224' quantidade faturada'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 5
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 69
    Width = 1484
    Height = 150
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 1284
    object GroupBox3: TGroupBox
      Left = 0
      Top = 0
      Width = 402
      Height = 150
      Align = alLeft
      Caption = 'Conta / Banco'
      TabOrder = 0
      object Label18: TLabel
        Left = 32
        Top = 51
        Width = 50
        Height = 14
        Caption = 'Cobran'#231'a:'
        Color = clBtnFace
        ParentColor = False
      end
      object Label5: TLabel
        Left = 2
        Top = 84
        Width = 80
        Height = 14
        Caption = 'Tipo Documento:'
      end
      object Label37: TLabel
        Left = 4
        Top = 115
        Width = 78
        Height = 14
        Alignment = taRightJustify
        Caption = 'Forma de Pagto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object CbxCarteira: TComboBox
        Left = 83
        Top = 47
        Width = 313
        Height = 22
        Style = csDropDownList
        CharCase = ecUpperCase
        Color = clWhite
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
        Left = 83
        Top = 80
        Width = 313
        Height = 22
        Style = csDropDownList
        Color = clWhite
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
      object CbBancos: TComboBoxRw
        Left = 52
        Top = 19
        Width = 321
        Height = 22
        TabOrder = 1
        CharCase = ecUpperCase
        LookupSelect = 'BAN_CODIGO,BAN_APELIDO,BAN_COBTIPO,BAN_COD_APELIDO'
        LookupOrderBy = 'ban_apelido'
        LookupTable = 'ban0000'
        LookupDispl = 'BAN_APELIDO'
        OnSelect = CbBancosSelect
        GridAutoSize = False
        LookupSource = CbTransportadora.InternalSource
        LookupKeyField = 'BAN_CODIGO'
        FiltroTabela = 'BAN_ATIVO = '#39'S'#39
        ShowButton = True
        LookupTableShare = 'BANCOS'
        AutoF8WinTitulo = 'Bancos'
        AutoF8ColumnsTitulo = 'C'#243'digo, Apelido'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridTop = 0
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        LimparCampoAoSair = True
        Tabela = 'ban0000'
        CamposCarregar = 'BAN_CODIGO,BAN_APELIDO,BAN_COBTIPO,BAN_COD_APELIDO'
        CamposRetornar = 'BAN_CODIGO'
        Condicao = 'BAN_ATIVO = '#39'S'#39
        CamposOrdernar = 'ban_apelido'
        ConexaoBanco = DBConn
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
      object edFPagto: TSgDbSearchCombo
        Left = 83
        Top = 111
        Width = 287
        Height = 22
        TabOrder = 4
        CharCase = ecUpperCase
        LookupSelect = 'FPG_DESCRICAO, FPG_REGISTRO'
        LookupOrderBy = 'FPG_DESCRICAO'
        LookupTable = 'FORMA_PAGAMENTO'
        LookupDispl = 'FPG_DESCRICAO'
        GridAutoSize = False
        LookupSource = qFPagto
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
      object CurrcodBanco: TEdit
        Left = 6
        Top = 19
        Width = 44
        Height = 22
        Alignment = taCenter
        AutoSize = False
        Color = clWhite
        MaxLength = 4
        TabOrder = 0
        OnExit = CurrcodBancoExit
      end
    end
    object pgcDetalhes: TPageControl
      Left = 402
      Top = 0
      Width = 559
      Height = 150
      ActivePage = TabSheet3
      Align = alLeft
      TabOrder = 1
      TabStop = False
      object TabSheet1: TTabSheet
        Caption = 'Dados Adicionais'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object ScrollBox1: TScrollBox
          Left = 0
          Top = 0
          Width = 551
          Height = 121
          Align = alClient
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          object DBMemoObs: TDBMemo
            Left = 0
            Top = 0
            Width = 551
            Height = 121
            Align = alClient
            DataField = 'NF_OBSERVACAO'
            DataSource = DsNotaFiscal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnExit = DBMemoObsExit
          end
          object Panel6: TPanel
            Left = 522
            Top = 4
            Width = 25
            Height = 25
            TabOrder = 0
            object SpeedButton1: TSpeedButton
              Left = 2
              Top = 2
              Width = 23
              Height = 22
              Hint = 'Adicionar Observa'#231#227'o Cadastrada'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E0EFFFFFF0E0E0E8F690A8F
                690A8F690A8F690A8F690AFFFFFFFFFFFF0E0E0EFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF0E0E0E0E0E0E0E0E0E97740B97740B97740B97740B97740B000000FFFF
                FF0E0E0EFFFFFFFFFFFF0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0EA2
                830DA2830DA2830DA2830DFFFFFFFFFFFF0E0E0EFFFFFFFFFFFF0E0E0EBFC7C7
                BFC7C7BFC7C7BFC7C7BFC7C70E0E0EAF940FAF940FAF940FAF940F000000FFFF
                FF0E0E0EFFFFFFFFFFFF0E0E0ED7DBDBD7DBDBD7DBDBD7DBDBD7DBDB0E0E0EBA
                A411BAA411BAA411BAA411FFFFFFFFFFFF0E0E0EFFFFFFFFFFFF0E0E0EEEEFEF
                EEEFEFEEEFEFEEEFEFEEEFEF0E0E0EC2AE12C2AE12C2AE12C2AE12000000FFFF
                FF0E0E0EFFFFFFFFFFFF0000000000008181810000008181810000000E0E0EBA
                A411BAA411BAA411BAA411FFFFFFFFFFFF0E0E0EFFFFFFFFFFFF000000FFFFFF
                000000FFFFFF000000FFFFFF0E0E0EAF940FAF940FAF940FAF940F000000FFFF
                FF0E0E0EFFFFFFFFFFFF0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0EA2
                830DA2830DA2830DA2830DFFFFFFFFFFFF0E0E0EFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF0E0E0E0E0E0E0E0E0E97740B97740B97740B97740B97740B000000FFFF
                FF0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E0EFFFFFF0E0E0E8F690A8F
                690A8F690A8F690A8F690AFFFFFFFFFFFF0E0E0EFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
                0E0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton1Click
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Transporte'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label4: TLabel
          Left = 11
          Top = 59
          Width = 66
          Height = 14
          Alignment = taRightJustify
          Caption = 'Placa ve'#237'culo:'
        end
        object Label34: TLabel
          Left = 164
          Top = 59
          Width = 16
          Height = 14
          Alignment = taRightJustify
          Caption = 'UF:'
        end
        object Label16: TLabel
          Left = 11
          Top = 88
          Width = 66
          Height = 14
          Caption = 'Tipo do Frete:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 7
          Top = 8
          Width = 78
          Height = 14
          Alignment = taRightJustify
          Caption = 'Transportadora:'
        end
        object EdTransportadoraCodigo: TEdit
          Left = 5
          Top = 23
          Width = 43
          Height = 22
          CharCase = ecUpperCase
          Color = clWhite
          MaxLength = 5
          TabOrder = 0
          OnExit = EdTransportadoraCodigoExit
        end
        object CbTransportadora: TComboBoxRw
          Left = 52
          Top = 23
          Width = 472
          Height = 22
          TabOrder = 1
          CharCase = ecUpperCase
          LookupSelect = 'TRP_CODIGO, TRP_RAZAO, TRP_PLACA, TRP_PLACAUF'
          LookupOrderBy = 'TRP_RAZAO'
          LookupTable = 'TRP0000'
          OnSelect = CbTransportadoraSelect
          GridAutoSize = False
          LookupSource = CbTransportadora.InternalSource
          LookupKeyField = 'TRP_CODIGO'
          ShowButton = True
          LookupTableShare = 'TABELAS'
          AutoF8WinTitulo = 'Transportadoras'
          AutoF8ColumnsTitulo = 'C'#243'digo,Transportadora, Placa, UF'
          GridLeft = 0
          GridWidth = 0
          GridHeight = 100
          GridTop = 0
          GridShowWhenEnter = False
          SelectWithDoubleClick = False
          LimparCampoAoSair = True
          Tabela = 'TRP0000'
          CamposCarregar = 'TRP_CODIGO, TRP_RAZAO, TRP_PLACA, TRP_PLACAUF'
          CamposRetornar = 'TRP_CODIGO'
          CamposOrdernar = 'TRP_RAZAO'
          ConexaoBanco = DBConn
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
        object DBEditPlacaVeiculo: TDBEdit
          Left = 79
          Top = 54
          Width = 72
          Height = 22
          CharCase = ecUpperCase
          DataField = 'NF_PLACAVE'
          DataSource = DsNotaFiscal
          TabOrder = 2
        end
        object DBEdPlaca: TDBEdit
          Left = 183
          Top = 54
          Width = 26
          Height = 22
          CharCase = ecUpperCase
          DataField = 'NF_UFVEICULO'
          DataSource = DsNotaFiscal
          TabOrder = 3
        end
        object CbTipoFrete: TComboBox
          Left = 79
          Top = 83
          Width = 234
          Height = 22
          Hint = 
            '0-Remetente (CIF)'#13#10'1-Destinat'#225'rio (FOB)'#13#10'2-Terceiros'#13#10'3-Pr'#243'prio ' +
            'por conta do remetente'#13#10'4-Pr'#243'prio por conta do destinat'#225'rio'#13#10'9-S' +
            'em frete'
          Style = csOwnerDrawFixed
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Items.Strings = (
            '0-Remetente (CIF)'
            '1-Destinat'#225'rio (FOB)'
            '2-Terceiros'
            '3-Pr'#243'prio por conta do remetente'
            '4-Pr'#243'prio por conta do destinat'#225'rio'
            '9-Sem frete')
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Devolu'#231#227'o'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox7: TLabel
          Left = 7
          Top = 31
          Width = 261
          Height = 14
          Caption = 'Nfe Referenciada - Obrigat'#243'rio em caso de Devolu'#231#227'o'
        end
        object DBEdit3: TDBEdit
          Left = 5
          Top = 47
          Width = 500
          Height = 22
          Hint = 
            'Informar chave de 44 d'#237'gitos da Nfe de entrada da mercadoria que' +
            ' est'#225' sendo devolvida'
          CharCase = ecUpperCase
          DataField = 'NF_CHAVE_NFE_REFERENCIADA'
          DataSource = DsNotaFiscal
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object btnAdicionar: TBitBtn
          Left = 511
          Top = 46
          Width = 25
          Height = 25
          Hint = 'Adicionar outras chaves'
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            0400000000007000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3300333333333333330033333333333333003333300033333300333330003333
            3300333330003333330033000000000333003300000000033300330000000003
            3300333330003333330033333000333333003333300033333300333333333333
            33003333333333333300}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnAdicionarClick
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Exporta'#231#227'o'
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label11: TLabel
          Left = 15
          Top = 12
          Width = 67
          Height = 14
          Caption = 'UF Embarque:'
          ParentShowHint = False
          ShowHint = True
        end
        object Label12: TLabel
          Left = 2
          Top = 41
          Width = 80
          Height = 14
          Caption = 'Local Embarque:'
          ParentShowHint = False
          ShowHint = True
        end
        object Label19: TLabel
          Left = 6
          Top = 63
          Width = 317
          Height = 14
          Caption = 'Nfe Referenciada - obrigat'#243'rio em nota de exporta'#231#227'o CFOP 7501'
        end
        object CbExportUF: TComboBox
          Left = 84
          Top = 10
          Width = 51
          Height = 22
          TabOrder = 0
          Items.Strings = (
            'PR'
            'SP'
            'RJ'
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'EX'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PE'
            'PI'
            'RN'
            'RS'
            'RO'
            'RR'
            'SC'
            'SE'
            'TO')
        end
        object ExportLocalEmbarque: TEdit
          Left = 84
          Top = 35
          Width = 316
          Height = 22
          CharCase = ecUpperCase
          MaxLength = 60
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 2
          Top = 79
          Width = 518
          Height = 22
          Hint = 
            'Informar chave de 44 d'#237'gitos da Nfe de entrada da mercadoria que' +
            ' est'#225' sendo devolvida'
          CharCase = ecUpperCase
          DataField = 'NF_CHAVE_NFE_REFERENCIADA'
          DataSource = DsNotaFiscal
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object BitBtn1: TBitBtn
          Left = 523
          Top = 78
          Width = 25
          Height = 25
          Hint = 'Adicionar outras chaves'
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            0400000000007000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3300333333333333330033333333333333003333300033333300333330003333
            3300333330003333330033000000000333003300000000033300330000000003
            3300333330003333330033333000333333003333300033333300333333333333
            33003333333333333300}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = btnAdicionarClick
        end
      end
      object tsServico: TTabSheet
        Caption = 'Servi'#231'o'
        ImageIndex = 4
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label38: TLabel
          Left = 3
          Top = 9
          Width = 83
          Height = 14
          Caption = 'Local do servi'#231'o:'
        end
        object Label43: TLabel
          Left = 393
          Top = 9
          Width = 16
          Height = 14
          Caption = 'UF:'
        end
        object SpeedButton5: TSpeedButton
          Left = 442
          Top = 6
          Width = 22
          Height = 21
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
          OnClick = SpeedButton5Click
        end
        object edcidade: TEdit
          Left = 90
          Top = 6
          Width = 294
          Height = 22
          TabStop = False
          CharCase = ecUpperCase
          Color = 14145495
          ReadOnly = True
          TabOrder = 0
        end
        object edUF: TEdit
          Left = 412
          Top = 6
          Width = 29
          Height = 22
          TabStop = False
          CharCase = ecUpperCase
          Color = 14145495
          ReadOnly = True
          TabOrder = 1
        end
        object GroupBox4: TGroupBox
          Left = 2
          Top = 29
          Width = 534
          Height = 89
          Caption = 'Reten'#231#227'o'
          TabOrder = 2
          object Label39: TLabel
            Left = 18
            Top = 18
            Width = 19
            Height = 14
            Caption = 'ISS:'
          end
          object Label40: TLabel
            Left = 11
            Top = 41
            Width = 26
            Height = 14
            Caption = 'INSS:'
          end
          object Label41: TLabel
            Left = 8
            Top = 65
            Width = 29
            Height = 14
            Caption = 'CSLL:'
          end
          object Label42: TLabel
            Left = 281
            Top = 18
            Width = 12
            Height = 14
            Caption = 'IR:'
          end
          object Label44: TLabel
            Left = 278
            Top = 41
            Width = 18
            Height = 14
            Caption = 'PIS:'
          end
          object Label45: TLabel
            Left = 256
            Top = 65
            Width = 40
            Height = 14
            Caption = 'COFINS:'
          end
          object Label46: TLabel
            Left = 112
            Top = 19
            Width = 10
            Height = 14
            Caption = '%'
          end
          object Label47: TLabel
            Left = 113
            Top = 42
            Width = 10
            Height = 14
            Caption = '%'
          end
          object Label48: TLabel
            Left = 115
            Top = 65
            Width = 10
            Height = 14
            Caption = '%'
          end
          object Label49: TLabel
            Left = 374
            Top = 19
            Width = 10
            Height = 14
            Caption = '%'
          end
          object Label50: TLabel
            Left = 375
            Top = 42
            Width = 10
            Height = 14
            Caption = '%'
          end
          object Label51: TLabel
            Left = 377
            Top = 65
            Width = 10
            Height = 14
            Caption = '%'
          end
          object edISS: TCurrencyEdit
            Left = 50
            Top = 16
            Width = 58
            Height = 22
            TabStop = False
            Alignment = taLeftJustify
            AutoSize = False
            Color = 14145495
            DisplayFormat = ',0.00'
            ReadOnly = True
            TabOrder = 0
          end
          object edINSS: TCurrencyEdit
            Left = 50
            Top = 39
            Width = 58
            Height = 22
            TabStop = False
            Alignment = taLeftJustify
            AutoSize = False
            Color = 14145495
            DisplayFormat = ',0.00'
            ReadOnly = True
            TabOrder = 1
          end
          object edCSLL: TCurrencyEdit
            Left = 50
            Top = 63
            Width = 58
            Height = 22
            TabStop = False
            Alignment = taLeftJustify
            AutoSize = False
            Color = 14145495
            DisplayFormat = ',0.00'
            ReadOnly = True
            TabOrder = 2
          end
          object EDir: TCurrencyEdit
            Left = 304
            Top = 16
            Width = 67
            Height = 22
            TabStop = False
            Alignment = taLeftJustify
            AutoSize = False
            Color = 14145495
            DisplayFormat = ',0.00'
            ReadOnly = True
            TabOrder = 3
          end
          object edPIS: TCurrencyEdit
            Left = 304
            Top = 39
            Width = 67
            Height = 22
            TabStop = False
            Alignment = taLeftJustify
            AutoSize = False
            Color = 14145495
            DisplayFormat = ',0.00'
            ReadOnly = True
            TabOrder = 4
          end
          object edCOFINS: TCurrencyEdit
            Left = 304
            Top = 63
            Width = 67
            Height = 22
            TabStop = False
            Alignment = taLeftJustify
            AutoSize = False
            Color = 14145495
            DisplayFormat = ',0.00'
            ReadOnly = True
            TabOrder = 5
          end
          object edValorISS: TCurrencyEdit
            Left = 130
            Top = 15
            Width = 95
            Height = 22
            TabStop = False
            Alignment = taLeftJustify
            Color = 14145495
            ReadOnly = True
            TabOrder = 6
          end
          object edValorINSS: TCurrencyEdit
            Left = 130
            Top = 38
            Width = 95
            Height = 22
            TabStop = False
            Alignment = taLeftJustify
            Color = 14145495
            ReadOnly = True
            TabOrder = 7
          end
          object edValorCSLL: TCurrencyEdit
            Left = 130
            Top = 62
            Width = 95
            Height = 22
            TabStop = False
            Alignment = taLeftJustify
            Color = 14145495
            ReadOnly = True
            TabOrder = 8
          end
          object edValorCOFINS: TCurrencyEdit
            Left = 402
            Top = 62
            Width = 95
            Height = 22
            TabStop = False
            Alignment = taLeftJustify
            Color = 14145495
            ReadOnly = True
            TabOrder = 9
          end
          object edValorIR: TCurrencyEdit
            Left = 402
            Top = 15
            Width = 95
            Height = 22
            TabStop = False
            Alignment = taLeftJustify
            Color = 14145495
            ReadOnly = True
            TabOrder = 10
          end
          object edValorPIS: TCurrencyEdit
            Left = 402
            Top = 38
            Width = 95
            Height = 22
            TabStop = False
            Alignment = taLeftJustify
            Color = 14145495
            ReadOnly = True
            TabOrder = 11
          end
        end
      end
    end
  end
  object GroupBox2: TGroupBox [4]
    Left = 0
    Top = 369
    Width = 1484
    Height = 183
    Align = alClient
    Caption = 'Itens do Pedido '#224' Faturar'
    TabOrder = 4
    ExplicitWidth = 1284
    object PanOperacao: TLabel
      Left = 630
      Top = 18
      Width = 4
      Height = 16
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GridItensNota: TDBGrid
      Left = 2
      Top = 16
      Width = 1480
      Height = 165
      Align = alClient
      Color = clWhite
      DataSource = DsItemPedido
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      PopupMenu = mPedidoItem
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = GridItensNotaDrawColumnCell
      OnDblClick = GridItensNotaDblClick
      OnKeyDown = GridItensNotaKeyDown
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PRD_PRODSERV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'P/S'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CC_ID'
          Title.Alignment = taCenter
          Title.Caption = 'Id'
          Width = 21
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CFOP'
          Title.Caption = 'Cfop M'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_REFER'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRF_PRDDESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 332
          Visible = True
        end
        item
          Color = 15780262
          Expanded = False
          FieldName = 'PRF_QTDE'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde Total'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRF_QTDEPEND'
          Title.Alignment = taCenter
          Title.Caption = 'Falta'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRF_QTDEFAT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Qtde Faturada'
          Width = 81
          Visible = True
        end
        item
          Color = 15780262
          Expanded = False
          FieldName = 'PRF_QTDE_FATURAR_CC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Qtde '#224' Faturar'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRF_PRECO'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_FATURAR'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Width = 75
          Visible = True
        end>
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 1456
    Top = 456
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 1552
    Top = 456
  end
  inherited DBConn: TSQLConnection
    Left = 128
    Top = 97
  end
  inherited qRecParce: TSQLQuery
    Left = 1194
    Top = 4
    inherited qRecParceFAT_REGISTRO: TIntegerField
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    inherited qRecParceFPC_NUMER: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceREP_CODIGO: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceBAN_CODIGO: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceCCT_CODIGO: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParcePCX_CODIGO: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_DTEMIS: TSQLTimeStampField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_NPARCELAS: TSmallintField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_COBNUM: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_COBTIPO: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_TIPODOC: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_SITPAG: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_STATUS: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_DESCTO: TFMTBCDField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_DTDESC: TSQLTimeStampField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_VENCTO: TSQLTimeStampField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_PAGTO: TSQLTimeStampField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_VLPARC: TFMTBCDField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_VLPAGO: TFMTBCDField
      ProviderFlags = [pfInUpdate]
      currency = True
    end
    inherited qRecParceFPC_OBS: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceCLI_CODIGO: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_IMPDUP: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_JUROS: TFMTBCDField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_MULTA: TFMTBCDField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_VL_RET: TFMTBCDField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceEMP_CODIGO: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceCCT_NOVO: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_PREVISAO: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_STATUS_REMESSA: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_DATA_REMESSA: TDateField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceBAN_COD_APELIDO: TIntegerField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_STATUS_BAIXA: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_FORMAPAGTO: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_DESCONTADO: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_DATADESCTO: TDateField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_CONFIRMADESCTO: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_CONFIRMADEVOLUCAO: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_DATADEVOLUCAO: TDateField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_OBS_DESCTO: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_JUROS_DESCTO: TFMTBCDField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParcePAG_CODIGO: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_BANCO_CHEQUE: TIntegerField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_NUM_CHEQUE: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_NUM_CHEQUE_DV: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_CHEQUE_DATA: TDateField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_SACADO_CHEQUE: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_EXCLUSAO: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_DATA_EXCLUSAO: TDateField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_HORA_EXCLUSAO: TTimeField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_MOTIVO_EXCLUSAO: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceUSU_CODIGO: TIntegerField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceUSU_LOGIN: TStringField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParcePCXPF_REGISTRO: TIntegerField
      ProviderFlags = [pfInUpdate]
    end
    inherited qRecParceFPC_REEMBOLSO: TStringField
      ProviderFlags = [pfInUpdate]
    end
    object qRecParceFAT_NUMSERIE: TStringField [55]
      FieldName = 'FAT_NUMSERIE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    inherited qRecParceFPG_REGISTRO: TIntegerField
      ProviderFlags = [pfInUpdate]
    end
  end
  inherited dspRecParce: TDataSetProvider
    Left = 1194
    Top = 64
  end
  inherited CdsRecParce: TClientDataSet
    BeforeInsert = CdsRecParceBeforeInsert
    Left = 1194
    Top = 120
    inherited CdsRecParceFAT_REGISTRO: TIntegerField
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    inherited CdsRecParceFPC_VLPARC: TFMTBCDField
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.000'
      currency = True
      Precision = 15
      Size = 8
    end
    inherited CdsRecParceFPC_VLPAGO: TFMTBCDField
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,##0.000'
      currency = True
      Precision = 15
      Size = 8
    end
    inherited CdsRecParceFPC_MULTA: TFMTBCDField
      ProviderFlags = [pfInUpdate]
    end
    inherited CdsRecParceFPC_VL_RET: TFMTBCDField
      ProviderFlags = [pfInUpdate]
    end
    inherited CdsRecParceTotalParc: TAggregateField
      currency = True
    end
  end
  object CdsItemPedido: TClientDataSet [12]
    Aggregates = <>
    AggregatesActive = True
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspItemPedido'
    OnCalcFields = CdsItemPedidoCalcFields
    Left = 1003
    Top = 222
    object CdsItemPedidoCC_ID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CC_ID'
      DisplayFormat = '00'
      EditFormat = '00'
      Calculated = True
    end
    object CdsItemPedidoCFOP: TStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = 'CFOP'
      Size = 4
      Calculated = True
    end
    object CdsItemPedidoCFOP_Codigo: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFOP_Codigo'
      Size = 3
      Calculated = True
    end
    object CdsItemPedidoPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsItemPedidoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = []
      Size = 7
    end
    object CdsItemPedidoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      ProviderFlags = []
    end
    object CdsItemPedidoPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      ProviderFlags = []
      Precision = 18
      Size = 5
    end
    object CdsItemPedidoPRF_QTDEFAT: TFMTBCDField
      FieldName = 'PRF_QTDEFAT'
      Precision = 18
      Size = 5
    end
    object CdsItemPedidoPRF_PRECO: TFMTBCDField
      FieldName = 'PRF_PRECO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object CdsItemPedidoPRF_CUSTO: TFMTBCDField
      FieldName = 'PRF_CUSTO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 5
    end
    object CdsItemPedidoPRF_MARGEM_PRODUTO: TFMTBCDField
      FieldName = 'PRF_MARGEM_PRODUTO'
      Precision = 18
      Size = 5
    end
    object CdsItemPedidoPRF_IDESCTO1: TFloatField
      FieldName = 'PRF_IDESCTO1'
    end
    object CdsItemPedidoPRF_IDESCTO2: TFloatField
      FieldName = 'PRF_IDESCTO2'
    end
    object CdsItemPedidoPRF_SITUACAO: TStringField
      FieldName = 'PRF_SITUACAO'
      Size = 1
    end
    object CdsItemPedidoPRF_ITEMCOMIS: TFMTBCDField
      FieldName = 'PRF_ITEMCOMIS'
      Precision = 18
      Size = 5
    end
    object CdsItemPedidoPRF_IPIALIQ: TFMTBCDField
      FieldName = 'PRF_IPIALIQ'
      Precision = 18
      Size = 5
    end
    object CdsItemPedidoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsItemPedidoPRF_PRECO_1: TFMTBCDField
      FieldName = 'PRF_PRECO_1'
      Precision = 18
      Size = 5
    end
    object CdsItemPedidoPRD_PMEDIO: TFMTBCDField
      FieldName = 'PRD_PMEDIO'
      Precision = 18
      Size = 5
    end
    object CdsItemPedidoPRF_PRECO_BRUTO: TFMTBCDField
      FieldName = 'PRF_PRECO_BRUTO'
      Precision = 18
      Size = 5
    end
    object CdsItemPedidoPRF_OP: TStringField
      FieldName = 'PRF_OP'
      Size = 1
    end
    object CdsItemPedidoPRF_FLAG_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'PRF_FLAG_ATUALIZA_ESTOQUE'
      Size = 1
    end
    object CdsItemPedidoPRF_ORIGEM_ITEM: TStringField
      FieldName = 'PRF_ORIGEM_ITEM'
      Size = 1
    end
    object CdsItemPedidoPRF_PRODUTO_AGREGADO: TStringField
      FieldName = 'PRF_PRODUTO_AGREGADO'
      Size = 1
    end
    object CdsItemPedidoAMX_CODIGO_DESTINO: TStringField
      FieldName = 'AMX_CODIGO_DESTINO'
      Size = 4
    end
    object CdsItemPedidoPRF_COMPL_DESCRI: TStringField
      FieldName = 'PRF_COMPL_DESCRI'
      Size = 150
    end
    object CdsItemPedidoPRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
    end
    object CdsItemPedidoPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
    end
    object CdsItemPedidoPRDCO_CODIGO_ORIGINAL: TStringField
      FieldName = 'PRDCO_CODIGO_ORIGINAL'
      Size = 60
    end
    object CdsItemPedidoPRF_ICMSALIQ: TFMTBCDField
      FieldName = 'PRF_ICMSALIQ'
      Precision = 18
      Size = 5
    end
    object CdsItemPedidoSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      ProviderFlags = []
      Size = 2
    end
    object CdsItemPedidoPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      ProviderFlags = []
      Precision = 18
      Size = 5
    end
    object CdsItemPedidoPRD_CUSTOIPI: TFMTBCDField
      FieldName = 'PRD_CUSTOIPI'
      ProviderFlags = []
      Precision = 18
      Size = 5
    end
    object CdsItemPedidoPRD_ORIGEM: TIntegerField
      FieldName = 'PRD_ORIGEM'
      ProviderFlags = []
    end
    object CdsItemPedidoIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      ProviderFlags = []
      Size = 8
    end
    object CdsItemPedidoPRD_PRODUTO: TStringField
      FieldName = 'PRD_PRODUTO'
      ProviderFlags = []
      Required = True
      Size = 5
    end
    object CdsItemPedidoPRD_PESOKG: TFMTBCDField
      FieldName = 'PRD_PESOKG'
      ProviderFlags = []
      Precision = 18
      Size = 5
    end
    object CdsItemPedidoPRD_PESOLIQ: TFMTBCDField
      FieldName = 'PRD_PESOLIQ'
      ProviderFlags = []
      Precision = 18
      Size = 5
    end
    object CdsItemPedidoPRD_CUSTOCOMIPI: TFMTBCDField
      FieldName = 'PRD_CUSTOCOMIPI'
      ProviderFlags = []
      Precision = 18
      Size = 5
    end
    object CdsItemPedidoIPI_POR_PRODUTO: TFMTBCDField
      FieldName = 'IPI_POR_PRODUTO'
      Precision = 18
      Size = 5
    end
    object CdsItemPedidoPGR_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'PGR_ATUALIZA_ESTOQUE'
      Size = 1
    end
    object CdsItemPedidoPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
    object CdsItemPedidoPTI_ATUALIZAR_ESTOQUE: TStringField
      FieldName = 'PTI_ATUALIZAR_ESTOQUE'
      ProviderFlags = []
      Size = 1
    end
    object CdsItemPedidoOPV_ATESTOQUE: TStringField
      FieldName = 'OPV_ATESTOQUE'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CdsItemPedidoPRD_PRODSERV: TStringField
      FieldName = 'PRD_PRODSERV'
      ProviderFlags = []
      Size = 1
    end
    object CdsItemPedidoPRD_REFER_MP: TStringField
      FieldName = 'PRD_REFER_MP'
      ProviderFlags = []
    end
    object CdsItemPedidoPGR_CODIGO_1: TStringField
      FieldName = 'PGR_CODIGO_1'
      ProviderFlags = []
      Size = 3
    end
    object CdsItemPedidoPRF_PRDDESCRI: TStringField
      FieldName = 'PRF_PRDDESCRI'
      ProviderFlags = []
      Size = 100
    end
    object CdsItemPedidoPRD_ESPECIFICO: TStringField
      FieldName = 'PRD_ESPECIFICO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsItemPedidoID_PRD_ESPECIFICO: TIntegerField
      FieldName = 'ID_PRD_ESPECIFICO'
      ProviderFlags = []
    end
    object CdsItemPedidoPRD_ESPECIFICO_REDST: TSingleField
      FieldName = 'PRD_ESPECIFICO_REDST'
    end
    object CdsItemPedidoPRF_QTDE_FATURAR_CC: TFMTBCDField
      FieldName = 'PRF_QTDE_FATURAR_CC'
      ProviderFlags = []
      Size = 0
    end
    object CdsItemPedidoTOTAL_FATURAR: TFMTBCDField
      FieldName = 'TOTAL_FATURAR'
      ProviderFlags = []
      DisplayFormat = '###,###,##0.00'
      Precision = 12
      Size = 5
    end
    object CdsItemPedidoOpe_Natureza: TStringField
      FieldName = 'Ope_Natureza'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsItemPedidoOpe_Codigo: TStringField
      FieldName = 'Ope_Codigo'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsItemPedidoPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      ProviderFlags = []
      Size = 2
    end
    object CdsItemPedidoPRF_REGISTRO_VINCULADO: TIntegerField
      FieldName = 'PRF_REGISTRO_VINCULADO'
      ProviderFlags = []
    end
    object CdsItemPedidoPRF_QTDEPEND: TFMTBCDField
      FieldName = 'PRF_QTDEPEND'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsItemPedidoIPI_REDVLLIQ: TStringField
      FieldName = 'IPI_REDVLLIQ'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsItemPedidoPRF_PRODUTO_SEMVALOR: TStringField
      FieldName = 'PRF_PRODUTO_SEMVALOR'
      Size = 1
    end
    object CdsItemPedidoKIT_VIRTUAL: TIntegerField
      FieldName = 'KIT_VIRTUAL'
      ProviderFlags = []
    end
    object CdsItemPedidoprd_cbenef: TStringField
      FieldName = 'prd_cbenef'
      ProviderFlags = []
      Size = 8
    end
    object CdsItemPedidoalterou_cbenef: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'alterou_cbenef'
      ProviderFlags = []
      Visible = False
      OnGetText = CdsItemPedidoalterou_cbenefGetText
    end
    object CdsItemPedidoRegraCFOP: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'RegraCFOP'
    end
    object CdsItemPedidoOPE_CODIGO_RETORNO: TStringField
      FieldName = 'OPE_CODIGO_RETORNO'
      Size = 3
    end
    object CdsItemPedidoCAP_CODIGO: TIntegerField
      FieldName = 'CAP_CODIGO'
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
  object DsItemPedido: TDataSource [13]
    DataSet = CdsItemPedido
    Left = 1011
    Top = 270
  end
  object qCfop: TSQLQuery [14]
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DBConn
    Left = 1019
    Top = 28
  end
  object qItemPedido: TSQLQuery [15]
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT p1.PRF_REGISTRO,'
      '       p1.PED_CODIGO,'
      '       p1.PRD_REFER,'
      '       p1.PRF_QTDE,'
      '       p1.PRF_QTDEFAT,'
      '       p1.PRF_PRECO,'
      '       p1.PRF_CUSTO,'
      '       p1.PRF_MARGEM_PRODUTO,'
      '       p1.PRF_IDESCTO1,'
      '       p1.PRF_IDESCTO2,'
      '       p1.PRF_SITUACAO,'
      '       p1.PRF_ITEMCOMIS,'
      '       p1.PRF_IPIALIQ,'
      '       p1.EMP_CODIGO,'
      '       p1.PRF_PRECO,'
      '       p1.PRF_PRECO_BRUTO,'
      '       p1.PRF_OP,'
      '       p1.PRF_FLAG_ATUALIZA_ESTOQUE,'
      '       p1.PRF_ORIGEM_ITEM,'
      '       p1.PRF_PRODUTO_AGREGADO,'
      '       p1.AMX_CODIGO_DESTINO,'
      '       p1.PRF_COMPL_DESCRI,'
      '       p1.PRG_REGISTRO,'
      '       p1.PRDL_REGISTRO,'
      '       p1.PRDCO_CODIGO_ORIGINAL,'
      '       P1.PRF_ICMSALIQ,'
      '       COALESCE(P2.STB_TRIBUTACAO,'#39'00'#39') AS STB_TRIBUTACAO,'
      '       P2.PRD_PCUSTO,'
      '       P2.PRD_CUSTOIPI,'
      '       p2.PRD_ORIGEM,'
      '       P2.IPI_CODIGO,'
      '       p2.prd_codigo as prd_produto,'
      '       P2.PRD_PESOKG,'
      '       P2.PRD_PESOLIQ,'
      '       P2.PRD_CUSTOCOMIPI,'
      
        '       (SELECT IPI.IPI_VALOR_POR_ITEM FROM IPI0000 IPI WHERE IPI' +
        '.IPI_CODIGO = P2.IPI_CODIGO) AS IPI_POR_PRODUTO,'
      '       G1.PGR_ATUALIZA_ESTOQUE,'
      '       G1.PGR_CODIGO,'
      '       T1.PTI_ATUALIZAR_ESTOQUE,'
      '       P3.OPV_ATESTOQUE,'
      '       P2.PRD_PRODSERV,'
      '       PM.PRD_REFER AS PRD_REFER_MP,'
      '       G1.PGR_CODIGO,'
      '       P1.PRF_PRDDESCRI,'
      '       p2.prd_especifico,'
      '       p2.id_prd_especifico,'
      '       p2.prd_especifico_redst,'
      '       p1.Ope_Natureza,'
      '       p1.Ope_Codigo'
      ''
      'FROM PED_IT01 P1 '
      
        '     JOIN PRD0000 P2 ON P2.PRD_REFER = IIF(Coalesce(P1.prd_refer' +
        ','#39#39')='#39#39',P1.prdco_codigo_original,P1.prd_refer)  and p1.emp_codig' +
        'o = p2.emp_codigo '
      
        '     JOIN PRD0000 PM ON PM.PRD_CODIGO = P1.PRD_CODIGO and PM.emp' +
        '_codigo = p1.emp_codigo'
      '     LEFT JOIN PRD_GRUPO G1 ON P2.PGR_CODIGO = G1.PGR_CODIGO '
      '     LEFT JOIN PRD_TIPO T1 ON P2.PTI_CODIGO = T1.PTI_CODIGO '
      
        '     LEFT JOIN PED0000 P0 ON P1.PED_CODIGO = P0.PED_CODIGO AND P' +
        '1.EMP_CODIGO = P0.EMP_CODIGO '
      '     LEFT JOIN OPV0000 P3 ON P0.OPV_CODIGO = P3.OPV_CODIGO '
      'WHERE P1.PED_CODIGO = '#39'-2288'#39' and P2.PRD_PRODSERV = '#39'P'#39
      '  and p1.emp_codigo='#39'001'#39' '
      ' order by P1.PED_CODIGO,P1.PRF_REGISTRO')
    SQLConnection = DBConn
    Left = 1011
    Top = 124
  end
  object DspItemPedido: TDataSetProvider [16]
    DataSet = qItemPedido
    Left = 1008
    Top = 165
  end
  object qPedidos: TSQLQuery [17]
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT P1.PED_OBSERVACAO_NOTA,'
      '       P1.TRP_CODIGO,'
      '       P1.PED_STATUS_ANALISE_CREDITO,'
      '       P1.PED_OS,'
      '       p1.FPG_REGISTRO,'
      '       P1.PED_CODIGO,'
      '       p1.PCX_CODIGO,'
      '       P1.AMX_CODIGO,'
      '       P1.PED_DTENTRADA,'
      '       P1.PED_VLTOTAL_LIQ,'
      '       P1.PED_VLTOTAL_BRUTO,'
      '       P1.PED_SITUACAO,'
      '       P1.PED_DESCTONF,'
      '       P1.PED_TPDESCTO,'
      '       P1.OPE_CODIGO,'
      '       P1.PED_DESCTOPC1,'
      '       P1.PED_DESCTOPC2,'
      '       P1.PED_DESCTOVL,'
      '       P1.ped_vlfrete,'
      '       P1.ped_desp_aces,'
      '       P1.ped_vlseguro,'
      '       P1.CLI_CODIGO,'
      '       C1.CLI_RAZAO,'
      '       C1.CLI_CIDADE,'
      '       C1.CLI_UF,'
      '       C1.CLI_CONSFINAL,'
      '       C1.CLI_CONSU_PROPRIO,'
      '       C1.CLI_REGIME_TRIBUTARIO,'
      '       C1.cli_modo_trib_st,'
      '       cn1.cnae_carga_trib_media,'
      '       P1.OPV_CODIGO,'
      '       P1.PCL_CODIGO,'
      '       CAST(P1.PED_COMIS1 AS NUMERIC(10,4)) AS PED_COMIS1,'
      '       P1.PED_COMIS2,'
      '       P1.PED_COMIS3,'
      '       P1.PED_OBSNOTA,'
      '       P1.REP_CODIGO,'
      '       P1.EMP_CODIGO,'
      '       P1.PED_DESP_IMPOR,'
      '       p1.PED_FRETE,'
      '       p1.PED_PLACA'
      'FROM PED0000 P1'
      '    left JOIN CLI0000 C1 ON P1.CLI_CODIGO = C1.CLI_CODIGO '
      
        '    left JOIN cnae CN1 ON (CN1.cnae_registro = C1.cnae_registro)' +
        ' '
      'Where p1.ped_codigo = '#39'-02584'#39
      '')
    SQLConnection = DBConn
    Left = 1104
    Top = 128
  end
  object DspPedidos: TDataSetProvider [18]
    DataSet = qPedidos
    Left = 1104
    Top = 174
  end
  object CdsPedidos: TClientDataSet [19]
    Aggregates = <>
    AggregatesActive = True
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspPedidos'
    OnCalcFields = CdsItemPedidoCalcFields
    Left = 1107
    Top = 222
    object CdsPedidosPED_OBSERVACAO_NOTA: TBlobField
      FieldName = 'PED_OBSERVACAO_NOTA'
      Size = 1
    end
    object CdsPedidosTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object CdsPedidosPED_STATUS_ANALISE_CREDITO: TStringField
      FieldName = 'PED_STATUS_ANALISE_CREDITO'
      Size = 1
    end
    object CdsPedidosPED_OS: TStringField
      FieldName = 'PED_OS'
      Size = 1
    end
    object CdsPedidosFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
    end
    object CdsPedidosPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Required = True
      Size = 7
    end
    object CdsPedidosPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object CdsPedidosAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object CdsPedidosPED_DTENTRADA: TSQLTimeStampField
      FieldName = 'PED_DTENTRADA'
    end
    object CdsPedidosPED_VLTOTAL_LIQ: TFMTBCDField
      FieldName = 'PED_VLTOTAL_LIQ'
      Precision = 18
      Size = 5
    end
    object CdsPedidosPED_VLTOTAL_BRUTO: TFMTBCDField
      FieldName = 'PED_VLTOTAL_BRUTO'
      Precision = 18
      Size = 5
    end
    object CdsPedidosPED_SITUACAO: TStringField
      FieldName = 'PED_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object CdsPedidosPED_DESCTONF: TStringField
      FieldName = 'PED_DESCTONF'
      FixedChar = True
      Size = 1
    end
    object CdsPedidosPED_TPDESCTO: TStringField
      FieldName = 'PED_TPDESCTO'
      Size = 1
    end
    object CdsPedidosOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
    end
    object CdsPedidosPED_DESCTOPC1: TFMTBCDField
      FieldName = 'PED_DESCTOPC1'
      Precision = 18
      Size = 5
    end
    object CdsPedidosPED_DESCTOPC2: TFMTBCDField
      FieldName = 'PED_DESCTOPC2'
      Precision = 18
      Size = 5
    end
    object CdsPedidosPED_DESCTOVL: TFMTBCDField
      FieldName = 'PED_DESCTOVL'
      Precision = 18
      Size = 5
    end
    object CdsPedidosPED_VLFRETE: TFMTBCDField
      FieldName = 'PED_VLFRETE'
      Precision = 18
      Size = 5
    end
    object CdsPedidosPED_DESP_ACES: TFMTBCDField
      FieldName = 'PED_DESP_ACES'
      Precision = 18
      Size = 5
    end
    object CdsPedidosPED_VLSEGURO: TFMTBCDField
      FieldName = 'PED_VLSEGURO'
      Precision = 18
      Size = 5
    end
    object CdsPedidosCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object CdsPedidosCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object CdsPedidosCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object CdsPedidosCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object CdsPedidosCLI_CONSFINAL: TStringField
      FieldName = 'CLI_CONSFINAL'
      Size = 1
    end
    object CdsPedidosCLI_CONSU_PROPRIO: TStringField
      FieldName = 'CLI_CONSU_PROPRIO'
      Size = 1
    end
    object CdsPedidosCLI_REGIME_TRIBUTARIO: TStringField
      FieldName = 'CLI_REGIME_TRIBUTARIO'
      Size = 1
    end
    object CdsPedidosCLI_MODO_TRIB_ST: TStringField
      FieldName = 'CLI_MODO_TRIB_ST'
      Size = 4
    end
    object CdsPedidosCNAE_CARGA_TRIB_MEDIA: TFMTBCDField
      FieldName = 'CNAE_CARGA_TRIB_MEDIA'
      Precision = 18
      Size = 5
    end
    object CdsPedidosOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
    end
    object CdsPedidosPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 3
    end
    object CdsPedidosPED_COMIS1: TFMTBCDField
      FieldName = 'PED_COMIS1'
      Precision = 18
      Size = 4
    end
    object CdsPedidosPED_COMIS2: TFMTBCDField
      FieldName = 'PED_COMIS2'
      Precision = 18
      Size = 5
    end
    object CdsPedidosPED_COMIS3: TFMTBCDField
      FieldName = 'PED_COMIS3'
      Precision = 18
      Size = 5
    end
    object CdsPedidosPED_COMISSAO_VEN: TFMTBCDField
      FieldName = 'PED_COMISSAO_VEN'
      Precision = 15
      Size = 3
    end
    object CdsPedidosPED_OBSNOTA: TStringField
      FieldName = 'PED_OBSNOTA'
      Size = 60
    end
    object CdsPedidosREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object CdsPedidosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsPedidosPED_DESP_IMPOR: TFMTBCDField
      FieldName = 'PED_DESP_IMPOR'
      Precision = 18
      Size = 5
    end
    object CdsPedidosPED_FRETE: TStringField
      FieldName = 'PED_FRETE'
      Size = 1
    end
    object CdsPedidosPED_PLACA: TStringField
      FieldName = 'PED_PLACA'
      Size = 7
    end
    object CdsPedidosREP_CODIGO_INTERNO: TStringField
      FieldName = 'REP_CODIGO_INTERNO'
      Size = 3
    end
    object CdsPedidosENDERECO_ENTREGA: TIntegerField
      FieldName = 'ENDERECO_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsPedidosCLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      ProviderFlags = []
      Size = 14
    end
    object CdsPedidosREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object CdsPedidosSITEXP: TStringField
      FieldName = 'SITEXP'
      Size = 1
    end
    object CdsPedidosOPV_ESTOQUE_REMESSAINDUS: TStringField
      FieldName = 'OPV_ESTOQUE_REMESSAINDUS'
      Size = 1
    end
    object CdsPedidosCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object CdsPedidosPED_VLDIFAL: TFMTBCDField
      FieldName = 'PED_VLDIFAL'
      Precision = 18
      Size = 5
    end
  end
  object dsPedidos: TDataSource [20]
    DataSet = CdsPedidos
    Left = 1107
    Top = 278
  end
  object qCLientes: TSQLQuery [21]
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from CLI0000')
    SQLConnection = DBConn
    Left = 1176
    Top = 298
    object qCLientesCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object qCLientesCLI_DTINATIVO: TSQLTimeStampField
      FieldName = 'CLI_DTINATIVO'
      ProviderFlags = [pfInUpdate]
    end
    object qCLientesCLI_INATIVO: TStringField
      FieldName = 'CLI_INATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qCLientesCLI_MOTIVO: TStringField
      FieldName = 'CLI_MOTIVO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object qCLientesREG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qCLientesCLI_ATIVIDADE: TStringField
      DisplayWidth = 3
      FieldName = 'CLI_ATIVIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qCLientesCLI_PORTE: TStringField
      FieldName = 'CLI_PORTE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qCLientesCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object qCLientesCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qCLientesCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qCLientesCLI_CXPOST: TStringField
      FieldName = 'CLI_CXPOST'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object qCLientesCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object qCLientesCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object qCLientesTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qCLientesCLI_INSC: TStringField
      FieldName = 'CLI_INSC'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object qCLientesCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object qCLientesCLI_PESSOA: TStringField
      FieldName = 'CLI_PESSOA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qCLientesCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 25
    end
    object qCLientesCLI_FUNCONT: TStringField
      FieldName = 'CLI_FUNCONT'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object qCLientesREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qCLientesCLI_DTINICIO: TSQLTimeStampField
      FieldName = 'CLI_DTINICIO'
      ProviderFlags = [pfInUpdate]
    end
    object qCLientesCLI_DTULTCOM: TSQLTimeStampField
      FieldName = 'CLI_DTULTCOM'
      ProviderFlags = [pfInUpdate]
    end
    object qCLientesCLI_CIDENTR: TStringField
      FieldName = 'CLI_CIDENTR'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qCLientesCLI_CEPENTR: TStringField
      FieldName = 'CLI_CEPENTR'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qCLientesCLI_FONENTR: TStringField
      FieldName = 'CLI_FONENTR'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object qCLientesCLI_CIDFAT: TStringField
      FieldName = 'CLI_CIDFAT'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qCLientesCLI_CEPFAT: TStringField
      FieldName = 'CLI_CEPFAT'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qCLientesCLI_UF: TStringField
      FieldName = 'CLI_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object qCLientesCLI_UFENTR: TStringField
      FieldName = 'CLI_UFENTR'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object qCLientesCLI_UFFAT: TStringField
      FieldName = 'CLI_UFFAT'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object qCLientesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qCLientesCLI_CURVA: TStringField
      FieldName = 'CLI_CURVA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qCLientesCLI_LIMITECRED: TFMTBCDField
      FieldName = 'CLI_LIMITECRED'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object qCLientesCLI_LIMITEUTILIZ: TFMTBCDField
      FieldName = 'CLI_LIMITEUTILIZ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object qCLientesCLI_PEDABERTO: TFMTBCDField
      FieldName = 'CLI_PEDABERTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object qCLientesCLI_VL_ULTCOMP: TFMTBCDField
      FieldName = 'CLI_VL_ULTCOMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object qCLientesCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object qCLientesCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qCLientesCLI_ENDENTR: TStringField
      FieldName = 'CLI_ENDENTR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qCLientesCLI_ENDFAT: TStringField
      FieldName = 'CLI_ENDFAT'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qCLientesCLI_OBS: TMemoField
      FieldName = 'CLI_OBS'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object qCLientesCLI_PROTESTAR: TStringField
      FieldName = 'CLI_PROTESTAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qCLientesCLI_QTDE_DIAS_PROTESTO: TIntegerField
      FieldName = 'CLI_QTDE_DIAS_PROTESTO'
      ProviderFlags = [pfInUpdate]
    end
    object qCLientesCLI_CONSFINAL: TStringField
      FieldName = 'CLI_CONSFINAL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qCLientesCLI_PAIS: TStringField
      FieldName = 'CLI_PAIS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qCLientesCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      ProviderFlags = [pfInUpdate]
      Size = 55
    end
    object qCLientesCLI_HISTORICO: TMemoField
      FieldName = 'CLI_HISTORICO'
      BlobType = ftMemo
    end
    object qCLientesCLI_CONSU_PROPRIO: TStringField
      FieldName = 'CLI_CONSU_PROPRIO'
      Size = 1
    end
    object qCLientesCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
    end
    object qCLientesCLI_INSCMUNI: TStringField
      FieldName = 'CLI_INSCMUNI'
      Size = 14
    end
    object qCLientesCLI_BAIENTR: TStringField
      FieldName = 'CLI_BAIENTR'
      FixedChar = True
      Size = 25
    end
    object qCLientesCLI_BAIFAT: TStringField
      FieldName = 'CLI_BAIFAT'
      Size = 25
    end
    object qCLientesAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object qCLientesPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 3
    end
    object qCLientesBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object qCLientesCLI_DESC1: TFMTBCDField
      FieldName = 'CLI_DESC1'
      Precision = 15
      Size = 5
    end
    object qCLientesCLI_DESC2: TFMTBCDField
      FieldName = 'CLI_DESC2'
      Precision = 15
      Size = 5
    end
    object qCLientesCLI_TABPRECO: TStringField
      FieldName = 'CLI_TABPRECO'
      FixedChar = True
      Size = 2
    end
    object qCLientesPAI_CODIGO: TStringField
      FieldName = 'PAI_CODIGO'
      Size = 5
    end
    object qCLientesCLI_CLASSE_CLI_FOR: TStringField
      FieldName = 'CLI_CLASSE_CLI_FOR'
      FixedChar = True
      Size = 1
    end
    object qCLientesCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 150
    end
    object qCLientesCLI_HOME: TStringField
      FieldName = 'CLI_HOME'
      Size = 150
    end
    object qCLientesCLI_EMAIL_ALTERNATIVO: TStringField
      FieldName = 'CLI_EMAIL_ALTERNATIVO'
      Size = 150
    end
    object qCLientesCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object qCLientesOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      Size = 3
    end
    object qCLientesCLI_SUFRAMA: TStringField
      FieldName = 'CLI_SUFRAMA'
      Size = 30
    end
    object qCLientesCLI_REGIME_TRIBUTARIO: TStringField
      FieldName = 'CLI_REGIME_TRIBUTARIO'
      Size = 1
    end
    object qCLientesPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object qCLientesCNAE_REGISTRO: TIntegerField
      FieldName = 'CNAE_REGISTRO'
    end
    object qCLientesCLI_MODO_TRIB_ST: TStringField
      FieldName = 'CLI_MODO_TRIB_ST'
      Size = 4
    end
    object qCLientesPRE_ID: TIntegerField
      FieldName = 'PRE_ID'
      ProviderFlags = [pfInUpdate]
    end
  end
  object qOperFisc: TSQLQuery [22]
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from ope0000 where ope_codigo='#39'-99'#39)
    SQLConnection = DBConn
    Left = 1257
    Top = 285
    object qOperFiscEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object qOperFiscOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      Required = True
      Size = 3
    end
    object qOperFiscOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object qOperFiscOPE_NATUREZA_ENTRADA: TStringField
      FieldName = 'OPE_NATUREZA_ENTRADA'
      Size = 4
    end
    object qOperFiscOPE_TIPO: TStringField
      FieldName = 'OPE_TIPO'
      Size = 1
    end
    object qOperFiscOPE_ESCRITA: TStringField
      FieldName = 'OPE_ESCRITA'
      Size = 1
    end
    object qOperFiscOPE_DENTRO: TStringField
      FieldName = 'OPE_DENTRO'
      Size = 1
    end
    object qOperFiscOPE_DESCRI: TStringField
      FieldName = 'OPE_DESCRI'
      Size = 55
    end
    object qOperFiscOPE_TRIBICMS: TStringField
      FieldName = 'OPE_TRIBICMS'
      Size = 1
    end
    object qOperFiscOPE_TRIBIPI: TStringField
      FieldName = 'OPE_TRIBIPI'
      Size = 1
    end
    object qOperFiscOPE_REDU_ICM: TFMTBCDField
      FieldName = 'OPE_REDU_ICM'
      Precision = 18
      Size = 5
    end
    object qOperFiscOPE_REDU_IPI: TFMTBCDField
      FieldName = 'OPE_REDU_IPI'
      Precision = 18
      Size = 5
    end
    object qOperFiscOPE_IPINABASEICMS: TStringField
      FieldName = 'OPE_IPINABASEICMS'
      Size = 1
    end
    object qOperFiscOPE_FRETENABASE: TStringField
      FieldName = 'OPE_FRETENABASE'
      Size = 1
    end
    object qOperFiscOPE_SEMVLCOM: TStringField
      FieldName = 'OPE_SEMVLCOM'
      Size = 1
    end
    object qOperFiscOPE_IMP_AVISO: TStringField
      FieldName = 'OPE_IMP_AVISO'
      Size = 1
    end
    object qOperFiscOPE_AVISOLEGAL: TStringField
      FieldName = 'OPE_AVISOLEGAL'
      Size = 1000
    end
    object qOperFiscOPE_AVISOLEGAL2: TStringField
      FieldName = 'OPE_AVISOLEGAL2'
      Size = 1000
    end
    object qOperFiscOPE_AGRUPADO: TStringField
      FieldName = 'OPE_AGRUPADO'
      Size = 4
    end
    object qOperFiscOPE_SUBTRIBUTARIA: TStringField
      FieldName = 'OPE_SUBTRIBUTARIA'
      Size = 1
    end
    object qOperFiscOPE_ESTOQUE: TStringField
      FieldName = 'OPE_ESTOQUE'
      Size = 1
    end
    object qOperFiscCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object qOperFiscOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
    end
    object qOperFiscOPE_SERVICO: TStringField
      FieldName = 'OPE_SERVICO'
      Size = 1
    end
    object qOperFiscOPE_PIS: TFMTBCDField
      FieldName = 'OPE_PIS'
      Precision = 18
      Size = 5
    end
    object qOperFiscOPE_COFINS: TFMTBCDField
      FieldName = 'OPE_COFINS'
      Precision = 18
      Size = 5
    end
    object qOperFiscOPE_CONTRISOCIAL: TFMTBCDField
      FieldName = 'OPE_CONTRISOCIAL'
      Precision = 18
      Size = 5
    end
    object qOperFiscOPE_DESCRINATUREZA: TStringField
      FieldName = 'OPE_DESCRINATUREZA'
      Size = 25
    end
    object qOperFiscOPE_INDICE_IMP: TFMTBCDField
      FieldName = 'OPE_INDICE_IMP'
      Precision = 18
      Size = 5
    end
    object qOperFiscOPE_NOTA_COMPLEMENTAR: TStringField
      FieldName = 'OPE_NOTA_COMPLEMENTAR'
      Size = 1
    end
    object qOperFiscOPE_FRETEBASEIPI: TStringField
      FieldName = 'OPE_FRETEBASEIPI'
      Size = 1
    end
    object qOperFiscOPE_DESPIMPORIPI: TStringField
      FieldName = 'OPE_DESPIMPORIPI'
      Size = 1
    end
    object qOperFiscOPE_AUMEN_ICMS: TFMTBCDField
      FieldName = 'OPE_AUMEN_ICMS'
      Precision = 18
      Size = 5
    end
    object qOperFiscOPE_ICMS_TOTALNOTA: TStringField
      FieldName = 'OPE_ICMS_TOTALNOTA'
      Size = 1
    end
    object qOperFiscOPE_SEMVLCOM_MOSTRAF: TStringField
      FieldName = 'OPE_SEMVLCOM_MOSTRAF'
      Size = 1
    end
    object qOperFiscOPE_TRIBPISCOFINS: TStringField
      FieldName = 'OPE_TRIBPISCOFINS'
      Size = 1
    end
    object qOperFiscOPE_TEMCREDITO: TStringField
      FieldName = 'OPE_TEMCREDITO'
      Size = 1
    end
    object qOperFiscOPE_ATIVA: TStringField
      FieldName = 'OPE_ATIVA'
      Size = 1
    end
    object qOperFiscOPE_IPI_TOTALNOTA: TStringField
      FieldName = 'OPE_IPI_TOTALNOTA'
      Size = 1
    end
    object qOperFiscOPE_TIPO_OPERACAO: TStringField
      FieldName = 'OPE_TIPO_OPERACAO'
      Size = 1
    end
    object qOperFiscOPE_ATUALIZA_CUSTO: TStringField
      FieldName = 'OPE_ATUALIZA_CUSTO'
      Size = 1
    end
    object qOperFiscOPE_INDUSTRIALIZACAO: TStringField
      FieldName = 'OPE_INDUSTRIALIZACAO'
      Size = 1
    end
    object qOperFiscEMP_CSOSN: TIntegerField
      FieldName = 'EMP_CSOSN'
    end
    object qOperFiscEMP_CSOSN_ST: TIntegerField
      FieldName = 'EMP_CSOSN_ST'
    end
    object qOperFiscope_temretencao: TStringField
      FieldName = 'ope_temretencao'
      Size = 1
    end
    object qOperFiscOPE_CST_IPI: TStringField
      FieldName = 'OPE_CST_IPI'
      Size = 2
    end
    object qOperFiscOPE_CST_PISCOFINS: TStringField
      FieldName = 'OPE_CST_PISCOFINS'
      Size = 2
    end
    object qOperFiscOPE_TRIBUTAR_INSS: TStringField
      FieldName = 'OPE_TRIBUTAR_INSS'
      Size = 1
    end
    object qOperFiscOPE_TRIBUTAR_CSLL: TStringField
      FieldName = 'OPE_TRIBUTAR_CSLL'
      Size = 1
    end
    object qOperFiscOPE_TRIBUTAR_IR: TStringField
      FieldName = 'OPE_TRIBUTAR_IR'
      Size = 1
    end
    object qOperFiscOPE_TRIBUTAR_PIS: TStringField
      FieldName = 'OPE_TRIBUTAR_PIS'
      Size = 1
    end
    object qOperFiscOPE_TRIBUTAR_COFINS: TStringField
      FieldName = 'OPE_TRIBUTAR_COFINS'
      Size = 1
    end
    object qOperFiscOPE_ICMS_DESONERADO_DIMINUI: TStringField
      FieldName = 'OPE_ICMS_DESONERADO_DIMINUI'
      FixedChar = True
      Size = 1
    end
    object qOperFiscOPE_DESP_ACES_PIS_COFINS: TStringField
      FieldName = 'OPE_DESP_ACES_PIS_COFINS'
      Size = 1
    end
    object qOperFiscOPE_ARTIGO_DIFERIMENTO: TStringField
      FieldName = 'OPE_ARTIGO_DIFERIMENTO'
      Size = 255
    end
  end
  object qIcms: TSQLQuery [23]
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select ICM_ALIQ,'
      '       ICMS_SUBS,'
      '       FCP_PERC,'
      '       ICMS_PROD_IMPORTADO,'
      '       SOMA_MVA_SN,'
      '       ICM_SUB_TRI_SN,'
      '       ICMS_REDUZIDO,'
      '       ICM_MVA,'
      '       ICM_TIPO_CALCULO_DIFAL'
      'from ICM0000 WHERE ICM_DESTINO = '#39'jk'#39)
    SQLConnection = DBConn
    Left = 1324
    Top = 298
    object qIcmsICM_ALIQ: TFMTBCDField
      FieldName = 'ICM_ALIQ'
      Precision = 18
      Size = 5
    end
    object qIcmsICMS_SUBS: TFMTBCDField
      FieldName = 'ICMS_SUBS'
      Precision = 18
      Size = 5
    end
    object qIcmsICMS_PROD_IMPORTADO: TFMTBCDField
      FieldName = 'ICMS_PROD_IMPORTADO'
      Precision = 18
      Size = 5
    end
    object qIcmsSOMA_MVA_SN: TStringField
      FieldName = 'SOMA_MVA_SN'
      FixedChar = True
      Size = 1
    end
    object qIcmsICM_SUB_TRI_SN: TStringField
      FieldName = 'ICM_SUB_TRI_SN'
      FixedChar = True
      Size = 1
    end
    object qIcmsICMS_REDUZIDO: TFMTBCDField
      FieldName = 'ICMS_REDUZIDO'
      Precision = 18
      Size = 5
    end
    object qIcmsICM_MVA: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'ICM_MVA'
      Precision = 18
      Size = 5
    end
    object qIcmsFCP_PERC: TFMTBCDField
      FieldName = 'FCP_PERC'
      Precision = 15
    end
    object qIcmsICM_TIPO_CALCULO_DIFAL: TIntegerField
      FieldName = 'ICM_TIPO_CALCULO_DIFAL'
    end
  end
  object qNotaFiscal: TSQLQuery [24]
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 1133
    Top = 364
    object qNotaFiscalNF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
      Required = True
    end
    object qNotaFiscalNF_NOTANUMBER: TStringField
      FieldName = 'NF_NOTANUMBER'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 6
    end
    object qNotaFiscalNF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object qNotaFiscalNF_SAIDA: TDateField
      FieldName = 'NF_SAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object qNotaFiscalNF_HORASAIDA: TTimeField
      FieldName = 'NF_HORASAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object qNotaFiscalNF_CONDPAGTO: TStringField
      FieldName = 'NF_CONDPAGTO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object qNotaFiscalOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qNotaFiscalOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object qNotaFiscalOPE_AGRUPADO: TStringField
      FieldName = 'OPE_AGRUPADO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object qNotaFiscalREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qNotaFiscalNF_ENTR_SAID: TStringField
      FieldName = 'NF_ENTR_SAID'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qNotaFiscalNF_IMPRESS: TStringField
      FieldName = 'NF_IMPRESS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qNotaFiscalCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object qNotaFiscalNF_VLFRETE: TFMTBCDField
      FieldName = 'NF_VLFRETE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object qNotaFiscalNF_VLSEGURO: TFMTBCDField
      FieldName = 'NF_VLSEGURO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object qNotaFiscalNF_DESP_ACES: TFMTBCDField
      FieldName = 'NF_DESP_ACES'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object qNotaFiscalNF_ALIQ_ICMS: TFMTBCDField
      FieldName = 'NF_ALIQ_ICMS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object qNotaFiscalNF_VL_DESCTO: TFMTBCDField
      FieldName = 'NF_VL_DESCTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object qNotaFiscalNF_PLACAVE: TStringField
      FieldName = 'NF_PLACAVE'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qNotaFiscalNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object qNotaFiscalNF_PESOBRU: TFMTBCDField
      FieldName = 'NF_PESOBRU'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object qNotaFiscalNF_PESOLIQ: TFMTBCDField
      FieldName = 'NF_PESOLIQ'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object qNotaFiscalNF_MARCA: TStringField
      FieldName = 'NF_MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qNotaFiscalNF_NUMERO: TStringField
      FieldName = 'NF_NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qNotaFiscalNF_INTERNO: TStringField
      FieldName = 'NF_INTERNO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qNotaFiscalNF_CANCELADA: TStringField
      FieldName = 'NF_CANCELADA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qNotaFiscalPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qNotaFiscalNF_AGRUPADO: TStringField
      FieldName = 'NF_AGRUPADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qNotaFiscalEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qNotaFiscalNF_OBS_OPER: TStringField
      FieldName = 'NF_OBS_OPER'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object qNotaFiscalNF_OBS_PEDI: TStringField
      FieldName = 'NF_OBS_PEDI'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qNotaFiscalAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qNotaFiscalNF_OBSG1: TStringField
      FieldName = 'NF_OBSG1'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object qNotaFiscalNF_OBSG2: TStringField
      FieldName = 'NF_OBSG2'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object qNotaFiscalNF_OBSG3: TStringField
      FieldName = 'NF_OBSG3'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object qNotaFiscalNF_OBSG4: TStringField
      FieldName = 'NF_OBSG4'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object qNotaFiscalNF_OBSG5: TStringField
      FieldName = 'NF_OBSG5'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object qNotaFiscalNF_OBSG6: TStringField
      FieldName = 'NF_OBSG6'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object qNotaFiscalNF_TP_DESCTO: TStringField
      FieldName = 'NF_TP_DESCTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qNotaFiscalNF_PC_DESCTO1: TFMTBCDField
      FieldName = 'NF_PC_DESCTO1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object qNotaFiscalNF_PC_DESCTO2: TFMTBCDField
      FieldName = 'NF_PC_DESCTO2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object qNotaFiscalNF_BASE_ISS: TFMTBCDField
      FieldName = 'NF_BASE_ISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object qNotaFiscalNF_VALOR_ISS: TFMTBCDField
      FieldName = 'NF_VALOR_ISS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object qNotaFiscalOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object qNotaFiscalNF_ESPECIE: TStringField
      DisplayWidth = 60
      FieldName = 'NF_ESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qNotaFiscalPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object qNotaFiscalOPE_REDU_ICM: TFMTBCDField
      FieldName = 'OPE_REDU_ICM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object qNotaFiscalNF_OBS_OPER_AVISO2: TStringField
      FieldName = 'NF_OBS_OPER_AVISO2'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object qNotaFiscalOPE_SEMVLCOM: TStringField
      FieldName = 'OPE_SEMVLCOM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qNotaFiscalNF_TIPODOC: TStringField
      FieldName = 'NF_TIPODOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object qNotaFiscalNF_MODELO_NF: TStringField
      FieldName = 'NF_MODELO_NF'
      Size = 2
    end
    object qNotaFiscalNF_SERIE: TStringField
      FieldName = 'NF_SERIE'
      Size = 3
    end
    object qNotaFiscalNF_CHAVE_NFE: TStringField
      FieldName = 'NF_CHAVE_NFE'
      Size = 60
    end
    object qNotaFiscalNF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object qNotaFiscalNF_DESP_IMPORT: TFMTBCDField
      FieldName = 'NF_DESP_IMPORT'
      Precision = 15
    end
    object qNotaFiscalNF_STATUS_NFE: TStringField
      FieldName = 'NF_STATUS_NFE'
      FixedChar = True
      Size = 1
    end
    object qNotaFiscalNF_ENVIADO_NFE_EMAIL: TStringField
      FieldName = 'NF_ENVIADO_NFE_EMAIL'
      FixedChar = True
      Size = 1
    end
    object qNotaFiscalNF_EMAIL_ENVIO_NFE: TStringField
      FieldName = 'NF_EMAIL_ENVIO_NFE'
      Size = 60
    end
    object qNotaFiscalNF_LOTE_NFE: TIntegerField
      FieldName = 'NF_LOTE_NFE'
    end
    object qNotaFiscalNF_PROTOCOLO_NFE: TStringField
      FieldName = 'NF_PROTOCOLO_NFE'
    end
    object qNotaFiscalNF_PROTOCOLO_NFE_CANC: TStringField
      FieldName = 'NF_PROTOCOLO_NFE_CANC'
    end
    object qNotaFiscalNF_PROTOCOLO_AUTORIZACAO: TStringField
      FieldName = 'NF_PROTOCOLO_AUTORIZACAO'
      Size = 60
    end
    object qNotaFiscalNF_DATA_AUTORIZACAO: TDateField
      FieldName = 'NF_DATA_AUTORIZACAO'
    end
    object qNotaFiscalNF_HORA_AUTORIZACAO: TTimeField
      FieldName = 'NF_HORA_AUTORIZACAO'
    end
    object qNotaFiscalNF_ALIQCREDSIMPLES: TFMTBCDField
      FieldName = 'NF_ALIQCREDSIMPLES'
      Precision = 15
    end
    object qNotaFiscalNF_VLCREDSIMPLES: TFMTBCDField
      FieldName = 'NF_VLCREDSIMPLES'
      Precision = 15
    end
    object qNotaFiscalNF_ALIQPIS: TFMTBCDField
      FieldName = 'NF_ALIQPIS'
      Precision = 15
    end
    object qNotaFiscalNF_ALIQCOFINS: TFMTBCDField
      FieldName = 'NF_ALIQCOFINS'
      Precision = 15
    end
    object qNotaFiscalSRV_REGISTRO: TIntegerField
      FieldName = 'SRV_REGISTRO'
    end
    object qNotaFiscalNF_NFSE_VLR_IR: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_IR'
      Precision = 15
    end
    object qNotaFiscalNF_NFSE_VLR_CSLL: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_CSLL'
      Precision = 15
    end
    object qNotaFiscalNF_NFSE_VLR_INSS: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_INSS'
      Precision = 15
    end
    object qNotaFiscalNF_NFSE_VLR_COFINS: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_COFINS'
      Precision = 15
    end
    object qNotaFiscalNF_NFSE_VLR_PIS: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_PIS'
      Precision = 15
    end
    object qNotaFiscalNF_NFSE_VLR_DEDUCOES: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_DEDUCOES'
      Precision = 15
    end
    object qNotaFiscalNF_NFSE_VLR_ISS: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_ISS'
      Precision = 15
    end
    object qNotaFiscalNF_NFSE_VLR_BASE_CALCULO: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_BASE_CALCULO'
      Precision = 15
    end
    object qNotaFiscalNF_NFSE_DESCRICAO: TBlobField
      FieldName = 'NF_NFSE_DESCRICAO'
    end
    object qNotaFiscalNF_STATUS_NFSE: TStringField
      FieldName = 'NF_STATUS_NFSE'
      Size = 1
    end
    object qNotaFiscalNF_NFSE_ALIQUOTA_ISS: TFMTBCDField
      FieldName = 'NF_NFSE_ALIQUOTA_ISS'
      Precision = 15
    end
    object qNotaFiscalNF_EXPORT_UF_EMBARQUE: TStringField
      FieldName = 'NF_EXPORT_UF_EMBARQUE'
      Size = 2
    end
    object qNotaFiscalNF_EXPORT_LOCAL_EMBARQUE: TStringField
      FieldName = 'NF_EXPORT_LOCAL_EMBARQUE'
      Size = 60
    end
    object qNotaFiscalNF_VALORTOT_PIS: TFMTBCDField
      FieldName = 'NF_VALORTOT_PIS'
      Precision = 15
      Size = 4
    end
    object qNotaFiscalNF_VALORTOT_COFINS: TFMTBCDField
      FieldName = 'NF_VALORTOT_COFINS'
      Precision = 15
      Size = 4
    end
    object qNotaFiscalNF_COMPLEMENTAR: TStringField
      FieldName = 'NF_COMPLEMENTAR'
      FixedChar = True
      Size = 1
    end
    object qNotaFiscalNFE_STATUS_PRODUCAO: TStringField
      FieldName = 'NFE_STATUS_PRODUCAO'
      FixedChar = True
      Size = 1
    end
    object qNotaFiscalNF_OBSERVACAO: TBlobField
      FieldName = 'NF_OBSERVACAO'
    end
    object qNotaFiscalNF_TIPO_FRETE: TStringField
      FieldName = 'NF_TIPO_FRETE'
      Size = 1
    end
    object qNotaFiscalNF_BASEICMS: TFMTBCDField
      FieldName = 'NF_BASEICMS'
      Precision = 20
      Size = 5
    end
    object qNotaFiscalNF_VL_ICMS: TFMTBCDField
      FieldName = 'NF_VL_ICMS'
      Precision = 20
      Size = 5
    end
    object qNotaFiscalNF_VLBASESUBTRIB: TFMTBCDField
      FieldName = 'NF_VLBASESUBTRIB'
      Precision = 20
      Size = 5
    end
    object qNotaFiscalNF_VL_SUBTRIB: TFMTBCDField
      FieldName = 'NF_VL_SUBTRIB'
      Precision = 20
      Size = 5
    end
    object qNotaFiscalNF_TOT_CSUB: TFMTBCDField
      FieldName = 'NF_TOT_CSUB'
      Precision = 20
      Size = 5
    end
    object qNotaFiscalNF_TOT_PROD: TFMTBCDField
      FieldName = 'NF_TOT_PROD'
      Precision = 20
      Size = 5
    end
    object qNotaFiscalNF_TOT_NOTA: TFMTBCDField
      FieldName = 'NF_TOT_NOTA'
      Precision = 20
      Size = 5
    end
    object qNotaFiscalNF_VL_IPI: TFMTBCDField
      FieldName = 'NF_VL_IPI'
      Precision = 20
      Size = 5
    end
    object qNotaFiscalNF_BASE_IPI: TFMTBCDField
      FieldName = 'NF_BASE_IPI'
      Precision = 20
      Size = 5
    end
    object qNotaFiscalNF_VENDA_FATURADA: TStringField
      FieldName = 'NF_VENDA_FATURADA'
      Size = 1
    end
    object qNotaFiscalNF_CHAVE_NFE_REFERENCIADA: TStringField
      FieldName = 'NF_CHAVE_NFE_REFERENCIADA'
      Size = 44
    end
    object qNotaFiscalNF_VALOR_TOTAL_FCP: TFMTBCDField
      FieldName = 'NF_VALOR_TOTAL_FCP'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object qNotaFiscalNF_VALOR_TOTAL_PARTILHA_DEST: TFMTBCDField
      FieldName = 'NF_VALOR_TOTAL_PARTILHA_DEST'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object qNotaFiscalNF_VALOR_TOTAL_PARTILHA_ORIG: TFMTBCDField
      FieldName = 'NF_VALOR_TOTAL_PARTILHA_ORIG'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object qNotaFiscalIBPT_VLAPROXTRIBUTOS: TFMTBCDField
      FieldName = 'IBPT_VLAPROXTRIBUTOS'
      Precision = 20
      Size = 2
    end
    object qNotaFiscalNF_UFVEICULO: TStringField
      FieldName = 'NF_UFVEICULO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qNotaFiscalnf_finalidade: TIntegerField
      FieldName = 'nf_finalidade'
    end
    object qNotaFiscalNF_FORMAPAGTO: TIntegerField
      FieldName = 'NF_FORMAPAGTO'
    end
    object qNotaFiscalFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
    end
    object qNotaFiscalNF_INTEGRADO: TStringField
      FieldName = 'NF_INTEGRADO'
      Size = 1
    end
    object qNotaFiscalNF_TIPONOTA: TStringField
      FieldName = 'NF_TIPONOTA'
      Size = 1
    end
    object qNotaFiscalNF_VL_DESCTO_FAT: TFMTBCDField
      FieldName = 'NF_VL_DESCTO_FAT'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object qNotaFiscalNF_SITEXPEDICAO: TStringField
      FieldName = 'NF_SITEXPEDICAO'
      Size = 1
    end
    object qNotaFiscalNF_VALOR_TOTAL_FCPST: TFMTBCDField
      FieldName = 'NF_VALOR_TOTAL_FCPST'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object qNotaFiscalNF_TotalICMS_Deson: TFMTBCDField
      FieldName = 'NF_TotalICMS_Deson'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object qNotaFiscalNF_VLDIFAL: TFMTBCDField
      FieldName = 'NF_VLDIFAL'
      Size = 5
    end
  end
  object dspNotaFiscal: TDataSetProvider [25]
    DataSet = qNotaFiscal
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 1221
    Top = 364
  end
  object CdsNotaFiscal: TClientDataSet [26]
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'dspNotaFiscal'
    AfterInsert = CdsNotaFiscalAfterInsert
    Left = 1311
    Top = 363
    object CdsNotaFiscalNF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsNotaFiscalNF_NOTANUMBER: TStringField
      FieldName = 'NF_NOTANUMBER'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 6
    end
    object CdsNotaFiscalNF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNotaFiscalNF_SAIDA: TDateField
      FieldName = 'NF_SAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNotaFiscalNF_HORASAIDA: TTimeField
      FieldName = 'NF_HORASAIDA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNotaFiscalNF_CONDPAGTO: TStringField
      FieldName = 'NF_CONDPAGTO'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsNotaFiscalOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsNotaFiscalOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsNotaFiscalOPE_AGRUPADO: TStringField
      FieldName = 'OPE_AGRUPADO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object CdsNotaFiscalREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsNotaFiscalNF_ENTR_SAID: TStringField
      FieldName = 'NF_ENTR_SAID'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsNotaFiscalNF_IMPRESS: TStringField
      FieldName = 'NF_IMPRESS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsNotaFiscalCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsNotaFiscalNF_VLFRETE: TFMTBCDField
      FieldName = 'NF_VLFRETE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsNotaFiscalNF_VLSEGURO: TFMTBCDField
      FieldName = 'NF_VLSEGURO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsNotaFiscalNF_DESP_ACES: TFMTBCDField
      FieldName = 'NF_DESP_ACES'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsNotaFiscalNF_ALIQ_ICMS: TFMTBCDField
      FieldName = 'NF_ALIQ_ICMS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsNotaFiscalNF_VL_DESCTO: TFMTBCDField
      FieldName = 'NF_VL_DESCTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsNotaFiscalNF_PLACAVE: TStringField
      FieldName = 'NF_PLACAVE'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsNotaFiscalNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_PESOBRU: TFMTBCDField
      FieldName = 'NF_PESOBRU'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsNotaFiscalNF_PESOLIQ: TFMTBCDField
      FieldName = 'NF_PESOLIQ'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object CdsNotaFiscalNF_MARCA: TStringField
      FieldName = 'NF_MARCA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsNotaFiscalNF_NUMERO: TStringField
      FieldName = 'NF_NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object CdsNotaFiscalNF_INTERNO: TStringField
      FieldName = 'NF_INTERNO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsNotaFiscalNF_CANCELADA: TStringField
      FieldName = 'NF_CANCELADA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsNotaFiscalPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsNotaFiscalNF_AGRUPADO: TStringField
      FieldName = 'NF_AGRUPADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object CdsNotaFiscalEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsNotaFiscalNF_OBS_OPER: TStringField
      FieldName = 'NF_OBS_OPER'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object CdsNotaFiscalNF_OBS_PEDI: TStringField
      FieldName = 'NF_OBS_PEDI'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsNotaFiscalNF_TIPO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'NF_TIPO_CC'
      Calculated = True
    end
    object CdsNotaFiscalAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsNotaFiscalNF_OBSG1: TStringField
      FieldName = 'NF_OBSG1'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object CdsNotaFiscalNF_OBSG2: TStringField
      FieldName = 'NF_OBSG2'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object CdsNotaFiscalNF_OBSG3: TStringField
      FieldName = 'NF_OBSG3'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object CdsNotaFiscalNF_OBSG4: TStringField
      FieldName = 'NF_OBSG4'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object CdsNotaFiscalNF_OBSG5: TStringField
      FieldName = 'NF_OBSG5'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object CdsNotaFiscalNF_OBSG6: TStringField
      FieldName = 'NF_OBSG6'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object CdsNotaFiscalNF_TP_DESCTO: TStringField
      FieldName = 'NF_TP_DESCTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsNotaFiscalNF_PC_DESCTO1: TFMTBCDField
      FieldName = 'NF_PC_DESCTO1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_PC_DESCTO2: TFMTBCDField
      FieldName = 'NF_PC_DESCTO2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_BASE_ISS: TFMTBCDField
      FieldName = 'NF_BASE_ISS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsNotaFiscalNF_VALOR_ISS: TFMTBCDField
      FieldName = 'NF_VALOR_ISS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsNotaFiscalNF_STATUS_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'NF_STATUS_CC'
      Size = 3
      Calculated = True
    end
    object CdsNotaFiscalOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNotaFiscalNF_ESPECIE: TStringField
      FieldName = 'NF_ESPECIE'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsNotaFiscalPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object CdsNotaFiscalOPE_REDU_ICM: TFMTBCDField
      FieldName = 'OPE_REDU_ICM'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object CdsNotaFiscalNF_OBS_OPER_AVISO2: TStringField
      FieldName = 'NF_OBS_OPER_AVISO2'
      ProviderFlags = [pfInUpdate]
      Size = 1000
    end
    object CdsNotaFiscalOPE_SEMVLCOM: TStringField
      FieldName = 'OPE_SEMVLCOM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsNotaFiscalNF_TIPODOC: TStringField
      FieldName = 'NF_TIPODOC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsNotaFiscalNF_MODELO_NF: TStringField
      FieldName = 'NF_MODELO_NF'
      Size = 2
    end
    object CdsNotaFiscalNF_SERIE: TStringField
      FieldName = 'NF_SERIE'
      Size = 3
    end
    object CdsNotaFiscalNF_CHAVE_NFE: TStringField
      FieldName = 'NF_CHAVE_NFE'
      Size = 60
    end
    object CdsNotaFiscalNF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object CdsNotaFiscalNF_DESP_IMPORT: TFMTBCDField
      FieldName = 'NF_DESP_IMPORT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsNotaFiscalNF_STATUS_NFE: TStringField
      FieldName = 'NF_STATUS_NFE'
      FixedChar = True
      Size = 1
    end
    object CdsNotaFiscalNF_ENVIADO_NFE_EMAIL: TStringField
      FieldName = 'NF_ENVIADO_NFE_EMAIL'
      FixedChar = True
      Size = 1
    end
    object CdsNotaFiscalNF_EMAIL_ENVIO_NFE: TStringField
      FieldName = 'NF_EMAIL_ENVIO_NFE'
      Size = 60
    end
    object CdsNotaFiscalNF_LOTE_NFE: TIntegerField
      FieldName = 'NF_LOTE_NFE'
    end
    object CdsNotaFiscalNF_PROTOCOLO_NFE: TStringField
      FieldName = 'NF_PROTOCOLO_NFE'
    end
    object CdsNotaFiscalNF_PROTOCOLO_NFE_CANC: TStringField
      FieldName = 'NF_PROTOCOLO_NFE_CANC'
    end
    object CdsNotaFiscalNF_PROTOCOLO_AUTORIZACAO: TStringField
      FieldName = 'NF_PROTOCOLO_AUTORIZACAO'
      Size = 60
    end
    object CdsNotaFiscalNF_DATA_AUTORIZACAO: TDateField
      FieldName = 'NF_DATA_AUTORIZACAO'
    end
    object CdsNotaFiscalNF_HORA_AUTORIZACAO: TTimeField
      FieldName = 'NF_HORA_AUTORIZACAO'
    end
    object CdsNotaFiscalNF_ALIQCREDSIMPLES: TFMTBCDField
      FieldName = 'NF_ALIQCREDSIMPLES'
      Precision = 15
    end
    object CdsNotaFiscalNF_VLCREDSIMPLES: TFMTBCDField
      FieldName = 'NF_VLCREDSIMPLES'
      Precision = 15
    end
    object CdsNotaFiscalNF_ALIQPIS: TFMTBCDField
      FieldName = 'NF_ALIQPIS'
      Precision = 15
    end
    object CdsNotaFiscalNF_ALIQCOFINS: TFMTBCDField
      FieldName = 'NF_ALIQCOFINS'
      Precision = 15
    end
    object CdsNotaFiscalSRV_REGISTRO: TIntegerField
      FieldName = 'SRV_REGISTRO'
    end
    object CdsNotaFiscalNF_NFSE_VLR_IR: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_IR'
      Precision = 15
    end
    object CdsNotaFiscalNF_NFSE_VLR_CSLL: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_CSLL'
      Precision = 15
    end
    object CdsNotaFiscalNF_NFSE_VLR_INSS: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_INSS'
      Precision = 15
    end
    object CdsNotaFiscalNF_NFSE_VLR_COFINS: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_COFINS'
      Precision = 15
    end
    object CdsNotaFiscalNF_NFSE_VLR_PIS: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_PIS'
      Precision = 15
    end
    object CdsNotaFiscalNF_NFSE_VLR_DEDUCOES: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_DEDUCOES'
      Precision = 15
    end
    object CdsNotaFiscalNF_NFSE_VLR_ISS: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_ISS'
      Precision = 15
    end
    object CdsNotaFiscalNF_NFSE_VLR_BASE_CALCULO: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_BASE_CALCULO'
      Precision = 15
    end
    object CdsNotaFiscalNF_NFSE_DESCRICAO: TBlobField
      FieldName = 'NF_NFSE_DESCRICAO'
      Size = 1
    end
    object CdsNotaFiscalNF_STATUS_NFSE: TStringField
      FieldName = 'NF_STATUS_NFSE'
      Size = 1
    end
    object CdsNotaFiscalNF_NFSE_ALIQUOTA_ISS: TFMTBCDField
      FieldName = 'NF_NFSE_ALIQUOTA_ISS'
      Precision = 15
    end
    object CdsNotaFiscalNF_EXPORT_UF_EMBARQUE: TStringField
      FieldName = 'NF_EXPORT_UF_EMBARQUE'
      Size = 2
    end
    object CdsNotaFiscalNF_EXPORT_LOCAL_EMBARQUE: TStringField
      FieldName = 'NF_EXPORT_LOCAL_EMBARQUE'
      Size = 60
    end
    object CdsNotaFiscalNF_VALORTOT_PIS: TFMTBCDField
      FieldName = 'NF_VALORTOT_PIS'
      Precision = 15
      Size = 4
    end
    object CdsNotaFiscalNF_VALORTOT_COFINS: TFMTBCDField
      FieldName = 'NF_VALORTOT_COFINS'
      Precision = 15
      Size = 4
    end
    object CdsNotaFiscalNF_COMPLEMENTAR: TStringField
      FieldName = 'NF_COMPLEMENTAR'
      FixedChar = True
      Size = 1
    end
    object CdsNotaFiscalNFE_STATUS_PRODUCAO: TStringField
      FieldName = 'NFE_STATUS_PRODUCAO'
      FixedChar = True
      Size = 1
    end
    object CdsNotaFiscalNF_OBSERVACAO: TBlobField
      FieldName = 'NF_OBSERVACAO'
      Size = 1
    end
    object CdsNotaFiscalNF_TIPO_FRETE: TStringField
      FieldName = 'NF_TIPO_FRETE'
      Size = 1
    end
    object CdsNotaFiscalNF_BASEICMS: TFMTBCDField
      FieldName = 'NF_BASEICMS'
      DisplayFormat = '###,###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNotaFiscalNF_VL_ICMS: TFMTBCDField
      FieldName = 'NF_VL_ICMS'
      DisplayFormat = '###,###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNotaFiscalNF_VLBASESUBTRIB: TFMTBCDField
      FieldName = 'NF_VLBASESUBTRIB'
      DisplayFormat = '###,###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNotaFiscalNF_VL_SUBTRIB: TFMTBCDField
      FieldName = 'NF_VL_SUBTRIB'
      DisplayFormat = '###,###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNotaFiscalNF_TOT_CSUB: TFMTBCDField
      FieldName = 'NF_TOT_CSUB'
      DisplayFormat = '###,###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNotaFiscalNF_TOT_PROD: TFMTBCDField
      FieldName = 'NF_TOT_PROD'
      DisplayFormat = '###,###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNotaFiscalNF_TOT_NOTA: TFMTBCDField
      FieldName = 'NF_TOT_NOTA'
      DisplayFormat = '###,###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNotaFiscalNF_VL_IPI: TFMTBCDField
      FieldName = 'NF_VL_IPI'
      DisplayFormat = '###,###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNotaFiscalNF_BASE_IPI: TFMTBCDField
      FieldName = 'NF_BASE_IPI'
      DisplayFormat = '###,###,###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNotaFiscalNF_VENDA_FATURADA: TStringField
      FieldName = 'NF_VENDA_FATURADA'
      Size = 1
    end
    object CdsNotaFiscalNF_CHAVE_NFE_REFERENCIADA: TStringField
      FieldName = 'NF_CHAVE_NFE_REFERENCIADA'
      Size = 44
    end
    object CdsNotaFiscalNF_VALOR_TOTAL_FCP: TFMTBCDField
      FieldName = 'NF_VALOR_TOTAL_FCP'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object CdsNotaFiscalNF_VALOR_TOTAL_PARTILHA_DEST: TFMTBCDField
      FieldName = 'NF_VALOR_TOTAL_PARTILHA_DEST'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object CdsNotaFiscalNF_VALOR_TOTAL_PARTILHA_ORIG: TFMTBCDField
      FieldName = 'NF_VALOR_TOTAL_PARTILHA_ORIG'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 2
    end
    object CdsNotaFiscalIBPT_VLAPROXTRIBUTOS: TFMTBCDField
      FieldName = 'IBPT_VLAPROXTRIBUTOS'
      Precision = 20
      Size = 2
    end
    object CdsNotaFiscalNF_UFVEICULO: TStringField
      FieldName = 'NF_UFVEICULO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object CdsNotaFiscalnf_finalidade: TIntegerField
      FieldName = 'nf_finalidade'
    end
    object CdsNotaFiscalNF_FORMAPAGTO: TIntegerField
      FieldName = 'NF_FORMAPAGTO'
    end
    object CdsNotaFiscalFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsNotaFiscalNF_TIPONOTA: TStringField
      FieldName = 'NF_TIPONOTA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsNotaFiscalNF_INTEGRADO: TStringField
      FieldName = 'NF_INTEGRADO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsNotaFiscalNF_VL_DESCTO_FAT: TFMTBCDField
      FieldName = 'NF_VL_DESCTO_FAT'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
    object CdsNotaFiscalNF_SITEXPEDICAO: TStringField
      FieldName = 'NF_SITEXPEDICAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsNotaFiscalNF_VALOR_TOTAL_FCPST: TFMTBCDField
      FieldName = 'NF_VALOR_TOTAL_FCPST'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object CdsNotaFiscalNF_TotalICMS_Deson: TFMTBCDField
      FieldName = 'NF_TotalICMS_Deson'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object CdsNotaFiscalNF_VLDIFAL: TFMTBCDField
      FieldName = 'NF_VLDIFAL'
      Size = 5
    end
  end
  object DsNotaFiscal: TDataSource [27]
    DataSet = CdsNotaFiscal
    Left = 1393
    Top = 364
  end
  inherited qAuxEstorna: TSQLQuery
    Left = 458
    Top = 240
  end
  inherited qAuxEstornaItem: TSQLQuery
    Left = 426
    Top = 240
  end
  object dsRecParce: TDataSource
    DataSet = CdsRecParce
    Left = 1200
    Top = 173
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
    Left = 380
    Top = 220
  end
  object mPedidoItem: TPopupMenu
    Left = 312
    Top = 465
    object Incluircbenef1: TMenuItem
      Caption = 'Incluir cbenef'
      OnClick = Incluircbenef1Click
    end
  end
  object cdsFinalidade: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1000
    Top = 339
    object cdsFinalidadecodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cdsFinalidadefinalidade: TStringField
      FieldName = 'finalidade'
      Size = 30
    end
  end
  object dsFinalidade: TDataSource
    DataSet = cdsFinalidade
    Left = 1064
    Top = 347
  end
  object dsInscricaoEstadual: TDataSource
    DataSet = cdsInscricaoEstadual
    Left = 776
    Top = 61
  end
  object qInscricaoEstadual: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from EMP_MULTIPLAS_IE')
    SQLConnection = DBConn
    Left = 432
    Top = 61
  end
  object cdsInscricaoEstadual: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInscricaoEstadual'
    Left = 664
    Top = 61
  end
  object dspInscricaoEstadual: TDataSetProvider
    DataSet = qInscricaoEstadual
    Left = 548
    Top = 61
  end
end
