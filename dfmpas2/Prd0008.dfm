object FormPrdManut: TFormPrdManut
  Left = 261
  Top = 136
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Movimenta'#231#227'o do Estoque (Kardex)'
  ClientHeight = 573
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GrpProduto: TGroupBox
    Left = 0
    Top = 40
    Width = 745
    Height = 95
    Caption = 'Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    object DBGridProduto: TDBGrid
      Left = 3
      Top = 14
      Width = 737
      Height = 76
      Color = clInfoBk
      DataSource = DsProduto
      FixedColor = 12681984
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
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
          Width = 93
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
          Width = 570
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_UND'
          Title.Alignment = taCenter
          Title.Caption = 'Und'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindow
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 36
          Visible = True
        end>
    end
  end
  object Grp_Filtra: TGroupBox
    Left = 373
    Top = 0
    Width = 370
    Height = 40
    TabOrder = 2
    object LBL_DESCRI: TLabel
      Left = 4
      Top = 18
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Refer'#234'ncia:'
      FocusControl = Edt_Refer
    end
    object Edt_Refer: TEdit
      Left = 60
      Top = 15
      Width = 305
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 11
      TabOrder = 0
      OnEnter = Edt_ReferEnter
      OnExit = Edt_ReferExit
    end
  end
  object Panel2: TPanel
    Left = 621
    Top = 538
    Width = 119
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel2'
    Color = 12681984
    TabOrder = 5
    object Bit_Sair: TBitBtn
      Left = 4
      Top = 4
      Width = 110
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_SairClick
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 538
    Width = 342
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel2'
    Color = 12681984
    TabOrder = 4
    object Bit_Estorno: TBitBtn
      Left = 226
      Top = 4
      Width = 110
      Height = 25
      Cursor = crHandPoint
      Hint = 'cancela movimento do estoque'
      Caption = 'Es&torno'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
      OnClick = Bit_EstornoClick
    end
    object Bit_Saida: TBitBtn
      Left = 116
      Top = 4
      Width = 110
      Height = 25
      Cursor = crHandPoint
      Caption = 'S&a'#237'da'
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
      ShowHint = False
      TabOrder = 1
      TabStop = False
      OnClick = Bit_SaidaClick
    end
    object Bit_Entrada: TBitBtn
      Left = 5
      Top = 4
      Width = 110
      Height = 25
      Cursor = crHandPoint
      Caption = '&Entrada'
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
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = Bit_EntradaClick
    end
  end
  object GrpPosicaoEstoque: TGroupBox
    Left = 0
    Top = 426
    Width = 744
    Height = 107
    Caption = 'Posi'#231#227'o do Estoque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Pan_Variacao: TPanel
      Left = 3
      Top = 56
      Width = 637
      Height = 42
      BevelOuter = bvNone
      TabOrder = 0
      object DBEdit2: TDBEdit
        Left = 79
        Top = 0
        Width = 79
        Height = 21
        TabStop = False
        Color = 16579817
        Ctl3D = True
        DataField = 'PRD_DCVAR2'
        DataSource = DsProduto
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
      end
      object DBEdit21: TDBEdit
        Left = 0
        Top = 21
        Width = 79
        Height = 21
        Color = 14145495
        DataField = 'PRD_VAR1'
        DataSource = DsProduto
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit3: TDBEdit
        Left = 158
        Top = 0
        Width = 79
        Height = 21
        TabStop = False
        Color = 16579817
        Ctl3D = True
        DataField = 'PRD_DCVAR3'
        DataSource = DsProduto
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 2
      end
      object DBEdit22: TDBEdit
        Left = 79
        Top = 21
        Width = 79
        Height = 21
        Color = 14145495
        DataField = 'PRD_VAR2'
        DataSource = DsProduto
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit4: TDBEdit
        Left = 237
        Top = 0
        Width = 79
        Height = 21
        TabStop = False
        Color = 16579817
        Ctl3D = True
        DataField = 'PRD_DCVAR4'
        DataSource = DsProduto
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 3
      end
      object DBEdit23: TDBEdit
        Left = 158
        Top = 21
        Width = 79
        Height = 21
        Color = 14145495
        DataField = 'PRD_VAR3'
        DataSource = DsProduto
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit24: TDBEdit
        Left = 237
        Top = 21
        Width = 79
        Height = 21
        Color = 14145495
        DataField = 'PRD_VAR4'
        DataSource = DsProduto
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object DBEdit25: TDBEdit
        Left = 316
        Top = 21
        Width = 79
        Height = 21
        Color = 14145495
        DataField = 'PRD_VAR5'
        DataSource = DsProduto
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object DBEdit26: TDBEdit
        Left = 395
        Top = 21
        Width = 79
        Height = 21
        Color = 14145495
        DataField = 'PRD_VAR6'
        DataSource = DsProduto
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
      object DBEdit27: TDBEdit
        Left = 474
        Top = 21
        Width = 79
        Height = 21
        Color = 14145495
        DataField = 'PRD_VAR7'
        DataSource = DsProduto
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
      end
      object DBEdit28: TDBEdit
        Left = 553
        Top = 21
        Width = 79
        Height = 21
        Color = 14145495
        DataField = 'PRD_VAR8'
        DataSource = DsProduto
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
      end
      object DBEdit5: TDBEdit
        Left = 316
        Top = 0
        Width = 79
        Height = 21
        TabStop = False
        Color = 16579817
        Ctl3D = True
        DataField = 'PRD_DCVAR5'
        DataSource = DsProduto
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 395
        Top = 0
        Width = 79
        Height = 21
        TabStop = False
        Color = 16579817
        Ctl3D = True
        DataField = 'PRD_DCVAR6'
        DataSource = DsProduto
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 474
        Top = 0
        Width = 79
        Height = 21
        TabStop = False
        Color = 16579817
        Ctl3D = True
        DataField = 'PRD_DCVAR7'
        DataSource = DsProduto
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 6
      end
      object DBEdit1: TDBEdit
        Left = 0
        Top = 0
        Width = 79
        Height = 21
        TabStop = False
        Color = 16579817
        Ctl3D = True
        DataField = 'PRD_DCVAR1'
        DataSource = DsProduto
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
      end
      object DBEdit8: TDBEdit
        Left = 553
        Top = 0
        Width = 79
        Height = 21
        TabStop = False
        Color = 16579817
        Ctl3D = True
        DataField = 'PRD_DCVAR8'
        DataSource = DsProduto
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 7
      end
    end
    object Pan_Saldo: TPanel
      Left = 3
      Top = 15
      Width = 734
      Height = 39
      BevelOuter = bvNone
      TabOrder = 1
      object Label5: TLabel
        Left = 113
        Top = 17
        Width = 11
        Height = 20
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 238
        Top = 13
        Width = 8
        Height = 24
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 363
        Top = 13
        Width = 8
        Height = 24
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 490
        Top = 13
        Width = 8
        Height = 24
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 614
        Top = 17
        Width = 11
        Height = 20
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit10: TDBEdit
        Left = 4
        Top = 16
        Width = 105
        Height = 21
        Color = 14145495
        DataField = 'PRD_ESTOQUE'
        DataSource = DsProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Panel3: TPanel
        Left = 3
        Top = 0
        Width = 105
        Height = 15
        Caption = 'Estoque Inicial'
        Color = 12681984
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit56: TDBEdit
        Left = 128
        Top = 16
        Width = 105
        Height = 21
        Color = 14145495
        DataField = 'PRD_ENTRADA'
        DataSource = DsProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object Panel4: TPanel
        Left = 127
        Top = 0
        Width = 105
        Height = 15
        Caption = 'Entradas'
        Color = 12681984
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit14: TDBEdit
        Left = 252
        Top = 16
        Width = 105
        Height = 21
        Color = 14145495
        DataField = 'PRD_SAIDA'
        DataSource = DsProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object Panel9: TPanel
        Left = 251
        Top = 0
        Width = 105
        Height = 15
        Caption = 'Sa'#237'das'
        Color = 12681984
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit18: TDBEdit
        Left = 378
        Top = 16
        Width = 105
        Height = 21
        Color = clWhite
        DataField = 'PRD_RESERVA'
        DataSource = DsProduto
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object Panel11: TPanel
        Left = 377
        Top = 0
        Width = 105
        Height = 15
        Caption = 'Qtde em reserva'
        Color = 12681984
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit19: TDBEdit
        Left = 504
        Top = 16
        Width = 105
        Height = 21
        Color = 14145495
        DataField = 'PRD_EMPENHO'
        DataSource = DsProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object Panel12: TPanel
        Left = 502
        Top = 0
        Width = 105
        Height = 15
        Caption = 'Qtde empenhado'
        Color = 12681984
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object Panel10: TPanel
        Left = 629
        Top = 0
        Width = 105
        Height = 15
        Caption = 'Estoque Atual'
        Color = 12681984
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit17: TDBEdit
        Left = 630
        Top = 16
        Width = 105
        Height = 21
        Color = clMoneyGreen
        DataField = 'PRD_FISICO_CC'
        DataSource = DsProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
    end
  end
  object Panel6: TPanel
    Left = 503
    Top = 538
    Width = 118
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 12681984
    TabOrder = 6
    object Bit_Relatorio: TBitBtn
      Left = 4
      Top = 4
      Width = 110
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
  object GrpKardex: TGroupBox
    Left = 0
    Top = 136
    Width = 745
    Height = 289
    Caption = 'Movimenta'#231#227'o do Kardex:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    object Lbl_Refer: TLabel
      Left = 135
      Top = 0
      Width = 13
      Height = 13
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 510
      Top = 267
      Width = 39
      Height = 13
      Caption = 'Usu'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DbGrdManut: TDBGrid
      Left = 3
      Top = 19
      Width = 736
      Height = 202
      Color = 16776176
      DataSource = DsPrdManut
      FixedColor = 12681984
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DbGrdManutCellClick
      OnDrawColumnCell = DbGrdManutDrawColumnCell
      OnTitleClick = DbGrdManutTitleClick
      Columns = <
        item
          DropDownRows = 1
          Expanded = False
          FieldName = 'PES_DATA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_TIPO_CA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Lancto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_TIPDOC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Doc'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_NUMDOC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Doc'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_QTDE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Qtde'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Valor Liq.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_IPI_CC'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Valor+IPI+D.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_ORIGEM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Origem'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONTA_CC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 46848
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Est.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KARDEX_TIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMX_CODIGO'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMX_DESCRI'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'Almoxarifado'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_VAR1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'VAR1'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_VAR2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'VAR2'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_VAR3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'VAR3'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_VAR4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'VAR4'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_VAR5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'VAR5'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_VAR6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'VAR6'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_VAR7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'VAR7'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PES_VAR8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = 'VAR8'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object PanObs: TPanel
      Left = 3
      Top = 221
      Width = 735
      Height = 39
      BevelOuter = bvNone
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 1
        Top = 0
        Width = 659
        Height = 39
        Caption = 'Observa'#231#227'o'
        TabOrder = 0
        object DBEdit9x: TDBEdit
          Left = 4
          Top = 14
          Width = 643
          Height = 21
          TabStop = False
          Color = 14145495
          DataField = 'PES_KARDEX_OBS'
          DataSource = DsPrdManut
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object GroupBox4: TGroupBox
        Left = 668
        Top = 0
        Width = 67
        Height = 39
        Caption = 'N'#186' Pedido'
        TabOrder = 1
        object DBEdit9: TDBEdit
          Left = 2
          Top = 16
          Width = 62
          Height = 21
          TabStop = False
          Color = 14145495
          DataField = 'PED_CODIGO'
          DataSource = DsPrdManut
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object DBEdit11: TDBEdit
      Left = 553
      Top = 263
      Width = 32
      Height = 21
      DataField = 'USU_CODIGO'
      DataSource = DsPrdManut
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit12: TDBEdit
      Left = 588
      Top = 263
      Width = 150
      Height = 21
      DataField = 'USU_LOGIN'
      DataSource = DsPrdManut
      TabOrder = 3
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 0
    Width = 209
    Height = 40
    Caption = 'Selecionar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 18
      Width = 30
      Height = 13
      Caption = 'Tipo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Cbx_Tipo: TComboBox
      Left = 34
      Top = 15
      Width = 171
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      MaxLength = 25
      ParentFont = False
      TabOrder = 0
      Text = 'TODOS OS TIPOS'
      OnClick = Cbx_TipoClick
      Items.Strings = (
        'TODOS OS TIPOS')
    end
  end
  object GroupBox2: TGroupBox
    Left = 207
    Top = 0
    Width = 155
    Height = 40
    Caption = 'Pesquisar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Rad_Refer: TRadioButton
      Left = 5
      Top = 18
      Width = 73
      Height = 17
      Caption = '&Refer'#234'ncia'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = Rad_ReferClick
    end
    object Rad_Descricao: TRadioButton
      Left = 84
      Top = 18
      Width = 69
      Height = 17
      Caption = '&Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Rad_ReferClick
    end
  end
  object SqlCdsProduto: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'PTI_CODIGO,'#13#10'PRD_CODIGO,'#13#10'PRD_REFER,'#13#10'PRD_DESCRI,'#13#10'PRD_U' +
      'ND,'#13#10'PRD_ESTOQUE, '#13#10'PRD_PCUSTO,'#13#10'PRD_PMEDIO,'#13#10'PRD_ENTRADA, '#13#10'PRD' +
      '_PENDENTE, '#13#10'PRD_SAIDA, '#13#10'PRD_RESERVA,'#13#10'PRD_EMPENHO,'#13#10'PRD_DCVAR1' +
      ', '#13#10'PRD_DCVAR2, '#13#10'PRD_DCVAR3, '#13#10'PRD_DCVAR4, '#13#10'PRD_DCVAR5,'#13#10'PRD_D' +
      'CVAR6, '#13#10'PRD_DCVAR7, '#13#10'PRD_DCVAR8, '#13#10'PRD_VAR1, '#13#10'PRD_VAR2, '#13#10'PRD' +
      '_VAR3, '#13#10'PRD_VAR4, '#13#10'PRD_VAR5, '#13#10'PRD_VAR6, '#13#10'PRD_VAR7, '#13#10'PRD_VAR' +
      '8, '#13#10'EMP_CODIGO '#13#10'FROM PRD0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    AfterScroll = SqlCdsProdutoAfterScroll
    OnCalcFields = SqlCdsProdutoCalcFields
    CommandText = 
      'SELECT'#13#10'PTI_CODIGO,'#13#10'PRD_CODIGO,'#13#10'PRD_REFER,'#13#10'PRD_DESCRI,'#13#10'PRD_U' +
      'ND,'#13#10'PRD_ESTOQUE, '#13#10'PRD_PCUSTO,'#13#10'PRD_PMEDIO,'#13#10'PRD_ENTRADA, '#13#10'PRD' +
      '_PENDENTE, '#13#10'PRD_SAIDA, '#13#10'PRD_RESERVA,'#13#10'PRD_EMPENHO,'#13#10'PRD_DCVAR1' +
      ', '#13#10'PRD_DCVAR2, '#13#10'PRD_DCVAR3, '#13#10'PRD_DCVAR4, '#13#10'PRD_DCVAR5,'#13#10'PRD_D' +
      'CVAR6, '#13#10'PRD_DCVAR7, '#13#10'PRD_DCVAR8, '#13#10'PRD_VAR1, '#13#10'PRD_VAR2, '#13#10'PRD' +
      '_VAR3, '#13#10'PRD_VAR4, '#13#10'PRD_VAR5, '#13#10'PRD_VAR6, '#13#10'PRD_VAR7, '#13#10'PRD_VAR' +
      '8, '#13#10'EMP_CODIGO '#13#10'FROM PRD0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 411
    Top = 96
    object SqlCdsProdutoPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object SqlCdsProdutoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object SqlCdsProdutoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsProdutoPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsProdutoPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
    end
    object SqlCdsProdutoPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsProdutoPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsProdutoPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      DisplayFormat = '#,###0.000'
      Precision = 15
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
    object SqlCdsProdutoPRD_VAR1: TFMTBCDField
      FieldName = 'PRD_VAR1'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsProdutoPRD_VAR2: TFMTBCDField
      FieldName = 'PRD_VAR2'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsProdutoPRD_VAR3: TFMTBCDField
      FieldName = 'PRD_VAR3'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsProdutoPRD_VAR4: TFMTBCDField
      FieldName = 'PRD_VAR4'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsProdutoPRD_VAR5: TFMTBCDField
      FieldName = 'PRD_VAR5'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsProdutoPRD_VAR6: TFMTBCDField
      FieldName = 'PRD_VAR6'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsProdutoPRD_VAR7: TFMTBCDField
      FieldName = 'PRD_VAR7'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsProdutoPRD_VAR8: TFMTBCDField
      FieldName = 'PRD_VAR8'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsProdutoPRD_FISICO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRD_FISICO_CC'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      currency = False
      Calculated = True
    end
    object SqlCdsProdutoPRD_ANTECIPADO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRD_ANTECIPADO_CC'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      currency = False
      Calculated = True
    end
    object SqlCdsProdutoPRD_SAIDA_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PRD_SAIDA_CC'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      currency = False
      Calculated = True
    end
    object SqlCdsProdutoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsProdutoPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsProdutoPRD_RESERVA: TFMTBCDField
      FieldName = 'PRD_RESERVA'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsProdutoPRD_EMPENHO: TFMTBCDField
      FieldName = 'PRD_EMPENHO'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsProdutoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 80
    end
    object SqlCdsProdutoPRD_PMEDIO: TFMTBCDField
      FieldName = 'PRD_PMEDIO'
      Precision = 15
      Size = 4
    end
  end
  object DsProduto: TDataSource
    DataSet = SqlCdsProduto
    Left = 441
    Top = 96
  end
  object SqlCdsParametros: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select EMP_CODIGO, PMT_VARIACOES from PRMT0001'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select EMP_CODIGO, PMT_VARIACOES from PRMT0001'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 414
    Top = 8
    object SqlCdsParametrosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsParametrosPMT_VARIACOES: TStringField
      FieldName = 'PMT_VARIACOES'
      Size = 1
    end
  end
  object SqlCdsPrdManut: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'E1.* ,'#13#10'A1.AMX_DESCRI,'#13#10'  case E1.PES_TIPO'#13#10'    when '#39'E'#39 +
      ' then '#39'Entrada'#39#13#10'    when '#39'S'#39' then '#39'Sa'#237'da'#39#13#10'  end as PES_TIPO_CA' +
      #13#10'from PRD_ENSA E1'#13#10'left join ALMOX0000 A1 on (A1.AMX_CODIGO = E' +
      '1.AMX_CODIGO)'#13#10'Order by E1.PES_DATA'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsPrdManutCalcFields
    CommandText = 
      'select'#13#10'E1.* ,'#13#10'A1.AMX_DESCRI,'#13#10'  case E1.PES_TIPO'#13#10'    when '#39'E'#39 +
      ' then '#39'Entrada'#39#13#10'    when '#39'S'#39' then '#39'Sa'#237'da'#39#13#10'  end as PES_TIPO_CA' +
      #13#10'from PRD_ENSA E1'#13#10'left join ALMOX0000 A1 on (A1.AMX_CODIGO = E' +
      '1.AMX_CODIGO)'#13#10'Order by E1.PES_DATA'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 256
    Top = 280
    object SqlCdsPrdManutPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsPrdManutPES_TIPO: TStringField
      FieldName = 'PES_TIPO'
      Size = 1
    end
    object SqlCdsPrdManutPES_QTDE: TFMTBCDField
      FieldName = 'PES_QTDE'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsPrdManutPES_NUMDOC: TStringField
      FieldName = 'PES_NUMDOC'
      Size = 6
    end
    object SqlCdsPrdManutPES_TIPDOC: TStringField
      FieldName = 'PES_TIPDOC'
      Size = 2
    end
    object SqlCdsPrdManutPES_DATA: TSQLTimeStampField
      FieldName = 'PES_DATA'
    end
    object SqlCdsPrdManutEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsPrdManutPES_ORIGEM: TStringField
      FieldName = 'PES_ORIGEM'
      Size = 10
    end
    object SqlCdsPrdManutPES_VALOR: TFMTBCDField
      FieldName = 'PES_VALOR'
      DisplayFormat = '#,####0.0000'
      Precision = 15
    end
    object SqlCdsPrdManutPES_VAR1: TFMTBCDField
      FieldName = 'PES_VAR1'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsPrdManutPES_VAR2: TFMTBCDField
      FieldName = 'PES_VAR2'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsPrdManutPES_VAR3: TFMTBCDField
      FieldName = 'PES_VAR3'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsPrdManutPES_VAR4: TFMTBCDField
      FieldName = 'PES_VAR4'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsPrdManutPES_VAR5: TFMTBCDField
      FieldName = 'PES_VAR5'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsPrdManutPES_VAR6: TFMTBCDField
      FieldName = 'PES_VAR6'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsPrdManutPES_VAR7: TFMTBCDField
      FieldName = 'PES_VAR7'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsPrdManutPES_VAR8: TFMTBCDField
      FieldName = 'PES_VAR8'
      DisplayFormat = '#,###0.000'
      Precision = 15
    end
    object SqlCdsPrdManutPES_REGISTRO: TIntegerField
      FieldName = 'PES_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlCdsPrdManutAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 3
    end
    object SqlCdsPrdManutFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlCdsPrdManutAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      ProviderFlags = []
      Size = 35
    end
    object SqlCdsPrdManutPES_IPI: TFMTBCDField
      FieldName = 'PES_IPI'
      Precision = 15
    end
    object SqlCdsPrdManutPES_TIPO_CA: TStringField
      FieldName = 'PES_TIPO_CA'
      FixedChar = True
      Size = 7
    end
    object SqlCdsPrdManutPES_IPI_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PES_IPI_CC'
      DisplayFormat = '#,####0.0000'
      Calculated = True
    end
    object SqlCdsPrdManutPES_FLAG_ACERTO: TStringField
      FieldName = 'PES_FLAG_ACERTO'
      Size = 1
    end
    object SqlCdsPrdManutPES_FLAG_CONTA: TStringField
      FieldName = 'PES_FLAG_CONTA'
      Size = 1
    end
    object SqlCdsPrdManutPES_HORA: TTimeField
      FieldName = 'PES_HORA'
    end
    object SqlCdsPrdManutCONTA_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'CONTA_CC'
      Size = 3
      Calculated = True
    end
    object SqlCdsPrdManutPES_KARDEX_TIPO: TStringField
      FieldName = 'PES_KARDEX_TIPO'
      Size = 1
    end
    object SqlCdsPrdManutKARDEX_TIPO: TStringField
      FieldKind = fkCalculated
      FieldName = 'KARDEX_TIPO'
      Size = 10
      Calculated = True
    end
    object SqlCdsPrdManutPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsPrdManutPRD_FISICO_CC: TBCDField
      FieldKind = fkCalculated
      FieldName = 'PRD_FISICO_CC'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
      Calculated = True
    end
    object SqlCdsPrdManutPES_CUSTO_AGREGADO: TFMTBCDField
      FieldName = 'PES_CUSTO_AGREGADO'
      Precision = 15
      Size = 4
    end
    object SqlCdsPrdManutPES_COMCREDITO: TFMTBCDField
      FieldName = 'PES_COMCREDITO'
      Precision = 15
      Size = 4
    end
    object SqlCdsPrdManutPES_KARDEX_OBS: TStringField
      FieldName = 'PES_KARDEX_OBS'
      Size = 80
    end
    object SqlCdsPrdManutUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      DisplayFormat = '000'
    end
    object SqlCdsPrdManutUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Size = 15
    end
  end
  object DsPrdManut: TDataSource
    DataSet = SqlCdsPrdManut
    Left = 288
    Top = 280
  end
  object SqlCdsTipos: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from PRD_TIPO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from PRD_TIPO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 447
    Top = 8
    object SqlCdsTiposPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsTiposPTI_DESCRI: TStringField
      DisplayWidth = 100
      FieldName = 'PTI_DESCRI'
      Size = 100
    end
    object SqlCdsTiposEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
end
