object FrmTemp: TFrmTemp
  Left = 187
  Top = 178
  Width = 524
  Height = 260
  Caption = 'Mostrar os Dados do Componente Temporario'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 516
    Height = 205
    Align = alTop
    DataSource = DsTemp
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BtnSair: TButton
    Left = 192
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = BtnSairClick
  end
  object DsTemp: TDataSource
    AutoEdit = False
    Left = 224
    Top = 64
  end
end
