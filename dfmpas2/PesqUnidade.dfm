inherited frmCadUnidadeMedida: TfrmCadUnidadeMedida
  Caption = 'Unidades de medida'
  ClientWidth = 836
  ExplicitWidth = 844
  ExplicitHeight = 482
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 836
    ExplicitWidth = 836
    inherited btnFechar: TSpeedButton
      Left = 772
      ExplicitLeft = 772
    end
    inherited btnImprime: TSpeedButton
      Left = 615
      ExplicitLeft = 615
    end
    inherited btnExcel: TSpeedButton
      Left = 694
      ExplicitLeft = 694
    end
  end
  inherited PageControl1: TPageControl
    Width = 836
    ExplicitWidth = 836
    inherited tsNotas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 828
      inherited pnControle: TPanel
        Width = 828
        ExplicitWidth = 828
        inherited pnFiltro: TPanel
          inherited pn1: TPanel
            object LabeledEdit1: TLabeledEdit
              Left = 24
              Top = 32
              Width = 361
              Height = 21
              EditLabel.Width = 46
              EditLabel.Height = 13
              EditLabel.Caption = 'Descri'#231#227'o'
              TabOrder = 0
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Width = 828
        Columns = <
          item
            Expanded = False
            FieldName = 'PRD_UNISIGLA'
            Title.Caption = 'Sigla'
            Width = 141
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_UNIDESCRI'
            Title.Caption = 'Descri'#231#227'o'
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Width = 836
    ExplicitWidth = 836
    inherited btnSelect: TSpeedButton
      Left = 688
      ExplicitLeft = 688
    end
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoPRD_UNISIGLA: TStringField
      FieldName = 'PRD_UNISIGLA'
      Size = 6
    end
    object cdsBuscoPRD_UNIDESCRI: TStringField
      FieldName = 'PRD_UNIDESCRI'
      Size = 30
    end
    object cdsBuscoPRD_UNICODIGO: TIntegerField
      FieldName = 'PRD_UNICODIGO'
    end
  end
end
