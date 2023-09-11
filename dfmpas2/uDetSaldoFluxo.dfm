inherited frmDetSaldoFluxo: TfrmDetSaldoFluxo
  Caption = 'Detalhe do saldo do fluxo de caixa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    inherited btnExclui: TSpeedButton
      Visible = False
    end
    inherited btnNovo: TSpeedButton
      Visible = False
    end
    inherited btnEdita: TSpeedButton
      Visible = False
    end
  end
  inherited PageControl1: TPageControl
    inherited tsNotas: TTabSheet
      ExplicitHeight = 0
      inherited pnControle: TPanel
        Visible = False
      end
      inherited DBGrid: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'VALOR'
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BANCO'
            Width = 202
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCR'
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    object Label1: TLabel
      Left = 216
      Top = 10
      Width = 33
      Height = 13
      Caption = 'Saldo :'
    end
    object DBEdit1: TDBEdit
      Left = 263
      Top = 7
      Width = 121
      Height = 21
      DataField = 'TOTAL_PREV'
      DataSource = dsBusca
      TabOrder = 0
    end
  end
  inherited cdsBusco: TClientDataSet
    AggregatesActive = True
    object cdsBuscoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
    end
    object cdsBuscoBANCO: TStringField
      FieldName = 'BANCO'
      Size = 100
    end
    object cdsBuscoDESCR: TStringField
      FieldName = 'DESCR'
      Size = 100
    end
    object cdsBuscoDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsBuscoTOTAL_PREV: TAggregateField
      FieldName = 'TOTAL_PREV'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(VALOR)'
    end
  end
end
