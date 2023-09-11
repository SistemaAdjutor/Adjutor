inherited FrmExportCodForn: TFrmExportCodForn
  Left = 350
  Top = 242
  Caption = 'FrmExportCodForn'
  ClientWidth = 1191
  ExplicitWidth = 1207
  ExplicitHeight = 493
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 1191
    ExplicitWidth = 1191
    inherited btnFechar: TSpeedButton
      Left = 1127
      ExplicitLeft = 1127
    end
    inherited btnImprime: TSpeedButton
      Left = 972
      ExplicitLeft = 972
    end
    inherited btnExcel: TSpeedButton
      Left = 1049
      ExplicitLeft = 1049
    end
  end
  inherited PageControl1: TPageControl
    Width = 1191
    ExplicitWidth = 1191
    inherited tsNotas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1183
      inherited pnControle: TPanel
        Width = 1183
        ExplicitWidth = 1183
      end
      inherited DBGrid: TDBGrid
        Width = 1183
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
            FieldName = 'PRDC_REFERENCIA'
            Title.Caption = 'Refer'#234'ncia Fornecedor'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FOR_CGC'
            Title.Caption = 'CNPJ Fornecedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_RAZAO'
            Title.Caption = 'Raz'#227'o Social Fornecedor'
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1191
    ExplicitWidth = 1191
    inherited btnSelect: TSpeedButton
      Left = 1052
      ExplicitLeft = 1052
    end
  end
  inherited qBusco: TSQLQuery
    SQL.Strings = (
      
        'select A.PRD_CODIGO, A.PRD_REFER, A.PRD_DESCRI, B.for_codigo, B.' +
        'prdc_referencia, B.prdc_desscricao, c.for_cgc, C.for_razao'
      'From PRD0000 A'
      'JOIN prd0000_codigo B ON B.prd_codigo=A.PRD_CODIGO'
      'left join for0000 C on C.for_codigo=B.for_codigo'
      'order by PRD_REFER, b.for_codigo')
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
    object cdsBuscoFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 10
    end
    object cdsBuscoPRDC_REFERENCIA: TStringField
      FieldName = 'PRDC_REFERENCIA'
      Size = 30
    end
    object cdsBuscoPRDC_DESSCRICAO: TStringField
      FieldName = 'PRDC_DESSCRICAO'
      Size = 500
    end
    object cdsBuscoFOR_CGC: TStringField
      FieldName = 'FOR_CGC'
      OnGetText = cdsBuscoFOR_CGCGetText
      Size = 14
    end
    object cdsBuscoFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
  end
end
