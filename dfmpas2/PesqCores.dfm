inherited frmPesqCores: TfrmPesqCores
  Caption = 'Cores'
  ExplicitWidth = 683
  ExplicitHeight = 482
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited tsNotas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 667
      inherited pnControle: TPanel
        inherited pnFiltro: TPanel
          inherited pn1: TPanel
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
            FieldName = 'ACO_CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ACO_NOME'
            Title.Caption = 'Descri'#231#227'o'
            Width = 528
            Visible = True
          end>
      end
    end
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoACO_CODIGO: TIntegerField
      FieldName = 'ACO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsBuscoACO_NOME: TStringField
      FieldName = 'ACO_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
end
