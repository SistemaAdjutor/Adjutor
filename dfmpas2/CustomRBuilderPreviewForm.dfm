inherited frmBase1: TfrmBase1
  Caption = 'FrmCustomRBuilderPreview'
  ClientHeight = 570
  ClientWidth = 1841
  ExplicitWidth = 1857
  ExplicitHeight = 608
  PixelsPerInch = 96
  TextHeight = 13
  
  object ppViewer1: TppViewer [1]
    Left = 0
    Top = 41
    Width = 1841
    Height = 514
    Align = alClient
    BevelOuter = bvNone
    Color = clBtnShadow
    DeadSpace = 30
    PageColor = clWhite
    ZoomPercentage = 100
    ZoomSetting = zsWholePage
    ExplicitTop = 47
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 1841
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitLeft = 96
    ExplicitTop = 208
    ExplicitWidth = 185
    object BitBtn1: TBitBtn
      Left = 48
      Top = 10
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 0
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 560
    Top = 144
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 1776
    Top = 256
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    IniStorageType = 'IniFile'
    IniStorageName = '($LocalAppData)\RBuilder\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 696
    Top = 144
  end
end
