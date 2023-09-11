object FrmContatoCliente: TFrmContatoCliente
  Left = 198
  Top = 144
  Caption = 'Buscar Contato'
  ClientHeight = 442
  ClientWidth = 926
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grpContato: TGroupBox
    Left = 0
    Top = 0
    Width = 926
    Height = 41
    Align = alTop
    Caption = 'Contato'
    TabOrder = 0
    object edtContatoBuscar: TEdit
      Left = 8
      Top = 14
      Width = 809
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = edtContatoBuscarChange
    end
    object BitPesquisar: TBitBtn
      Left = 821
      Top = 12
      Width = 99
      Height = 24
      Hint = 'Pesquisar'
      Caption = '&Pesquisar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitPesquisarClick
    end
  end
  object grpListaContato: TGroupBox
    Left = 0
    Top = 41
    Width = 926
    Height = 401
    Align = alClient
    Caption = 'Lista de Contatos'
    TabOrder = 1
    object dbgrdContatos: TDBGrid
      Left = 2
      Top = 15
      Width = 922
      Height = 384
      Align = alClient
      DataSource = DsClienteContato
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgrdContatosDblClick
      OnKeyPress = dbgrdContatosKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CC_NOME'
          Title.Alignment = taCenter
          Title.Caption = 'Nome'
          Width = 233
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CC_CARGO'
          Title.Alignment = taCenter
          Title.Caption = 'Cargo'
          Width = 139
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CC_TELEFONE'
          Title.Alignment = taCenter
          Title.Caption = 'Telefone'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CC_CELULAR'
          Title.Alignment = taCenter
          Title.Caption = 'Celular'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CC_RAMAL'
          Title.Alignment = taCenter
          Title.Caption = 'Ramal'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CC_EMAIL'
          Title.Alignment = taCenter
          Title.Caption = 'Email'
          Width = 285
          Visible = True
        end>
    end
  end
  object SqlCLienteContato: TSQLDataSet
    GetMetadata = False
    CommandText = 'select * from CLI_CONTATO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 592
    Top = 90
    object SqlCLienteContatoCC_REGISTRO: TIntegerField
      FieldName = 'CC_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlCLienteContatoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCLienteContatoCC_NOME: TStringField
      FieldName = 'CC_NOME'
      Size = 100
    end
    object SqlCLienteContatoCC_CARGO: TStringField
      FieldName = 'CC_CARGO'
      Size = 50
    end
    object SqlCLienteContatoCC_TELEFONE: TStringField
      FieldName = 'CC_TELEFONE'
      Size = 12
    end
    object SqlCLienteContatoCC_CELULAR: TStringField
      FieldName = 'CC_CELULAR'
      Size = 12
    end
    object SqlCLienteContatoCC_RAMAL: TStringField
      FieldName = 'CC_RAMAL'
      Size = 10
    end
    object SqlCLienteContatoCC_EMAIL: TStringField
      FieldName = 'CC_EMAIL'
      Size = 200
    end
  end
  object DspClienteContato: TDataSetProvider
    DataSet = SqlCLienteContato
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 648
    Top = 66
  end
  object CdsClienteContato: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DspClienteContato'
    Left = 744
    Top = 66
    object CdsClienteContatoCC_REGISTRO: TIntegerField
      FieldName = 'CC_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsClienteContatoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object CdsClienteContatoCC_NOME: TStringField
      FieldName = 'CC_NOME'
      Size = 100
    end
    object CdsClienteContatoCC_CARGO: TStringField
      FieldName = 'CC_CARGO'
      Size = 50
    end
    object CdsClienteContatoCC_TELEFONE: TStringField
      FieldName = 'CC_TELEFONE'
      EditMask = '(00) 000000009;0; '
      Size = 12
    end
    object CdsClienteContatoCC_CELULAR: TStringField
      FieldName = 'CC_CELULAR'
      EditMask = '(00) 000000009;0; '
      Size = 12
    end
    object CdsClienteContatoCC_RAMAL: TStringField
      FieldName = 'CC_RAMAL'
      Size = 10
    end
    object CdsClienteContatoCC_EMAIL: TStringField
      FieldName = 'CC_EMAIL'
      Size = 200
    end
  end
  object DsClienteContato: TDataSource
    DataSet = CdsClienteContato
    Left = 832
    Top = 66
  end
end
