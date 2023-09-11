inherited frmPesqOrigemCliente: TfrmPesqOrigemCliente
  Caption = 'Cadastro de Origem do cliente'
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
          Width = 667
          Height = 79
          Align = alClient
          ExplicitWidth = 667
          ExplicitHeight = 79
          inherited pn1: TPanel
            Top = 0
            Width = 667
            Height = 79
            Align = alClient
            ExplicitTop = 0
            ExplicitWidth = 667
            ExplicitHeight = 79
            inherited btnPesquisa: TSpeedButton
              Left = 568
              Top = 7
              ExplicitLeft = 568
              ExplicitTop = 7
            end
            inherited btnLimpar: TSpeedButton
              Left = 568
              Top = 33
              ExplicitLeft = 568
              ExplicitTop = 33
            end
            object LabeledEdit1: TLabeledEdit
              Left = 16
              Top = 30
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
        Columns = <
          item
            Expanded = False
            FieldName = 'CORI_CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CORI_DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Visible = True
          end>
      end
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 408
    Top = 0
  end
  inherited qAux: TSQLQuery
    Left = 290
    Top = 65533
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoCORI_CODIGO: TIntegerField
      FieldName = 'CORI_CODIGO'
    end
    object cdsBuscoCORI_DESCRICAO: TStringField
      FieldName = 'CORI_DESCRICAO'
      Size = 150
    end
  end
end
