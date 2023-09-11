inherited frmPesqTipoMola: TfrmPesqTipoMola
  Caption = 'Habilitar campos molas'
  ExplicitWidth = 683
  ExplicitHeight = 482
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    inherited btnExclui: TSpeedButton
      Left = 187
      Top = -4
      Transparent = False
      Visible = False
      ExplicitLeft = 187
      ExplicitTop = -4
    end
    inherited btnNovo: TSpeedButton
      Left = 265
      Top = 2
      Visible = False
      ExplicitLeft = 265
      ExplicitTop = 2
    end
    inherited btnEdita: TSpeedButton
      Left = 0
      Top = 1
      ExplicitLeft = 0
      ExplicitTop = 1
    end
  end
  inherited PageControl1: TPageControl
    inherited tsNotas: TTabSheet
      inherited pnControle: TPanel
        inherited pnFiltro: TPanel
          inherited pn1: TPanel
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
        Columns = <
          item
            Expanded = False
            FieldName = 'PTI_CODIGO'
            Title.Caption = 'C'#243'digo'
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PTI_DESCRI'
            Title.Caption = 'Tipo mola'
            Width = 259
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PTI_SIGLA'
            Title.Caption = 'Sigla'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tim_codigo'
            Visible = False
          end>
      end
    end
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object cdsBuscoPTI_DESCRI: TStringField
      DisplayWidth = 100
      FieldName = 'PTI_DESCRI'
      Size = 100
    end
    object cdsBuscoPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object cdsBuscotim_codigo: TIntegerField
      FieldName = 'tim_codigo'
    end
  end
end
