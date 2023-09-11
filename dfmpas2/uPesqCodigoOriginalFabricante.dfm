inherited frmCodOriginalFabricante: TfrmCodOriginalFabricante
  Caption = 'C'#243'digo dos fabricantes'
  ClientWidth = 510
  ExplicitWidth = 526
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 510
    ExplicitWidth = 510
    inherited tsNotas: TTabSheet
      ExplicitWidth = 502
      inherited pnControle: TPanel
        Width = 502
        ExplicitWidth = 502
        inherited pnFiltro: TPanel
          Width = 502
          Align = alTop
          ExplicitWidth = 502
          inherited pn1: TPanel
            Top = 0
            Width = 502
            Height = 76
            Align = alClient
            ExplicitTop = 0
            ExplicitWidth = 502
            ExplicitHeight = 76
            inherited btnPesquisa: TSpeedButton
              Left = 401
              Anchors = [akTop, akRight]
              ExplicitLeft = 488
            end
            inherited btnLimpar: TSpeedButton
              Left = 401
              Anchors = [akTop, akRight]
              ExplicitLeft = 488
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
        Width = 502
        Columns = <
          item
            Expanded = False
            FieldName = 'PRDCO_CODIGO_ORIGINAL'
            Title.Caption = 'C'#243'digo'
            Width = 209
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDCO_DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 273
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Width = 510
    ExplicitWidth = 510
    inherited btnSelect: TSpeedButton
      Left = 362
      Visible = True
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 232
    Top = 0
  end
  inherited qAux: TSQLQuery
    Left = 282
    Top = 65533
  end
  inherited qAux2: TSQLQuery
    Left = 322
    Top = 4
  end
  inherited qAux3: TSQLQuery
    Top = 12
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoPRDCO_REGISTRO: TIntegerField
      FieldName = 'PRDCO_REGISTRO'
    end
    object cdsBuscoPRDCO_CODIGO_ORIGINAL: TStringField
      FieldName = 'PRDCO_CODIGO_ORIGINAL'
      Size = 60
    end
    object cdsBuscoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 6
    end
    object cdsBuscoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object cdsBuscoPRDCO_DESCRICAO: TStringField
      FieldName = 'PRDCO_DESCRICAO'
      Size = 60
    end
    object cdsBuscoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
  end
  inherited mnuGridPesquisa: TPopupMenu
    Left = 380
  end
end
