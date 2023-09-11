object FrmRenovar: TFrmRenovar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Renovando'
  ClientHeight = 248
  ClientWidth = 613
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 31
    Height = 13
    Caption = 'Prazo:'
  end
  object lAssunto: TLabel
    Left = 12
    Top = 42
    Width = 43
    Height = 13
    Caption = 'Assunto:'
  end
  object dataPrazo: TJvDateTimePicker
    Left = 45
    Top = 14
    Width = 97
    Height = 21
    Date = 43319.492059722220000000
    Time = 43319.492059722220000000
    TabOrder = 0
    OnChange = dataPrazoChange
    DropDownDate = 43319.000000000000000000
  end
  object HoraPrazo: TJvDateTimePicker
    Left = 144
    Top = 14
    Width = 57
    Height = 21
    Date = 43319.492096817130000000
    Format = 'HH:mm'
    Time = 43319.492096817130000000
    Kind = dtkTime
    TabOrder = 1
    OnChange = HoraPrazoChange
    DropDownDate = 43319.000000000000000000
  end
  object mAssunto: TMemo
    Left = 8
    Top = 61
    Width = 601
    Height = 142
    CharCase = ecUpperCase
    Lines.Strings = (
      'RENOVA'#199#195'O')
    TabOrder = 2
  end
  object btnConfirma: TButton
    Left = 400
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 3
    OnClick = btnConfirmaClick
  end
  object btnCancela: TButton
    Left = 491
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = btnCancelaClick
  end
end
