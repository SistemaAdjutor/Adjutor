inherited frmCSOSN: TfrmCSOSN
  BorderIcons = [biSystemMenu]
  Caption = 'frmCSOSN'
  FormStyle = fsMDIChild
  Visible = True
  ExplicitWidth = 691
  ExplicitHeight = 493
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited tsNotas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 667
      inherited pnControle: TPanel
        inherited pnFiltro: TPanel
          Width = 585
          ExplicitWidth = 585
          inherited pn1: TPanel
            Width = 585
            ExplicitWidth = 585
            inherited btnPesquisa: TSpeedButton
              Left = 473
              Top = 17
              ExplicitLeft = 473
              ExplicitTop = 17
            end
            inherited btnLimpar: TSpeedButton
              Left = 473
              Top = 43
              ExplicitLeft = 473
              ExplicitTop = 43
            end
            object lbl1: TLabel
              Left = 372
              Top = 17
              Width = 63
              Height = 13
              Caption = 'Ordenar por:'
            end
            object EDT1: TLabeledEdit
              Left = 16
              Top = 30
              Width = 353
              Height = 21
              EditLabel.Width = 145
              EditLabel.Height = 13
              EditLabel.Caption = 'C'#243'digo ou Descri'#231#227'o CSONSN:'
              LabelSpacing = 0
              TabOrder = 0
            end
            object cbb1: TComboBox
              Left = 372
              Top = 30
              Width = 95
              Height = 21
              TabOrder = 1
              Text = 'CEST'
              Items.Strings = (
                'C'#243'digo'
                'Descri'#231#227'o')
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'CSON_ID'
            Title.Caption = 'id#'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSON_COD'
            Title.Caption = 'C'#243'digo CSOSN'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CSON_DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Visible = True
          end>
      end
    end
  end
  inherited qBusco: TSQLQuery
    SQL.Strings = (
      'select * from CSON0000 WHERE CSON_ID=0')
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoCSON_ID: TIntegerField
      FieldName = 'CSON_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBuscoCSON_COD: TStringField
      FieldName = 'CSON_COD'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsBuscoCSON_DESCRICAO: TStringField
      FieldName = 'CSON_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 115
    end
  end
end
