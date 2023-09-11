object FormGImpPedidos: TFormGImpPedidos
  Left = 262
  Top = 233
  BorderStyle = bsSingle
  Caption = 'FormGImpPedidos'
  ClientHeight = 84
  ClientWidth = 230
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Btn_Imprimir: TBitBtn
    Left = 8
    Top = 5
    Width = 217
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 0
    OnClick = Btn_ImprimirClick
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 30
    Width = 217
    Height = 25
    Caption = '&Enviar para Planilha do Excel'
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 55
    Width = 217
    Height = 25
    Caption = '&Sair'
    TabOrder = 2
  end
end
