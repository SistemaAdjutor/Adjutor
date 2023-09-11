inherited frmIbpt: TfrmIbpt
  Left = 142
  Top = 109
  BorderIcons = [biSystemMenu]
  Caption = 'frmIbpt'
  ClientHeight = 436
  ClientWidth = 846
  FormStyle = fsMDIChild
  Visible = True
  ExplicitWidth = 862
  ExplicitHeight = 474
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 846
    ExplicitWidth = 846
    inherited btnNovo: TSpeedButton
      Visible = False
    end
    inherited btnConsulta: TSpeedButton
      OnClick = nil
    end
    inherited btnEdita: TSpeedButton
      OnClick = nil
    end
    inherited btnExtra: TSpeedButton
      Caption = 'Importar Tabela'
      Enabled = True
      Visible = True
      OnClick = btnExtraClick
    end
  end
  inherited PageControl1: TPageControl
    Width = 846
    Height = 334
    ExplicitWidth = 846
    ExplicitHeight = 334
    inherited tsNotas: TTabSheet
      ExplicitWidth = 838
      ExplicitHeight = 306
      inherited pnControle: TPanel
        Width = 838
        ExplicitWidth = 838
        inherited pnFiltro: TPanel
          Width = 689
          ExplicitWidth = 689
          inherited pn1: TPanel
            Width = 689
            ExplicitWidth = 689
            inherited btnPesquisa: TSpeedButton
              Left = 523
              ExplicitLeft = 523
            end
            inherited btnLimpar: TSpeedButton
              Left = 523
              ExplicitLeft = 523
            end
            object lbl1: TLabel
              Left = 389
              Top = 15
              Width = 24
              Height = 13
              Caption = 'Tipo:'
            end
            object lbledt1: TLabeledEdit
              Left = 16
              Top = 28
              Width = 369
              Height = 21
              EditLabel.Width = 221
              EditLabel.Height = 13
              EditLabel.Caption = 'Informe a C'#243'digo ou Descri'#231#227'o para pesquisa:'
              LabelSpacing = 0
              TabOrder = 0
            end
            object cbb1: TComboBox
              Left = 388
              Top = 27
              Width = 129
              Height = 21
              ItemIndex = 0
              TabOrder = 1
              Text = 'NCM'
              Items.Strings = (
                'NCM'
                'NBS'
                'LST')
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Width = 838
        Height = 227
        Columns = <
          item
            Expanded = False
            FieldName = 'IBPT_NCM'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IBPT_TABELA'
            Title.Caption = 'Tipo'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IBPT_EX'
            Title.Caption = 'Ex'
            Width = 27
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IBPT_DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IBPT_ALIQFEDNACIONAL'
            Title.Caption = 'Nacional'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IBPT_ALIQFEDIMPORTADO'
            Title.Caption = 'Importado'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IBPT_ALIQESTADUAL'
            Title.Caption = 'Estadual'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IBPT_ALIQMUNICIPAL'
            Title.Caption = 'Municipal'
            Width = 80
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Top = 400
    Width = 846
    ExplicitTop = 400
    ExplicitWidth = 846
    inherited btnSelect: TSpeedButton
      Left = 707
      ExplicitLeft = 653
    end
  end
  object pnBot: TPanel [3]
    Left = 0
    Top = 375
    Width = 846
    Height = 25
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object lblVersao: TLabel
      Left = 12
      Top = 7
      Width = 37
      Height = 13
      Caption = 'Vers'#227'o:'
    end
    object lblVigencia: TLabel
      Left = 194
      Top = 7
      Width = 46
      Height = 13
      Caption = 'Vig'#234'ncia: '
    end
    object lblChave: TLabel
      Left = 411
      Top = 7
      Width = 38
      Height = 13
      Caption = 'Chave: '
    end
    object lblFonte: TLabel
      Left = 580
      Top = 7
      Width = 32
      Height = 13
      Caption = 'Fonte:'
    end
  end
  inherited qBusco: TSQLQuery
    SQL.Strings = (
      'select * from ibpt0000 where ibpt_id=0')
    object qBuscoIBPT_ID: TIntegerField
      FieldName = 'IBPT_ID'
    end
    object qBuscoIBPT_NCM: TStringField
      FieldName = 'IBPT_NCM'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 10
    end
    object qBuscoIBPT_EX: TStringField
      FieldName = 'IBPT_EX'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object qBuscoIBPT_TABELA: TIntegerField
      FieldName = 'IBPT_TABELA'
      ProviderFlags = [pfInUpdate]
    end
    object qBuscoIBPT_DESCRICAO: TStringField
      FieldName = 'IBPT_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object qBuscoIBPT_ALIQFEDNACIONAL: TFMTBCDField
      FieldName = 'IBPT_ALIQFEDNACIONAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object qBuscoIBPT_ALIQFEDIMPORTADO: TFMTBCDField
      FieldName = 'IBPT_ALIQFEDIMPORTADO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object qBuscoIBPT_ALIQESTADUAL: TFMTBCDField
      FieldName = 'IBPT_ALIQESTADUAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object qBuscoIBPT_ALIQMUNICIPAL: TFMTBCDField
      FieldName = 'IBPT_ALIQMUNICIPAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
  end
  inherited cdsBusco: TClientDataSet
    Left = 396
    Top = 217
    object cdsBuscoIBPT_ID: TIntegerField
      FieldName = 'IBPT_ID'
    end
    object cdsBuscoIBPT_NCM: TStringField
      FieldName = 'IBPT_NCM'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 10
    end
    object cdsBuscoIBPT_EX: TStringField
      FieldName = 'IBPT_EX'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsBuscoIBPT_TABELA: TIntegerField
      FieldName = 'IBPT_TABELA'
      ProviderFlags = [pfInUpdate]
      OnGetText = cdsBuscoIBPT_TABELAGetText
    end
    object cdsBuscoIBPT_DESCRICAO: TStringField
      FieldName = 'IBPT_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsBuscoIBPT_ALIQFEDNACIONAL: TFMTBCDField
      FieldName = 'IBPT_ALIQFEDNACIONAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object cdsBuscoIBPT_ALIQFEDIMPORTADO: TFMTBCDField
      FieldName = 'IBPT_ALIQFEDIMPORTADO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object cdsBuscoIBPT_ALIQESTADUAL: TFMTBCDField
      FieldName = 'IBPT_ALIQESTADUAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object cdsBuscoIBPT_ALIQMUNICIPAL: TFMTBCDField
      FieldName = 'IBPT_ALIQMUNICIPAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
  end
  object ACBrIBPTax1: TACBrIBPTax
    ProxyPort = '8080'
    Fonte = 'MANUAL'
    Left = 770
    Top = 150
  end
  object dlgOpen1: TOpenDialog
    DefaultExt = '.csv'
    Filter = 'Tabela IBPTax|*.csv'
    Options = [ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    Title = 'Abrir arquivo'
    Left = 701
    Top = 264
  end
  object OpenDialog1: TOpenDialog
    Left = 140
    Top = 265
  end
  object JvCsvDataSet1: TJvCsvDataSet
    AutoBackupCount = 0
    Left = 268
    Top = 249
  end
end
