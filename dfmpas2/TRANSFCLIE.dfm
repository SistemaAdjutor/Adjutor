object FormTransfClie: TFormTransfClie
  Left = 12
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Transfere Clientes de Vendedor Inativo para Outros Vendedores'
  ClientHeight = 545
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object lbl1: TLabel
    Left = 18
    Top = 524
    Width = 120
    Height = 14
    Caption = 'No. Clientes '#224' transferir :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object BitTransf: TBitBtn
    Left = 641
    Top = 15
    Width = 135
    Height = 30
    Caption = 'Confirmar &Transfer'#234'ncia'
    TabOrder = 3
    TabStop = False
    OnClick = BitTransfClick
  end
  object GroupBox1: TGroupBox
    Left = 11
    Top = 50
    Width = 445
    Height = 46
    Caption = 'Vendedor Ativo'
    TabOrder = 1
    object CbxRepAtivo: TComboBox
      Left = 38
      Top = 16
      Width = 394
      Height = 22
      ItemIndex = 0
      TabOrder = 1
      Text = 'SELECIONA UM REPRESENTANTE ATIVO.'
      OnClick = CbxRepAtivoClick
      OnEnter = CbxRepAtivoEnter
      Items.Strings = (
        'SELECIONA UM REPRESENTANTE ATIVO.')
    end
    object EditRepAtivo: TCurrencyEdit
      Left = 4
      Top = 16
      Width = 30
      Height = 21
      AutoSize = False
      DisplayFormat = '000;-000'
      MaxLength = 3
      TabOrder = 0
      OnEnter = EditRepAtivoEnter
      OnExit = EditRepAtivoExit
    end
  end
  object GroupReprInativo: TGroupBox
    Left = 10
    Top = 2
    Width = 445
    Height = 49
    Caption = 'Vendedor Inativo'
    TabOrder = 0
    object CbxRepInativo: TComboBox
      Left = 39
      Top = 16
      Width = 398
      Height = 22
      ItemIndex = 0
      TabOrder = 1
      Text = 'SELECIONA UM REPRESENTANTE INATIVO.'
      OnClick = CbxRepInativoClick
      OnEnter = CbxRepInativoEnter
      Items.Strings = (
        'SELECIONA UM REPRESENTANTE INATIVO.')
    end
    object EditRepInativo: TCurrencyEdit
      Left = 4
      Top = 16
      Width = 30
      Height = 21
      AutoSize = False
      DisplayFormat = '000;-000'
      MaxLength = 3
      TabOrder = 0
      OnEnter = EditRepInativoEnter
      OnExit = EditRepInativoExit
    end
  end
  object Bit_Sair: TBitBtn
    Left = 641
    Top = 49
    Width = 135
    Height = 30
    Cursor = crHandPoint
    Caption = '&Sair'
    Glyph.Data = {
      CA010000424DCA01000000000000760000002800000026000000110000000100
      04000000000054010000CE0E0000D80E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888FFFFFFFFFFFFFFFFFFF008888888888880000078FFFFFFFFFFFFFFFFF
      FF00833333333000BB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
      FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
      00000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFF
      FFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBB
      B003008FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFF
      FF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
      FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
      00000BBBBB03078FFFFFFFFFFFFFFFFFFF00833333333000BB03078FFFFFFFFF
      FFFFFFFFFF008888888888880000088FFFFFFFFFFFFFFFFFFF00888888888888
      8888888FFFFFFFFFFFFFFFFFFF00}
    NumGlyphs = 2
    TabOrder = 2
    TabStop = False
    OnClick = Bit_SairClick
  end
  object GroupListaClie: TGroupBox
    Left = 10
    Top = 133
    Width = 769
    Height = 383
    Caption = 'Lista dos Clientes do Vendedor Inativo'
    TabOrder = 4
    object dbgridClientes: TDBGrid
      Left = 2
      Top = 16
      Width = 765
      Height = 365
      Align = alClient
      Color = 16776176
      DataSource = Dsclie
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDblClick = dbgridClientesDblClick
      OnKeyPress = dbgridClientesKeyPress
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CLI_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_RAZAO'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Width = 256
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'REP_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'Cod'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REP_NOME'
          Title.Alignment = taCenter
          Title.Caption = 'Vendedor Inativo'
          Width = 161
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'REP_NOVO'
          Title.Alignment = taCenter
          Title.Caption = 'Novo Cod'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REP_NVNOME'
          Title.Alignment = taCenter
          Title.Caption = 'Novo Vendedor'
          Width = 184
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REP_NOVO'
          Visible = True
        end>
    end
  end
  object StatusBar1: TStatusBar
    Left = 10
    Top = 101
    Width = 769
    Height = 27
    Align = alNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Panels = <
      item
        Text = 'Orienta'#231#227'o'
        Width = 62
      end
      item
        Text = 
          'D'#234' <Duplo Clique> para Incluir ou Remover o Novo Vendedor que re' +
          'ceber'#225' o Cliente do Inativo'
        Width = 50
      end>
    SizeGrip = False
    UseSystemFont = False
    Visible = False
  end
  object edtEnumInativos: TEdit
    Left = 142
    Top = 520
    Width = 48
    Height = 22
    TabOrder = 6
    Text = '000'
  end
  object SqlCdsRepInativo: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select REP_CODIGO, REP_NOME, REP_SITUACAO, EMP_CODIGO from REP00' +
      '00'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select REP_CODIGO, REP_NOME, REP_SITUACAO, EMP_CODIGO from REP00' +
      '00'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 504
    Top = 16
    object SqlCdsRepInativoREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCdsRepInativoREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object SqlCdsRepInativoREP_SITUACAO: TStringField
      FieldName = 'REP_SITUACAO'
      Size = 1
    end
    object SqlCdsRepInativoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsRepAtivo: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'SELECT REP_CODIGO,REP_NOME,REP_SITUACAO,EMP_CODIGO FROM REP0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT REP_CODIGO,REP_NOME,REP_SITUACAO,EMP_CODIGO FROM REP0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 504
    Top = 56
    object SqlCdsRepAtivoREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCdsRepAtivoREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object SqlCdsRepAtivoREP_SITUACAO: TStringField
      FieldName = 'REP_SITUACAO'
      Size = 1
    end
    object SqlCdsRepAtivoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object Dsclie: TDataSource
    DataSet = CdsClientes
    Left = 312
    Top = 200
  end
  object SqlClientes: TSQLDataSet
    CommandText = 
      'select CLI_CODIGO, CLI_RAZAO, REP_CODIGO, REP_NOME from CLI0000 ' +
      'CLIE'#13#10'JOIN REP0000 REPR ON CLIE.REP_CODIGO = REPR.REP_CODIGO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 144
    Top = 200
    object SqlClientesCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object SqlClientesCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 52
    end
    object SqlClientesREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object SqlClientesREP_NOME: TStringField
      FieldName = 'REP_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
  end
  object DspClientes: TDataSetProvider
    DataSet = SqlClientes
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 208
    Top = 200
  end
  object CdsClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspClientes'
    Left = 264
    Top = 200
    object CdsClientesCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object CdsClientesCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 52
    end
    object CdsClientesREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object CdsClientesREP_NOME: TStringField
      FieldName = 'REP_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object CdsClientesREP_NOVO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'REP_NOVO'
      ProviderFlags = []
      Size = 3
    end
    object CdsClientesREP_NVNOME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'REP_NVNOME'
      ProviderFlags = []
      Size = 35
    end
  end
end
