inherited frmIssMunicipios: TfrmIssMunicipios
  Caption = 'Pesquisa de Tributos de Munic'#237'pios'
  ClientWidth = 616
  ExplicitWidth = 632
  ExplicitHeight = 493
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 616
    ExplicitWidth = 616
    inherited btnFechar: TSpeedButton
      Left = 552
      ExplicitLeft = 552
    end
    inherited btnImprime: TSpeedButton
      Left = 395
      ExplicitLeft = 395
    end
    inherited btnExcel: TSpeedButton
      Left = 474
      ExplicitLeft = 474
    end
  end
  inherited PageControl1: TPageControl
    Width = 616
    ExplicitWidth = 616
    inherited tsNotas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 608
      inherited pnControle: TPanel
        Width = 608
        ExplicitWidth = 608
        inherited pnFiltro: TPanel
          Width = 608
          Height = 79
          Align = alClient
          ExplicitWidth = 608
          ExplicitHeight = 79
          inherited pn1: TPanel
            Top = 0
            Width = 608
            Height = 79
            Align = alClient
            ExplicitTop = 0
            ExplicitWidth = 608
            ExplicitHeight = 79
            inherited btnPesquisa: TSpeedButton
              Left = 503
              ExplicitLeft = 503
            end
            inherited btnLimpar: TSpeedButton
              Left = 503
              ExplicitLeft = 503
            end
            object LabeledEdit1: TLabeledEdit
              Left = 16
              Top = 32
              Width = 329
              Height = 21
              EditLabel.Width = 87
              EditLabel.Height = 13
              EditLabel.Caption = 'Cidade (munic'#237'pio)'
              TabOrder = 0
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Width = 608
        Columns = <
          item
            Expanded = False
            FieldName = 'ISS_CODIGO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ISS_MUNICIPIO'
            Title.Caption = 'Munic'#237'pio'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ISS_UF'
            Title.Caption = 'UF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ISS_PGRC_ISS'
            Title.Caption = 'Aliq ISS'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ISS_PERCENT_INSS'
            Title.Caption = 'Aliq INSS'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ISS_PERCENT_CSLL'
            Title.Caption = 'Aliq CSLL'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ISS_PERCENT_IR'
            Title.Caption = 'Aliq IR'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ISS_PERCENT_PIS'
            Title.Caption = 'Aliq PIS'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ISS_PERCENT_COFINS'
            Title.Caption = 'Aliq COFINS'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_CODIGO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CID_CODIGO'
            Visible = False
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Width = 616
    ExplicitWidth = 616
    inherited btnSelect: TSpeedButton
      Left = 468
      ExplicitLeft = 468
    end
  end
  inherited qBusco: TSQLQuery
    SQL.Strings = (
      'select * from ISS0000')
    Left = 268
    Top = 233
    object qBuscoISS_CODIGO: TStringField
      FieldName = 'ISS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object qBuscoISS_MUNICIPIO: TStringField
      DisplayWidth = 50
      FieldName = 'ISS_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qBuscoISS_UF: TStringField
      FieldName = 'ISS_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object qBuscoISS_PGRC_ISS: TFMTBCDField
      FieldName = 'ISS_PGRC_ISS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.00'
      Precision = 15
    end
    object qBuscoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qBuscoCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
    end
    object qBuscoISS_PERCENT_INSS: TFMTBCDField
      FieldName = 'ISS_PERCENT_INSS'
      Precision = 18
      Size = 5
    end
    object qBuscoISS_PERCENT_CSLL: TFMTBCDField
      FieldName = 'ISS_PERCENT_CSLL'
      Precision = 18
      Size = 5
    end
    object qBuscoISS_PERCENT_IR: TFMTBCDField
      FieldName = 'ISS_PERCENT_IR'
      Precision = 18
      Size = 5
    end
    object qBuscoISS_PERCENT_PIS: TFMTBCDField
      FieldName = 'ISS_PERCENT_PIS'
      Precision = 18
      Size = 5
    end
    object qBuscoISS_PERCENT_COFINS: TFMTBCDField
      FieldName = 'ISS_PERCENT_COFINS'
      Precision = 18
      Size = 5
    end
  end
  inherited dspBusco: TDataSetProvider
    Left = 316
    Top = 217
  end
  inherited cdsBusco: TClientDataSet
    Left = 348
    Top = 209
    object cdsBuscoISS_CODIGO: TStringField
      FieldName = 'ISS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object cdsBuscoISS_MUNICIPIO: TStringField
      DisplayWidth = 50
      FieldName = 'ISS_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsBuscoISS_UF: TStringField
      FieldName = 'ISS_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsBuscoISS_PGRC_ISS: TFMTBCDField
      FieldName = 'ISS_PGRC_ISS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.00'
      Precision = 15
    end
    object cdsBuscoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsBuscoCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
    end
    object cdsBuscoISS_PERCENT_INSS: TFMTBCDField
      FieldName = 'ISS_PERCENT_INSS'
      Precision = 18
      Size = 5
    end
    object cdsBuscoISS_PERCENT_CSLL: TFMTBCDField
      FieldName = 'ISS_PERCENT_CSLL'
      Precision = 18
      Size = 5
    end
    object cdsBuscoISS_PERCENT_IR: TFMTBCDField
      FieldName = 'ISS_PERCENT_IR'
      Precision = 18
      Size = 5
    end
    object cdsBuscoISS_PERCENT_PIS: TFMTBCDField
      FieldName = 'ISS_PERCENT_PIS'
      Precision = 18
      Size = 5
    end
    object cdsBuscoISS_PERCENT_COFINS: TFMTBCDField
      FieldName = 'ISS_PERCENT_COFINS'
      Precision = 18
      Size = 5
    end
  end
  inherited dsBusca: TDataSource
    Left = 404
    Top = 208
  end
end
