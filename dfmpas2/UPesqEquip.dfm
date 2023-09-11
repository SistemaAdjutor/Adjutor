inherited fmPesqEquip: TfmPesqEquip
  Caption = 'Equipamento/M'#225'quina'
  ClientWidth = 846
  Visible = True
  ExplicitWidth = 854
  ExplicitHeight = 482
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 846
    ExplicitWidth = 846
    inherited btnNovo: TSpeedButton
      Left = 2
      ExplicitLeft = 2
    end
    inherited btnFechar: TSpeedButton
      Left = 782
      ExplicitLeft = 727
    end
    inherited btnImprime: TSpeedButton
      Left = 625
      ExplicitLeft = 570
    end
    inherited btnExcel: TSpeedButton
      Left = 704
      ExplicitLeft = 649
    end
  end
  inherited PageControl1: TPageControl
    Width = 846
    ExplicitWidth = 846
    inherited tsNotas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 838
      inherited pnControle: TPanel
        Width = 838
        ExplicitWidth = 838
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
        Width = 838
        Columns = <
          item
            Expanded = False
            FieldName = 'EQP_CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EQP_REFER'
            Title.Caption = 'Refer'#234'ncia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EQP_DESCRICAO'
            Title.Caption = 'Descri'#231#227'o do equipamento'
            Width = 218
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EQP_DATAAQUISICAO'
            Title.Caption = 'Aquisi'#231#227'o'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PCX_DESCRI'
            Title.Caption = 'Centro de Custo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRP_NOME'
            Title.Caption = 'Turno'
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Width = 846
    ExplicitWidth = 846
    inherited btnSelect: TSpeedButton
      Left = 698
      ExplicitLeft = 643
    end
  end
  inherited qBusco: TSQLQuery
    SQL.Strings = (
      'select * from equipamento')
    object qBuscoEQP_CODIGO: TIntegerField
      FieldName = 'EQP_CODIGO'
      Required = True
    end
    object qBuscoEQP_DESCRICAO: TStringField
      FieldName = 'EQP_DESCRICAO'
      Size = 60
    end
    object qBuscoTRP_NOME: TStringField
      FieldName = 'TRP_NOME'
      Size = 30
    end
    object qBuscoEQP_DATAAQUISICAO: TDateField
      FieldName = 'EQP_DATAAQUISICAO'
    end
    object qBuscoPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object qBuscoEQP_REFER: TStringField
      FieldName = 'EQP_REFER'
      Size = 15
    end
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoEQP_CODIGO: TIntegerField
      FieldName = 'EQP_CODIGO'
      Required = True
    end
    object cdsBuscoEQP_DESCRICAO: TStringField
      FieldName = 'EQP_DESCRICAO'
      Size = 60
    end
    object cdsBuscoEQP_REFER: TStringField
      FieldName = 'EQP_REFER'
      Size = 15
    end
    object cdsBuscoPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object cdsBuscoTRP_NOME: TStringField
      FieldName = 'TRP_NOME'
      Size = 30
    end
    object cdsBuscoEQP_DATAAQUISICAO: TDateField
      FieldName = 'EQP_DATAAQUISICAO'
    end
  end
end
