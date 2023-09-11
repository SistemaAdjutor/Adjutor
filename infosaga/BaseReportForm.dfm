inherited frmBaseReport: TfrmBaseReport
  Left = 370
  Top = 169
  Caption = 'frmBaseReport'
  ClientHeight = 472
  ClientWidth = 1028
  Font.Name = 'MS Sans Serif'
  ExplicitTop = 1
  ExplicitWidth = 1044
  ExplicitHeight = 510
  PixelsPerInch = 96
  TextHeight = 13
  object rpMain: TRLReport [0]
    Left = 40
    Top = 24
    Width = 794
    Height = 1123
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -8
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ForcePrepare = False
    PrintDialog = False
    Visible = False
    BeforePrint = rpMainBeforePrint
    object RLBand1: TRLBand
      Left = 19
      Top = 19
      Width = 756
      Height = 64
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand1BeforePrint
      object RLSystemInfo3: TRLSystemInfo
        Left = 649
        Top = 4
        Width = 107
        Height = 14
        Align = faRightOnly
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = 'P'#225'gina:'
      end
      object RLLabel1: TRLLabel
        Left = 384
        Top = 72
        Width = 49
        Height = 13
      end
      object lbEmpresa: TRLLabel
        Left = 110
        Top = 3
        Width = 62
        Height = 14
        Align = faLeftOnly
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object lbTituloRel: TRLLabel
        Left = 110
        Top = 18
        Width = 51
        Height = 14
        Align = faLeftOnly
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object lbLinha1: TRLLabel
        Left = 110
        Top = 32
        Width = 43
        Height = 14
        Align = faLeftOnly
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object lbLinha2: TRLLabel
        Left = 110
        Top = 46
        Width = 43
        Height = 14
        Align = faLeftOnly
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rlPanelLogo: TRLPanel
        Left = 0
        Top = 1
        Width = 110
        Height = 62
        Align = faLeft
        object rlLogo: TRLImage
          Left = 6
          Top = 6
          Width = 99
          Height = 50
          Stretch = True
        end
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 707
        Top = 38
        Width = 49
        Height = 14
        Align = faRightOnly
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itHour
        ParentFont = False
        Text = #224's '
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 680
        Top = 20
        Width = 76
        Height = 14
        Align = faRightOnly
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Emiss'#227'o:'
      end
    end
    object rlFooterRel: TRLBand
      Left = 19
      Top = 83
      Width = 756
      Height = 18
      BandType = btFooter
      Borders.Sides = sdAll
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 872
    Top = 120
  end
  inherited DBConn: TSQLConnection
    Left = 904
  end
  object qBusco: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 780
    Top = 844
  end
  object dspBusco: TDataSetProvider
    DataSet = qBusco
    Left = 844
    Top = 844
  end
  object cdsBusco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBusco'
    Left = 900
    Top = 844
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Author = 'Emplaca WEB'
    DocumentInfo.Creator = 'Fortes Report / Infosaga '
    DocumentInfo.Producer = 'Emplaca'
    DisplayName = 'Documento PDF'
    Left = 847
    Top = 675
  end
end
