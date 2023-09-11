object FrmFaturamentoNovoNotaFiscalItem: TFrmFaturamentoNovoNotaFiscalItem
  Left = 522
  Top = 204
  Caption = 'Nota Fiscal Item'
  ClientHeight = 455
  ClientWidth = 983
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    983
    455)
  PixelsPerInch = 96
  TextHeight = 14
  object GbBuscal: TGroupBox
    Left = 0
    Top = 0
    Width = 983
    Height = 62
    Align = alTop
    Caption = 'Localizar Produto'
    TabOrder = 0
    object spCliente: TSpeedButton
      Left = 837
      Top = 31
      Width = 119
      Height = 22
      Hint = 'Busca Cliente'
      Caption = 'F2 - Pesquisar'
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF314B62
        AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
        106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
        00FF9C6B65AF887BAF887EAA8075FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF3BABFFA1CAE7AD8679A98373E0CFB1FFFFDAFFFFDDFCF8CFCCB2
        9FA1746BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC0917DFC
        E9ACFFFFCCFFFFCFFFFFD0FFFFDEFFFFFAE3D3D1996965FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFB08978FAD192FEF4C2FFFFD0FFFFDAFFFFF6FFFF
        FCFFFFFCB69384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB08978FEDA97ED
        B478FBEEBBFFFFD3FFFFDCFFFFF4FFFFF4FFFFE2E9DDBCA67B73FF00FFFF00FF
        FF00FFFF00FFFF00FFB18A78FFDE99E9A167F4D199FEFCCCFFFFD5FFFFDAFFFF
        DCFFFFD7EFE6C5A97E75FF00FFFF00FFFF00FFFF00FFFF00FFAA7F73FAE0A4F0
        B778EEBA7BF6DDA6FEFBCCFFFFD3FFFFD1FFFFD7D9C5A7A3756CFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFCEB293FFFEDDF4D1A5EEBA7BF2C78FF8E1ABFCF0
        BAFCFACAA3776FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1746BE1
        D4D3FFFEEEF7CC8CF0B473F7C788FCE3A5C2A088A5776CFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF986865BA9587EAD7A4EAD59EE0C097A577
        6CA5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFA77E70A98073A4786EFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
    end
    object RbReferencia: TRadioButton
      Left = 8
      Top = 14
      Width = 113
      Height = 17
      Caption = '&Refer'#234'ncia'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RbDescricao: TRadioButton
      Left = 180
      Top = 14
      Width = 113
      Height = 17
      Caption = '&Descri'#231#227'o'
      TabOrder = 1
    end
    object RbOriginal: TRadioButton
      Left = 352
      Top = 14
      Width = 113
      Height = 17
      Caption = 'C'#243'digo &Original'
      TabOrder = 2
    end
    object RbBarras: TRadioButton
      Left = 524
      Top = 14
      Width = 105
      Height = 17
      Caption = 'C'#243'digo de &Barras'
      TabOrder = 3
    end
    object EdProdutoPesquisa: TEdit
      Left = 4
      Top = 32
      Width = 821
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object rbCodigoFornecedor: TRadioButton
      Left = 688
      Top = 14
      Width = 137
      Height = 17
      Caption = 'C'#243'digo do &Fornecedor'
      TabOrder = 5
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 62
    Width = 689
    Height = 173
    Caption = 'Produto'
    TabOrder = 1
    object Label2: TLabel
      Left = 20
      Top = 36
      Width = 52
      Height = 14
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o:'
    end
    object Label3: TLabel
      Left = 5
      Top = 104
      Width = 67
      Height = 14
      Alignment = taRightJustify
      Caption = 'Complemento:'
    end
    object Label15: TLabel
      Left = 39
      Top = 81
      Width = 33
      Height = 14
      Alignment = taRightJustify
      Caption = 'Grade:'
    end
    object Label1: TLabel
      Left = 16
      Top = 15
      Width = 56
      Height = 14
      Alignment = taRightJustify
      Caption = 'Refer'#234'ncia:'
    end
    object SdCadastroGrade: TSpeedButton
      Left = 374
      Top = 77
      Width = 23
      Height = 22
      Hint = 'Cadastrar Nova Grade'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000EB0A0000EB0A00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBECDB67A76723791914
        6C02146A012272155F9E5FD3E7D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF99CF990A84090A91010794000A8F001686002C7700396B011B6A0588C1
        88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9CD29C048E0704A309049F0933CC6666
        FF9966FF9966FF990B89003A6C00276B0287C087FFFFFFFFFFFFFFFFFFE1F1E1
        1390170CA9180AA3160AA315539B51FFF8FFFFF7FF66FF990099000191003C6D
        011B6C05D2E5D2FFFFFFFFFFFF72B57229B0370FA92311AA2310A922539B51FF
        F9FFFFFAFF66FF99029B06009A00108900396B005F9F5FFFFFFFFFFFFF319C31
        38BF4F33CC6666FF9966FF9933CC66F9F4F9FEF7FC66FF9966FF9966FF9966FF
        99347400217515FFFFFFFFFFFF1D992342C45D539B51FCE9F9F0E4ECF1EBF0F1
        EFF1F5F3F4FFF8FCFFF8FFFFF4FF66FF991D8300156E01FFFFFFFFFFFF209C26
        58CF76539B51FDECFDF2E9F2F0EBF0ECEBECEFEEEFF8F3F8FFF8FFFFF5FF66FF
        99118E00136F01FFFFFFFFFFFF37A53979DE99539B51539B51539B518EC18EF1
        EBF1F2ECF133CC66539B51539B5133CC66109403237D19FFFFFFFFFFFF7ABF7A
        70D68D51D47C2ECA602FC960539B51F2E8F2F0E4ED66FF9914AD2B0EA72007A3
        1212900566A966FFFFFFFFFFFFE8F6E831AB368DE9B13ACF6D2FCB64539B51FE
        ECFEFCE7F766FF9916AF2E11AA220BAA1910860BDBEDDBFFFFFFFFFFFFFFFFFF
        ABE1AB3FB84F89E8AF4CD57B219827539B51539B5133CC6616B02F11AF260793
        0C98D198FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABE1AB31AC3776DC9576E19D50
        D2783BC65F30C05025B33A1193159CD49CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE8F6E87ABF7A3CA93D25A32C229F2833A13472B872E1F2E1FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
    end
    object LblLote: TLabel
      Left = 400
      Top = 82
      Width = 24
      Height = 14
      Caption = 'Lote:'
    end
    object MemoDescricao: TMemo
      Left = 74
      Top = 36
      Width = 607
      Height = 39
      Color = clWhite
      Lines.Strings = (
        'MemoDescricao')
      MaxLength = 100
      TabOrder = 1
    end
    object MemoComplemento: TMemo
      Left = 74
      Top = 104
      Width = 607
      Height = 62
      Lines.Strings = (
        'Memo1')
      MaxLength = 150
      TabOrder = 4
    end
    object EdReferencia: TEdit
      Left = 74
      Top = 12
      Width = 607
      Height = 22
      CharCase = ecUpperCase
      Color = 14145495
      TabOrder = 0
    end
    object CbGrade: TComboBoxRw
      Left = 74
      Top = 77
      Width = 271
      Height = 22
      TabOrder = 2
      CharCase = ecUpperCase
      LookupSelect = 'prg_descricao'
      LookupOrderBy = 'prg_descricao'
      LookupTable = 'prd_grade'
      GridAutoSize = False
      LookupSource = CbGrade.InternalSource
      LookupKeyField = 'PRG_REGISTRO'
      ShowButton = True
      LookupTableShare = 'TABELAS'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      Tabela = 'prd_grade'
      CamposCarregar = 'prg_descricao'
      CamposRetornar = 'PRG_REGISTRO'
      CamposOrdernar = 'prg_descricao'
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
    object CbLoteProduto: TcxLookupComboBox
      Left = 426
      Top = 77
      Properties.KeyFieldNames = 'PRDL_REGISTRO'
      Properties.ListColumns = <
        item
          Caption = 'Lote'
          FieldName = 'PRDL_LOTE'
        end
        item
          Caption = 'Validade'
          FieldName = 'PRDL_DATA_VALIDADE'
        end>
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 3
      Width = 255
    end
  end
  object Panel1: TPanel
    Left = 695
    Top = 67
    Width = 265
    Height = 168
    BevelInner = bvLowered
    Caption = 'FOTO'
    Color = clWhite
    TabOrder = 2
    object ImgProduto: TImage
      Left = 2
      Top = 2
      Width = 261
      Height = 164
      Align = alClient
      Stretch = True
    end
  end
  object PGradeProduto: TPanel
    Left = 507
    Top = 56
    Width = 961
    Height = 179
    Caption = 'PGradeProduto'
    TabOrder = 3
    Visible = False
    object DbGradeProdutoPesquisa: TDBGrid
      Left = 1
      Top = 1
      Width = 959
      Height = 177
      Align = alClient
      Color = 16776176
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PRD_PRODSERV'
          Title.Caption = 'P/S'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_REFER'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 442
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_UND'
          Title.Alignment = taCenter
          Title.Caption = 'UND'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_CODORIGINAL'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo Original'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_PVENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LIN_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Linha / Marca'
          Width = 158
          Visible = True
        end>
    end
  end
  object pgc1: TPageControl
    Left = 0
    Top = 309
    Width = 969
    Height = 144
    ActivePage = TabSheet7
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'ICMS'
      ImageIndex = 1
    end
    object tsICMS: TTabSheet
      Caption = 'ICMS ST'
    end
    object tsExportao: TTabSheet
      Caption = 'IPI'
      ImageIndex = 3
    end
    object TabSheet2: TTabSheet
      Caption = 'PIS'
      ImageIndex = 3
    end
    object TabSheet3: TTabSheet
      Caption = 'COFINS'
      ImageIndex = 4
    end
    object TabSheet4: TTabSheet
      Caption = 'II'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object TabSheet5: TTabSheet
      Caption = 'Importa'#231#227'o'
      ImageIndex = 6
    end
    object TabSheet6: TTabSheet
      Caption = 'Exporta'#231#227'o'
      ImageIndex = 7
    end
    object TabSheet7: TTabSheet
      Caption = 'Pedido de Compra'
      ImageIndex = 8
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 235
    Width = 971
    Height = 70
    Caption = 's'
    TabOrder = 5
    object Label4: TLabel
      Left = 9
      Top = 19
      Width = 58
      Height = 14
      Caption = 'Quantidade:'
    end
    object Label5: TLabel
      Left = 169
      Top = 19
      Width = 70
      Height = 14
      Caption = 'Pre'#231'o Unit'#225'rio:'
    end
    object Label6: TLabel
      Left = 337
      Top = 19
      Width = 53
      Height = 14
      Caption = 'Valor Total:'
    end
    object Label7: TLabel
      Left = 484
      Top = 19
      Width = 82
      Height = 14
      Caption = 'Opera'#231#227'o Fiscal:'
    end
    object CurTotalProduto: TCurrencyEdit
      Left = 71
      Top = 17
      Width = 90
      Height = 21
      AutoSize = False
      Color = clWhite
      DecimalPlaces = 4
      DisplayFormat = ',0.####;-,0.####'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ZeroEmpty = False
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 391
      Top = 17
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
    object CurrencyEdit2: TCurrencyEdit
      Left = 243
      Top = 17
      Width = 90
      Height = 21
      AutoSize = False
      Color = clWhite
      DecimalPlaces = 4
      DisplayFormat = ',0.00##;-,0.00##'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      ZeroEmpty = False
    end
    object CbOper: TComboBox
      Left = 607
      Top = 17
      Width = 356
      Height = 22
      CharCase = ecUpperCase
      DropDownCount = 10
      MaxLength = 80
      TabOrder = 3
    end
    object CurrOpeNat: TCurrencyEdit
      Left = 568
      Top = 16
      Width = 36
      Height = 23
      Alignment = taCenter
      AutoSize = False
      DisplayFormat = '0000'
      MaxLength = 4
      TabOrder = 4
    end
  end
  object Bit_Gravar: TBitBtn
    Left = 785
    Top = 453
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Hint = '|Grava registro...'
    Anchors = [akRight, akBottom]
    Caption = 'C&onfirmar'
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
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
  end
  object Bit_Cancelar: TBitBtn
    Left = 889
    Top = 453
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Hint = '|Cancela registro atual...'
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = '&Cancelar'
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
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = Bit_CancelarClick
  end
end
