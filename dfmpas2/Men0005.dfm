object FormMenuConfig: TFormMenuConfig
  Left = 1
  Top = 5
  Width = 799
  Height = 570
  BorderIcons = [biSystemMenu]
  Caption = 'Configura'#231#245'es e Parametros do Sistema'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100001000400E80200001600000028000000200000004000
    0000010004000000000000020000000000000000000000000000000000000000
    00000000C00000C0000000C0C000C0000000C000C000C0C00000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    BBB00000000077000008888000000000BBB00000000077000088008800000000
    BBB00000000077000080000800000000BBB00000000088000088008800000000
    BBB00000000077000008888000000000BBB00000000077000000780000000000
    BBB00000000077000000780000000000BBB00000000077000000780000000000
    BBB00000000077000000780000000000BBB00000000077000000780000000000
    BBB00000000077000000780000000000BBB00000000077000000780000000000
    BBB00000000077000000780000000000BBB00000000077000000780000000000
    BBB00000000077000000780000000000BBB00000000077000000780000000000
    BBB00000000087000000780000000000BBB00000000088000000780000000000
    BBB00000000088000000780000000000BBB00000000999900000780000000000
    BBB00000000099000000780000000000BBB00000000099000000780000000000
    BBB00000000999900000780000000000BBB00000000999900000780000000000
    BBB0000000099990000078000000000000000000000999900000780000000000
    8800000000099990000888800000880088880000000999900088008800000000
    0000000000099990008000080000000000000000000999900080000800000000
    000000000009999000080080000000000000000000000000000000000000F1FF
    3E1FF1FF3CCFF1FF3DEFF1FF3CCFF1FF3E1FF1FF3F3FF1FF3F3FF1FF3F3FF1FF
    3F3FF1FF3F3FF1FF3F3FF1FF3F3FF1FF3F3FF1FF3F3FF1FF3F3FF1FF3F3FF1FF
    3F3FF1FF3F3FF1FF3F3FF1FE1F3FF1FF3F3FF1FF3F3FF1FE1F3FF1FE1F3FF1F6
    1F3F20E61F3F000E1E1F001E1CCF203E1DEFFFFE1DEFFFFE1EDFFFFFFFFF}
  Menu = MainMenu1
  OldCreateOrder = True
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 689
    Top = 477
    Width = 85
    Height = 23
     
    Caption = 'Adjutor RW'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Impact'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Transparent = True
  end
  object PnTitulo: TPanel
    Left = 0
    Top = 0
    Width = 775
    Height = 40
    Align = alTop
    Alignment = taRightJustify
    Caption = 'Nome Fantasia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 500
    Width = 775
    Height = 25
    Panels = <
      item
        Alignment = taCenter
        Text = 'MSG:'
        Width = 50
      end
      item
        Alignment = taCenter
        Width = 670
      end
      item
        Width = 50
      end>
    SimplePanel = False
    SizeGrip = False
  end
  object MainMenu1: TMainMenu
    Left = 584
    Top = 72
    object Empresa: TMenuItem
      Caption = '&Empresa'
      object Cadastro1: TMenuItem
        Caption = '&Cadastro'
        OnClick = Cadastro1Click
      end
    end
    object Senhas: TMenuItem
      Caption = '&Senhas'
      Enabled = False
      object Senhasdeusurios1: TMenuItem
        Caption = '&Senhas de usu'#225'rios'
        OnClick = Senhasdeusurios1Click
      end
      object DesabilitarSenhas1: TMenuItem
        Caption = '&Desabilitar Senhas'
      end
    end
    object Configuracoes: TMenuItem
      Caption = 'Configura'#231#245'es'
      Enabled = False
      object Parametrosdosistema1: TMenuItem
        Caption = '&Parametros do sistema'
        OnClick = ParametrosdoSistema1Click
      end
      object CompartilhamentoDB1: TMenuItem
        Caption = '&Compartilhamento DB'
        OnClick = CompartilhamentoDB1Click
      end
    end
    object Sair1: TMenuItem
      Caption = '&Sair'
      OnClick = Sair1Click
    end
  end
end
