inherited FrmImportarFornecedor: TFrmImportarFornecedor
  Caption = 'Importar de Excel para Fornecedor'
  ClientHeight = 440
  ClientWidth = 910
  ExplicitWidth = 926
  ExplicitHeight = 478
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 392
    Width = 141
    Height = 39
    Caption = 
      'Erros - n'#227'o ser'#227'o importados'#13#10'Avisos - ser'#227'o importados'#13#10'CTRL+DE' +
      'L - excluir o registro'
  end
  object BitBtn1: TBitBtn [1]
    Left = 656
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Revalidar'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn [2]
    Left = 736
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn [3]
    Left = 814
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object DBGrid1: TDBGrid [4]
    Left = 0
    Top = 0
    Width = 910
    Height = 393
    Align = alTop
    DataSource = dsImport
    TabOrder = 3
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
        FieldName = 'FOR_CGC'
        Title.Caption = 'CNPJ/CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_RAZAO'
        Title.Caption = 'Raz'#227'o'
        Width = 309
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_INSC'
        Title.Caption = 'Inscri'#231#227'o Estadual'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_INSCMUNI'
        Title.Caption = 'Insc Municipal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_ENDERE'
        Title.Caption = 'Endere'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_BAIRRO'
        Title.Caption = 'Bairro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_CIDADE'
        Title.Caption = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_UF'
        Title.Caption = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_CEP'
        Title.Caption = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_FONE'
        Title.Caption = 'Fone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_EMAIL'
        Title.Caption = 'email'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_CONTATO'
        Title.Caption = 'contato'
        Visible = True
      end>
  end
  object chkUpdate: TCheckBox [5]
    Left = 493
    Top = 404
    Width = 157
    Height = 17
    Caption = 'Atualizar dados cadastrais'
    Checked = True
    State = cbChecked
    TabOrder = 4
  end
  object cdsImport: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 128
    Top = 144
    object cdsImportobs: TStringField
      FieldName = 'obs'
      Size = 400
    end
    object cdsImportStatus: TStringField
      FieldName = 'Status'
      Size = 12
    end
    object cdsImportFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object cdsImportFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 100
    end
    object cdsImportFOR_ENDERE: TStringField
      FieldName = 'FOR_ENDERE'
      Size = 150
    end
    object cdsImportFOR_BAIRRO: TStringField
      FieldName = 'FOR_BAIRRO'
      Size = 100
    end
    object cdsImportFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      Size = 100
    end
    object cdsImportFOR_UF: TStringField
      FieldName = 'FOR_UF'
      Size = 2
    end
    object cdsImportCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
    end
    object cdsImportFOR_CEP: TStringField
      FieldName = 'FOR_CEP'
      Size = 10
    end
    object cdsImportFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
      Size = 100
    end
    object cdsImportFOR_FONE: TStringField
      FieldName = 'FOR_FONE'
    end
    object cdsImportFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      Size = 150
    end
    object cdsImportFOR_CGC: TStringField
      FieldName = 'FOR_CGC'
      Size = 18
    end
    object cdsImportFOR_INSC: TStringField
      FieldName = 'FOR_INSC'
    end
    object cdsImportFOR_INSCMUNI: TStringField
      FieldName = 'FOR_INSCMUNI'
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
