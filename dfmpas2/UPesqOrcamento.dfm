inherited frmBaseDBPesquisa1: TfrmBaseDBPesquisa1
  Caption = 'frmBaseDBPesquisa1'
  ClientHeight = 591
  ClientWidth = 1157
  ExplicitWidth = 1173
  ExplicitHeight = 629
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 1157
    ExplicitWidth = 1157
    inherited btnFechar: TSpeedButton
      Left = 1093
      ExplicitLeft = 1093
    end
    inherited btnImprime: TSpeedButton
      Left = 936
      ExplicitLeft = 936
    end
    inherited btnExcel: TSpeedButton
      Left = 1015
      ExplicitLeft = 1015
    end
  end
  inherited PageControl1: TPageControl
    Width = 1157
    Height = 514
    ExplicitWidth = 1157
    ExplicitHeight = 514
    inherited tsNotas: TTabSheet
      ExplicitHeight = 0
      inherited pnControle: TPanel
        Width = 1149
        ExplicitWidth = 1149
      end
      inherited DBGrid: TDBGrid
        Width = 1149
        Height = 407
      end
    end
  end
  inherited Panel2: TPanel
    Top = 555
    Width = 1157
    ExplicitTop = 555
    ExplicitWidth = 1157
    inherited btnSelect: TSpeedButton
      Left = 1009
      ExplicitLeft = 1009
    end
  end
  inherited qBusco: TSQLQuery
    object qBuscoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object qBuscoORC_CODIGO: TIntegerField
      FieldName = 'ORC_CODIGO'
    end
    object qBuscoORC_DATAAQUISICAO: TSQLTimeStampField
      FieldName = 'ORC_DATAAQUISICAO'
      ProviderFlags = [pfInUpdate]
    end
    object qBuscoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object qBuscoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 55
    end
    object qBuscoORC_EMAIL: TStringField
      FieldName = 'ORC_EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qBuscoORC_DIAS_ENTREGA: TSQLTimeStampField
      FieldName = 'ORC_DIAS_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object qBuscoORC_DIAS_VALIDADE: TSQLTimeStampField
      FieldName = 'ORC_DIAS_VALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object qBuscoFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object qBuscoORC_VLR_TOTAL: TFMTBCDField
      FieldName = 'ORC_VLR_TOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object qBuscoORC_SITUACAO: TStringField
      FieldName = 'ORC_SITUACAO'
      Size = 1
    end
  end
end
