object FrmCheque: TFrmCheque
  Left = 498
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Gerenciador de Cheques'
  ClientHeight = 602
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object grpFiltro: TGroupBox
    Left = 0
    Top = 0
    Width = 964
    Height = 94
    Align = alTop
    Caption = 'Filtro'
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 20
      Width = 34
      Height = 14
      Caption = 'Status:'
    end
    object Label2: TLabel
      Left = 329
      Top = 20
      Width = 34
      Height = 14
      Alignment = taRightJustify
      Caption = 'Banco:'
    end
    object Label3: TLabel
      Left = 608
      Top = 20
      Width = 43
      Height = 14
      Alignment = taRightJustify
      Caption = 'Ag'#234'ncia:'
    end
    object Label4: TLabel
      Left = 751
      Top = 20
      Width = 76
      Height = 14
      Alignment = taRightJustify
      Caption = 'Conta Corrente:'
    end
    object Label5: TLabel
      Left = 10
      Top = 45
      Width = 40
      Height = 14
      Alignment = taRightJustify
      Caption = 'N'#250'mero:'
    end
    object Label6: TLabel
      Left = 187
      Top = 45
      Width = 28
      Height = 14
      Alignment = taRightJustify
      Caption = 'S'#233'rie:'
    end
    object Label7: TLabel
      Left = 335
      Top = 44
      Width = 28
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor:'
    end
    object Label8: TLabel
      Left = 610
      Top = 44
      Width = 41
      Height = 14
      Alignment = taRightJustify
      Caption = 'Emissor:'
    end
    object Label9: TLabel
      Left = 10
      Top = 69
      Width = 40
      Height = 14
      Alignment = taRightJustify
      Caption = 'N'#250'mero:'
    end
    object Label10: TLabel
      Left = 159
      Top = 69
      Width = 57
      Height = 14
      Caption = 'Data Inicial :'
    end
    object Label11: TLabel
      Left = 312
      Top = 68
      Width = 53
      Height = 14
      Caption = 'Data Final :'
    end
    object Label12: TLabel
      Left = 616
      Top = 68
      Width = 35
      Height = 14
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object cbStatus: TComboBoxRw
      Left = 54
      Top = 17
      Width = 228
      Height = 22
      TabOrder = 0
      OnChange = cbStatusChange
      CharCase = ecUpperCase
      LookupSelect = 'CHS_REGISTRO,CHS_DESCRICAO'
      LookupOrderBy = 'CHS_DESCRICAO'
      LookupTable = 'CHEQUE_STATUS'
      LookupDispl = 'CHS_DESCRICAO'
      GridAutoSize = False
      LookupSource = cbStatus.InternalSource
      LookupKeyField = 'CHS_REGISTRO'
      ShowButton = True
      AutoF8WinTitulo = 'Status'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      Tabela = 'CHEQUE_STATUS'
      CamposCarregar = 'CHS_REGISTRO,CHS_DESCRICAO'
      CamposRetornar = 'CHS_REGISTRO'
      CamposOrdernar = 'CHS_DESCRICAO'
      ConexaoBanco = DataCadastros.SQLConnection1
      Localizado = False
      CodigoEmpresa = 0
      ResetaCampos = False
      MultiEmpresa = False
      Localizar = False
      CarregarCombo = False
      itemindex = 0
      style = csDropDown
    end
    object cbBanco: TComboBoxRw
      Left = 366
      Top = 17
      Width = 211
      Height = 22
      TabOrder = 1
      OnChange = cbStatusChange
      CharCase = ecUpperCase
      LookupSelect = 'BCO_DESCRICAO'
      LookupOrderBy = 'BCO_DESCRICAO'
      LookupTable = 'BANCOS'
      GridAutoSize = False
      LookupSource = cbBanco.InternalSource
      LookupKeyField = 'BCO_CODIGO'
      ShowButton = True
      AutoF8WinTitulo = 'Bancos'
      AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      Tabela = 'BANCOS'
      CamposCarregar = 'BCO_DESCRICAO'
      CamposRetornar = 'BCO_CODIGO'
      CamposOrdernar = 'BCO_DESCRICAO'
      ConexaoBanco = DataCadastros.SQLConnection1
      Localizado = False
      CodigoEmpresa = 0
      ResetaCampos = False
      MultiEmpresa = False
      Localizar = False
      CarregarCombo = False
      itemindex = 0
      style = csDropDown
    end
    object edtAgencia: TEdit
      Left = 656
      Top = 16
      Width = 89
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 10
      TabOrder = 2
      Text = 'EDTAGENCIA'
      OnChange = cbStatusChange
    end
    object edtContaCorrente: TEdit
      Left = 832
      Top = 16
      Width = 121
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 15
      TabOrder = 3
      Text = 'EDIT1'
      OnChange = cbStatusChange
    end
    object edtNumero: TEdit
      Left = 54
      Top = 41
      Width = 115
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 20
      TabOrder = 4
      Text = 'EDIT1'
      OnChange = cbStatusChange
    end
    object edtSerie: TEdit
      Left = 218
      Top = 41
      Width = 87
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 10
      TabOrder = 5
      Text = 'EDIT1'
      OnChange = cbStatusChange
    end
    object CurValor: TCurrencyEdit
      Left = 366
      Top = 40
      Width = 110
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,###,##0.00'
      TabOrder = 6
      OnExit = cbStatusChange
    end
    object edtEmissor: TEdit
      Left = 656
      Top = 40
      Width = 297
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 100
      TabOrder = 7
      Text = 'EDIT1'
      OnChange = cbStatusChange
    end
    object cbbTipoData: TComboBox
      Left = 54
      Top = 66
      Width = 97
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 8
      Text = 'EMISSAO'
      OnChange = cbStatusChange
      Items.Strings = (
        'EMISSAO'
        'PR'#201'-DATADO')
    end
    object RxDataInicial: TDateEdit
      Left = 218
      Top = 65
      Width = 88
      Height = 22
      ButtonWidth = 20
      NumGlyphs = 2
      YearDigits = dyFour
      TabOrder = 9
      OnExit = RxDataInicialExit
    end
    object RxDataFinal: TDateEdit
      Left = 367
      Top = 64
      Width = 89
      Height = 22
      ButtonWidth = 20
      NumGlyphs = 2
      YearDigits = dyFour
      TabOrder = 10
      OnExit = RxDataFinalExit
    end
    object Edt_Lista: TEdit
      Left = 656
      Top = 63
      Width = 40
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 5
      TabOrder = 11
      OnExit = Edt_ListaExit
    end
    object CbClientes1: TComboBoxRw
      Left = 697
      Top = 63
      Width = 232
      Height = 22
      TabOrder = 12
      OnExit = CbClientes1Exit
      OnChange = cbStatusChange
      CharCase = ecUpperCase
      LookupSelect = 'CLI_RAZAO'
      LookupOrderBy = 'CLI_RAZAO'
      LookupTable = 'CLI0000'
      GridAutoSize = False
      LookupSource = CbClientes1.InternalSource
      LookupKeyField = 'CLI_CODIGO'
      ShowButton = True
      AutoF8WinTitulo = 'Clientes'
      AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      Tabela = 'CLI0000'
      CamposCarregar = 'CLI_RAZAO'
      CamposRetornar = 'CLI_CODIGO'
      CamposOrdernar = 'CLI_RAZAO'
      ConexaoBanco = DataCadastros.SQLConnection1
      Localizado = False
      CodigoEmpresa = 0
      ResetaCampos = False
      MultiEmpresa = False
      Localizar = False
      CarregarCombo = False
      itemindex = 0
      style = csDropDown
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 476
    Width = 964
    Height = 79
    Align = alBottom
    Caption = 'Observa'#231#227'o'
    TabOrder = 1
    object DBMemo1: TDBMemo
      Left = 2
      Top = 16
      Width = 960
      Height = 61
      Align = alClient
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 94
    Width = 964
    Height = 382
    Align = alClient
    Caption = 'Cheques - Para Editar pressione enter ou duplo click'
    TabOrder = 2
    object dbgrdCheque: TDBGrid
      Left = 2
      Top = 16
      Width = 960
      Height = 364
      Align = alClient
      DataSource = dsCheque
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      PopupMenu = pmMenu
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = dbgrdChequeDrawColumnCell
      OnDblClick = dbgrdChequeDblClick
      OnKeyPress = dbgrdChequeKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Selecao'
          Title.Alignment = taCenter
          Title.Caption = '*'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHS_DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Status'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BCO_DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Banco'
          Width = 149
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CH_AGENCIA'
          Title.Alignment = taCenter
          Title.Caption = 'Ag'#234'ncia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CH_CONTA_CORRENTE'
          Title.Alignment = taCenter
          Title.Caption = 'Conta Corrente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CH_SERIE'
          Title.Alignment = taCenter
          Title.Caption = 'S'#233'rie'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CH_NUMERO'
          Title.Alignment = taCenter
          Title.Caption = 'N'#250'mero'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CH_VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CH_EMISSAO'
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CH_PRE_DATADO'
          Title.Alignment = taCenter
          Title.Caption = 'Pr'#233'-Datado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CH_EMISSOR'
          Title.Alignment = taCenter
          Title.Caption = 'Emissor'
          Width = 271
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CH_CPF_CNPJ'
          Title.Alignment = taCenter
          Title.Caption = 'CPF/CNPJ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CH_TELEFONE'
          Title.Alignment = taCenter
          Title.Caption = 'Telefone'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_RAZAO'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Width = 328
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 555
    Width = 964
    Height = 47
    Align = alBottom
    Caption = 'A'#231#227'o'
    TabOrder = 3
    object Label13: TLabel
      Left = 17
      Top = 18
      Width = 169
      Height = 14
      Caption = 'Mover Selecionados para o Status:'
    end
    object cbStatusMover: TComboBoxRw
      Left = 190
      Top = 15
      Width = 228
      Height = 22
      TabOrder = 0
      CharCase = ecUpperCase
      LookupSelect = 'CHS_DESCRICAO'
      LookupOrderBy = 'CHS_DESCRICAO'
      LookupTable = 'CHEQUE_STATUS'
      GridAutoSize = False
      LookupSource = cbStatusMover.InternalSource
      LookupKeyField = 'CHS_REGISTRO'
      ShowButton = True
      AutoF8WinTitulo = 'Status'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      Tabela = 'CHEQUE_STATUS'
      CamposCarregar = 'CHS_DESCRICAO'
      CamposRetornar = 'CHS_REGISTRO'
      CamposOrdernar = 'CHS_DESCRICAO'
      ConexaoBanco = DataCadastros.SQLConnection1
      Localizado = False
      CodigoEmpresa = 0
      ResetaCampos = False
      MultiEmpresa = False
      Localizar = False
      CarregarCombo = False
      itemindex = 0
      style = csDropDown
    end
    object BitBaixar: TBitBtn
      Left = 445
      Top = 14
      Width = 100
      Height = 25
      Hint = 'Baixar'
      Caption = '&Mover'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003366FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00336600
        99CC003366FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00336600CCCC0099CC0099CC003366FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00336600FFFF00CCCC00
        CCCC0099CC0099CC003366FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF00336600FFFF00FFFF00FFFF00CCCC00CCCC0099CC0099CC003366FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00336600336600336600FFFF00
        CCCC0099CC003366003366003366FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00336600FFFF00CCCC0099CC003366FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC00000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC0000FFCC66FFCC66FFCC66FFCC66FF
        CC66FF9933FF9933FF9933CC0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CC0000FFFF99FFCC66FFCC66FFCC66FFCC66FFCC66FFCC66FF9933CC00000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC0000FFFF99FFFF99FFFF99FFCC66FF
        CC66FFCC66FFCC66FFCC66CC0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBaixarClick
    end
    object BitBtn2: TBitBtn
      Left = 754
      Top = 14
      Width = 100
      Height = 25
      Hint = 'Baixar'
      Caption = '&Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object Bit_Sair: TBitBtn
      Left = 858
      Top = 14
      Width = 100
      Height = 25
      Hint = 'Sair'
      Caption = '&Sair'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333330
        0000333333333333777711111111000BB030377777777777337F1EEEEEEE0BBB
        B030373333333733337F1EEEEEEE0BBBB03037F333333733337F1EEEEEEE0BBB
        B03037F333333733337F1EEEEEEE0BBBB03037F333333733337F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBB003037F3333337F3377F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBBB03037F3333337F3337F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBBB03037F3333337F3337F1EEEEEEE0BBB
        B03037FFFFFF37FF337F11111111000BB030377777777777337F333333333330
        0000333333333333777733333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Bit_SairClick
    end
    object Bit_novo: TBitBtn
      Left = 566
      Top = 14
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      DragCursor = crDefault
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      TabOrder = 4
      OnClick = Bit_novoClick
    end
    object Bit_Excluir: TBitBtn
      Left = 660
      Top = 14
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Caption = '&Excluir'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        3300333333333333330033000000000033003300000000003300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = Bit_ExcluirClick
    end
  end
  object dsCheque: TDataSource
    DataSet = CdsCheque
    Left = 496
    Top = 40
  end
  object CdsCheque: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'    T1.*,'#13#10'    T2.BCO_DESCRICAO,'#13#10'    t3.CHS_DESCRICAO,'#13 +
      #10'    t4.CLI_RAZAO'#13#10'from'#13#10'    CHEQUE T1'#13#10'JOIN BANCOS T2 ON (T2.BC' +
      'O_CODIGO = T1.BCO_CODIGO)'#13#10'JOIN CHEQUE_STATUS T3 ON (T3.CHS_REGI' +
      'STRO = T1.CHS_REGISTRO)'#13#10'LEFT JOIN CLI0000 t4 on (t4.CLI_CODIGO ' +
      '= t1.CLI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select'#13#10'    T1.*,'#13#10'    T2.BCO_DESCRICAO,'#13#10'    t3.CHS_DESCRICAO,'#13 +
      #10'    t4.CLI_RAZAO'#13#10'from'#13#10'    CHEQUE T1'#13#10'JOIN BANCOS T2 ON (T2.BC' +
      'O_CODIGO = T1.BCO_CODIGO)'#13#10'JOIN CHEQUE_STATUS T3 ON (T3.CHS_REGI' +
      'STRO = T1.CHS_REGISTRO)'#13#10'LEFT JOIN CLI0000 t4 on (t4.CLI_CODIGO ' +
      '= t1.CLI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 528
    Top = 40
    object CdsChequeSelecao: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'Selecao'
    end
    object CdsChequeCH_REGISTRO: TIntegerField
      FieldName = 'CH_REGISTRO'
    end
    object CdsChequeEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsChequeBCO_CODIGO: TIntegerField
      FieldName = 'BCO_CODIGO'
    end
    object CdsChequeCH_AGENCIA: TStringField
      FieldName = 'CH_AGENCIA'
      Size = 10
    end
    object CdsChequeCH_CONTA_CORRENTE: TStringField
      FieldName = 'CH_CONTA_CORRENTE'
      Size = 15
    end
    object CdsChequeCH_SERIE: TStringField
      FieldName = 'CH_SERIE'
      Size = 10
    end
    object CdsChequeCH_NUMERO: TStringField
      FieldName = 'CH_NUMERO'
    end
    object CdsChequeCH_VALOR: TFMTBCDField
      FieldName = 'CH_VALOR'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 20
      Size = 5
    end
    object CdsChequeCH_EMISSAO: TDateField
      FieldName = 'CH_EMISSAO'
    end
    object CdsChequeCH_PRE_DATADO: TDateField
      FieldName = 'CH_PRE_DATADO'
    end
    object CdsChequeCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 10
    end
    object CdsChequeCH_EMISSOR: TStringField
      FieldName = 'CH_EMISSOR'
      Size = 100
    end
    object CdsChequeCH_CPF_CNPJ: TStringField
      FieldName = 'CH_CPF_CNPJ'
      Size = 14
    end
    object CdsChequeCH_DI_RG: TStringField
      FieldName = 'CH_DI_RG'
      Size = 15
    end
    object CdsChequeCH_TELEFONE: TStringField
      FieldName = 'CH_TELEFONE'
      EditMask = '!\(99\)0000-0000;0; '
      Size = 15
    end
    object CdsChequeCH_OBSERVACAO: TBlobField
      FieldName = 'CH_OBSERVACAO'
    end
    object CdsChequeCHS_REGISTRO: TIntegerField
      FieldName = 'CHS_REGISTRO'
    end
    object CdsChequeBCO_DESCRICAO: TStringField
      FieldName = 'BCO_DESCRICAO'
      Size = 35
    end
    object CdsChequeCHS_DESCRICAO: TStringField
      FieldName = 'CHS_DESCRICAO'
      Size = 50
    end
    object CdsChequeCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
  end
  object pmMenu: TPopupMenu
    Left = 561
    Top = 40
    object Selecionar1: TMenuItem
      Caption = 'Selecionar'
      OnClick = Selecionar1Click
    end
    object MarcarTodas1: TMenuItem
      Caption = 'Marcar Todas'
      OnClick = MarcarTodas1Click
    end
    object DesmarcarTodas1: TMenuItem
      Caption = 'Desmarcar Todas'
      OnClick = DesmarcarTodas1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object EditarCheque1: TMenuItem
      Caption = 'Editar Cheque'
      OnClick = EditarCheque1Click
    end
  end
  object frxCheques: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41663.451145509300000000
    ReportOptions.LastChange = 41663.468523506940000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxChequesGetValue
    Left = 368
    Top = 150
    Datasets = <
      item
        DataSet = frxdbdtstCheques
        DataSetName = 'frxdbdtstCheques'
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
            'Relat'#243'rio de Cheques')
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
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Top = 56.692950000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 75.590600000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo26: TfrxMemoView
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
        object Memo27: TfrxMemoView
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
        object Memo12: TfrxMemoView
          Left = 120.944960000000000000
          Top = 56.692950000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Banco')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 268.346630000000000000
          Top = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Ag'#234'ncia')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 347.716760000000000000
          Top = 56.692950000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Conta')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 430.866420000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 502.677490000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 574.488560000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 718.110700000000000000
          Top = 56.692950000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emissor')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 646.299630000000000000
          Top = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pr'#233'-Datado')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 884.410020000000000000
          Top = 56.692950000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbdtstCheques
        DataSetName = 'frxdbdtstCheques'
        RowCount = 0
        object frxdbdtstChequesCHS_DESCRICAO: TfrxMemoView
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtstCheques
          DataSetName = 'frxdbdtstCheques'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstCheques."CHS_DESCRICAO"]')
          ParentFont = False
          WordWrap = False
        end
        object frxdbdtstChequesBCO_DESCRICAO: TfrxMemoView
          Left = 120.944960000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'BCO_DESCRICAO'
          DataSet = frxdbdtstCheques
          DataSetName = 'frxdbdtstCheques'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstCheques."BCO_DESCRICAO"]')
          ParentFont = False
        end
        object frxdbdtstChequesCH_AGENCIA: TfrxMemoView
          Left = 268.346630000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CH_AGENCIA'
          DataSet = frxdbdtstCheques
          DataSetName = 'frxdbdtstCheques'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstCheques."CH_AGENCIA"]')
          ParentFont = False
        end
        object frxdbdtstChequesCH_CONTA_CORRENTE: TfrxMemoView
          Left = 351.496290000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CH_CONTA_CORRENTE'
          DataSet = frxdbdtstCheques
          DataSetName = 'frxdbdtstCheques'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstCheques."CH_CONTA_CORRENTE"]')
          ParentFont = False
        end
        object frxdbdtstChequesCH_NUMERO: TfrxMemoView
          Left = 430.866420000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'CH_NUMERO'
          DataSet = frxdbdtstCheques
          DataSetName = 'frxdbdtstCheques'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstCheques."CH_NUMERO"]')
          ParentFont = False
        end
        object frxdbdtstChequesCH_VALOR: TfrxMemoView
          Left = 502.677490000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'CH_VALOR'
          DataSet = frxdbdtstCheques
          DataSetName = 'frxdbdtstCheques'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbdtstCheques."CH_VALOR"]')
          ParentFont = False
        end
        object frxdbdtstChequesCH_EMISSAO: TfrxMemoView
          Left = 574.488560000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'CH_EMISSAO'
          DataSet = frxdbdtstCheques
          DataSetName = 'frxdbdtstCheques'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstCheques."CH_EMISSAO"]')
          ParentFont = False
        end
        object frxdbdtstChequesCH_PRE_DATADO: TfrxMemoView
          Left = 646.299630000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'CH_PRE_DATADO'
          DataSet = frxdbdtstCheques
          DataSetName = 'frxdbdtstCheques'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstCheques."CH_PRE_DATADO"]')
          ParentFont = False
        end
        object frxdbdtstChequesCH_EMISSOR: TfrxMemoView
          Left = 718.110700000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DataField = 'CH_EMISSOR'
          DataSet = frxdbdtstCheques
          DataSetName = 'frxdbdtstCheques'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstCheques."CH_EMISSOR"]')
          ParentFont = False
          WordWrap = False
        end
        object frxdbdtstChequesCLI_RAZAO: TfrxMemoView
          Left = 884.410020000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DataField = 'CLI_RAZAO'
          DataSet = frxdbdtstCheques
          DataSetName = 'frxdbdtstCheques'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstCheques."CLI_RAZAO"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 196.535560000000000000
        Width = 1046.929810000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 124.724490000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[COUNT(MasterData1,3)]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Quantidade de Cheques:')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 472.441250000000000000
          Width = 102.047310000000000000
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
            '[SUM(<frxdbdtstCheques."CH_VALOR">,MasterData1,3)]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 347.716760000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Valor Total dos Cheques:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Top = 22.677180000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object frxdbdtstCheques: TfrxDBDataset
    UserName = 'frxdbdtstCheques'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Selecao=Selecao'
      'CH_REGISTRO=CH_REGISTRO'
      'EMP_CODIGO=EMP_CODIGO'
      'BCO_CODIGO=BCO_CODIGO'
      'CH_AGENCIA=CH_AGENCIA'
      'CH_CONTA_CORRENTE=CH_CONTA_CORRENTE'
      'CH_SERIE=CH_SERIE'
      'CH_NUMERO=CH_NUMERO'
      'CH_VALOR=CH_VALOR'
      'CH_EMISSAO=CH_EMISSAO'
      'CH_PRE_DATADO=CH_PRE_DATADO'
      'CLI_CODIGO=CLI_CODIGO'
      'CH_EMISSOR=CH_EMISSOR'
      'CH_CPF_CNPJ=CH_CPF_CNPJ'
      'CH_DI_RG=CH_DI_RG'
      'CH_TELEFONE=CH_TELEFONE'
      'CH_OBSERVACAO=CH_OBSERVACAO'
      'CHS_REGISTRO=CHS_REGISTRO'
      'BCO_DESCRICAO=BCO_DESCRICAO'
      'CHS_DESCRICAO=CHS_DESCRICAO'
      'CLI_RAZAO=CLI_RAZAO')
    DataSet = CdsCheque
    BCDToCurrency = False
    Left = 392
    Top = 254
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
    Left = 536
    Top = 182
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
    Left = 624
    Top = 238
  end
  object sgDBAutoCRUD1: TsgDBAutoCRUD
    PodeIncluir = True
    PodeEditar = True
    PodeExcluir = True
    Left = 344
    Top = 366
  end
end
