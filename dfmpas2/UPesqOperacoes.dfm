inherited fmPesqOperacoes: TfmPesqOperacoes
  Caption = 'Opera'#231#245'es'
  ClientWidth = 861
  ExplicitWidth = 869
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 861
    ExplicitWidth = 861
    DesignSize = (
      861
      41)
    inherited btnFechar: TSpeedButton
      Left = 797
      ExplicitLeft = 688
    end
    inherited btnImprime: TSpeedButton
      Left = 640
      ExplicitLeft = 531
    end
    inherited btnExcel: TSpeedButton
      Left = 719
      ExplicitLeft = 610
    end
  end
  inherited PageControl1: TPageControl
    Width = 861
    ExplicitWidth = 861
    inherited tsNotas: TTabSheet
      ExplicitWidth = 853
      inherited pnControle: TPanel
        Width = 853
        ExplicitWidth = 853
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
        Width = 853
        Columns = <
          item
            Expanded = False
            FieldName = 'OPE_CODIGO'
            Title.Caption = 'C'#243'digo'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPE_NOME'
            Title.Caption = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPE_DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 253
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPE_CUSTOHORA'
            Title.Caption = 'Custo/hora'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PCX_DESCRI'
            Title.Caption = 'Centro custo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EQP_DESCRICAO'
            Title.Caption = 'Equipamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SET_DESCRICAO'
            Title.Caption = 'Setor'
            Width = 157
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Width = 861
    ExplicitWidth = 861
    DesignSize = (
      861
      36)
    inherited btnSelect: TSpeedButton
      Left = 713
      ExplicitLeft = 604
    end
  end
  inherited qBusco: TSQLQuery
    SQL.Strings = (
      'select * from operacoes')
    object qBuscoOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
    end
    object qBuscoOPE_DESCRICAO: TStringField
      FieldName = 'OPE_DESCRICAO'
      Size = 60
    end
    object qBuscoPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object qBuscoPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
    end
    object qBuscoOPE_CUSTOHORA: TFMTBCDField
      FieldName = 'OPE_CUSTOHORA'
      Precision = 15
    end
    object qBuscoOPE_NOME: TStringField
      FieldName = 'OPE_NOME'
      Size = 15
    end
    object qBuscoEQP_DESCRICAO: TStringField
      FieldName = 'EQP_DESCRICAO'
      Size = 60
    end
    object qBuscoSET_DESCRICAO: TStringField
      FieldName = 'SET_DESCRICAO'
      Size = 60
    end
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
    end
    object cdsBuscoOPE_DESCRICAO: TStringField
      FieldName = 'OPE_DESCRICAO'
      Size = 60
    end
    object cdsBuscoOPE_NOME: TStringField
      FieldName = 'OPE_NOME'
      Size = 15
    end
    object cdsBuscoOPE_CUSTOHORA: TFMTBCDField
      FieldName = 'OPE_CUSTOHORA'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Precision = 15
    end
    object cdsBuscoPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
    end
    object cdsBuscoPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object cdsBuscoEQP_DESCRICAO: TStringField
      FieldName = 'EQP_DESCRICAO'
      Size = 60
    end
    object cdsBuscoSET_DESCRICAO: TStringField
      FieldName = 'SET_DESCRICAO'
      Size = 60
    end
  end
end
