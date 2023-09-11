inherited frmPesqServico: TfrmPesqServico
  Caption = 'Cadastro de item de servi'#231'os'
  ExplicitWidth = 691
  ExplicitHeight = 493
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited tsNotas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 667
      inherited pnControle: TPanel
        inherited pnFiltro: TPanel
          Width = 667
          Height = 79
          Align = alClient
          ExplicitWidth = 667
          ExplicitHeight = 79
          inherited pn1: TPanel
            Top = 0
            Width = 667
            Height = 79
            Align = alClient
            ExplicitTop = 0
            ExplicitWidth = 667
            ExplicitHeight = 79
            inherited btnPesquisa: TSpeedButton
              Left = 506
              Anchors = [akTop, akRight]
              ExplicitLeft = 506
            end
            inherited btnLimpar: TSpeedButton
              Left = 506
              Anchors = [akTop, akRight]
              ExplicitLeft = 506
            end
            object LabeledEdit1: TLabeledEdit
              Left = 16
              Top = 30
              Width = 313
              Height = 21
              EditLabel.Width = 87
              EditLabel.Height = 13
              EditLabel.Caption = 'C'#243'digo/Descri'#231#227'o:'
              LabelSpacing = 0
              TabOrder = 0
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'SRV_CODIGO'
            Title.Caption = 'Item'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoservico'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SRV_DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Visible = True
          end>
      end
    end
  end
  inherited qBusco: TSQLQuery
    SQL.Strings = (
      'SELECT SRV_REGISTRO,SRV_CODIGO,SRV_DESCRICAO FROM SRV0000')
    object qBuscoSRV_REGISTRO: TIntegerField
      FieldName = 'SRV_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qBuscoSRV_CODIGO: TStringField
      FieldName = 'SRV_CODIGO'
      Size = 5
    end
    object qBuscoSRV_DESCRICAO: TStringField
      FieldName = 'SRV_DESCRICAO'
      Size = 500
    end
    object qBuscocodigoservico: TStringField
      FieldName = 'codigoservico'
      Size = 5
    end
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoSRV_REGISTRO: TIntegerField
      FieldName = 'SRV_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsBuscoSRV_CODIGO: TStringField
      FieldName = 'SRV_CODIGO'
      Size = 5
    end
    object cdsBuscoSRV_DESCRICAO: TStringField
      FieldName = 'SRV_DESCRICAO'
      Size = 500
    end
    object cdsBuscocodigoservico: TStringField
      FieldName = 'codigoservico'
    end
  end
end
