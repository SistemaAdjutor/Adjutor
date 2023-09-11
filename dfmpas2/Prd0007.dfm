object FormPrdFiltro: TFormPrdFiltro
  Left = 209
  Top = 104
  Width = 336
  Height = 137
  Caption = 'FILTRA PRODUTOS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 328
    Height = 110
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 2
    TabOrder = 0
    object Label22: TLabel
      Left = 8
      Top = 11
      Width = 34
      Height = 13
      Caption = 'Tipo :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 7
      Top = 76
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = 'Padr'#227'o sem Filtro|'
      Caption = '&Padr'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkAll
    end
    object Bit_Aplicar: TBitBtn
      Left = 135
      Top = 76
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = '&Aplicar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Bit_AplicarClick
      Kind = bkOK
    end
    object Bit_Cancelar: TBitBtn
      Left = 230
      Top = 76
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Bit_CancelarClick
      Kind = bkCancel
    end
    object DBLKcboxPti_codigo: TDBLookupComboBox
      Left = 44
      Top = 8
      Width = 270
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'PTI_CODIGO'
      ListField = 'PTI_DESCRI'
      ListSource = DataModulo.DsPrdTipo
      ParentFont = False
      TabOrder = 3
    end
  end
end
