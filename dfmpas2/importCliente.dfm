inherited FormImpCliente: TFormImpCliente
  Caption = 'Importa'#231#227'o de Excel para cliente'
  ClientHeight = 444
  ClientWidth = 902
  ExplicitWidth = 918
  ExplicitHeight = 482
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 397
    Width = 141
    Height = 39
    Caption = 
      'Erros - n'#227'o ser'#227'o importados'#13#10'Avisos - ser'#227'o importados'#13#10'CTRL+DE' +
      'L - excluir o registro'
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 0
    Width = 902
    Height = 393
    Align = alTop
    DataSource = dsImport
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Status'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'obs'
        ReadOnly = True
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CGC'
        Title.Caption = 'CNPJ/CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_INSC'
        Title.Caption = 'Inscri'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_RAZAO'
        Title.Caption = 'Raz'#227'o'
        Width = 309
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_FANTASIA'
        Title.Caption = 'Fantasia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_ENDERE'
        Title.Caption = 'Endere'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_BAIRRO'
        Title.Caption = 'Bairro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CIDADE'
        Title.Caption = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_UF'
        Title.Caption = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CEP'
        Title.Caption = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_FONE'
        Title.Caption = 'Fone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_EMAIL'
        Title.Caption = 'email'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CONTATO'
        Title.Caption = 'contato'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn [2]
    Left = 656
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Revalidar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn [3]
    Left = 736
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn [4]
    Left = 814
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object chkUpdate: TCheckBox [5]
    Left = 485
    Top = 405
    Width = 157
    Height = 17
    Caption = 'Atualizar dados cadastrais'
    TabOrder = 4
  end
  object cdsImport: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 128
    Top = 144
    object cdsImportCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object cdsImportCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 18
    end
    object cdsImportCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 70
    end
    object cdsImportCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Size = 70
    end
    object cdsImportCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 80
    end
    object cdsImportCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object cdsImportCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object cdsImportCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
    end
    object cdsImportCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 10
    end
    object cdsImportCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 9
    end
    object cdsImportCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 30
    end
    object cdsImportCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 150
    end
    object cdsImportCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 25
    end
    object cdsImportCLI_INSC: TStringField
      FieldName = 'CLI_INSC'
      Size = 14
    end
    object cdsImportobs: TStringField
      FieldName = 'obs'
      Size = 400
    end
    object cdsImportStatus: TStringField
      FieldName = 'Status'
      Size = 12
    end
  end
  object dsImport: TDataSource
    DataSet = cdsImport
    Left = 208
    Top = 136
  end
  object OpenDialog1: TOpenDialog
    Left = 460
    Top = 268
  end
end
