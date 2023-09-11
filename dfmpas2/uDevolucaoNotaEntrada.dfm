inherited frmDevolucaoNotaEntrada: TfrmDevolucaoNotaEntrada
  Caption = 'Devolu'#231#227'o de Nota Fiscal de Entrada'
  ClientHeight = 717
  ClientWidth = 1199
  ExplicitWidth = 1207
  ExplicitHeight = 744
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 1199
    Height = 112
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 8
      Width = 78
      Height = 16
      Caption = 'Fornecedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbFornecedor: TLabel
      Left = 124
      Top = 8
      Width = 78
      Height = 16
      Caption = 'Fornecedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 7
      Top = 30
      Width = 73
      Height = 16
      Caption = 'Nota Fiscal:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbNotaFiscal: TLabel
      Left = 124
      Top = 30
      Width = 73
      Height = 16
      Caption = 'Nota Fiscal:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbSerie: TLabel
      Left = 316
      Top = 30
      Width = 33
      Height = 16
      Caption = 'S'#233'rie'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 272
      Top = 30
      Width = 38
      Height = 16
      Caption = 'S'#233'rie:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 7
      Top = 52
      Width = 111
      Height = 16
      Caption = 'Data de Entrada:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbDataEntrada: TLabel
      Left = 124
      Top = 52
      Width = 106
      Height = 16
      Caption = 'Data da Entrada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 464
      Top = 73
      Width = 30
      Height = 14
      Alignment = taRightJustify
      Caption = 'CFOP:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 7
      Top = 75
      Width = 45
      Height = 16
      Caption = 'Chave:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edCfop: TSgDbSearchCombo
      Left = 500
      Top = 70
      Width = 297
      Height = 21
      TabOrder = 0
      CharCase = ecUpperCase
      LookupSelect = 'ope_codigo, OPE_NATUREZA, OPE_DESCRI'
      LookupOrderBy = 'ope_descri'
      LookupTable = 'OPE0000'
      LookupDispl = 'OPE_DESCRI'
      GridAutoSize = False
      LookupSource = qCfop
      LookupKeyField = 'ope_codigo'
      ShowButton = True
      LookupTableShare = 'OPERACAOFISCAL'
      AutoF8WinTitulo = 'Opera'#231#245'es Fiscais - Natureza - CFOP '
      AutoF8ColumnsTitulo = 'C'#243'digo, Natureza, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object edChave: TEdit
      Left = 124
      Top = 74
      Width = 297
      Height = 21
      ReadOnly = True
      TabOrder = 1
      Text = 'edChave'
    end
  end
  object GroupBox1: TGroupBox [1]
    Left = 0
    Top = 112
    Width = 1199
    Height = 88
    Align = alTop
    Caption = 'Impostos e Totais'
    TabOrder = 1
    object Label6: TLabel
      Left = 13
      Top = 29
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Base ICMS:'
    end
    object Label7: TLabel
      Left = 172
      Top = 29
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor ICMS:'
    end
    object Label5: TLabel
      Left = 339
      Top = 29
      Width = 70
      Height = 13
      Alignment = taRightJustify
      Caption = 'Base ICMS ST:'
    end
    object Label8: TLabel
      Left = 518
      Top = 29
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor ICMS ST:'
    end
    object Label9: TLabel
      Left = 38
      Top = 52
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Frete:'
    end
    object Label10: TLabel
      Left = 190
      Top = 53
      Width = 38
      Height = 13
      Caption = 'Seguro:'
    end
    object Label11: TLabel
      Left = 359
      Top = 52
      Width = 50
      Height = 13
      Caption = 'Despesas:'
    end
    object Label12: TLabel
      Left = 546
      Top = 51
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor IPI:'
    end
    object Label14: TLabel
      Left = 707
      Top = 51
      Width = 93
      Height = 13
      Caption = 'Valor total da nota:'
    end
    object Label13: TLabel
      Left = 698
      Top = 29
      Width = 99
      Height = 13
      Caption = 'Valor total produtos:'
    end
    object CurTotalBaseICMS: TCurrencyEdit
      Left = 74
      Top = 26
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Enabled = False
      ReadOnly = True
      TabOrder = 0
      ZeroEmpty = False
    end
    object CurTotalValorICMS: TCurrencyEdit
      Left = 234
      Top = 26
      Width = 87
      Height = 21
      TabStop = False
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Enabled = False
      ReadOnly = True
      TabOrder = 1
      ZeroEmpty = False
    end
    object CurTotalBaseICMSST: TCurrencyEdit
      Left = 411
      Top = 26
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Enabled = False
      ReadOnly = True
      TabOrder = 2
      ZeroEmpty = False
    end
    object CurTotalValorICMSST: TCurrencyEdit
      Left = 592
      Top = 26
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Enabled = False
      ReadOnly = True
      TabOrder = 3
      ZeroEmpty = False
    end
    object CurFrete: TCurrencyEdit
      Left = 74
      Top = 49
      Width = 90
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      TabOrder = 4
    end
    object CurrVlSeguro: TCurrencyEdit
      Left = 234
      Top = 48
      Width = 87
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      TabOrder = 5
      ZeroEmpty = False
    end
    object CurrVlDespesas: TCurrencyEdit
      Left = 411
      Top = 48
      Width = 90
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      TabOrder = 6
      ZeroEmpty = False
    end
    object CurTotalValorIPI: TCurrencyEdit
      Left = 592
      Top = 48
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Enabled = False
      ReadOnly = True
      TabOrder = 7
      ZeroEmpty = False
    end
    object CurrTotalNota: TCurrencyEdit
      Left = 801
      Top = 48
      Width = 82
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Enabled = False
      TabOrder = 8
      ZeroEmpty = False
    end
    object Curr_Valor_Produtos: TCurrencyEdit
      Left = 801
      Top = 26
      Width = 82
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Enabled = False
      TabOrder = 9
      ZeroEmpty = False
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 676
    Width = 1199
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Label16: TLabel
      Left = 5
      Top = 15
      Width = 741
      Height = 13
      Caption = 
        'O usu'#225'rio assume toda a responsabilidade sobre as mudan'#231'as nos v' +
        'alores, os quais ter'#227'o impacto Fiscal e Cont'#225'bil para a empresa.'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Bit_Gravar: TBitBtn
      Left = 777
      Top = 10
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 892
      Top = 10
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
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
      TabOrder = 1
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 1005
      Top = 10
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Glyph.Data = {
        46060000424D4606000000000000360400002800000017000000160000000100
        0800000000001002000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0007070707F707
        07F70707EDED0707A50707F70707070707000707F707F7A407F7F7F707A4F752
        9851F707A4F7070707000707F7A4F707F7F707F7A4070752F0F048A407EDA4F7
        070007F7F7F7F7F7F707F7F7F7F7F752F0F0064849F707F70700F7A4A49BA4F7
        A4A4F7F7F7F70792F0F006A8480092A40700F7525B5B5B525B5B524907070752
        F0F0060606004A5AF7000707070707070708F700499BAC52E8F006069852F708
        0700070707070707F79B9B00520A4900E8F006069852A4070700070707070707
        AC004952F7A4F752F0F006069852A4070700070707070707AC485852A5A4A452
        F0F011589852A4070700070707F7A5F7A498F05053A4A452F0065C599852A407
        07000707524A4A4A5106FEE85853A552F0E853519852A4070700075306E8E8E8
        E8F0FEFEE8505B52F0F058989852A40707000741FEF3FF0909090909FE065249
        F0F006069852A4070700079C0659A39A9BF3FEFEF191A452F0F006069852A407
        07000707ACF7ACF7A398FEF0919CA552F0F006069852A4070700070707070707
        F798FE515BA4A40AF0F006069852A4070700070707070707AC005052F7A4A49B
        99FEA8069852A4070700070707070707F7539B52A4A4A4A45B98FEA85852A407
        07000707070707070707A452F7A4A4A4A49C99FE06529C070700070707070707
        0708A4005252525252520A50064907070700070707070707070707F7A4A4A4A4
        A4A4F7A5A5F707070700}
      ModalResult = 2
      NumGlyphs = 2
      TabOrder = 2
      TabStop = False
      OnClick = Bit_SairClick
    end
  end
  object GroupBox2: TGroupBox [3]
    Left = 0
    Top = 571
    Width = 1199
    Height = 105
    Align = alBottom
    Caption = 'Dados Adicionais'
    TabOrder = 3
    object mmObservacoes: TMemo
      Left = 2
      Top = 15
      Width = 1195
      Height = 88
      Align = alClient
      TabOrder = 0
    end
  end
  object Panel3: TPanel [4]
    Left = 0
    Top = 200
    Width = 1199
    Height = 371
    Align = alClient
    TabOrder = 4
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 1197
      Height = 369
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        PopupMenu = pmSeleciona
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        DataController.DataSource = dsNF
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1SELECIONADO: TcxGridDBColumn
          Caption = '*'
          DataBinding.FieldName = 'SELECIONADO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Properties.OnChange = cxGrid1DBTableView1SELECIONADOPropertiesChange
          HeaderAlignmentHorz = taCenter
          Width = 27
        end
        object cxGrid1DBTableView1PRD_REFER: TcxGridDBColumn
          Caption = 'Refer'#234'ncia'
          DataBinding.FieldName = 'PRD_REFER'
          Options.Editing = False
          Width = 85
        end
        object cxGrid1DBTableView1PRD_DESCRI: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'PRD_DESCRI'
          Options.Editing = False
          Width = 237
        end
        object cxGrid1DBTableView1ENF_QTDE_ORIGINAL: TcxGridDBColumn
          Caption = 'Qtde. Original'
          DataBinding.FieldName = 'ENF_QTDE_ORIGINAL'
          Options.Editing = False
          Width = 76
        end
        object cxGrid1DBTableView1ENF_UTRIB: TcxGridDBColumn
          Caption = 'Unidade Trib.'
          DataBinding.FieldName = 'ENF_UTRIB'
          Options.Editing = False
          Width = 81
        end
        object cxGrid1DBTableView1ENF_IT_QUANTIDADE_DEVOLVIDA: TcxGridDBColumn
          Caption = 'Qtd. Devolvida'
          DataBinding.FieldName = 'ENF_IT_QUANTIDADE_DEVOLVIDA'
          PropertiesClassName = 'TcxMaskEditProperties'
          Options.Editing = False
          Width = 91
        end
        object cxGrid1DBTableView1ENF_IT_QUANTIDADE_A_DEVOLVER: TcxGridDBColumn
          Caption = 'Qtd. A Devolver'
          DataBinding.FieldName = 'ENF_IT_QUANTIDADE_A_DEVOLVER'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.OnValidate = cxGrid1DBTableView1ENF_IT_QUANTIDADE_A_DEVOLVERPropertiesValidate
          Styles.Content = Amarelo
          Styles.Header = Amarelo
          Width = 96
        end
        object cxGrid1DBTableView1ENF_PRECO_ORIGINAL: TcxGridDBColumn
          Caption = 'Pre'#231'o Original'
          DataBinding.FieldName = 'ENF_PRECO_ORIGINAL'
          Options.Editing = False
          Width = 76
        end
        object cxGrid1DBTableView1ENF_PTOTAL_ORIGINAL: TcxGridDBColumn
          Caption = 'Total Original'
          DataBinding.FieldName = 'ENF_PTOTAL_ORIGINAL'
          Options.Editing = False
          Width = 78
        end
        object cxGrid1DBTableView1ENF_PRECO: TcxGridDBColumn
          Caption = 'Pre'#231'o'
          DataBinding.FieldName = 'ENF_PRECO_ORIGINAL'
          Options.Editing = False
          Width = 77
        end
        object cxGrid1DBTableView1ENF_UCOM: TcxGridDBColumn
          Caption = 'Unidade Com.'
          DataBinding.FieldName = 'ENF_UCOM'
          Options.Editing = False
          Width = 76
        end
        object cxGrid1DBTableView1ENF_ICMSALIQ: TcxGridDBColumn
          Caption = '% ICMS '
          DataBinding.FieldName = 'ENF_ICMSALIQ'
          Options.Editing = False
          Width = 45
        end
        object cxGrid1DBTableView1ENF_IT_BASEICMS: TcxGridDBColumn
          Caption = 'Base ICMS'
          DataBinding.FieldName = 'ENF_IT_BASEICMS'
          Options.Editing = False
          Width = 99
        end
        object cxGrid1DBTableView1ENF_ICMS: TcxGridDBColumn
          Caption = 'Valor ICMS'
          DataBinding.FieldName = 'ENF_ICMS'
          Options.Editing = False
          Width = 91
        end
        object cxGrid1DBTableView1ENF_IPIALIQ: TcxGridDBColumn
          Caption = 'Aliq. IPI'
          DataBinding.FieldName = 'ENF_IPIALIQ'
          Options.Editing = False
          Width = 46
        end
        object cxGrid1DBTableView1ENF_IT_VLIPI: TcxGridDBColumn
          Caption = 'Valor IPI'
          DataBinding.FieldName = 'ENF_IT_VLIPI'
          Options.Editing = False
          Width = 66
        end
        object cxGrid1DBTableView1ENF_IT_ALIQSUBTRIB: TcxGridDBColumn
          Caption = '% Subs. Trib.'
          DataBinding.FieldName = 'ENF_IT_ALIQSUBTRIB'
          Options.Editing = False
          Width = 68
        end
        object cxGrid1DBTableView1ENF_IT_BASESUBTRIB: TcxGridDBColumn
          Caption = 'Base ST'
          DataBinding.FieldName = 'ENF_IT_BASESUBTRIB'
          Options.Editing = False
          Width = 91
        end
        object cxGrid1DBTableView1ENF_REGISTRO: TcxGridDBColumn
          DataBinding.FieldName = 'ENF_REGISTRO'
          Visible = False
          Options.Editing = False
          Width = 97
        end
        object cxGrid1DBTableView1ENF_QTDE: TcxGridDBColumn
          Caption = 'Qtd. Recebida'
          DataBinding.FieldName = 'ENF_QTDE'
          Options.Editing = False
          Width = 76
        end
        object cxGrid1DBTableView1ENF_IT_NOTANUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'ENF_IT_NOTANUMBER'
          Visible = False
          Options.Editing = False
          Width = 135
        end
        object cxGrid1DBTableView1PRD_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'PRD_CODIGO'
          Visible = False
          Options.Editing = False
          Width = 79
        end
        object cxGrid1DBTableView1ENF_QTDE_PEDIDO_COMPRA: TcxGridDBColumn
          DataBinding.FieldName = 'ENF_QTDE_PEDIDO_COMPRA'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1OCI_REGISTRO: TcxGridDBColumn
          DataBinding.FieldName = 'OCI_REGISTRO'
          Visible = False
          Options.Editing = False
          Width = 81
        end
        object cxGrid1DBTableView1OCP_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'OCP_CODIGO'
          Visible = False
          Options.Editing = False
          Width = 73
        end
        object cxGrid1DBTableView1FOR_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'FOR_CODIGO'
          Visible = False
          Options.Editing = False
          Width = 97
        end
        object cxGrid1DBTableView1PCX_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'PCX_CODIGO'
          Visible = False
          Options.Editing = False
          Width = 82
        end
        object cxGrid1DBTableView1CST_IPI: TcxGridDBColumn
          DataBinding.FieldName = 'CST_IPI'
          Visible = False
          Options.Editing = False
          Width = 58
        end
        object cxGrid1DBTableView1ENF_IT_BASEIPI: TcxGridDBColumn
          Caption = 'Base IPI'
          DataBinding.FieldName = 'ENF_IT_BASEIPI'
          Options.Editing = False
          Width = 87
        end
        object cxGrid1DBTableView1STB_TRIBUTACAO: TcxGridDBColumn
          DataBinding.FieldName = 'STB_TRIBUTACAO'
          Visible = False
          Options.Editing = False
          Width = 99
        end
        object cxGrid1DBTableView1ENF_VLSUBST: TcxGridDBColumn
          Caption = 'Valor ST'
          DataBinding.FieldName = 'ENF_VLSUBST'
          Options.Editing = False
          Width = 91
        end
        object cxGrid1DBTableView1CST_PIS: TcxGridDBColumn
          DataBinding.FieldName = 'CST_PIS'
          Visible = False
          Options.Editing = False
          Width = 61
        end
        object cxGrid1DBTableView1ENF_BASEPIS: TcxGridDBColumn
          Caption = 'Base PIS'
          DataBinding.FieldName = 'ENF_BASEPIS'
          Options.Editing = False
          Width = 86
        end
        object cxGrid1DBTableView1ENF_IT_ALIQPIS: TcxGridDBColumn
          Caption = 'Aliq. PIS'
          DataBinding.FieldName = 'ENF_IT_ALIQPIS'
          Options.Editing = False
          Width = 49
        end
        object cxGrid1DBTableView1ENF_IT_VLPIS: TcxGridDBColumn
          Caption = 'Valor PIS'
          DataBinding.FieldName = 'ENF_IT_VLPIS'
          Options.Editing = False
          Width = 87
        end
        object cxGrid1DBTableView1CST_COFINS: TcxGridDBColumn
          DataBinding.FieldName = 'CST_COFINS'
          Visible = False
          Options.Editing = False
          Width = 103
        end
        object cxGrid1DBTableView1ENF_BASECOFINS: TcxGridDBColumn
          Caption = 'Base Cofins'
          DataBinding.FieldName = 'ENF_BASECOFINS'
          Options.Editing = False
        end
        object cxGrid1DBTableView1ENF_IT_ALIQCOFINS: TcxGridDBColumn
          Caption = 'aliq. COFINS'
          DataBinding.FieldName = 'ENF_IT_ALIQCOFINS'
          Options.Editing = False
        end
        object cxGrid1DBTableView1ENF_IT_VLCOFINS: TcxGridDBColumn
          Caption = 'Vl. COFINS'
          DataBinding.FieldName = 'ENF_IT_VLCOFINS'
          Options.Editing = False
        end
        object cxGrid1DBTableView1ENF_ATUALIZA_PRECO: TcxGridDBColumn
          DataBinding.FieldName = 'ENF_ATUALIZA_PRECO'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1ENF_ATUALIZA_ESTOQUE: TcxGridDBColumn
          DataBinding.FieldName = 'ENF_ATUALIZA_ESTOQUE'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1ENF_LOTE: TcxGridDBColumn
          Caption = 'Lote'
          DataBinding.FieldName = 'ENF_LOTE'
          Options.Editing = False
        end
        object cxGrid1DBTableView1ENF_CFOP: TcxGridDBColumn
          Caption = 'CFOP'
          DataBinding.FieldName = 'ENF_CFOP'
          Options.Editing = False
          Width = 41
        end
        object cxGrid1DBTableView1ENF_ORIGEM_MERCADORIA: TcxGridDBColumn
          DataBinding.FieldName = 'ENF_ORIGEM_MERCADORIA'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1AMX_CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'AMX_CODIGO'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1AMX_DESCRI: TcxGridDBColumn
          DataBinding.FieldName = 'AMX_DESCRI'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1PRD_ESTOQUE: TcxGridDBColumn
          Caption = 'Em Estoque'
          DataBinding.FieldName = 'PRD_ESTOQUE'
          Options.Editing = False
          Width = 66
        end
        object cxGrid1DBTableView1PRD_ENTRADA: TcxGridDBColumn
          DataBinding.FieldName = 'PRD_ENTRADA'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1ENF_UNIDADE_TRABALHO: TcxGridDBColumn
          DataBinding.FieldName = 'ENF_UNIDADE_TRABALHO'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1REPETICAO_REFER: TcxGridDBColumn
          DataBinding.FieldName = 'REPETICAO_REFER'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1PRD_ALIQICM: TcxGridDBColumn
          DataBinding.FieldName = 'PRD_ALIQICM'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1PRD_SAIDA: TcxGridDBColumn
          DataBinding.FieldName = 'PRD_SAIDA'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1ENF_IT_DESCTO: TcxGridDBColumn
          Caption = 'Desconto'
          DataBinding.FieldName = 'ENF_IT_DESCTO'
          Options.Editing = False
          Width = 54
        end
        object cxGrid1DBTableView1PRDL_REGISTRO: TcxGridDBColumn
          DataBinding.FieldName = 'PRDL_REGISTRO'
          Visible = False
          Options.Editing = False
        end
        object cxGrid1DBTableView1ENF_IT_VALFRETE: TcxGridDBColumn
          Caption = 'Frete'
          DataBinding.FieldName = 'ENF_IT_VALFRETE'
          Options.Editing = False
          Width = 64
        end
        object cxGrid1DBTableView1ENF_IT_VLSEGURO: TcxGridDBColumn
          Caption = 'Seguro'
          DataBinding.FieldName = 'ENF_IT_VLSEGURO'
          Options.Editing = False
          Width = 74
        end
        object cxGrid1DBTableView1ENF_IT_VLDESP_ACES: TcxGridDBColumn
          Caption = 'Despesas'
          DataBinding.FieldName = 'ENF_IT_VLDESP_ACES'
          Options.Editing = False
          Width = 80
        end
        object cxGrid1DBTableView1ENF_PRECO1: TcxGridDBColumn
          DataBinding.FieldName = 'ENF_PRECO'
          Visible = False
        end
        object cxGrid1DBTableView1ENF_CHAVE_NFE: TcxGridDBColumn
          DataBinding.FieldName = 'ENF_CHAVE_NFE'
          Visible = False
        end
        object cxGrid1DBTableView1PRD_PRODSERV: TcxGridDBColumn
          DataBinding.FieldName = 'PRD_PRODSERV'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 472
    Top = 384
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 560
    Top = 448
  end
  inherited DBConn: TSQLConnection
    Left = 432
    Top = 497
  end
  inherited qAux: TSQLQuery
    Left = 658
    Top = 381
  end
  inherited qAux2: TSQLQuery
    Left = 714
    Top = 380
  end
  inherited qAux3: TSQLQuery
    Left = 762
    Top = 380
  end
  inherited qAuxEstorna: TSQLQuery
    Left = 826
    Top = 384
  end
  inherited qAuxEstornaItem: TSQLQuery
    Left = 834
    Top = 520
  end
  object qCfop: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select ope_codigo, ope_descri'
      'from ope0000'
      'where ope_codigo = '#39'-1'#39
      'order by ope_DESCRI'
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 829
    Top = 68
  end
  object qNF: TFDQuery
    Connection = DBInicio.FDACConn
    UpdateOptions.AssignedValues = [uvEDelete, uvEUpdate, uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockWait, uvRefreshMode, uvCountUpdatedRecords, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.EnableDelete = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'SELECT'
      '  e.ENF_ALIQPIS, '
      '  e.ENF_ALIQCOFINS, '
      '  e.ENF_VLCOFINS, '
      '  e.ENF_VLPIS, '
      '  e.ENF_BASE_IPI, '
      '  e.ENF_VL_IPI, '
      '  e.ENF_VL_SUBTRIB, '
      '  e.ENF_VLBASESUBTRIB, '
      '  e.ENF_BASEICMS,'
      '  e.ENF_CHAVE_NFE,'
      '  ei.PED_CODIGO, '
      '  pr.PRD_PRODSERV, '
      '  CAST(0 as INTEGER) as SELECIONADO,'
      '  ei.ENF_IT_QUANTIDADE_DEVOLVIDA, '
      '  ei.ENF_IT_QUANTIDADE_A_DEVOLVER,'
      '  ei.ENF_REGISTRO,'
      '  ei.ENF_IT_NOTANUMBER,'
      '  pr.PRD_CODIGO,'
      '  ei.PRD_REFER,'
      '  ei.ENF_QTDE_PEDIDO_COMPRA,'
      '  ei.OCI_REGISTRO,'
      '  ei.PRD_DESCRI,'
      '  ei.OCP_CODIGO,'
      '  ei.FOR_CODIGO,'
      '  ei.PCX_CODIGO,'
      '  ei.ENF_QTDE,'
      '  ei.ENF_PRECO,'
      '  ei.cst_ipi,'
      '  ei.enf_it_baseipi,'
      '  ei.ENF_IPIALIQ,'
      '  ei.enf_it_vlipi,'
      '  ei.stb_tributacao,'
      '  ei.enf_it_baseicms,'
      '  ei.enf_icmsaliq,'
      '  ei.ENF_ICMS,'
      '  ei.enf_it_basesubtrib,'
      '  ei.enf_it_aliqsubtrib,'
      '  ei.enf_vlsubst,'
      '  ei.cst_pis,'
      '  ei.enf_basepis,'
      '  ei.enf_it_aliqpis,'
      '  ei.enf_it_vlpis,'
      '  ei.cst_cofins,'
      '  ei.enf_basecofins,'
      '  ei.enf_it_aliqcofins,'
      '  ei.enf_it_vlcofins,'
      '  ei.ENF_ATUALIZA_PRECO,'
      '  ei.ENF_ATUALIZA_ESTOQUE,'
      '  ei.ENF_LOTE,'
      '  ei.ENF_CFOP,'
      '  ei.ENF_ORIGEM_MERCADORIA,'
      '  ei.AMX_CODIGO,'
      '  al.AMX_DESCRI,'
      '  pr.PRD_ESTOQUE,'
      '  pr.PRD_ENTRADA,'
      '  ei.ENF_UNIDADE_TRABALHO,'
      '  ei.REPETICAO_REFER,'
      '  pr.PRD_ALIQICM,'
      '  pr.PRD_SAIDA,'
      '  ei.ENF_IT_DESCTO,'
      '  ei.PRDL_REGISTRO,'
      '  ei.enf_it_valfrete,'
      '  ei.enf_it_vlseguro,'
      '  ei.enf_it_vldesp_aces,'
      '  enf_ucom ,'
      '  ENF_UTRIB,'
      '  ENF_QTDE_ORIGINAL,'
      '  ENF_PRECO_ORIGINAL,'
      '  ENF_PTOTAL_ORIGINAL'
      'FROM ENF_IT01 ei'
      
        'JOIN ENF0001 e ON (e.ENF_NOTANUMBER = ei.ENF_IT_NOTANUMBER AND e' +
        '.FOR_CODIGO = ei.FOR_CODIGO)'
      'LEFT JOIN PRD0000 pr ON (ei.PRD_CODIGO = pr.PRD_CODIGO)'
      'LEFT JOIN ALMOX0000 al ON (al.AMX_CODIGO = ei.AMX_CODIGO)'
      'WHERE ei.ENF_IT_NOTANUMBER = '#39'0000016251'#39
      '  AND ei.FOR_CODIGO = '#39'0001'#39
      '  AND ei.EMP_CODIGO = '#39'001'#39
      'ORDER BY'
      '  ei.ENF_REGISTRO')
    Left = 664
    Top = 225
    object qNFSELECIONADO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SELECIONADO'
      Origin = 'SELECIONADO'
      ProviderFlags = []
    end
    object qNFPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object qNFPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      Size = 80
    end
    object qNFENF_QTDE: TFMTBCDField
      FieldName = 'ENF_QTDE'
      Origin = 'ENF_QTDE'
      Precision = 18
      Size = 5
    end
    object qNFENF_IT_QUANTIDADE_DEVOLVIDA: TFMTBCDField
      FieldName = 'ENF_IT_QUANTIDADE_DEVOLVIDA'
      Origin = 'ENF_IT_QUANTIDADE_DEVOLVIDA'
      Precision = 18
      Size = 5
    end
    object qNFENF_IT_QUANTIDADE_A_DEVOLVER: TFMTBCDField
      FieldName = 'ENF_IT_QUANTIDADE_A_DEVOLVER'
      Origin = 'ENF_IT_QUANTIDADE_A_DEVOLVER'
      Required = True
      Precision = 18
      Size = 5
    end
    object qNFENF_REGISTRO: TIntegerField
      FieldName = 'ENF_REGISTRO'
      Origin = 'ENF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qNFENF_IT_NOTANUMBER: TStringField
      FieldName = 'ENF_IT_NOTANUMBER'
      Origin = 'ENF_IT_NOTANUMBER'
      Required = True
      Size = 10
    end
    object qNFPRD_CODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object qNFENF_QTDE_PEDIDO_COMPRA: TFMTBCDField
      FieldName = 'ENF_QTDE_PEDIDO_COMPRA'
      Origin = 'ENF_QTDE_PEDIDO_COMPRA'
      Precision = 18
      Size = 5
    end
    object qNFOCI_REGISTRO: TIntegerField
      FieldName = 'OCI_REGISTRO'
      Origin = 'OCI_REGISTRO'
    end
    object qNFOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      Origin = 'OCP_CODIGO'
      Required = True
      Size = 6
    end
    object qNFFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Origin = 'FOR_CODIGO'
      Size = 4
    end
    object qNFPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Origin = 'PCX_CODIGO'
      Size = 3
    end
    object qNFENF_PRECO: TFMTBCDField
      FieldName = 'ENF_PRECO'
      Origin = 'ENF_PRECO'
      Precision = 18
      Size = 5
    end
    object qNFCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
      Size = 3
    end
    object qNFENF_IT_BASEIPI: TFMTBCDField
      FieldName = 'ENF_IT_BASEIPI'
      Origin = 'ENF_IT_BASEIPI'
      Precision = 18
      Size = 5
    end
    object qNFENF_IPIALIQ: TFMTBCDField
      FieldName = 'ENF_IPIALIQ'
      Origin = 'ENF_IPIALIQ'
      Precision = 18
      Size = 5
    end
    object qNFENF_IT_VLIPI: TFMTBCDField
      FieldName = 'ENF_IT_VLIPI'
      Origin = 'ENF_IT_VLIPI'
      Precision = 18
      Size = 5
    end
    object qNFSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Origin = 'STB_TRIBUTACAO'
      Size = 3
    end
    object qNFENF_IT_BASEICMS: TFMTBCDField
      FieldName = 'ENF_IT_BASEICMS'
      Origin = 'ENF_IT_BASEICMS'
      Precision = 18
      Size = 5
    end
    object qNFENF_ICMSALIQ: TFMTBCDField
      FieldName = 'ENF_ICMSALIQ'
      Origin = 'ENF_ICMSALIQ'
      Precision = 18
      Size = 5
    end
    object qNFENF_ICMS: TFMTBCDField
      FieldName = 'ENF_ICMS'
      Origin = 'ENF_ICMS'
      Precision = 18
      Size = 5
    end
    object qNFENF_IT_BASESUBTRIB: TFMTBCDField
      FieldName = 'ENF_IT_BASESUBTRIB'
      Origin = 'ENF_IT_BASESUBTRIB'
      Precision = 18
      Size = 5
    end
    object qNFENF_IT_ALIQSUBTRIB: TFMTBCDField
      FieldName = 'ENF_IT_ALIQSUBTRIB'
      Origin = 'ENF_IT_ALIQSUBTRIB'
      Precision = 18
      Size = 5
    end
    object qNFENF_VLSUBST: TFMTBCDField
      FieldName = 'ENF_VLSUBST'
      Origin = 'ENF_VLSUBST'
      Precision = 18
      Size = 5
    end
    object qNFCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Origin = 'CST_PIS'
      Size = 3
    end
    object qNFENF_BASEPIS: TFMTBCDField
      FieldName = 'ENF_BASEPIS'
      Origin = 'ENF_BASEPIS'
      Precision = 18
      Size = 5
    end
    object qNFENF_IT_ALIQPIS: TFMTBCDField
      FieldName = 'ENF_IT_ALIQPIS'
      Origin = 'ENF_IT_ALIQPIS'
      Precision = 18
      Size = 5
    end
    object qNFENF_IT_VLPIS: TFMTBCDField
      FieldName = 'ENF_IT_VLPIS'
      Origin = 'ENF_IT_VLPIS'
      Precision = 18
      Size = 5
    end
    object qNFCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Origin = 'CST_COFINS'
      Size = 3
    end
    object qNFENF_BASECOFINS: TFMTBCDField
      FieldName = 'ENF_BASECOFINS'
      Origin = 'ENF_BASECOFINS'
      Precision = 18
      Size = 5
    end
    object qNFENF_IT_ALIQCOFINS: TFMTBCDField
      FieldName = 'ENF_IT_ALIQCOFINS'
      Origin = 'ENF_IT_ALIQCOFINS'
      Precision = 18
      Size = 5
    end
    object qNFENF_IT_VLCOFINS: TFMTBCDField
      FieldName = 'ENF_IT_VLCOFINS'
      Origin = 'ENF_IT_VLCOFINS'
      Precision = 18
      Size = 5
    end
    object qNFENF_ATUALIZA_PRECO: TStringField
      FieldName = 'ENF_ATUALIZA_PRECO'
      Origin = 'ENF_ATUALIZA_PRECO'
      Size = 1
    end
    object qNFENF_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'ENF_ATUALIZA_ESTOQUE'
      Origin = 'ENF_ATUALIZA_ESTOQUE'
      Size = 1
    end
    object qNFENF_LOTE: TStringField
      FieldName = 'ENF_LOTE'
      Origin = 'ENF_LOTE'
      Size = 15
    end
    object qNFENF_CFOP: TStringField
      FieldName = 'ENF_CFOP'
      Origin = 'ENF_CFOP'
      Size = 4
    end
    object qNFENF_ORIGEM_MERCADORIA: TIntegerField
      FieldName = 'ENF_ORIGEM_MERCADORIA'
      Origin = 'ENF_ORIGEM_MERCADORIA'
    end
    object qNFAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Origin = 'AMX_CODIGO'
      Size = 4
    end
    object qNFAMX_DESCRI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AMX_DESCRI'
      Origin = 'AMX_DESCRI'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object qNFPRD_ESTOQUE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_ESTOQUE'
      Origin = 'PRD_ESTOQUE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 5
    end
    object qNFPRD_ENTRADA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_ENTRADA'
      Origin = 'PRD_ENTRADA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 5
    end
    object qNFENF_UNIDADE_TRABALHO: TFMTBCDField
      FieldName = 'ENF_UNIDADE_TRABALHO'
      Origin = 'ENF_UNIDADE_TRABALHO'
      Precision = 18
      Size = 5
    end
    object qNFREPETICAO_REFER: TIntegerField
      FieldName = 'REPETICAO_REFER'
      Origin = 'REPETICAO_REFER'
    end
    object qNFPRD_ALIQICM: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_ALIQICM'
      Origin = 'PRD_ALIQICM'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 5
    end
    object qNFPRD_SAIDA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_SAIDA'
      Origin = 'PRD_SAIDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 5
    end
    object qNFENF_IT_DESCTO: TFMTBCDField
      FieldName = 'ENF_IT_DESCTO'
      Origin = 'ENF_IT_DESCTO'
      Precision = 18
      Size = 5
    end
    object qNFPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
      Origin = 'PRDL_REGISTRO'
    end
    object qNFENF_IT_VALFRETE: TFMTBCDField
      FieldName = 'ENF_IT_VALFRETE'
      Origin = 'ENF_IT_VALFRETE'
      Precision = 18
      Size = 5
    end
    object qNFENF_IT_VLSEGURO: TFMTBCDField
      FieldName = 'ENF_IT_VLSEGURO'
      Origin = 'ENF_IT_VLSEGURO'
      Precision = 18
      Size = 5
    end
    object qNFENF_IT_VLDESP_ACES: TFMTBCDField
      FieldName = 'ENF_IT_VLDESP_ACES'
      Origin = 'ENF_IT_VLDESP_ACES'
      Precision = 18
      Size = 5
    end
    object qNFENF_UCOM: TStringField
      FieldName = 'ENF_UCOM'
      Origin = 'ENF_UCOM'
      Size = 5
    end
    object qNFENF_UTRIB: TStringField
      FieldName = 'ENF_UTRIB'
      Origin = 'ENF_UTRIB'
      Size = 5
    end
    object qNFENF_QTDE_ORIGINAL: TFMTBCDField
      FieldName = 'ENF_QTDE_ORIGINAL'
      Origin = 'ENF_QTDE_ORIGINAL'
      Precision = 18
      Size = 5
    end
    object qNFENF_PRECO_ORIGINAL: TFMTBCDField
      FieldName = 'ENF_PRECO_ORIGINAL'
      Origin = 'ENF_PRECO_ORIGINAL'
      Precision = 18
      Size = 5
    end
    object qNFENF_PTOTAL_ORIGINAL: TFMTBCDField
      FieldName = 'ENF_PTOTAL_ORIGINAL'
      Origin = 'ENF_PTOTAL_ORIGINAL'
      Precision = 18
      Size = 5
    end
    object qNFENF_CHAVE_NFE: TStringField
      FieldName = 'ENF_CHAVE_NFE'
      Origin = 'ENF_CHAVE_NFE'
      Size = 60
    end
    object qNFPRD_PRODSERV: TStringField
      FieldName = 'PRD_PRODSERV'
      Origin = 'PRD_PRODSERV'
      Size = 1
    end
    object qNFENF_BASEICMS: TFMTBCDField
      FieldName = 'ENF_BASEICMS'
      Origin = 'ENF_BASEICMS'
      Precision = 18
      Size = 5
    end
    object qNFENF_VLBASESUBTRIB: TFMTBCDField
      FieldName = 'ENF_VLBASESUBTRIB'
      Origin = 'ENF_VLBASESUBTRIB'
      Precision = 18
      Size = 5
    end
    object qNFENF_VL_SUBTRIB: TFMTBCDField
      FieldName = 'ENF_VL_SUBTRIB'
      Origin = 'ENF_VL_SUBTRIB'
      Precision = 18
      Size = 5
    end
    object qNFENF_VL_IPI: TFMTBCDField
      FieldName = 'ENF_VL_IPI'
      Origin = 'ENF_VL_IPI'
      Precision = 18
      Size = 5
    end
    object qNFENF_BASE_IPI: TFMTBCDField
      FieldName = 'ENF_BASE_IPI'
      Origin = 'ENF_BASE_IPI'
      Precision = 18
      Size = 5
    end
    object qNFENF_VLPIS: TFMTBCDField
      FieldName = 'ENF_VLPIS'
      Origin = 'ENF_VLPIS'
      Precision = 18
      Size = 5
    end
    object qNFENF_VLCOFINS: TFMTBCDField
      FieldName = 'ENF_VLCOFINS'
      Origin = 'ENF_VLCOFINS'
      Precision = 18
      Size = 5
    end
    object qNFENF_ALIQCOFINS: TFMTBCDField
      FieldName = 'ENF_ALIQCOFINS'
      Origin = 'ENF_ALIQCOFINS'
      Precision = 18
      Size = 5
    end
    object qNFENF_ALIQPIS: TFMTBCDField
      FieldName = 'ENF_ALIQPIS'
      Origin = 'ENF_ALIQPIS'
      Precision = 18
      Size = 5
    end
    object qNFPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'PED_CODIGO'
      Size = 7
    end
  end
  object dsNF: TDataSource
    DataSet = qNF
    Left = 664
    Top = 289
  end
  object pmSeleciona: TPopupMenu
    Left = 72
    Top = 256
    object MarcarTodos1: TMenuItem
      Caption = 'Marcar Todos'
      OnClick = MarcarTodos1Click
    end
    object DesmarcarTodos1: TMenuItem
      Caption = 'Desmarcar Todos'
      OnClick = DesmarcarTodos1Click
    end
    object InverterSeleo1: TMenuItem
      Caption = 'Inverter Sele'#231#227'o'
      OnClick = InverterSeleo1Click
    end
  end
  object RepositorioDeEstilos: TcxStyleRepository
    Left = 528
    Top = 240
    PixelsPerInch = 96
    object Amarelo: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
  end
end
