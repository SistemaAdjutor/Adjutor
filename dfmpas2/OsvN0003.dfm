object FormConsultaOSV: TFormConsultaOSV
  Left = 170
  Top = 328
  BorderIcons = [biSystemMenu]
  ClientHeight = 70
  ClientWidth = 531
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Grp_Pesquisa: TGroupBox
    Left = 0
    Top = 8
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
    TabOrder = 0
    object Rd_OS: TRadioButton
      Left = 8
      Top = 13
      Width = 45
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
  object Grp_filtra: TGroupBox
    Left = 150
    Top = 8
    Width = 273
    Height = 49
    Caption = 'Grp_filtra'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Edt_Nome: TEdit
      Left = 4
      Top = 20
      Width = 264
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
    Left = 424
    Top = 35
    Width = 100
    Height = 21
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitCancelarClick
  end
  object BitPesquisar: TBitBtn
    Left = 424
    Top = 14
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
end
