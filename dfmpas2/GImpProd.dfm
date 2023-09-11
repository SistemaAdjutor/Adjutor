object FormGImpProduto: TFormGImpProduto
  Left = 449
  Top = 49
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gerenciador de Impress'#227'o (Produtos) '
  ClientHeight = 650
  ClientWidth = 1270
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object GrpAlmox: TGroupBox
    Left = 0
    Top = 326
    Width = 1270
    Height = 41
    Align = alTop
    Caption = 'Almoxarifado'
    TabOrder = 6
    object Edt_Almox: TEdit
      Left = 8
      Top = 16
      Width = 59
      Height = 22
      MaxLength = 4
      TabOrder = 0
      Text = '9999'
      OnClick = Edt_AlmoxClick
      OnExit = Edt_AlmoxExit
      OnKeyPress = Edt_TipoKeyPress
    end
    object CbAlmox: TComboBox
      Left = 72
      Top = 16
      Width = 334
      Height = 22
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 1
      Text = 'TODOS'
      OnClick = CbAlmoxClick
      OnExit = CbAlmoxExit
      Items.Strings = (
        'TODOS')
    end
  end
  object GrpBotoes: TGroupBox
    Left = 0
    Top = 608
    Width = 1270
    Height = 42
    Align = alTop
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 15
      Top = 11
      Width = 185
      Height = 25
      Caption = 'Co&nfigura'#231#227'o de Impress'#227'o'
      TabOrder = 2
      TabStop = False
      OnClick = BitConfigClick
    end
    object BitBtn2: TBitBtn
      Left = 311
      Top = 11
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 0
      TabStop = False
      OnClick = BitOkClick
    end
    object BitBtn3: TBitBtn
      Left = 389
      Top = 11
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      TabStop = False
      OnClick = BitCancelarClick
    end
  end
  object GrpOrdem: TGroupBox
    Left = 0
    Top = 494
    Width = 1270
    Height = 38
    Align = alTop
    Caption = 'Classificar por'
    TabOrder = 2
    object RadRefer: TRadioButton
      Left = 11
      Top = 16
      Width = 96
      Height = 17
      Caption = '&Refer'#234'ncia'
      TabOrder = 0
    end
    object RadProdu: TRadioButton
      Left = 120
      Top = 16
      Width = 125
      Height = 17
      Caption = '&Descri'#231#227'o do Produto'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object rbEnder: TRadioButton
      Left = 264
      Top = 15
      Width = 125
      Height = 17
      Caption = '&Endere'#231'o'
      TabOrder = 2
    end
    object rbMarca: TRadioButton
      Left = 354
      Top = 15
      Width = 125
      Height = 17
      Caption = 'Marca / Linha'
      TabOrder = 3
    end
  end
  object GrpSaldo: TGroupBox
    Left = 0
    Top = 285
    Width = 1270
    Height = 41
    Align = alTop
    Caption = 'Posi'#231#227'o do Estoque'
    TabOrder = 1
    object RadTodos: TRadioButton
      Left = 25
      Top = 16
      Width = 54
      Height = 17
      Caption = '&Todos'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RadPositivo: TRadioButton
      Left = 105
      Top = 16
      Width = 67
      Height = 17
      Caption = '&Positivos'
      TabOrder = 1
    end
    object RadNegativo: TRadioButton
      Left = 192
      Top = 16
      Width = 193
      Height = 17
      Caption = '&Abaixo do M'#237'nimo e Negativos'
      TabOrder = 2
    end
    object Radreserva: TRadioButton
      Left = 395
      Top = 16
      Width = 67
      Height = 17
      Caption = '&Reserva'
      TabOrder = 3
      Visible = False
    end
  end
  object Group02: TGroupBox
    Left = 0
    Top = 244
    Width = 1270
    Height = 41
    Align = alTop
    Caption = 'Per'#237'odo:'
    TabOrder = 5
    object Label3: TLabel
      Left = 9
      Top = 19
      Width = 16
      Height = 14
      Caption = '&De:'
    end
    object Label4: TLabel
      Left = 136
      Top = 19
      Width = 17
      Height = 14
      Caption = '&At'#233
    end
    object EditDataI: TJvDateEdit
      Left = 28
      Top = 15
      Width = 100
      Height = 22
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      ImageKind = ikCustom
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 0
    end
    object EditDataF: TJvDateEdit
      Left = 159
      Top = 15
      Width = 100
      Height = 22
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      ImageKind = ikCustom
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 1
    end
  end
  object Grpvigencia: TGroupBox
    Left = 0
    Top = 457
    Width = 1270
    Height = 37
    Align = alTop
    TabOrder = 4
    object LabelData: TLabel
      Left = 8
      Top = 16
      Width = 88
      Height = 14
      Caption = 'Data da Vigencia :'
      Color = clBtnFace
      ParentColor = False
    end
    object EdtDtVigenc: TJvDateEdit
      Left = 101
      Top = 12
      Width = 100
      Height = 22
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      ImageKind = ikCustom
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 0
      OnExit = EdtDtVigencExit
    end
  end
  object GrpSelecao: TGroupBox
    Left = 0
    Top = 367
    Width = 1270
    Height = 90
    Align = alTop
    Caption = 'Sele'#231#227'o'
    TabOrder = 0
    object LabelBANCO: TLabel
      Left = 33
      Top = 18
      Width = 23
      Height = 14
      Caption = 'Tipo:'
    end
    object Labelcliente: TLabel
      Left = 23
      Top = 42
      Width = 33
      Height = 14
      Caption = 'Grupo:'
    end
    object Label1: TLabel
      Left = 27
      Top = 66
      Width = 29
      Height = 14
      Caption = 'Linha:'
    end
    object CbTipo: TComboBox
      Left = 84
      Top = 14
      Width = 322
      Height = 22
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 1
      Text = 'TODOS'
      OnClick = CbTipoClick
      OnExit = CbTipoClick
      Items.Strings = (
        'TODOS')
    end
    object CbGrupo: TComboBox
      Left = 84
      Top = 38
      Width = 322
      Height = 22
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 3
      Text = 'TODOS'
      OnClick = CbGrupoClick
      OnExit = CbGrupoClick
      Items.Strings = (
        'TODOS')
    end
    object Edt_Tipo: TEdit
      Left = 59
      Top = 14
      Width = 24
      Height = 22
      MaxLength = 3
      TabOrder = 0
      Text = '999'
      OnClick = Edt_TipoClick
      OnExit = Edt_TipoExit
      OnKeyPress = Edt_TipoKeyPress
    end
    object Edt_Grupo: TEdit
      Left = 59
      Top = 38
      Width = 24
      Height = 22
      MaxLength = 3
      TabOrder = 2
      Text = '999'
      OnClick = Edt_GrupoClick
      OnExit = Edt_GrupoExit
      OnKeyPress = Edt_TipoKeyPress
    end
    object CbLinha: TComboBox
      Left = 84
      Top = 62
      Width = 322
      Height = 22
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 4
      Text = 'TODOS'
      OnClick = CbLinhaClick
      OnExit = CbGrupoClick
      Items.Strings = (
        'TODOS')
    end
    object Edt_Linha: TEdit
      Left = 59
      Top = 62
      Width = 24
      Height = 22
      MaxLength = 3
      TabOrder = 5
      Text = '999'
      OnClick = Edt_LinhaClick
      OnExit = Edt_LinhaExit
      OnKeyPress = Edt_LinhaKeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1270
    Height = 244
    Align = alTop
    TabOrder = 7
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 337
      Height = 237
      Caption = 'Tipos de Relat'#243'rios'
      TabOrder = 0
      object LTBoxProdu: TListBox
        Left = 3
        Top = 15
        Width = 329
        Height = 216
        Style = lbOwnerDrawVariable
        Color = 11599871
        TabOrder = 0
        OnClick = LTBoxProduClick
      end
    end
    object GrpDispositivo: TGroupBox
      Left = 340
      Top = 0
      Width = 125
      Height = 105
      Caption = 'Dispositivo de sa'#237'da'
      TabOrder = 1
      object RadVideo: TRadioButton
        Left = 14
        Top = 23
        Width = 65
        Height = 17
        Caption = '&V'#237'deo'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RadImpressora: TRadioButton
        Left = 14
        Top = 48
        Width = 81
        Height = 17
        Caption = '&Impressora'
        TabOrder = 1
      end
      object RadText: TRadioButton
        Left = 14
        Top = 73
        Width = 90
        Height = 17
        Caption = 'Arquivo &Texto'
        TabOrder = 2
      end
    end
  end
  object grpNCMCredito: TGroupBox
    Left = 0
    Top = 532
    Width = 1270
    Height = 38
    Align = alTop
    Caption = 'Que a NCM contenha a op'#231#227'o'
    TabOrder = 8
    object chkNCMcredito: TCheckBox
      Left = 80
      Top = 16
      Width = 385
      Height = 17
      Caption = 'Classifica'#231#227'o Fiscal com Cr'#233'dido ou diferenciada para impostos'
      TabOrder = 0
    end
  end
  object grpAdicional: TGroupBox
    Left = 0
    Top = 570
    Width = 1270
    Height = 38
    Align = alTop
    Caption = 'Filtro Adicional'
    TabOrder = 9
    object chkProdutoInativo: TCheckBox
      Left = 80
      Top = 16
      Width = 385
      Height = 17
      Caption = 'Produto Inativo'
      TabOrder = 0
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 294
    Top = 375
  end
  object SqlCdsProdutos: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT '#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_REFER,'#13#10'P1.PRD_UND,'#13#10'P1.PGR_CODI' +
      'GO,'#13#10'P1.PTI_CODIGO,'#13#10'P1.PRD_MINIMO,'#13#10'P1.PRD_PCUSTO,'#13#10'P1.PRD_PVEN' +
      'DA,'#13#10'P1.PRD_ESTOQUE,'#13#10'P1.PRD_SAIDA,'#13#10'P1.PRD_PENDENTE,'#13#10'P1.PRD_EN' +
      'TRADA,'#13#10'P1.PRD_RESERVA,'#13#10'P1.PRD_MAXIMO, '#13#10'P1.PRD_PMEDIO,'#13#10'P1.PRD' +
      '_VAR1,'#13#10'P1.PRD_VAR2, '#13#10'P1.PRD_VAR3,'#13#10'P1.PRD_VAR4,'#13#10'P1.PRD_VAR5,'#13 +
      #10'P1.PRD_VAR6,'#13#10'P1.PRD_VAR7,'#13#10'P1.PRD_VAR8,'#13#10'P1.PRD_DCVAR1,'#13#10'P1.PR' +
      'D_DCVAR2,'#13#10'P1.PRD_DCVAR3,'#13#10'P1.PRD_DCVAR4,'#13#10'P1.PRD_DCVAR5,'#13#10'P1.PR' +
      'D_DCVAR6,'#13#10'P1.PRD_DCVAR7,'#13#10'P1.PRD_DCVAR8 '#13#10'FROM PRD0000 P1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT '#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_REFER,'#13#10'P1.PRD_UND,'#13#10'P1.PGR_CODI' +
      'GO,'#13#10'P1.PTI_CODIGO,'#13#10'P1.PRD_MINIMO,'#13#10'P1.PRD_PCUSTO,'#13#10'P1.PRD_PVEN' +
      'DA,'#13#10'P1.PRD_ESTOQUE,'#13#10'P1.PRD_SAIDA,'#13#10'P1.PRD_PENDENTE,'#13#10'P1.PRD_EN' +
      'TRADA,'#13#10'P1.PRD_RESERVA,'#13#10'P1.PRD_MAXIMO, '#13#10'P1.PRD_PMEDIO,'#13#10'P1.PRD' +
      '_VAR1,'#13#10'P1.PRD_VAR2, '#13#10'P1.PRD_VAR3,'#13#10'P1.PRD_VAR4,'#13#10'P1.PRD_VAR5,'#13 +
      #10'P1.PRD_VAR6,'#13#10'P1.PRD_VAR7,'#13#10'P1.PRD_VAR8,'#13#10'P1.PRD_DCVAR1,'#13#10'P1.PR' +
      'D_DCVAR2,'#13#10'P1.PRD_DCVAR3,'#13#10'P1.PRD_DCVAR4,'#13#10'P1.PRD_DCVAR5,'#13#10'P1.PR' +
      'D_DCVAR6,'#13#10'P1.PRD_DCVAR7,'#13#10'P1.PRD_DCVAR8 '#13#10'FROM PRD0000 P1'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 863
    Top = 117
    object SqlCdsProdutosPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 40
    end
    object SqlCdsProdutosPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsProdutosPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
    object SqlCdsProdutosPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object SqlCdsProdutosPRD_MINIMO: TFMTBCDField
      FieldName = 'PRD_MINIMO'
      Precision = 15
    end
    object SqlCdsProdutosPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
    end
    object SqlCdsProdutosPRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      Precision = 15
    end
    object SqlCdsProdutosPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      Precision = 15
    end
    object SqlCdsProdutosPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      Precision = 15
    end
    object SqlCdsProdutosPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      Precision = 15
    end
    object SqlCdsProdutosPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      Precision = 15
    end
    object SqlCdsProdutosPRD_MAXIMO: TFMTBCDField
      FieldName = 'PRD_MAXIMO'
      Precision = 15
    end
    object SqlCdsProdutosPRD_VAR1: TFMTBCDField
      FieldName = 'PRD_VAR1'
      Precision = 15
    end
    object SqlCdsProdutosPRD_VAR2: TFMTBCDField
      FieldName = 'PRD_VAR2'
      Precision = 15
    end
    object SqlCdsProdutosPRD_VAR3: TFMTBCDField
      FieldName = 'PRD_VAR3'
      Precision = 15
    end
    object SqlCdsProdutosPRD_VAR4: TFMTBCDField
      FieldName = 'PRD_VAR4'
      Precision = 15
    end
    object SqlCdsProdutosPRD_VAR5: TFMTBCDField
      FieldName = 'PRD_VAR5'
      Precision = 15
    end
    object SqlCdsProdutosPRD_VAR6: TFMTBCDField
      FieldName = 'PRD_VAR6'
      Precision = 15
    end
    object SqlCdsProdutosPRD_VAR7: TFMTBCDField
      FieldName = 'PRD_VAR7'
      Precision = 15
    end
    object SqlCdsProdutosPRD_VAR8: TFMTBCDField
      FieldName = 'PRD_VAR8'
      Precision = 15
    end
    object SqlCdsProdutosPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object SqlCdsProdutosPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object SqlCdsProdutosPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object SqlCdsProdutosPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object SqlCdsProdutosPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object SqlCdsProdutosPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object SqlCdsProdutosPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object SqlCdsProdutosPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
    object SqlCdsProdutosPRD_PMEDIO: TFMTBCDField
      FieldName = 'PRD_PMEDIO'
      Precision = 15
    end
    object SqlCdsProdutosPRD_RESERVA: TFMTBCDField
      FieldName = 'PRD_RESERVA'
      Precision = 15
      Size = 4
    end
    object SqlCdsProdutosPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object SqlCdsProdutosPRD_CUSTOFRETE: TFMTBCDField
      FieldName = 'PRD_CUSTOFRETE'
    end
    object SqlCdsProdutosPRD_CUSTOIPI: TFMTBCDField
      FieldName = 'PRD_CUSTOIPI'
    end
    object SqlCdsProdutosPRD_CUSTOSUBTRIB: TFMTBCDField
      FieldName = 'PRD_CUSTOSUBTRIB'
    end
    object SqlCdsProdutosPRD_CUSTOCOMIPI: TFMTBCDField
      FieldName = 'PRD_CUSTOCOMIPI'
    end
    object SqlCdsProdutosPRD_MARGEMVENDA: TFMTBCDField
      FieldName = 'PRD_MARGEMVENDA'
    end
  end
  object DsProdutos: TDataSource
    DataSet = SqlCdsProdutos
    Left = 933
    Top = 117
  end
  object SqlCdsTipo: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select PTI_CODIGO, PTI_DESCRI from PRD_TIPO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select PTI_CODIGO, PTI_DESCRI from PRD_TIPO'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 352
    Top = 232
    object SqlCdsTipoPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object SqlCdsTipoPTI_DESCRI: TStringField
      DisplayWidth = 100
      FieldName = 'PTI_DESCRI'
      Size = 100
    end
  end
  object SqlCdsGrupo: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select PGR_CODIGO, PGR_DESCRI, PGR_COMISS, PGR_COM_PERC from PRD' +
      '_GRUPO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select PGR_CODIGO, PGR_DESCRI, PGR_COMISS, PGR_COM_PERC from PRD' +
      '_GRUPO'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 368
    Top = 152
    object SqlCdsGrupoPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCdsGrupoPGR_DESCRI: TStringField
      FieldName = 'PGR_DESCRI'
      Size = 25
    end
    object SqlCdsGrupoPGR_COMISS: TStringField
      FieldName = 'PGR_COMISS'
      Size = 1
    end
    object SqlCdsGrupoPGR_COM_PERC: TFMTBCDField
      FieldName = 'PGR_COM_PERC'
      Precision = 15
    end
  end
  object ppDBProdutos: TppDBPipeline
    DataSource = DsProdutos
    UserName = 'DBProdutos'
    Left = 1012
    Top = 117
    object ppDBProdutosppField1: TppField
      FieldAlias = 'PRD_DESCRI'
      FieldName = 'PRD_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField2: TppField
      FieldAlias = 'PRD_UND'
      FieldName = 'PRD_UND'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField3: TppField
      FieldAlias = 'PGR_CODIGO'
      FieldName = 'PGR_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField4: TppField
      FieldAlias = 'PTI_CODIGO'
      FieldName = 'PTI_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField5: TppField
      FieldAlias = 'PRD_MINIMO'
      FieldName = 'PRD_MINIMO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField6: TppField
      FieldAlias = 'PRD_PCUSTO'
      FieldName = 'PRD_PCUSTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField7: TppField
      FieldAlias = 'PRD_PVENDA'
      FieldName = 'PRD_PVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField8: TppField
      FieldAlias = 'PRD_ESTOQUE'
      FieldName = 'PRD_ESTOQUE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField9: TppField
      FieldAlias = 'PRD_SAIDA'
      FieldName = 'PRD_SAIDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField10: TppField
      FieldAlias = 'PRD_PENDENTE'
      FieldName = 'PRD_PENDENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField11: TppField
      FieldAlias = 'PRD_ENTRADA'
      FieldName = 'PRD_ENTRADA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField12: TppField
      FieldAlias = 'PRD_MAXIMO'
      FieldName = 'PRD_MAXIMO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField13: TppField
      FieldAlias = 'PRD_VAR1'
      FieldName = 'PRD_VAR1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField14: TppField
      FieldAlias = 'PRD_VAR2'
      FieldName = 'PRD_VAR2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField15: TppField
      FieldAlias = 'PRD_VAR3'
      FieldName = 'PRD_VAR3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField16: TppField
      FieldAlias = 'PRD_VAR4'
      FieldName = 'PRD_VAR4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField17: TppField
      FieldAlias = 'PRD_VAR5'
      FieldName = 'PRD_VAR5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField18: TppField
      FieldAlias = 'PRD_VAR6'
      FieldName = 'PRD_VAR6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField19: TppField
      FieldAlias = 'PRD_VAR7'
      FieldName = 'PRD_VAR7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField20: TppField
      FieldAlias = 'PRD_VAR8'
      FieldName = 'PRD_VAR8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField21: TppField
      FieldAlias = 'PRD_DCVAR1'
      FieldName = 'PRD_DCVAR1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField22: TppField
      FieldAlias = 'PRD_DCVAR2'
      FieldName = 'PRD_DCVAR2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField23: TppField
      FieldAlias = 'PRD_DCVAR3'
      FieldName = 'PRD_DCVAR3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField24: TppField
      FieldAlias = 'PRD_DCVAR4'
      FieldName = 'PRD_DCVAR4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField25: TppField
      FieldAlias = 'PRD_DCVAR5'
      FieldName = 'PRD_DCVAR5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField26: TppField
      FieldAlias = 'PRD_DCVAR6'
      FieldName = 'PRD_DCVAR6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField27: TppField
      FieldAlias = 'PRD_DCVAR7'
      FieldName = 'PRD_DCVAR7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField28: TppField
      FieldAlias = 'PRD_DCVAR8'
      FieldName = 'PRD_DCVAR8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField29: TppField
      FieldAlias = 'PRD_PMEDIO'
      FieldName = 'PRD_PMEDIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField30: TppField
      FieldAlias = 'PRD_RESERVA'
      FieldName = 'PRD_RESERVA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField31: TppField
      FieldAlias = 'PRD_REFER'
      FieldName = 'PRD_REFER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField32: TppField
      FieldAlias = 'PRD_CUSTOFRETE'
      FieldName = 'PRD_CUSTOFRETE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField33: TppField
      FieldAlias = 'PRD_CUSTOIPI'
      FieldName = 'PRD_CUSTOIPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField34: TppField
      FieldAlias = 'PRD_CUSTOSUBTRIB'
      FieldName = 'PRD_CUSTOSUBTRIB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField35: TppField
      FieldAlias = 'PRD_CUSTOCOMIPI'
      FieldName = 'PRD_CUSTOCOMIPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBProdutosppField36: TppField
      FieldAlias = 'PRD_MARGEMVENDA'
      FieldName = 'PRD_MARGEMVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
  end
  object ppRP00: TppReport
    AutoStop = False
    DataPipeline = ppDBProdutos
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELPRODUTOS00.r' +
      'tm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 1074
    Top = 117
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBProdutos'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 22754
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 794
        mmWidth = 160000
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160000
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 9790
        mmWidth = 160000
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14552
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 164360
        mmTop = 794
        mmWidth = 31962
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 174731
        mmTop = 9790
        mmWidth = 21590
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'REFERENCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 15081
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DESCRI'#199#195'O DO PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 21960
        mmTop = 15081
        mmWidth = 67733
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'UND'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 91546
        mmTop = 15081
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ENTRADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 99484
        mmTop = 15081
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'SAIDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 116417
        mmTop = 15081
        mmWidth = 8678
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ESTOQUE MINIMO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 141817
        mmTop = 15081
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ESTOQUE ATUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 6519
        mmLeft = 158094
        mmTop = 15081
        mmWidth = 13885
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 172853
        mmTop = 15081
        mmWidth = 5927
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 22489
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'RESERVA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 127000
        mmTop = 15081
        mmWidth = 13589
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 21960
        mmTop = 0
        mmWidth = 67733
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_UND'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 91546
        mmTop = 0
        mmWidth = 5821
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_ENTRADA'
        DataPipeline = ppDBProdutos
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3704
        mmLeft = 103452
        mmTop = 0
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_SAIDA'
        DataPipeline = ppDBProdutos
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3704
        mmLeft = 116417
        mmTop = 0
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_MINIMO'
        DataPipeline = ppDBProdutos
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3704
        mmLeft = 147109
        mmTop = 0
        mmWidth = 7143
        BandType = 4
        LayerName = Foreground
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 160815
        mmTop = 0
        mmWidth = 11430
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '______________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 173567
        mmTop = 0
        mmWidth = 20743
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_RESERVA'
        DataPipeline = ppDBProdutos
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3704
        mmLeft = 132557
        mmTop = 0
        mmWidth = 7143
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total de Itens Listados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 529
        mmTop = 529
        mmWidth = 28998
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 30427
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppVariable2: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        LookAhead = True
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 159967
        mmTop = 0
        mmWidth = 12277
        BandType = 7
        LayerName = Foreground
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060F
        5661726961626C65314F6E43616C630B50726F6772616D54797065070B747450
        726F63656475726506536F7572636506B570726F636564757265205661726961
        626C65314F6E43616C63287661722056616C75653A2056617269616E74293B0D
        0A626567696E0D0A202056616C7565203A3D2028444250726F6475746F735B27
        5052445F4553544F515545275D2B444250726F6475746F735B275052445F454E
        5452414441275D292D28444250726F6475746F735B275052445F534149444127
        5D2B20444250726F6475746F735B275052445F52455345525641275D293B0D0A
        656E643B0D0A0D436F6D706F6E656E744E616D6506095661726961626C653109
        4576656E744E616D6506064F6E43616C63074576656E74494402210843617265
        74506F730102000200000001060F5472614576656E7448616E646C65720B5072
        6F6772616D4E616D65060F5661726961626C65344F6E43616C630B50726F6772
        616D54797065070B747450726F63656475726506536F7572636506ED70726F63
        6564757265205661726961626C65344F6E43616C63287661722056616C75653A
        2056617269616E74293B0D0A5661720D0A202077546F74616C3A43757272656E
        63793B0D0A626567696E0D0A202077546F74616C3A3D77546F74616C202B2028
        444250726F6475746F735B275052445F4553544F515545275D202B2044425072
        6F6475746F735B275052445F454E5452414441275D29202D2028444250726F64
        75746F735B275052445F5341494441275D2B444250726F6475746F735B275052
        445F52455345525641275D293B0D0A202056616C7565203A3D2077546F74616C
        3B0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506095661726961626C
        6534094576656E744E616D6506064F6E43616C63074576656E74494402210843
        61726574506F730102000200000000}
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppRP04: TppReport
    AutoStop = False
    DataPipeline = ppDBProdutos
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELPRODUTOS.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 1074
    Top = 256
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBProdutos'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 22754
      mmPrintPosition = 0
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_04_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 794
        mmWidth = 160000
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_04_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160000
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_04_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 9790
        mmWidth = 160000
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14552
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 163831
        mmTop = 794
        mmWidth = 31962
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 174203
        mmTop = 9790
        mmWidth = 21590
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'REFERENCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 15081
        mmWidth = 18785
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 19315
        mmTop = 15081
        mmWidth = 14182
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'UND'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 89694
        mmTop = 15081
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'SALDO INICIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 99219
        mmTop = 15081
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ENTRADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 113506
        mmTop = 15081
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'SAIDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 130440
        mmTop = 15081
        mmWidth = 8678
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'RESERVA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 3260
        mmLeft = 140928
        mmTop = 15081
        mmWidth = 13589
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ESTOQUE ATUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 6519
        mmLeft = 155575
        mmTop = 15081
        mmWidth = 13885
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 171186
        mmTop = 15081
        mmWidth = 5927
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 22489
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDVariacao: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 10848
      mmPrintPosition = 0
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 19315
        mmTop = 0
        mmWidth = 68527
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_UND'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 89694
        mmTop = 0
        mmWidth = 5821
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText4'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_ESTOQUE'
        DataPipeline = ppDBProdutos
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3260
        mmLeft = 102626
        mmTop = 0
        mmWidth = 7070
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText5'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_ENTRADA'
        DataPipeline = ppDBProdutos
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3260
        mmLeft = 120089
        mmTop = 0
        mmWidth = 7070
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText6'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_SAIDA'
        DataPipeline = ppDBProdutos
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3260
        mmLeft = 131995
        mmTop = 0
        mmWidth = 7070
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText7'
        HyperlinkEnabled = False
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_RESERVA'
        DataPipeline = ppDBProdutos
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3260
        mmLeft = 147341
        mmTop = 0
        mmWidth = 7070
        BandType = 4
        LayerName = Foreground2
      end
      object ppVariable3: TppVariable
        DesignLayer = ppDesignLayer3
        UserName = 'Variable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 158169
        mmTop = 0
        mmWidth = 11430
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 170657
        mmTop = 0
        mmWidth = 23707
        BandType = 4
        LayerName = Foreground2
      end
      object ppSubRVariacao: TppSubReport
        DesignLayer = ppDesignLayer3
        UserName = 'ppSubRVariacao'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 7673
        mmLeft = 0
        mmTop = 3175
        mmWidth = 196000
        BandType = 4
        LayerName = Foreground2
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppDBProdutos
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 15000
          PrinterSetup.mmMarginLeft = 10000
          PrinterSetup.mmMarginRight = 10000
          PrinterSetup.mmMarginTop = 15000
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '16.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBProdutos'
          object ppDetailBand4: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 6879
            mmPrintPosition = 0
            object ppDBText31: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText1'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_DCVAR1'
              DataPipeline = ppDBProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBProdutos'
              mmHeight = 3175
              mmLeft = 2117
              mmTop = 265
              mmWidth = 19579
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText32: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText9'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_VAR1'
              DataPipeline = ppDBProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBProdutos'
              mmHeight = 3175
              mmLeft = 2117
              mmTop = 3704
              mmWidth = 19579
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText33: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText10'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_DCVAR2'
              DataPipeline = ppDBProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBProdutos'
              mmHeight = 3175
              mmLeft = 23548
              mmTop = 265
              mmWidth = 19579
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText34: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText2'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_VAR2'
              DataPipeline = ppDBProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBProdutos'
              mmHeight = 3175
              mmLeft = 23548
              mmTop = 3704
              mmWidth = 19579
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText35: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText12'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_DCVAR3'
              DataPipeline = ppDBProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBProdutos'
              mmHeight = 3175
              mmLeft = 45244
              mmTop = 265
              mmWidth = 19579
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText36: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText13'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_VAR3'
              DataPipeline = ppDBProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBProdutos'
              mmHeight = 3175
              mmLeft = 45244
              mmTop = 3704
              mmWidth = 19579
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText37: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText14'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_DCVAR4'
              DataPipeline = ppDBProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBProdutos'
              mmHeight = 3175
              mmLeft = 66675
              mmTop = 265
              mmWidth = 19579
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText38: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText3'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_VAR4'
              DataPipeline = ppDBProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBProdutos'
              mmHeight = 3175
              mmLeft = 66675
              mmTop = 3704
              mmWidth = 19579
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText39: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText4'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_DCVAR5'
              DataPipeline = ppDBProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBProdutos'
              mmHeight = 3175
              mmLeft = 88371
              mmTop = 265
              mmWidth = 19579
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText40: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText17'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_VAR5'
              DataPipeline = ppDBProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBProdutos'
              mmHeight = 3175
              mmLeft = 88371
              mmTop = 3704
              mmWidth = 19579
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText41: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText18'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_DCVAR6'
              DataPipeline = ppDBProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBProdutos'
              mmHeight = 3175
              mmLeft = 110067
              mmTop = 265
              mmWidth = 19579
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText42: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText19'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_VAR6'
              DataPipeline = ppDBProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBProdutos'
              mmHeight = 3175
              mmLeft = 110067
              mmTop = 3704
              mmWidth = 19579
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText43: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText20'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_DCVAR7'
              DataPipeline = ppDBProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBProdutos'
              mmHeight = 3175
              mmLeft = 131763
              mmTop = 265
              mmWidth = 19579
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText44: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText21'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_VAR7'
              DataPipeline = ppDBProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBProdutos'
              mmHeight = 3175
              mmLeft = 131763
              mmTop = 3704
              mmWidth = 19579
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText45: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText22'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_DCVAR8'
              DataPipeline = ppDBProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBProdutos'
              mmHeight = 3175
              mmLeft = 153459
              mmTop = 265
              mmWidth = 19579
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText46: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText23'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_VAR8'
              DataPipeline = ppDBProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBProdutos'
              mmHeight = 3175
              mmLeft = 153459
              mmTop = 3704
              mmWidth = 19579
              BandType = 4
              LayerName = Foreground1
            end
          end
          object ppDesignLayers2: TppDesignLayers
            object ppDesignLayer2: TppDesignLayer
              UserName = 'Foreground1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total de Itens Listados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 529
        mmTop = 529
        mmWidth = 28998
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 30427
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground2
      end
      object ppVariable5: TppVariable
        DesignLayer = ppDesignLayer3
        UserName = 'Variable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        LookAhead = True
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 159632
        mmTop = 529
        mmWidth = 12277
        BandType = 7
        LayerName = Foreground2
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060F
        5661726961626C65314F6E43616C630B50726F6772616D54797065070B747450
        726F63656475726506536F7572636506B470726F636564757265205661726961
        626C65314F6E43616C63287661722056616C75653A2056617269616E74293B0D
        0A626567696E0D0A202056616C7565203A3D2028444250726F6475746F735B27
        5052445F4553544F515545275D2B444250726F6475746F735B275052445F454E
        5452414441275D292D28444250726F6475746F735B275052445F534149444127
        5D2B444250726F6475746F735B275052445F52455345525641275D293B0D0A65
        6E643B0D0A0D436F6D706F6E656E744E616D6506095661726961626C65310945
        76656E744E616D6506064F6E43616C63074576656E7449440221084361726574
        506F730102000200000001060F5472614576656E7448616E646C65720B50726F
        6772616D4E616D65060F5661726961626C65324F6E43616C630B50726F677261
        6D54797065070B747450726F63656475726506536F7572636506EE70726F6365
        64757265205661726961626C65324F6E43616C63287661722056616C75653A20
        56617269616E74293B0D0A7661720D0A202077546F74616C3A43757272656E63
        793B0D0A626567696E0D0A2020202077546F74616C3A3D2077546F74616C202B
        2028444250726F6475746F735B275052445F4553544F515545275D2B44425072
        6F6475746F735B275052445F454E5452414441275D292D28444250726F647574
        6F735B275052445F5341494441275D2B444250726F6475746F735B275052445F
        52455345525641275D293B0D0A2020202056616C7565203A3D2077546F74616C
        3B0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506095661726961626C
        6532094576656E744E616D6506064F6E43616C63074576656E74494402210843
        61726574506F730102000200000000}
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object ppRP03: TppReport
    AutoStop = False
    DataPipeline = ppDBProdutos
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELPRODUTOS03.r' +
      'tm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 1074
    Top = 208
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBProdutos'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 21696
      mmPrintPosition = 0
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground3
      end
      object LBL_03_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 794
        mmWidth = 29845
        BandType = 0
        LayerName = Foreground3
      end
      object LBL_03_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 5027
        mmWidth = 14393
        BandType = 0
        LayerName = Foreground3
      end
      object LBL_03_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 9260
        mmWidth = 14393
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 13494
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground3
      end
      object ppSystemVariable5: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 164360
        mmTop = 794
        mmWidth = 31962
        BandType = 0
        LayerName = Foreground3
      end
      object ppSystemVariable6: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 174732
        mmTop = 9260
        mmWidth = 21590
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'REFERENCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 14023
        mmWidth = 18785
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 19844
        mmTop = 14023
        mmWidth = 14182
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'UND'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 96044
        mmTop = 14023
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CUSTO UNITARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 123296
        mmTop = 14023
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ESTOQUE ATUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 103056
        mmTop = 14023
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'P.CUSTO TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 145257
        mmTop = 14023
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 21431
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label58'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CUSTO M'#201'DIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 162984
        mmTop = 14023
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel59: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label59'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'P.M'#201'DIO TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 184150
        mmTop = 14023
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground3
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 19844
        mmTop = 0
        mmWidth = 74877
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_UND'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 96044
        mmTop = 0
        mmWidth = 5821
        BandType = 4
        LayerName = Foreground3
      end
      object ppVariable6: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'Variable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 103717
        mmTop = 0
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_PCUSTO'
        DataPipeline = ppDBProdutos
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 123296
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground3
      end
      object ppVariable7: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'Variable7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 145257
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText63: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText63'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_PMEDIO'
        DataPipeline = ppDBProdutos
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 162984
        mmTop = 0
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground3
      end
      object ppVariable4: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'Variable3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 2
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 184150
        mmTop = 0
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground3
      end
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total de Itens Listados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 529
        mmTop = 529
        mmWidth = 28998
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer4
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 30427
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground3
      end
      object ppVariable8: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'Variable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        LookAhead = True
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 103452
        mmTop = 529
        mmWidth = 13758
        BandType = 7
        LayerName = Foreground3
      end
      object ppVariable9: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'Variable9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        LookAhead = True
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 145257
        mmTop = 529
        mmWidth = 12277
        BandType = 7
        LayerName = Foreground3
      end
      object ppVariable11: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'Variable11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 2
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        LookAhead = True
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 184150
        mmTop = 529
        mmWidth = 12171
        BandType = 7
        LayerName = Foreground3
      end
    end
    object raCodeModule3: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060F
        5661726961626C65314F6E43616C630B50726F6772616D54797065070B747450
        726F63656475726506536F7572636506CE70726F636564757265205661726961
        626C65314F6E43616C63287661722056616C75653A2056617269616E74293B0D
        0A626567696E0D0A202056616C7565203A3D2028444250726F6475746F735B27
        5052445F4553544F515545275D2B444250726F6475746F735B275052445F454E
        5452414441275D292D28444250726F6475746F735B275052445F534149444127
        5D2B444250726F6475746F735B275052445F52455345525641275D2B44425072
        6F6475746F735B275052445F454D50454E484F275D293B0D0A656E643B0D0A0D
        436F6D706F6E656E744E616D6506095661726961626C6531094576656E744E61
        6D6506064F6E43616C63074576656E7449440221084361726574506F73010200
        0200000001060F5472614576656E7448616E646C65720B50726F6772616D4E61
        6D65060F5661726961626C65324F6E43616C630B50726F6772616D5479706507
        0B747450726F63656475726506536F7572636506D270726F6365647572652056
        61726961626C65324F6E43616C63287661722056616C75653A2056617269616E
        74293B0D0A7661720D0A202077546F74616C3A43757272656E63793B0D0A6265
        67696E0D0A2020202077546F74616C3A3D2077546F74616C202B202844425072
        6F6475746F735B275052445F4553544F515545275D2B444250726F6475746F73
        5B275052445F454E5452414441275D292D444250726F6475746F735B27505244
        5F5341494441275D3B0D0A2020202056616C7565203A3D2077546F74616C3B0D
        0A656E643B0D0A0D436F6D706F6E656E744E616D6506095661726961626C6532
        094576656E744E616D6506064F6E43616C63074576656E744944022108436172
        6574506F730102000200000001060F5472614576656E7448616E646C65720B50
        726F6772616D4E616D65060F5661726961626C65374F6E43616C630B50726F67
        72616D54797065070B747450726F63656475726506536F7572636506B570726F
        636564757265205661726961626C65374F6E43616C63287661722056616C7565
        3A2056617269616E74293B0D0A626567696E0D0A2020202056616C7565203A3D
        202828444250726F6475746F735B275052445F4553544F515545275D2B444250
        726F6475746F735B275052445F454E5452414441275D292D444250726F647574
        6F735B275052445F5341494441275D292A444250726F6475746F735B27505244
        5F50435553544F275D3B0D0A656E643B0D0A0D436F6D706F6E656E744E616D65
        06095661726961626C6537094576656E744E616D6506064F6E43616C63074576
        656E7449440221084361726574506F730102000200000001060F547261457665
        6E7448616E646C65720B50726F6772616D4E616D65060F5661726961626C6539
        4F6E43616C630B50726F6772616D54797065070B747450726F63656475726506
        536F757263650C0301000070726F636564757265205661726961626C65394F6E
        43616C63287661722056616C75653A2056617269616E74293B0D0A7661720D0A
        202077546F74616C437573746F3A43757272656E63793B0D0A626567696E0D0A
        2020202077546F74616C437573746F3A3D2077546F74616C437573746F202B20
        282828444250726F6475746F735B275052445F4553544F515545275D2B444250
        726F6475746F735B275052445F454E5452414441275D292D444250726F647574
        6F735B275052445F5341494441275D292A444250726F6475746F735B27505244
        5F50435553544F275D293B0D0A2020202056616C7565203A3D2077546F74616C
        437573746F3B0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506095661
        726961626C6539094576656E744E616D6506064F6E43616C63074576656E7449
        440221084361726574506F730102000200000001060F5472614576656E744861
        6E646C65720B50726F6772616D4E616D65060F5661726961626C65334F6E4361
        6C630B50726F6772616D54797065070B747450726F63656475726506536F7572
        636506B770726F636564757265205661726961626C65334F6E43616C63287661
        722056616C75653A2056617269616E74293B0D0A626567696E0D0A0D0A202056
        616C7565203A3D202828444250726F6475746F735B275052445F4553544F5155
        45275D2B444250726F6475746F735B275052445F454E5452414441275D292D44
        4250726F6475746F735B275052445F5341494441275D292A444250726F647574
        6F735B275052445F504D4544494F275D3B0D0A0D0A656E643B0D0A0D436F6D70
        6F6E656E744E616D6506095661726961626C6533094576656E744E616D650606
        4F6E43616C63074576656E7449440221084361726574506F7301020002000000
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650610
        5661726961626C6531314F6E43616C630B50726F6772616D54797065070B7474
        50726F63656475726506536F757263650C0401000070726F6365647572652056
        61726961626C6531314F6E43616C63287661722056616C75653A205661726961
        6E74293B0D0A7661720D0A202077546F74616C4D6564696F3A43757272656E63
        793B0D0A626567696E0D0A2020202077546F74616C4D6564696F3A3D2077546F
        74616C4D6564696F202B20282828444250726F6475746F735B275052445F4553
        544F515545275D2B444250726F6475746F735B275052445F454E545241444127
        5D292D444250726F6475746F735B275052445F5341494441275D292A44425072
        6F6475746F735B275052445F504D4544494F275D293B0D0A2020202056616C75
        65203A3D2077546F74616C4D6564696F3B0D0A656E643B0D0A0D436F6D706F6E
        656E744E616D65060A5661726961626C653131094576656E744E616D6506064F
        6E43616C63074576656E7449440221084361726574506F730102000200000000}
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'Foreground3'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object DsProduFornecedor: TDataSource
    DataSet = SqlCdsProduFornecedor
    Left = 526
    Top = 145
  end
  object ppDBProdForn: TppDBPipeline
    DataSource = DsProduFornecedor
    UserName = 'DBProdForn'
    Left = 1004
    Top = 241
  end
  object ppRP07: TppReport
    AutoStop = False
    DataPipeline = ppDBProdForn
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 5000
    PrinterSetup.mmMarginRight = 5000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELPRODUTOS07'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 1073
    Top = 361
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBProdForn'
    object pp07HeaderBand1: TppHeaderBand
      BeforePrint = pp07HeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 15610
      mmPrintPosition = 0
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 205000
        BandType = 0
        LayerName = Foreground4
      end
      object LBL_07_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LBL_04_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBL_07_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 794
        mmWidth = 160000
        BandType = 0
        LayerName = Foreground4
      end
      object LBL_07_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LBL_04_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBL_07_LTITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160000
        BandType = 0
        LayerName = Foreground4
      end
      object LBL_07_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LBL_04_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBL_07_LTITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 9790
        mmWidth = 160000
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line5'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 15345
        mmWidth = 205000
        BandType = 0
        LayerName = Foreground4
      end
      object ppSystemVariable7: TppSystemVariable
        DesignLayer = ppDesignLayer5
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 172826
        mmTop = 794
        mmWidth = 31962
        BandType = 0
        LayerName = Foreground4
      end
      object ppSystemVariable8: TppSystemVariable
        DesignLayer = ppDesignLayer5
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 182404
        mmTop = 9790
        mmWidth = 21590
        BandType = 0
        LayerName = Foreground4
      end
    end
    object pp07DetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppDBText59: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_CODIGO'
        DataPipeline = ppDBProdForn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBProdForn'
        mmHeight = 3175
        mmLeft = 7144
        mmTop = 0
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText51: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_RAZAO'
        DataPipeline = ppDBProdForn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBProdForn'
        mmHeight = 3175
        mmLeft = 13758
        mmTop = 0
        mmWidth = 70115
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label29'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 85196
        mmTop = 0
        mmWidth = 11007
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText56: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_CIDADE'
        DataPipeline = ppDBProdForn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBProdForn'
        mmHeight = 3175
        mmLeft = 98161
        mmTop = 0
        mmWidth = 41804
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 140494
        mmTop = 0
        mmWidth = 8255
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText55: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_FONE'
        DataPipeline = ppDBProdForn
        DisplayFormat = '\(999\)9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBProdForn'
        mmHeight = 3175
        mmLeft = 150548
        mmTop = 0
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fax.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 173832
        mmTop = 0
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText57: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_FAX'
        DataPipeline = ppDBProdForn
        DisplayFormat = '\(999\)9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBProdForn'
        mmHeight = 3175
        mmLeft = 181240
        mmTop = 0
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Contato.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 3704
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText52: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_CONTATO'
        DataPipeline = ppDBProdForn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBProdForn'
        mmHeight = 3175
        mmLeft = 14023
        mmTop = 3704
        mmWidth = 35454
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'E-mail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 51594
        mmTop = 3704
        mmWidth = 9313
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText54: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FOR_EMAIL'
        DataPipeline = ppDBProdForn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBProdForn'
        mmHeight = 3175
        mmLeft = 62442
        mmTop = 3704
        mmWidth = 56092
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label35'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cod:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground4
      end
    end
    object ppSummaryBand4: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total de Produtos Listados.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 37253
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBProdForn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBProdForn'
        mmHeight = 3175
        mmLeft = 38894
        mmTop = 0
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground4
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'PRD_REFER'
      DataPipeline = ppDBProdForn
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBProdForn'
      NewFile = False
      object pp07GroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppLine13: TppLine
          DesignLayer = ppDesignLayer5
          UserName = 'Line13'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3968
          mmWidth = 205000
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppDBText12: TppDBText
          DesignLayer = ppDesignLayer5
          UserName = 'DBText3'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PRD_REFER'
          DataPipeline = ppDBProdForn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBProdForn'
          mmHeight = 3175
          mmLeft = 119327
          mmTop = 0
          mmWidth = 25929
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppDBText13: TppDBText
          DesignLayer = ppDesignLayer5
          UserName = 'DBText5'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PRD_DESCRI'
          DataPipeline = ppDBProdForn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBProdForn'
          mmHeight = 3175
          mmLeft = 13758
          mmTop = 0
          mmWidth = 92075
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppLabel34: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label34'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Ref.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 111919
          mmTop = 0
          mmWidth = 6138
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppLabel31: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label31'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Produto.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 0
          mmWidth = 12965
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
      end
      object pp07GroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 265
        mmPrintPosition = 0
        object ppLine23: TppLine
          DesignLayer = ppDesignLayer5
          UserName = 'Line3'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 205052
          BandType = 5
          GroupNo = 0
          LayerName = Foreground4
        end
      end
    end
    object raCodeModule4: TraCodeModule
      ProgramStream = {00}
    end
    object ppDesignLayers5: TppDesignLayers
      object ppDesignLayer5: TppDesignLayer
        UserName = 'Foreground4'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object SqlCdsProduFornecedor: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'F2.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PGR_CODIGO,'#13#10'P1.PTI_CO' +
      'DIGO,'#13#10'F2.FOR_CODIGO,'#13#10'F1.FOR_RAZAO,'#13#10'F1.FOR_CIDADE,'#13#10'F1.FOR_FON' +
      'E,'#13#10'F1.FOR_FAX,'#13#10'F1.FOR_CONTATO,'#13#10'F1.FOR_EMAIL'#13#10'FROM FOR_PROD F2' +
      #13#10'JOIN PRD0000  P1 ON F2.PRD_REFER  = P1.prd_refer'#13#10'JOIN FOR0000' +
      '  F1 ON F2.FOR_CODIGO = F1.FOR_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'F2.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PGR_CODIGO,'#13#10'P1.PTI_CO' +
      'DIGO,'#13#10'F2.FOR_CODIGO,'#13#10'F1.FOR_RAZAO,'#13#10'F1.FOR_CIDADE,'#13#10'F1.FOR_FON' +
      'E,'#13#10'F1.FOR_FAX,'#13#10'F1.FOR_CONTATO,'#13#10'F1.FOR_EMAIL'#13#10'FROM FOR_PROD F2' +
      #13#10'JOIN PRD0000  P1 ON F2.PRD_REFER  = P1.prd_refer'#13#10'JOIN FOR0000' +
      '  F1 ON F2.FOR_CODIGO = F1.FOR_CODIGO'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 416
    Top = 153
    object SqlCdsProduFornecedorPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsProduFornecedorPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
    object SqlCdsProduFornecedorPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object SqlCdsProduFornecedorFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsProduFornecedorFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsProduFornecedorFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      Size = 30
    end
    object SqlCdsProduFornecedorFOR_FONE: TStringField
      FieldName = 'FOR_FONE'
      Size = 11
    end
    object SqlCdsProduFornecedorFOR_FAX: TStringField
      FieldName = 'FOR_FAX'
      Size = 11
    end
    object SqlCdsProduFornecedorFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
    end
    object SqlCdsProduFornecedorFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      Size = 35
    end
    object SqlCdsProduFornecedorPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object ppRP01: TppReport
    AutoStop = False
    DataPipeline = ppDBProdutos
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELPRODUTOS01'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 1074
    Top = 162
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBProdutos'
    object pp01HeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground5
      end
      object LBL_01_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 529
        mmWidth = 160000
        BandType = 0
        LayerName = Foreground5
      end
      object LBL_01_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160000
        BandType = 0
        LayerName = Foreground5
      end
      object LBL_01_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 10054
        mmWidth = 160000
        BandType = 0
        LayerName = Foreground5
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14817
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground5
      end
      object ppSystemVariable9: TppSystemVariable
        DesignLayer = ppDesignLayer6
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 163566
        mmTop = 794
        mmWidth = 31962
        BandType = 0
        LayerName = Foreground5
      end
      object ppSystemVariable10: TppSystemVariable
        DesignLayer = ppDesignLayer6
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 173938
        mmTop = 10054
        mmWidth = 21590
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'REFERENCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 15346
        mmWidth = 18785
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 20638
        mmTop = 15346
        mmWidth = 14182
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'UND'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 89959
        mmTop = 15346
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'COMPRAS EM ABERTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 162454
        mmTop = 15346
        mmWidth = 16722
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ESTOQUE+ COMPRAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 6519
        mmLeft = 180839
        mmTop = 15346
        mmWidth = 15536
        BandType = 0
        LayerName = Foreground5
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 22754
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ENTRADAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 98161
        mmTop = 15346
        mmWidth = 15663
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'SAIDAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 117740
        mmTop = 15610
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label37'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ESTOQUE ATUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 6519
        mmLeft = 146579
        mmTop = 15346
        mmWidth = 13885
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label45'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'RESERVA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 130704
        mmTop = 15610
        mmWidth = 13589
        BandType = 0
        LayerName = Foreground5
      end
    end
    object pp01DetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 19844
        mmTop = 0
        mmWidth = 69850
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_UND'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 89959
        mmTop = 0
        mmWidth = 5821
        BandType = 4
        LayerName = Foreground5
      end
      object ppVariable10: TppVariable
        DesignLayer = ppDesignLayer6
        UserName = 'Variable7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 184892
        mmTop = 0
        mmWidth = 11430
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_ENTRADA'
        DataPipeline = ppDBProdutos
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 96573
        mmTop = 0
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_SAIDA'
        DataPipeline = ppDBProdutos
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 114036
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_PENDENTE'
        DataPipeline = ppDBProdutos
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 161925
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_RESERVA'
        DataPipeline = ppDBProdutos
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 130969
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground5
      end
      object ppVariable12: TppVariable
        DesignLayer = ppDesignLayer6
        UserName = 'Variable12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 147902
        mmTop = 0
        mmWidth = 12912
        BandType = 4
        LayerName = Foreground5
      end
    end
    object pp01SummaryBand5: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground5
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total de Itens Listados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 529
        mmTop = 529
        mmWidth = 28998
        BandType = 7
        LayerName = Foreground5
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer6
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 30427
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground5
      end
    end
    object raCodeModule5: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060F
        5661726961626C65374F6E43616C630B50726F6772616D54797065070B747450
        726F63656475726506536F7572636506D970726F636564757265205661726961
        626C65374F6E43616C63287661722056616C75653A2056617269616E74293B0D
        0A626567696E0D0A2020202056616C7565203A3D202828444250726F6475746F
        735B275052445F4553544F515545275D202B20444250726F6475746F735B2750
        52445F454E5452414441275D202B20444250726F6475746F735B275052445F50
        454E44454E5445275D29202D2028444250726F6475746F735B275052445F5341
        494441275D2B444250726F6475746F735B275052445F52455345525641275D29
        293B0D0A656E643B0D0A0D436F6D706F6E656E744E616D650609566172696162
        6C6537094576656E744E616D6506064F6E43616C63074576656E744944022108
        4361726574506F730102000200000001060F5472614576656E7448616E646C65
        720B50726F6772616D4E616D6506105661726961626C6531324F6E43616C630B
        50726F6772616D54797065070B747450726F63656475726506536F7572636506
        BF70726F636564757265205661726961626C6531324F6E43616C632876617220
        56616C75653A2056617269616E74293B0D0A626567696E0D0A0D0A2056616C75
        65203A3D202828444250726F6475746F735B275052445F4553544F515545275D
        202B20444250726F6475746F735B275052445F454E5452414441275D29202D20
        28444250726F6475746F735B275052445F5341494441275D2B444250726F6475
        746F735B275052445F52455345525641275D29293B0D0A200D0A656E643B0D0A
        0D436F6D706F6E656E744E616D65060A5661726961626C653132094576656E74
        4E616D6506064F6E43616C63074576656E7449440221084361726574506F7301
        02000200000000}
    end
    object daDataModule1: TdaDataModule
    end
    object ppDesignLayers6: TppDesignLayers
      object ppDesignLayer6: TppDesignLayer
        UserName = 'Foreground5'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppRP05: TppReport
    AutoStop = False
    DataPipeline = ppDB05
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Developer\Final\Adjutor-Nfe\Relatorios\RELPRODUTOS05.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 1074
    Top = 308
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDB05'
    object pp05HeaderBand4: TppHeaderBand
      BeforePrint = pp05HeaderBand4BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 30000
      mmPrintPosition = 0
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer7
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 3440
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground6
      end
      object LBL_05_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 5080
        mmLeft = 0
        mmTop = 4233
        mmWidth = 37112
        BandType = 0
        LayerName = Foreground6
      end
      object LBL_05_END1: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBL_05_END1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3598
        mmLeft = 0
        mmTop = 9790
        mmWidth = 21096
        BandType = 0
        LayerName = Foreground6
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer7
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 24735
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground6
      end
      object ppSystemVariable11: TppSystemVariable
        DesignLayer = ppDesignLayer7
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 149490
        mmTop = 0
        mmWidth = 25612
        BandType = 0
        LayerName = Foreground6
      end
      object ppSystemVariable12: TppSystemVariable
        DesignLayer = ppDesignLayer7
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 178912
        mmTop = 0
        mmWidth = 17145
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label50'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TABELA DE PRE'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5080
        mmLeft = 89076
        mmTop = 19920
        mmWidth = 40146
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label49'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Data da Ving'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 0
        mmTop = 0
        mmWidth = 24906
        BandType = 0
        LayerName = Foreground6
      end
      object LBL_05_DATAVI: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'LBL_05_DATAVI'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBL_05_DATAVI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 28310
        mmTop = 0
        mmWidth = 21802
        BandType = 0
        LayerName = Foreground6
      end
      object LBL_05_HOME: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'LBL_05_HOME'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBL_05_HOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 0
        mmTop = 13924
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground6
      end
      object PMT_CAB_TABPRECO: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'PMT_CAB_TABPRECO'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PMT_CAB_TABPRECO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5080
        mmLeft = 85831
        mmTop = 15081
        mmWidth = 46214
        BandType = 0
        LayerName = Foreground6
      end
    end
    object pp05DetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDB05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB05'
        mmHeight = 3246
        mmLeft = 0
        mmTop = 0
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText47'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDB05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB05'
        mmHeight = 3246
        mmLeft = 19844
        mmTop = 0
        mmWidth = 77523
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText48'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_COMPL'
        DataPipeline = ppDB05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB05'
        mmHeight = 3175
        mmLeft = 100806
        mmTop = 0
        mmWidth = 30427
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText49: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText49'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_PVENDA'
        DataPipeline = ppDB05
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB05'
        mmHeight = 3246
        mmLeft = 132557
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText50: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText50'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_PESOKG'
        DataPipeline = ppDB05
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB05'
        mmHeight = 3246
        mmLeft = 152400
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText53: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText53'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_EMBALA'
        DataPipeline = ppDB05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB05'
        mmHeight = 3175
        mmLeft = 169863
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText58: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText58'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'IPI_ALIQ'
        DataPipeline = ppDB05
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB05'
        mmHeight = 3175
        mmLeft = 188913
        mmTop = 0
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground6
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'LIN_DESCRI'
      DataPipeline = ppDB05
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDB05'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 8202
        mmPrintPosition = 0
        object ppDBText22: TppDBText
          DesignLayer = ppDesignLayer7
          UserName = 'DBText1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'LIN_DESCRI'
          DataPipeline = ppDB05
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDB05'
          mmHeight = 3457
          mmLeft = 0
          mmTop = 0
          mmWidth = 30692
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLine22: TppLine
          DesignLayer = ppDesignLayer7
          UserName = 'Line22'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3704
          mmWidth = 196000
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel51: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label51'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3246
          mmLeft = 0
          mmTop = 4233
          mmWidth = 18785
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel52: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label52'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Descri'#231#227'o do Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3246
          mmLeft = 19844
          mmTop = 4233
          mmWidth = 26741
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel53: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label53'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Medida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3246
          mmLeft = 100806
          mmTop = 4233
          mmWidth = 9102
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel54: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label54'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'Pre'#231'o Unit'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3246
          mmLeft = 132557
          mmTop = 4233
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel55: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label55'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Peso Kg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3246
          mmLeft = 152400
          mmTop = 4233
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel56: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label56'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Embalagem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3246
          mmLeft = 169863
          mmTop = 4233
          mmWidth = 16140
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel57: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label57'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3246
          mmLeft = 189177
          mmTop = 4233
          mmWidth = 5556
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLine25: TppLine
          DesignLayer = ppDesignLayer7
          UserName = 'Line25'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 7937
          mmWidth = 196000
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 265
        mmPrintPosition = 0
        object ppLine26: TppLine
          DesignLayer = ppDesignLayer7
          UserName = 'Line26'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 196000
          BandType = 5
          GroupNo = 0
          LayerName = Foreground6
        end
      end
    end
    object ppDesignLayers7: TppDesignLayers
      object ppDesignLayer7: TppDesignLayer
        UserName = 'Foreground6'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList6: TppParameterList
    end
  end
  object ppDB05: TppDBPipeline
    DataSource = DsRel05
    UserName = 'DB05'
    Left = 940
    Top = 188
  end
  object DsRel05: TDataSource
    DataSet = SqlCdsRel05
    Left = 534
    Top = 92
  end
  object SqlCdsRel05: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'P1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_COMPL,'#13#10'P1.PRD_PVE' +
      'NDA,'#13#10'P1.PRD_PESOKg,'#13#10'P1.PRD_EMBALA,'#13#10'P1.PRD_TABPRECO,'#13#10'P1.IPI_C' +
      'ODIGO,'#13#10'I1.IPI_ALIQ,'#13#10'P1.LIN_CODIGO,'#13#10'L1.LIN_DESCRI'#13#10'FROM PRD000' +
      '0 P1'#13#10'LEFT JOIN ipi0000 I1   ON P1.ipi_codigo = I1.ipi_codigo'#13#10'L' +
      'EFT JOIN prd_linha L1 ON P1.lin_codigo = L1.lin_codigo'#13#10'WHERE P1' +
      '.prd_tabpreco ='#39'S'#39'  ORDER BY L1.LIN_DESCRI,P1.PRD_REFER'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'P1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_COMPL,'#13#10'P1.PRD_PVE' +
      'NDA,'#13#10'P1.PRD_PESOKg,'#13#10'P1.PRD_EMBALA,'#13#10'P1.PRD_TABPRECO,'#13#10'P1.IPI_C' +
      'ODIGO,'#13#10'I1.IPI_ALIQ,'#13#10'P1.LIN_CODIGO,'#13#10'L1.LIN_DESCRI'#13#10'FROM PRD000' +
      '0 P1'#13#10'LEFT JOIN ipi0000 I1   ON P1.ipi_codigo = I1.ipi_codigo'#13#10'L' +
      'EFT JOIN prd_linha L1 ON P1.lin_codigo = L1.lin_codigo'#13#10'WHERE P1' +
      '.prd_tabpreco ='#39'S'#39'  ORDER BY L1.LIN_DESCRI,P1.PRD_REFER'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 440
    Top = 108
    object SqlCdsRel05PRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 40
    end
    object SqlCdsRel05PRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      Size = 15
    end
    object SqlCdsRel05PRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      Precision = 15
    end
    object SqlCdsRel05PRD_PESOKG: TFMTBCDField
      FieldName = 'PRD_PESOKG'
      Precision = 15
    end
    object SqlCdsRel05PRD_EMBALA: TStringField
      FieldName = 'PRD_EMBALA'
      Size = 10
    end
    object SqlCdsRel05PRD_TABPRECO: TStringField
      FieldName = 'PRD_TABPRECO'
      Size = 1
    end
    object SqlCdsRel05IPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object SqlCdsRel05IPI_ALIQ: TFMTBCDField
      FieldName = 'IPI_ALIQ'
      Precision = 15
    end
    object SqlCdsRel05LIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      Required = True
      Size = 2
    end
    object SqlCdsRel05LIN_DESCRI: TStringField
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object SqlCdsRel05PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object ppRP08: TppReport
    AutoStop = False
    DataPipeline = ppDBProdutos
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELPRODUTOS08.r' +
      'tm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 1073
    Top = 414
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBProdutos'
    object pp08HeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 19315
      mmPrintPosition = 0
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer8
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 259000
        BandType = 0
        LayerName = Foreground7
      end
      object LBL_08_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'LBL_04_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBL_08_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 529
        mmWidth = 160000
        BandType = 0
        LayerName = Foreground7
      end
      object LBL_08_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'LBL_04_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBL_08_LTITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160000
        BandType = 0
        LayerName = Foreground7
      end
      object LBL_08_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'LBL_04_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBL_08_LTITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 10054
        mmWidth = 237861
        BandType = 0
        LayerName = Foreground7
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer8
        UserName = 'Line5'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 15081
        mmWidth = 259000
        BandType = 0
        LayerName = Foreground7
      end
      object ppSystemVariable13: TppSystemVariable
        DesignLayer = ppDesignLayer8
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 226837
        mmTop = 529
        mmWidth = 32456
        BandType = 0
        LayerName = Foreground7
      end
      object ppSystemVariable14: TppSystemVariable
        DesignLayer = ppDesignLayer8
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 237244
        mmTop = 10054
        mmWidth = 22049
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel61: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label61'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Referencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 15610
        mmWidth = 18785
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label63'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descri'#231#227'o do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 21431
        mmTop = 15610
        mmWidth = 34925
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel64: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label64'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Var1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 109406
        mmTop = 15610
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel65: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label65'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Var2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 128720
        mmTop = 15610
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel66: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label66'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Var3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 147770
        mmTop = 15610
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel67: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label67'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Var4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 166556
        mmTop = 15610
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel68: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label68'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Var5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 185077
        mmTop = 15610
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel69: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label69'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Var6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 204127
        mmTop = 15610
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel70: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label70'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Var7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 222912
        mmTop = 15610
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground7
      end
      object ppLabel71: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label701'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Var8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 241962
        mmTop = 15610
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground7
      end
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer8
        UserName = 'Line28'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 19050
        mmWidth = 259000
        BandType = 0
        LayerName = Foreground7
      end
    end
    object pp08DetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText62: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText66: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText15'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 21431
        mmTop = 0
        mmWidth = 84138
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText60: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText60'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR1'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 109538
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText61: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText61'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR2'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 2963
        mmLeft = 128852
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText64: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText64'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR3'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 2963
        mmLeft = 147902
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText65: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText65'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR4'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 2963
        mmLeft = 166688
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText67: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText67'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR5'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 2963
        mmLeft = 185209
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText68: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText68'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR6'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 2963
        mmLeft = 204259
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText69: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText69'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR7'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 2963
        mmLeft = 223044
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText70: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText70'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR8'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 2963
        mmLeft = 242094
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground7
      end
    end
    object raCodeModule7: TraCodeModule
      ProgramStream = {00}
    end
    object ppDesignLayers8: TppDesignLayers
      object ppDesignLayer8: TppDesignLayer
        UserName = 'Foreground7'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList7: TppParameterList
    end
  end
  object ppRP09: TppReport
    AutoStop = False
    DataPipeline = ppDBEstoque
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELPRODUTOS09.r' +
      'tm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 968
    Top = 30
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEstoque'
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 27252
      mmPrintPosition = 0
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground8
      end
      object LBL_09_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'LBL_09_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 794
        mmWidth = 160000
        BandType = 0
        LayerName = Foreground8
      end
      object LBL_09_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'LBL_09_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160000
        BandType = 0
        LayerName = Foreground8
      end
      object LBL_09_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'LBL_09_LTITULO2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 9790
        mmWidth = 160000
        BandType = 0
        LayerName = Foreground8
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 19050
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground8
      end
      object ppSystemVariable15: TppSystemVariable
        DesignLayer = ppDesignLayer9
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 164360
        mmTop = 794
        mmWidth = 31962
        BandType = 0
        LayerName = Foreground8
      end
      object ppSystemVariable16: TppSystemVariable
        DesignLayer = ppDesignLayer9
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 174732
        mmTop = 14288
        mmWidth = 21590
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel73: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'REFERENCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 19579
        mmWidth = 20638
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel74: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 22490
        mmTop = 19579
        mmWidth = 74877
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel75: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'UND'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 100806
        mmTop = 19579
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel76: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'CUSTO UNITARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 126471
        mmTop = 19579
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel78: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label8'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'P.CUSTO TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 144198
        mmTop = 19579
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground8
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 26987
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel79: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label58'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'CUSTO M'#201'DIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 162190
        mmTop = 19579
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel80: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label59'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'P.M'#201'DIO TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 179652
        mmTop = 19579
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground8
      end
      object LBL_09_LTITULO3: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'LBL_09_LTITULO3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 14288
        mmWidth = 160000
        BandType = 0
        LayerName = Foreground8
      end
      object ppLabel60: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label60'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ESTOQUE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 108479
        mmTop = 19579
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground8
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstoque'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText71: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRICAO'
        DataPipeline = ppDBEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstoque'
        mmHeight = 3175
        mmLeft = 22490
        mmTop = 0
        mmWidth = 74877
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText72: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_UND'
        DataPipeline = ppDBEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstoque'
        mmHeight = 3175
        mmLeft = 100806
        mmTop = 0
        mmWidth = 5821
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText73: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_PCUSTO'
        DataPipeline = ppDBEstoque
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstoque'
        mmHeight = 3175
        mmLeft = 126471
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText74: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText63'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_PMEDIO'
        DataPipeline = ppDBEstoque
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstoque'
        mmHeight = 3175
        mmLeft = 162190
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText75: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText75'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'ESTOQUE_ATUAL'
        DataPipeline = ppDBEstoque
        DisplayFormat = '#,##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstoque'
        mmHeight = 3175
        mmLeft = 108479
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText76: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText76'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_PCUSTO'
        DataPipeline = ppDBEstoque
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstoque'
        mmHeight = 3175
        mmLeft = 144198
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText77: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText77'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_PMEDIO'
        DataPipeline = ppDBEstoque
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstoque'
        mmHeight = 3175
        mmLeft = 179652
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground8
      end
    end
    object ppSummaryBand5: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground8
      end
      object ppLabel81: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total de Itens Listados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 529
        mmTop = 529
        mmWidth = 28998
        BandType = 7
        LayerName = Foreground8
      end
      object ppDBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer9
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBEstoque'
        mmHeight = 3175
        mmLeft = 30427
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground8
      end
      object ppDBCalc7: TppDBCalc
        DesignLayer = ppDesignLayer9
        UserName = 'DBCalc2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_PCUSTO'
        DataPipeline = ppDBEstoque
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstoque'
        mmHeight = 3175
        mmLeft = 144198
        mmTop = 529
        mmWidth = 16404
        BandType = 7
        LayerName = Foreground8
      end
      object ppDBCalc8: TppDBCalc
        DesignLayer = ppDesignLayer9
        UserName = 'DBCalc8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_PMEDIO'
        DataPipeline = ppDBEstoque
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstoque'
        mmHeight = 3175
        mmLeft = 179652
        mmTop = 529
        mmWidth = 16404
        BandType = 7
        LayerName = Foreground8
      end
    end
    object ppDesignLayers9: TppDesignLayers
      object ppDesignLayer9: TppDesignLayer
        UserName = 'Foreground8'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList8: TppParameterList
    end
  end
  object SqlCdsEstoque: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT '#13#10'P1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND,'#13#10'P1.PRD_PCUS' +
      'TO,'#13#10'P1.PRD_PMEDIO,'#13#10'P1.PRD_PVENDA,'#13#10'((P1.PRD_ESTOQUE+P1.PRD_ENT' +
      'RADA)-PRD_SAIDA) as wESTOQUE'#13#10'--P1.PRD_ESTOQUE,'#13#10'--P1.PRD_SAIDA,' +
      #13#10'--P1.PRD_PENDENTE,'#13#10'--P1.PRD_ENTRADA,'#13#10#13#10'FROM PRD0000 P1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT '#13#10'P1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND,'#13#10'P1.PRD_PCUS' +
      'TO,'#13#10'P1.PRD_PMEDIO,'#13#10'P1.PRD_PVENDA,'#13#10'((P1.PRD_ESTOQUE+P1.PRD_ENT' +
      'RADA)-PRD_SAIDA) as wESTOQUE'#13#10'--P1.PRD_ESTOQUE,'#13#10'--P1.PRD_SAIDA,' +
      #13#10'--P1.PRD_PENDENTE,'#13#10'--P1.PRD_ENTRADA,'#13#10#13#10'FROM PRD0000 P1'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 368
    Top = 190
    object SqlCdsEstoquePRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsEstoquePRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsEstoquePRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
    end
    object SqlCdsEstoquePRD_PMEDIO: TFMTBCDField
      FieldName = 'PRD_PMEDIO'
      Precision = 15
    end
    object SqlCdsEstoquePRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      Precision = 15
    end
    object SqlCdsEstoqueWESTOQUE: TFMTBCDField
      FieldName = 'WESTOQUE'
      Precision = 15
    end
    object SqlCdsEstoquePRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object CdsEstoque: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'IDX_REFER'
        Fields = 'PRD_REFER'
      end
      item
        Name = 'IDX_DESCRI'
        Fields = 'PRD_DESCRICAO'
      end>
    Params = <>
    StoreDefs = True
    Left = 504
    Top = 238
    object CdsEstoqueEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsEstoquePRD_DESCRICAO: TStringField
      FieldName = 'PRD_DESCRICAO'
      Size = 55
    end
    object CdsEstoquePRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 2
    end
    object CdsEstoquePRD_ESTOQUE: TCurrencyField
      FieldName = 'PRD_ESTOQUE'
    end
    object CdsEstoquePRD_ENTRADA: TCurrencyField
      FieldName = 'PRD_ENTRADA'
    end
    object CdsEstoquePRD_SAIDA: TCurrencyField
      FieldName = 'PRD_SAIDA'
    end
    object CdsEstoqueESTOQUE_ATUAL: TCurrencyField
      FieldName = 'ESTOQUE_ATUAL'
    end
    object CdsEstoquePRD_PCUSTO: TCurrencyField
      FieldName = 'PRD_PCUSTO'
    end
    object CdsEstoqueTOTAL_PCUSTO: TCurrencyField
      FieldName = 'TOTAL_PCUSTO'
    end
    object CdsEstoquePRD_PMEDIO: TCurrencyField
      FieldName = 'PRD_PMEDIO'
    end
    object CdsEstoqueTOTAL_PMEDIO: TCurrencyField
      FieldName = 'TOTAL_PMEDIO'
    end
    object CdsEstoquePRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DsEstoque: TDataSource
    DataSet = CdsEstoque
    Left = 568
    Top = 206
  end
  object SqlCdsKardex: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'K1.PRD_REFER,'#13#10'K1.PES_TIPO,'#13#10'SUM(K1.PES_QTDE) AS WPES_QT' +
      'DE'#13#10'FROM PRD_ENSA K1'#13#10'GROUP BY'#13#10'K1.PRD_REFER,'#13#10'K1.PES_TIPO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'K1.PRD_REFER,'#13#10'K1.PES_TIPO,'#13#10'SUM(K1.PES_QTDE) AS WPES_QT' +
      'DE'#13#10'FROM PRD_ENSA K1'#13#10'GROUP BY'#13#10'K1.PRD_REFER,'#13#10'K1.PES_TIPO'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 506
    Top = 182
    object SqlCdsKardexPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsKardexPES_TIPO: TStringField
      FieldName = 'PES_TIPO'
      Size = 1
    end
    object SqlCdsKardexWPES_QTDE: TFMTBCDField
      FieldName = 'WPES_QTDE'
      Precision = 15
    end
  end
  object ppDBEstoque: TppDBPipeline
    DataSource = DsEstoque
    UserName = 'DBEstoque'
    Left = 888
    Top = 30
    object ppDBEstoqueppField1: TppField
      FieldAlias = 'EMP_CODIGO'
      FieldName = 'EMP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueppField2: TppField
      FieldAlias = 'PRD_REFER'
      FieldName = 'PRD_REFER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueppField3: TppField
      FieldAlias = 'PRD_DESCRICAO'
      FieldName = 'PRD_DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueppField4: TppField
      FieldAlias = 'PRD_UND'
      FieldName = 'PRD_UND'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueppField5: TppField
      FieldAlias = 'PRD_ESTOQUE'
      FieldName = 'PRD_ESTOQUE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueppField6: TppField
      FieldAlias = 'PRD_ENTRADA'
      FieldName = 'PRD_ENTRADA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueppField7: TppField
      FieldAlias = 'PRD_SAIDA'
      FieldName = 'PRD_SAIDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueppField8: TppField
      FieldAlias = 'ESTOQUE_ATUAL'
      FieldName = 'ESTOQUE_ATUAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueppField9: TppField
      FieldAlias = 'PRD_PCUSTO'
      FieldName = 'PRD_PCUSTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueppField10: TppField
      FieldAlias = 'TOTAL_PCUSTO'
      FieldName = 'TOTAL_PCUSTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueppField11: TppField
      FieldAlias = 'PRD_PMEDIO'
      FieldName = 'PRD_PMEDIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueppField12: TppField
      FieldAlias = 'TOTAL_PMEDIO'
      FieldName = 'TOTAL_PMEDIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBEstoqueppField13: TppField
      FieldAlias = 'AMX_CODIGO'
      FieldName = 'AMX_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
  end
  object SqlCdsSaldo: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'K1.PRD_REFER,'#13#10'K1.PES_TIPO,'#13#10'SUM(K1.PES_QTDE) AS WPES_QT' +
      'DE'#13#10'FROM PRD_ENSA K1'#13#10'GROUP BY'#13#10'K1.PRD_REFER,'#13#10'K1.PES_TIPO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'K1.PRD_REFER,'#13#10'K1.PES_TIPO,'#13#10'SUM(K1.PES_QTDE) AS WPES_QT' +
      'DE'#13#10'FROM PRD_ENSA K1'#13#10'GROUP BY'#13#10'K1.PRD_REFER,'#13#10'K1.PES_TIPO'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 453
    Top = 198
    object SqlCdsSaldoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsSaldoPES_TIPO: TStringField
      FieldName = 'PES_TIPO'
      Size = 1
    end
    object SqlCdsSaldoWPES_QTDE: TFMTBCDField
      FieldName = 'WPES_QTDE'
      Precision = 15
    end
  end
  object ppR09: TppReport
    AutoStop = False
    DataPipeline = ppDBEstoquePA
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 992
    Top = 288
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEstoquePA'
    object ppHeaderBand5: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 24342
      mmPrintPosition = 0
      object Label_empresaEstPA: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label_empresaEstPA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label_empresaEstPA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4022
        mmLeft = 1058
        mmTop = 500
        mmWidth = 33994
        BandType = 0
        LayerName = Foreground9
      end
      object Refer: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Refer'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Refer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 1852
        mmTop = 20373
        mmWidth = 6900
        BandType = 0
        LayerName = Foreground9
      end
      object DEscricao: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'DEscricao'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descricao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 39158
        mmTop = 20373
        mmWidth = 12615
        BandType = 0
        LayerName = Foreground9
      end
      object Saldo: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Saldo'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 112448
        mmTop = 20373
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground9
      end
      object ppLabel62: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label62'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Reserva'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 126207
        mmTop = 20373
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground9
      end
      object ppLabel72: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label72'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Disposnivel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 174361
        mmTop = 20373
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground9
      end
      object ppLabel77: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label77'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Minimo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 160338
        mmTop = 20373
        mmWidth = 9260
        BandType = 0
        LayerName = Foreground9
      end
      object ppLabel82: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label82'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Produ'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 143140
        mmTop = 20373
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground9
      end
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer10
        UserName = 'Line34'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 24077
        mmWidth = 190000
        BandType = 0
        LayerName = Foreground9
      end
      object ppSystemVariable17: TppSystemVariable
        DesignLayer = ppDesignLayer10
        UserName = 'SystemVariable17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 158750
        mmTop = 529
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground9
      end
      object ppSystemVariable18: TppSystemVariable
        DesignLayer = ppDesignLayer10
        UserName = 'SystemVariable18'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 166423
        mmTop = 14288
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground9
      end
      object ppLabel83: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label83'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de conferencia de saldo do estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 5027
        mmWidth = 70379
        BandType = 0
        LayerName = Foreground9
      end
      object LblTipo: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'LblTipo'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 9525
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground9
      end
      object LblGrupo: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'LblGrupo'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LblGrupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 14023
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground9
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer10
        UserName = 'Line35'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 19050
        mmWidth = 190000
        BandType = 0
        LayerName = Foreground9
      end
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 12700
      mmPrintPosition = 0
      object ppDBText78: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText78'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBEstoquePA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3260
        mmLeft = 0
        mmTop = 254
        mmWidth = 24342
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText79: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText79'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBEstoquePA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3175
        mmLeft = 25135
        mmTop = 265
        mmWidth = 77523
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText80: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText80'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CC_SALDO'
        DataPipeline = ppDBEstoquePA
        DisplayFormat = '#00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3175
        mmLeft = 103717
        mmTop = 265
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText81: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText81'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_RESERVA'
        DataPipeline = ppDBEstoquePA
        DisplayFormat = '#00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3175
        mmLeft = 120915
        mmTop = 265
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText82: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText82'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CC_DISPONIVEL'
        DataPipeline = ppDBEstoquePA
        DisplayFormat = '#00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3260
        mmLeft = 171715
        mmTop = 254
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText83: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText83'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR1'
        DataPipeline = ppDBEstoquePA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3260
        mmLeft = 0
        mmTop = 4233
        mmWidth = 25000
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText84: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText84'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR2'
        DataPipeline = ppDBEstoquePA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3260
        mmLeft = 25665
        mmTop = 4233
        mmWidth = 25000
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText85: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText85'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR3'
        DataPipeline = ppDBEstoquePA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3260
        mmLeft = 51329
        mmTop = 4233
        mmWidth = 25000
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText86: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText86'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR4'
        DataPipeline = ppDBEstoquePA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3260
        mmLeft = 76994
        mmTop = 4233
        mmWidth = 25000
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText87: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText87'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR5'
        DataPipeline = ppDBEstoquePA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3260
        mmLeft = 102659
        mmTop = 4233
        mmWidth = 25000
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText88: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText88'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CC_DISP_VAR1'
        DataPipeline = ppDBEstoquePA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 8202
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText90: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText90'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CC_DISP_VAR3'
        DataPipeline = ppDBEstoquePA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3175
        mmLeft = 51329
        mmTop = 8202
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText91: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText91'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CC_DISP_VAR4'
        DataPipeline = ppDBEstoquePA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3175
        mmLeft = 76994
        mmTop = 8202
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText92: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText92'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CC_DISP_VAR5'
        DataPipeline = ppDBEstoquePA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3175
        mmLeft = 102659
        mmTop = 8202
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText93: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText93'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_SALDOPRODUCAO'
        DataPipeline = ppDBEstoquePA
        DisplayFormat = '#00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3175
        mmLeft = 138113
        mmTop = 265
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText94: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText94'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_MINIMO'
        DataPipeline = ppDBEstoquePA
        DisplayFormat = '#00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3260
        mmLeft = 157427
        mmTop = 254
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText95: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText95'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR6'
        DataPipeline = ppDBEstoquePA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3260
        mmLeft = 128059
        mmTop = 4233
        mmWidth = 25000
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText96: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText96'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR7'
        DataPipeline = ppDBEstoquePA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3260
        mmLeft = 153988
        mmTop = 4233
        mmWidth = 17000
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText97: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText97'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR8'
        DataPipeline = ppDBEstoquePA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3260
        mmLeft = 171980
        mmTop = 4233
        mmWidth = 17000
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText98: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText98'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CC_DISP_VAR6'
        DataPipeline = ppDBEstoquePA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3175
        mmLeft = 128059
        mmTop = 8202
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText99: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText99'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CC_DISP_VAR7'
        DataPipeline = ppDBEstoquePA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3175
        mmLeft = 153988
        mmTop = 8202
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText100: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText100'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CC_DISP_VAR8'
        DataPipeline = ppDBEstoquePA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3175
        mmLeft = 171980
        mmTop = 8202
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground9
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer10
        UserName = 'Line33'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 12171
        mmWidth = 190000
        BandType = 4
        LayerName = Foreground9
      end
      object ppDBText89: TppDBText
        DesignLayer = ppDesignLayer10
        UserName = 'DBText89'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CC_DISP_VAR2'
        DataPipeline = ppDBEstoquePA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3175
        mmLeft = 25665
        mmTop = 8202
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground9
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppLabel84: TppLabel
        DesignLayer = ppDesignLayer10
        UserName = 'Label84'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtde produtos :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3260
        mmLeft = 529
        mmTop = 441
        mmWidth = 19558
        BandType = 8
        LayerName = Foreground9
      end
      object ppDBCalc9: TppDBCalc
        DesignLayer = ppDesignLayer10
        UserName = 'DBCalc9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBEstoquePA
        DisplayFormat = '00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBEstoquePA'
        mmHeight = 3175
        mmLeft = 21431
        mmTop = 529
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground9
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'PGR_CODIGO'
      DataPipeline = ppDBEstoquePA
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBEstoquePA'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 3440
        mmPrintPosition = 0
        object ppDBText101: TppDBText
          DesignLayer = ppDesignLayer10
          UserName = 'DBText101'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PTI_DESCRI'
          DataPipeline = ppDBEstoquePA
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBEstoquePA'
          mmHeight = 3260
          mmLeft = 7673
          mmTop = 180
          mmWidth = 53975
          BandType = 3
          GroupNo = 0
          LayerName = Foreground9
        end
        object ppDBText102: TppDBText
          DesignLayer = ppDesignLayer10
          UserName = 'DBText102'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PTI_CODIGO'
          DataPipeline = ppDBEstoquePA
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBEstoquePA'
          mmHeight = 3260
          mmLeft = 529
          mmTop = 180
          mmWidth = 6615
          BandType = 3
          GroupNo = 0
          LayerName = Foreground9
        end
        object ppDBText103: TppDBText
          DesignLayer = ppDesignLayer10
          UserName = 'DBText103'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PTI_SIGLA'
          DataPipeline = ppDBEstoquePA
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBEstoquePA'
          mmHeight = 3260
          mmLeft = 62706
          mmTop = 180
          mmWidth = 5821
          BandType = 3
          GroupNo = 0
          LayerName = Foreground9
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'PTI_CODIGO'
      DataPipeline = ppDBEstoquePA
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBEstoquePA'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 3175
        mmPrintPosition = 0
        object ppDBText104: TppDBText
          DesignLayer = ppDesignLayer10
          UserName = 'DBText104'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PGR_CODIGO'
          DataPipeline = ppDBEstoquePA
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBEstoquePA'
          mmHeight = 3175
          mmLeft = 529
          mmTop = 0
          mmWidth = 6085
          BandType = 3
          GroupNo = 1
          LayerName = Foreground9
        end
        object ppDBText105: TppDBText
          DesignLayer = ppDesignLayer10
          UserName = 'DBText105'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'PGR_DESCRI'
          DataPipeline = ppDBEstoquePA
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBEstoquePA'
          mmHeight = 3175
          mmLeft = 7673
          mmTop = 0
          mmWidth = 82021
          BandType = 3
          GroupNo = 1
          LayerName = Foreground9
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppDesignLayers10: TppDesignLayers
      object ppDesignLayer10: TppDesignLayer
        UserName = 'Foreground9'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList9: TppParameterList
    end
  end
  object SqlCdsEstPA: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select P1.PRD_REFER, P1.PRD_ENTRADA, P1.PRD_ESTOQUE, P1.PRD_SAID' +
      'A, P1.PRD_EMPENHO, P1.PRD_RESERVA, P1.PRD_SALDOPRODUCAO , P1.PRD' +
      '_DESCRI,P1.PTI_CODIGO,'#13#10'P1.PGR_CODIGO,'#13#10'P1.PRD_DCVAR1, P1.PRD_DC' +
      'VAR2, P1.PRD_DCVAR3, P1.PRD_DCVAR4, P1.PRD_DCVAR5, P1.PRD_DCVAR6' +
      ', P1.PRD_DCVAR7, P1.PRD_DCVAR8, P1.PRD_VAR1, P1.PRD_VAR2, P1.PRD' +
      '_VAR3, P1.PRD_VAR4, P1.PRD_VAR5, P1.PRD_VAR6, P1.PRD_VAR7, P1.PR' +
      'D_VAR8, P1.PRD_MINIMO,'#13#10'P2.PTI_SIGLA, P2.PTI_DESCRI,P3.PGR_DESCR' +
      'I'#13#10'from PRD0000 P1  , PRD_TIPO P2 , PRD_GRUPO P3'#13#10'where P1.PTI_C' +
      'ODIGO = P2.PTI_CODIGO'#13#10'and P3.PGR_CODIGO = P1.PGR_CODIGO'#13#10'order ' +
      'by P1.PGR_CODIGO,P1.PTI_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsEstPACalcFields
    CommandText = 
      'select P1.PRD_REFER, P1.PRD_ENTRADA, P1.PRD_ESTOQUE, P1.PRD_SAID' +
      'A, P1.PRD_EMPENHO, P1.PRD_RESERVA, P1.PRD_SALDOPRODUCAO , P1.PRD' +
      '_DESCRI,P1.PTI_CODIGO,'#13#10'P1.PGR_CODIGO,'#13#10'P1.PRD_DCVAR1, P1.PRD_DC' +
      'VAR2, P1.PRD_DCVAR3, P1.PRD_DCVAR4, P1.PRD_DCVAR5, P1.PRD_DCVAR6' +
      ', P1.PRD_DCVAR7, P1.PRD_DCVAR8, P1.PRD_VAR1, P1.PRD_VAR2, P1.PRD' +
      '_VAR3, P1.PRD_VAR4, P1.PRD_VAR5, P1.PRD_VAR6, P1.PRD_VAR7, P1.PR' +
      'D_VAR8, P1.PRD_MINIMO,'#13#10'P2.PTI_SIGLA, P2.PTI_DESCRI,P3.PGR_DESCR' +
      'I'#13#10'from PRD0000 P1  , PRD_TIPO P2 , PRD_GRUPO P3'#13#10'where P1.PTI_C' +
      'ODIGO = P2.PTI_CODIGO'#13#10'and P3.PGR_CODIGO = P1.PGR_CODIGO'#13#10'order ' +
      'by P1.PGR_CODIGO,P1.PTI_CODIGO'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 416
    Top = 256
    object SqlCdsEstPAPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      Precision = 15
    end
    object SqlCdsEstPAPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      Precision = 15
    end
    object SqlCdsEstPAPRD_EMPENHO: TFMTBCDField
      FieldName = 'PRD_EMPENHO'
      Precision = 15
    end
    object SqlCdsEstPAPRD_RESERVA: TFMTBCDField
      FieldName = 'PRD_RESERVA'
      Precision = 15
    end
    object SqlCdsEstPAPRD_SALDOPRODUCAO: TFMTBCDField
      FieldName = 'PRD_SALDOPRODUCAO'
      Precision = 15
    end
    object SqlCdsEstPAPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object SqlCdsEstPAPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object SqlCdsEstPAPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object SqlCdsEstPAPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object SqlCdsEstPAPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object SqlCdsEstPAPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object SqlCdsEstPAPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object SqlCdsEstPAPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object SqlCdsEstPAPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
    object SqlCdsEstPAPRD_VAR1: TFMTBCDField
      FieldName = 'PRD_VAR1'
      Precision = 15
    end
    object SqlCdsEstPAPRD_VAR2: TFMTBCDField
      FieldName = 'PRD_VAR2'
      Precision = 15
    end
    object SqlCdsEstPAPRD_VAR3: TFMTBCDField
      FieldName = 'PRD_VAR3'
      Precision = 15
    end
    object SqlCdsEstPAPRD_VAR4: TFMTBCDField
      FieldName = 'PRD_VAR4'
      Precision = 15
    end
    object SqlCdsEstPAPRD_VAR5: TFMTBCDField
      FieldName = 'PRD_VAR5'
      Precision = 15
    end
    object SqlCdsEstPAPRD_VAR6: TFMTBCDField
      FieldName = 'PRD_VAR6'
      Precision = 15
    end
    object SqlCdsEstPAPRD_VAR7: TFMTBCDField
      FieldName = 'PRD_VAR7'
      Precision = 15
    end
    object SqlCdsEstPAPRD_VAR8: TFMTBCDField
      FieldName = 'PRD_VAR8'
      Precision = 15
    end
    object SqlCdsEstPAPRD_MINIMO: TFMTBCDField
      FieldName = 'PRD_MINIMO'
      Precision = 15
    end
    object SqlCdsEstPACC_DISPONIVEL: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CC_DISPONIVEL'
      currency = False
      Calculated = True
    end
    object SqlCdsEstPAPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      Precision = 15
    end
    object SqlCdsEstPACC_SALDO: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CC_SALDO'
      Calculated = True
    end
    object SqlCdsEstPAPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsEstPACC_TESTE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CC_TESTE'
      Calculated = True
    end
    object SqlCdsEstPACC_DISP_VAR1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CC_DISP_VAR1'
      Calculated = True
    end
    object SqlCdsEstPACC_DISP_VAR2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CC_DISP_VAR2'
      Calculated = True
    end
    object SqlCdsEstPACC_DISP_VAR3: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CC_DISP_VAR3'
      Calculated = True
    end
    object SqlCdsEstPACC_DISP_VAR4: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CC_DISP_VAR4'
      Calculated = True
    end
    object SqlCdsEstPACC_DISP_VAR5: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CC_DISP_VAR5'
      Calculated = True
    end
    object SqlCdsEstPACC_DISP_VAR6: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CC_DISP_VAR6'
      Calculated = True
    end
    object SqlCdsEstPACC_DISP_VAR7: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CC_DISP_VAR7'
      Calculated = True
    end
    object SqlCdsEstPACC_DISP_VAR8: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CC_DISP_VAR8'
      Calculated = True
    end
    object SqlCdsEstPAPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object SqlCdsEstPAPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
    object SqlCdsEstPAPTI_DESCRI: TStringField
      DisplayWidth = 100
      FieldName = 'PTI_DESCRI'
      Size = 100
    end
    object SqlCdsEstPAPGR_DESCRI: TStringField
      FieldName = 'PGR_DESCRI'
      Size = 25
    end
    object SqlCdsEstPAPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DsEstPA: TDataSource
    DataSet = SqlCdsEstPA
    Left = 448
    Top = 256
  end
  object SqlCdsVar: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select '#13#10'P1.PED_CODIGO,P1.PRF_VAR1,P1.PRF_VAR2,P1.PRF_VAR3,P1.PR' +
      'F_VAR4,P1.PRF_VAR5,P1.PRF_VAR6,P1.PRF_VAR7,P1.PRF_VAR8,'#13#10'P1.PRD_' +
      'REFER,P2.PED_SITUACAO,P3.OPV_ATESTOQUE'#13#10'from PED_IT01 P1,ped0000' +
      ' p2 ,OPV0000 P3'#13#10'where P1.PED_CODIGO = P2.PED_CODIGO and P2.PED_' +
      'SITUACAO = '#39'F'#39' and P3.OPV_CODIGO = P2.OPV_CODIGO'#13#10'AND P3.OPV_ATE' +
      'STOQUE = '#39'S'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select '#13#10'P1.PED_CODIGO,P1.PRF_VAR1,P1.PRF_VAR2,P1.PRF_VAR3,P1.PR' +
      'F_VAR4,P1.PRF_VAR5,P1.PRF_VAR6,P1.PRF_VAR7,P1.PRF_VAR8,'#13#10'P1.PRD_' +
      'REFER,P2.PED_SITUACAO,P3.OPV_ATESTOQUE'#13#10'from PED_IT01 P1,ped0000' +
      ' p2 ,OPV0000 P3'#13#10'where P1.PED_CODIGO = P2.PED_CODIGO and P2.PED_' +
      'SITUACAO = '#39'F'#39' and P3.OPV_CODIGO = P2.OPV_CODIGO'#13#10'AND P3.OPV_ATE' +
      'STOQUE = '#39'S'#39
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 520
    Top = 296
    object SqlCdsVarPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsVarPRF_VAR1: TFMTBCDField
      FieldName = 'PRF_VAR1'
      Precision = 15
    end
    object SqlCdsVarPRF_VAR2: TFMTBCDField
      FieldName = 'PRF_VAR2'
      Precision = 15
    end
    object SqlCdsVarPRF_VAR3: TFMTBCDField
      FieldName = 'PRF_VAR3'
      Precision = 15
    end
    object SqlCdsVarPRF_VAR4: TFMTBCDField
      FieldName = 'PRF_VAR4'
      Precision = 15
    end
    object SqlCdsVarPRF_VAR5: TFMTBCDField
      FieldName = 'PRF_VAR5'
      Precision = 15
    end
    object SqlCdsVarPRF_VAR6: TFMTBCDField
      FieldName = 'PRF_VAR6'
      Precision = 15
    end
    object SqlCdsVarPRF_VAR7: TFMTBCDField
      FieldName = 'PRF_VAR7'
      Precision = 15
    end
    object SqlCdsVarPRF_VAR8: TFMTBCDField
      FieldName = 'PRF_VAR8'
      Precision = 15
    end
    object SqlCdsVarPED_SITUACAO: TStringField
      FieldName = 'PED_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object SqlCdsVarOPV_ATESTOQUE: TStringField
      FieldName = 'OPV_ATESTOQUE'
      FixedChar = True
      Size = 1
    end
    object SqlCdsVarPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object ppDBEstoquePA: TppDBPipeline
    DataSource = DsEstPA
    UserName = 'DBEstoquePA'
    Left = 880
    Top = 400
    object ppDBEstoquePAppField1: TppField
      FieldAlias = 'PRD_ENTRADA'
      FieldName = 'PRD_ENTRADA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField2: TppField
      FieldAlias = 'PRD_ESTOQUE'
      FieldName = 'PRD_ESTOQUE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField3: TppField
      FieldAlias = 'PRD_EMPENHO'
      FieldName = 'PRD_EMPENHO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField4: TppField
      FieldAlias = 'PRD_RESERVA'
      FieldName = 'PRD_RESERVA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField5: TppField
      FieldAlias = 'PRD_SALDOPRODUCAO'
      FieldName = 'PRD_SALDOPRODUCAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField6: TppField
      FieldAlias = 'PTI_SIGLA'
      FieldName = 'PTI_SIGLA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField7: TppField
      FieldAlias = 'PRD_DCVAR1'
      FieldName = 'PRD_DCVAR1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField8: TppField
      FieldAlias = 'PRD_DCVAR2'
      FieldName = 'PRD_DCVAR2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField9: TppField
      FieldAlias = 'PRD_DCVAR3'
      FieldName = 'PRD_DCVAR3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField10: TppField
      FieldAlias = 'PRD_DCVAR4'
      FieldName = 'PRD_DCVAR4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField11: TppField
      FieldAlias = 'PRD_DCVAR5'
      FieldName = 'PRD_DCVAR5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField12: TppField
      FieldAlias = 'PRD_DCVAR6'
      FieldName = 'PRD_DCVAR6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField13: TppField
      FieldAlias = 'PRD_DCVAR7'
      FieldName = 'PRD_DCVAR7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField14: TppField
      FieldAlias = 'PRD_DCVAR8'
      FieldName = 'PRD_DCVAR8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField15: TppField
      FieldAlias = 'PRD_VAR1'
      FieldName = 'PRD_VAR1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField16: TppField
      FieldAlias = 'PRD_VAR2'
      FieldName = 'PRD_VAR2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField17: TppField
      FieldAlias = 'PRD_VAR3'
      FieldName = 'PRD_VAR3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField18: TppField
      FieldAlias = 'PRD_VAR4'
      FieldName = 'PRD_VAR4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField19: TppField
      FieldAlias = 'PRD_VAR5'
      FieldName = 'PRD_VAR5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField20: TppField
      FieldAlias = 'PRD_VAR6'
      FieldName = 'PRD_VAR6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField21: TppField
      FieldAlias = 'PRD_VAR7'
      FieldName = 'PRD_VAR7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField22: TppField
      FieldAlias = 'PRD_VAR8'
      FieldName = 'PRD_VAR8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField23: TppField
      FieldAlias = 'PRD_MINIMO'
      FieldName = 'PRD_MINIMO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField24: TppField
      FieldAlias = 'CC_DISPONIVEL'
      FieldName = 'CC_DISPONIVEL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField25: TppField
      FieldAlias = 'PRD_SAIDA'
      FieldName = 'PRD_SAIDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField26: TppField
      FieldAlias = 'CC_SALDO'
      FieldName = 'CC_SALDO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField27: TppField
      FieldAlias = 'PRD_DESCRI'
      FieldName = 'PRD_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField28: TppField
      FieldAlias = 'CC_TESTE'
      FieldName = 'CC_TESTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField29: TppField
      FieldAlias = 'CC_DISP_VAR1'
      FieldName = 'CC_DISP_VAR1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField30: TppField
      FieldAlias = 'CC_DISP_VAR2'
      FieldName = 'CC_DISP_VAR2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField31: TppField
      FieldAlias = 'CC_DISP_VAR3'
      FieldName = 'CC_DISP_VAR3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField32: TppField
      FieldAlias = 'CC_DISP_VAR4'
      FieldName = 'CC_DISP_VAR4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField33: TppField
      FieldAlias = 'CC_DISP_VAR5'
      FieldName = 'CC_DISP_VAR5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField34: TppField
      FieldAlias = 'CC_DISP_VAR6'
      FieldName = 'CC_DISP_VAR6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField35: TppField
      FieldAlias = 'CC_DISP_VAR7'
      FieldName = 'CC_DISP_VAR7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField36: TppField
      FieldAlias = 'CC_DISP_VAR8'
      FieldName = 'CC_DISP_VAR8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField37: TppField
      FieldAlias = 'PTI_CODIGO'
      FieldName = 'PTI_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField38: TppField
      FieldAlias = 'PGR_CODIGO'
      FieldName = 'PGR_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField39: TppField
      FieldAlias = 'PTI_DESCRI'
      FieldName = 'PTI_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField40: TppField
      FieldAlias = 'PGR_DESCRI'
      FieldName = 'PGR_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBEstoquePAppField41: TppField
      FieldAlias = 'PRD_REFER'
      FieldName = 'PRD_REFER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
  end
  object SQLCdsTabMulti: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'P1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND,'#13#10'P1.PRD_COMPL' +
      ','#13#10'P1.PRD_PVENDA,'#13#10'P1.PRD_PVENDA2,'#13#10'P1.PRD_PVENDA3,'#13#10'P1.PRD_PVEN' +
      'DA4,'#13#10'P1.PRD_PVENDA5,'#13#10'P1.PRD_PVENDA6,'#13#10'P1.PRD_DATA_ATUAL_TAB,'#13#10 +
      'P1.PRD_PESOKg,'#13#10'P1.PRD_EMBALA,'#13#10'P1.PRD_TABPRECO,'#13#10'P1.IPI_CODIGO,' +
      #13#10'I1.IPI_ALIQ,'#13#10'P1.LIN_CODIGO,'#13#10'L1.LIN_DESCRI,'#13#10'T1.MKP_COMIS1,'#13#10 +
      'T1.MKP_COMIS2,'#13#10'T1.MKP_COMIS3,'#13#10'T1.MKP_COMIS4,'#13#10'T1.MKP_COMIS5,'#13#10 +
      'T1.MKP_COMIS6'#13#10'FROM PRD0000 P1'#13#10'LEFT JOIN ipi0000 I1   ON P1.ipi' +
      '_codigo = I1.ipi_codigo'#13#10'LEFT JOIN prd_linha L1 ON P1.lin_codigo' +
      ' = L1.lin_codigo'#13#10'LEFT JOIN mkp0000 T1 ON P1.lin_codigo = T1.lin' +
      '_codigo'#13#10'WHERE P1.prd_tabpreco ='#39'S'#39'  ORDER BY L1.LIN_DESCRI,P1.P' +
      'RD_REFER'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'P1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND,'#13#10'P1.PRD_COMPL' +
      ','#13#10'P1.PRD_PVENDA,'#13#10'P1.PRD_PVENDA2,'#13#10'P1.PRD_PVENDA3,'#13#10'P1.PRD_PVEN' +
      'DA4,'#13#10'P1.PRD_PVENDA5,'#13#10'P1.PRD_PVENDA6,'#13#10'P1.PRD_DATA_ATUAL_TAB,'#13#10 +
      'P1.PRD_PESOKg,'#13#10'P1.PRD_EMBALA,'#13#10'P1.PRD_TABPRECO,'#13#10'P1.IPI_CODIGO,' +
      #13#10'I1.IPI_ALIQ,'#13#10'P1.LIN_CODIGO,'#13#10'L1.LIN_DESCRI,'#13#10'T1.MKP_COMIS1,'#13#10 +
      'T1.MKP_COMIS2,'#13#10'T1.MKP_COMIS3,'#13#10'T1.MKP_COMIS4,'#13#10'T1.MKP_COMIS5,'#13#10 +
      'T1.MKP_COMIS6'#13#10'FROM PRD0000 P1'#13#10'LEFT JOIN ipi0000 I1   ON P1.ipi' +
      '_codigo = I1.ipi_codigo'#13#10'LEFT JOIN prd_linha L1 ON P1.lin_codigo' +
      ' = L1.lin_codigo'#13#10'LEFT JOIN mkp0000 T1 ON P1.lin_codigo = T1.lin' +
      '_codigo'#13#10'WHERE P1.prd_tabpreco ='#39'S'#39'  ORDER BY L1.LIN_DESCRI,P1.P' +
      'RD_REFER'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 417
    Top = 322
    object StringField2: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 40
    end
    object StringField3: TStringField
      FieldName = 'PRD_COMPL'
      Size = 15
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      Precision = 15
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'PRD_PESOKG'
      Precision = 15
    end
    object StringField4: TStringField
      FieldName = 'PRD_EMBALA'
      Size = 10
    end
    object StringField5: TStringField
      FieldName = 'PRD_TABPRECO'
      Size = 1
    end
    object StringField6: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'IPI_ALIQ'
      Precision = 15
    end
    object StringField7: TStringField
      FieldName = 'LIN_CODIGO'
      Required = True
      Size = 2
    end
    object StringField8: TStringField
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object SQLCdsTabMultiPRD_PVENDA2: TFMTBCDField
      FieldName = 'PRD_PVENDA2'
      Precision = 15
      Size = 4
    end
    object SQLCdsTabMultiPRD_PVENDA3: TFMTBCDField
      FieldName = 'PRD_PVENDA3'
      Precision = 15
      Size = 4
    end
    object SQLCdsTabMultiPRD_PVENDA4: TFMTBCDField
      FieldName = 'PRD_PVENDA4'
      Precision = 15
      Size = 4
    end
    object SQLCdsTabMultiPRD_PVENDA5: TFMTBCDField
      FieldName = 'PRD_PVENDA5'
      Precision = 15
      Size = 4
    end
    object SQLCdsTabMultiPRD_PVENDA6: TFMTBCDField
      FieldName = 'PRD_PVENDA6'
      Precision = 15
      Size = 4
    end
    object SQLCdsTabMultiPRD_DATA_ATUAL_TAB: TSQLTimeStampField
      FieldName = 'PRD_DATA_ATUAL_TAB'
    end
    object SQLCdsTabMultiPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SQLCdsTabMultiMKP_COMIS1: TFMTBCDField
      FieldName = 'MKP_COMIS1'
      Precision = 15
      Size = 4
    end
    object SQLCdsTabMultiMKP_COMIS2: TFMTBCDField
      FieldName = 'MKP_COMIS2'
      Precision = 15
      Size = 4
    end
    object SQLCdsTabMultiMKP_COMIS3: TFMTBCDField
      FieldName = 'MKP_COMIS3'
      Precision = 15
      Size = 4
    end
    object SQLCdsTabMultiMKP_COMIS4: TFMTBCDField
      FieldName = 'MKP_COMIS4'
      Precision = 15
      Size = 4
    end
    object SQLCdsTabMultiMKP_COMIS5: TFMTBCDField
      FieldName = 'MKP_COMIS5'
      Precision = 15
      Size = 4
    end
    object SQLCdsTabMultiMKP_COMIS6: TFMTBCDField
      FieldName = 'MKP_COMIS6'
      Precision = 15
      Size = 4
    end
    object SQLCdsTabMultiPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
  end
  object DSTabMulti: TDataSource
    DataSet = SQLCdsTabMulti
    Left = 446
    Top = 322
  end
  object ppDBPipeTabMulti: TppDBPipeline
    DataSource = DSTabMulti
    UserName = 'DBPipeTabMulti'
    Left = 1004
    Top = 410
  end
  object ppRPTabMulti: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeTabMulti
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Developer\Final\Adjutor-Nfe\Relatorios\RELTabMulti.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    PreviewFormSettings.ZoomPercentage = 75
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 1154
    Top = 482
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeTabMulti'
    object ppHeaderBand6: TppHeaderBand
      BeforePrint = ppHeaderBand6BeforePrint
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 22000
      mmPrintPosition = 0
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer11
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 3440
        mmWidth = 270669
        BandType = 0
        LayerName = Foreground10
      end
      object LABEL_EMPRESA2: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 5080
        mmLeft = 6085
        mmTop = 4233
        mmWidth = 37112
        BandType = 0
        LayerName = Foreground10
      end
      object LBL_05_END2: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBL_05_END1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3598
        mmLeft = 6085
        mmTop = 9790
        mmWidth = 21096
        BandType = 0
        LayerName = Foreground10
      end
      object ppLine37: TppLine
        DesignLayer = ppDesignLayer11
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 21735
        mmWidth = 269876
        BandType = 0
        LayerName = Foreground10
      end
      object ppSystemVariable19: TppSystemVariable
        DesignLayer = ppDesignLayer11
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 220663
        mmTop = 0
        mmWidth = 25612
        BandType = 0
        LayerName = Foreground10
      end
      object ppSystemVariable20: TppSystemVariable
        DesignLayer = ppDesignLayer11
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 250032
        mmTop = 0
        mmWidth = 17145
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel88: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label50'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TABELA DE PRE'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 116681
        mmTop = 15875
        mmWidth = 40217
        BandType = 0
        LayerName = Foreground10
      end
      object ppLabel89: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'Label49'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Data da Ving'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 6085
        mmTop = 0
        mmWidth = 24906
        BandType = 0
        LayerName = Foreground10
      end
      object LBL_05_DATAVI2: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'LBL_05_DATAVI'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBL_05_DATAVI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 34396
        mmTop = 0
        mmWidth = 21802
        BandType = 0
        LayerName = Foreground10
      end
      object LBL_05_HOME2: TppLabel
        DesignLayer = ppDesignLayer11
        UserName = 'LBL_05_HOME'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBL_05_HOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 6085
        mmTop = 18684
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground10
      end
    end
    object ppDetailBand6: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText106: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBPipeTabMulti
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeTabMulti'
        mmHeight = 3246
        mmLeft = 6085
        mmTop = 0
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground10
      end
      object ppDBText107: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText47'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBPipeTabMulti
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeTabMulti'
        mmHeight = 3246
        mmLeft = 25929
        mmTop = 0
        mmWidth = 88106
        BandType = 4
        LayerName = Foreground10
      end
      object ppDBText109: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText49'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_PVENDA'
        DataPipeline = ppDBPipeTabMulti
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeTabMulti'
        mmHeight = 3246
        mmLeft = 127000
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground10
      end
      object ppDBText110: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText50'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_PESOKG'
        DataPipeline = ppDBPipeTabMulti
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeTabMulti'
        mmHeight = 3246
        mmLeft = 246328
        mmTop = 0
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground10
      end
      object ppDBText112: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText58'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'IPI_ALIQ'
        DataPipeline = ppDBPipeTabMulti
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeTabMulti'
        mmHeight = 3175
        mmLeft = 262203
        mmTop = 0
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground10
      end
      object ppDBText108: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText108'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_PVENDA2'
        DataPipeline = ppDBPipeTabMulti
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeTabMulti'
        mmHeight = 3246
        mmLeft = 147109
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground10
      end
      object ppDBText111: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText111'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_PVENDA3'
        DataPipeline = ppDBPipeTabMulti
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeTabMulti'
        mmHeight = 3246
        mmLeft = 166952
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground10
      end
      object ppDBText114: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText114'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_PVENDA4'
        DataPipeline = ppDBPipeTabMulti
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeTabMulti'
        mmHeight = 3246
        mmLeft = 186796
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground10
      end
      object ppDBText115: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText115'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_PVENDA5'
        DataPipeline = ppDBPipeTabMulti
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeTabMulti'
        mmHeight = 3246
        mmLeft = 206375
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground10
      end
      object ppDBText116: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText116'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_PVENDA6'
        DataPipeline = ppDBPipeTabMulti
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeTabMulti'
        mmHeight = 3246
        mmLeft = 225955
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground10
      end
      object ppDBText117: TppDBText
        DesignLayer = ppDesignLayer11
        UserName = 'DBText117'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_UND'
        DataPipeline = ppDBPipeTabMulti
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeTabMulti'
        mmHeight = 3175
        mmLeft = 115623
        mmTop = 265
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground10
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'LIN_DESCRI'
      DataPipeline = ppDBPipeTabMulti
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeTabMulti'
      NewFile = False
      object ppGroupHeaderBand4: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 8202
        mmPrintPosition = 0
        object ppDBText113: TppDBText
          DesignLayer = ppDesignLayer11
          UserName = 'DBText1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'LIN_DESCRI'
          DataPipeline = ppDBPipeTabMulti
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeTabMulti'
          mmHeight = 3457
          mmLeft = 6085
          mmTop = 0
          mmWidth = 30692
          BandType = 3
          GroupNo = 0
          LayerName = Foreground10
        end
        object ppLine38: TppLine
          DesignLayer = ppDesignLayer11
          UserName = 'Line22'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3704
          mmWidth = 270405
          BandType = 3
          GroupNo = 0
          LayerName = Foreground10
        end
        object ppLabel93: TppLabel
          DesignLayer = ppDesignLayer11
          UserName = 'Label51'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'REFER'#202'NCIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3260
          mmLeft = 6085
          mmTop = 4233
          mmWidth = 18288
          BandType = 3
          GroupNo = 0
          LayerName = Foreground10
        end
        object ppLabel94: TppLabel
          DesignLayer = ppDesignLayer11
          UserName = 'Label52'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'DESCRI'#199#195'O DO PRODUTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3260
          mmLeft = 25929
          mmTop = 4233
          mmWidth = 36830
          BandType = 3
          GroupNo = 0
          LayerName = Foreground10
        end
        object ppLabel96: TppLabel
          DesignLayer = ppDesignLayer11
          UserName = 'Label54'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TABELA 1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3260
          mmLeft = 132292
          mmTop = 4233
          mmWidth = 13293
          BandType = 3
          GroupNo = 0
          LayerName = Foreground10
        end
        object ppLabel97: TppLabel
          DesignLayer = ppDesignLayer11
          UserName = 'Label55'
          HyperlinkEnabled = False
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Caption = 'Peso Kg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3246
          mmLeft = 248973
          mmTop = 4233
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
          LayerName = Foreground10
        end
        object ppLabel99: TppLabel
          DesignLayer = ppDesignLayer11
          UserName = 'Label57'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3246
          mmLeft = 263261
          mmTop = 4233
          mmWidth = 5556
          BandType = 3
          GroupNo = 0
          LayerName = Foreground10
        end
        object ppLine39: TppLine
          DesignLayer = ppDesignLayer11
          UserName = 'Line25'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 7937
          mmWidth = 269876
          BandType = 3
          GroupNo = 0
          LayerName = Foreground10
        end
        object ppLabel95: TppLabel
          DesignLayer = ppDesignLayer11
          UserName = 'Label95'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TABELA 2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3260
          mmLeft = 151871
          mmTop = 4233
          mmWidth = 13293
          BandType = 3
          GroupNo = 0
          LayerName = Foreground10
        end
        object ppLabel98: TppLabel
          DesignLayer = ppDesignLayer11
          UserName = 'Label98'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TABELA 3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3260
          mmLeft = 171980
          mmTop = 4233
          mmWidth = 13293
          BandType = 3
          GroupNo = 0
          LayerName = Foreground10
        end
        object ppLabel100: TppLabel
          DesignLayer = ppDesignLayer11
          UserName = 'Label100'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TABELA 4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3260
          mmLeft = 192088
          mmTop = 4233
          mmWidth = 13293
          BandType = 3
          GroupNo = 0
          LayerName = Foreground10
        end
        object ppLabel101: TppLabel
          DesignLayer = ppDesignLayer11
          UserName = 'Label1001'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TABELA 5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3260
          mmLeft = 211667
          mmTop = 3969
          mmWidth = 13293
          BandType = 3
          GroupNo = 0
          LayerName = Foreground10
        end
        object ppLabel102: TppLabel
          DesignLayer = ppDesignLayer11
          UserName = 'Label102'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'TABELA 6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3260
          mmLeft = 230982
          mmTop = 4233
          mmWidth = 13293
          BandType = 3
          GroupNo = 0
          LayerName = Foreground10
        end
        object ppLabel103: TppLabel
          DesignLayer = ppDesignLayer11
          UserName = 'Label103'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Caption = 'UND'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormField = False
          Transparent = True
          mmHeight = 3260
          mmLeft = 119327
          mmTop = 4233
          mmWidth = 6096
          BandType = 3
          GroupNo = 0
          LayerName = Foreground10
        end
        object ppDBText118: TppDBText
          DesignLayer = ppDesignLayer11
          UserName = 'DBText118'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'MKP_COMIS1'
          DataPipeline = ppDBPipeTabMulti
          DisplayFormat = '00%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeTabMulti'
          mmHeight = 3175
          mmLeft = 135202
          mmTop = 0
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
          LayerName = Foreground10
        end
        object ppDBText119: TppDBText
          DesignLayer = ppDesignLayer11
          UserName = 'DBText119'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'MKP_COMIS2'
          DataPipeline = ppDBPipeTabMulti
          DisplayFormat = '00%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeTabMulti'
          mmHeight = 3175
          mmLeft = 154782
          mmTop = 0
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
          LayerName = Foreground10
        end
        object ppDBText120: TppDBText
          DesignLayer = ppDesignLayer11
          UserName = 'DBText120'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'MKP_COMIS3'
          DataPipeline = ppDBPipeTabMulti
          DisplayFormat = '00%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeTabMulti'
          mmHeight = 3175
          mmLeft = 174625
          mmTop = 0
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
          LayerName = Foreground10
        end
        object ppDBText121: TppDBText
          DesignLayer = ppDesignLayer11
          UserName = 'DBText1201'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'MKP_COMIS4'
          DataPipeline = ppDBPipeTabMulti
          DisplayFormat = '00%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeTabMulti'
          mmHeight = 3175
          mmLeft = 194469
          mmTop = 0
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
          LayerName = Foreground10
        end
        object ppDBText122: TppDBText
          DesignLayer = ppDesignLayer11
          UserName = 'DBText122'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'MKP_COMIS5'
          DataPipeline = ppDBPipeTabMulti
          DisplayFormat = '00%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeTabMulti'
          mmHeight = 3175
          mmLeft = 214313
          mmTop = 0
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
          LayerName = Foreground10
        end
        object ppDBText123: TppDBText
          DesignLayer = ppDesignLayer11
          UserName = 'DBText123'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          DataField = 'MKP_COMIS6'
          DataPipeline = ppDBPipeTabMulti
          DisplayFormat = '00%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeTabMulti'
          mmHeight = 3175
          mmLeft = 233628
          mmTop = 265
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
          LayerName = Foreground10
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 265
        mmPrintPosition = 0
        object ppLine40: TppLine
          DesignLayer = ppDesignLayer11
          UserName = 'Line26'
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 270140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground10
        end
      end
    end
    object ppDesignLayers11: TppDesignLayers
      object ppDesignLayer11: TppDesignLayer
        UserName = 'Foreground10'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList10: TppParameterList
    end
  end
  object SqlCdsAlmox: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select * from ALMOX0000 where amx_ativo = '#39'S'#39' order by AMX_DESCR' +
      'I'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select * from ALMOX0000 where amx_ativo = '#39'S'#39' order by AMX_DESCR' +
      'I'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 304
    Top = 336
    object SqlCdsAlmoxAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object SqlCdsAlmoxAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 60
    end
    object SqlCdsAlmoxAMX_TIPO: TStringField
      FieldName = 'AMX_TIPO'
      Size = 60
    end
    object SqlCdsAlmoxEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsAlmoxAMX_FISICO: TStringField
      FieldName = 'AMX_FISICO'
      Size = 1
    end
    object SqlCdsAlmoxAMX_TERCEIROS: TStringField
      FieldName = 'AMX_TERCEIROS'
      Size = 1
    end
    object SqlCdsAlmoxAMX_FORATERCEIROS: TStringField
      FieldName = 'AMX_FORATERCEIROS'
      Size = 1
    end
    object SqlCdsAlmoxAMX_CIRCULANTE: TStringField
      FieldName = 'AMX_CIRCULANTE'
      Size = 1
    end
    object SqlCdsAlmoxAMX_VIRTUAL: TStringField
      FieldName = 'AMX_VIRTUAL'
      Size = 1
    end
  end
  object CdsEstoqueNovo: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select'#13#10'    prd0000.prd_codigo,'#13#10'    prd0000.prd_pendente,'#13#10'    ' +
      'prd0000.prd_refer,'#13#10'    prd0000.prd_descri,'#13#10'    prd0000.prd_pme' +
      'dio,'#13#10'    prd0000.prd_und,'#13#10'    prd0000.prd_pcusto,'#13#10'    prd0000' +
      '.prd_minimo,'#13#10'    prd0000.pgr_codigo,'#13#10'    prd0000.pti_codigo,'#13#10 +
      '    prd0000.ipi_codigo,'#13#10'    prd0000.prd_pvenda,'#13#10'    prd0000.pr' +
      'de_registro,'#13#10'    en.prde_endereco,'#13#10#13#10'    case'#13#10'        when ((' +
      'select first 1 kardex.kar_entrada_saida from kardex where kardex' +
      '.prd_codigo = prd0000.prd_codigo and kardex.data_hora between '#39'0' +
      '1/01/2001'#39' and '#39'01/01/2001'#39' order by kardex.kar_registro asc ) =' +
      ' '#39'E'#39') then'#13#10'            (select first 1 kardex.kar_saldo from ka' +
      'rdex where kardex.prd_codigo = prd0000.prd_codigo and kardex.dat' +
      'a_hora between '#39'01/01/2001'#39' and '#39'01/01/2001'#39' order by kardex.kar' +
      '_registro asc) - (select first 1 kardex.kar_quantidade from kard' +
      'ex where kardex.prd_codigo = prd0000.prd_codigo and kardex.data_' +
      'hora between '#39'01/01/2001'#39' and '#39'01/01/2001'#39' order by kardex.kar_r' +
      'egistro asc)'#13#10'        else'#13#10'            (select first 1 kardex.k' +
      'ar_saldo from kardex where kardex.prd_codigo = prd0000.prd_codig' +
      'o and kardex.data_hora between '#39'01/01/2001'#39' and '#39'01/01/2001'#39' ord' +
      'er by kardex.kar_registro asc) + (select first 1 kardex.kar_quan' +
      'tidade from kardex where kardex.prd_codigo = prd0000.prd_codigo ' +
      'and kardex.data_hora between '#39'01/01/2001'#39' and '#39'01/01/2001'#39' order' +
      ' by kardex.kar_registro asc)'#13#10'    end as estoque_anterior,'#13#10'    ' +
      'coalesce((select sum( kardex.kar_quantidade) from kardex where k' +
      'ardex.kar_entrada_saida = '#39'E'#39' and kardex.prd_codigo = prd0000.pr' +
      'd_codigo and kardex.data_hora between '#39'01/01/2001'#39' and '#39'01/01/20' +
      '01'#39'),0) as estoque_entradas,'#13#10'    coalesce((select sum( kardex.k' +
      'ar_quantidade) from kardex where kardex.kar_entrada_saida = '#39'S'#39' ' +
      'and kardex.prd_codigo = prd0000.prd_codigo and kardex.data_hora ' +
      'between '#39'01/01/2001'#39' and '#39'01/01/2001'#39'),0) as estoque_saidas,'#13#10'  ' +
      '  coalesce((select first 1 kardex.kar_saldo from kardex where ka' +
      'rdex.prd_codigo = prd0000.prd_codigo and kardex.data_hora betwee' +
      'n '#39'01/01/2001'#39' and '#39'01/01/2001'#39' order by kardex.kar_registro des' +
      'c ),0) as estoque_atual'#13#10'from  prd0000'#13#10'       left join PRD0000' +
      '_ENDERECAMENTO en on en.prde_registro=prd0000.prde_registro and ' +
      'en.emp_codigo=prd0000.emp_codigo'#13#10'where'#13#10'    prd0000.prd_refer =' +
      ' '#39'0123'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FetchOnDemand = False
    Params = <>
    CommandText = 
      'select'#13#10'    prd0000.prd_codigo,'#13#10'    prd0000.prd_pendente,'#13#10'    ' +
      'prd0000.prd_refer,'#13#10'    prd0000.prd_descri,'#13#10'    prd0000.prd_pme' +
      'dio,'#13#10'    prd0000.prd_und,'#13#10'    prd0000.prd_pcusto,'#13#10'    prd0000' +
      '.prd_minimo,'#13#10'    prd0000.pgr_codigo,'#13#10'    prd0000.pti_codigo,'#13#10 +
      '    prd0000.ipi_codigo,'#13#10'    prd0000.prd_pvenda,'#13#10'    prd0000.pr' +
      'de_registro,'#13#10'    en.prde_endereco,'#13#10#13#10'    case'#13#10'        when ((' +
      'select first 1 kardex.kar_entrada_saida from kardex where kardex' +
      '.prd_codigo = prd0000.prd_codigo and kardex.data_hora between '#39'0' +
      '1/01/2001'#39' and '#39'01/01/2001'#39' order by kardex.kar_registro asc ) =' +
      ' '#39'E'#39') then'#13#10'            (select first 1 kardex.kar_saldo from ka' +
      'rdex where kardex.prd_codigo = prd0000.prd_codigo and kardex.dat' +
      'a_hora between '#39'01/01/2001'#39' and '#39'01/01/2001'#39' order by kardex.kar' +
      '_registro asc) - (select first 1 kardex.kar_quantidade from kard' +
      'ex where kardex.prd_codigo = prd0000.prd_codigo and kardex.data_' +
      'hora between '#39'01/01/2001'#39' and '#39'01/01/2001'#39' order by kardex.kar_r' +
      'egistro asc)'#13#10'        else'#13#10'            (select first 1 kardex.k' +
      'ar_saldo from kardex where kardex.prd_codigo = prd0000.prd_codig' +
      'o and kardex.data_hora between '#39'01/01/2001'#39' and '#39'01/01/2001'#39' ord' +
      'er by kardex.kar_registro asc) + (select first 1 kardex.kar_quan' +
      'tidade from kardex where kardex.prd_codigo = prd0000.prd_codigo ' +
      'and kardex.data_hora between '#39'01/01/2001'#39' and '#39'01/01/2001'#39' order' +
      ' by kardex.kar_registro asc)'#13#10'    end as estoque_anterior,'#13#10'    ' +
      'coalesce((select sum( kardex.kar_quantidade) from kardex where k' +
      'ardex.kar_entrada_saida = '#39'E'#39' and kardex.prd_codigo = prd0000.pr' +
      'd_codigo and kardex.data_hora between '#39'01/01/2001'#39' and '#39'01/01/20' +
      '01'#39'),0) as estoque_entradas,'#13#10'    coalesce((select sum( kardex.k' +
      'ar_quantidade) from kardex where kardex.kar_entrada_saida = '#39'S'#39' ' +
      'and kardex.prd_codigo = prd0000.prd_codigo and kardex.data_hora ' +
      'between '#39'01/01/2001'#39' and '#39'01/01/2001'#39'),0) as estoque_saidas,'#13#10'  ' +
      '  coalesce((select first 1 kardex.kar_saldo from kardex where ka' +
      'rdex.prd_codigo = prd0000.prd_codigo and kardex.data_hora betwee' +
      'n '#39'01/01/2001'#39' and '#39'01/01/2001'#39' order by kardex.kar_registro des' +
      'c ),0) as estoque_atual'#13#10'from  prd0000'#13#10'       left join PRD0000' +
      '_ENDERECAMENTO en on en.prde_registro=prd0000.prde_registro and ' +
      'en.emp_codigo=prd0000.emp_codigo'#13#10'where'#13#10'    prd0000.prd_refer =' +
      ' '#39'0123'#39
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 728
    Top = 88
    object CdsEstoqueNovoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = []
      Required = True
      Size = 4
    end
    object CdsEstoqueNovoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
    object CdsEstoqueNovoPRD_UND: TStringField
      FieldName = 'PRD_UND'
      ProviderFlags = []
      Size = 3
    end
    object CdsEstoqueNovoPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      ProviderFlags = []
      Precision = 15
      Size = 4
    end
    object CdsEstoqueNovoPRD_MINIMO: TFMTBCDField
      FieldName = 'PRD_MINIMO'
      ProviderFlags = []
      Precision = 15
      Size = 4
    end
    object CdsEstoqueNovoPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      ProviderFlags = []
      Size = 3
    end
    object CdsEstoqueNovoPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      ProviderFlags = []
      Size = 3
    end
    object CdsEstoqueNovoESTOQUE_ANTERIOR: TFMTBCDField
      FieldName = 'ESTOQUE_ANTERIOR'
      ProviderFlags = []
      Precision = 15
      Size = 4
    end
    object CdsEstoqueNovoESTOQUE_ENTRADAS: TFMTBCDField
      FieldName = 'ESTOQUE_ENTRADAS'
      ProviderFlags = []
      Precision = 15
      Size = 4
    end
    object CdsEstoqueNovoESTOQUE_SAIDAS: TFMTBCDField
      FieldName = 'ESTOQUE_SAIDAS'
      ProviderFlags = []
      Precision = 15
      Size = 4
    end
    object CdsEstoqueNovoESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'ESTOQUE_ATUAL'
      ProviderFlags = []
      Precision = 15
      Size = 4
    end
    object CdsEstoqueNovoPRD_PMEDIO: TFMTBCDField
      FieldName = 'PRD_PMEDIO'
      ProviderFlags = []
      Precision = 15
      Size = 4
    end
    object CdsEstoqueNovoPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      ProviderFlags = []
      Precision = 15
      Size = 4
    end
    object CdsEstoqueNovoPRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      ProviderFlags = []
      Precision = 15
      Size = 4
    end
    object CdsEstoqueNovoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      ProviderFlags = []
    end
    object CdsEstoqueNovoIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      ProviderFlags = []
      Size = 8
    end
    object CdsEstoqueNovoPRDE_REGISTRO: TIntegerField
      FieldName = 'PRDE_REGISTRO'
    end
    object CdsEstoqueNovoPRDE_ENDERECO: TStringField
      FieldName = 'PRDE_ENDERECO'
      Size = 30
    end
    object CdsEstoqueNovolin_descri: TStringField
      FieldName = 'lin_descri'
    end
    object CdsEstoqueNovoPRG_SALDO: TFMTBCDField
      DisplayWidth = 16
      FieldName = 'PRG_SALDO'
      Size = 16
    end
    object CdsEstoqueNovoPRG_DESCRICAO: TStringField
      FieldName = 'PRG_DESCRICAO'
      Size = 100
    end
  end
  object frxInventarioEstoque: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40995.864091145800000000
    ReportOptions.LastChange = 44802.611632928240000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   totalPreco, totalPrecoGeral:Real;'
      '                                '
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   totalPreco := <frxDBDataset1."ESTOQUE_ATUAL"> * <frxDBDataset' +
        '1."PRD_PMEDIO">;'
      
        '   totalPrecoGeral := totalPrecoGeral + totalPreco;             ' +
        '                  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxInventarioEstoqueGetValue
    Left = 704
    Top = 496
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 90.811070000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          Left = 578.268090000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 15.897650000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio de Invent'#225'rio de Estoque')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 578.268090000000000000
          Top = 16.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 1.000000000000000000
          Top = 37.574830000000000000
          Width = 714.331170000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 67.692950000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Top = 68.692950000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 86.929190000000000000
          Top = 68.692950000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o do Produto')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 275.905690000000000000
          Top = 68.692950000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 302.362400000000000000
          Top = 68.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo Anterior')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 374.173470000000000000
          Top = 68.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Entrada')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 445.984540000000000000
          Top = 68.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sa'#237'da')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 517.795610000000000000
          Top = 68.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 589.606680000000000000
          Top = 68.692950000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P.M'#233'dio')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 653.858690000000000000
          Top = 68.692950000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr.Estoque')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 89.590600000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1PRD_REFER: TfrxMemoView
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_REFER"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_DESCRI: TfrxMemoView
          Left = 86.929190000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_DESCRI"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_UND: TfrxMemoView
          Left = 275.905690000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_UND'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_UND"]')
          ParentFont = False
        end
        object frxDBDataset1ESTOQUE_ANTERIOR: TfrxMemoView
          Left = 302.362400000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'ESTOQUE_ANTERIOR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ESTOQUE_ANTERIOR"]')
          ParentFont = False
        end
        object frxDBDataset1ESTOQUE_ENTRADAS: TfrxMemoView
          Left = 374.173470000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'ESTOQUE_ENTRADAS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ESTOQUE_ENTRADAS"]')
          ParentFont = False
        end
        object frxDBDataset1ESTOQUE_SAIDAS: TfrxMemoView
          Left = 445.984540000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'ESTOQUE_SAIDAS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ESTOQUE_SAIDAS"]')
          ParentFont = False
        end
        object frxDBDataset1ESTOQUE_ATUAL: TfrxMemoView
          Left = 517.795610000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'ESTOQUE_ATUAL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ESTOQUE_ATUAL"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_PMEDIO: TfrxMemoView
          Left = 589.606680000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_PMEDIO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_PMEDIO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 653.858690000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalPreco]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          Left = 597.165740000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalPrecoGeral]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 309.921460000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Totais:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo16: TfrxMemoView
          Left = 484.559370000000000000
          Top = 0.779530000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."ESTOQUE_ATUAL">, Masterdata1,0)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRD_CODIGO=PRD_CODIGO'
      'PRD_DESCRI=PRD_DESCRI'
      'PRD_UND=PRD_UND'
      'PRD_PCUSTO=PRD_PCUSTO'
      'PRD_MINIMO=PRD_MINIMO'
      'PGR_CODIGO=PGR_CODIGO'
      'PTI_CODIGO=PTI_CODIGO'
      'ESTOQUE_ANTERIOR=ESTOQUE_ANTERIOR'
      'ESTOQUE_ENTRADAS=ESTOQUE_ENTRADAS'
      'ESTOQUE_SAIDAS=ESTOQUE_SAIDAS'
      'ESTOQUE_ATUAL=ESTOQUE_ATUAL'
      'PRD_PMEDIO=PRD_PMEDIO'
      'PRD_PENDENTE=PRD_PENDENTE'
      'PRD_PVENDA=PRD_PVENDA'
      'PRD_REFER=PRD_REFER'
      'IPI_CODIGO=IPI_CODIGO'
      'PRDE_REGISTRO=PRDE_REGISTRO'
      'PRDE_ENDERECO=PRDE_ENDERECO'
      'lin_descri=lin_descri'
      'PRG_SALDO=PRG_SALDO'
      'PRG_DESCRICAO=PRG_DESCRICAO')
    DataSet = CdsEstoqueNovo
    BCDToCurrency = False
    Left = 728
    Top = 160
  end
  object frxEstoqueAtual: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40995.864091145800000000
    ReportOptions.LastChange = 41038.629033321800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   totalPreco:Real;'
      '   contalinhas: Real;'
      '   negativo: string;                                        '
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   totalPreco := <frxDBDataset1."ESTOQUE_ATUAL"> * <frxDBDataset' +
        '1."PRD_PMEDIO">;                                                ' +
        '     '
      'end;'
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  contalinhas := contalinhas+1;                               '
      'end;'
      ''
      'procedure Memo9OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  memo9.text := '#39'Total de Itens Listados: '#39'+FormatFloat( '#39'###,##' +
        '0'#39', contalinhas );                                              ' +
        '                                                                ' +
        '               '
      'end;'
      ''
      'begin'
      '  contalinhas := 0;  '
      '    '
      'end.')
    OnGetValue = frxEstoqueAtualGetValue
    Left = 736
    Top = 32
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 76.370130000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Date: TfrxMemoView
          Left = 903.307670000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio de Estoque Atual')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 903.307670000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 56.692950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 94.488250000000000000
          Top = 56.692950000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o do Produto')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 617.598640000000000000
          Top = 56.692950000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 888.252320000000000000
          Top = 56.692950000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 817.441250000000000000
          Top = 56.692950000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'E.M'#237'nimo')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 649.590482830000000000
          Top = 57.472480000000000000
          Width = 117.165354330000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 56.692950000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 75.590600000000000000
          Width = 1046.929133860000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo8: TfrxMemoView
          Left = 772.425480000000000000
          Top = 56.692950000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'NCM')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 948.662030000000000000
          Top = 56.692950000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Contagem')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 388.291590000000000000
          Top = 56.692950000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Marca')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1PRD_REFER: TfrxMemoView
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = 
            '((<frxDBDataset1."ESTOQUE_ATUAL"> < 0) or (<frxDBDataset1."ESTOQ' +
            'UE_ATUAL"> < <frxDBDataset1."PRD_MINIMO">))'
          Highlight.FillType = ftBrush
          Highlight.Fill.ForeColor = clRed
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_REFER"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_DESCRI: TfrxMemoView
          Left = 94.488250000000000000
          Width = 291.023810000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = 
            '((<frxDBDataset1."ESTOQUE_ATUAL"> < 0) or (<frxDBDataset1."ESTOQ' +
            'UE_ATUAL"> < <frxDBDataset1."PRD_MINIMO">))'
          Highlight.FillType = ftBrush
          Highlight.Fill.ForeColor = clRed
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_DESCRI"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_UND: TfrxMemoView
          Left = 616.819110000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = 
            '((<frxDBDataset1."ESTOQUE_ATUAL"> < 0) or (<frxDBDataset1."ESTOQ' +
            'UE_ATUAL"> < <frxDBDataset1."PRD_MINIMO">))'
          Highlight.FillType = ftBrush
          Highlight.Fill.ForeColor = clRed
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_UND"]')
          ParentFont = False
        end
        object frxDBDataset1ESTOQUE_ATUAL: TfrxMemoView
          Left = 877.693260000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = 
            '((<frxDBDataset1."ESTOQUE_ATUAL"> < 0) or (<frxDBDataset1."ESTOQ' +
            'UE_ATUAL"> < <frxDBDataset1."PRD_MINIMO">))'
          Highlight.FillType = ftBrush
          Highlight.Fill.ForeColor = clRed
          Memo.UTF8W = (
            '[frxDBDataset1."ESTOQUE_ATUAL"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 817.441250000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = 
            '((<frxDBDataset1."ESTOQUE_ATUAL"> < 0) or (<frxDBDataset1."ESTOQ' +
            'UE_ATUAL"> < <frxDBDataset1."PRD_MINIMO">))'
          Highlight.FillType = ftBrush
          Highlight.Fill.ForeColor = clRed
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_MINIMO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 762.205010000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = 
            '((<frxDBDataset1."ESTOQUE_ATUAL"> < 0) or (<frxDBDataset1."ESTOQ' +
            'UE_ATUAL"> < <frxDBDataset1."PRD_MINIMO">))'
          Highlight.FillType = ftBrush
          Highlight.Fill.ForeColor = clRed
          Memo.UTF8W = (
            '[frxDBDataset1."IPI_CODIGO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 649.590482830000000000
          Width = 105.826764330000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = 
            '((<frxDBDataset1."ESTOQUE_ATUAL"> < 0) or (<frxDBDataset1."ESTOQ' +
            'UE_ATUAL"> < <frxDBDataset1."PRD_MINIMO">))'
          Highlight.FillType = ftBrush
          Highlight.Fill.ForeColor = clRed
          Memo.UTF8W = (
            '[frxDBDataset1."PRDE_ENDERECO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 385.512060000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = 
            '((<frxDBDataset1."ESTOQUE_ATUAL"> < 0) or (<frxDBDataset1."ESTOQ' +
            'UE_ATUAL"> < <frxDBDataset1."PRD_MINIMO">))'
          Highlight.FillType = ftBrush
          Highlight.Fill.ForeColor = clRed
          Memo.UTF8W = (
            '[frxDBDataset1."lin_descri"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 949.102970000000000000
          Top = 14.338590000000000000
          Width = 98.267103860000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 1046.929810000000000000
        object Memo9: TfrxMemoView
          Left = 26.456710000000000000
          Top = 3.779529999999990000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo9OnBeforePrint'
        end
      end
    end
  end
  object frxRelatorioFinanceiroEstoqueGeral: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40995.864091145800000000
    ReportOptions.LastChange = 40995.936752835650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      
        '   totalPreco:Real;                                             ' +
        '                  '
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   totalPreco := <frxDBDataset1."ESTOQUE_ATUAL"> * <frxDBDataset' +
        '1."PRD_PCUSTO">;                                                ' +
        '     '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxRelatorioFinanceiroEstoqueGeralGetValue
    Left = 712
    Top = 248
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          Left = 578.268090000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio Financeiro do Estoque (Geral)')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 578.268090000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 56.692950000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Top = 56.692950000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 86.929190000000000000
          Top = 56.692950000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o do Produto')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 275.905690000000000000
          Top = 56.692950000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 302.362400000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Saldo Anterior')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 374.173470000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Entrada')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 445.984540000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Sa'#237'da')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 517.795610000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 589.606680000000000000
          Top = 56.692950000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Custo')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 653.858690000000000000
          Top = 56.692950000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Vlr.Estoque')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 75.590599999999990000
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1PRD_REFER: TfrxMemoView
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_REFER"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_DESCRI: TfrxMemoView
          Left = 86.929190000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_DESCRI"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_UND: TfrxMemoView
          Left = 275.905690000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_UND'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_UND"]')
          ParentFont = False
        end
        object frxDBDataset1ESTOQUE_ANTERIOR: TfrxMemoView
          Left = 302.362400000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'ESTOQUE_ANTERIOR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ESTOQUE_ANTERIOR"]')
          ParentFont = False
        end
        object frxDBDataset1ESTOQUE_ENTRADAS: TfrxMemoView
          Left = 374.173470000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'ESTOQUE_ENTRADAS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ESTOQUE_ENTRADAS"]')
          ParentFont = False
        end
        object frxDBDataset1ESTOQUE_SAIDAS: TfrxMemoView
          Left = 445.984540000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'ESTOQUE_SAIDAS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ESTOQUE_SAIDAS"]')
          ParentFont = False
        end
        object frxDBDataset1ESTOQUE_ATUAL: TfrxMemoView
          Left = 517.795610000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'ESTOQUE_ATUAL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ESTOQUE_ATUAL"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_PMEDIO: TfrxMemoView
          Left = 589.606680000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_PCUSTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_PCUSTO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 653.858690000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalPreco]')
          ParentFont = False
        end
      end
    end
  end
  object frxEstoqueCompras: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40995.864091145800000000
    ReportOptions.LastChange = 41022.929899733800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      
        '   totalPreco:Real;                                             ' +
        '                  '
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   totalPreco := <frxDBDataset1."ESTOQUE_ATUAL"> + <frxDBDataset' +
        '1."PRD_PENDENTE">;                                              ' +
        '       '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxInventarioEstoqueGetValue
    Left = 720
    Top = 352
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          Left = 578.268090000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio de Estoque + Compras em Aberto')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 578.268090000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]'
            '')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 56.692950000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Top = 56.692950000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 86.929190000000000000
          Top = 56.692950000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o do Produto')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 275.905690000000000000
          Top = 56.692950000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 302.362400000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Saldo Anterior')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 374.173470000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Entrada')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 445.984540000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Sa'#237'da')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 517.795610000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 589.606680000000000000
          Top = 56.692950000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Compras')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 653.858690000000000000
          Top = 56.692950000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Est.+Comp.')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 75.590599999999990000
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1PRD_REFER: TfrxMemoView
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_REFER"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_DESCRI: TfrxMemoView
          Left = 86.929190000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_DESCRI"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_UND: TfrxMemoView
          Left = 275.905690000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_UND'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_UND"]')
          ParentFont = False
        end
        object frxDBDataset1ESTOQUE_ANTERIOR: TfrxMemoView
          Left = 302.362400000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'ESTOQUE_ANTERIOR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ESTOQUE_ANTERIOR"]')
          ParentFont = False
        end
        object frxDBDataset1ESTOQUE_ENTRADAS: TfrxMemoView
          Left = 374.173470000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'ESTOQUE_ENTRADAS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ESTOQUE_ENTRADAS"]')
          ParentFont = False
        end
        object frxDBDataset1ESTOQUE_SAIDAS: TfrxMemoView
          Left = 445.984540000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'ESTOQUE_SAIDAS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ESTOQUE_SAIDAS"]')
          ParentFont = False
        end
        object frxDBDataset1ESTOQUE_ATUAL: TfrxMemoView
          Left = 517.795610000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'ESTOQUE_ATUAL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ESTOQUE_ATUAL"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_PENDENTE: TfrxMemoView
          Left = 589.606680000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_PENDENTE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_PENDENTE"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 653.858690000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalPreco]')
          ParentFont = False
        end
      end
    end
  end
  object frxRelatorioFinanceiroEstoque: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40995.864091145800000000
    ReportOptions.LastChange = 41035.997248460650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   custototal, mediototal, vendatotal, vendacusto:Real;'
      
        '   custototalAC, mediototalAC, vendatotalAC, vendacustoAC:Real; ' +
        '      '
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   custototal := <frxDBDataset1."ESTOQUE_ATUAL"> * <frxDBDataset' +
        '1."PRD_PCUSTO">;'
      
        '   mediototal := <frxDBDataset1."ESTOQUE_ATUAL"> * <frxDBDataset' +
        '1."PRD_PMEDIO">;'
      
        '   vendatotal := <frxDBDataset1."ESTOQUE_ATUAL"> * <frxDBDataset' +
        '1."PRD_PVENDA">;'
      '   vendacusto := vendatotal - custototal;'
      '   custototalAC := custototalAC + custototal;'
      '   mediototalAC := mediototalAC + mediototal;'
      '   vendatotalAC := vendatotalAC + vendatotal;'
      
        '   vendacustoAC := vendacustoAC + vendacusto;                   ' +
        '            '
      '     '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxRelatorioFinanceiroEstoqueGeralGetValue
    Left = 608
    Top = 352
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Date: TfrxMemoView
          Left = 907.087200000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio Financeiro do Estoque')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 907.087200000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 37.795300000000000000
          Width = 1050.709340000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 56.692949999999990000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Top = 56.692949999999990000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 90.708720000000000000
          Top = 56.692949999999990000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o do Produto')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 355.275820000000000000
          Top = 56.692949999999990000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 963.780150000000000000
          Top = 56.692949999999990000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Venda - Custo')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 75.590600000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo14: TfrxMemoView
          Left = 880.630490000000000000
          Top = 56.692949999999990000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P. Venda Total')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 631.181510000000000000
          Top = 56.692949999999990000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P. M'#233'dio')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 797.480830000000000000
          Top = 56.692949999999990000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P. Venda')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 714.331170000000000000
          Top = 56.692949999999990000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P. M'#233'dio Total')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 548.031849999999900000
          Top = 56.692949999999990000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Custo Total')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 464.882190000000000000
          Top = 56.692949999999990000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Custo')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 381.732530000000000000
          Top = 56.692949999999990000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1PRD_REFER: TfrxMemoView
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_REFER"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_DESCRI: TfrxMemoView
          Left = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_DESCRI"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_UND: TfrxMemoView
          Left = 355.275820000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_UND'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_UND"]')
          ParentFont = False
        end
        object frxDBDataset1ESTOQUE_ATUAL: TfrxMemoView
          Left = 381.732530000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'ESTOQUE_ATUAL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ESTOQUE_ATUAL"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_PMEDIO: TfrxMemoView
          Left = 464.882190000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_PCUSTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_PCUSTO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 631.181510000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_PMEDIO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_PMEDIO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 797.480830000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_PVENDA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_PVENDA"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 548.031849999999900000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[custototal]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 714.331170000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[mediototal]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 880.630490000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[vendatotal]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 963.780150000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[vendacusto]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 1046.929810000000000000
        object Memo21: TfrxMemoView
          Left = 548.031849999999900000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[custototalAC]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 714.331170000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[mediototalAC]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 880.630490000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[vendatotalAC]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 963.780150000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[vendacustoAC]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TOTAIS:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Top = 18.897650000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 759
    Top = 419
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 568
    Top = 424
  end
  object frxInventarioNCM: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40995.864091145800000000
    ReportOptions.LastChange = 41953.369385289350000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      
        '   totalPreco, totalPrecoGeral,QuantidadeNCM,totalPrecoGeralNCM ' +
        ':Real;'
      '                                '
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   totalPreco := <frxDBDataset1."ESTOQUE_ATUAL"> * <frxDBDataset' +
        '1."PRD_PMEDIO">;'
      '   totalPrecoGeral := totalPrecoGeral + totalPreco;'
      
        '   QuantidadeNCM := QuantidadeNCM + <frxDBDataset1."ESTOQUE_ATUA' +
        'L">;'
      
        '   totalPrecoGeralNCM := totalPrecoGeralNCM + totalPreco;       ' +
        '                        '
      '     '
      'end;'
      ''
      'procedure GroupHeader1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '       QuantidadeNCM := 0;'
      '       totalPrecoGeralNCM := 0;                         '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxInventarioNCMGetValue
    Left = 816
    Top = 472
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          Left = 578.268090000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio de Invent'#225'rio de Estoque - Por Classifica'#231#227'o Fiscal')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 578.268090000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 66.692950000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Top = 67.692950000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 86.929190000000000000
          Top = 67.692950000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o do Produto')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 275.905690000000000000
          Top = 67.692950000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 302.362400000000000000
          Top = 67.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo Anterior')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 374.173470000000000000
          Top = 67.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Entrada')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 445.984540000000000000
          Top = 67.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sa'#237'da')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 517.795610000000000000
          Top = 67.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 589.606680000000000000
          Top = 67.692950000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P.M'#233'dio')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 653.858690000000000000
          Top = 67.692950000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vlr.Estoque')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 86.590600000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1PRD_REFER: TfrxMemoView
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_REFER"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_DESCRI: TfrxMemoView
          Left = 86.929190000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_DESCRI"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_UND: TfrxMemoView
          Left = 275.905690000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_UND'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_UND"]')
          ParentFont = False
        end
        object frxDBDataset1ESTOQUE_ANTERIOR: TfrxMemoView
          Left = 302.362400000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'ESTOQUE_ANTERIOR'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ESTOQUE_ANTERIOR"]')
          ParentFont = False
        end
        object frxDBDataset1ESTOQUE_ENTRADAS: TfrxMemoView
          Left = 374.173470000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'ESTOQUE_ENTRADAS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ESTOQUE_ENTRADAS"]')
          ParentFont = False
        end
        object frxDBDataset1ESTOQUE_SAIDAS: TfrxMemoView
          Left = 445.984540000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'ESTOQUE_SAIDAS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ESTOQUE_SAIDAS"]')
          ParentFont = False
        end
        object frxDBDataset1ESTOQUE_ATUAL: TfrxMemoView
          Left = 517.795610000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'ESTOQUE_ATUAL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ESTOQUE_ATUAL"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_PMEDIO: TfrxMemoView
          Left = 589.606680000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_PMEDIO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_PMEDIO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 653.858690000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalPreco]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 287.244280000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          Left = 589.606680000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[totalPrecoGeral]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 461.102660000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total do Estoque:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'GroupHeader1OnAfterPrint'
        Condition = 'frxDBDataset1."IPI_CODIGO"'
        KeepTogether = True
        object frxDBDataset1PTI_CODIGO: TfrxMemoView
          Left = 124.724490000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."IPI_CODIGO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Classifica'#231#227'o Fiscal:')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 18.897650000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        object Memo17: TfrxMemoView
          Left = 631.181510000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[totalPrecoGeralNCM]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 517.795610000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[QuantidadeNCM]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total da Classifica'#231#227'o Fiscal')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 385.512060000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Quantidade em Estoque:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 589.606680000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor:')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 18.897649999999970000
          Width = 721.890230000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object SqlCdsLinha: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select LIN_CODIGO, LIN_DESCRI, EMP_CODIGO from prd_linha'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select LIN_CODIGO, LIN_DESCRI, EMP_CODIGO from prd_linha'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 512
    Top = 352
    object SqlCdsLinhaLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object SqlCdsLinhaLIN_DESCRI: TStringField
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object SqlCdsLinhaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object frxEstoqueAtualGrade: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40995.864091145800000000
    ReportOptions.LastChange = 41038.629033321800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   totalPreco:Real;'
      
        '   contalinhas: Real;                                           ' +
        '     '
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   totalPreco := <frxDBDataset1."ESTOQUE_ATUAL"> * <frxDBDataset' +
        '1."PRD_PMEDIO">;                                                ' +
        '     '
      'end;'
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  contalinhas := contalinhas+1;                               '
      'end;'
      ''
      'procedure Memo9OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  memo9.text := '#39'Total de Itens Listados: '#39'+FormatFloat( '#39'###,##' +
        '0'#39', contalinhas );                                              ' +
        '                                                                ' +
        '               '
      'end;'
      ''
      'begin'
      '  contalinhas := 0;  '
      '    '
      'end.')
    OnGetValue = frxEstoqueAtualGetValue
    Left = 608
    Top = 32
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 76.370130000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Date: TfrxMemoView
          Left = 899.528140000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio de Estoque Atual')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 899.528140000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 56.692949999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 94.488250000000000000
          Top = 56.692949999999990000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o do Produto')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 617.598640000000000000
          Top = 56.692949999999990000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 888.252320000000000000
          Top = 56.692949999999990000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 817.441250000000000000
          Top = 56.692949999999990000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'E.M'#237'nimo')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 649.590482830000000000
          Top = 57.472480000000010000
          Width = 117.165354330000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 37.795300000000000000
          Width = 1031.811690000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 56.692949999999990000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 75.590600000000000000
          Width = 1046.929133860000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo8: TfrxMemoView
          Left = 772.425480000000000000
          Top = 56.692949999999990000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'NCM')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 948.662030000000000000
          Top = 56.692949999999990000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Contagem')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 388.291590000000000000
          Top = 56.692949999999990000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Grade')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1PRD_REFER: TfrxMemoView
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_REFER"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_DESCRI: TfrxMemoView
          Left = 94.488250000000000000
          Width = 291.023810000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_DESCRI"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_UND: TfrxMemoView
          Left = 616.819110000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_UND'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_UND"]')
          ParentFont = False
        end
        object frxDBDataset1ESTOQUE_ATUAL: TfrxMemoView
          Left = 877.693260000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[IIF(<frxDBDataset1."PRG_DESCRICAO"> = '#39#39',<frxDBDataset1."ESTOQU' +
              'E_ATUAL">,<frxDBDataset1."PRG_SALDO">) ]')
          ParentFont = False
          Formats = <
            item
              DecimalSeparator = ','
              FormatStr = '%2.2n'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo14: TfrxMemoView
          Left = 817.441250000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_MINIMO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_MINIMO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 762.205010000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'IPI_CODIGO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."IPI_CODIGO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 649.590482830000000000
          Width = 105.826764330000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRDE_ENDERECO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 385.512060000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          DataField = 'PRG_DESCRICAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRG_DESCRICAO"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 949.102970000000000000
          Top = 14.338589999999980000
          Width = 98.267103860000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 1046.929810000000000000
        object Memo9: TfrxMemoView
          Left = 26.456710000000000000
          Top = 3.779529999999994000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo9OnBeforePrint'
        end
      end
    end
  end
  object frxEstoqueCodBarra: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40995.864091145800000000
    ReportOptions.LastChange = 43733.638513402800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '   totalPreco:Real;'
      
        '   contalinhas: Real;                                           ' +
        '     '
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   totalPreco := <frxDBDataset1."ESTOQUE_ATUAL"> * <frxDBDataset' +
        '1."PRD_PMEDIO">;                                                ' +
        '     '
      'end;'
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  contalinhas := contalinhas+1;                               '
      'end;'
      ''
      'procedure Memo9OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  memo9.text := '#39'Total de Itens Listados: '#39'+FormatFloat( '#39'###,##' +
        '0'#39', contalinhas );                                              ' +
        '                                                                ' +
        '               '
      'end;'
      ''
      'begin'
      '  contalinhas := 0;  '
      '    '
      'end.')
    OnGetValue = frxInventarioEstoqueGetValue
    Left = 624
    Top = 104
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 76.370130000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Date: TfrxMemoView
          Left = 903.307670000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [FormatDateTime('#39'hh:m'#39',Time)]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo2: TfrxMemoView
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio de Estoque Atual')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 903.307670000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 56.692949999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 94.488250000000000000
          Top = 56.692949999999990000
          Width = 286.241201310000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o do Produto')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 617.598640000000000000
          Top = 56.692949999999990000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 888.252320000000000000
          Top = 56.692949999999990000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 817.441250000000000000
          Top = 56.692949999999990000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'E.M'#237'nimo')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 649.590482830000000000
          Top = 57.472480000000010000
          Width = 117.165354330000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 37.795300000000000000
          Width = 778.583180000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 56.692949999999990000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 75.590600000000000000
          Width = 1046.929133860000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo8: TfrxMemoView
          Left = 772.425480000000000000
          Top = 56.692949999999990000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'NCM')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 948.662030000000000000
          Top = 56.692949999999990000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Contagem')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 388.291590000000000000
          Top = 56.692949999999990000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#243'd. Barra Refer'#234'ncia')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.451453330000000000
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1PRD_REFER: TfrxMemoView
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_REFER"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_DESCRI: TfrxMemoView
          Left = 94.488250000000000000
          Width = 286.241201310000000000
          Height = 15.118120000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_DESCRI"]')
          ParentFont = False
        end
        object frxDBDataset1PRD_UND: TfrxMemoView
          Left = 616.819110000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_UND'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_UND"]')
          ParentFont = False
        end
        object frxDBDataset1ESTOQUE_ATUAL: TfrxMemoView
          Left = 877.693260000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'ESTOQUE_ATUAL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ESTOQUE_ATUAL"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 817.441250000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_MINIMO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PRD_MINIMO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 762.205010000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataField = 'IPI_CODIGO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."IPI_CODIGO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 649.590482830000000000
          Width = 105.826764330000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRDE_ENDERECO"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 949.102970000000000000
          Top = 14.338590000000010000
          Width = 98.267103860000000000
          Color = clBlack
          Diagonal = True
        end
        object BarCode1: TfrxBarCodeView
          Left = 390.600414060000000000
          Top = 0.289787600000011000
          Width = 129.000000000000000000
          Height = 15.564316670000000000
          BarType = bcCode39
          Expression = '<frxDBDataset1."PRD_REFER">'
          Rotation = 0
          ShowText = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 234.330860000000000000
        Width = 1046.929810000000000000
        object Memo9: TfrxMemoView
          Left = 26.456710000000000000
          Top = 3.779529999999994000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo9OnBeforePrint'
        end
      end
    end
  end
  object ppRP15: TppReport
    AutoStop = False
    DataPipeline = ppDBProdutos
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELPRODUTOS00.r' +
      'tm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 1074
    Top = 69
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBProdutos'
    object ppHeaderBand7: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 30427
      mmPrintPosition = 0
      object ppLine41: TppLine
        DesignLayer = ppDesignLayer12
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 24342
        mmWidth = 285140
        BandType = 0
        LayerName = Foreground11
      end
      object ppLine42: TppLine
        DesignLayer = ppDesignLayer12
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 25400
        mmWidth = 285140
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel90: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'REFERENCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 25400
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel91: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DESCRI'#199#195'O DO PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 21960
        mmTop = 25400
        mmWidth = 67733
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel104: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CUSTO L'#205'QUIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 90162
        mmTop = 25400
        mmWidth = 23405
        BandType = 0
        LayerName = Foreground11
      end
      object ppLine43: TppLine
        DesignLayer = ppDesignLayer12
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 29998
        mmWidth = 285547
        BandType = 0
        LayerName = Foreground11
      end
      object ppLine45: TppLine
        DesignLayer = ppDesignLayer12
        UserName = 'Line45'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 3440
        mmWidth = 286361
        BandType = 0
        LayerName = Foreground11
      end
      object LBL_15_EMPRESA1: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'LBL_15_EMPRESA1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBL_15_EMPRESA1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 139965
        mmTop = 4498
        mmWidth = 41540
        BandType = 0
        LayerName = Foreground11
      end
      object ppSystemVariable21: TppSystemVariable
        DesignLayer = ppDesignLayer12
        UserName = 'SystemVariable21'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 229659
        mmTop = 0
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground11
      end
      object ppSystemVariable22: TppSystemVariable
        DesignLayer = ppDesignLayer12
        UserName = 'SystemVariable22'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 259028
        mmTop = 0
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground11
      end
      object LBL_15_RELATORIO: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'LBL_15_RELATORIO'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBL_15_RELATORIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 47096
        mmTop = 14288
        mmWidth = 227807
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel85: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label85'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'M'#201'DIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 125148
        mmTop = 25400
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel86: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label86'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'FRETE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 147902
        mmTop = 25400
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel87: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label87'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 177882
        mmTop = 25400
        mmWidth = 5495
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel92: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label92'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 264319
        mmTop = 25400
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel105: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label105'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'SUBS. TRIB.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 187325
        mmTop = 25400
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel106: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label106'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CUSTO ENTR.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 208492
        mmTop = 25400
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel107: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label107'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'MARGEM %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 236273
        mmTop = 25400
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground11
      end
      object Logo: TppImage
        DesignLayer = ppDesignLayer12
        UserName = 'Logo'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 19131
        mmLeft = 1588
        mmTop = 4498
        mmWidth = 41316
        BandType = 0
        LayerName = Foreground11
      end
      object LBL_15_FILTRO: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'LBL_15_FILTRO'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBL_15_FILTRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 47218
        mmTop = 19751
        mmWidth = 228153
        BandType = 0
        LayerName = Foreground11
      end
    end
    object ppDetailBand7: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText124: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground11
      end
      object ppDBText125: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3704
        mmLeft = 21960
        mmTop = 0
        mmWidth = 67733
        BandType = 4
        LayerName = Foreground11
      end
      object ppDBText127: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText5'
        HyperlinkEnabled = False
        OnGetText = ppDBText127GetText
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_PCUSTO'
        DataPipeline = ppDBProdutos
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3704
        mmLeft = 91031
        mmTop = 0
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground11
      end
      object ppDBText126: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText126'
        HyperlinkEnabled = False
        OnGetText = ppDBText126GetText
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_PMEDIO'
        DataPipeline = ppDBProdutos
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3704
        mmLeft = 114255
        mmTop = 0
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground11
      end
      object ppDBText128: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText128'
        HyperlinkEnabled = False
        OnGetText = ppDBText128GetText
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_CUSTOFRETE'
        DataPipeline = ppDBProdutos
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3704
        mmLeft = 137419
        mmTop = 0
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground11
      end
      object ppDBText129: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText129'
        HyperlinkEnabled = False
        OnGetText = ppDBText129GetText
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_CUSTOIPI'
        DataPipeline = ppDBProdutos
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3704
        mmLeft = 160378
        mmTop = 0
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground11
      end
      object ppDBText130: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText130'
        HyperlinkEnabled = False
        OnGetText = ppDBText130GetText
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_PVENDA'
        DataPipeline = ppDBProdutos
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3704
        mmLeft = 251884
        mmTop = 0
        mmWidth = 22000
        BandType = 4
        LayerName = Foreground11
      end
      object ppDBText131: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText131'
        HyperlinkEnabled = False
        OnGetText = ppDBText131GetText
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_CUSTOSUBTRIB'
        DataPipeline = ppDBProdutos
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3704
        mmLeft = 183304
        mmTop = 0
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground11
      end
      object ppDBText132: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText132'
        HyperlinkEnabled = False
        OnGetText = ppDBText132GetText
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_CUSTOCOMIPI'
        DataPipeline = ppDBProdutos
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3704
        mmLeft = 205999
        mmTop = 0
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground11
      end
      object ppDBText133: TppDBText
        DesignLayer = ppDesignLayer12
        UserName = 'DBText133'
        HyperlinkEnabled = False
        OnGetText = ppDBText133GetText
        AutoSize = True
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_MARGEMVENDA'
        DataPipeline = ppDBProdutos
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3704
        mmLeft = 228898
        mmTop = 0
        mmWidth = 19539
        BandType = 4
        LayerName = Foreground11
      end
      object ppLabel108: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label108'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 248444
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground11
      end
    end
    object ppSummaryBand6: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine44: TppLine
        DesignLayer = ppDesignLayer12
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 204
        mmLeft = 0
        mmTop = 0
        mmWidth = 285547
        BandType = 7
        LayerName = Foreground11
      end
      object ppLabel111: TppLabel
        DesignLayer = ppDesignLayer12
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total de Itens Listados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 529
        mmTop = 529
        mmWidth = 30529
        BandType = 7
        LayerName = Foreground11
      end
      object ppDBCalc10: TppDBCalc
        DesignLayer = ppDesignLayer12
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppDBProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBProdutos'
        mmHeight = 3175
        mmLeft = 33867
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground11
      end
    end
    object raCodeModule6: TraCodeModule
      ProgramStream = {00}
    end
    object ppDesignLayers12: TppDesignLayers
      object ppDesignLayer12: TppDesignLayer
        UserName = 'Foreground11'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList11: TppParameterList
    end
  end
end
