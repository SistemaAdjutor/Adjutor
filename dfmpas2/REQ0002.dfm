object FrmManutReqCompra: TFrmManutReqCompra
  Left = -1
  Top = -1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o de Requisi'#231#227'o de Compras'
  ClientHeight = 544
  ClientWidth = 795
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GrpConsulta: TGroupBox
    Left = 425
    Top = 0
    Width = 248
    Height = 63
    TabOrder = 2
    object Pan_Emissao: TPanel
      Left = 4
      Top = 16
      Width = 242
      Height = 41
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 121
        Top = 12
        Width = 16
        Height = 13
        Caption = 'At'#233
      end
      object Label2: TLabel
        Left = 2
        Top = 12
        Width = 17
        Height = 13
        Caption = 'De:'
      end
      object Data_Inicial: TDateEdit
        Left = 24
        Top = 8
        Width = 87
        Height = 21
        GlyphKind = gkEllipsis
        NumGlyphs = 1
        YearDigits = dyFour
        TabOrder = 0
        OnExit = Data_InicialExit
      end
      object Data_Final: TDateEdit
        Left = 149
        Top = 8
        Width = 87
        Height = 21
        GlyphKind = gkEllipsis
        NumGlyphs = 1
        YearDigits = dyFour
        TabOrder = 1
        OnExit = Data_FinalExit
      end
    end
    object Pan_Tipo: TPanel
      Left = 4
      Top = 16
      Width = 239
      Height = 41
      BevelOuter = bvNone
      TabOrder = 1
      object LBL_Pesq: TLabel
        Left = 3
        Top = 12
        Width = 56
        Height = 13
        Caption = 'Requisi'#231#227'o:'
      end
      object Edt_Pesq: TEdit
        Left = 60
        Top = 8
        Width = 75
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 0
        OnChange = Edt_PesqChange
        OnEnter = Edt_PesqEnter
        OnExit = Edt_PesqExit
        OnKeyPress = Edt_PesqKeyPress
      end
    end
  end
  object GrpGrid: TGroupBox
    Left = 0
    Top = 63
    Width = 795
    Height = 347
    Caption = 'Itens da Requisi'#231#227'o de Compras'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object DBGrid2: TDBGrid
      Left = 3
      Top = 15
      Width = 789
      Height = 326
      Color = 16776176
      DataSource = DsReqItens
      FixedColor = 12681984
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid2DblClick
      OnKeyPress = DBGrid2KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'REQ_CODIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Req'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REQ_EMISSAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REQ_HORA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Hor'#225'rio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OSV_CODIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' OP'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_REFER_ITENS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Referencia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o da Mat'#233'ria-Prima'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 249
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_UND'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Und'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RQI_SOLICITADA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Solicitada'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REQ_PRIORIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Prioridade'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Status_cc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Status'
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
          FieldName = 'Compra_CC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Compra'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Origem_cc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Origem'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 65
          Visible = True
        end>
    end
  end
  object PanBotoes: TPanel
    Left = 472
    Top = 508
    Width = 321
    Height = 35
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 10841658
    TabOrder = 6
    object BitSair: TBitBtn
      Left = 222
      Top = 5
      Width = 95
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
      TabOrder = 1
      TabStop = False
      OnClick = BitSairClick
    end
    object BitAtualizar: TBitBtn
      Left = 5
      Top = 5
      Width = 125
      Height = 25
      Hint = 'Verificar se foi solicitado mais '#13#10'mat'#233'ria-prima para comprar.'
      Caption = '&Atualizar Tela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
      OnClick = BitAtualizarClick
    end
    object Bit_Excluir: TBitBtn
      Left = 131
      Top = 5
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        3300333333333333330033000000000033003300000000003300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
  end
  object GrpDados: TGroupBox
    Left = 0
    Top = 410
    Width = 795
    Height = 95
    Caption = 'Dados'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    object Label3: TLabel
      Left = 5
      Top = 21
      Width = 52
      Height = 13
      Caption = 'Refer'#234'ncia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 132
      Top = 21
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 566
      Top = 21
      Width = 20
      Height = 13
      Caption = 'Und'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 605
      Top = 21
      Width = 46
      Height = 13
      Caption = 'Solicitada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 678
      Top = 21
      Width = 30
      Height = 13
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 738
      Top = 21
      Width = 36
      Height = 13
      Caption = 'Compra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EdtRefer: TEdit
      Left = 5
      Top = 35
      Width = 125
      Height = 21
      TabStop = False
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 11
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtDescri: TEdit
      Left = 131
      Top = 35
      Width = 433
      Height = 21
      TabStop = False
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 60
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EdtUnd: TEdit
      Left = 565
      Top = 35
      Width = 26
      Height = 21
      TabStop = False
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object CurrSolicita: TCurrencyEdit
      Left = 592
      Top = 35
      Width = 68
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '#,##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object CbxStatus: TComboBox
      Left = 661
      Top = 35
      Width = 75
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Items.Strings = (
        'Pendente'
        'Concluido'
        'Parcial')
    end
    object CbxCompra: TComboBox
      Left = 737
      Top = 35
      Width = 53
      Height = 21
      Style = csDropDownList
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 5
      Items.Strings = (
        'SIM'
        'N'#195'O'
        '')
    end
    object BitConfirma: TBitBtn
      Left = 600
      Top = 65
      Width = 95
      Height = 25
      Caption = 'Con&firmar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      TabStop = False
      OnClick = BitConfirmaClick
    end
    object BitCancelarItem: TBitBtn
      Left = 696
      Top = 65
      Width = 95
      Height = 25
      Caption = '&Cancelar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      TabStop = False
      OnClick = BitCancelarItemClick
    end
  end
  object GrpFiltrar: TGroupBox
    Left = 0
    Top = 0
    Width = 180
    Height = 63
    Caption = 'Filtrar Requisi'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Rad_Normal: TRadioButton
      Left = 4
      Top = 39
      Width = 60
      Height = 16
      Caption = 'Nor&mal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Rad_TodosClick
    end
    object Rad_Urgente: TRadioButton
      Left = 76
      Top = 18
      Width = 60
      Height = 16
      Caption = 'Ur&gente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Rad_TodosClick
    end
    object Rad_Prioridade: TRadioButton
      Left = 76
      Top = 39
      Width = 69
      Height = 16
      Caption = '&Prioridade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Rad_TodosClick
    end
    object Rad_Todos: TRadioButton
      Left = 4
      Top = 17
      Width = 63
      Height = 17
      Caption = '&Todos'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = True
      OnClick = Rad_TodosClick
    end
  end
  object GrpPesquisa: TGroupBox
    Left = 178
    Top = 0
    Width = 249
    Height = 63
    Caption = 'Pesquisar por'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Rad_Emissao: TRadioButton
      Left = 96
      Top = 18
      Width = 61
      Height = 17
      Caption = 'Em&iss'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Rad_ReqClick
    end
    object Rad_Req: TRadioButton
      Left = 8
      Top = 18
      Width = 74
      Height = 17
      Caption = 'Req&uisi'#231#227'o'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = True
      OnClick = Rad_ReqClick
    end
    object Rad_Refer: TRadioButton
      Left = 8
      Top = 39
      Width = 73
      Height = 17
      Caption = 'Refer'#234'&ncia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Rad_ReqClick
    end
    object Rad_Descricao: TRadioButton
      Left = 96
      Top = 39
      Width = 97
      Height = 17
      Caption = '&Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Rad_ReqClick
    end
  end
  object BitPesquisa: TBitBtn
    Left = 693
    Top = 5
    Width = 100
    Height = 25
    Caption = 'Pes&quisar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitCancelar: TBitBtn
    Left = 693
    Top = 32
    Width = 100
    Height = 25
    Caption = 'Cance&lar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitCancelarClick
  end
  object PanRel: TPanel
    Left = 0
    Top = 508
    Width = 94
    Height = 35
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 10841658
    TabOrder = 8
    object Bit_Relatorio: TBitBtn
      Left = 4
      Top = 5
      Width = 86
      Height = 25
      Cursor = crHandPoint
      Caption = '&Relat'#243'rios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = Bit_RelatorioClick
    end
  end
  object SqlCdsReqItens: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'R2.*,'#13#10'R1.req_emissao,'#13#10'R1.req_hora,'#13#10'R1.req_prioridade,' +
      #13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND'#13#10'from REQUISICAO_COMPRA_ITENS R2'#13#10'l' +
      'eft join REQUISICAO_COMPRA R1 ON (R2.req_codigo = R1.req_codigo)' +
      #13#10'left join PRD0000 P1 ON (R2.prd_refer_itens = P1.prd_refer)'#13#10'O' +
      'RDER BY'#13#10'P1.PRD_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsReqItensCalcFields
    CommandText = 
      'select'#13#10'R2.*,'#13#10'R1.req_emissao,'#13#10'R1.req_hora,'#13#10'R1.req_prioridade,' +
      #13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND'#13#10'from REQUISICAO_COMPRA_ITENS R2'#13#10'l' +
      'eft join REQUISICAO_COMPRA R1 ON (R2.req_codigo = R1.req_codigo)' +
      #13#10'left join PRD0000 P1 ON (R2.prd_refer_itens = P1.prd_refer)'#13#10'O' +
      'RDER BY'#13#10'P1.PRD_DESCRI'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 280
    Top = 192
    object SqlCdsReqItensRQI_REGISTRO: TIntegerField
      FieldName = 'RQI_REGISTRO'
      Required = True
    end
    object SqlCdsReqItensEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsReqItensREQ_CODIGO: TIntegerField
      FieldName = 'REQ_CODIGO'
      DisplayFormat = '000000'
      EditFormat = '000000'
    end
    object SqlCdsReqItensOSI_REGISTRO: TIntegerField
      FieldName = 'OSI_REGISTRO'
    end
    object SqlCdsReqItensOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Size = 8
    end
    object SqlCdsReqItensPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsReqItensRQI_SOLICITADA: TFMTBCDField
      FieldName = 'RQI_SOLICITADA'
      DisplayFormat = '#,##0.000'
      currency = True
      Precision = 15
    end
    object SqlCdsReqItensRQI_STATUS: TStringField
      FieldName = 'RQI_STATUS'
      Size = 1
    end
    object SqlCdsReqItensRQI_ORIGEM: TStringField
      FieldName = 'RQI_ORIGEM'
      Size = 1
    end
    object SqlCdsReqItensPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsReqItensPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsReqItensRQI_SOLICITOU_COMPRA: TStringField
      FieldName = 'RQI_SOLICITOU_COMPRA'
      Size = 1
    end
    object SqlCdsReqItensREQ_EMISSAO: TDateField
      FieldName = 'REQ_EMISSAO'
    end
    object SqlCdsReqItensREQ_HORA: TTimeField
      FieldName = 'REQ_HORA'
    end
    object SqlCdsReqItensREQ_PRIORIDADE: TStringField
      FieldName = 'REQ_PRIORIDADE'
      Size = 10
    end
    object SqlCdsReqItensOrigem_cc: TStringField
      FieldKind = fkCalculated
      FieldName = 'Origem_cc'
      Size = 15
      Calculated = True
    end
    object SqlCdsReqItensStatus_cc: TStringField
      FieldKind = fkCalculated
      FieldName = 'Status_cc'
      Size = 15
      Calculated = True
    end
    object SqlCdsReqItensCompra_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'Compra_CC'
      Size = 3
      Calculated = True
    end
  end
  object DsReqItens: TDataSource
    DataSet = SqlCdsReqItens
    Left = 312
    Top = 192
  end
end
