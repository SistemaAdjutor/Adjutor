object FormComprar: TFormComprar
  Left = 248
  Top = 243
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Altere a quantidade '#224' Comprar'
  ClientHeight = 128
  ClientWidth = 580
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 572
    Height = 95
    Caption = 'Produto'
    TabOrder = 0
    object Label1: TLabel
      Left = 55
      Top = 22
      Width = 55
      Height = 13
      Caption = 'Refer'#234'ncia:'
    end
    object Label2: TLabel
      Left = 29
      Top = 44
      Width = 80
      Height = 13
      Caption = 'Qtde de Compra:'
    end
    object Label3: TLabel
      Left = 5
      Top = 68
      Width = 104
      Height = 13
      Caption = 'Qtde nova '#224' Comprar:'
    end
    object DBEdit1: TDBEdit
      Left = 111
      Top = 18
      Width = 107
      Height = 21
      Color = 14145495
      DataField = 'Referencia'
      DataSource = FormPrevisaoProducao.DsComprar
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 220
      Top = 18
      Width = 346
      Height = 21
      Color = 14145495
      DataField = 'Descricao'
      DataSource = FormPrevisaoProducao.DsComprar
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 111
      Top = 41
      Width = 107
      Height = 21
      Color = 14145495
      DataField = 'Comprar'
      DataSource = FormPrevisaoProducao.DsComprar
      TabOrder = 2
    end
    object RxCalcComprar: TRxCalcEdit
      Left = 111
      Top = 65
      Width = 130
      Height = 21
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,#0.000'
      NumGlyphs = 2
      TabOrder = 3
      OnEnter = RxCalcComprarEnter
      OnExit = RxCalcComprarExit
    end
  end
  object BitConfirma: TBitBtn
    Left = 2
    Top = 100
    Width = 102
    Height = 25
    Caption = 'Confir&mar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitConfirmaClick
  end
  object BitCancelar: TBitBtn
    Left = 103
    Top = 100
    Width = 100
    Height = 25
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitCancelarClick
  end
end
