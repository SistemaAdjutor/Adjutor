object FormOrdServCentro: TFormOrdServCentro
  Left = 345
  Top = 245
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Centro de Produ'#231#227'o'
  ClientHeight = 544
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Grp_filtra: TGroupBox
    Left = 314
    Top = 0
    Width = 375
    Height = 49
    Caption = 'Grp_filtra'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Edt_Nome: TEdit
      Left = 4
      Top = 20
      Width = 365
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Edt_NomeClick
      OnEnter = Edt_NomeEnter
      OnExit = Edt_NomeExit
      OnKeyPress = Edt_NomeKeyPress
    end
  end
  object BitCancelar: TBitBtn
    Left = 693
    Top = 25
    Width = 100
    Height = 21
    Caption = '&Cancelar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitCancelarClick
  end
  object BitPesquisar: TBitBtn
    Left = 693
    Top = 4
    Width = 100
    Height = 21
    Caption = '&Pesquisar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitPesquisarClick
  end
  object Grp_Pesquisa: TGroupBox
    Left = 161
    Top = 0
    Width = 152
    Height = 49
    Caption = 'Pesquisa'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object Rd_OS: TRadioButton
      Left = 8
      Top = 13
      Width = 65
      Height = 17
      Caption = '&O.P.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Rd_OSClick
    end
    object Rd_Pedido: TRadioButton
      Left = 8
      Top = 29
      Width = 55
      Height = 18
      Caption = 'Pe&dido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Rd_OSClick
    end
    object Rd_Refer: TRadioButton
      Left = 71
      Top = 13
      Width = 76
      Height = 17
      Caption = '&Refer'#234'ncia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Rd_OSClick
    end
    object Rd_Descricao: TRadioButton
      Left = 71
      Top = 29
      Width = 71
      Height = 18
      Caption = 'De&scri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Rd_OSClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 508
    Width = 208
    Height = 35
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 10841658
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    object Bit_Celulas: TBitBtn
      Left = 4
      Top = 5
      Width = 100
      Height = 25
      Caption = '<F2> &C'#233'lulas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = Bit_CelulasClick
    end
    object Bit_Processo: TBitBtn
      Left = 104
      Top = 5
      Width = 100
      Height = 25
      Caption = '<F&3> Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = Bit_ProcessoClick
    end
  end
  object Panel2: TPanel
    Left = 316
    Top = 508
    Width = 474
    Height = 35
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 10841658
    TabOrder = 7
    object Bit_GeraOS: TBitBtn
      Left = 289
      Top = 5
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = 'Abre Ordem de Produ'#231#227'o'
      Caption = '&Abrir O.P.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = Bit_GeraOSClick
    end
    object Bit_Imprimir: TBitBtn
      Left = 4
      Top = 5
      Width = 105
      Height = 25
      Caption = '&Imprime O.P.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = Bit_ImprimirClick
    end
    object BitEstornar: TBitBtn
      Left = 109
      Top = 5
      Width = 90
      Height = 25
      Caption = '&Estornar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = BitEstornarClick
    end
    object Bit_concluir: TBitBtn
      Left = 199
      Top = 5
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = 'Informa o conclus'#227'o da O.P.'
      Cancel = True
      Caption = '&Concluir O.P.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = Bit_concluirClick
    end
    object Bit_Sair: TBitBtn
      Left = 379
      Top = 5
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        CA010000424DCA01000000000000760000002800000026000000110000000100
        04000000000054010000CE0E0000D80E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888FFFFFFFFFFFFFFFFFFF008888888888880000078FFFFFFFFFFFFFFFFF
        FF00833333333000BB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
        FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
        00000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFF
        FFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBB
        B003008FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFF
        FF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
        FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
        00000BBBBB03078FFFFFFFFFFFFFFFFFFF00833333333000BB03078FFFFFFFFF
        FFFFFFFFFF008888888888880000088FFFFFFFFFFFFFFFFFFF00888888888888
        8888888FFFFFFFFFFFFFFFFFFF00}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = Bit_SairClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 161
    Height = 49
    Caption = 'Filtrar as O.P.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Rad_Concluida: TRadioButton
      Left = 5
      Top = 29
      Width = 75
      Height = 17
      Caption = 'Co&nclu'#237'das'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Rad_TodasClick
    end
    object Rad_Aberta: TRadioButton
      Left = 86
      Top = 13
      Width = 55
      Height = 17
      Caption = '&Abertas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Rad_TodasClick
    end
    object Rad_Estornada: TRadioButton
      Left = 86
      Top = 29
      Width = 73
      Height = 18
      Caption = '&Estornadas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Rad_TodasClick
    end
    object Rad_Todas: TRadioButton
      Left = 5
      Top = 13
      Width = 52
      Height = 17
      Caption = '&Todas'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = Rad_TodasClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 60
    Width = 790
    Height = 437
    ActivePage = TabSheet1
    TabOrder = 5
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = '&Ordem de Produ'#231#227'o'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DbGridCelulas: TDBGrid
        Left = 0
        Top = 313
        Width = 781
        Height = 94
        Color = 16776176
        DataSource = DsCelOP
        FixedColor = 12681984
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clMaroon
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CEL_CODIGO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEL_NOME'
            Title.Alignment = taCenter
            Title.Caption = 'C'#233'lula'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 274
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEM_DTENTROU'
            Title.Alignment = taCenter
            Title.Caption = 'Entrada'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEM_TUPTRAB'
            Title.Alignment = taCenter
            Title.Caption = 'TUP'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEM_DTCONCLUIU'
            Title.Alignment = taCenter
            Title.Caption = 'Conclus'#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEM_TRABALHO'
            Title.Alignment = taCenter
            Title.Caption = 'Servi'#231'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 233
            Visible = True
          end>
      end
      object DbGridOS: TDBGrid
        Left = 0
        Top = 2
        Width = 781
        Height = 308
        Hint = 'Duplo clique : Detalhes'
        Color = 16776176
        DataSource = DsOpGrade
        FixedColor = 12681984
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DbGridOSDrawColumnCell
        OnDblClick = DbGridOSDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'OSV_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'O.P.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSV_EMISSAO'
            Title.Alignment = taCenter
            Title.Caption = 'Emiss'#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_REFER'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_DESCRI'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSV_QTDE'
            Title.Alignment = taCenter
            Title.Caption = 'Quant.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'Pedido'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FTC_TUP'
            Title.Alignment = taCenter
            Title.Caption = 'TUP'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSV_STATUS_CC'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEL_CODIGO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic]
            Title.Alignment = taCenter
            Title.Caption = 'Cel'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindow
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 29
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CC_IMPRESSO'
            Title.Alignment = taCenter
            Title.Caption = 'Imp'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 25
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Itens da Ordem de Prod&u'#231#227'o'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GrpVar: TGroupBox
        Left = 0
        Top = 33
        Width = 785
        Height = 72
        TabOrder = 1
        object Bevel5: TBevel
          Left = 0
          Top = 44
          Width = 784
          Height = 2
        end
        object Bevel6: TBevel
          Left = 77
          Top = 7
          Width = 2
          Height = 63
        end
        object Label20: TLabel
          Left = 23
          Top = 25
          Width = 51
          Height = 13
          Caption = 'Varia'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 8
          Top = 50
          Width = 66
          Height = 13
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel7: TBevel
          Left = 713
          Top = 6
          Width = 2
          Height = 64
        end
        object Label22: TLabel
          Left = 718
          Top = 25
          Width = 30
          Height = 13
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 80
          Top = 8
          Width = 31
          Height = 13
          Caption = 'Var 1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 159
          Top = 8
          Width = 31
          Height = 13
          Caption = 'Var 2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 238
          Top = 8
          Width = 31
          Height = 13
          Caption = 'Var 3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 317
          Top = 8
          Width = 31
          Height = 13
          Caption = 'Var 4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label27: TLabel
          Left = 396
          Top = 8
          Width = 31
          Height = 13
          Caption = 'Var 5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 475
          Top = 8
          Width = 31
          Height = 13
          Caption = 'Var 6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label29: TLabel
          Left = 554
          Top = 8
          Width = 31
          Height = 13
          Caption = 'Var 7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label30: TLabel
          Left = 633
          Top = 8
          Width = 31
          Height = 13
          Caption = 'Var 8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CurrTotal: TCurrencyEdit
          Left = 716
          Top = 47
          Width = 65
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object CurrMod1: TCurrencyEdit
          Left = 80
          Top = 47
          Width = 78
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object CurrMod2: TCurrencyEdit
          Left = 159
          Top = 47
          Width = 78
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object CurrMod3: TCurrencyEdit
          Left = 238
          Top = 47
          Width = 78
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object CurrMod4: TCurrencyEdit
          Left = 317
          Top = 47
          Width = 78
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object CurrMod5: TCurrencyEdit
          Left = 396
          Top = 47
          Width = 78
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
        object CurrMod6: TCurrencyEdit
          Left = 475
          Top = 47
          Width = 78
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
        end
        object CurrMod7: TCurrencyEdit
          Left = 554
          Top = 47
          Width = 78
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
        end
        object CurrMod8: TCurrencyEdit
          Left = 633
          Top = 47
          Width = 78
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
        end
        object DBEdit1: TDBEdit
          Left = 80
          Top = 21
          Width = 78
          Height = 21
          TabStop = False
          AutoSelect = False
          Color = 16776176
          Ctl3D = True
          DataField = 'PRD_DCVAR1'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 159
          Top = 21
          Width = 78
          Height = 21
          TabStop = False
          AutoSelect = False
          Color = 16776176
          Ctl3D = True
          DataField = 'PRD_DCVAR2'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 238
          Top = 21
          Width = 78
          Height = 21
          TabStop = False
          AutoSelect = False
          Color = 16776176
          Ctl3D = True
          DataField = 'PRD_DCVAR3'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 317
          Top = 21
          Width = 78
          Height = 21
          TabStop = False
          AutoSelect = False
          Color = 16776176
          Ctl3D = True
          DataField = 'PRD_DCVAR4'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 396
          Top = 21
          Width = 78
          Height = 21
          TabStop = False
          AutoSelect = False
          Color = 16776176
          Ctl3D = True
          DataField = 'PRD_DCVAR5'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 475
          Top = 21
          Width = 78
          Height = 21
          TabStop = False
          AutoSelect = False
          Color = 16776176
          Ctl3D = True
          DataField = 'PRD_DCVAR6'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 554
          Top = 21
          Width = 78
          Height = 21
          TabStop = False
          AutoSelect = False
          Color = 16776176
          Ctl3D = True
          DataField = 'PRD_DCVAR7'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 633
          Top = 21
          Width = 78
          Height = 21
          TabStop = False
          AutoSelect = False
          Color = 16776176
          Ctl3D = True
          DataField = 'PRD_DCVAR8'
          DataSource = DsProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 7
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 1
        Width = 785
        Height = 35
        TabOrder = 0
        object Label16: TLabel
          Left = 6
          Top = 12
          Width = 24
          Height = 13
          Caption = 'O.P.:'
        end
        object Label17: TLabel
          Left = 80
          Top = 12
          Width = 42
          Height = 13
          Caption = 'Emiss'#227'o:'
        end
        object Label18: TLabel
          Left = 191
          Top = 12
          Width = 55
          Height = 13
          Caption = 'Refer'#234'ncia:'
        end
        object Label19: TLabel
          Left = 679
          Top = 12
          Width = 26
          Height = 13
          Caption = 'Qtde:'
        end
        object EdtOp: TEdit
          Left = 32
          Top = 9
          Width = 43
          Height = 21
          TabStop = False
          Color = 14145495
          ReadOnly = True
          TabOrder = 0
        end
        object EdtEmissao: TEdit
          Left = 123
          Top = 9
          Width = 65
          Height = 21
          TabStop = False
          Color = 14145495
          ReadOnly = True
          TabOrder = 1
        end
        object EdtRefer: TEdit
          Left = 247
          Top = 9
          Width = 76
          Height = 21
          TabStop = False
          Color = 14145495
          ReadOnly = True
          TabOrder = 2
        end
        object EdtDescri: TEdit
          Left = 324
          Top = 9
          Width = 352
          Height = 21
          TabStop = False
          Color = 14145495
          ReadOnly = True
          TabOrder = 3
        end
        object CurrQtde: TCurrencyEdit
          Left = 706
          Top = 9
          Width = 75
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
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 108
        Width = 785
        Height = 291
        TabStop = False
        Color = 16776176
        DataSource = DsItemOP
        FixedColor = 12681984
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'PRD_REFER_ITENS'
            Title.Alignment = taCenter
            Title.Caption = 'Materia'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_DESCRI'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o da Materia-Prima'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 354
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSI_UC'
            Title.Alignment = taCenter
            Title.Caption = 'U.C.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_UND'
            Title.Alignment = taCenter
            Title.Caption = 'UND'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 36
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE_CC'
            Title.Alignment = taCenter
            Title.Caption = 'Qtde'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSI_QTDE1'
            Title.Alignment = taCenter
            Title.Caption = 'Var 1'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSI_QTDE2'
            Title.Alignment = taCenter
            Title.Caption = 'Var 2'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSI_QTDE3'
            Title.Alignment = taCenter
            Title.Caption = 'Var 3'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSI_QTDE4'
            Title.Alignment = taCenter
            Title.Caption = 'Var 4'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSI_QTDE5'
            Title.Alignment = taCenter
            Title.Caption = 'Var 5'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSI_QTDE6'
            Title.Alignment = taCenter
            Title.Caption = 'Var 6'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSI_QTDE7'
            Title.Alignment = taCenter
            Title.Caption = 'Var 7'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSI_QTDE8'
            Title.Alignment = taCenter
            Title.Caption = 'Var 8'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTALUC_CC'
            Title.Alignment = taCenter
            Title.Caption = 'Total U.C.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 85
            Visible = True
          end>
      end
    end
  end
  object SqlCdsOPImp: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'O1.OSV_CODIGO,'#13#10'O1.OSV_EMISSAO,'#13#10'O1.PRD_REFER,'#13#10'O1.OSV_Q' +
      'TDE,'#13#10'O1.OSV_QTDE1,'#13#10'O1.OSV_QTDE2,'#13#10'O1.OSV_QTDE3,'#13#10'O1.OSV_QTDE4,' +
      #13#10'O1.OSV_QTDE5,'#13#10'O1.OSV_QTDE6,'#13#10'O1.OSV_QTDE7,'#13#10'O1.OSV_QTDE8,'#13#10'O1' +
      '.OSV_OBS1,'#13#10'O1.OSV_OBS2,'#13#10'O1.OSV_OBS3,'#13#10'O1.OSV_OBS4,'#13#10'O1.OSV_OBS' +
      '5,'#13#10'O1.OSV_OBS6,'#13#10'O1.OSV_OBS7,'#13#10'O1.OSV_IMPRESSO,'#13#10'O1.PED_CODIGO,' +
      #13#10'O1.FTC_TUP,'#13#10'O1.OSV_PRECOUNIT,'#13#10'O1.CEL_CODIGO,'#13#10'O1.OSV_STATUS,' +
      #13#10'P1.PRD_DESCRI,'#13#10'P1.PGR_CODIGO,'#13#10'P1.PRD_DCVAR1,'#13#10'P1.PRD_DCVAR2,' +
      #13#10'P1.PRD_DCVAR3,'#13#10'P1.PRD_DCVAR4,'#13#10'P1.PRD_DCVAR5,'#13#10'P1.PRD_DCVAR6,' +
      #13#10'P1.PRD_DCVAR7,'#13#10'P1.PRD_DCVAR8,'#13#10'E1.CLI_CODIGO,'#13#10'E1.PED_DTSAIDA' +
      ','#13#10'C1.CLI_RAZAO,'#13#10'F1.FTC_PROC1,'#13#10'F1.FTC_PROC2,'#13#10'F1.FTC_PROC3,'#13#10'F' +
      '1.FTC_PROC4,'#13#10'F1.FTC_PROC5,'#13#10'F1.FTC_PROC6,'#13#10'F1.FTC_PROC7,'#13#10'F1.FT' +
      'C_PROC8'#13#10'FROM OSV0001 O1'#13#10'     JOIN PRD0000 P1 ON (O1.PRD_REFER ' +
      ' = P1.PRD_REFER)'#13#10'LEFT JOIN PED0000 E1 ON (E1.PED_CODIGO = O1.PE' +
      'D_CODIGO)'#13#10'LEFT JOIN CLI0000 C1 ON (C1.CLI_CODIGO = E1.CLI_CODIG' +
      'O)'#13#10'LEFT JOIN FTC0000 F1 ON (O1.PRD_REFER  = F1.PRD_REFER)'#13#10'WHER' +
      'E O1.OSV_CODIGO = '#39'004768'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    AfterScroll = SqlCdsOPImpAfterScroll
    CommandText = 
      'SELECT'#13#10'O1.OSV_CODIGO,'#13#10'O1.OSV_EMISSAO,'#13#10'O1.PRD_REFER,'#13#10'O1.OSV_Q' +
      'TDE,'#13#10'O1.OSV_QTDE1,'#13#10'O1.OSV_QTDE2,'#13#10'O1.OSV_QTDE3,'#13#10'O1.OSV_QTDE4,' +
      #13#10'O1.OSV_QTDE5,'#13#10'O1.OSV_QTDE6,'#13#10'O1.OSV_QTDE7,'#13#10'O1.OSV_QTDE8,'#13#10'O1' +
      '.OSV_OBS1,'#13#10'O1.OSV_OBS2,'#13#10'O1.OSV_OBS3,'#13#10'O1.OSV_OBS4,'#13#10'O1.OSV_OBS' +
      '5,'#13#10'O1.OSV_OBS6,'#13#10'O1.OSV_OBS7,'#13#10'O1.OSV_IMPRESSO,'#13#10'O1.PED_CODIGO,' +
      #13#10'O1.FTC_TUP,'#13#10'O1.OSV_PRECOUNIT,'#13#10'O1.CEL_CODIGO,'#13#10'O1.OSV_STATUS,' +
      #13#10'P1.PRD_DESCRI,'#13#10'P1.PGR_CODIGO,'#13#10'P1.PRD_DCVAR1,'#13#10'P1.PRD_DCVAR2,' +
      #13#10'P1.PRD_DCVAR3,'#13#10'P1.PRD_DCVAR4,'#13#10'P1.PRD_DCVAR5,'#13#10'P1.PRD_DCVAR6,' +
      #13#10'P1.PRD_DCVAR7,'#13#10'P1.PRD_DCVAR8,'#13#10'E1.CLI_CODIGO,'#13#10'E1.PED_DTSAIDA' +
      ','#13#10'C1.CLI_RAZAO,'#13#10'F1.FTC_PROC1,'#13#10'F1.FTC_PROC2,'#13#10'F1.FTC_PROC3,'#13#10'F' +
      '1.FTC_PROC4,'#13#10'F1.FTC_PROC5,'#13#10'F1.FTC_PROC6,'#13#10'F1.FTC_PROC7,'#13#10'F1.FT' +
      'C_PROC8'#13#10'FROM OSV0001 O1'#13#10'     JOIN PRD0000 P1 ON (O1.PRD_REFER ' +
      ' = P1.PRD_REFER)'#13#10'LEFT JOIN PED0000 E1 ON (E1.PED_CODIGO = O1.PE' +
      'D_CODIGO)'#13#10'LEFT JOIN CLI0000 C1 ON (C1.CLI_CODIGO = E1.CLI_CODIG' +
      'O)'#13#10'LEFT JOIN FTC0000 F1 ON (O1.PRD_REFER  = F1.PRD_REFER)'#13#10'WHER' +
      'E O1.OSV_CODIGO = '#39'004768'#39
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 232
    Top = 274
    object SqlCdsOPImpOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsOPImpOSV_EMISSAO: TSQLTimeStampField
      FieldName = 'OSV_EMISSAO'
    end
    object SqlCdsOPImpPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Required = True
      Size = 11
    end
    object SqlCdsOPImpOSV_QTDE: TFMTBCDField
      FieldName = 'OSV_QTDE'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsOPImpOSV_QTDE1: TFMTBCDField
      FieldName = 'OSV_QTDE1'
      Precision = 15
    end
    object SqlCdsOPImpOSV_QTDE2: TFMTBCDField
      FieldName = 'OSV_QTDE2'
      Precision = 15
    end
    object SqlCdsOPImpOSV_QTDE3: TFMTBCDField
      FieldName = 'OSV_QTDE3'
      Precision = 15
    end
    object SqlCdsOPImpOSV_QTDE4: TFMTBCDField
      FieldName = 'OSV_QTDE4'
      Precision = 15
    end
    object SqlCdsOPImpOSV_QTDE5: TFMTBCDField
      FieldName = 'OSV_QTDE5'
      Precision = 15
    end
    object SqlCdsOPImpOSV_QTDE6: TFMTBCDField
      FieldName = 'OSV_QTDE6'
      Precision = 15
    end
    object SqlCdsOPImpOSV_QTDE7: TFMTBCDField
      FieldName = 'OSV_QTDE7'
      Precision = 15
    end
    object SqlCdsOPImpOSV_QTDE8: TFMTBCDField
      FieldName = 'OSV_QTDE8'
      Precision = 15
    end
    object SqlCdsOPImpOSV_OBS1: TStringField
      FieldName = 'OSV_OBS1'
      Size = 100
    end
    object SqlCdsOPImpOSV_OBS2: TStringField
      FieldName = 'OSV_OBS2'
      Size = 100
    end
    object SqlCdsOPImpOSV_OBS3: TStringField
      FieldName = 'OSV_OBS3'
      Size = 100
    end
    object SqlCdsOPImpOSV_OBS4: TStringField
      FieldName = 'OSV_OBS4'
      Size = 100
    end
    object SqlCdsOPImpOSV_OBS5: TStringField
      FieldName = 'OSV_OBS5'
      Size = 100
    end
    object SqlCdsOPImpOSV_OBS6: TStringField
      FieldName = 'OSV_OBS6'
      Size = 100
    end
    object SqlCdsOPImpOSV_OBS7: TStringField
      FieldName = 'OSV_OBS7'
      Size = 100
    end
    object SqlCdsOPImpPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object SqlCdsOPImpFTC_TUP: TFMTBCDField
      FieldName = 'FTC_TUP'
      Precision = 15
    end
    object SqlCdsOPImpOSV_PRECOUNIT: TFMTBCDField
      FieldName = 'OSV_PRECOUNIT'
      Precision = 15
    end
    object SqlCdsOPImpCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Size = 3
    end
    object SqlCdsOPImpOSV_STATUS: TStringField
      FieldName = 'OSV_STATUS'
      Size = 1
    end
    object SqlCdsOPImpPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsOPImpPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object SqlCdsOPImpPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object SqlCdsOPImpPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object SqlCdsOPImpPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object SqlCdsOPImpPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object SqlCdsOPImpPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object SqlCdsOPImpPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object SqlCdsOPImpPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
    object SqlCdsOPImpCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsOPImpPED_DTSAIDA: TSQLTimeStampField
      FieldName = 'PED_DTSAIDA'
    end
    object SqlCdsOPImpCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object SqlCdsOPImpPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
    object SqlCdsOPImpFTC_PROC1: TStringField
      FieldName = 'FTC_PROC1'
      Size = 75
    end
    object SqlCdsOPImpFTC_PROC2: TStringField
      FieldName = 'FTC_PROC2'
      Size = 75
    end
    object SqlCdsOPImpFTC_PROC3: TStringField
      FieldName = 'FTC_PROC3'
      Size = 75
    end
    object SqlCdsOPImpFTC_PROC4: TStringField
      FieldName = 'FTC_PROC4'
      Size = 75
    end
    object SqlCdsOPImpFTC_PROC5: TStringField
      FieldName = 'FTC_PROC5'
      Size = 75
    end
    object SqlCdsOPImpFTC_PROC6: TStringField
      FieldName = 'FTC_PROC6'
      Size = 75
    end
    object SqlCdsOPImpFTC_PROC7: TStringField
      FieldName = 'FTC_PROC7'
      Size = 75
    end
    object SqlCdsOPImpFTC_PROC8: TStringField
      FieldName = 'FTC_PROC8'
      Size = 75
    end
    object SqlCdsOPImpOSV_STATUS_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'OSV_STATUS_CC'
      Calculated = True
    end
    object SqlCdsOPImpOSV_IMPRESSO: TStringField
      FieldName = 'OSV_IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object SqlCdsOPImpCC_IMPRESSO: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'CC_IMPRESSO'
    end
  end
  object DsOP: TDataSource
    DataSet = SqlCdsOPImp
    Left = 264
    Top = 274
  end
  object DsCelOP: TDataSource
    DataSet = SqlcdsCelOp
    Left = 264
    Top = 368
  end
  object SqlcdsCelOp: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'C1.CEL_CODIGO,'#13#10'C2.CEL_NOME,'#13#10'C1.CEM_DTENTROU,'#13#10'C1.CEM_T' +
      'UPTRAB,'#13#10'C1.CEM_DTCONCLUIU,'#13#10'C1.CEM_TRABALHO'#13#10'from CEL_MOV03 C1'#13 +
      #10'LEFT JOIN CEL0000 C2 ON C1.CEL_CODIGO = C2.CEL_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select'#13#10'C1.CEL_CODIGO,'#13#10'C2.CEL_NOME,'#13#10'C1.CEM_DTENTROU,'#13#10'C1.CEM_T' +
      'UPTRAB,'#13#10'C1.CEM_DTCONCLUIU,'#13#10'C1.CEM_TRABALHO'#13#10'from CEL_MOV03 C1'#13 +
      #10'LEFT JOIN CEL0000 C2 ON C1.CEL_CODIGO = C2.CEL_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 232
    Top = 368
    object SqlcdsCelOpCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Size = 3
    end
    object SqlcdsCelOpCEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      Size = 35
    end
    object SqlcdsCelOpCEM_TUPTRAB: TFMTBCDField
      FieldName = 'CEM_TUPTRAB'
      Precision = 15
    end
    object SqlcdsCelOpCEM_TRABALHO: TStringField
      FieldName = 'CEM_TRABALHO'
      Size = 30
    end
    object SqlcdsCelOpCEM_DTENTROU: TDateField
      FieldName = 'CEM_DTENTROU'
    end
    object SqlcdsCelOpCEM_DTCONCLUIU: TDateField
      FieldName = 'CEM_DTCONCLUIU'
    end
  end
  object SqlCdsParam: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select '#13#10'P2.PMT_CELULAPROD, '#13#10'P2.PMT_VARIACOES,'#13#10'P2.PMT_MDL_OP, ' +
      #13#10'P2.PMT_PROCESPROD, '#13#10'P2.PMT_EMPRESACLASSE,'#13#10'P2.PMT_UNFORMULA '#13 +
      #10'from PRMT0001 P2'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select '#13#10'P2.PMT_CELULAPROD, '#13#10'P2.PMT_VARIACOES,'#13#10'P2.PMT_MDL_OP, ' +
      #13#10'P2.PMT_PROCESPROD, '#13#10'P2.PMT_EMPRESACLASSE,'#13#10'P2.PMT_UNFORMULA '#13 +
      #10'from PRMT0001 P2'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 232
    Top = 244
    object SqlCdsParamPMT_CELULAPROD: TStringField
      FieldName = 'PMT_CELULAPROD'
      Size = 1
    end
    object SqlCdsParamPMT_VARIACOES: TStringField
      FieldName = 'PMT_VARIACOES'
      Size = 1
    end
    object SqlCdsParamPMT_MDL_OP: TStringField
      FieldName = 'PMT_MDL_OP'
      Size = 1
    end
    object SqlCdsParamPMT_PROCESPROD: TStringField
      FieldName = 'PMT_PROCESPROD'
      Size = 1
    end
    object SqlCdsParamPMT_UNFORMULA: TSmallintField
      FieldName = 'PMT_UNFORMULA'
    end
    object SqlCdsParamPMT_EMPRESACLASSE: TStringField
      FieldName = 'PMT_EMPRESACLASSE'
      Size = 1
    end
  end
  object SqlCdsItemOP: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select '#13#10'O2.OSV_CODIGO,'#13#10'O2.PRD_REFER_ITENS,'#13#10'O2.OSI_UC,'#13#10'O2.OSI' +
      '_QTDE1, '#13#10'O2.OSI_QTDE2, '#13#10'O2.OSI_QTDE3, '#13#10'O2.OSI_QTDE4, '#13#10'O2.OSI' +
      '_QTDE5, '#13#10'O2.OSI_QTDE6, '#13#10'O2.OSI_QTDE7, '#13#10'O2.OSI_QTDE8,'#13#10'P2.PRD_' +
      'DESCRI,'#13#10'P2.PRD_UND'#13#10'from OSV_IT02 O2'#13#10'LEFT JOIN PRD0000 P2 ON O' +
      '2.PRD_REFER_ITENS = P2.PRD_REFER'#13#10'ORDER BY P2.PRD_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsItemOPCalcFields
    CommandText = 
      'select '#13#10'O2.OSV_CODIGO,'#13#10'O2.PRD_REFER_ITENS,'#13#10'O2.OSI_UC,'#13#10'O2.OSI' +
      '_QTDE1, '#13#10'O2.OSI_QTDE2, '#13#10'O2.OSI_QTDE3, '#13#10'O2.OSI_QTDE4, '#13#10'O2.OSI' +
      '_QTDE5, '#13#10'O2.OSI_QTDE6, '#13#10'O2.OSI_QTDE7, '#13#10'O2.OSI_QTDE8,'#13#10'P2.PRD_' +
      'DESCRI,'#13#10'P2.PRD_UND'#13#10'from OSV_IT02 O2'#13#10'LEFT JOIN PRD0000 P2 ON O' +
      '2.PRD_REFER_ITENS = P2.PRD_REFER'#13#10'ORDER BY P2.PRD_DESCRI'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 232
    Top = 304
    object SqlCdsItemOPOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Size = 6
    end
    object SqlCdsItemOPPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsItemOPOSI_UC: TFMTBCDField
      FieldName = 'OSI_UC'
      DisplayFormat = '#,####0.000000'
      Precision = 15
    end
    object SqlCdsItemOPOSI_QTDE1: TFMTBCDField
      FieldName = 'OSI_QTDE1'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsItemOPOSI_QTDE2: TFMTBCDField
      FieldName = 'OSI_QTDE2'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsItemOPOSI_QTDE3: TFMTBCDField
      FieldName = 'OSI_QTDE3'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsItemOPOSI_QTDE4: TFMTBCDField
      FieldName = 'OSI_QTDE4'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsItemOPOSI_QTDE5: TFMTBCDField
      FieldName = 'OSI_QTDE5'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsItemOPOSI_QTDE6: TFMTBCDField
      FieldName = 'OSI_QTDE6'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsItemOPOSI_QTDE7: TFMTBCDField
      FieldName = 'OSI_QTDE7'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsItemOPOSI_QTDE8: TFMTBCDField
      FieldName = 'OSI_QTDE8'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsItemOPPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsItemOPPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsItemOPTOTALUC_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TOTALUC_CC'
      DisplayFormat = '#,####0.0000'
      Calculated = True
    end
    object SqlCdsItemOPQTDE8_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE8_CC'
      DisplayFormat = '#,###0.000'
      Calculated = True
    end
    object SqlCdsItemOPQTDE7_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE7_CC'
      DisplayFormat = '#,###0.000'
      Calculated = True
    end
    object SqlCdsItemOPQTDE6_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE6_CC'
      DisplayFormat = '#,###0.000'
      Calculated = True
    end
    object SqlCdsItemOPQTDE5_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE5_CC'
      DisplayFormat = '#,###0.000'
      Calculated = True
    end
    object SqlCdsItemOPQTDE4_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE4_CC'
      DisplayFormat = '#,###0.000'
      Calculated = True
    end
    object SqlCdsItemOPQTDE3_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE3_CC'
      DisplayFormat = '#,###0.000'
      Calculated = True
    end
    object SqlCdsItemOPQTDE2_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE2_CC'
      DisplayFormat = '#,###0.000'
      Calculated = True
    end
    object SqlCdsItemOPQTDE1_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE1_CC'
      DisplayFormat = '#,###0.000'
      Calculated = True
    end
    object SqlCdsItemOPQTDE_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QTDE_CC'
      DisplayFormat = '#,###0.000'
      Calculated = True
    end
  end
  object DsItemOP: TDataSource
    DataSet = SqlCdsItemOP
    Left = 264
    Top = 304
  end
  object SqlCdsProduto: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select '#13#10'P1.PRD_REFER,'#13#10'P1.PRD_DCVAR1,'#13#10'P1.PRD_DCVAR2,'#13#10'P1.PRD_D' +
      'CVAR3,'#13#10'P1.PRD_DCVAR4,'#13#10'P1.PRD_DCVAR5,'#13#10'P1.PRD_DCVAR6,'#13#10'P1.PRD_D' +
      'CVAR7,'#13#10'P1.PRD_DCVAR8'#13#10'from'#13#10'PRD0000 P1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select '#13#10'P1.PRD_REFER,'#13#10'P1.PRD_DCVAR1,'#13#10'P1.PRD_DCVAR2,'#13#10'P1.PRD_D' +
      'CVAR3,'#13#10'P1.PRD_DCVAR4,'#13#10'P1.PRD_DCVAR5,'#13#10'P1.PRD_DCVAR6,'#13#10'P1.PRD_D' +
      'CVAR7,'#13#10'P1.PRD_DCVAR8'#13#10'from'#13#10'PRD0000 P1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 232
    Top = 336
    object SqlCdsProdutoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsProdutoPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
  end
  object DsProduto: TDataSource
    DataSet = SqlCdsProduto
    Left = 264
    Top = 336
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DsItemOP
    UserName = 'DBPipeline2'
    Left = 296
    Top = 304
  end
  object ppRelOSP01: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
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
    Template.FileName = 'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELOSP01.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
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
    Left = 328
    Top = 305
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 29633
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 5821
        mmLeft = 0
        mmTop = 14817
        mmWidth = 22754
        BandType = 0
        LayerName = Foreground
      end
      object LBL_01_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4092
        mmLeft = 265
        mmTop = 0
        mmWidth = 30621
        BandType = 0
        LayerName = Foreground
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 4233
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 9525
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'FOLHA DE PESAGEM (PRODU'#199#195'O)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4092
        mmLeft = 52230
        mmTop = 5027
        mmWidth = 59831
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_EMISSAO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 178859
        mmTop = 5027
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'PRODUTO: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 10319
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 17992
        mmTop = 10319
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 37306
        mmTop = 10319
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Essencia(s)=>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 1852
        mmTop = 15875
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Volume:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 125148
        mmTop = 10319
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ordem N'#186'.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4163
        mmLeft = 164042
        mmTop = 10319
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 181769
        mmTop = 10319
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 138113
        mmTop = 10319
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Lt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 160073
        mmTop = 10319
        mmWidth = 2963
        BandType = 0
        LayerName = Foreground
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 5821
        mmLeft = 22490
        mmTop = 14817
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 5821
        mmLeft = 44186
        mmTop = 14817
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape4'
        mmHeight = 5821
        mmLeft = 65881
        mmTop = 14817
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape5'
        mmHeight = 5821
        mmLeft = 87577
        mmTop = 14817
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape6'
        mmHeight = 5821
        mmLeft = 109273
        mmTop = 14817
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground
      end
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape7'
        mmHeight = 5292
        mmLeft = 130969
        mmTop = 14817
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground
      end
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape8'
        mmHeight = 5292
        mmLeft = 152665
        mmTop = 14817
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground
      end
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape9'
        mmHeight = 5821
        mmLeft = 174361
        mmTop = 14817
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2893
        mmLeft = 22754
        mmTop = 15875
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR2'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2893
        mmLeft = 44450
        mmTop = 15875
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR3'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2893
        mmLeft = 66146
        mmTop = 15875
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR4'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2893
        mmLeft = 87842
        mmTop = 15875
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR5'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2893
        mmLeft = 109538
        mmTop = 15875
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR8'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2893
        mmLeft = 174625
        mmTop = 15875
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppShape10: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape10'
        mmHeight = 9790
        mmLeft = 0
        mmTop = 19843
        mmWidth = 22754
        BandType = 0
        LayerName = Foreground
      end
      object ppShape11: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape11'
        mmHeight = 9790
        mmLeft = 22490
        mmTop = 19843
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'MAT.PRIMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 3713
        mmTop = 21431
        mmWidth = 15593
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PESO Kg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 27137
        mmTop = 21431
        mmWidth = 12136
        BandType = 0
        LayerName = Foreground
      end
      object ppShape12: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape12'
        mmHeight = 9790
        mmLeft = 44186
        mmTop = 19843
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.N.F/LOTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 47307
        mmTop = 21431
        mmWidth = 15452
        BandType = 0
        LayerName = Foreground
      end
      object ppShape13: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape13'
        mmHeight = 4763
        mmLeft = 65881
        mmTop = 19844
        mmWidth = 43656
        BandType = 0
        LayerName = Foreground
      end
      object ppShape14: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape14'
        mmHeight = 5292
        mmLeft = 65881
        mmTop = 24341
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground
      end
      object ppShape15: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape15'
        mmHeight = 5292
        mmLeft = 87577
        mmTop = 24341
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'QUANTIDADE EM GRAMAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 69303
        mmTop = 20902
        mmWidth = 36548
        BandType = 0
        LayerName = Foreground
      end
      object ppShape16: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape16'
        mmHeight = 9790
        mmLeft = 109273
        mmTop = 19843
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground
      end
      object ppShape17: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape17'
        mmHeight = 5292
        mmLeft = 130969
        mmTop = 24341
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground
      end
      object ppShape18: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape18'
        mmHeight = 5292
        mmLeft = 152665
        mmTop = 24341
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground
      end
      object ppShape19: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape19'
        mmHeight = 4763
        mmLeft = 130969
        mmTop = 19844
        mmWidth = 43921
        BandType = 0
        LayerName = Foreground
      end
      object ppShape20: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape20'
        mmHeight = 9790
        mmLeft = 174361
        mmTop = 19843
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'P. BRUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 69056
        mmTop = 25400
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TARA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 93063
        mmTop = 25400
        mmWidth = 7549
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'P. LIQUIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 111125
        mmTop = 21431
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VISTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 180747
        mmTop = 21431
        mmWidth = 8396
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR7'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2893
        mmLeft = 153723
        mmTop = 15875
        mmWidth = 18785
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2893
        mmLeft = 131498
        mmTop = 15875
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'INICIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 133615
        mmTop = 25400
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'FINAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 156369
        mmTop = 25400
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label102'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ADI'#199#195'O DE MAT.PRIMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 136587
        mmTop = 20373
        mmWidth = 31891
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 186532
        mmTop = 529
        mmWidth = 9260
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER_ITENS'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3246
        mmLeft = 794
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTALUC_CC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,####0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3246
        mmLeft = 23283
        mmTop = 529
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 4233
        mmWidth = 196057
        BandType = 4
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 22490
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 44186
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 65881
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 87577
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 109273
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 130969
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line101'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 152665
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 174361
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.Weight = 1.000000000000000000
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 193675
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 0
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 131498
      mmPrintPosition = 0
      object ppShape24: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape24'
        mmHeight = 36513
        mmLeft = 0
        mmTop = 5027
        mmWidth = 196321
        BandType = 7
        LayerName = Foreground
      end
      object ppShape21: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape21'
        mmHeight = 5292
        mmLeft = 0
        mmTop = 0
        mmWidth = 44450
        BandType = 7
        LayerName = Foreground
      end
      object ppShape22: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape22'
        mmHeight = 5292
        mmLeft = 44186
        mmTop = 0
        mmWidth = 152136
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 1588
        mmTop = 1058
        mmWidth = 16933
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTALUC_CC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,####0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3246
        mmLeft = 23283
        mmTop = 1058
        mmWidth = 20373
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3246
        mmLeft = 44715
        mmTop = 1058
        mmWidth = 20902
        BandType = 7
        LayerName = Foreground
      end
      object ppShape23: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape23'
        mmHeight = 39423
        mmLeft = 0
        mmTop = 41275
        mmWidth = 196321
        BandType = 7
        LayerName = Foreground
      end
      object ppShape25: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape25'
        mmHeight = 22225
        mmLeft = 0
        mmTop = 80433
        mmWidth = 196321
        BandType = 7
        LayerName = Foreground
      end
      object ppShape26: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape26'
        mmHeight = 22225
        mmLeft = 0
        mmTop = 80433
        mmWidth = 30692
        BandType = 7
        LayerName = Foreground
      end
      object ppShape27: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape27'
        mmHeight = 22225
        mmLeft = 30163
        mmTop = 80433
        mmWidth = 33073
        BandType = 7
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 91811
        mmWidth = 196057
        BandType = 7
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 97102
        mmWidth = 196057
        BandType = 7
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 86519
        mmTop = 86254
        mmWidth = 109538
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.Tq. ARMAZENADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 30956
        mmTop = 82286
        mmWidth = 30692
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.Tq. PREPARO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 1852
        mmTop = 82286
        mmWidth = 25929
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBSERVA'#199#213'ES:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 63500
        mmTop = 82286
        mmWidth = 22754
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 4498
        mmTop = 11377
        mmWidth = 182563
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText18'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS2'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 4498
        mmTop = 15346
        mmWidth = 182563
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS3'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 4498
        mmTop = 19315
        mmWidth = 182563
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText20'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS4'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 4498
        mmTop = 23283
        mmWidth = 182563
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText21'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS5'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 4498
        mmTop = 27252
        mmWidth = 182563
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText22'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 4498
        mmTop = 31221
        mmWidth = 182563
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText23'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS7'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 4498
        mmTop = 35190
        mmWidth = 182563
        BandType = 7
        LayerName = Foreground
      end
      object ppShape28: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape28'
        mmHeight = 8467
        mmLeft = 0
        mmTop = 102394
        mmWidth = 196321
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' Lote Produzido ='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 50006
        mmTop = 104775
        mmWidth = 28310
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ph = '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 116416
        mmTop = 104775
        mmWidth = 7408
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Densidade ='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 144463
        mmTop = 104775
        mmWidth = 15610
        BandType = 7
        LayerName = Foreground
      end
      object ppShape29: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape29'
        mmHeight = 10583
        mmLeft = 0
        mmTop = 110596
        mmWidth = 116417
        BandType = 7
        LayerName = Foreground
      end
      object ppShape30: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape30'
        mmHeight = 20902
        mmLeft = 116152
        mmTop = 110596
        mmWidth = 26723
        BandType = 7
        LayerName = Foreground
      end
      object ppShape31: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape301'
        mmHeight = 20902
        mmLeft = 142611
        mmTop = 110596
        mmWidth = 53711
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = '[_] Aprovado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 117740
        mmTop = 114300
        mmWidth = 23019
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = '[_] Reprovado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 117740
        mmTop = 122238
        mmWidth = 23283
        BandType = 7
        LayerName = Foreground
      end
      object ppShape32: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape32'
        mmHeight = 10583
        mmLeft = 0
        mmTop = 120915
        mmWidth = 116417
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Provid'#234'ncias:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 143140
        mmTop = 110596
        mmWidth = 17992
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label28'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'SA'#205'DA DO LABORAT'#211'RIO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 794
        mmTop = 110596
        mmWidth = 35419
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label29'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA: ____/____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 794
        mmTop = 116152
        mmWidth = 40481
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label30'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'HORA: ______:______'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 42333
        mmTop = 116152
        mmWidth = 30427
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label301'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VISTO:__________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 73554
        mmTop = 116152
        mmWidth = 37253
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label32'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'RETORNO DO LABORAT'#211'RIO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 529
        mmTop = 120915
        mmWidth = 40922
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label33'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA: ____/____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 529
        mmTop = 126471
        mmWidth = 40481
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label302'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'HORA: ______:______'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 42069
        mmTop = 126471
        mmWidth = 30427
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label35'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VISTO:__________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 73290
        mmTop = 126471
        mmWidth = 37253
        BandType = 7
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 142611
        mmTop = 120650
        mmWidth = 53446
        BandType = 7
        LayerName = Foreground
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 142875
        mmTop = 126207
        mmWidth = 53446
        BandType = 7
        LayerName = Foreground
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 161661
        mmTop = 115623
        mmWidth = 34131
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel76: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PROCESSO DA PRODU'#199#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3810
        mmLeft = 794
        mmTop = 42069
        mmWidth = 41540
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 794
        mmTop = 46567
        mmWidth = 194998
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText72: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText72'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC2'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 794
        mmTop = 50536
        mmWidth = 194998
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText73: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText73'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC3'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 794
        mmTop = 54504
        mmWidth = 194998
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText74: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText74'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC4'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 794
        mmTop = 58473
        mmWidth = 194998
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText75: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText75'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC5'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 794
        mmTop = 62442
        mmWidth = 194998
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText76: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText76'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 794
        mmTop = 66411
        mmWidth = 194998
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText77: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText77'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC7'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 794
        mmTop = 70379
        mmWidth = 194998
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText78: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText78'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_PROC8'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 794
        mmTop = 74348
        mmWidth = 194998
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel77: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label31'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Observa'#231#245'es da Ordem de Produ'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3810
        mmLeft = 529
        mmTop = 5821
        mmWidth = 55668
        BandType = 7
        LayerName = Foreground
      end
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
  object ppRelOSP02: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 8000
    PrinterSetup.mmMarginRight = 9000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELOSP02.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
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
    Left = 360
    Top = 305
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 36248
      mmPrintPosition = 0
      object LBL_02_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 265
        mmTop = 0
        mmWidth = 23707
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 3704
        mmWidth = 198702
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 10054
        mmWidth = 198702
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_EMISSAO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 180975
        mmTop = 0
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 47625
        mmTop = 4498
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label37'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 169069
        mmTop = 0
        mmWidth = 11430
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_EMPRESA1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ordem de Produ'#231#227'o No.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4939
        mmLeft = 0
        mmTop = 4498
        mmWidth = 47413
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label40'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'T.U.P.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4939
        mmLeft = 173567
        mmTop = 4498
        mmWidth = 13335
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText26'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_TUP'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4939
        mmLeft = 187061
        mmTop = 4498
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label39'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Produto.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 0
        mmTop = 19050
        mmWidth = 11430
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText27'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 11906
        mmTop = 19050
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText29'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 32015
        mmTop = 19050
        mmWidth = 88106
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label41'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Quant.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 121444
        mmTop = 19050
        mmWidth = 9172
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText30'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 131234
        mmTop = 19050
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label401'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL T.U.P.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 161925
        mmTop = 19050
        mmWidth = 18627
        BandType = 0
        LayerName = Foreground1
      end
      object ppVarToTup: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'VarToTup'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 180975
        mmTop = 19050
        mmWidth = 12277
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape33: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape33'
        mmHeight = 13229
        mmLeft = 0
        mmTop = 23019
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label43'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'MAT. PRIMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 2910
        mmTop = 24606
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape34: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape34'
        mmHeight = 13229
        mmLeft = 13494
        mmTop = 23019
        mmWidth = 60500
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape35: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape35'
        mmHeight = 13229
        mmLeft = 73819
        mmTop = 23019
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label44'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Quantidade ->'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3104
        mmLeft = 56621
        mmTop = 30692
        mmWidth = 16228
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label45'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Consumo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3104
        mmLeft = 74877
        mmTop = 24606
        mmWidth = 10724
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label46'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3104
        mmLeft = 75671
        mmTop = 30692
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape36: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape36'
        mmHeight = 13229
        mmLeft = 86519
        mmTop = 23019
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape37: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape37'
        mmHeight = 13229
        mmLeft = 98954
        mmTop = 23019
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape38: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape38'
        mmHeight = 13229
        mmLeft = 123825
        mmTop = 23019
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape39: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape39'
        mmHeight = 13229
        mmLeft = 111390
        mmTop = 23019
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape40: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape40'
        mmHeight = 13229
        mmLeft = 173567
        mmTop = 23019
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape41: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape41'
        mmHeight = 13229
        mmLeft = 161132
        mmTop = 23019
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape42: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape42'
        mmHeight = 13229
        mmLeft = 148696
        mmTop = 23019
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape43: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape43'
        mmHeight = 13229
        mmLeft = 136261
        mmTop = 23019
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText31'
        CharWrap = True
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6879
        mmLeft = 87048
        mmTop = 23548
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText34'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3104
        mmLeft = 87048
        mmTop = 30692
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape44: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape401'
        mmHeight = 13229
        mmLeft = 186002
        mmTop = 23019
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText35'
        CharWrap = True
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR2'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6879
        mmLeft = 99484
        mmTop = 23548
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText36'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE2'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 99484
        mmTop = 30692
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText37'
        CharWrap = True
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR3'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6879
        mmLeft = 111919
        mmTop = 23548
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText38'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE3'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 111919
        mmTop = 30692
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText39'
        CharWrap = True
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR4'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6879
        mmLeft = 124354
        mmTop = 23548
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText40'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE4'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 124354
        mmTop = 30692
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText41'
        CharWrap = True
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR5'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6879
        mmLeft = 136790
        mmTop = 23548
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText401'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE5'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 136790
        mmTop = 30692
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText43: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText43'
        CharWrap = True
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6879
        mmLeft = 149225
        mmTop = 23548
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText44'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 149225
        mmTop = 30692
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText45'
        CharWrap = True
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR7'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6879
        mmLeft = 161661
        mmTop = 23548
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText46'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE7'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 161661
        mmTop = 30692
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText47'
        CharWrap = True
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR8'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6879
        mmLeft = 174096
        mmTop = 23548
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText48'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE8'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 174096
        mmTop = 30692
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label47'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3104
        mmLeft = 187995
        mmTop = 24606
        mmWidth = 8326
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText49: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText301'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 186796
        mmTop = 30427
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel73: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label73'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Situa'#231#227'o.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4939
        mmLeft = 71967
        mmTop = 4498
        mmWidth = 18838
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText60: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText60'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_STATUS_CC'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4939
        mmLeft = 91017
        mmTop = 4498
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line33'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 17992
        mmWidth = 198702
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label36'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PEDIDO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 10848
        mmWidth = 11853
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText61: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText61'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PED_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 13494
        mmTop = 10848
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel59: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label59'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Data de Entrega:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 78000
        mmTop = 10848
        mmWidth = 20955
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText62: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText62'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PED_DTSAIDA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 100277
        mmTop = 10848
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel74: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label74'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 14288
        mmWidth = 12912
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText63: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText63'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 13494
        mmTop = 14288
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText64: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText64'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 23283
        mmTop = 14288
        mmWidth = 136261
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 5027
        mmWidth = 198702
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line8'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 73819
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line9'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 86519
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line10'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 98954
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line101'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 111390
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line11'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 123825
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line12'
        Border.Weight = 1.000000000000000000
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 197644
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText32'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER_ITENS'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 529
        mmTop = 794
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line23'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 13494
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line24'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 0
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line25'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 136261
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line39'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 148696
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine40: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line40'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 161132
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText33'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 14288
        mmTop = 794
        mmWidth = 58738
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine41: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line401'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 173567
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine42: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line42'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 186002
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText50: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText50'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSI_UC'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 74348
        mmTop = 794
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText51: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText51'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'QTDE1_CC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 87313
        mmTop = 794
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText52: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText52'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'QTDE2_CC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 99748
        mmTop = 794
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText53: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText53'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'QTDE3_CC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 112184
        mmTop = 794
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText54: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText54'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'QTDE4_CC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 124619
        mmTop = 794
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText55: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText55'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'QTDE5_CC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 137054
        mmTop = 794
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText56: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText56'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'QTDE6_CC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 149490
        mmTop = 794
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText57: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText57'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'QTDE7_CC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 161925
        mmTop = 794
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText58: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText58'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'QTDE8_CC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 174361
        mmTop = 794
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText59: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText59'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTALUC_CC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 186796
        mmTop = 794
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 66675
      mmPrintPosition = 0
      object ppShape45: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape45'
        Anchors = [atLeft, atBottom]
        ReprintOnOverFlow = True
        mmHeight = 32279
        mmLeft = 0
        mmTop = 0
        mmWidth = 199232
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label48'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ESTOQUE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 4498
        mmTop = 2381
        mmWidth = 18256
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label49'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '[__________]:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 2646
        mmTop = 25929
        mmWidth = 20108
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label50'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CORTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 8202
        mmTop = 10054
        mmWidth = 14552
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label51'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'MONTAGEM:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 1323
        mmTop = 17727
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label52'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 23019
        mmTop = 2381
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label501'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 23019
        mmTop = 10054
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label54'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 23019
        mmTop = 17727
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label55'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 23019
        mmTop = 25929
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label56'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 53711
        mmTop = 2381
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label57'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 53711
        mmTop = 10054
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label58'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 53711
        mmTop = 17727
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel60: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label60'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 53711
        mmTop = 25929
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel61: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label61'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 153459
        mmTop = 2381
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel62: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label62'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 153459
        mmTop = 10054
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label63'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 153459
        mmTop = 17727
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel64: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label601'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 153459
        mmTop = 25929
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel65: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label65'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 122767
        mmTop = 2381
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel66: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label66'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 122767
        mmTop = 10054
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel67: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label67'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 122767
        mmTop = 17727
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel68: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label68'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 122767
        mmTop = 25929
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel69: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label69'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'GERENCIA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 107156
        mmTop = 25929
        mmWidth = 15240
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel70: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label70'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'EXPEDI'#199#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 105304
        mmTop = 17727
        mmWidth = 17074
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel71: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label502'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ACABAMENTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 102394
        mmTop = 10054
        mmWidth = 20179
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel72: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label72'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DISTRIBUI'#199#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 101865
        mmTop = 2381
        mmWidth = 20602
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line102'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 32279
        mmLeft = 98954
        mmTop = 0
        mmWidth = 1588
        BandType = 7
        LayerName = Foreground1
      end
      object ppShape46: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape46'
        mmHeight = 34660
        mmLeft = 0
        mmTop = 32014
        mmWidth = 199232
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText65: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText65'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 35719
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText66: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText66'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS2'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 39952
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel75: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label75'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Observa'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 794
        mmTop = 32015
        mmWidth = 16933
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText67: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText67'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS3'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 44186
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText68: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText68'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS4'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 48419
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText69: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText69'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS5'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 52652
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText70: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText70'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 56886
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText71: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText701'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS7'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 61119
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground1
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060E
        566172546F5475704F6E43616C630B50726F6772616D54797065070B74745072
        6F63656475726506536F75726365067D70726F63656475726520566172546F54
        75704F6E43616C63287661722056616C75653A2056617269616E74293B0D0A62
        6567696E0D0A0D0A202056616C7565203A3D20204442506970656C696E65315B
        274F53565F51544445275D2A4442506970656C696E65315B274654435F545550
        275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D650608566172
        546F547570094576656E744E616D6506064F6E43616C63074576656E74494402
        21084361726574506F730102000200000000}
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
  object ppDBPipeline1: TppDBPipeline
    DataSource = DsOP
    UserName = 'DBPipeline1'
    Left = 296
    Top = 274
  end
  object imgList1: TImageList
    Height = 15
    Left = 146
    Top = 274
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
  object SqlOP: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'O1.Emp_codigo,'#13#10'O1.Osv_codigo,'#13#10'O1.Osv_emissao,'#13#10'O1.Prd_' +
      'refer,'#13#10'O1.Osv_qtde,'#13#10'O1.Osv_qtde1,'#13#10'O1.Osv_qtde2,'#13#10'O1.Osv_qtde3' +
      ','#13#10'O1.Osv_qtde4,'#13#10'O1.Osv_qtde5,'#13#10'O1.Osv_qtde6,'#13#10'O1.Osv_qtde7,'#13#10'O' +
      '1.Osv_qtde8,'#13#10'O1.Osv_status,'#13#10'O1.Osv_impresso,'#13#10'O1.Ped_codigo,'#13#10 +
      'O1.Ftc_tup,'#13#10'O1.Osv_precounit,'#13#10'O1.cel_codigo,'#13#10'P1.Prd_descri,'#13#10 +
      'P1.Prd_codigo,'#13#10'P1.pgr_codigo'#13#10'From OSV0001 O1'#13#10'left join PRD000' +
      '0 P1 ON (O1.PRD_REFER  = P1.PRD_REFER)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 320
    Top = 152
    object SqlOPEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlOPOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Required = True
      Size = 8
    end
    object SqlOPOSV_EMISSAO: TSQLTimeStampField
      FieldName = 'OSV_EMISSAO'
    end
    object SqlOPPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlOPOSV_QTDE: TFMTBCDField
      FieldName = 'OSV_QTDE'
      Precision = 15
    end
    object SqlOPOSV_QTDE1: TFMTBCDField
      FieldName = 'OSV_QTDE1'
      Precision = 15
    end
    object SqlOPOSV_QTDE2: TFMTBCDField
      FieldName = 'OSV_QTDE2'
      Precision = 15
    end
    object SqlOPOSV_QTDE3: TFMTBCDField
      FieldName = 'OSV_QTDE3'
      Precision = 15
    end
    object SqlOPOSV_QTDE4: TFMTBCDField
      FieldName = 'OSV_QTDE4'
      Precision = 15
    end
    object SqlOPOSV_QTDE5: TFMTBCDField
      FieldName = 'OSV_QTDE5'
      Precision = 15
    end
    object SqlOPOSV_QTDE6: TFMTBCDField
      FieldName = 'OSV_QTDE6'
      Precision = 15
    end
    object SqlOPOSV_QTDE7: TFMTBCDField
      FieldName = 'OSV_QTDE7'
      Precision = 15
    end
    object SqlOPOSV_QTDE8: TFMTBCDField
      FieldName = 'OSV_QTDE8'
      Precision = 15
    end
    object SqlOPOSV_STATUS: TStringField
      FieldName = 'OSV_STATUS'
      Size = 1
    end
    object SqlOPOSV_IMPRESSO: TStringField
      FieldName = 'OSV_IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object SqlOPPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlOPFTC_TUP: TFMTBCDField
      FieldName = 'FTC_TUP'
      Precision = 15
    end
    object SqlOPOSV_PRECOUNIT: TFMTBCDField
      FieldName = 'OSV_PRECOUNIT'
      Precision = 15
    end
    object SqlOPCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Size = 3
    end
    object SqlOPPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlOPPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 4
    end
    object SqlOPPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
  end
  object DspOP: TDataSetProvider
    DataSet = SqlOP
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 352
    Top = 152
  end
  object CdsOP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspOP'
    AfterScroll = CdsOPAfterScroll
    OnCalcFields = CdsOPCalcFields
    Left = 384
    Top = 152
    object CdsOPEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsOPOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Required = True
      Size = 8
    end
    object CdsOPOSV_EMISSAO: TSQLTimeStampField
      FieldName = 'OSV_EMISSAO'
    end
    object CdsOPPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object CdsOPOSV_QTDE: TFMTBCDField
      FieldName = 'OSV_QTDE'
      Precision = 15
    end
    object CdsOPOSV_QTDE1: TFMTBCDField
      FieldName = 'OSV_QTDE1'
      Precision = 15
    end
    object CdsOPOSV_QTDE2: TFMTBCDField
      FieldName = 'OSV_QTDE2'
      Precision = 15
    end
    object CdsOPOSV_QTDE3: TFMTBCDField
      FieldName = 'OSV_QTDE3'
      Precision = 15
    end
    object CdsOPOSV_QTDE4: TFMTBCDField
      FieldName = 'OSV_QTDE4'
      Precision = 15
    end
    object CdsOPOSV_QTDE5: TFMTBCDField
      FieldName = 'OSV_QTDE5'
      Precision = 15
    end
    object CdsOPOSV_QTDE6: TFMTBCDField
      FieldName = 'OSV_QTDE6'
      Precision = 15
    end
    object CdsOPOSV_QTDE7: TFMTBCDField
      FieldName = 'OSV_QTDE7'
      Precision = 15
    end
    object CdsOPOSV_QTDE8: TFMTBCDField
      FieldName = 'OSV_QTDE8'
      Precision = 15
    end
    object CdsOPOSV_STATUS: TStringField
      FieldName = 'OSV_STATUS'
      Size = 1
    end
    object CdsOPOSV_IMPRESSO: TStringField
      FieldName = 'OSV_IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object CdsOPPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object CdsOPFTC_TUP: TFMTBCDField
      FieldName = 'FTC_TUP'
      Precision = 15
    end
    object CdsOPPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object CdsOPPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 4
    end
    object CdsOPCC_IMPRESSO: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'CC_IMPRESSO'
    end
    object CdsOPOSV_STATUS_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'OSV_STATUS_CC'
      Calculated = True
    end
    object CdsOPOSV_PRECOUNIT: TFMTBCDField
      FieldName = 'OSV_PRECOUNIT'
      Precision = 15
    end
    object CdsOPCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Size = 3
    end
    object CdsOPPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
  end
  object DsOpGrade: TDataSource
    DataSet = CdsOP
    Left = 416
    Top = 152
  end
end
