inherited FrmDiretivasItem: TFrmDiretivasItem
  Caption = 'FrmDiretivasItem'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited tsNotas: TTabSheet
      Caption = 'Diretivas para o Item: XXXXXX'
      ExplicitHeight = 0
      inherited pnControle: TPanel
        Visible = False
        inherited pnFiltro: TPanel
          inherited pn1: TPanel
            object edPRF_REGISTRO: TEdit
              Left = 40
              Top = 24
              Width = 105
              Height = 21
              TabOrder = 0
              Text = 'edPRF_REGISTRO'
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'PRDD_REGISTRO'
            Title.Caption = 'C'#243'digo '
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDD_DESCRICAO'
            Title.Caption = 'Descri'#231#227'o:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDD_SIGLA'
            Title.Caption = 'Sigla:'
            Visible = True
          end>
      end
    end
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoPRDD_REGISTRO: TIntegerField
      FieldName = 'PRDD_REGISTRO'
      Required = True
    end
    object cdsBuscoPRDD_DESCRICAO: TStringField
      FieldName = 'PRDD_DESCRICAO'
      Size = 100
    end
    object cdsBuscoPRDD_SIGLA: TStringField
      FieldName = 'PRDD_SIGLA'
      Size = 5
    end
    object cdsBuscoPDI_REGISTRO: TIntegerField
      FieldName = 'PDI_REGISTRO'
    end
  end
end
