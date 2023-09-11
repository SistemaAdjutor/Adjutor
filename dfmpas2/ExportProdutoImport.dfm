inherited frmExportProdutoImportLeiaute: TfrmExportProdutoImportLeiaute
  Caption = 'frmExportProdutoImportLeiaute'
  ClientWidth = 888
  ExplicitWidth = 896
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 888
    inherited btnFechar: TSpeedButton
      Left = 824
    end
    inherited btnImprime: TSpeedButton
      Left = 667
    end
    inherited btnExcel: TSpeedButton
      Left = 746
    end
  end
  inherited PageControl1: TPageControl
    Width = 888
    inherited tsNotas: TTabSheet
      inherited pnControle: TPanel
        Width = 880
      end
      inherited DBGrid: TDBGrid
        Width = 880
        Columns = <
          item
            Expanded = False
            FieldName = 'PRD_REFER'
            Title.Caption = 'Refer'#234'ncia'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_DESCRI'
            Title.Caption = 'Descri'#231#227'o'
            Width = 256
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
            FieldName = 'PRD_COMPL'
            Title.Caption = 'Complemento'
            Width = 151
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IPI_CODIGO'
            Title.Caption = 'NCM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEST_COD'
            Title.Caption = 'CEST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PTI_CODIGO'
            Title.Caption = 'Tipo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIN_DESCRI'
            Title.Caption = 'Linha'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PGR_DESCRI'
            Title.Caption = 'Grupo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_PCUSTO'
            Title.Caption = 'Pre'#231'o custo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_MARGEMVENDA'
            Title.Caption = 'Margem'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_PVENDA'
            Title.Caption = 'Venda'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUE'
            Title.Caption = 'Estoque'
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Width = 888
    inherited btnSelect: TSpeedButton
      Left = 740
    end
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
    object cdsBuscoPRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      Size = 500
    end
    object cdsBuscoCEST_COD: TStringField
      FieldName = 'CEST_COD'
      Size = 7
    end
    object cdsBuscoPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object cdsBuscoPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
    end
    object cdsBuscoPRD_MARGEMVENDA: TFMTBCDField
      FieldName = 'PRD_MARGEMVENDA'
      Precision = 15
    end
    object cdsBuscoPRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      Precision = 15
    end
    object cdsBuscoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 15
    end
    object cdsBuscoLIN_DESCRI: TStringField
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object cdsBuscoPGR_DESCRI: TStringField
      FieldName = 'PGR_DESCRI'
      Size = 25
    end
  end
end
