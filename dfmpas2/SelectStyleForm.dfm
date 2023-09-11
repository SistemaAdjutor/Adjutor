object FrmSelectStyle: TFrmSelectStyle
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Altera'#231#227'o de Estilo.'
  ClientHeight = 211
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 72
    Width = 86
    Height = 13
    Caption = 'Selecione o Estilo:'
  end
  object ComboBox1: TComboBox
    Left = 30
    Top = 88
    Width = 353
    Height = 21
    TabOrder = 0
    Text = 'ComboBox1'
  end
  object Button1: TButton
    Left = 230
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Aplicar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 308
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
    OnClick = Button2Click
  end
end
