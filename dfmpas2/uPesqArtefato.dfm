inherited frmPesqArtefato: TfrmPesqArtefato
  Caption = 'Tipo Produto'
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
            FieldName = 'ART_CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ART_NOME'
            Title.Caption = 'Nome'
            Visible = True
          end>
      end
    end
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoART_CODIGO: TIntegerField
      FieldName = 'ART_CODIGO'
    end
    object cdsBuscoART_NOME: TStringField
      FieldName = 'ART_NOME'
      Size = 100
    end
  end
end
