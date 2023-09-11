object FormSenha: TFormSenha
  Left = 170
  Top = 116
  BorderStyle = bsNone
  Caption = 'FormSenha'
  ClientHeight = 110
  ClientWidth = 349
  Color = clRed
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 2
    Top = 2
    Width = 345
    Height = 106
    Color = clInfoText
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 19
      Width = 48
      Height = 13
      Caption = 'Usuário:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 23
      Top = 62
      Width = 41
      Height = 13
      Caption = 'Senha:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 64
      Top = 16
      Width = 257
      Height = 19
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 64
      Top = 59
      Width = 97
      Height = 19
      TabOrder = 1
      Text = ' * * * * * * * * * * *'
    end
  end
end
