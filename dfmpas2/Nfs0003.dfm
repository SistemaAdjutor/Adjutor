inherited FormConsNFGrid: TFormConsNFGrid
  Left = 131
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Entrada de Notas Fiscais'
  ClientHeight = 600
  ClientWidth = 1491
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  Position = poMainFormCenter
  Visible = True
  ExplicitWidth = 1497
  ExplicitHeight = 625
  PixelsPerInch = 96
  TextHeight = 14
  object Lb_lista: TLabel [0]
    Left = 290
    Top = 13
    Width = 3
    Height = 14
  end
  object Label1: TLabel [1]
    Left = 4
    Top = 363
    Width = 116
    Height = 14
    Caption = 'Itens da Nota Fiscal No.:'
  end
  object GroupBox1: TGroupBox [2]
    Left = 0
    Top = 0
    Width = 1491
    Height = 102
    Align = alTop
    Caption = 'Pesquisar:'
    TabOrder = 0
    object Label7: TLabel
      Left = 16
      Top = 39
      Width = 207
      Height = 14
      Caption = 'Nro.da Nota Fiscal ou Nome do Fornecedor'
    end
    object GbInformePeriodo: TGroupBox
      Left = 463
      Top = 39
      Width = 335
      Height = 44
      Caption = 'Filtrar Emiss'#227'o:'
      TabOrder = 1
      object Label2: TLabel
        Left = 6
        Top = 20
        Width = 57
        Height = 14
        Caption = 'Data Inicial :'
      end
      object Label3: TLabel
        Left = 165
        Top = 20
        Width = 53
        Height = 14
        Caption = 'Data Final :'
      end
      object RxDataInicial: TJvDateEdit
        Left = 68
        Top = 15
        Width = 90
        Height = 22
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        ImageKind = ikCustom
        ButtonWidth = 16
        PopupColor = clBtnFace
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 0
        OnChange = Edt_listaChange
        OnClick = RxDataInicialClick
        OnEnter = RxDataInicialEnter
        OnExit = RxDataInicialExit
      end
      object RxDataFinal: TJvDateEdit
        Left = 224
        Top = 15
        Width = 89
        Height = 22
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        ImageKind = ikCustom
        ButtonWidth = 16
        PopupColor = clBtnFace
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 1
        OnChange = Edt_listaChange
        OnClick = RxDataFinalClick
        OnEnter = RxDataFinalEnter
        OnExit = RxDataFinalExit
      end
    end
    object Edt_lista: TEdit
      Left = 14
      Top = 53
      Width = 443
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edt_listaChange
      OnClick = Edt_listaClick
      OnEnter = Edt_listaEnter
      OnExit = Edt_listaExit
    end
    object BitPesquisar: TBitBtn
      Left = 806
      Top = 11
      Width = 100
      Height = 22
      Caption = '&Pesquisar'
      TabOrder = 2
      OnClick = BitPesquisarClick
    end
    object BitImprimir: TBitBtn
      Left = 806
      Top = 33
      Width = 100
      Height = 22
      Caption = '&Relat'#243'rios'
      TabOrder = 3
      OnClick = BitImprimirClick
    end
    object BitSair: TBitBtn
      Left = 806
      Top = 76
      Width = 100
      Height = 22
      Caption = '&Sair'
      TabOrder = 4
      OnClick = BitSairClick
    end
    object btnGerarXML: TBitBtn
      Left = 806
      Top = 55
      Width = 100
      Height = 22
      Hint = 'Gera todos xml das notas fiscais selecionada'
      Caption = 'Gerar XML'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnGerarXMLClick
    end
    object btnReprocessar: TBitBtn
      Left = 908
      Top = 11
      Width = 100
      Height = 22
      Hint = 
        'reprocessa o xml, salvando os pre'#231'os originais e as unidades ori' +
        'ginais da nota'
      Caption = 'Reprocessar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnReprocessarClick
    end
    object btnEtiquetas: TBitBtn
      Left = 908
      Top = 34
      Width = 100
      Height = 22
      Hint = 'Etiquetas'
      Caption = 'Etiqueta'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = btnEtiquetasClick
    end
    object btExcluiNF: TButton
      Left = 908
      Top = 56
      Width = 100
      Height = 22
      Hint = 'Exclui somente as Notas Fiscais sem items'
      Caption = 'Exclui NF'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = btExcluiNFClick
    end
  end
  object pnGrids: TPanel [3]
    Left = 0
    Top = 102
    Width = 1009
    Height = 498
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    OnResize = pnGridsResize
    object Label8: TLabel
      Left = 0
      Top = 0
      Width = 1009
      Height = 14
      Align = alTop
      Caption = 
        '     P/O = Indica se o Projeto/Obra foi devidamente vinculado a ' +
        'Nota Fiscal de Entrada '
      ExplicitWidth = 410
    end
    object DbGridNF: TRxDBGrid
      Left = 0
      Top = 14
      Width = 1009
      Height = 255
      Align = alClient
      Color = 16776176
      DataSource = DsNF
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = DbGridNFDrawColumnCell
      OnDblClick = DbGridNFDblClick
      OnKeyPress = DbGridNFKeyPress
      OnTitleClick = DbGridNFTitleClick
      RowColor2 = 16776176
      Columns = <
        item
          Expanded = False
          FieldName = 'NFE_XML'
          Title.Caption = 'XML'
          Width = 26
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_NOTANUMBER'
          Title.Alignment = taCenter
          Title.Caption = 'N.Fiscal'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPE_NATUREZA'
          Title.Alignment = taCenter
          Title.Caption = 'CFOP'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_EMISSAO'
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_FECHADO_PROJETO_OBRA'
          Title.Caption = 'P/O'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OCP_CODIGO'
          Title.Caption = 'O.Compra'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FOR_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZAO_SOCIAL'
          Title.Alignment = taCenter
          Title.Caption = 'Raz'#227'o Social'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 285
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_TOT_PROD'
          Title.Caption = 'Total Produtos'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_VLFRETE'
          Title.Alignment = taCenter
          Title.Caption = 'Frete'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_DESP_ACES'
          Title.Alignment = taCenter
          Title.Caption = 'Desp.Ac.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_TOT_NOTA'
          Title.Alignment = taCenter
          Title.Caption = 'Total N.F.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_BASE_IPI'
          Title.Alignment = taCenter
          Title.Caption = 'Base IPI'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_VALOR_IPI'
          Title.Alignment = taCenter
          Title.Caption = 'Valor IPI'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_BASE_ICMS'
          Title.Alignment = taCenter
          Title.Caption = 'Base ICMS'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_VALOR_ICMS'
          Title.Alignment = taCenter
          Title.Caption = 'Valor ICMS'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_BASE_ICMS_ST'
          Title.Alignment = taCenter
          Title.Caption = 'Base ICMS ST'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_VALOR_ICMS_ST'
          Title.Alignment = taCenter
          Title.Caption = 'Valor ICMS ST'
          Width = 86
          Visible = True
        end>
    end
    object Panel5: TPanel
      Left = 0
      Top = 269
      Width = 1009
      Height = 229
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'Panel5'
      TabOrder = 1
      object DBEdit1: TDBEdit
        Left = 11
        Top = 2
        Width = 124
        Height = 14
        BorderStyle = bsNone
        Color = clBtnFace
        Ctl3D = False
        DataField = 'ENF_NOTANUMBER'
        DataSource = DsNF
        ParentCtl3D = False
        TabOrder = 0
      end
      object DbGridItemNF: TRxDBGrid
        Left = 0
        Top = 21
        Width = 1009
        Height = 208
        Align = alBottom
        Color = 16776176
        DataSource = DsItemNF
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnDrawColumnCell = DbGridItemNFDrawColumnCell
        RowColor2 = 16776176
        Columns = <
          item
            Expanded = False
            FieldName = 'PRD_REFER'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_DESCRI'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 420
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_PRECO'
            Title.Alignment = taCenter
            Title.Caption = 'Pre'#231'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_QTDE'
            Title.Alignment = taCenter
            Title.Caption = 'Qtde'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_TOTAL_CC'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_CFOP'
            Title.Alignment = taCenter
            Title.Caption = 'CFOP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_IPIALIQ'
            Title.Alignment = taCenter
            Title.Caption = 'Aliq. IPI'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_IT_VLIPI'
            Title.Alignment = taCenter
            Title.Caption = 'VL.IPI'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_IT_VALFRETE'
            Title.Alignment = taCenter
            Title.Caption = 'Frete'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_IT_BASEICMS'
            Title.Alignment = taCenter
            Title.Caption = 'Base ICMS'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_ICMSALIQ'
            Title.Alignment = taCenter
            Title.Caption = 'Aliq. ICMS'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_ICMS'
            Title.Alignment = taCenter
            Title.Caption = 'Valor ICMS'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_IT_BASESUBTRIB'
            Title.Alignment = taCenter
            Title.Caption = 'Base ICMS ST'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENF_IT_VLSUBTRIB'
            Title.Alignment = taCenter
            Title.Caption = 'Valor ICMS ST'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AMX_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AMX_DESCRI'
            Title.Alignment = taCenter
            Title.Caption = 'Almoxarifado'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 125
            Visible = True
          end>
      end
    end
  end
  object PanEntradaNF: TPanel [4]
    Left = 1045
    Top = 105
    Width = 414
    Height = 475
    AutoSize = True
    TabOrder = 2
    Visible = False
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 412
      Height = 21
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = 'Gerenciador de Impress'#227'o de (Entrada de Notas).'
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object BitBtn2: TBitBtn
        Left = 412
        Top = 2
        Width = 18
        Height = 17
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = False
        OnClick = BitBtn2Click
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 22
      Width = 412
      Height = 123
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object grp00: TGroupBox
        Left = 0
        Top = 0
        Width = 291
        Height = 123
        Align = alClient
        Caption = 'Selecione o Relat'#243'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object LTBox: TListBox
          Left = 2
          Top = 15
          Width = 287
          Height = 106
          Style = lbOwnerDrawVariable
          Align = alClient
          Color = 11599871
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnClick = LTBoxClick
        end
      end
      object grp01: TGroupBox
        Left = 291
        Top = 0
        Width = 121
        Height = 123
        Align = alRight
        Caption = 'Enviar para:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object RadVideo: TRadioButton
          Left = 14
          Top = 23
          Width = 65
          Height = 17
          Caption = '&V'#237'deo'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
        end
        object RadImpressora: TRadioButton
          Left = 14
          Top = 43
          Width = 81
          Height = 17
          Caption = '&Impressora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object BtEtiqueta: TButton
          Left = 18
          Top = 93
          Width = 81
          Height = 25
          Caption = 'Etiqueta'
          TabOrder = 2
          OnClick = BtEtiquetaClick
        end
        object radExcel: TRadioButton
          Left = 14
          Top = 64
          Width = 81
          Height = 17
          Caption = '&Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Visible = False
        end
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 145
      Width = 412
      Height = 205
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 2
      object GrpPesquisa: TGroupBox
        Left = 0
        Top = 0
        Width = 412
        Height = 41
        Align = alTop
        Caption = 'Filtrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object RadEmissao: TRadioButton
          Left = 16
          Top = 16
          Width = 105
          Height = 17
          Caption = 'Data de &Emiss'#227'o'
          Checked = True
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          TabStop = True
        end
        object RadEntrada: TRadioButton
          Left = 224
          Top = 16
          Width = 113
          Height = 17
          Caption = 'Data de En&trada'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
      end
      object grpPeriodo: TGroupBox
        Left = 0
        Top = 41
        Width = 412
        Height = 41
        Align = alTop
        Caption = 'Informe o Per'#237'odo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
        object Label4: TLabel
          Left = 6
          Top = 20
          Width = 59
          Height = 13
          Caption = 'Data Inicial :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 229
          Top = 20
          Width = 54
          Height = 13
          Caption = 'Data Final :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 181
          Top = 20
          Width = 15
          Height = 13
          Caption = 'at'#233
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DataFinal: TJvDateEdit
          Left = 288
          Top = 15
          Width = 89
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          ImageKind = ikCustom
          ButtonWidth = 16
          ParentFont = False
          PopupColor = clBtnFace
          ShowNullDate = False
          YearDigits = dyFour
          TabOrder = 1
          OnEnter = DataFinalEnter
          OnExit = DataFinalExit
        end
        object DataInicial: TJvDateEdit
          Left = 68
          Top = 15
          Width = 90
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          ImageKind = ikCustom
          ButtonWidth = 16
          ParentFont = False
          PopupColor = clBtnFace
          ShowNullDate = False
          YearDigits = dyFour
          TabOrder = 0
          OnEnter = DataInicialEnter
          OnExit = DataInicialExit
        end
      end
      object pnNumNf: TGroupBox
        Left = 0
        Top = 82
        Width = 412
        Height = 41
        Align = alTop
        Caption = 'Informe o N'#250'mero da Nota Fiscal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = False
        object Edit1: TEdit
          Left = 4
          Top = 14
          Width = 109
          Height = 21
          TabOrder = 0
          Text = 'Edit1'
        end
      end
      object grpFornecedor: TGroupBox
        Left = 0
        Top = 123
        Width = 412
        Height = 41
        Align = alTop
        Caption = 'Selecione o Fornecedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object EditFor: TEdit
          Left = 3
          Top = 16
          Width = 31
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 4
          ParentFont = False
          TabOrder = 0
          OnEnter = EditForEnter
          OnExit = EditForExit
          OnKeyPress = EditForKeyPress
        end
        object CbxFornecedor: TComboBox
          Left = 35
          Top = 16
          Width = 373
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 0
          MaxLength = 50
          ParentFont = False
          TabOrder = 1
          Text = 'TODOS'
          OnClick = CbxFornecedorClick
          OnEnter = CbxFornecedorEnter
          OnExit = CbxFornecedorExit
          Items.Strings = (
            'TODOS')
        end
      end
      object GrpAlmox: TGroupBox
        Left = 0
        Top = 164
        Width = 412
        Height = 41
        Align = alTop
        Caption = 'Selecione o Almoxarifado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object EdtAlmox: TEdit
          Left = 3
          Top = 16
          Width = 31
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 3
          ParentFont = False
          TabOrder = 0
          OnEnter = EdtAlmoxEnter
          OnExit = EdtAlmoxExit
          OnKeyPress = EditForKeyPress
        end
        object CbxAlmox: TComboBox
          Left = 35
          Top = 16
          Width = 373
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 0
          MaxLength = 50
          ParentFont = False
          TabOrder = 1
          Text = 'TODOS'
          OnClick = CbxAlmoxClick
          OnEnter = CbxAlmoxEnter
          OnExit = CbxAlmoxExit
          Items.Strings = (
            'TODOS')
        end
      end
    end
    object grp05: TGroupBox
      Left = 1
      Top = 433
      Width = 412
      Height = 41
      Align = alTop
      TabOrder = 3
      TabStop = True
      object BitConfig: TBitBtn
        Left = 9
        Top = 10
        Width = 185
        Height = 25
        Cursor = crHandPoint
        Caption = 'Con&figura'#231#227'o de Impress'#227'o'
        TabOrder = 0
        TabStop = False
        OnClick = BitConfigClick
      end
      object BitOk: TBitBtn
        Left = 250
        Top = 10
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = '&Ok'
        TabOrder = 1
        OnClick = BitOkClick
      end
      object BitCancelarEntNF: TBitBtn
        Left = 332
        Top = 10
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = '&Cancela'
        TabOrder = 2
        OnClick = BitCancelarEntNFClick
      end
    end
    object grproduto: TGroupBox
      Left = 1
      Top = 350
      Width = 412
      Height = 41
      Align = alTop
      Caption = 'Selecione o produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object cbReferencia: TSgDbSearchCombo
        Left = 50
        Top = 14
        Width = 332
        Height = 21
        EmptyText = 'TODOS PRODUTOS'
        TabOrder = 0
        CharCase = ecUpperCase
        LookupSelect = 
          'PD.PRD_CODIGO, PD.PRD_REFER, PD.PRD_DESCRI, PD.PRD_CODBARRA, PD.' +
          'PRD_PRODSERV, PD.PRD_UND, T2.LIN_DESCRI, 0.0 AS PRD_PVENDA'
        LookupOrderBy = 'PD.PRD_REFER'
        LookupTable = 
          'prd0000 PD left join PRD_LINHA T2 on (T2.LIN_CODIGO = PD.LIN_COD' +
          'IGO) '
        LookupDispl = 'PRD_DESCRI'
        OnButtonClick = cbReferenciaButtonClick
        OnSelect = cbReferenciaSelect
        GridAutoSize = False
        LookupSource = qAux
        LookupKeyField = 'PD.PRD_REFER'
        FiltroTabela = 'PRD_STATUS = '#39'A'#39
        ShowButton = True
        LookupTableShare = 'PRODUTOS'
        LookupWhere = 'PD.PRD_REFER'
        LookupDbGridColumns = 
          'PRD_PRODSERV, PRD_REFER, PRD_DESCRI, PRD_UND, PRD_PVENDA, LIN_DE' +
          'SCRI, PRD_CODBARRA, PRDCO_CODIGO_ORIGINAL'
        LookupDbGridColumnsTitle = 
          'P/S, Refer'#234'ncia, Descri'#231#227'o, Unid., Pre'#231'o, Linha/Marca, C'#243'd.Barra' +
          's, C'#243'd.Cliente'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
      end
      object edProdutoCodigo: TEdit
        Left = 6
        Top = 14
        Width = 43
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        MaxLength = 5
        TabOrder = 1
        OnExit = edProdutoCodigoExit
      end
    end
    object grpCentroCusto: TGroupBox
      Left = 1
      Top = 391
      Width = 412
      Height = 42
      Align = alTop
      Caption = 'Centro Custo'
      TabOrder = 5
      object cbCentroCusto: TSgDbSearchCombo
        Left = 51
        Top = 13
        Width = 332
        Height = 22
        EmptyText = 'TODOS CENTRO DE CUSTOS'
        TabOrder = 0
        CharCase = ecUpperCase
        LookupSelect = 'PCX_CODIGO, PCX_DESCRI'
        LookupOrderBy = 'PCX_CODIGO'
        LookupTable = 'PCX0000'
        LookupDispl = 'PCX_DESCRI'
        OnSelect = cbCentroCustoSelect
        GridAutoSize = False
        LookupSource = qAux2
        LookupKeyField = 'PCX_CODIGO'
        ShowButton = True
        AutoF8WinTitulo = 'Centro de Custos'
        AutoF8ColumnsTitulo = 'C'#243'digo, Centro de Custo'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
      end
      object edtCentro: TEdit
        Left = 7
        Top = 13
        Width = 40
        Height = 22
        CharCase = ecUpperCase
        Color = clWhite
        MaxLength = 5
        TabOrder = 1
        OnExit = edtCentroExit
      end
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    UseScreenControl = True
  end
  inherited DBConn: TSQLConnection
    LoadParamsOnConnect = True
    Params.Strings = (
      'DriverName=Firebird'
      'Database=c:\jobdados\exemplo\exemplo.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=True')
  end
  inherited qAux: TSQLQuery
    SQLConnection = DBInicio.MainDB
    Left = 466
    Top = 141
  end
  inherited qAux2: TSQLQuery
    SQLConnection = DBInicio.MainDB
  end
  object DsNF: TDataSource
    DataSet = CdsNF
    Left = 744
    Top = 176
  end
  object SqlCdsItensNF: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select '#13#10'NF.*, '#13#10'AM.AMX_DESCRI '#13#10'from ENF_IT01 NF'#13#10'LEFT JOIN ALM' +
      'OX0000 AM ON (AM.AMX_CODIGO = NF.AMX_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    PacketRecords = 30
    Params = <>
    OnCalcFields = SqlCdsItensNFCalcFields
    CommandText = 
      'select '#13#10'NF.*, '#13#10'AM.AMX_DESCRI '#13#10'from ENF_IT01 NF'#13#10'LEFT JOIN ALM' +
      'OX0000 AM ON (AM.AMX_CODIGO = NF.AMX_CODIGO)'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 24
    Top = 424
    object SqlCdsItensNFENF_REGISTRO: TIntegerField
      FieldName = 'ENF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlCdsItensNFENF_IT_NOTANUMBER: TStringField
      FieldName = 'ENF_IT_NOTANUMBER'
      Required = True
      Size = 6
    end
    object SqlCdsItensNFOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsItensNFPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItensNFPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsItensNFENF_QTDE: TFMTBCDField
      FieldName = 'ENF_QTDE'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      currency = True
      Precision = 15
    end
    object SqlCdsItensNFENF_PRECO: TFMTBCDField
      FieldName = 'ENF_PRECO'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
      currency = True
      Precision = 15
    end
    object SqlCdsItensNFENF_IPIALIQ: TFMTBCDField
      FieldName = 'ENF_IPIALIQ'
      DisplayFormat = '##0.00%'
      currency = True
      Precision = 15
    end
    object SqlCdsItensNFENF_VLSUBST: TFMTBCDField
      FieldName = 'ENF_VLSUBST'
      DisplayFormat = '#,###0.0000'
      currency = True
      Precision = 15
    end
    object SqlCdsItensNFFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlCdsItensNFEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsItensNFENF_TOTAL_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ENF_TOTAL_CC'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object SqlCdsItensNFAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 3
    end
    object SqlCdsItensNFAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Size = 35
    end
    object SqlCdsItensNFENF_IT_VLIPI: TFMTBCDField
      FieldName = 'ENF_IT_VLIPI'
      DisplayFormat = '#,###0.0000'
      currency = True
      Precision = 15
      Size = 4
    end
    object SqlCdsItensNFENF_QTDE_LANCADO_PROJETO: TFMTBCDField
      FieldName = 'ENF_QTDE_LANCADO_PROJETO'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_QTDE_PEDIDO_COMPRA: TFMTBCDField
      FieldName = 'ENF_QTDE_PEDIDO_COMPRA'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFOCI_REGISTRO: TIntegerField
      FieldName = 'OCI_REGISTRO'
    end
    object SqlCdsItensNFENF_CUSTO: TFMTBCDField
      FieldName = 'ENF_CUSTO'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_ICMSALIQ: TFMTBCDField
      FieldName = 'ENF_ICMSALIQ'
      DisplayFormat = '##0.00%'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_UNIDADE_TRABALHO: TFMTBCDField
      FieldName = 'ENF_UNIDADE_TRABALHO'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_LOTE: TStringField
      FieldName = 'ENF_LOTE'
      Size = 15
    end
    object SqlCdsItensNFPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 6
    end
    object SqlCdsItensNFENF_ICMS: TFMTBCDField
      FieldName = 'ENF_ICMS'
      DisplayFormat = '#,###0.0000'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_CFOP: TStringField
      FieldName = 'ENF_CFOP'
      Size = 4
    end
    object SqlCdsItensNFENF_IT_BASEIPI: TFMTBCDField
      FieldName = 'ENF_IT_BASEIPI'
      DisplayFormat = '#,###0.0000'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_IT_NUM_DI: TFMTBCDField
      FieldName = 'ENF_IT_NUM_DI'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_IT_NCM: TIntegerField
      FieldName = 'ENF_IT_NCM'
    end
    object SqlCdsItensNFENF_IT_DESCTO: TFMTBCDField
      FieldName = 'ENF_IT_DESCTO'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_IT_BASEICMS: TFMTBCDField
      FieldName = 'ENF_IT_BASEICMS'
      DisplayFormat = '#,###0.0000'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_IT_BASESUBTRIB: TFMTBCDField
      FieldName = 'ENF_IT_BASESUBTRIB'
      DisplayFormat = '#,###0.0000'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_IT_VALFRETE: TFMTBCDField
      FieldName = 'ENF_IT_VALFRETE'
      DisplayFormat = '#,###0.0000'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_IT_VLSEGURO: TFMTBCDField
      FieldName = 'ENF_IT_VLSEGURO'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_IT_VLDESP_ACES: TFMTBCDField
      FieldName = 'ENF_IT_VLDESP_ACES'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_IT_VLSUBTRIB: TFMTBCDField
      FieldName = 'ENF_IT_VLSUBTRIB'
      DisplayFormat = '#,###0.0000'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_IT_ALIQSUBTRIB: TFMTBCDField
      FieldName = 'ENF_IT_ALIQSUBTRIB'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_IT_ISSQN: TFMTBCDField
      FieldName = 'ENF_IT_ISSQN'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_IT_ALIQISSQN: TFMTBCDField
      FieldName = 'ENF_IT_ALIQISSQN'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_IT_VLISSQN: TFMTBCDField
      FieldName = 'ENF_IT_VLISSQN'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_IT_ALIQPIS: TFMTBCDField
      FieldName = 'ENF_IT_ALIQPIS'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_IT_VLPIS: TFMTBCDField
      FieldName = 'ENF_IT_VLPIS'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_IT_ALIQCOFINS: TFMTBCDField
      FieldName = 'ENF_IT_ALIQCOFINS'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_IT_VLCOFINS: TFMTBCDField
      FieldName = 'ENF_IT_VLCOFINS'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_CST_PIS: TFMTBCDField
      FieldName = 'ENF_CST_PIS'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_BASEPIS: TFMTBCDField
      FieldName = 'ENF_BASEPIS'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_CST_COFINS: TFMTBCDField
      FieldName = 'ENF_CST_COFINS'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFENF_BASECOFINS: TFMTBCDField
      FieldName = 'ENF_BASECOFINS'
      Precision = 20
      Size = 5
    end
    object SqlCdsItensNFUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object SqlCdsItensNFPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
    end
    object SqlCdsItensNFREPETICAO_REFER: TIntegerField
      FieldName = 'REPETICAO_REFER'
    end
    object SqlCdsItensNFSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Size = 3
    end
    object SqlCdsItensNFCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Size = 3
    end
    object SqlCdsItensNFCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Size = 3
    end
    object SqlCdsItensNFCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Size = 3
    end
    object SqlCdsItensNFENF_ATUALIZA_PRECO: TStringField
      FieldName = 'ENF_ATUALIZA_PRECO'
      Size = 1
    end
    object SqlCdsItensNFENF_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'ENF_ATUALIZA_ESTOQUE'
      Size = 1
    end
    object SqlCdsItensNFPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
    end
  end
  object DsItemNF: TDataSource
    DataSet = SqlCdsItensNF
    Left = 96
    Top = 424
  end
  object ppRpImpNota: TppReport
    AutoStop = False
    DataPipeline = ppDBImpNota
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
    Template.FileName = 'X:\adjutor\fontesrelatorios\RELNotasEntrada'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
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
    Left = 888
    Top = 424
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBImpNota'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 17727
      mmPrintPosition = 0
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196057
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
        mmHeight = 4163
        mmLeft = 265
        mmTop = 794
        mmWidth = 159809
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_TITULO1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_TITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_TITULO2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_TITULO2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 8731
        mmWidth = 173015
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable11: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        OnGetText = ppSystemVariable11GetText
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
        LayerName = Foreground
      end
      object ppSystemVariable12: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = ppSystemVariable2GetText
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
        mmTop = 8731
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 13494
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 120
        mmTop = 17462
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' Nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 14023
        mmWidth = 16688
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
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
        mmLeft = 26507
        mmTop = 14023
        mmWidth = 10654
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fornecedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3246
        mmLeft = 54891
        mmTop = 14023
        mmWidth = 14182
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vl.Total NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 180014
        mmTop = 14023
        mmWidth = 15579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CFOP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 17969
        mmTop = 14023
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desp.Aces.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 137581
        mmTop = 14023
        mmWidth = 14383
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vl.Seguro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 124125
        mmTop = 14023
        mmWidth = 12686
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vl.Frete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 112808
        mmTop = 14023
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Prod'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 166402
        mmTop = 14023
        mmWidth = 12841
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 156515
        mmTop = 14023
        mmWidth = 8678
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label31'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 42046
        mmTop = 14023
        mmWidth = 9737
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENF_NOTANUMBER'
        DataPipeline = ppDBImpNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBImpNota'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 794
        mmWidth = 17192
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OPE_NATUREZA'
        DataPipeline = ppDBImpNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBImpNota'
        mmHeight = 3175
        mmLeft = 17921
        mmTop = 794
        mmWidth = 6134
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENF_EMISSAO'
        DataPipeline = ppDBImpNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBImpNota'
        mmHeight = 3246
        mmLeft = 24655
        mmTop = 794
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_CODIGO'
        DataPipeline = ppDBImpNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNota'
        mmHeight = 3246
        mmLeft = 55156
        mmTop = 794
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTextFornecedor: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTextFornecedor'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CC_RAZAO'
        DataPipeline = ppDBImpNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBImpNota'
        mmHeight = 3246
        mmLeft = 62829
        mmTop = 794
        mmWidth = 49213
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENF_TOT_NOTA'
        DataPipeline = ppDBImpNota
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNota'
        mmHeight = 3246
        mmLeft = 179794
        mmTop = 723
        mmWidth = 15631
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENF_DESP_ACES'
        DataPipeline = ppDBImpNota
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNota'
        mmHeight = 3246
        mmLeft = 137581
        mmTop = 723
        mmWidth = 14383
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENF_VLSEGURO'
        DataPipeline = ppDBImpNota
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNota'
        mmHeight = 3246
        mmLeft = 123631
        mmTop = 723
        mmWidth = 13180
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENF_VLFRETE'
        DataPipeline = ppDBImpNota
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNota'
        mmHeight = 3246
        mmLeft = 112686
        mmTop = 794
        mmWidth = 10102
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText21'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENF_TOT_PROD'
        DataPipeline = ppDBImpNota
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNota'
        mmHeight = 3246
        mmLeft = 165749
        mmTop = 723
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENF_VL_DESCTO'
        DataPipeline = ppDBImpNota
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNota'
        mmHeight = 3246
        mmLeft = 152493
        mmTop = 794
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText31'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENF_ENTRADA'
        DataPipeline = ppDBImpNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBImpNota'
        mmHeight = 3246
        mmLeft = 39930
        mmTop = 794
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196057
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total de Notas Fiscais Listada(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 0
        mmTop = 458
        mmWidth = 40922
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBImpNota
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBImpNota'
        mmHeight = 3246
        mmLeft = 41540
        mmTop = 458
        mmWidth = 15610
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 91105
        mmTop = 458
        mmWidth = 14464
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'ENF_TOT_NOTA'
        DataPipeline = ppDBImpNota
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNota'
        mmHeight = 3704
        mmLeft = 167217
        mmTop = 529
        mmWidth = 28840
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENF_TOT_PROD'
        DataPipeline = ppDBImpNota
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNota'
        mmHeight = 3175
        mmLeft = 157163
        mmTop = 529
        mmWidth = 21696
        BandType = 7
        LayerName = Foreground
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650619
        444254657874466F726E656365646F724F6E476574546578740B50726F677261
        6D54797065070B747450726F63656475726506536F75726365067270726F6365
        6475726520444254657874466F726E656365646F724F6E476574546578742876
        617220546578743A20537472696E67293B0D0A626567696E0D0A202020546578
        74203A3D20436F7079284442496D704E6F74615B2743435F52415A414F275D2C
        312C3235290D0A656E643B0D0A0D436F6D706F6E656E744E616D650610444254
        657874466F726E656365646F72094576656E744E616D6506094F6E4765745465
        7874074576656E7449440235084361726574506F730102000200000000}
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object SqlCdsImpNotas: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT p.PCX_NIVEL, p.PCX_DESCRI, E1.ENF_NOTANUMBER, E1.OPE_NATU' +
      'REZA, E1.OCP_CODIGO, E1.ENF_EMISSAO, E1.ENF_ENTRADA, E1.ENF_VL_D' +
      'ESCTO, E1.FOR_CODIGO, E1.ENF_TOT_PROD, E1.ENF_VLFRETE, E1.ENF_VL' +
      'SEGURO, E1.ENF_DESP_ACES, E1.ENF_TOT_NOTA, E1.ENF_TIPO_NF_ENTRAD' +
      'A, F1.FOR_RAZAO, F1.FOR_FONE, T1.TRP_RAZAO, T1.TRP_FONE FROM ENF' +
      '0001 E1 LEFT JOIN FOR0000 F1 ON'#9'((F1.FOR_CODIGO = E1.FOR_CODIGO)' +
      ' AND (E1.ENF_TIPO_NF_ENTRADA IN ('#39'N'#39', '#39'C'#39'))) LEFT JOIN TRP0000 T' +
      '1 ON ((T1.TRP_CODIGO = E1.FOR_CODIGO) ) LEFT JOIN PCX0000 p ON (' +
      'p.PCX_CODIGO = E1.PCX_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    PacketRecords = 30
    Params = <>
    OnCalcFields = SqlCdsImpNotasCalcFields
    CommandText = 
      'SELECT p.PCX_NIVEL, p.PCX_DESCRI, E1.ENF_NOTANUMBER, E1.OPE_NATU' +
      'REZA, E1.OCP_CODIGO, E1.ENF_EMISSAO, E1.ENF_ENTRADA, E1.ENF_VL_D' +
      'ESCTO, E1.FOR_CODIGO, E1.ENF_TOT_PROD, E1.ENF_VLFRETE, E1.ENF_VL' +
      'SEGURO, E1.ENF_DESP_ACES, E1.ENF_TOT_NOTA, E1.ENF_TIPO_NF_ENTRAD' +
      'A, F1.FOR_RAZAO, F1.FOR_FONE, T1.TRP_RAZAO, T1.TRP_FONE FROM ENF' +
      '0001 E1 LEFT JOIN FOR0000 F1 ON'#9'((F1.FOR_CODIGO = E1.FOR_CODIGO)' +
      ' AND (E1.ENF_TIPO_NF_ENTRADA IN ('#39'N'#39', '#39'C'#39'))) LEFT JOIN TRP0000 T' +
      '1 ON ((T1.TRP_CODIGO = E1.FOR_CODIGO) ) LEFT JOIN PCX0000 p ON (' +
      'p.PCX_CODIGO = E1.PCX_CODIGO)'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 608
    Top = 416
    object SqlCdsImpNotasENF_NOTANUMBER: TStringField
      DisplayWidth = 10
      FieldName = 'ENF_NOTANUMBER'
      Size = 6
    end
    object SqlCdsImpNotasOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object SqlCdsImpNotasENF_EMISSAO: TDateField
      FieldName = 'ENF_EMISSAO'
    end
    object SqlCdsImpNotasENF_ENTRADA: TDateField
      FieldName = 'ENF_ENTRADA'
    end
    object SqlCdsImpNotasENF_VL_DESCTO: TFMTBCDField
      FieldName = 'ENF_VL_DESCTO'
      Precision = 15
    end
    object SqlCdsImpNotasFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 6
    end
    object SqlCdsImpNotasENF_TOT_PROD: TFMTBCDField
      FieldName = 'ENF_TOT_PROD'
      Precision = 15
    end
    object SqlCdsImpNotasENF_VLFRETE: TFMTBCDField
      FieldName = 'ENF_VLFRETE'
      Precision = 15
    end
    object SqlCdsImpNotasENF_VLSEGURO: TFMTBCDField
      FieldName = 'ENF_VLSEGURO'
      Precision = 15
    end
    object SqlCdsImpNotasENF_DESP_ACES: TFMTBCDField
      FieldName = 'ENF_DESP_ACES'
      Precision = 15
    end
    object SqlCdsImpNotasENF_TOT_NOTA: TFMTBCDField
      FieldName = 'ENF_TOT_NOTA'
      Precision = 15
    end
    object SqlCdsImpNotasENF_TIPO_NF_ENTRADA: TStringField
      FieldName = 'ENF_TIPO_NF_ENTRADA'
      Size = 1
    end
    object SqlCdsImpNotasFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsImpNotasFOR_FONE: TStringField
      FieldName = 'FOR_FONE'
      Size = 11
    end
    object SqlCdsImpNotasTRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      Size = 45
    end
    object SqlCdsImpNotasTRP_FONE: TStringField
      FieldName = 'TRP_FONE'
      Size = 11
    end
    object SqlCdsImpNotasCC_RAZAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CC_RAZAO'
      Size = 50
      Calculated = True
    end
    object SqlCdsImpNotasPCX_NIVEL: TStringField
      FieldName = 'PCX_NIVEL'
      Size = 15
    end
    object SqlCdsImpNotasPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 120
    end
  end
  object DsImpNota: TDataSource
    DataSet = SqlCdsImpNotas
    Left = 712
    Top = 416
  end
  object PrinterEntradaNF: TPrinterSetupDialog
    Left = 180
    Top = 231
  end
  object DsNotasDetalhada: TDataSource
    DataSet = CdsImpNotasDetalhada
    Left = 720
    Top = 241
  end
  object SqlCdsFornecedor: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select FOR_CODIGO, FOR_RAZAO from FOR0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    PacketRecords = 30
    Params = <>
    CommandText = 'select FOR_CODIGO, FOR_RAZAO from FOR0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 336
    Top = 232
    object SqlCdsFornecedorFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsFornecedorFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
  end
  object SqlCdsAlmox: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from ALMOX0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    PacketRecords = 30
    Params = <>
    CommandText = 'select * from ALMOX0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 264
    Top = 296
    object SqlCdsAlmoxAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsAlmoxAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 35
    end
    object SqlCdsAlmoxAMX_TIPO: TStringField
      FieldName = 'AMX_TIPO'
      Size = 35
    end
    object SqlCdsAlmoxEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Required = True
      Size = 3
    end
  end
  object ppRpImpNotaDetalhado: TppReport
    AutoStop = False
    DataPipeline = ppDBImpNota1
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
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELNotasEntrada' +
      'Detalhado.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
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
    Left = 640
    Top = 296
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBImpNota1'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 14552
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_01_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer2
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
        mmHeight = 4163
        mmLeft = 265
        mmTop = 794
        mmWidth = 159809
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_01_TITULO1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_01_TITULO2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 9790
        mmWidth = 173015
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        OnGetText = ppSystemVariable11GetText
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
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = ppSystemVariable2GetText
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
        mmTop = 9790
        mmWidth = 21943
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14287
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText22'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENF_IT_NOTANUMBER'
        DataPipeline = ppDBImpNota1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBImpNota1'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 529
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText23'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OCP_CODIGO'
        DataPipeline = ppDBImpNota1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBImpNota1'
        mmHeight = 3175
        mmLeft = 19315
        mmTop = 529
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText24'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENF_EMISSAO'
        DataPipeline = ppDBImpNota1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBImpNota1'
        mmHeight = 3175
        mmLeft = 30956
        mmTop = 529
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground1
      end
      object DBTextFornecedor: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBTextFornecedor'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_RAZAO'
        DataPipeline = ppDBImpNota1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBImpNota1'
        mmHeight = 3175
        mmLeft = 64029
        mmTop = 529
        mmWidth = 47361
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText27'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_PRODUTOS'
        DataPipeline = ppDBImpNota1
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNota1'
        mmHeight = 3175
        mmLeft = 112448
        mmTop = 529
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText28'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_NF'
        DataPipeline = ppDBImpNota1
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNota1'
        mmHeight = 3246
        mmLeft = 179652
        mmTop = 458
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_IPI'
        DataPipeline = ppDBImpNota1
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNota1'
        mmHeight = 3175
        mmLeft = 130969
        mmTop = 529
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENF_ENTRADA'
        DataPipeline = ppDBImpNota1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBImpNota1'
        mmHeight = 3175
        mmLeft = 46831
        mmTop = 529
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_ICMS'
        DataPipeline = ppDBImpNota1
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNota1'
        mmHeight = 3175
        mmLeft = 148961
        mmTop = 529
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText15'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_ICMS_ST'
        DataPipeline = ppDBImpNota1
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNota1'
        mmHeight = 3175
        mmLeft = 164836
        mmTop = 529
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label28'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 93134
        mmTop = 529
        mmWidth = 14552
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line12'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196057
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc9: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_PRODUTOS'
        DataPipeline = ppDBImpNota1
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNota1'
        mmHeight = 3175
        mmLeft = 112448
        mmTop = 529
        mmWidth = 16669
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc11: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_NF'
        DataPipeline = ppDBImpNota1
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNota1'
        mmHeight = 3246
        mmLeft = 179652
        mmTop = 529
        mmWidth = 16669
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_IPI'
        DataPipeline = ppDBImpNota1
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNota1'
        mmHeight = 3175
        mmLeft = 130969
        mmTop = 529
        mmWidth = 16669
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc7: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_ICMS'
        DataPipeline = ppDBImpNota1
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNota1'
        mmHeight = 3175
        mmLeft = 148961
        mmTop = 529
        mmWidth = 14288
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc13: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_ICMS_ST'
        DataPipeline = ppDBImpNota1
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNota1'
        mmHeight = 3175
        mmLeft = 164836
        mmTop = 529
        mmWidth = 14288
        BandType = 7
        LayerName = Foreground1
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'AMX_DESCRI'
      DataPipeline = ppDBImpNota1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBImpNota1'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 7938
        mmPrintPosition = 0
        object ppLabel29: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label29'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Almoxarifado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3246
          mmLeft = 14288
          mmTop = 0
          mmWidth = 17004
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText10: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText10'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'AMX_CODIGO'
          DataPipeline = ppDBImpNota1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBImpNota1'
          mmHeight = 3246
          mmLeft = 33338
          mmTop = 0
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText11: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText11'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'AMX_DESCRI'
          DataPipeline = ppDBImpNota1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBImpNota1'
          mmHeight = 3246
          mmLeft = 42333
          mmTop = 0
          mmWidth = 76729
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine17: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line17'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3704
          mmWidth = 196000
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine10: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line10'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 7673
          mmWidth = 196057
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel21: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label21'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'N'#186' Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 4233
          mmWidth = 12965
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel23: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label23'
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
          mmLeft = 34131
          mmTop = 4233
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel24: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label24'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 63500
          mmTop = 4233
          mmWidth = 14288
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel25: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label25'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Total Prod'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 112448
          mmTop = 4233
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel26: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label26'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Compra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 19315
          mmTop = 3969
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine11: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line11'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 265
          mmTop = 7673
          mmWidth = 196057
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel27: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label27'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Total NF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 179652
          mmTop = 4233
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel10: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label10'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Valor do IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 130969
          mmTop = 4233
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel13: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label13'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 48948
          mmTop = 4233
          mmWidth = 9790
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel14: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label101'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'ICMS Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 148961
          mmTop = 4233
          mmWidth = 14288
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel15: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label15'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'ST Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 164571
          mmTop = 4233
          mmWidth = 14552
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLabel32: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label102'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Total do Almoxarifado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3175
          mmLeft = 79904
          mmTop = 794
          mmWidth = 27781
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine16: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line102'
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
        object ppDBCalc8: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc8'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'TOTAL_PRODUTOS'
          DataPipeline = ppDBImpNota1
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBImpNota1'
          mmHeight = 3175
          mmLeft = 112448
          mmTop = 794
          mmWidth = 16669
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc10: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc10'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'TOTAL_NF'
          DataPipeline = ppDBImpNota1
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBImpNota1'
          mmHeight = 3246
          mmLeft = 179652
          mmTop = 794
          mmWidth = 16669
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'VALOR_IPI'
          DataPipeline = ppDBImpNota1
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBImpNota1'
          mmHeight = 3175
          mmLeft = 130969
          mmTop = 794
          mmWidth = 16669
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc6: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc6'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'VALOR_ICMS'
          DataPipeline = ppDBImpNota1
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBImpNota1'
          mmHeight = 3175
          mmLeft = 148961
          mmTop = 794
          mmWidth = 14288
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc12: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc12'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'VALOR_ICMS_ST'
          DataPipeline = ppDBImpNota1
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBImpNota1'
          mmHeight = 3175
          mmLeft = 164836
          mmTop = 794
          mmWidth = 14288
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650619
        444254657874466F726E656365646F724F6E476574546578740B50726F677261
        6D54797065070B747450726F63656475726506536F75726365067870726F6365
        6475726520444254657874466F726E656365646F724F6E476574546578742876
        617220546578743A20537472696E67293B0D0A626567696E0D0A0D0A20205465
        7874203A3D20636F7079284442496D704E6F7461315B27464F525F52415A414F
        275D2C312C3235293B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D
        650610444254657874466F726E656365646F72094576656E744E616D6506094F
        6E47657454657874074576656E7449440235084361726574506F730102000200
        000000}
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object CdsImpNotasDetalhada: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'CdsImpNotasDetalhadaIndex_AMX_DESCRI'
        Fields = 'AMX_DESCRI;ENF_ENTRADA'
      end>
    IndexFieldNames = 'AMX_DESCRI;ENF_ENTRADA;FOR_RAZAO'
    PacketRecords = 30
    Params = <>
    StoreDefs = True
    Left = 608
    Top = 240
    object CdsImpNotasDetalhadaENF_IT_NOTANUMBER: TStringField
      DisplayWidth = 10
      FieldName = 'ENF_IT_NOTANUMBER'
      Size = 10
    end
    object CdsImpNotasDetalhadaAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 3
    end
    object CdsImpNotasDetalhadaAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Size = 45
    end
    object CdsImpNotasDetalhadaOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      Size = 6
    end
    object CdsImpNotasDetalhadaENF_EMISSAO: TDateField
      FieldName = 'ENF_EMISSAO'
    end
    object CdsImpNotasDetalhadaENF_ENTRADA: TDateField
      FieldName = 'ENF_ENTRADA'
    end
    object CdsImpNotasDetalhadaFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object CdsImpNotasDetalhadaFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object CdsImpNotasDetalhadaTOTAL_PRODUTOS: TCurrencyField
      FieldName = 'TOTAL_PRODUTOS'
    end
    object CdsImpNotasDetalhadaVALOR_IPI: TCurrencyField
      FieldName = 'VALOR_IPI'
    end
    object CdsImpNotasDetalhadaVALOR_ICMS: TCurrencyField
      FieldName = 'VALOR_ICMS'
    end
    object CdsImpNotasDetalhadaTOTAL_NF: TCurrencyField
      FieldName = 'TOTAL_NF'
    end
    object CdsImpNotasDetalhadaVALOR_ICMS_ST: TFloatField
      FieldName = 'VALOR_ICMS_ST'
    end
  end
  object SqlCdsImpNotasDetalhada: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'E2.ENF_IT_NOTANUMBER,'#13#10'E2.ENF_QTDE,'#13#10'E2.ENF_PRECO,'#13#10'E2.E' +
      'NF_IPIALIQ,'#13#10'E2.AMX_CODIGO,'#13#10'A1.AMX_DESCRI,'#13#10'E1.OCP_CODIGO,'#13#10'E1.' +
      'ENF_EMISSAO,'#13#10'E1.ENF_ENTRADA,'#13#10'E1.FOR_CODIGO,'#13#10'E1.ENF_TOT_PROD,'#13 +
      #10'E1.ENF_ALIQ_ICMS,'#13#10'E1.ENF_VLFRETE,'#13#10'E1.ENF_VLSEGURO,'#13#10'E1.ENF_DE' +
      'SP_ACES,'#13#10'E1.ENF_TOT_NOTA,'#13#10'E1.enf_vl_subtrib,'#13#10'E1.ENF_VL_ICMS,'#13 +
      #10'F1.FOR_RAZAO'#13#10'FROM ENF_IT01 E2'#13#10'LEFT JOIN ALMOX0000 A1 ON (A1.A' +
      'MX_CODIGO = E2.AMX_CODIGO)'#13#10'     JOIN ENF0001 E1 ON (E1.ENF_NOTA' +
      'NUMBER = E2.ENF_IT_NOTANUMBER)'#13#10'     JOIN FOR0000 F1 ON (F1.FOR_' +
      'CODIGO = E1.FOR_CODIGO)'#13#10'WHERE E1.ENF_EMISSAO between '#39'01/01/200' +
      '4'#39' and '#39'12/31/2004'#39#13#10'ORDER BY A1.AMX_DESCRI,E2.ENF_IT_NOTANUMBER'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    PacketRecords = 30
    Params = <>
    CommandText = 
      'SELECT'#13#10'E2.ENF_IT_NOTANUMBER,'#13#10'E2.ENF_QTDE,'#13#10'E2.ENF_PRECO,'#13#10'E2.E' +
      'NF_IPIALIQ,'#13#10'E2.AMX_CODIGO,'#13#10'A1.AMX_DESCRI,'#13#10'E1.OCP_CODIGO,'#13#10'E1.' +
      'ENF_EMISSAO,'#13#10'E1.ENF_ENTRADA,'#13#10'E1.FOR_CODIGO,'#13#10'E1.ENF_TOT_PROD,'#13 +
      #10'E1.ENF_ALIQ_ICMS,'#13#10'E1.ENF_VLFRETE,'#13#10'E1.ENF_VLSEGURO,'#13#10'E1.ENF_DE' +
      'SP_ACES,'#13#10'E1.ENF_TOT_NOTA,'#13#10'E1.enf_vl_subtrib,'#13#10'E1.ENF_VL_ICMS,'#13 +
      #10'F1.FOR_RAZAO'#13#10'FROM ENF_IT01 E2'#13#10'LEFT JOIN ALMOX0000 A1 ON (A1.A' +
      'MX_CODIGO = E2.AMX_CODIGO)'#13#10'     JOIN ENF0001 E1 ON (E1.ENF_NOTA' +
      'NUMBER = E2.ENF_IT_NOTANUMBER)'#13#10'     JOIN FOR0000 F1 ON (F1.FOR_' +
      'CODIGO = E1.FOR_CODIGO)'#13#10'WHERE E1.ENF_EMISSAO between '#39'01/01/200' +
      '4'#39' and '#39'12/31/2004'#39#13#10'ORDER BY A1.AMX_DESCRI,E2.ENF_IT_NOTANUMBER'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 376
    Top = 288
    object SqlCdsImpNotasDetalhadaENF_QTDE: TFMTBCDField
      FieldName = 'ENF_QTDE'
      Precision = 15
    end
    object SqlCdsImpNotasDetalhadaENF_PRECO: TFMTBCDField
      FieldName = 'ENF_PRECO'
      Precision = 15
    end
    object SqlCdsImpNotasDetalhadaENF_IPIALIQ: TFMTBCDField
      FieldName = 'ENF_IPIALIQ'
      Precision = 15
    end
    object SqlCdsImpNotasDetalhadaAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 3
    end
    object SqlCdsImpNotasDetalhadaAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Size = 35
    end
    object SqlCdsImpNotasDetalhadaOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      Size = 6
    end
    object SqlCdsImpNotasDetalhadaENF_EMISSAO: TDateField
      FieldName = 'ENF_EMISSAO'
    end
    object SqlCdsImpNotasDetalhadaFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 6
    end
    object SqlCdsImpNotasDetalhadaENF_TOT_PROD: TFMTBCDField
      FieldName = 'ENF_TOT_PROD'
      Precision = 15
    end
    object SqlCdsImpNotasDetalhadaENF_ALIQ_ICMS: TFMTBCDField
      FieldName = 'ENF_ALIQ_ICMS'
      Precision = 15
    end
    object SqlCdsImpNotasDetalhadaENF_VLFRETE: TFMTBCDField
      FieldName = 'ENF_VLFRETE'
      Precision = 15
    end
    object SqlCdsImpNotasDetalhadaENF_VLSEGURO: TFMTBCDField
      FieldName = 'ENF_VLSEGURO'
      Precision = 15
    end
    object SqlCdsImpNotasDetalhadaENF_DESP_ACES: TFMTBCDField
      FieldName = 'ENF_DESP_ACES'
      Precision = 15
    end
    object SqlCdsImpNotasDetalhadaENF_TOT_NOTA: TFMTBCDField
      FieldName = 'ENF_TOT_NOTA'
      Precision = 15
    end
    object SqlCdsImpNotasDetalhadaFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsImpNotasDetalhadaENF_ENTRADA: TDateField
      FieldName = 'ENF_ENTRADA'
    end
    object SqlCdsImpNotasDetalhadaENF_VL_ICMS: TFMTBCDField
      FieldName = 'ENF_VL_ICMS'
      Precision = 15
      Size = 4
    end
    object SqlCdsImpNotasDetalhadaENF_VL_SUBTRIB: TFMTBCDField
      FieldName = 'ENF_VL_SUBTRIB'
      Precision = 15
      Size = 5
    end
    object SqlCdsImpNotasDetalhadaENF_IT_NOTANUMBER: TStringField
      FieldName = 'ENF_IT_NOTANUMBER'
      Required = True
      Size = 10
    end
  end
  object ppDBImpNota1: TppDBPipeline
    DataSource = DsNotasDetalhada
    UserName = 'DBImpNota1'
    Left = 776
    Top = 305
    object ppDBImpNota1ppField1: TppField
      FieldAlias = 'ENF_IT_NOTANUMBER'
      FieldName = 'ENF_IT_NOTANUMBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBImpNota1ppField2: TppField
      FieldAlias = 'AMX_CODIGO'
      FieldName = 'AMX_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBImpNota1ppField3: TppField
      FieldAlias = 'AMX_DESCRI'
      FieldName = 'AMX_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBImpNota1ppField4: TppField
      FieldAlias = 'OCP_CODIGO'
      FieldName = 'OCP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBImpNota1ppField5: TppField
      FieldAlias = 'ENF_EMISSAO'
      FieldName = 'ENF_EMISSAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBImpNota1ppField6: TppField
      FieldAlias = 'ENF_ENTRADA'
      FieldName = 'ENF_ENTRADA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBImpNota1ppField7: TppField
      FieldAlias = 'FOR_CODIGO'
      FieldName = 'FOR_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBImpNota1ppField8: TppField
      FieldAlias = 'FOR_RAZAO'
      FieldName = 'FOR_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBImpNota1ppField9: TppField
      FieldAlias = 'TOTAL_PRODUTOS'
      FieldName = 'TOTAL_PRODUTOS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBImpNota1ppField10: TppField
      FieldAlias = 'VALOR_IPI'
      FieldName = 'VALOR_IPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBImpNota1ppField11: TppField
      FieldAlias = 'VALOR_ICMS'
      FieldName = 'VALOR_ICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBImpNota1ppField12: TppField
      FieldAlias = 'TOTAL_NF'
      FieldName = 'TOTAL_NF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBImpNota1ppField13: TppField
      FieldAlias = 'VALOR_ICMS_ST'
      FieldName = 'VALOR_ICMS_ST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
  end
  object ppDBImpNota: TppDBPipeline
    DataSource = DsImpNota
    UserName = 'DBImpNota'
    Left = 800
    Top = 424
    object ppDBImpNotappField1: TppField
      FieldAlias = 'ENF_NOTANUMBER'
      FieldName = 'ENF_NOTANUMBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBImpNotappField2: TppField
      FieldAlias = 'OPE_NATUREZA'
      FieldName = 'OPE_NATUREZA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBImpNotappField3: TppField
      FieldAlias = 'ENF_EMISSAO'
      FieldName = 'ENF_EMISSAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBImpNotappField4: TppField
      FieldAlias = 'ENF_ENTRADA'
      FieldName = 'ENF_ENTRADA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBImpNotappField5: TppField
      FieldAlias = 'ENF_VL_DESCTO'
      FieldName = 'ENF_VL_DESCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBImpNotappField6: TppField
      FieldAlias = 'FOR_CODIGO'
      FieldName = 'FOR_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBImpNotappField7: TppField
      FieldAlias = 'ENF_TOT_PROD'
      FieldName = 'ENF_TOT_PROD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBImpNotappField8: TppField
      FieldAlias = 'ENF_VLFRETE'
      FieldName = 'ENF_VLFRETE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBImpNotappField9: TppField
      FieldAlias = 'ENF_VLSEGURO'
      FieldName = 'ENF_VLSEGURO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBImpNotappField10: TppField
      FieldAlias = 'ENF_DESP_ACES'
      FieldName = 'ENF_DESP_ACES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBImpNotappField11: TppField
      FieldAlias = 'ENF_TOT_NOTA'
      FieldName = 'ENF_TOT_NOTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBImpNotappField12: TppField
      FieldAlias = 'ENF_TIPO_NF_ENTRADA'
      FieldName = 'ENF_TIPO_NF_ENTRADA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBImpNotappField13: TppField
      FieldAlias = 'FOR_RAZAO'
      FieldName = 'FOR_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBImpNotappField14: TppField
      FieldAlias = 'FOR_FONE'
      FieldName = 'FOR_FONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBImpNotappField15: TppField
      FieldAlias = 'TRP_RAZAO'
      FieldName = 'TRP_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBImpNotappField16: TppField
      FieldAlias = 'TRP_FONE'
      FieldName = 'TRP_FONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBImpNotappField17: TppField
      FieldAlias = 'CC_RAZAO'
      FieldName = 'CC_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBImpNotappField18: TppField
      FieldAlias = 'PCX_NIVEL'
      FieldName = 'PCX_NIVEL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBImpNotappField19: TppField
      FieldAlias = 'PCX_DESCRI'
      FieldName = 'PCX_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
  end
  object SqlNF: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 548
    Top = 176
  end
  object DspNF: TDataSetProvider
    DataSet = SqlNF
    Options = [poAllowCommandText]
    Left = 608
    Top = 168
  end
  object CdsNF: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'DspNF'
    AfterScroll = CdsNFAfterScroll
    Left = 680
    Top = 168
    object CdsNFOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object CdsNFOCP_CODIGO: TStringField
      FieldName = 'OCP_CODIGO'
      Size = 6
    end
    object CdsNFFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 6
    end
    object CdsNFENF_TOT_PROD: TFMTBCDField
      FieldName = 'ENF_TOT_PROD'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsNFENF_VLFRETE: TFMTBCDField
      FieldName = 'ENF_VLFRETE'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsNFENF_VLSEGURO: TFMTBCDField
      FieldName = 'ENF_VLSEGURO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsNFENF_DESP_ACES: TFMTBCDField
      FieldName = 'ENF_DESP_ACES'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsNFENF_TOT_NOTA: TFMTBCDField
      FieldName = 'ENF_TOT_NOTA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsNFENF_TIPO_NF_ENTRADA: TStringField
      FieldName = 'ENF_TIPO_NF_ENTRADA'
      Size = 1
    end
    object CdsNFRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 45
    end
    object CdsNFENF_REGISTRO: TIntegerField
      FieldName = 'ENF_REGISTRO'
    end
    object CdsNFENF_FECHADO_PROJETO_OBRA: TStringField
      FieldName = 'ENF_FECHADO_PROJETO_OBRA'
      FixedChar = True
      Size = 1
    end
    object CdsNFENF_NOTANUMBER: TStringField
      FieldName = 'ENF_NOTANUMBER'
      Size = 10
    end
    object CdsNFNFE_XML: TStringField
      FieldName = 'NFE_XML'
      FixedChar = True
      Size = 1
    end
    object CdsNFEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsNFENF_BASE_IPI: TFMTBCDField
      FieldName = 'ENF_BASE_IPI'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNFENF_VALOR_IPI: TFMTBCDField
      FieldName = 'ENF_VALOR_IPI'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNFENF_BASE_ICMS: TFMTBCDField
      FieldName = 'ENF_BASE_ICMS'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNFENF_VALOR_ICMS: TFMTBCDField
      FieldName = 'ENF_VALOR_ICMS'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNFENF_BASE_ICMS_ST: TFMTBCDField
      FieldName = 'ENF_BASE_ICMS_ST'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNFENF_VALOR_ICMS_ST: TFMTBCDField
      FieldName = 'ENF_VALOR_ICMS_ST'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CdsNFENF_EMISSAO: TDateField
      FieldName = 'ENF_EMISSAO'
    end
    object CdsNFENF_ENTRADA: TDateField
      FieldName = 'ENF_ENTRADA'
    end
  end
  object SQLCDSCFOP: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT SUM(e2.enf_it_baseicms) as BASE_ICMS, SUM(e2.enf_icms) as' +
      ' VALOR_ICMS, E2.ENF_CFOP, E1.ENF_ENTRADA, E1.ENF_EMISSAO, E2.ENF' +
      '_IT_NOTANUMBER, CAST(F1.FOR_RAZAO AS VARCHAR(45)) as FOR_RAZAO, ' +
      'SUM(CAST(E2.ENF_QTDE* E2.ENF_PRECO AS NUMERIC(18,2))) AS PRODUTO' +
      'S, SUM(e2.ENF_VLSUBST) as VALOR_ST, SUM(CAST((E2.ENF_IPIALIQ/100' +
      ')AS NUMERIC (18,4))*CAST((E2.ENF_QTDE*E2.ENF_PRECO)AS NUMERIC (1' +
      '8,4))) AS VALOR_IPI, CAST(SUM(E1.ENF_VLFRETE+E1.ENF_VLSEGURO+E1.' +
      'ENF_DESP_ACES)AS NUMERIC (18,4)) AS OUTROS, CAST((SUM(CAST(E2.EN' +
      'F_QTDE* E2.ENF_PRECO AS NUMERIC(18,2))) + SUM(e2.ENF_VLSUBST) + ' +
      'SUM(CAST((E2.ENF_IPIALIQ/100)AS NUMERIC (18,4))*CAST((E2.ENF_QTD' +
      'E*E2.ENF_PRECO)AS NUMERIC (18,4))) + CAST(SUM(E1.ENF_VLFRETE+E1.' +
      'ENF_VLSEGURO+E1.ENF_DESP_ACES)AS NUMERIC (18,4)) )AS NUMERIC (18' +
      ',4)) AS NOTAS FROM ENF_IT01 E2 JOIN ENF0001 E1 ON (E2.ENF_IT_NOT' +
      'ANUMBER = E1.ENF_NOTANUMBER) AND (E2.for_codigo = E1.for_codigo)' +
      ' AND (E1.ENF_TIPO_NF_ENTRADA = '#39'N'#39') JOIN FOR0000 F1 ON (E2.FOR_C' +
      'ODIGO = F1.FOR_CODIGO)  LEFT JOIN ALMOX0000 A1 ON (A1.AMX_CODIGO' +
      ' = E2.AMX_CODIGO)  where E1.ENF_EMISSAO BETWEEN '#39'01/01/2013'#39#13#10'AN' +
      'D '#39'01/31/2013'#39'  AND E1.EMP_CODIGO = '#39'001'#39'  GROUP BY E2.ENF_CFOP,' +
      'E1.ENF_ENTRADA, E2.ENF_IT_NOTANUMBER, E1.ENF_EMISSAO, F1.FOR_RAZ' +
      'AO'#13#10'UNION all  SELECT  SUM(CAST(t1.enf_baseicms AS NUMERIC(18,2)' +
      ')) AS enf_baseicms, SUM(CAST(t1.enf_vl_icms AS NUMERIC(18,2))) A' +
      'S enf_vl_icms,   t1.OPE_NATUREZA, t1.ENF_ENTRADA, t1.ENF_EMISSAO' +
      ', t1.ENF_NOTANUMBER, t2.TRP_RAZAO, SUM(CAST(t1.ENF_TOT_NOTA AS N' +
      'UMERIC(18,2))) AS PRODUTOS, SUM(CAST(t1.ENF_TOT_CSUB AS NUMERIC(' +
      '18,2))) AS ENF_TOT_CSUB, SUM(t1.ENF_VL_IPI) AS ENF_VL_IPI , SUM(' +
      'CAST(t1.ENF_VLFRETE + t1.ENF_VLSEGURO + t1.ENF_DESP_ACES  AS NUM' +
      'ERIC(18,2))) AS OUTROS,'#13#10'SUM(CAST(t1.ENF_TOT_NOTA AS NUMERIC(18,' +
      '2))) AS NOTAS FROM ENF0001 t1  JOIN TRP0000 t2 on (t2.TRP_CODIGO' +
      ' = t1.FOR_CODIGO) WHERE t1.ENF_EMISSAO BETWEEN '#39'01/01/2013'#39' AND ' +
      #39'01/31/2013'#39'  AND t1.EMP_CODIGO = '#39'001'#39' and t1.ENF_TIPO_NF_ENTRA' +
      'DA = '#39'C'#39'  GROUP BY t1.OPE_NATUREZA,t1.ENF_ENTRADA, t1.ENF_EMISSA' +
      'O,t1.ENF_NOTANUMBER,t2.TRP_RAZAO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    PacketRecords = 30
    Params = <>
    OnCalcFields = SqlCdsImpNotasCalcFields
    CommandText = 
      'SELECT SUM(e2.enf_it_baseicms) as BASE_ICMS, SUM(e2.enf_icms) as' +
      ' VALOR_ICMS, E2.ENF_CFOP, E1.ENF_ENTRADA, E1.ENF_EMISSAO, E2.ENF' +
      '_IT_NOTANUMBER, CAST(F1.FOR_RAZAO AS VARCHAR(45)) as FOR_RAZAO, ' +
      'SUM(CAST(E2.ENF_QTDE* E2.ENF_PRECO AS NUMERIC(18,2))) AS PRODUTO' +
      'S, SUM(e2.ENF_VLSUBST) as VALOR_ST, SUM(CAST((E2.ENF_IPIALIQ/100' +
      ')AS NUMERIC (18,4))*CAST((E2.ENF_QTDE*E2.ENF_PRECO)AS NUMERIC (1' +
      '8,4))) AS VALOR_IPI, CAST(SUM(E1.ENF_VLFRETE+E1.ENF_VLSEGURO+E1.' +
      'ENF_DESP_ACES)AS NUMERIC (18,4)) AS OUTROS, CAST((SUM(CAST(E2.EN' +
      'F_QTDE* E2.ENF_PRECO AS NUMERIC(18,2))) + SUM(e2.ENF_VLSUBST) + ' +
      'SUM(CAST((E2.ENF_IPIALIQ/100)AS NUMERIC (18,4))*CAST((E2.ENF_QTD' +
      'E*E2.ENF_PRECO)AS NUMERIC (18,4))) + CAST(SUM(E1.ENF_VLFRETE+E1.' +
      'ENF_VLSEGURO+E1.ENF_DESP_ACES)AS NUMERIC (18,4)) )AS NUMERIC (18' +
      ',4)) AS NOTAS FROM ENF_IT01 E2 JOIN ENF0001 E1 ON (E2.ENF_IT_NOT' +
      'ANUMBER = E1.ENF_NOTANUMBER) AND (E2.for_codigo = E1.for_codigo)' +
      ' AND (E1.ENF_TIPO_NF_ENTRADA = '#39'N'#39') JOIN FOR0000 F1 ON (E2.FOR_C' +
      'ODIGO = F1.FOR_CODIGO)  LEFT JOIN ALMOX0000 A1 ON (A1.AMX_CODIGO' +
      ' = E2.AMX_CODIGO)  where E1.ENF_EMISSAO BETWEEN '#39'01/01/2013'#39#13#10'AN' +
      'D '#39'01/31/2013'#39'  AND E1.EMP_CODIGO = '#39'001'#39'  GROUP BY E2.ENF_CFOP,' +
      'E1.ENF_ENTRADA, E2.ENF_IT_NOTANUMBER, E1.ENF_EMISSAO, F1.FOR_RAZ' +
      'AO'#13#10'UNION all  SELECT  SUM(CAST(t1.enf_baseicms AS NUMERIC(18,2)' +
      ')) AS enf_baseicms, SUM(CAST(t1.enf_vl_icms AS NUMERIC(18,2))) A' +
      'S enf_vl_icms,   t1.OPE_NATUREZA, t1.ENF_ENTRADA, t1.ENF_EMISSAO' +
      ', t1.ENF_NOTANUMBER, t2.TRP_RAZAO, SUM(CAST(t1.ENF_TOT_NOTA AS N' +
      'UMERIC(18,2))) AS PRODUTOS, SUM(CAST(t1.ENF_TOT_CSUB AS NUMERIC(' +
      '18,2))) AS ENF_TOT_CSUB, SUM(t1.ENF_VL_IPI) AS ENF_VL_IPI , SUM(' +
      'CAST(t1.ENF_VLFRETE + t1.ENF_VLSEGURO + t1.ENF_DESP_ACES  AS NUM' +
      'ERIC(18,2))) AS OUTROS,'#13#10'SUM(CAST(t1.ENF_TOT_NOTA AS NUMERIC(18,' +
      '2))) AS NOTAS FROM ENF0001 t1  JOIN TRP0000 t2 on (t2.TRP_CODIGO' +
      ' = t1.FOR_CODIGO) WHERE t1.ENF_EMISSAO BETWEEN '#39'01/01/2013'#39' AND ' +
      #39'01/31/2013'#39'  AND t1.EMP_CODIGO = '#39'001'#39' and t1.ENF_TIPO_NF_ENTRA' +
      'DA = '#39'C'#39'  GROUP BY t1.OPE_NATUREZA,t1.ENF_ENTRADA, t1.ENF_EMISSA' +
      'O,t1.ENF_NOTANUMBER,t2.TRP_RAZAO'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 592
    Top = 472
    object SQLCDSCFOPENF_CFOP: TStringField
      FieldName = 'ENF_CFOP'
      Size = 4
    end
    object SQLCDSCFOPENF_ENTRADA: TDateField
      FieldName = 'ENF_ENTRADA'
    end
    object SQLCDSCFOPENF_EMISSAO: TDateField
      FieldName = 'ENF_EMISSAO'
    end
    object SQLCDSCFOPENF_IT_NOTANUMBER: TStringField
      FieldName = 'ENF_IT_NOTANUMBER'
      Size = 10
    end
    object SQLCDSCFOPFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 45
    end
    object SQLCDSCFOPPRODUTOS: TFMTBCDField
      FieldName = 'PRODUTOS'
      Precision = 15
      Size = 2
    end
    object SQLCDSCFOPVALOR_ST: TFMTBCDField
      FieldName = 'VALOR_ST'
      Precision = 15
      Size = 5
    end
    object SQLCDSCFOPVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 15
    end
    object SQLCDSCFOPOUTROS: TFMTBCDField
      FieldName = 'OUTROS'
      Precision = 15
      Size = 4
    end
    object SQLCDSCFOPNOTAS: TFMTBCDField
      FieldName = 'NOTAS'
      Precision = 15
      Size = 4
    end
    object SQLCDSCFOPBASE_ICMS: TFMTBCDField
      FieldName = 'BASE_ICMS'
      Precision = 20
      Size = 5
    end
    object SQLCDSCFOPVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Precision = 20
      Size = 5
    end
  end
  object DSCFOP: TDataSource
    DataSet = SQLCDSCFOP
    Left = 664
    Top = 472
  end
  object frxCFOP: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39673.350806747700000000
    ReportOptions.LastChange = 41423.716060937500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxCFOPGetValue
    Left = 888
    Top = 480
    Datasets = <
      item
        DataSet = frxDBCFOP
        DataSetName = 'frxDBCFOP'
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
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 362.834880000000000000
        Width = 1046.929810000000000000
        object Line3: TfrxLineView
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'R0001')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 200.315090000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBCFOP
        DataSetName = 'frxDBCFOP'
        RowCount = 0
        object frxDBDataset1ENF_IT_NOTANUMBER: TfrxMemoView
          Left = 196.535560000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'ENF_IT_NOTANUMBER'
          DataSet = frxDBCFOP
          DataSetName = 'frxDBCFOP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCFOP."ENF_IT_NOTANUMBER"]')
          ParentFont = False
        end
        object frxDBDataset1FOR_RAZAO: TfrxMemoView
          Left = 264.567100000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DataField = 'FOR_RAZAO'
          DataSet = frxDBCFOP
          DataSetName = 'frxDBCFOP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBCFOP."FOR_RAZAO"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1PRODUTOS: TfrxMemoView
          Left = 483.779840000000000000
          Width = 79.370081180000000000
          Height = 18.897650000000000000
          DataField = 'PRODUTOS'
          DataSet = frxDBCFOP
          DataSetName = 'frxDBCFOP'
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
            '[frxDBCFOP."PRODUTOS"]')
          ParentFont = False
        end
        object frxDBCFOPENF_EMISSAO: TfrxMemoView
          Left = 60.472480000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataSet = frxDBCFOP
          DataSetName = 'frxDBCFOP'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBCFOP."ENF_EMISSAO"]')
          ParentFont = False
        end
        object frxDBCFOPPRODUTOS_IPI: TfrxMemoView
          Left = 718.110700000000000000
          Width = 68.031491180000000000
          Height = 18.897650000000000000
          DataSet = frxDBCFOP
          DataSetName = 'frxDBCFOP'
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
            '[frxDBCFOP."VALOR_IPI"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 128.504020000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'ENF_ENTRADA'
          DataSet = frxDBCFOP
          DataSetName = 'frxDBCFOP'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBCFOP."ENF_ENTRADA"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 786.142240000000000000
          Width = 86.929141180000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_ST'
          DataSet = frxDBCFOP
          DataSetName = 'frxDBCFOP'
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
            '[frxDBCFOP."VALOR_ST"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 873.071430000000000000
          Width = 86.929141180000000000
          Height = 18.897650000000000000
          DataSet = frxDBCFOP
          DataSetName = 'frxDBCFOP'
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
            '[frxDBCFOP."OUTROS"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 960.000620000000000000
          Width = 86.929141180000000000
          Height = 18.897650000000000000
          DataSet = frxDBCFOP
          DataSetName = 'frxDBCFOP'
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
            '[frxDBCFOP."NOTAS"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 563.149970000000000000
          Width = 79.370081180000000000
          Height = 18.897650000000000000
          DataField = 'BASE_ICMS'
          DataSet = frxDBCFOP
          DataSetName = 'frxDBCFOP'
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
            '[frxDBCFOP."BASE_ICMS"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_ICMS'
          DataSet = frxDBCFOP
          DataSetName = 'frxDBCFOP'
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
            '[frxDBCFOP."VALOR_ICMS"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 952.441560000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
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
        object Memo3: TfrxMemoView
          Top = 22.677180000000000000
          Width = 468.661720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'RELAT'#211'RIO DE NOTAS FISCAIS DE ENTRADA AGRUPADAS POR CFOP')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 60.472480000000000000
          Width = 1050.709340000000000000
          Color = clBlack
          Diagonal = True
        end
        object SysMemo4: TfrxSysMemoView
          Left = 952.441560000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Width = 468.661720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[EMPRESA]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 41.574830000000000000
          Width = 623.622450000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FILTRO]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 857.953310000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'EMISS'#195'O:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 857.953310000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#193'GINA:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Top = 60.472480000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 196.535560000000000000
          Top = 60.472480000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N.F.')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 264.567100000000000000
          Top = 60.472480000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FORNECEDOR')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 483.779840000000000000
          Top = 60.472480000000000000
          Width = 79.370081180000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VLR. PROD.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 60.472480000000000000
          Top = 60.472480000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'EMISS'#195'O')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 128.504020000000000000
          Top = 60.472480000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ENTRADA')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 786.142240000000000000
          Top = 60.472480000000000000
          Width = 86.929141180000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VLR. SUB. TRIB.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 718.110700000000000000
          Top = 60.472480000000000000
          Width = 68.031491180000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VLR. IPI')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 873.071430000000000000
          Top = 60.472480000000000000
          Width = 86.929141180000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VLR. OUTROS')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 960.000620000000000000
          Top = 60.472480000000000000
          Width = 86.929141180000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VLR. NOTAS')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 563.149970000000000000
          Top = 60.472480000000000000
          Width = 79.370081180000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ICMS BASE')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 642.520100000000000000
          Top = 60.472480000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VL ICMS')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 158.740260000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBCFOP."ENF_CFOP"'
        KeepTogether = True
        object frxDBDataset1ENF_CFOP: TfrxMemoView
          Left = 64.252010000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'ENF_CFOP'
          DataSet = frxDBCFOP
          DataSetName = 'frxDBCFOP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBCFOP."ENF_CFOP"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 18.897650000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CFOP:')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 18.897650000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 241.889920000000000000
        Width = 1046.929810000000000000
        object SysMemo2: TfrxSysMemoView
          Left = 483.779840000000000000
          Width = 79.370081180000000000
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
            '[SUM(<frxDBCFOP."PRODUTOS">,MasterData1)]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 343.937230000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DA CFOP:')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 718.110700000000000000
          Width = 68.031491180000000000
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
            '[SUM(<frxDBCFOP."VALOR_IPI">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          Left = 786.142240000000000000
          Width = 86.929141180000000000
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
            '[SUM(<frxDBCFOP."VALOR_ST">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          Left = 873.071430000000000000
          Width = 86.929141180000000000
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
            '[SUM(<frxDBCFOP."OUTROS">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          Left = 960.000620000000000000
          Width = 86.929141180000000000
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
            '[SUM(<frxDBCFOP."NOTAS">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo13: TfrxSysMemoView
          Left = 563.149970000000000000
          Width = 79.370081180000000000
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
            '[SUM(<frxDBCFOP."BASE_ICMS">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo14: TfrxSysMemoView
          Left = 642.520100000000000000
          Width = 75.590551180000000000
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
            '[SUM(<frxDBCFOP."VALOR_ICMS">,MasterData1)]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 283.464750000000000000
        Width = 1046.929810000000000000
        object SysMemo3: TfrxSysMemoView
          Left = 483.779840000000000000
          Width = 79.370081180000000000
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
            '[SUM(<frxDBCFOP."PRODUTOS">,MasterData1,3)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 385.512060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL GERAL:')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object SysMemo6: TfrxSysMemoView
          Left = 718.110700000000000000
          Width = 68.031491180000000000
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
            '[SUM(<frxDBCFOP."VALOR_IPI">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          Left = 786.142240000000000000
          Width = 86.929141180000000000
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
            '[SUM(<frxDBCFOP."VALOR_ST">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo11: TfrxSysMemoView
          Left = 873.071430000000000000
          Width = 86.929141180000000000
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
            '[SUM(<frxDBCFOP."OUTROS">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo12: TfrxSysMemoView
          Left = 960.000620000000000000
          Width = 86.929141180000000000
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
            '[SUM(<frxDBCFOP."NOTAS">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo15: TfrxSysMemoView
          Left = 563.149970000000000000
          Width = 79.370081180000000000
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
            '[SUM(<frxDBCFOP."BASE_ICMS">,MasterData1,3)]')
          ParentFont = False
        end
        object SysMemo16: TfrxSysMemoView
          Left = 642.520100000000000000
          Width = 75.590551180000000000
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
            '[SUM(<frxDBCFOP."VALOR_ICMS">,MasterData1,3)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBCFOP: TfrxDBDataset
    UserName = 'frxDBCFOP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ENF_CFOP=ENF_CFOP'
      'ENF_ENTRADA=ENF_ENTRADA'
      'ENF_EMISSAO=ENF_EMISSAO'
      'ENF_IT_NOTANUMBER=ENF_IT_NOTANUMBER'
      'FOR_RAZAO=FOR_RAZAO'
      'PRODUTOS=PRODUTOS'
      'VALOR_ST=VALOR_ST'
      'VALOR_IPI=VALOR_IPI'
      'OUTROS=OUTROS'
      'NOTAS=NOTAS'
      'BASE_ICMS=BASE_ICMS'
      'VALOR_ICMS=VALOR_ICMS')
    DataSource = DSCFOP
    BCDToCurrency = False
    Left = 736
    Top = 472
  end
  object ImageList1: TImageList
    Left = 704
    Top = 288
  end
  object qNfeConf: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT  pr.pti_codigo,'
      '        tp.pti_descri,'
      '        I1.PRD_REFER,'
      '        PR.PRD_DESCRI,'
      '        PR.prd_und,'
      '        i1.enf_qtde,'
      '        I1.enf_preco,'
      '        I1.ENF_IT_DESCTO,'
      '        nf.enf_notanumber,'
      '        nf.OPE_NATUREZA,'
      '        pr.PRD_ORIGEM,'
      '        A1.AMX_DESCRI,'
      '        fr.for_codigo,'
      '        fr.for_razao,'
      '        0.00 as VlTotal'
      ''
      'FROM    ENF_IT01 I1'
      '    Join enf0001 nf on nf.enf_notanumber=I1.ENF_IT_NOTANUMBER'
      '    LEFT JOIN ALMOX0000 A1 ON (A1.AMX_CODIGO = I1.AMX_CODIGO)'
      '    Join prd0000 pr on pr.prd_refer=i1.prd_refer'
      '    Join prd_tipo tp on tp.pti_codigo=pr.pti_codigo'
      '    jOIN ALMOX0000 AL ON AL.AMX_CODIGO=i1.AMX_CODIGO'
      '    join for0000 fr on fr.for_codigo=nf.for_codigo'
      'WHERE   I1.ENF_IT_NOTANUMBER = '#39'0000013922'#39
      '        AND I1.FOR_CODIGO = '#39'0053'#39
      '        AND I1.EMP_CODIGO = '#39'100'#39
      'ORDER BY A1.AMX_DESCRI, I1.enf_registro')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 64
    Top = 280
    object qNfeConfPTI_CODIGO: TStringField
      DisplayLabel = ' '
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object qNfeConfPTI_DESCRI: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 30
      FieldName = 'PTI_DESCRI'
      OnGetText = qNfeConfPTI_DESCRIGetText
      Size = 100
    end
    object qNfeConfPRD_REFER: TStringField
      DisplayLabel = ' '
      FieldName = 'PRD_REFER'
    end
    object qNfeConfPRD_DESCRI: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 90
      FieldName = 'PRD_DESCRI'
      OnGetText = qNfeConfPRD_DESCRIGetText
      Size = 100
    end
    object qNfeConfPRD_UND: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'PRD_UND'
      Size = 3
    end
    object qNfeConfENF_QTDE: TFMTBCDField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 12
      FieldName = 'ENF_QTDE'
      OnGetText = qNfeConfENF_QTDEGetText
      DisplayFormat = '###,##0.00'
      Precision = 20
      Size = 5
    end
    object qNfeConfENF_PRECO: TFMTBCDField
      DisplayLabel = 'Valor Unit'#225'rio'
      DisplayWidth = 12
      FieldName = 'ENF_PRECO'
      OnGetText = qNfeConfENF_PRECOGetText
      DisplayFormat = '###,###,##0.00'
      Precision = 20
      Size = 5
    end
    object qNfeConfVLTOTAL: TFMTBCDField
      DisplayLabel = 'Vl.Total'
      DisplayWidth = 12
      FieldName = 'VLTOTAL'
      OnGetText = qNfeConfVLTOTALGetText
      Precision = 20
      Size = 2
    end
    object qNfeConfENF_NOTANUMBER: TStringField
      DisplayLabel = ' '
      FieldName = 'ENF_NOTANUMBER'
      OnGetText = qNfeConfENF_NOTANUMBERGetText
      Size = 10
    end
    object qNfeConfOPE_NATUREZA: TStringField
      DisplayLabel = ' '
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object qNfeConfPRD_ORIGEM: TIntegerField
      DisplayLabel = ' '
      FieldName = 'PRD_ORIGEM'
    end
    object qNfeConfAMX_DESCRI: TStringField
      DisplayLabel = ' '
      FieldName = 'AMX_DESCRI'
      Size = 60
    end
    object qNfeConfENF_IT_DESCTO: TFMTBCDField
      DisplayLabel = ' '
      FieldName = 'ENF_IT_DESCTO'
      Precision = 20
      Size = 5
    end
    object qNfeConfFOR_CODIGO: TStringField
      DisplayLabel = ' '
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object qNfeConfFOR_RAZAO: TStringField
      DisplayLabel = ' '
      FieldName = 'FOR_RAZAO'
      OnGetText = qNfeConfFOR_RAZAOGetText
      Size = 40
    end
    object qNfeConfObs: TStringField
      DisplayLabel = 'Obs.'
      FieldKind = fkCalculated
      FieldName = 'Obs'
      Size = 10
      Calculated = True
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 249
    Top = 128
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 136
    Top = 188
  end
  object JvSelectDirectory1: TJvSelectDirectory
    Left = 376
    Top = 174
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 56
    Top = 206
  end
  object frxPorProduto: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44084.407895162000000000
    ReportOptions.LastChange = 44365.464099594900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var Empresa: string;                                          '
      'begin'
      ''
      'end.')
    OnBeginDoc = frxPorProdutoBeginDoc
    OnGetValue = frxPorProdutoGetValue
    Left = 969
    Top = 161
    Datasets = <
      item
        DataSet = frxDBqForProduto
        DataSetName = 'frxDBqForProduto'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 63.031540000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Left = 585.827150000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [Page#] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo8: TfrxMemoView
          Left = 672.756340000000000000
          Top = 45.354360000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 544.472790000000000000
          Top = 45.354360000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Emitido em: [Date]')
          ParentFont = False
        end
        object LogoEmpresa: TfrxPictureView
          Left = 3.779530000000000000
          Width = 177.637783070000000000
          Height = 60.472480000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object wFrxRazao: TfrxMemoView
          Left = 205.551330000000000000
          Top = 1.779530000000000000
          Width = 362.834880000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[EMPRESA]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 205.874150000000000000
          Top = 18.456710000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Notas Fiscais por Produto')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 204.094620000000000000
          Top = 37.795300000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Per'#237'odo de [DataI] a [DataF]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 16.897650000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        DataSet = frxDBqForProduto
        DataSetName = 'frxDBqForProduto'
        RowCount = 0
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBqForProduto."PRD_REFER"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 83.149660000000000000
          Top = 1.779530000000000000
          Width = 359.055350000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBqForProduto."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 449.764070000000000000
          Top = 1.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBqForProduto."ENF_QTDE"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 548.031850000000000000
          Top = 1.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBqForProduto."ENF_PRECO"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 642.520100000000000000
          Top = 1.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBqForProduto."TOTAL"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Height = 17.007874020000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line2: TfrxLineView
          Left = 718.110700000000000000
          Height = 17.007874020000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBqForProduto."ENF_NOTANUMBER"'
        object Shape2: TfrxShapeView
          Top = 49.133890000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
        end
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Top = 52.913420000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 86.929190000000000000
          Top = 52.913420000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 449.764070000000000000
          Top = 52.913420000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 532.913730000000000000
          Top = 52.913420000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Unit'#225'rio')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 627.401980000000000000
          Top = 52.913420000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 4.000000000000000000
          Top = 3.779530000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nota Fiscal: [frxDBqForProduto."ENF_NOTANUMBER"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fornecedor:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 79.370130000000000000
          Top = 26.456710000000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBqForProduto."FOR_RAZAO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 506.457020000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data de Emiss'#227'o')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 616.063390000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data de Entrada')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 616.063390000000000000
          Top = 26.456710000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBqForProduto."ENF_ENTRADA"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 506.457020000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBqForProduto."ENF_EMISSAO"]')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Width = 718.110700000000000000
          Height = 49.133890000000000000
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo22: TfrxMemoView
          Left = 532.913730000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total da Nota')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 642.520100000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBqForProduto."TOTAL">,0,0)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBqForProduto: TfrxDBDataset
    UserName = 'frxDBqForProduto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AMX_CODIGO=AMX_CODIGO'
      'FOR_RAZAO=FOR_RAZAO'
      'ENF_NOTANUMBER=ENF_NOTANUMBER'
      'ENF_ENTRADA=ENF_ENTRADA'
      'ENF_EMISSAO=ENF_EMISSAO'
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'ENF_QTDE=ENF_QTDE'
      'ENF_PRECO=ENF_PRECO'
      'TOTAL=TOTAL')
    DataSet = qForProduto
    BCDToCurrency = False
    Left = 968
    Top = 216
  end
  object dsqForProduto: TDataSource
    DataSet = qForProduto
    Left = 968
    Top = 262
  end
  object qForProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT DISTINCT ka.AMX_CODIGO, fo.for_razao, ne.enf_notanumber, '
      'ne.enf_entrada, ne.ENF_EMISSAO, nfit.prd_refer, pr.prd_descri,'
      
        'nfit.enf_qtde, nfit.enf_preco, (nfit.enf_qtde * nfit.enf_preco) ' +
        'AS total'
      'FROM enf_it01 nfit'
      
        'INNER JOIN enf0001 ne ON'#9'nfit.enf_it_notanumber = ne.enf_notanum' +
        'ber'#9'AND ne.ENF_EMISSAO BETWEEN '#39'2019-09-15'#39' AND '#39'2021-09-15'#39
      'INNER JOIN for0000 fo ON'#9'nfit.for_codigo = fo.for_codigo'
      'INNER JOIN prd0000 pr ON'#9'nfit.prd_refer = pr.prd_refer'
      'INNER JOIN kardex ka ON'#9'ka.prd_codigo = pr.prd_codigo'
      'WHERE'#9'nfit.emp_codigo = '#39'001'#39
      'ORDER BY fo.FOR_RAZAO, ne.ENF_NOTANUMBER')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 968
    Top = 310
    object qForProdutoAMX_CODIGO: TStringField
      DisplayLabel = 'Almoxarifado'
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object qForProdutoFOR_RAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'FOR_RAZAO'
      Size = 70
    end
    object qForProdutoENF_NOTANUMBER: TStringField
      DisplayLabel = 'N'#186' da Nota fiscal'
      FieldName = 'ENF_NOTANUMBER'
      Size = 10
    end
    object qForProdutoENF_ENTRADA: TDateField
      DisplayLabel = 'Data da Entrada'
      FieldName = 'ENF_ENTRADA'
    end
    object qForProdutoENF_EMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'ENF_EMISSAO'
    end
    object qForProdutoPRD_REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRD_REFER'
    end
    object qForProdutoPRD_DESCRI: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object qForProdutoENF_QTDE: TFMTBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'ENF_QTDE'
      Precision = 18
      Size = 5
    end
    object qForProdutoENF_PRECO: TFMTBCDField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      FieldName = 'ENF_PRECO'
      Precision = 18
      Size = 5
    end
    object qForProdutoTOTAL: TFMTBCDField
      DisplayLabel = 'Pre'#231'o Total'
      FieldName = 'TOTAL'
      Precision = 18
      Size = 10
    end
    object qForProdutoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object qXml: TFDQuery
    Connection = DBInicio.FDACConn
    Left = 480
    Top = 190
  end
  object ppRpImpNotaCentroCusto: TppReport
    AutoStop = False
    DataPipeline = ppDBImpNotaCC
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
    Template.FileName = 'X:\adjutor\fontesrelatorios\RELNotasEntrada'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
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
    Left = 888
    Top = 536
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBImpNotaCC'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 17727
      mmPrintPosition = 0
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_00_EMPRESA_CC: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_00_EMPRESA_CC'
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
        mmHeight = 4163
        mmLeft = 265
        mmTop = 794
        mmWidth = 159809
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_00_TITULO1_CC: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_00_TITULO1_CC'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_00_TITULO2_CC: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_00_TITULO2_CC'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 8731
        mmWidth = 173015
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        OnGetText = ppSystemVariable11GetText
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 224632
        mmTop = 794
        mmWidth = 32544
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        OnGetText = ppSystemVariable2GetText
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
        mmLeft = 235480
        mmTop = 8731
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 13494
        mmWidth = 258275
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 120
        mmTop = 17462
        mmWidth = 258275
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' Nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 14023
        mmWidth = 16688
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label2'
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
        mmLeft = 31452
        mmTop = 14023
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ref.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 67738
        mmTop = 14023
        mmWidth = 5292
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vl.Total NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 241036
        mmTop = 14023
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CFOP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 21659
        mmTop = 14023
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Centro de Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 177007
        mmTop = 14023
        mmWidth = 20637
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtde.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 167746
        mmTop = 14023
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label22'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Prod'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 220663
        mmTop = 14023
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label31'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 51084
        mmTop = 14023
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label38'
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 83382
        mmTop = 14023
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENF_NOTANUMBER'
        DataPipeline = ppDBImpNotaCC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBImpNotaCC'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 794
        mmWidth = 19539
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OPE_NATUREZA'
        DataPipeline = ppDBImpNotaCC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBImpNotaCC'
        mmHeight = 3175
        mmLeft = 21611
        mmTop = 794
        mmWidth = 7774
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENF_EMISSAO'
        DataPipeline = ppDBImpNotaCC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBImpNotaCC'
        mmHeight = 3175
        mmLeft = 31452
        mmTop = 794
        mmWidth = 15637
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENF_TOT_NOTA'
        DataPipeline = ppDBImpNotaCC
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNotaCC'
        mmHeight = 3175
        mmLeft = 235887
        mmTop = 794
        mmWidth = 20963
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PCX_DESCRI'
        DataPipeline = ppDBImpNotaCC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBImpNotaCC'
        mmHeight = 3175
        mmLeft = 176742
        mmTop = 794
        mmWidth = 37042
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENF_QTDE'
        DataPipeline = ppDBImpNotaCC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNotaCC'
        mmHeight = 3175
        mmLeft = 161310
        mmTop = 794
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText31'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENF_ENTRADA'
        DataPipeline = ppDBImpNotaCC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBImpNotaCC'
        mmHeight = 3175
        mmLeft = 48967
        mmTop = 794
        mmWidth = 17503
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText19'
        DataField = 'PRD_REFER'
        DataPipeline = ppDBImpNotaCC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBImpNotaCC'
        mmHeight = 3175
        mmLeft = 67738
        mmTop = 794
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText20'
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBImpNotaCC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBImpNotaCC'
        mmHeight = 3175
        mmLeft = 83647
        mmTop = 794
        mmWidth = 77543
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText30'
        DataField = 'ENF_TOT_PROD'
        DataPipeline = ppDBImpNotaCC
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNotaCC'
        mmHeight = 4498
        mmLeft = 217130
        mmTop = 820
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 258275
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total de Itens Listados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 19315
        mmTop = 529
        mmWidth = 29368
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc14: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBImpNotaCC
        DisplayFormat = '#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBImpNotaCC'
        mmHeight = 3175
        mmLeft = 51065
        mmTop = 529
        mmWidth = 15610
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 193146
        mmTop = 529
        mmWidth = 14552
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc15: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'ENF_TOT_NOTA'
        DataPipeline = ppDBImpNotaCC
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNotaCC'
        mmHeight = 3704
        mmLeft = 237108
        mmTop = 529
        mmWidth = 22184
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc16: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENF_TOT_PROD'
        DataPipeline = ppDBImpNotaCC
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBImpNotaCC'
        mmHeight = 3175
        mmLeft = 211138
        mmTop = 529
        mmWidth = 21696
        BandType = 7
        LayerName = Foreground2
      end
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object dsImpNotaCC: TDataSource
    DataSet = qImpNotaCC
    Left = 664
    Top = 536
  end
  object qImpNotaCC: TFDQuery
    Connection = DBInicio.FDACConn
    SQL.Strings = (
      'SELECT'
      '  e1.OPE_NATUREZA,'
      '  CAST(p2.PRD_REFER AS char(20)) AS PRD_REFER,'
      '  CAST(p2.PRD_DESCRI as char(100)) as PRD_DESCRI, '
      '  ei.ENF_QTDE,'
      '  ei.ENF_PRECO,'
      '  E1.ENF_NOTANUMBER,'
      '  E1.ENF_EMISSAO,'
      '  E1.ENF_ENTRADA,'
      '  E1.FOR_CODIGO,'
      '  ei.ENF_PRECO * ei.ENF_QTDE AS ENF_TOT_PROD,'
      '  ei.ENF_PTOTAL_ORIGINAL AS ENF_TOT_NOTA,'
      '  CAST(F1.FOR_RAZAO as char(70)) AS FOR_RAZAO,'
      '  CAST(F1.FOR_FONE as CHAR(12)) as FOR_FONE,'
      '  CAST(p.PCX_NIVEL as CHAR(15)) as PCX_NIVEL,'
      '  CAST(p.PCX_DESCRI as CHAR(120)) as PCX_DESCRI'
      'FROM ENF0001 E1'
      'JOIN ENF_IT01 ei ON (ei.ENF_REGISTRO = E1.ENF_REGISTRO)'
      'JOIN PRD0000 p2 ON (p2.PRD_REFER = ei.PRD_REFER)'
      
        'LEFT JOIN FOR0000 F1 ON ((F1.FOR_CODIGO = E1.FOR_CODIGO) AND (E1' +
        '.ENF_TIPO_NF_ENTRADA IN ('#39'N'#39', '#39'C'#39')))'
      'LEFT JOIN PCX0000 p ON (p.PCX_CODIGO = E1.PCX_CODIGO)'
      'LEFT JOIN TRP0000 T1 ON ((T1.TRP_CODIGO = E1.FOR_CODIGO) )'
      'WHERE  E1.ENF_EMISSAO BETWEEN '#39'2022-03-01'#39' AND '#39'2022-05-04'#39
      '  AND E1.EMP_CODIGO = '#39'001'#39
      'ORDER BY  E1.ENF_EMISSAO')
    Left = 560
    Top = 539
    object qImpNotaCCPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object qImpNotaCCPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      Size = 100
    end
    object qImpNotaCCENF_QTDE: TFMTBCDField
      FieldName = 'ENF_QTDE'
      Origin = 'ENF_QTDE'
      Precision = 18
      Size = 5
    end
    object qImpNotaCCENF_PRECO: TFMTBCDField
      FieldName = 'ENF_PRECO'
      Origin = 'ENF_PRECO'
      Precision = 18
      Size = 5
    end
    object qImpNotaCCENF_NOTANUMBER: TStringField
      FieldName = 'ENF_NOTANUMBER'
      Origin = 'ENF_NOTANUMBER'
      Size = 10
    end
    object qImpNotaCCENF_EMISSAO: TDateField
      FieldName = 'ENF_EMISSAO'
      Origin = 'ENF_EMISSAO'
    end
    object qImpNotaCCENF_ENTRADA: TDateField
      FieldName = 'ENF_ENTRADA'
      Origin = 'ENF_ENTRADA'
    end
    object qImpNotaCCFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Origin = 'FOR_CODIGO'
      Size = 6
    end
    object qImpNotaCCENF_TOT_PROD: TFMTBCDField
      FieldName = 'ENF_TOT_PROD'
      Origin = 'ENF_TOT_PROD'
      Precision = 18
      Size = 5
    end
    object qImpNotaCCENF_TOT_NOTA: TFMTBCDField
      FieldName = 'ENF_TOT_NOTA'
      Origin = 'ENF_TOT_NOTA'
      Precision = 18
      Size = 5
    end
    object qImpNotaCCFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Origin = 'FOR_RAZAO'
      Size = 70
    end
    object qImpNotaCCFOR_FONE: TStringField
      FieldName = 'FOR_FONE'
      Origin = 'FOR_FONE'
      Size = 11
    end
    object qImpNotaCCPCX_NIVEL: TStringField
      FieldName = 'PCX_NIVEL'
      Origin = 'PCX_NIVEL'
      Size = 15
    end
    object qImpNotaCCPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Origin = 'PCX_DESCRI'
      Size = 25
    end
    object qImpNotaCCOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Origin = 'OPE_NATUREZA'
      Size = 4
    end
  end
  object ppDBImpNotaCC: TppDBPipeline
    DataSource = dsImpNotaCC
    UserName = 'DBImpNotaCC'
    Left = 760
    Top = 539
  end
  object dspForProduto: TDataSetProvider
    DataSet = qForProduto
    Left = 880
    Top = 310
  end
  object cdsForProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspForProduto'
    Left = 880
    Top = 262
    object cdsForProdutoAMX_CODIGO: TStringField
      DisplayLabel = 'Almoxarifado'
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object cdsForProdutoFOR_RAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'FOR_RAZAO'
      Size = 70
    end
    object cdsForProdutoENF_NOTANUMBER: TStringField
      DisplayLabel = 'N'#186' da Nota fiscal'
      FieldName = 'ENF_NOTANUMBER'
      Size = 10
    end
    object cdsForProdutoENF_ENTRADA: TDateField
      DisplayLabel = 'Data da Entrada'
      FieldName = 'ENF_ENTRADA'
    end
    object cdsForProdutoENF_EMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'ENF_EMISSAO'
    end
    object cdsForProdutoPRD_REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRD_REFER'
    end
    object cdsForProdutoPRD_DESCRI: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object cdsForProdutoENF_QTDE: TFMTBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'ENF_QTDE'
      Precision = 18
      Size = 5
    end
    object cdsForProdutoENF_PRECO: TFMTBCDField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      FieldName = 'ENF_PRECO'
      Precision = 18
      Size = 5
    end
    object cdsForProdutoTOTAL: TFMTBCDField
      DisplayLabel = 'Pre'#231'o Total'
      FieldName = 'TOTAL'
      Precision = 18
      Size = 10
    end
    object cdsForProdutoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object dsForProdutoExcel: TDataSource
    DataSet = cdsForProduto
    Left = 880
    Top = 214
  end
end
