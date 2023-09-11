object FrmProjetoObraCusto: TFrmProjetoObraCusto
  Left = 669
  Top = 195
  Caption = 'Custo de Projetos e Obras '
  ClientHeight = 613
  ClientWidth = 972
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 972
    Height = 65
    Align = alTop
    Caption = 'Filtro'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 63
      Height = 14
      Caption = 'Projeto/Obra:'
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 8
      Top = 32
      Properties.ListColumns = <>
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 0
      Width = 409
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 65
    Width = 972
    Height = 184
    Align = alTop
    Caption = 'Receitas'
    TabOrder = 1
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 282
    Width = 972
    Height = 143
    Align = alTop
    Caption = 'Despesas'
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 249
    Width = 972
    Height = 33
    Align = alTop
    TabOrder = 3
  end
  object Panel2: TPanel
    Left = 0
    Top = 425
    Width = 972
    Height = 33
    Align = alTop
    TabOrder = 4
  end
end
