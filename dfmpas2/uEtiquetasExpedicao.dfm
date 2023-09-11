object FrmEtiquetasExpedicao: TFrmEtiquetasExpedicao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Etiquetas'
  ClientHeight = 234
  ClientWidth = 538
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GrBEtiqueta: TGroupBox
    Left = 2
    Top = 3
    Width = 265
    Height = 150
    Caption = 'Etiquetas de volumes da nota'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label9: TLabel
      Left = 25
      Top = 19
      Width = 59
      Height = 14
      Caption = 'Nota Fiscal :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 21
      Top = 46
      Width = 63
      Height = 14
      Caption = 'Destinat'#225'rio :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 42
      Top = 75
      Width = 42
      Height = 14
      Caption = 'Destino :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 3
      Top = 103
      Width = 81
      Height = 14
      Caption = 'Transportadora :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 12
      Top = 127
      Width = 72
      Height = 14
      Caption = 'QUANTIDADE :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object EdtNf: TEdit
      Left = 90
      Top = 16
      Width = 44
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 14145495
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object EditCli: TEdit
      Left = 90
      Top = 43
      Width = 168
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 14145495
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EditDestino: TEdit
      Left = 90
      Top = 71
      Width = 168
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 14145495
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object EditQtdeEtiquetas: TSpinEdit
      Left = 90
      Top = 124
      Width = 87
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 3
      Value = 0
    end
  end
  object grpMensagem: TGroupBox
    Left = 8
    Top = 157
    Width = 530
    Height = 44
    Caption = 'Mensagem'
    TabOrder = 1
    Visible = False
    object edtMensagem: TEdit
      Left = 6
      Top = 17
      Width = 512
      Height = 21
      MaxLength = 50
      TabOrder = 0
    end
  end
  object BitImprimeEtiq: TBitBtn
    Left = 365
    Top = 207
    Width = 80
    Height = 25
    Caption = '&Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitImprimeEtiqClick
  end
  object BitEtiqFechar: TBitBtn
    Left = 451
    Top = 206
    Width = 80
    Height = 25
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitEtiqFecharClick
  end
  object Gb_Estilo_Etiqueta: TGroupBox
    Left = 273
    Top = 2
    Width = 261
    Height = 149
    Caption = 'Tipo da Etiqueta'
    TabOrder = 4
    object rbModelo1: TRadioButton
      Left = 6
      Top = 18
      Width = 231
      Height = 17
      Caption = 'Modelo 1 - Argox (9,50 x 8,50 cm)'
      TabOrder = 0
    end
    object rbModelo2: TRadioButton
      Left = 7
      Top = 41
      Width = 231
      Height = 17
      Caption = 'Modelo 2 - Argox (9,50 x 8,50 cm)'
      TabOrder = 1
    end
  end
  object EditTransp: TEdit
    Left = 92
    Top = 102
    Width = 168
    Height = 22
    TabStop = False
    CharCase = ecUpperCase
    Color = 14145495
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object ACBrETQ: TACBrETQ
    Modelo = etqPpla
    Porta = '\\localhost\Argox'
    Ativo = False
    Left = 296
    Top = 192
  end
end
