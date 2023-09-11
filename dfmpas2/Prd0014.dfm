object FrmAcertoEstoque: TFrmAcertoEstoque
  Left = 224
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Acerto Manual do Estoque - Balan'#231'o Inicial'
  ClientHeight = 593
  ClientWidth = 791
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupDados: TGroupBox
    Left = 0
    Top = 122
    Width = 791
    Height = 87
    Color = clBtnFace
    ParentColor = False
    TabOrder = 3
    object Label9: TLabel
      Left = 2
      Top = 61
      Width = 96
      Height = 13
      Alignment = taRightJustify
      Caption = 'Saldo do Acerto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 216
      Top = 61
      Width = 73
      Height = 13
      Caption = 'Data Acerto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 11
      Top = 37
      Width = 87
      Height = 13
      Caption = 'Saldo Estoque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 408
      Top = 61
      Width = 73
      Height = 13
      Caption = 'Hora Acerto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CSaldoAcerto: TCurrencyEdit
      Left = 98
      Top = 58
      Width = 95
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ZeroEmpty = False
    end
    object DataMovimento: TDateEdit
      Left = 290
      Top = 58
      Width = 92
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      GlyphKind = gkDropDown
      NumGlyphs = 1
      ParentFont = False
      TabOrder = 1
    end
    object CurrSaldoInicial: TCurrencyEdit
      Left = 98
      Top = 34
      Width = 95
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      ZeroEmpty = False
      OnExit = CurrVar1Exit
    end
    object CurrEntrada: TCurrencyEdit
      Left = 194
      Top = 34
      Width = 95
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      ZeroEmpty = False
      OnExit = CurrVar1Exit
    end
    object CurrSaida: TCurrencyEdit
      Left = 290
      Top = 34
      Width = 95
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      ZeroEmpty = False
      OnExit = CurrVar1Exit
    end
    object CurrReservado: TCurrencyEdit
      Left = 386
      Top = 34
      Width = 95
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      ZeroEmpty = False
      OnExit = CurrVar1Exit
    end
    object CurrEmpenhado: TCurrencyEdit
      Left = 482
      Top = 34
      Width = 95
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      ZeroEmpty = False
      OnExit = CurrVar1Exit
    end
    object Panel10: TPanel
      Left = 98
      Top = 12
      Width = 95
      Height = 21
      BevelOuter = bvLowered
      Caption = 'Saldo Inicial'
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object Panel11: TPanel
      Left = 194
      Top = 12
      Width = 95
      Height = 21
      BevelOuter = bvLowered
      Caption = 'Entrada'
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object Panel12: TPanel
      Left = 290
      Top = 12
      Width = 95
      Height = 21
      BevelOuter = bvLowered
      Caption = 'Sa'#237'da'
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object Panel13: TPanel
      Left = 386
      Top = 12
      Width = 95
      Height = 21
      BevelOuter = bvLowered
      Caption = 'Reservado'
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object Panel14: TPanel
      Left = 482
      Top = 12
      Width = 95
      Height = 21
      BevelOuter = bvLowered
      Caption = 'Empenhado'
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object Panel15: TPanel
      Left = 578
      Top = 12
      Width = 95
      Height = 21
      BevelOuter = bvLowered
      Caption = 'Saldo Estoque'
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object CurrSaldo: TCurrencyEdit
      Left = 578
      Top = 34
      Width = 95
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
      ZeroEmpty = False
      OnExit = CurrVar1Exit
    end
    object PanHora: TPanel
      Left = 482
      Top = 58
      Width = 95
      Height = 21
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = '00:00:00'
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
  end
  object GrpCodigo: TGroupBox
    Left = 0
    Top = 56
    Width = 791
    Height = 73
    TabOrder = 0
    object lbl_almox: TLabel
      Left = 17
      Top = 43
      Width = 63
      Height = 13
      Caption = 'Almoxarifado:'
    end
    object Label1: TLabel
      Left = 27
      Top = 19
      Width = 55
      Height = 13
      Caption = 'Refer'#234'ncia:'
    end
    object SpPesquisa: TSpeedButton
      Left = 747
      Top = 14
      Width = 26
      Height = 26
      Hint = 'Busca Produto'
      Flat = True
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C8C311F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7CCE39734E08211F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C2C7F8665734E08211F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C2C7F8665734E08211F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C2C7F8665734E1F7C1042CE398C311F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C2C7F104210423E53FF67BF6710422925
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C794EBF67FF67FF67FF7FFF7F524A
        8C311F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C3E53BF67FF67FF67FF7FFF7FFF67
        29251F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CBF673F4FBF67FF67FF7FFF67FF67
        4A291F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CBF67BF673F4FFF67FF67FF67FF67
        4A291F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C794EFF7FBF67BF673F4FBF67794E
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C794EFF67FF67FF673E531F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpPesquisaClick
    end
    object Edt_Refer: TEdit
      Left = 83
      Top = 16
      Width = 114
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 12
      ParentFont = False
      TabOrder = 0
      OnEnter = Edt_ReferEnter
      OnExit = Edt_ReferExit
      OnKeyPress = Edt_ReferKeyPress
    end
    object Edt_Descri: TEdit
      Left = 197
      Top = 16
      Width = 548
      Height = 21
      TabStop = False
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 50
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object CurrAlmox: TCurrencyEdit
      Left = 83
      Top = 40
      Width = 38
      Height = 21
      Alignment = taCenter
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0000'
      MaxLength = 3
      TabOrder = 2
      OnExit = CurrAlmoxExit
    end
    object Cb_Almox: TComboBox
      Left = 122
      Top = 40
      Width = 438
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 30
      TabOrder = 3
      OnClick = Cb_AlmoxClick
      OnExit = Cb_AlmoxExit
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 791
    Height = 60
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 2
    object LblMensagem: TLabel
      Left = 10
      Top = 9
      Width = 297
      Height = 26
      Caption = 
        'Acerto do Saldo do Produto'#13#10'Essa opera'#231#227'o atualiza o Estoque Ini' +
        'cial do produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ImgLog: TImage
      Left = 734
      Top = 2
      Width = 55
      Height = 56
      Align = alRight
    end
    object Label2: TLabel
      Left = 10
      Top = 38
      Width = 574
      Height = 13
      Caption = 
        'As movimenta'#231#245'es anteriores do Estoque ser'#227'o desconsideradas ini' +
        'ciando um novo saldo do produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GrpVariacao: TGroupBox
    Left = 0
    Top = 210
    Width = 791
    Height = 131
    Caption = 'Varia'#231#245'es'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label3: TLabel
      Left = 5
      Top = 31
      Width = 62
      Height = 13
      Caption = 'Descri'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 12
      Top = 78
      Width = 55
      Height = 13
      Caption = 'Qtde Var:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 101
      Width = 59
      Height = 13
      Caption = 'Soma Var:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 55
      Width = 60
      Height = 13
      Caption = 'Saldo Var:'
    end
    object DBEdit1: TDBEdit
      Left = 67
      Top = 29
      Width = 90
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PRD_DCVAR1'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 157
      Top = 29
      Width = 90
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PRD_DCVAR2'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 247
      Top = 29
      Width = 90
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PRD_DCVAR3'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 337
      Top = 29
      Width = 90
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PRD_DCVAR4'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 427
      Top = 29
      Width = 90
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PRD_DCVAR5'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 517
      Top = 29
      Width = 90
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PRD_DCVAR6'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 607
      Top = 29
      Width = 90
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PRD_DCVAR7'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 697
      Top = 29
      Width = 90
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PRD_DCVAR8'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object CurrVar1: TCurrencyEdit
      Left = 67
      Top = 75
      Width = 90
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      ZeroEmpty = False
      OnExit = CurrVar1Exit
    end
    object CurrVar2: TCurrencyEdit
      Left = 157
      Top = 75
      Width = 90
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      ZeroEmpty = False
      OnExit = CurrVar2Exit
    end
    object CurrVar3: TCurrencyEdit
      Left = 247
      Top = 75
      Width = 90
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      ZeroEmpty = False
      OnExit = CurrVar3Exit
    end
    object CurrVar4: TCurrencyEdit
      Left = 337
      Top = 75
      Width = 90
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      ZeroEmpty = False
      OnExit = CurrVar4Exit
    end
    object CurrVar5: TCurrencyEdit
      Left = 427
      Top = 75
      Width = 90
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      ZeroEmpty = False
      OnExit = CurrVar5Exit
    end
    object CurrVar6: TCurrencyEdit
      Left = 517
      Top = 75
      Width = 90
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      ZeroEmpty = False
      OnExit = CurrVar6Exit
    end
    object CurrVar7: TCurrencyEdit
      Left = 607
      Top = 75
      Width = 90
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      ZeroEmpty = False
      OnExit = CurrVar7Exit
    end
    object CurrVar8: TCurrencyEdit
      Left = 697
      Top = 75
      Width = 90
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      ZeroEmpty = False
      OnExit = CurrVar8Exit
    end
    object CurrTotal: TCurrencyEdit
      Left = 67
      Top = 98
      Width = 90
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
      ZeroEmpty = False
    end
    object Panel1: TPanel
      Left = 67
      Top = 11
      Width = 90
      Height = 19
      Caption = 'Varia'#231#227'o 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
    end
    object Panel2: TPanel
      Left = 157
      Top = 11
      Width = 90
      Height = 19
      Caption = 'Varia'#231#227'o 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
    end
    object Panel3: TPanel
      Left = 247
      Top = 11
      Width = 90
      Height = 19
      Caption = 'Varia'#231#227'o 3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
    end
    object Panel4: TPanel
      Left = 337
      Top = 11
      Width = 90
      Height = 19
      Caption = 'Varia'#231#227'o 4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
    end
    object Panel6: TPanel
      Left = 427
      Top = 11
      Width = 90
      Height = 19
      Caption = 'Varia'#231#227'o 5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
    end
    object Panel7: TPanel
      Left = 517
      Top = 11
      Width = 90
      Height = 19
      Caption = 'Varia'#231#227'o 6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
    end
    object Panel8: TPanel
      Left = 607
      Top = 11
      Width = 90
      Height = 19
      Caption = 'Varia'#231#227'o 7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 23
    end
    object Panel9: TPanel
      Left = 697
      Top = 11
      Width = 90
      Height = 19
      Caption = 'Varia'#231#227'o 8'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 24
    end
    object DBEdit9: TDBEdit
      Left = 67
      Top = 52
      Width = 90
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PRD_VAR1'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 25
    end
    object DBEdit10: TDBEdit
      Left = 157
      Top = 52
      Width = 90
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PRD_VAR2'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 26
    end
    object DBEdit11: TDBEdit
      Left = 247
      Top = 52
      Width = 90
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PRD_VAR3'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 27
    end
    object DBEdit12: TDBEdit
      Left = 337
      Top = 52
      Width = 90
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PRD_VAR4'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 28
    end
    object DBEdit13: TDBEdit
      Left = 427
      Top = 52
      Width = 90
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PRD_VAR5'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 29
    end
    object DBEdit14: TDBEdit
      Left = 517
      Top = 52
      Width = 90
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PRD_VAR6'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 30
    end
    object DBEdit15: TDBEdit
      Left = 607
      Top = 52
      Width = 90
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PRD_VAR7'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 31
    end
    object DBEdit16: TDBEdit
      Left = 697
      Top = 52
      Width = 90
      Height = 21
      TabStop = False
      Color = 14145495
      DataField = 'PRD_VAR8'
      DataSource = DsProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 32
    end
  end
  object Pn_Botoes: TPanel
    Left = 508
    Top = 344
    Width = 281
    Height = 33
    Cursor = crHandPoint
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Pn_Botoes'
    Color = 12681984
    TabOrder = 1
    object Bit_Cancelar: TBitBtn
      Left = 96
      Top = 4
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
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
      TabOrder = 0
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Confirma: TBitBtn
      Left = 6
      Top = 4
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&C&onfirma'
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
      TabOrder = 1
      TabStop = False
      OnClick = Bit_ConfirmaClick
    end
    object Bit_Sair: TBitBtn
      Left = 186
      Top = 4
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
      TabOrder = 2
      TabStop = False
      OnClick = Bit_SairClick
    end
  end
  object SqlProduto: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select '#13#10'P1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_ESTOQUE,'#13#10'P1.PRD_' +
      'ENTRADA,'#13#10'P1.PRD_SAIDA,'#13#10'P1.PRD_RESERVA,'#13#10'P1.PRD_EMPENHO,'#13#10'P1.PR' +
      'D_DCVAR1,'#13#10'P1.PRD_DCVAR2,'#13#10'P1.PRD_DCVAR3,'#13#10'P1.PRD_DCVAR4,'#13#10'P1.PR' +
      'D_DCVAR5,'#13#10'P1.PRD_DCVAR6,'#13#10'P1.PRD_DCVAR7,'#13#10'P1.PRD_DCVAR8,'#13#10'P1.PR' +
      'D_VAR1,'#13#10'P1.PRD_VAR2,'#13#10'P1.PRD_VAR3,'#13#10'P1.PRD_VAR4,'#13#10'P1.PRD_VAR5,'#13 +
      #10'P1.PRD_VAR6,'#13#10'P1.PRD_VAR7,'#13#10'P1.PRD_VAR8,'#13#10'P1.PRD_RESERVA_VAR1,'#13 +
      #10'P1.PRD_RESERVA_VAR2,'#13#10'P1.PRD_RESERVA_VAR3,'#13#10'P1.PRD_RESERVA_VAR4' +
      ','#13#10'P1.PRD_RESERVA_VAR5,'#13#10'P1.PRD_RESERVA_VAR6,'#13#10'P1.PRD_RESERVA_VA' +
      'R7,'#13#10'P1.PRD_RESERVA_VAR8'#13#10'from PRD0000 P1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select '#13#10'P1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_ESTOQUE,'#13#10'P1.PRD_' +
      'ENTRADA,'#13#10'P1.PRD_SAIDA,'#13#10'P1.PRD_RESERVA,'#13#10'P1.PRD_EMPENHO,'#13#10'P1.PR' +
      'D_DCVAR1,'#13#10'P1.PRD_DCVAR2,'#13#10'P1.PRD_DCVAR3,'#13#10'P1.PRD_DCVAR4,'#13#10'P1.PR' +
      'D_DCVAR5,'#13#10'P1.PRD_DCVAR6,'#13#10'P1.PRD_DCVAR7,'#13#10'P1.PRD_DCVAR8,'#13#10'P1.PR' +
      'D_VAR1,'#13#10'P1.PRD_VAR2,'#13#10'P1.PRD_VAR3,'#13#10'P1.PRD_VAR4,'#13#10'P1.PRD_VAR5,'#13 +
      #10'P1.PRD_VAR6,'#13#10'P1.PRD_VAR7,'#13#10'P1.PRD_VAR8,'#13#10'P1.PRD_RESERVA_VAR1,'#13 +
      #10'P1.PRD_RESERVA_VAR2,'#13#10'P1.PRD_RESERVA_VAR3,'#13#10'P1.PRD_RESERVA_VAR4' +
      ','#13#10'P1.PRD_RESERVA_VAR5,'#13#10'P1.PRD_RESERVA_VAR6,'#13#10'P1.PRD_RESERVA_VA' +
      'R7,'#13#10'P1.PRD_RESERVA_VAR8'#13#10'from PRD0000 P1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 196
    Top = 94
    object SqlProdutoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlProdutoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlProdutoPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      Precision = 15
    end
    object SqlProdutoPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      Precision = 15
    end
    object SqlProdutoPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      Precision = 15
    end
    object SqlProdutoPRD_RESERVA: TFMTBCDField
      FieldName = 'PRD_RESERVA'
      Precision = 15
    end
    object SqlProdutoPRD_EMPENHO: TFMTBCDField
      FieldName = 'PRD_EMPENHO'
      Precision = 15
    end
    object SqlProdutoPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object SqlProdutoPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object SqlProdutoPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object SqlProdutoPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object SqlProdutoPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object SqlProdutoPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object SqlProdutoPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object SqlProdutoPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
    object SqlProdutoPRD_VAR1: TFMTBCDField
      FieldName = 'PRD_VAR1'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object SqlProdutoPRD_VAR2: TFMTBCDField
      FieldName = 'PRD_VAR2'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object SqlProdutoPRD_VAR3: TFMTBCDField
      FieldName = 'PRD_VAR3'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object SqlProdutoPRD_VAR4: TFMTBCDField
      FieldName = 'PRD_VAR4'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object SqlProdutoPRD_VAR5: TFMTBCDField
      FieldName = 'PRD_VAR5'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object SqlProdutoPRD_VAR6: TFMTBCDField
      FieldName = 'PRD_VAR6'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object SqlProdutoPRD_VAR7: TFMTBCDField
      FieldName = 'PRD_VAR7'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object SqlProdutoPRD_VAR8: TFMTBCDField
      FieldName = 'PRD_VAR8'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object SqlProdutoPRD_RESERVA_VAR1: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR1'
      Precision = 15
      Size = 4
    end
    object SqlProdutoPRD_RESERVA_VAR2: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR2'
      Precision = 15
      Size = 4
    end
    object SqlProdutoPRD_RESERVA_VAR3: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR3'
      Precision = 15
      Size = 4
    end
    object SqlProdutoPRD_RESERVA_VAR4: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR4'
      Precision = 15
      Size = 4
    end
    object SqlProdutoPRD_RESERVA_VAR5: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR5'
      Precision = 15
      Size = 4
    end
    object SqlProdutoPRD_RESERVA_VAR6: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR6'
      Precision = 15
      Size = 4
    end
    object SqlProdutoPRD_RESERVA_VAR7: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR7'
      Precision = 15
      Size = 4
    end
    object SqlProdutoPRD_RESERVA_VAR8: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR8'
      Precision = 15
      Size = 4
    end
  end
  object SqlCdsAlmox: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select A1.AMX_CODIGO, A1.AMX_DESCRI from ALMOX0000 A1'#13#10'Order By ' +
      'A1.AMX_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select A1.AMX_CODIGO, A1.AMX_DESCRI from ALMOX0000 A1'#13#10'Order By ' +
      'A1.AMX_DESCRI'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 377
    Top = 95
    object SqlCdsAlmoxAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsAlmoxAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 60
    end
  end
  object DsProduto: TDataSource
    DataSet = SqlProduto
    Left = 248
    Top = 95
  end
  object TimeHoraAcerto: TTimer
    Enabled = False
    OnTimer = TimeHoraAcertoTimer
    Left = 552
    Top = 96
  end
  object SqlAtualizaFlag: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.*'#13#10'FROM'#13#10'PRD_ENSA T1'#13#10'WHERE'#13#10'T1.PES_DATA <= '#39'04/19/20' +
      '07'#39#13#10'AND'#13#10'T1.PRD_REFER = '#39'ML8888'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T1.*'#13#10'FROM'#13#10'PRD_ENSA T1'#13#10'WHERE'#13#10'T1.PES_DATA <= '#39'04/19/20' +
      '07'#39#13#10'AND'#13#10'T1.PRD_REFER = '#39'ML8888'#39
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 194
    Top = 348
    object SqlAtualizaFlagPES_REGISTRO: TIntegerField
      FieldName = 'PES_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlAtualizaFlagPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlAtualizaFlagPES_TIPO: TStringField
      FieldName = 'PES_TIPO'
      Size = 1
    end
    object SqlAtualizaFlagPES_QTDE: TFMTBCDField
      FieldName = 'PES_QTDE'
      Precision = 15
      Size = 4
    end
    object SqlAtualizaFlagPES_NUMDOC: TStringField
      FieldName = 'PES_NUMDOC'
      Size = 8
    end
    object SqlAtualizaFlagPES_TIPDOC: TStringField
      FieldName = 'PES_TIPDOC'
      Size = 2
    end
    object SqlAtualizaFlagPES_DATA: TSQLTimeStampField
      FieldName = 'PES_DATA'
    end
    object SqlAtualizaFlagEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlAtualizaFlagPES_ORIGEM: TStringField
      FieldName = 'PES_ORIGEM'
      Size = 10
    end
    object SqlAtualizaFlagPES_VALOR: TFMTBCDField
      FieldName = 'PES_VALOR'
      Precision = 15
      Size = 4
    end
    object SqlAtualizaFlagPES_VAR1: TFMTBCDField
      FieldName = 'PES_VAR1'
      Precision = 15
      Size = 4
    end
    object SqlAtualizaFlagPES_VAR2: TFMTBCDField
      FieldName = 'PES_VAR2'
      Precision = 15
      Size = 4
    end
    object SqlAtualizaFlagPES_VAR3: TFMTBCDField
      FieldName = 'PES_VAR3'
      Precision = 15
      Size = 4
    end
    object SqlAtualizaFlagPES_VAR4: TFMTBCDField
      FieldName = 'PES_VAR4'
      Precision = 15
      Size = 4
    end
    object SqlAtualizaFlagPES_VAR5: TFMTBCDField
      FieldName = 'PES_VAR5'
      Precision = 15
      Size = 4
    end
    object SqlAtualizaFlagPES_VAR6: TFMTBCDField
      FieldName = 'PES_VAR6'
      Precision = 15
      Size = 4
    end
    object SqlAtualizaFlagPES_VAR7: TFMTBCDField
      FieldName = 'PES_VAR7'
      Precision = 15
      Size = 4
    end
    object SqlAtualizaFlagPES_VAR8: TFMTBCDField
      FieldName = 'PES_VAR8'
      Precision = 15
      Size = 4
    end
    object SqlAtualizaFlagAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 3
    end
    object SqlAtualizaFlagFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlAtualizaFlagPES_IPI: TFMTBCDField
      FieldName = 'PES_IPI'
      Precision = 15
      Size = 4
    end
    object SqlAtualizaFlagPES_FLAG_ACERTO: TStringField
      FieldName = 'PES_FLAG_ACERTO'
      Size = 1
    end
    object SqlAtualizaFlagPES_FLAG_CONTA: TStringField
      FieldName = 'PES_FLAG_CONTA'
      Size = 1
    end
    object SqlAtualizaFlagPES_HORA: TTimeField
      FieldName = 'PES_HORA'
    end
    object SqlAtualizaFlagPES_KARDEX_TIPO: TStringField
      FieldName = 'PES_KARDEX_TIPO'
      Size = 1
    end
    object SqlAtualizaFlagPES_KARDEX_OBS: TStringField
      FieldName = 'PES_KARDEX_OBS'
      Size = 40
    end
    object SqlAtualizaFlagPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
  end
end
