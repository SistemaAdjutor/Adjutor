object fmAnimacao: TfmAnimacao
  Left = 0
  Top = 0
  Align = alClient
  AlphaBlend = True
  AlphaBlendValue = 200
  BorderStyle = bsNone
  ClientHeight = 255
  ClientWidth = 830
  Color = clWindowFrame
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 48
    Top = 113
    Width = 737
    Height = 41
    BevelOuter = bvNone
    Caption = 'Buscando Informa'#231#245'es. Aguarde, isto poder'#225' demorar um pouco...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Timer1: TTimer
    Left = 48
    Top = 40
  end
end
