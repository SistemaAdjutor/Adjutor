object FrmRemessaDescontar: TFrmRemessaDescontar
  Left = 52
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Antecipa'#231#227'o de Receb'#237'veis (Desconto)'
  ClientHeight = 602
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object BitCancelar: TBitBtn
    Left = 859
    Top = 5
    Width = 100
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 5
    Visible = False
    OnClick = BitCancelarClick
  end
  object BitPesquisar: TBitBtn
    Left = 859
    Top = 5
    Width = 100
    Height = 25
    Caption = '&Pesquisar'
    TabOrder = 4
    OnClick = BitPesquisarClick
  end
  object Pan_Dupl: TPanel
    Left = 486
    Top = 536
    Width = 475
    Height = 29
    BevelOuter = bvLowered
    TabOrder = 9
    object Label11: TLabel
      Left = 255
      Top = 8
      Width = 118
      Height = 14
      Caption = 'Limite utilizado duplicata:'
    end
    object Label13: TLabel
      Left = 8
      Top = 8
      Width = 91
      Height = 14
      Caption = 'Limite da duplicata:'
    end
    object lbl_limite_duplicata: TLabel
      Left = 147
      Top = 7
      Width = 21
      Height = 14
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Curr_Util_Dupl: TCurrencyEdit
      Left = 373
      Top = 7
      Width = 84
      Height = 19
      TabStop = False
      AutoSize = False
      BorderStyle = bsNone
      Color = clBtnFace
      Ctl3D = False
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object Pan_Cheq: TPanel
    Left = -8
    Top = 536
    Width = 489
    Height = 29
    BevelOuter = bvLowered
    TabOrder = 10
    object Label12: TLabel
      Left = 8
      Top = 8
      Width = 84
      Height = 14
      Caption = 'Limite do cheque:'
    end
    object lbl_limite_cheque: TLabel
      Left = 146
      Top = 7
      Width = 21
      Height = 14
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 271
      Top = 8
      Width = 111
      Height = 14
      Caption = 'Limite utilizado cheque:'
    end
    object Curr_util_cheq: TCurrencyEdit
      Left = 382
      Top = 7
      Width = 84
      Height = 19
      TabStop = False
      AutoSize = False
      BorderStyle = bsNone
      Color = clBtnFace
      Ctl3D = False
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object GrpGrid: TGroupBox
    Left = 0
    Top = 98
    Width = 961
    Height = 431
    TabOrder = 7
    object DBGrid1: TDBGrid
      Left = 2
      Top = 16
      Width = 957
      Height = 385
      Align = alClient
      Color = 16776176
      DataSource = DsRemessa
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      OnKeyPress = DBGrid1KeyPress
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'SELECAO_IC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = '*'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 19
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FAT_CODIGO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Fatura'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FPC_NUMER'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'n'#186
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 21
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CC_RAZAO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Cliente/Sacado'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 223
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FPC_VLPARC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FAT_DTEMIS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FPC_VENCTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Vencto'
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
          FieldName = 'DIAS_CC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Dias'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAN_APELIDO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Conta'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 149
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DESCTADA_CC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Des'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FPC_DATADESCTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Descto'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 69
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SITUACAO_CC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Sit'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 23
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CC_NUM_CHEQUE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Cheque'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 80
          Visible = True
        end>
    end
    object PanRemessa: TPanel
      Left = 255
      Top = 61
      Width = 442
      Height = 304
      AutoSize = True
      TabOrder = 1
      Visible = False
      object GrpRemessa: TGroupBox
        Left = 1
        Top = 22
        Width = 440
        Height = 35
        Align = alTop
        Color = clBtnFace
        ParentColor = False
        TabOrder = 1
        object LBL_DATA: TLabel
          Left = 25
          Top = 14
          Width = 25
          Height = 14
          Alignment = taRightJustify
          Caption = 'Data:'
        end
        object DataRemessa: TJvDateEdit
          Left = 51
          Top = 11
          Width = 88
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
          OnExit = DataRemessaExit
        end
      end
      object GrpBanco: TGroupBox
        Left = 1
        Top = 97
        Width = 440
        Height = 74
        Align = alTop
        TabOrder = 2
        object Label8: TLabel
          Left = 5
          Top = 8
          Width = 22
          Height = 14
          Caption = 'C'#243'd.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 35
          Top = 8
          Width = 95
          Height = 14
          Caption = 'Descri'#231#227'o da Conta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object CurrTransfBanco: TCurrencyEdit
          Left = 3
          Top = 47
          Width = 31
          Height = 21
          Alignment = taCenter
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0000'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 4
          ParentFont = False
          TabOrder = 0
          OnExit = CurrTransfBancoExit
        end
        object CbxTransfBanco: TComboBox
          Left = 34
          Top = 47
          Width = 399
          Height = 22
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = CbxTransfBancoClick
          OnExit = CbxTransfBancoExit
        end
        object EdtCodBco: TEdit
          Left = 3
          Top = 24
          Width = 31
          Height = 22
          TabStop = False
          Color = 14145495
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object EdtDesConta: TEdit
          Left = 34
          Top = 24
          Width = 399
          Height = 22
          TabStop = False
          Color = 14145495
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
      end
      object GrpCobranca: TGroupBox
        Left = 1
        Top = 171
        Width = 440
        Height = 74
        Align = alTop
        Caption = 'Cobran'#231'a'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object Label5: TLabel
          Left = 9
          Top = 47
          Width = 25
          Height = 14
          Caption = 'Para:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 17
          Top = 24
          Width = 16
          Height = 14
          Caption = 'De:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object CbCobranca: TComboBox
          Left = 34
          Top = 43
          Width = 399
          Height = 22
          Style = csDropDownList
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = CbxCarteiraChange
          Items.Strings = (
            'CARTEIRA'
            'COBRAN'#199'A SIMPLES'
            'COBRAN'#199'A CAUCIONADA'
            'COBRAN'#199'A DESCONTADA'
            'COBRAN'#199'A SEM REGISTRO'
            'COBRAN'#199'A RAPIDA'
            'CUSTODIA DE CHEQUE'
            'CHEQUE DESCONTADO')
        end
        object EdtCobranca: TEdit
          Left = 34
          Top = 20
          Width = 399
          Height = 22
          Color = 14145495
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object PanTitulo: TPanel
        Left = 1
        Top = 1
        Width = 440
        Height = 21
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 'Gerar Remessa'
        Color = clNavy
        Font.Charset = ANSI_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object BitBtn2: TBitBtn
          Left = 418
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
          OnClick = BitFecharClick
        end
      end
      object PanBotao: TPanel
        Left = 1
        Top = 271
        Width = 440
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object BitImprimeEtiq: TBitBtn
          Left = 276
          Top = 4
          Width = 80
          Height = 25
          Caption = '&Confirmar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = False
          OnClick = BitImprimeEtiqClick
        end
        object BitFechar: TBitBtn
          Left = 357
          Top = 4
          Width = 80
          Height = 25
          Caption = 'Cancel&ar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TabStop = False
          OnClick = BitFecharClick
        end
      end
      object PanValor: TPanel
        Left = 1
        Top = 245
        Width = 440
        Height = 26
        Align = alTop
        BevelOuter = bvNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        object lbl_transf: TLabel
          Left = 193
          Top = 6
          Width = 139
          Height = 14
          Alignment = taRightJustify
          Caption = 'Valor Total da Transfer'#234'ncia:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Curr_Total_Transf: TCurrencyEdit
          Left = 334
          Top = 2
          Width = 100
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object FormaPagamento: TGroupBox
        Left = 1
        Top = 57
        Width = 440
        Height = 40
        Align = alTop
        Caption = 'Forma Pagamento'
        TabOrder = 6
        object Sb_FormaPagamento: TSpeedButton
          Left = 410
          Top = 14
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
        object CBFormaPagamento: TComboBoxRw
          Left = 50
          Top = 14
          Width = 335
          Height = 22
          TabOrder = 0
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
        object EdFormaPagamento: TEdit
          Left = 5
          Top = 14
          Width = 43
          Height = 22
          CharCase = ecUpperCase
          Color = clWhite
          MaxLength = 5
          TabOrder = 1
          OnExit = EdFormaPagamentoExit
        end
      end
    end
    object Pan_Totais: TPanel
      Left = 2
      Top = 401
      Width = 957
      Height = 28
      Align = alBottom
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label6: TLabel
        Left = 136
        Top = 7
        Width = 70
        Height = 14
        Caption = 'Total Geral R$:'
      end
      object Label7: TLabel
        Left = 336
        Top = 7
        Width = 103
        Height = 14
        Caption = 'Total Selecionado R$:'
      end
      object Label3: TLabel
        Left = 582
        Top = 7
        Width = 174
        Height = 14
        Caption = 'Qtde Selecionado(s): [                     ]'
      end
      object LBL_QTDE: TLabel
        Left = 712
        Top = 7
        Width = 24
        Height = 14
        Caption = '0000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CurrTotalGeral: TCurrencyEdit
        Left = 224
        Top = 4
        Width = 100
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DisplayFormat = ',0.00;-,0.00'
        ReadOnly = True
        TabOrder = 0
      end
      object CurrTotalSelecionado: TCurrencyEdit
        Left = 464
        Top = 4
        Width = 100
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 14145495
        DisplayFormat = ',0.00;-,0.00'
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  object GrpInforme: TGroupBox
    Left = 470
    Top = 0
    Width = 382
    Height = 100
    Caption = 'Informe o per'#237'odo'
    TabOrder = 3
    object PanPesq: TPanel
      Left = 3
      Top = 21
      Width = 376
      Height = 75
      BevelOuter = bvNone
      TabOrder = 1
      object LblPesq: TLabel
        Left = 4
        Top = 13
        Width = 49
        Height = 14
        Alignment = taRightJustify
        Caption = 'Fatura N'#186':'
      end
      object CurrPesq: TCurrencyEdit
        Left = 54
        Top = 10
        Width = 46
        Height = 21
        Alignment = taCenter
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = CurrPesqEnter
        OnExit = CurrPesqExit
      end
      object CbClientes: TComboBox
        Left = 101
        Top = 10
        Width = 273
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 1
        OnClick = CbClientesClick
        OnExit = CbClientesExit
      end
    end
    object PanData: TPanel
      Left = 3
      Top = 14
      Width = 375
      Height = 83
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 4
        Top = 4
        Width = 54
        Height = 14
        Caption = 'Data Inicial:'
      end
      object Label2: TLabel
        Left = 230
        Top = 4
        Width = 50
        Height = 14
        Caption = 'Data Final:'
      end
      object Label4: TLabel
        Left = 30
        Top = 26
        Width = 31
        Height = 14
        Caption = 'Conta:'
      end
      object Label18: TLabel
        Left = 59
        Top = 44
        Width = 50
        Height = 14
        Caption = 'Cobran'#231'a:'
      end
      object Label14: TLabel
        Left = 244
        Top = 44
        Width = 45
        Height = 14
        Caption = 'Tipo Doc:'
      end
      object CurrBco: TCurrencyEdit
        Left = 61
        Top = 23
        Width = 33
        Height = 21
        Alignment = taCenter
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '0000'
        MaxLength = 4
        TabOrder = 2
        Value = 9999.000000000000000000
        OnExit = CurrBcoExit
      end
      object CbxBco: TComboBox
        Left = 95
        Top = 23
        Width = 276
        Height = 22
        CharCase = ecUpperCase
        ItemIndex = 0
        TabOrder = 3
        Text = 'TODOS OS BANCOS'
        OnClick = CbxBcoClick
        OnExit = CbxBcoExit
        Items.Strings = (
          'TODOS OS BANCOS')
      end
      object CbxCarteira: TComboBox
        Left = 60
        Top = 58
        Width = 183
        Height = 22
        Style = csDropDownList
        CharCase = ecUpperCase
        TabOrder = 4
        OnChange = CbxCarteiraChange
        Items.Strings = (
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
        Left = 243
        Top = 58
        Width = 127
        Height = 22
        Style = csDropDownList
        TabOrder = 5
        Items.Strings = (
          'DUPLICATA'
          'BOLETO'
          'RECIBO'
          'CHEQUE'
          'DINHEIRO'
          'OUTROS'
          'CREDITO CONTA')
      end
      object RxDataFinal: TJvDateEdit
        Left = 282
        Top = 1
        Width = 89
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
        ButtonWidth = 20
        PopupColor = clBtnFace
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 1
        OnEnter = RxDataFinalEnter
        OnExit = RxDataFinalExit
      end
      object RxDataInicial: TJvDateEdit
        Left = 61
        Top = 1
        Width = 88
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
        ButtonWidth = 20
        PopupColor = clBtnFace
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 0
        OnEnter = RxDataInicialEnter
        OnExit = RxDataInicialExit
      end
    end
  end
  object GrpFiltro: TGroupBox
    Left = 0
    Top = 0
    Width = 145
    Height = 100
    Caption = 'Filtrar'
    TabOrder = 0
    object Rad_aDescontar: TRadioButton
      Left = 4
      Top = 16
      Width = 117
      Height = 17
      Caption = 'Descontar/Depositar'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = Rad_aDescontarClick
    end
    object Rad_ComDesconto: TRadioButton
      Left = 4
      Top = 48
      Width = 116
      Height = 17
      Caption = 'Desctos conclu'#237'dos'
      TabOrder = 1
      OnClick = Rad_aDescontarClick
    end
    object Rad_NaoConfirmado: TRadioButton
      Left = 4
      Top = 80
      Width = 114
      Height = 17
      Caption = 'Desctos em aberto'
      TabOrder = 2
      OnClick = Rad_aDescontarClick
    end
  end
  object GrpPesq: TGroupBox
    Left = 147
    Top = 0
    Width = 198
    Height = 100
    Caption = 'Pesquisar'
    TabOrder = 1
    object Rad_Emissao: TRadioButton
      Left = 3
      Top = 79
      Width = 86
      Height = 17
      Caption = 'Data Emiss'#227'o'
      TabOrder = 2
      OnClick = Rad_FaturaClick
    end
    object Rad_Descto: TRadioButton
      Left = 99
      Top = 48
      Width = 93
      Height = 17
      Caption = 'Data Desconto'
      TabOrder = 4
      OnClick = Rad_FaturaClick
    end
    object Rad_Fatura: TRadioButton
      Left = 3
      Top = 15
      Width = 57
      Height = 17
      Caption = 'Fatura'
      TabOrder = 0
      OnClick = Rad_FaturaClick
    end
    object Rad_Cliente: TRadioButton
      Left = 3
      Top = 47
      Width = 57
      Height = 17
      Caption = 'Cliente'
      TabOrder = 1
      OnClick = Rad_FaturaClick
    end
    object Rad_Vencto: TRadioButton
      Left = 99
      Top = 15
      Width = 81
      Height = 17
      Caption = 'Data Vencto'
      Checked = True
      TabOrder = 3
      TabStop = True
      OnClick = Rad_FaturaClick
    end
  end
  object Pn_Relatorio: TPanel
    Left = 0
    Top = 567
    Width = 964
    Height = 35
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 8
    object Bit_Gerar: TBitBtn
      Left = 560
      Top = 6
      Width = 132
      Height = 25
      Cursor = crHandPoint
      Caption = 'Gerar Remessa'
      Enabled = False
      NumGlyphs = 2
      TabOrder = 1
      TabStop = False
      OnClick = Bit_GerarClick
    end
    object Bit_Estornar: TBitBtn
      Left = 692
      Top = 6
      Width = 132
      Height = 25
      Cursor = crHandPoint
      Caption = 'Estornar Remessa'
      NumGlyphs = 2
      TabOrder = 2
      TabStop = False
      OnClick = Bit_EstornarClick
    end
    object Bit_TransfBco: TBitBtn
      Left = 428
      Top = 6
      Width = 132
      Height = 25
      Cursor = crHandPoint
      Caption = 'Transf. entre Contas'
      Enabled = False
      NumGlyphs = 2
      TabOrder = 0
      TabStop = False
      OnClick = Bit_TransfBcoClick
    end
    object Bit_Atualizar: TBitBtn
      Left = 824
      Top = 6
      Width = 132
      Height = 25
      Cursor = crHandPoint
      Caption = 'Atualizar &Limite'
      NumGlyphs = 2
      TabOrder = 3
      TabStop = False
      OnClick = Bit_AtualizarClick
    end
    object Bit_Relatorio: TBitBtn
      Left = 296
      Top = 6
      Width = 132
      Height = 25
      Caption = 'Relat'#243'rios'
      TabOrder = 4
      OnClick = Bit_RelatorioClick
    end
  end
  object GrpGerar: TGroupBox
    Left = 347
    Top = 0
    Width = 120
    Height = 100
    Caption = 'Gerar'
    TabOrder = 2
    object Rad_Remessa: TRadioButton
      Left = 4
      Top = 15
      Width = 65
      Height = 17
      Caption = 'Remessa'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = Rad_RemessaClick
    end
    object Rad_Transf: TRadioButton
      Left = 4
      Top = 47
      Width = 85
      Height = 17
      Caption = 'Transfer'#234'ncia'
      TabOrder = 1
      OnClick = Rad_RemessaClick
    end
    object Rad_Estorno: TRadioButton
      Left = 4
      Top = 79
      Width = 57
      Height = 17
      Caption = 'Estorno'
      TabOrder = 2
      OnClick = Rad_RemessaClick
    end
  end
  object BitSair: TBitBtn
    Left = 859
    Top = 30
    Width = 100
    Height = 25
    Caption = '&Sair'
    TabOrder = 6
    OnClick = BitSairClick
  end
  object SqlCdsCliente: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select c1.cli_codigo,c1.cli_razao from CLI0000 c1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select c1.cli_codigo,c1.cli_razao from CLI0000 c1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 600
    Top = 154
    object SqlCdsClienteCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsClienteCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
  end
  object SqlCdsRemessa: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'F2.FAT_REGISTRO,'#13#10'F2.FAT_CODIGO,'#13#10'F2.FPC_NUMER,'#13#10'F2.CLI_' +
      'CODIGO,'#13#10'C1.CLI_RAZAO,'#13#10'F2.FPC_VLPARC,'#13#10'F2.FPC_NUM_CHEQUE,'#13#10'F2.F' +
      'PC_NUM_CHEQUE_DV,'#13#10'F1.FAT_DTEMIS,'#13#10'F2.FPC_SITPAG,'#13#10'F2.FPC_VENCTO' +
      ','#13#10'F2.FPC_PAGTO,'#13#10'F2.BAN_CODIGO,'#13#10'B1.BAN_APELIDO,'#13#10'B1.EMP_CODIGO' +
      ','#13#10'F2.FPC_DESCONTADO,'#13#10'F2.FPC_DATADESCTO,'#13#10'F2.FPC_CONFIRMADESCTO' +
      ','#13#10'F2.FPC_CONFIRMADEVOLUCAO,'#13#10'F2.PAG_CODIGO,'#13#10'F2.FPC_TIPODOC,'#13#10'F' +
      '2.FPC_EXCLUSAO,'#13#10'F2.FPC_JUROS_DESCTO,'#13#10'F2.FPC_SACADO_CHEQUE'#13#10'fro' +
      'm FAT_PC01 F2'#13#10'LEFT JOIN FAT0000 F1 ON (F2.FAT_CODIGO = F1.FAT_C' +
      'ODIGO) AND (F2.EMP_CODIGO = F1.EMP_CODIGO)'#13#10'LEFT JOIN CLI0000 C1' +
      ' ON (F2.CLI_CODIGO = C1.CLI_CODIGO)'#13#10'LEFT JOIN BAN0000 B1 ON (F2' +
      '.BAN_CODIGO = B1.BAN_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsRemessaCalcFields
    CommandText = 
      'Select'#13#10'F2.FAT_REGISTRO,'#13#10'F2.FAT_CODIGO,'#13#10'F2.FPC_NUMER,'#13#10'F2.CLI_' +
      'CODIGO,'#13#10'C1.CLI_RAZAO,'#13#10'F2.FPC_VLPARC,'#13#10'F2.FPC_NUM_CHEQUE,'#13#10'F2.F' +
      'PC_NUM_CHEQUE_DV,'#13#10'F1.FAT_DTEMIS,'#13#10'F2.FPC_SITPAG,'#13#10'F2.FPC_VENCTO' +
      ','#13#10'F2.FPC_PAGTO,'#13#10'F2.BAN_CODIGO,'#13#10'B1.BAN_APELIDO,'#13#10'B1.EMP_CODIGO' +
      ','#13#10'F2.FPC_DESCONTADO,'#13#10'F2.FPC_DATADESCTO,'#13#10'F2.FPC_CONFIRMADESCTO' +
      ','#13#10'F2.FPC_CONFIRMADEVOLUCAO,'#13#10'F2.PAG_CODIGO,'#13#10'F2.FPC_TIPODOC,'#13#10'F' +
      '2.FPC_EXCLUSAO,'#13#10'F2.FPC_JUROS_DESCTO,'#13#10'F2.FPC_SACADO_CHEQUE'#13#10'fro' +
      'm FAT_PC01 F2'#13#10'LEFT JOIN FAT0000 F1 ON (F2.FAT_CODIGO = F1.FAT_C' +
      'ODIGO) AND (F2.EMP_CODIGO = F1.EMP_CODIGO)'#13#10'LEFT JOIN CLI0000 C1' +
      ' ON (F2.CLI_CODIGO = C1.CLI_CODIGO)'#13#10'LEFT JOIN BAN0000 B1 ON (F2' +
      '.BAN_CODIGO = B1.BAN_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 160
    Top = 226
    object SqlCdsRemessaFAT_REGISTRO: TIntegerField
      FieldName = 'FAT_REGISTRO'
      Required = True
    end
    object SqlCdsRemessaFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsRemessaFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object SqlCdsRemessaCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsRemessaCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object SqlCdsRemessaFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsRemessaFAT_DTEMIS: TSQLTimeStampField
      FieldName = 'FAT_DTEMIS'
    end
    object SqlCdsRemessaFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object SqlCdsRemessaFPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
    end
    object SqlCdsRemessaBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object SqlCdsRemessaBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
    object SqlCdsRemessaFPC_DESCONTADO: TStringField
      FieldName = 'FPC_DESCONTADO'
      Size = 1
    end
    object SqlCdsRemessaFPC_DATADESCTO: TDateField
      FieldName = 'FPC_DATADESCTO'
    end
    object SqlCdsRemessaFPC_CONFIRMADESCTO: TStringField
      FieldName = 'FPC_CONFIRMADESCTO'
      Size = 1
    end
    object SqlCdsRemessaFPC_CONFIRMADEVOLUCAO: TStringField
      FieldName = 'FPC_CONFIRMADEVOLUCAO'
      Size = 1
    end
    object SqlCdsRemessaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsRemessaFPC_SITPAG: TStringField
      FieldName = 'FPC_SITPAG'
      Size = 1
    end
    object SqlCdsRemessaPAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Size = 5
    end
    object SqlCdsRemessaFPC_JUROS_DESCTO: TFMTBCDField
      FieldName = 'FPC_JUROS_DESCTO'
      Precision = 15
    end
    object SqlCdsRemessaFPC_TIPODOC: TStringField
      FieldName = 'FPC_TIPODOC'
      Size = 2
    end
    object SqlCdsRemessaCLI_RAZAO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLI_RAZAO_CC'
      Calculated = True
    end
    object SqlCdsRemessaDESCTADA_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'DESCTADA_CC'
      Size = 3
      Calculated = True
    end
    object SqlCdsRemessaSITUACAO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'SITUACAO_CC'
      Size = 3
      Calculated = True
    end
    object SqlCdsRemessaSELECAO_IC: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'SELECAO_IC'
      OnGetText = SqlCdsRemessaSELECAO_ICGetText
    end
    object SqlCdsRemessaNUM_FATURA_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'NUM_FATURA_CC'
      Size = 9
      Calculated = True
    end
    object SqlCdsRemessaCONTA_BANCO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'CONTA_BANCO_CC'
      Size = 32
      Calculated = True
    end
    object SqlCdsRemessaDIAS_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'DIAS_CC'
      DisplayFormat = '000'
      Calculated = True
    end
    object SqlCdsRemessaTipoDoc_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'TipoDoc_CC'
      Size = 14
      Calculated = True
    end
    object SqlCdsRemessaCC_RAZAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CC_RAZAO'
      Size = 50
      Calculated = True
    end
    object SqlCdsRemessaFPC_EXCLUSAO: TStringField
      FieldName = 'FPC_EXCLUSAO'
      Size = 1
    end
    object SqlCdsRemessaFPC_SACADO_CHEQUE: TStringField
      FieldName = 'FPC_SACADO_CHEQUE'
      Size = 55
    end
    object SqlCdsRemessaFPC_NUM_CHEQUE: TStringField
      FieldName = 'FPC_NUM_CHEQUE'
      Size = 10
    end
    object SqlCdsRemessaFPC_NUM_CHEQUE_DV: TStringField
      FieldName = 'FPC_NUM_CHEQUE_DV'
      Size = 1
    end
    object SqlCdsRemessaCC_NUM_CHEQUE: TStringField
      FieldKind = fkCalculated
      FieldName = 'CC_NUM_CHEQUE'
      Size = 12
      Calculated = True
    end
  end
  object DsRemessa: TDataSource
    DataSet = SqlCdsRemessa
    Left = 189
    Top = 226
  end
  object ImageList1: TImageList
    Height = 15
    Left = 218
    Top = 226
    Bitmap = {
      494C010103000500040010000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000000F0000000100200000000000000F
      000000000000000000000000000000000000E7EFF700E7EFF700E7EFF700E7EF
      F700E7EFF700E7EFF700E7EFF700E7EFF700E7EFF700E7EFF700E7EFF700E7EF
      F700E7EFF700E7EFF700E7EFF700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400848484000000
      000000000000000000000000000000000000000000000000000000FF00000084
      0000008400008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      8400000084008484840084848400000000000000FF0000000000848484008484
      8400000000000000000000000000000000000000000000000000008400000084
      0000008400000084000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      8400000084000000000084848400848484000000840000008400000000008484
      8400000000000000000000000000000000000000000000000000008400000084
      0000008400000084000000840000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      FF00000084000000840000000000000084000000840000008400000084000000
      0000000000000000000000000000000000000000000000000000008400000084
      00000084000000FF000000840000008400008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000FF000000840000008400000084000000840000008400000000000000
      0000000000000000000000000000000000000000000000000000008400000084
      0000840000000000000000FF0000008400000084000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000FF0000008400000084000000840084848400848484000000
      000000000000000000000000000000000000000000000000000000FF00000084
      000084000000000000000000000000FF00000084000000840000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000FF0000008400000084000000840000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000840000008400008400
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000008400000084000000FF000000840000008400000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000008400000084
      0000840000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000008484
      84000000FF000000840000000000848484000000FF0000008400000084000000
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000084
      0000008400008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000008400000084008484840000000000000000000000FF00000084000000
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000008400008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000FF0000000000000000000000000000000000000000000000FF000000
      8400C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300636B7300636B7300636B
      7300636B7300636B7300636B7300636B7300636B7300636B7300636B7300636B
      7300636B7300636B7300636B7300FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000400000000F0000000100010000000000780000000000000000000000
      000000000000000000000000FFFFFF000000FFFFFFFF00000000FFFFE7FF0000
      0000F39FC3FF00000000E10FC1FF00000000E00FC0FF00000000E01FC07F0000
      0000F03FC43F00000000F81FC61F00000000F80FFF0700000000F807FF830000
      0000E007FFC300000000F187FFE300000000F7C7FFFF00000000FFFFFFFF0000
      0000FFFFFFFF000000000000000000000000000000000000000000000000}
  end
  object PopupMenu1: TPopupMenu
    Left = 247
    Top = 226
    object SelecionarTodos1: TMenuItem
      Caption = 'Marcar &Todos'
      OnClick = SelecionarTodos1Click
    end
    object DesmarcarTodos1: TMenuItem
      Caption = '&Desmarcar Todos'
      OnClick = DesmarcarTodos1Click
    end
  end
  object SqlCdsBco: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select '#13#10'B1.EMP_CODIGO,'#13#10'B1.BAN_CODIGO,'#13#10'B1.BAN_APELIDO, '#13#10'B1.BA' +
      'N_LIMITE_DESCTOCHEQ,'#13#10'B1.BAN_LIMITE_DESCTODUPL,'#13#10'B1.BAN_LIMITE_U' +
      'TILIZADO_CHEQ,'#13#10'B1.BAN_LIMITE_UTILIZADO_DUPL,'#13#10'B1.BAN_JUROS_DESC' +
      'TOCHEQ,'#13#10'B1.BAN_JUROS_DESCTODUPL'#13#10'from BAN0000 B1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select '#13#10'B1.EMP_CODIGO,'#13#10'B1.BAN_CODIGO,'#13#10'B1.BAN_APELIDO, '#13#10'B1.BA' +
      'N_LIMITE_DESCTOCHEQ,'#13#10'B1.BAN_LIMITE_DESCTODUPL,'#13#10'B1.BAN_LIMITE_U' +
      'TILIZADO_CHEQ,'#13#10'B1.BAN_LIMITE_UTILIZADO_DUPL,'#13#10'B1.BAN_JUROS_DESC' +
      'TOCHEQ,'#13#10'B1.BAN_JUROS_DESCTODUPL'#13#10'from BAN0000 B1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 629
    Top = 154
    object SqlCdsBcoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsBcoBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsBcoBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
    object SqlCdsBcoBAN_LIMITE_DESCTOCHEQ: TFMTBCDField
      FieldName = 'BAN_LIMITE_DESCTOCHEQ'
      Precision = 15
    end
    object SqlCdsBcoBAN_LIMITE_DESCTODUPL: TFMTBCDField
      FieldName = 'BAN_LIMITE_DESCTODUPL'
      Precision = 15
    end
    object SqlCdsBcoBAN_LIMITE_UTILIZADO_CHEQ: TFMTBCDField
      FieldName = 'BAN_LIMITE_UTILIZADO_CHEQ'
      Precision = 15
    end
    object SqlCdsBcoBAN_LIMITE_UTILIZADO_DUPL: TFMTBCDField
      FieldName = 'BAN_LIMITE_UTILIZADO_DUPL'
      Precision = 15
    end
    object SqlCdsBcoBAN_JUROS_DESCTOCHEQ: TFMTBCDField
      FieldName = 'BAN_JUROS_DESCTOCHEQ'
      Precision = 15
    end
    object SqlCdsBcoBAN_JUROS_DESCTODUPL: TFMTBCDField
      FieldName = 'BAN_JUROS_DESCTODUPL'
      Precision = 15
    end
  end
  object SqlCdsTransfBco: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'Select B1.BAN_CODIGO,B1.BAN_APELIDO from BAN0000 B1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'Select B1.BAN_CODIGO,B1.BAN_APELIDO from BAN0000 B1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 504
    Top = 200
    object SqlCdsTransfBcoBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsTransfBcoBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
  end
end
