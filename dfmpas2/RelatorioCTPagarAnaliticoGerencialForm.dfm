inherited FrmRelatorioCTPagarAnaliticoGerencial: TFrmRelatorioCTPagarAnaliticoGerencial
  Caption = 'FrmRelatorioCTPagarAnaliticoGerencial'
  ClientHeight = 565
  ClientWidth = 1616
  ExplicitWidth = 1632
  ExplicitHeight = 603
  PixelsPerInch = 96
  TextHeight = 13
  inherited rpMain: TRLReport
    Top = 8
    Width = 1123
    Height = 794
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    DataSource = DsPag00
    PageSetup.Orientation = poLandscape
    ExplicitTop = 8
    ExplicitWidth = 1123
    ExplicitHeight = 794
    inherited RLBand1: TRLBand
      Width = 1085
      ExplicitWidth = 1085
      inherited RLSystemInfo4: TRLSystemInfo
        Left = 978
        ExplicitLeft = 978
      end
      inherited RLSystemInfo3: TRLSystemInfo
        Left = 978
        ExplicitLeft = 978
      end
    end
    inherited rlFooterRel: TRLBand
      Top = 126
      Width = 1085
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      ExplicitTop = 126
      ExplicitWidth = 1085
    end
    object RLBand2: TRLBand
      Left = 19
      Top = 83
      Width = 1085
      Height = 30
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLMemo1: TRLMemo
        Left = 3
        Top = 8
        Width = 65
        Height = 12
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Vencimento')
        ParentFont = False
      end
      object RLMemo2: TRLMemo
        Left = 71
        Top = 8
        Width = 65
        Height = 24
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Pagamento'
          '')
        ParentFont = False
      end
      object RLMemo3: TRLMemo
        Left = 144
        Top = 8
        Width = 65
        Height = 24
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Fornecedor'
          '')
        ParentFont = False
      end
      object RLMemo4: TRLMemo
        Left = 361
        Top = 4
        Width = 116
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Descri'#231#227'o / Observa'#231#227'o'
          'da conta')
        ParentFont = False
      end
      object RLMemo5: TRLMemo
        Left = 514
        Top = 6
        Width = 74
        Height = 12
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'VLR Bruto')
        ParentFont = False
      end
      object RLMemo6: TRLMemo
        Left = 592
        Top = 4
        Width = 74
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Previsto M'#234's'
          '& Realizado')
        ParentFont = False
      end
      object RLMemo7: TRLMemo
        Left = 668
        Top = 4
        Width = 74
        Height = 36
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Previs'#227'o Para o'
          'M'#234's Seguinte'
          '')
        ParentFont = False
      end
      object RLMemo8: TRLMemo
        Left = 748
        Top = 4
        Width = 34
        Height = 24
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Conta'
          'Custos')
        ParentFont = False
      end
      object RLMemo9: TRLMemo
        Left = 786
        Top = 4
        Width = 112
        Height = 24
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Descri'#231#227'o da Conta '
          'Plano de Contas')
        ParentFont = False
      end
      object RLMemo10: TRLMemo
        Left = 993
        Top = 8
        Width = 89
        Height = 12
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'An'#225'lise')
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 19
      Top = 113
      Width = 1085
      Height = 13
      object RLDBText2: TRLDBText
        Left = 3
        Top = 1
        Width = 65
        Height = 10
        AutoSize = False
        DataField = 'PPC_VENCTO'
        DataSource = DsPag00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 144
        Top = 1
        Width = 212
        Height = 10
        AutoSize = False
        DataField = 'FOR_RAZAO'
        DataSource = DsPag00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 361
        Top = 1
        Width = 147
        Height = 10
        AutoSize = False
        DataField = 'PPC_OBS'
        DataSource = DsPag00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 748
        Top = 1
        Width = 34
        Height = 10
        AutoSize = False
        DataField = 'CCT_CODIGO'
        DataSource = DsPag00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 786
        Top = 1
        Width = 201
        Height = 10
        AutoSize = False
        DataField = 'CCT_DESCRI'
        DataSource = DsPag00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText11: TRLDBText
        Left = 73
        Top = 1
        Width = 65
        Height = 10
        AutoSize = False
        DataField = 'PPC_PAGTO'
        DataSource = DsPag00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
  end
  
  object DsPag00: TDataSource
    AutoEdit = False
    DataSet = FormGImpPagar.cdsPag
    Left = 1328
    Top = 112
  end
end
