inherited FrmExportProdutoExcel: TFrmExportProdutoExcel
  Caption = 'FrmExportProdutoExcel'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited tsNotas: TTabSheet
      inherited DBGrid: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'PRD_CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_DESCRI'
            Title.Caption = 'Nome'
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IPI_CODIGO'
            Title.Caption = 'Ncm'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PTI_DESCRI'
            Title.Caption = 'Tipo'
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
            FieldName = 'LIN_DESCRI'
            Title.Caption = 'Marca'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_ORIGEM'
            Title.Caption = 'Origem (0 = Nacional,1 = Estrangeira)'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AMX_SALDO_RET'
            Title.Caption = 'Saldo Estoque'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_MINIMO'
            Title.Caption = 'Estoque minimo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDE_ENDERECO'
            Title.Caption = 'Localizacao do estoque'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_PESOLIQ'
            Title.Caption = 'Peso L'#237'quido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_PESOKG'
            Title.Caption = 'Peso Bruto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_PCUSTO'
            Title.Caption = 'Pre'#231'o de Custo'
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
            Title.Caption = 'Pre'#231'o de Venda'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEST_DESCRICAO'
            Title.Caption = 'CEST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_CODBARRA'
            Title.Caption = 'C'#243'digo de Barra'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_BARRA_TRIBUTAVEL'
            Title.Caption = 'C'#243'digo de barra tribut'#225'vel'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_CODIGO'
            Title.Caption = 'C'#243'digo do fornecedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_CGC'
            Title.Caption = 'CNPJ do fornecedor'
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
    object cdsBuscoPRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      Size = 500
    end
    object cdsBuscoIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object cdsBuscoPTI_DESCRI: TStringField
      FieldName = 'PTI_DESCRI'
      Size = 100
    end
    object cdsBuscoPGR_DESCRI: TStringField
      FieldName = 'PGR_DESCRI'
      Size = 25
    end
    object cdsBuscoLIN_DESCRI: TStringField
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object cdsBuscoPRD_ORIGEM: TIntegerField
      FieldName = 'PRD_ORIGEM'
    end
    object cdsBuscoAMX_SALDO_RET: TFMTBCDField
      FieldName = 'AMX_SALDO_RET'
    end
    object cdsBuscoPRD_MINIMO: TFMTBCDField
      FieldName = 'PRD_MINIMO'
    end
    object cdsBuscoPRDE_ENDERECO: TStringField
      FieldName = 'PRDE_ENDERECO'
      Size = 30
    end
    object cdsBuscoPRD_PESOLIQ: TFMTBCDField
      FieldName = 'PRD_PESOLIQ'
    end
    object cdsBuscoPRD_PESOKG: TFMTBCDField
      FieldName = 'PRD_PESOKG'
    end
    object cdsBuscoPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
    end
    object cdsBuscoPRD_MARGEMVENDA: TFMTBCDField
      FieldName = 'PRD_MARGEMVENDA'
    end
    object cdsBuscoPRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
    end
    object cdsBuscoCEST_DESCRICAO: TStringField
      FieldName = 'CEST_DESCRICAO'
      Size = 512
    end
    object cdsBuscoPRD_CODBARRA: TStringField
      FieldName = 'PRD_CODBARRA'
      Size = 13
    end
    object cdsBuscoCOD_BARRA_TRIBUTAVEL: TStringField
      FieldName = 'COD_BARRA_TRIBUTAVEL'
      Size = 1
    end
    object cdsBuscoFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object cdsBuscoFOR_CGC: TStringField
      FieldName = 'FOR_CGC'
      Size = 14
    end
  end
end
