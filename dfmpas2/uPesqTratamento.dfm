inherited frmPesqTratamento: TfrmPesqTratamento
  Caption = 'Tratamento superficial'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited tsNotas: TTabSheet
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
            FieldName = 'TSU_CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TSU_NOME'
            Title.Caption = 'Descri'#231#227'o'
            Width = 570
            Visible = True
          end>
      end
    end
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoTSU_CODIGO: TIntegerField
      FieldName = 'TSU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsBuscoTSU_NOME: TStringField
      FieldName = 'TSU_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
  end
end
