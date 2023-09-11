inherited FrmExportProdutoExcel: TFrmExportProdutoExcel
  Caption = 'FrmExportProdutoExcel'
  ExplicitWidth = 691
  ExplicitHeight = 493
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited tsNotas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 667
      inherited DBGrid: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'PRD_REFER'
            Title.Caption = 'Refer'#234'ncia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_DESCRI'
            Title.Caption = 'Descri'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_UND'
            Title.Caption = 'Unidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IPI_CODIGO'
            Title.Caption = 'NCM'
            Visible = True
          end>
      end
    end
  end
  inherited qBusco: TSQLQuery
    SQL.Strings = (
      'select'
      'PRD_CODIGO,'
      'PRD_REFER,'
      'PRD_DESCRI,'
      'PRD_UND,'
      'IPI_CODIGO'
      'From PRD0000'
      'order by PRD_REFER'
      '')
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 5
    end
    object cdsBuscoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object cdsBuscoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object cdsBuscoPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object cdsBuscoIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
  end
end
