inherited fmPesqColaborador: TfmPesqColaborador
  Caption = 'Colaborador'
  ClientWidth = 848
  ExplicitWidth = 864
  ExplicitHeight = 493
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 848
    inherited btnFechar: TSpeedButton
      Left = 784
    end
    inherited btnImprime: TSpeedButton
      Left = 627
    end
    inherited btnExcel: TSpeedButton
      Left = 706
    end
  end
  inherited PageControl1: TPageControl
    Width = 848
    inherited tsNotas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 667
      inherited pnControle: TPanel
        Width = 840
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
        Width = 840
        Columns = <
          item
            Expanded = False
            FieldName = 'COL_CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COL_NOME'
            Title.Caption = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COL_FUNC'
            Title.Caption = 'Fun'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COL_SETOR'
            Title.Caption = 'Setor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COL_SALARIO_HORA'
            Title.Caption = 'Sal'#225'rio/hora'
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Width = 848
    inherited btnSelect: TSpeedButton
      Left = 700
    end
  end
  inherited qBusco: TSQLQuery
    SQL.Strings = (
      'select * from colaborador')
    object qBuscoCOL_CODIGO: TIntegerField
      FieldName = 'COL_CODIGO'
      Required = True
    end
    object qBuscoCOL_NOME: TStringField
      FieldName = 'COL_NOME'
      Size = 40
    end
    object qBuscoCOL_FUNC: TStringField
      FieldName = 'COL_FUNC'
      Size = 30
    end
    object qBuscoCOL_SETOR: TStringField
      FieldName = 'COL_SETOR'
      Size = 30
    end
    object qBuscoCOL_SALARIO_HORA: TFMTBCDField
      FieldName = 'COL_SALARIO_HORA'
      Precision = 18
      Size = 5
    end
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoCOL_CODIGO: TIntegerField
      FieldName = 'COL_CODIGO'
      Required = True
    end
    object cdsBuscoCOL_NOME: TStringField
      FieldName = 'COL_NOME'
      Size = 40
    end
    object cdsBuscoCOL_FUNC: TStringField
      FieldName = 'COL_FUNC'
      Size = 30
    end
    object cdsBuscoCOL_SETOR: TStringField
      FieldName = 'COL_SETOR'
      Size = 30
    end
    object cdsBuscoCOL_SALARIO_HORA: TFMTBCDField
      FieldName = 'COL_SALARIO_HORA'
      Precision = 18
      Size = 5
    end
  end
end
