inherited FormGImpClie: TFormGImpClie
  Left = 527
  Top = 196
  BorderIcons = [biSystemMenu]
  Caption = 'Gerenciador de Impress'#227'o (Clientes)'
  ClientHeight = 873
  ClientWidth = 1072
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  OldCreateOrder = True
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 1088
  ExplicitHeight = 912
  PixelsPerInch = 96
  TextHeight = 14
  object grb05: TGroupBox [0]
    Left = 0
    Top = 823
    Width = 520
    Height = 41
    TabOrder = 8
    object BitConfig: TBitBtn
      Left = 16
      Top = 11
      Width = 185
      Height = 25
      Caption = 'Con&figura'#231#227'o de Impress'#227'o'
      TabOrder = 2
      TabStop = False
      OnClick = BitConfigClick
    end
    object BitOk: TBitBtn
      Left = 250
      Top = 11
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 0
      TabStop = False
      OnClick = BitOkClick
    end
    object BitCancelar: TBitBtn
      Left = 331
      Top = 11
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      TabStop = False
      OnClick = BitCancelarClick
    end
  end
  object grb04: TGroupBox [1]
    Left = 0
    Top = 449
    Width = 520
    Height = 41
    Caption = 'Ramo de Atividades'
    TabOrder = 6
    object CbRamo: TComboBox
      Left = 4
      Top = 15
      Width = 232
      Height = 22
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 0
      Text = 'TODOS'
      OnClick = CbRamoClick
      Items.Strings = (
        'TODOS')
    end
    object CbRegiao: TComboBox
      Left = 4
      Top = 15
      Width = 232
      Height = 22
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 1
      Text = 'TODOS'
      OnClick = CbRegiaoClick
      Items.Strings = (
        'TODOS')
    end
    object RadAlfa: TRadioButton
      Left = 240
      Top = 17
      Width = 87
      Height = 17
      Caption = '&Alfab'#233'tica'
      Checked = True
      TabOrder = 2
      TabStop = True
    end
    object RadCida: TRadioButton
      Left = 322
      Top = 17
      Width = 82
      Height = 17
      Caption = '&UF + Cidade'
      TabOrder = 3
    end
  end
  object grb03: TGroupBox [2]
    Left = 0
    Top = 411
    Width = 520
    Height = 38
    Caption = 'Filtro de Compras'
    TabOrder = 5
    object Label5: TLabel
      Left = 299
      Top = 17
      Width = 8
      Height = 14
      Caption = #192
    end
    object Label6: TLabel
      Left = 360
      Top = 17
      Width = 21
      Height = 14
      Caption = 'Dias'
    end
    object EdtDias: TEdit
      Left = 316
      Top = 11
      Width = 37
      Height = 22
      TabOrder = 0
      Text = '60'
      OnKeyPress = EdtDiasKeyPress
    end
    object RadAtivos: TRadioButton
      Left = 16
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Compraram'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object RadClientesInativos: TRadioButton
      Left = 132
      Top = 16
      Width = 100
      Height = 17
      Caption = 'N'#227'o compraram'
      TabOrder = 2
    end
  end
  object grb02: TGroupBox [3]
    Left = 0
    Top = 289
    Width = 520
    Height = 121
    TabOrder = 4
    object LbCidade: TLabel
      Left = 9
      Top = 41
      Width = 39
      Height = 14
      Caption = 'Cidade :'
    end
    object LbBairro: TLabel
      Left = 15
      Top = 66
      Width = 35
      Height = 14
      Caption = 'Bairro :'
    end
    object LbEstado: TLabel
      Left = 11
      Top = 14
      Width = 36
      Height = 14
      Caption = 'Estado:'
    end
    object LbPorte: TLabel
      Left = 17
      Top = 95
      Width = 31
      Height = 14
      Caption = 'Porte :'
    end
    object RadGpTipo: TRadioGroup
      Left = 50
      Top = 81
      Width = 295
      Height = 35
      Columns = 4
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Pequeno'
        'M'#233'dio'
        'Grande')
      TabOrder = 3
    end
    object EdtCidade: TEdit
      Left = 50
      Top = 36
      Width = 250
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 30
      TabOrder = 1
      Text = 'TODOS'
      OnExit = EdtCidadeExit
    end
    object EdtBairro: TEdit
      Left = 50
      Top = 62
      Width = 250
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 25
      TabOrder = 2
      Text = 'TODOS'
      OnExit = EdtBairroExit
    end
    object EdtEstado: TEdit
      Left = 50
      Top = 10
      Width = 24
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 2
      TabOrder = 0
      OnClick = EdtEstadoClick
    end
  end
  object grb01: TGroupBox [4]
    Left = 0
    Top = 249
    Width = 520
    Height = 41
    TabOrder = 3
    object LbRepres: TLabel
      Left = 4
      Top = 16
      Width = 77
      Height = 14
      Caption = 'Representante :'
    end
    object CbRepre: TComboBox
      Left = 82
      Top = 14
      Width = 327
      Height = 22
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 0
      Text = 'TODOS'
      OnClick = CbRepreClick
      Items.Strings = (
        'TODOS')
    end
  end
  object grb00: TGroupBox [5]
    Left = 0
    Top = 192
    Width = 520
    Height = 59
    TabOrder = 2
    object CbBoxTipoEtiq: TComboBox
      Left = 4
      Top = 32
      Width = 403
      Height = 22
      Style = csDropDownList
      Enabled = False
      TabOrder = 1
      OnClick = CbBoxTipoEtiqClick
    end
    object ChekMalaDireta: TCheckBox
      Left = 5
      Top = 12
      Width = 137
      Height = 17
      Caption = 'Ativa como Etiqueta'
      TabOrder = 0
      OnClick = ChekMalaDiretaClick
    end
  end
  object GroupBox1: TGroupBox [6]
    Left = 0
    Top = 0
    Width = 410
    Height = 190
    Caption = 'Tipos de Relat'#243'rios'
    TabOrder = 0
    object LTBox: TListBox
      Left = 3
      Top = 15
      Width = 401
      Height = 164
      Style = lbOwnerDrawVariable
      Color = 11599871
      TabOrder = 0
      OnClick = LTBoxClick
    end
  end
  object GroupBox2: TGroupBox [7]
    Left = 410
    Top = 0
    Width = 110
    Height = 190
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
      Caption = '&Arquivo Texto'
      TabOrder = 2
    end
  end
  object grb06: TGroupBox [8]
    Left = 0
    Top = 521
    Width = 520
    Height = 38
    Caption = 'Status do Cliente'
    TabOrder = 7
    Visible = False
    object rbStatusAtivo: TRadioButton
      Left = 16
      Top = 16
      Width = 57
      Height = 17
      Caption = 'Ativos'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rbStatusInativo: TRadioButton
      Left = 137
      Top = 16
      Width = 100
      Height = 17
      Caption = 'Inativos'
      TabOrder = 1
    end
    object rbStatusTodos: TRadioButton
      Left = 441
      Top = 16
      Width = 76
      Height = 17
      Caption = 'Todos'
      TabOrder = 2
    end
    object radRecuperacao: TRadioButton
      Left = 271
      Top = 16
      Width = 121
      Height = 17
      Caption = 'Em Recupera'#231#227'o'
      TabOrder = 3
    end
  end
  object grpDatCadastro: TGroupBox [9]
    Left = -1
    Top = 559
    Width = 520
    Height = 41
    Caption = 'Data do cadastro'
    TabOrder = 9
    Visible = False
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 13
      Height = 14
      Caption = 'De'
    end
    object Label2: TLabel
      Left = 144
      Top = 20
      Width = 6
      Height = 14
      Caption = 'a'
    end
    object DataInicio: TJvDateTimePicker
      Left = 40
      Top = 16
      Width = 89
      Height = 22
      Date = 43871.371662997680000000
      Time = 43871.371662997680000000
      TabOrder = 0
      DropDownDate = 43871.000000000000000000
    end
    object DataFim: TJvDateTimePicker
      Left = 174
      Top = 16
      Width = 86
      Height = 22
      Date = 43871.371726817130000000
      Time = 43871.371726817130000000
      TabOrder = 1
      DropDownDate = 43871.000000000000000000
    end
  end
  object grpTipoContato: TGroupBox [10]
    Left = 0
    Top = 598
    Width = 520
    Height = 38
    Caption = 'Tipo de Contatos'
    TabOrder = 10
    Visible = False
    object rbTipoColaborador: TRadioButton
      Left = 17
      Top = 16
      Width = 79
      Height = 17
      Caption = 'Colaborador'
      TabOrder = 0
    end
    object rbTipoContador: TRadioButton
      Left = 212
      Top = 16
      Width = 128
      Height = 17
      Caption = 'Contador ou consultor'
      TabOrder = 1
    end
    object rbTipoDiretor: TRadioButton
      Left = 102
      Top = 16
      Width = 105
      Height = 17
      Caption = 'Diretor ou Gestor'
      TabOrder = 2
    end
    object rbTipoTodos: TRadioButton
      Left = 348
      Top = 16
      Width = 95
      Height = 17
      Caption = 'Todos'
      Checked = True
      TabOrder = 3
      TabStop = True
    end
  end
  object grbEmpresa: TGroupBox [11]
    Left = -1
    Top = 630
    Width = 520
    Height = 38
    Caption = 'Empresa'
    TabOrder = 11
    Visible = False
    object rbEmpresaTodas: TRadioButton
      Left = 17
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Todas'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rbEmpresaLogada: TRadioButton
      Left = 200
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Logada'
      TabOrder = 1
    end
  end
  object grbContatos: TGroupBox [12]
    Left = 0
    Top = 663
    Width = 519
    Height = 38
    Caption = 'Contatos'
    TabOrder = 12
    Visible = False
    object rbContatosTodos: TRadioButton
      Left = 16
      Top = 18
      Width = 113
      Height = 17
      Caption = 'Todos'
      TabOrder = 0
    end
    object rbContatosEmail: TRadioButton
      Left = 200
      Top = 18
      Width = 192
      Height = 17
      Caption = 'Apenas com email'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
  end
  object grbClassificacao: TGroupBox [13]
    Left = 0
    Top = 485
    Width = 520
    Height = 38
    Caption = 'Classifica'#231#227'o'
    TabOrder = 13
    Visible = False
    object rbClassCliente: TRadioButton
      Left = 16
      Top = 16
      Width = 57
      Height = 17
      Caption = 'Cliente'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rbClassFornecedor: TRadioButton
      Left = 137
      Top = 16
      Width = 100
      Height = 17
      Caption = 'Fornecedor'
      TabOrder = 1
    end
    object rbClassAmbos: TRadioButton
      Left = 271
      Top = 15
      Width = 76
      Height = 17
      Caption = 'Ambos'
      TabOrder = 2
    end
  end
  object gbPeriodo: TGroupBox [14]
    Left = 1
    Top = 704
    Width = 520
    Height = 49
    Caption = '&Per'#237'odo:'
    TabOrder = 14
    Visible = False
    object Label3: TLabel
      Left = 14
      Top = 19
      Width = 16
      Height = 14
      Caption = '&De:'
    end
    object Label4: TLabel
      Left = 147
      Top = 19
      Width = 20
      Height = 14
      Caption = 'A&t'#233':'
    end
    object EditDataI: TJvDateEdit
      Left = 32
      Top = 15
      Width = 100
      Height = 22
      Glyph.Data = {
        76050000424D760500000000000036000000280000001C0000000C0000000100
        2000000000004005000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
        0000800000008000000000000000800000000000000000000000800000008080
        8000FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
        0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
        80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
        C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
        8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FF00FF00}
      ImageKind = ikCustom
      NumGlyphs = 2
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 0
      OnExit = EditDataIExit
    end
    object EditDataF: TJvDateEdit
      Left = 173
      Top = 15
      Width = 100
      Height = 22
      Glyph.Data = {
        76050000424D760500000000000036000000280000001C0000000C0000000100
        2000000000004005000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
        0000800000008000000000000000800000000000000000000000800000008080
        8000FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
        0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
        80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
        C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
        8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
        FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
        FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
        8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
        FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008080800080808000808080008080800080808000808080008080
        80008080800080808000808080008080800080808000FF00FF00}
      ImageKind = ikCustom
      NumGlyphs = 2
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 1
      OnExit = EditDataFExit
    end
  end
  object gbCliente: TGroupBox [15]
    Left = 0
    Top = 759
    Width = 520
    Height = 58
    Caption = 'Cliente'
    TabOrder = 15
    Visible = False
    object sbCliente: TSgDbSearchCombo
      Left = 14
      Top = 22
      Width = 459
      Height = 22
      TabOrder = 0
      LookupSelect = 'CLI_CODIGO, CLI_RAZAO'
      LookupOrderBy = 'CLI_RAZAO'
      LookupTable = 'CLI0000'
      LookupDispl = 'CLI_RAZAO'
      OnButtonClick = sbClienteButtonClick
      GridAutoSize = False
      LookupSource = qCliente
      LookupKeyField = 'CLI_CODIGO'
      ShowButton = True
      LookupTableShare = 'CLIENTES'
      AutoF8WinTitulo = 'Clientes'
      AutoF8ColumnsTitulo = 'C'#243'digo, Raz'#227'o social'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
    end
  end
  inherited DBConn: TSQLConnection
    Top = 225
  end
  inherited qAux: TSQLQuery
    Left = 530
    Top = 29
  end
  inherited qAux2: TSQLQuery
    Left = 562
    Top = 28
  end
  inherited qAux3: TSQLQuery
    Left = 602
    Top = 28
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 713
    Top = 440
  end
  object SqlCdsClienteRB: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT C1.CLI_CODIGO, C1.CLI_RAZAO, C1.CLI_PORTE, C1.CLI_ENDERE,' +
      ' C1.CLI_BAIRRO, C1.CLI_CEP,C1.CLI_CIDADE,C1.CLI_UF, C1.CLI_FONE,' +
      ' C1.CLI_FAX, C1.CLI_CONTATO, C1.CLI_DTULTCOM, C1.CLI_INATIVO, C1' +
      '.CLI_EMAIL, C1.CLI_HOME, C1.CLI_ATIVIDADE, C1.CLI_FUNCONT, C1.RE' +
      'P_CODIGO ,R1.REP_NOME, R1.REP_SITUACAO, C1.REG_CODIGO, G1.REG_DE' +
      'SCRI, CO.CC_NOME, CO.CC_EMAIL, CO.CC_CARGO, CO.CC_CELULAR, CO.CC' +
      '_TELEFONE, CO.CC_RAMAL, CO.CC_TIPO FROM CLI0000 C1 LEFT JOIN REP' +
      '0000 R1 on (C1.rep_codigo = R1.rep_codigo) LEFT JOIN REG0000 G1 ' +
      'on (C1.reg_codigo = G1.reg_codigo) LEFT JOIN CLI_CONTATO CO on (' +
      'C1.cli_codigo = CO.cli_codigo) order by C1.CLI_RAZAO,C1.CLI_UF'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT C1.CLI_CODIGO, C1.CLI_RAZAO, C1.CLI_PORTE, C1.CLI_ENDERE,' +
      ' C1.CLI_BAIRRO, C1.CLI_CEP,C1.CLI_CIDADE,C1.CLI_UF, C1.CLI_FONE,' +
      ' C1.CLI_FAX, C1.CLI_CONTATO, C1.CLI_DTULTCOM, C1.CLI_INATIVO, C1' +
      '.CLI_EMAIL, C1.CLI_HOME, C1.CLI_ATIVIDADE, C1.CLI_FUNCONT, C1.RE' +
      'P_CODIGO ,R1.REP_NOME, R1.REP_SITUACAO, C1.REG_CODIGO, G1.REG_DE' +
      'SCRI, CO.CC_NOME, CO.CC_EMAIL, CO.CC_CARGO, CO.CC_CELULAR, CO.CC' +
      '_TELEFONE, CO.CC_RAMAL, CO.CC_TIPO FROM CLI0000 C1 LEFT JOIN REP' +
      '0000 R1 on (C1.rep_codigo = R1.rep_codigo) LEFT JOIN REG0000 G1 ' +
      'on (C1.reg_codigo = G1.reg_codigo) LEFT JOIN CLI_CONTATO CO on (' +
      'C1.cli_codigo = CO.cli_codigo) order by C1.CLI_RAZAO,C1.CLI_UF'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 562
    Top = 88
    object SqlCdsClienteRBCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object SqlCdsClienteRBCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 45
    end
    object SqlCdsClienteRBCLI_PORTE: TStringField
      FieldName = 'CLI_PORTE'
      Size = 1
    end
    object SqlCdsClienteRBCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 45
    end
    object SqlCdsClienteRBCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object SqlCdsClienteRBCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 8
    end
    object SqlCdsClienteRBCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object SqlCdsClienteRBCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object SqlCdsClienteRBCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object SqlCdsClienteRBCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 11
    end
    object SqlCdsClienteRBCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 25
    end
    object SqlCdsClienteRBCLI_DTULTCOM: TSQLTimeStampField
      FieldName = 'CLI_DTULTCOM'
    end
    object SqlCdsClienteRBCLI_INATIVO: TStringField
      FieldName = 'CLI_INATIVO'
      Size = 1
    end
    object SqlCdsClienteRBCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 35
    end
    object SqlCdsClienteRBCLI_HOME: TStringField
      FieldName = 'CLI_HOME'
      Size = 35
    end
    object SqlCdsClienteRBCLI_ATIVIDADE: TStringField
      DisplayWidth = 3
      FieldName = 'CLI_ATIVIDADE'
      Size = 3
    end
    object SqlCdsClienteRBCLI_FUNCONT: TStringField
      FieldName = 'CLI_FUNCONT'
      Size = 15
    end
    object SqlCdsClienteRBREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SqlCdsClienteRBREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object SqlCdsClienteRBREP_SITUACAO: TStringField
      FieldName = 'REP_SITUACAO'
      Size = 1
    end
    object SqlCdsClienteRBREG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      Size = 3
    end
    object SqlCdsClienteRBREG_DESCRI: TStringField
      FieldName = 'REG_DESCRI'
      Size = 30
    end
    object SqlCdsClienteRBCC_NOME: TStringField
      FieldName = 'CC_NOME'
      Size = 100
    end
    object SqlCdsClienteRBCC_EMAIL: TStringField
      FieldName = 'CC_EMAIL'
      Size = 200
    end
    object SqlCdsClienteRBCC_CARGO: TStringField
      FieldName = 'CC_CARGO'
      Size = 50
    end
    object SqlCdsClienteRBCC_CELULAR: TStringField
      FieldName = 'CC_CELULAR'
      EditMask = '!\(999\)000-0000;1;_'
      Size = 12
    end
    object SqlCdsClienteRBCC_TELEFONE: TStringField
      FieldName = 'CC_TELEFONE'
      EditMask = '(00)0000-0000;1;_'
      Size = 12
    end
    object SqlCdsClienteRBCC_RAMAL: TStringField
      FieldName = 'CC_RAMAL'
      Size = 10
    end
    object SqlCdsClienteRBCC_TIPO: TStringField
      FieldName = 'CC_TIPO'
      Size = 1
    end
    object SqlCdsClienteRBEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsClienteRBCLI_CLASSE_CLI_FOR: TStringField
      FieldName = 'CLI_CLASSE_CLI_FOR'
      Size = 1
    end
    object SqlCdsClienteRBRCL_ATIVIDADE: TStringField
      FieldName = 'RCL_ATIVIDADE'
    end
    object SqlCdsClienteRBCORI_DESCRICAO: TStringField
      FieldName = 'CORI_DESCRICAO'
      Size = 30
    end
  end
  object DsClienteRB: TDataSource
    DataSet = SqlCdsClienteRB
    Left = 650
  end
  object SqlCdsRepresentante: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select REP_CODIGO, REP_NOME,EMP_CODIGO from REP0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select REP_CODIGO, REP_NOME,EMP_CODIGO from REP0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 632
    Top = 216
    object SqlCdsRepresentanteREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCdsRepresentanteREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object SqlCdsRepresentanteEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsRegiao: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from REG0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from REG0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 664
    Top = 449
    object SqlCdsRegiaoREG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object SqlCdsRegiaoREG_DESCRI: TStringField
      FieldName = 'REG_DESCRI'
      Size = 30
    end
    object SqlCdsRegiaoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsAtividade: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from CLI_ATV1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from CLI_ATV1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 736
    Top = 489
    object SqlCdsAtividadeRCL_CODIGO: TStringField
      DisplayWidth = 3
      FieldName = 'RCL_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsAtividadeRCL_ATIVIDADE: TStringField
      FieldName = 'RCL_ATIVIDADE'
      Required = True
    end
    object SqlCdsAtividadeEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object ppReport00: TppReport
    AutoStop = False
    DataPipeline = ppDB00
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
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
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELCLIENTES00.r' +
      'tm'
    Template.Format = ftASCII
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.DefaultBands = [btGroupHeader, btDetail]
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 770
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDB00'
    object pp00HeaderBand1: TppHeaderBand
      BeforePrint = pp00HeaderBand1BeforePrint
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 17992
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
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
        Border.mmPadding = 0
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4092
        mmLeft = 0
        mmTop = 529
        mmWidth = 30621
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4092
        mmLeft = 0
        mmTop = 4763
        mmWidth = 13970
        BandType = 0
        LayerName = Foreground
      end
      object LBL_00_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4092
        mmLeft = 0
        mmTop = 8996
        mmWidth = 13970
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 13494
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 1323
        mmTop = 14023
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 71702
        mmTop = 14023
        mmWidth = 11853
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 134673
        mmTop = 14023
        mmWidth = 7479
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 165629
        mmTop = 14023
        mmWidth = 3528
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 17727
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 171962
        mmTop = 14023
        mmWidth = 5644
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4092
        mmLeft = 163460
        mmTop = 529
        mmWidth = 32597
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4092
        mmLeft = 174044
        mmTop = 8996
        mmWidth = 22013
        BandType = 0
        LayerName = Foreground
      end
    end
    object pp00DetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 14552
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDB00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB00'
        mmHeight = 3387
        mmLeft = 11377
        mmTop = 0
        mmWidth = 67733
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Contato:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 0
        mmTop = 3704
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_ENDERE'
        DataPipeline = ppDB00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB00'
        mmHeight = 3387
        mmLeft = 80169
        mmTop = 0
        mmWidth = 62706
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_BAIRRO'
        DataPipeline = ppDB00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB00'
        mmHeight = 3387
        mmLeft = 143140
        mmTop = 0
        mmWidth = 30692
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_UF'
        DataPipeline = ppDB00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDB00'
        mmHeight = 3387
        mmLeft = 174096
        mmTop = 0
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_CONTATO'
        DataPipeline = ppDB00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB00'
        mmHeight = 3387
        mmLeft = 11377
        mmTop = 3704
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Fone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 36777
        mmTop = 3704
        mmWidth = 7056
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_FONE'
        DataPipeline = ppDB00
        DisplayFormat = '\(999\)9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB00'
        mmHeight = 3387
        mmLeft = 44715
        mmTop = 3704
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 65352
        mmTop = 3704
        mmWidth = 5362
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_FAX'
        DataPipeline = ppDB00
        DisplayFormat = '\(999\)9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB00'
        mmHeight = 3387
        mmLeft = 71173
        mmTop = 3704
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Ult.Compra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 93398
        mmTop = 3704
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 11464
        mmWidth = 195792
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_DTULTCOM'
        DataPipeline = ppDB00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB00'
        mmHeight = 3387
        mmLeft = 108215
        mmTop = 3704
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_CEP'
        DataPipeline = ppDB00
        DisplayFormat = '99\.999\-999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB00'
        mmHeight = 3387
        mmLeft = 180711
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText65: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText65'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_CODIGO'
        DataPipeline = ppDB00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB00'
        mmHeight = 3387
        mmLeft = 0
        mmTop = 0
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText66: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText66'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_CODIGO'
        DataPipeline = ppDB00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB00'
        mmHeight = 3387
        mmLeft = 134409
        mmTop = 3704
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText67: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText67'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_NOME'
        DataPipeline = ppDB00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB00'
        mmHeight = 3387
        mmLeft = 140494
        mmTop = 3704
        mmWidth = 55298
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Rep:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 128323
        mmTop = 3704
        mmWidth = 5927
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText42'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CORI_DESCRICAO'
        DataPipeline = ppDB00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB00'
        mmHeight = 3387
        mmLeft = 11377
        mmTop = 7232
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel61: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label61'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Origem:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 7144
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground
      end
    end
    object pp00SummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total de Clientes Listado(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3528
        mmLeft = 3440
        mmTop = 441
        mmWidth = 37677
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataPipeline = ppDB00
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDB00'
        mmHeight = 3528
        mmLeft = 58208
        mmTop = 441
        mmWidth = 14288
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'CLI_UF'
      DataPipeline = ppDB00
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDB00'
      NewFile = False
      object pp00GroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 3440
        mmPrintPosition = 0
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CLI_UF'
          DataPipeline = ppDB00
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDB00'
          mmHeight = 3387
          mmLeft = 5027
          mmTop = 0
          mmWidth = 4763
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'CLI_CIDADE'
      DataPipeline = ppDB00
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDB00'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 3440
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CLI_CIDADE'
          DataPipeline = ppDB00
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDB00'
          mmHeight = 3528
          mmLeft = 11113
          mmTop = 0
          mmWidth = 54504
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object raCodeModule6: TraCodeModule
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
  object ppReport02: TppReport
    AutoStop = False
    DataPipeline = ppDB02
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
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
    Template.FileName = 'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELCLIENTES02'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 890
    Top = 40
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDB02'
    object pp02HeaderBand1: TppHeaderBand
      BeforePrint = pp02HeaderBand1BeforePrint
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13758
      mmPrintPosition = 0
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 13493
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_02_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LABEL_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4092
        mmLeft = 0
        mmTop = 529
        mmWidth = 30621
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_02_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LTITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4092
        mmLeft = 0
        mmTop = 4763
        mmWidth = 15946
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_02_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LTITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4092
        mmLeft = 0
        mmTop = 8996
        mmWidth = 15946
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable11: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4092
        mmLeft = 163460
        mmTop = 529
        mmWidth = 32597
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable12: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4092
        mmLeft = 174361
        mmTop = 8996
        mmWidth = 22013
        BandType = 0
        LayerName = Foreground1
      end
    end
    object pp02DetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDB02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB02'
        mmHeight = 3704
        mmLeft = 9525
        mmTop = 0
        mmWidth = 42069
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_ENDERE'
        DataPipeline = ppDB02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB02'
        mmHeight = 3704
        mmLeft = 53446
        mmTop = 0
        mmWidth = 44715
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_BAIRRO'
        DataPipeline = ppDB02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB02'
        mmHeight = 3669
        mmLeft = 100277
        mmTop = 0
        mmWidth = 22490
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_CEP'
        DataPipeline = ppDB02
        DisplayFormat = '99\.999\-999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB02'
        mmHeight = 3669
        mmLeft = 123561
        mmTop = 0
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_CIDADE'
        DataPipeline = ppDB02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB02'
        mmHeight = 3669
        mmLeft = 140759
        mmTop = 0
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_UF'
        DataPipeline = ppDB02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB02'
        mmHeight = 3669
        mmLeft = 168805
        mmTop = 0
        mmWidth = 4498
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_FONE'
        DataPipeline = ppDB02
        DisplayFormat = '\(999\)9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB02'
        mmHeight = 3669
        mmLeft = 174890
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText69: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText69'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_CODIGO'
        DataPipeline = ppDB02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB02'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground1
      end
    end
    object pp02SummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total de Clientes Listado(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 0
        mmTop = 0
        mmWidth = 34996
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataPipeline = ppDB02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDB02'
        mmHeight = 3387
        mmLeft = 40217
        mmTop = 0
        mmWidth = 20373
        BandType = 7
        LayerName = Foreground1
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'REG_DESCRI'
      DataPipeline = ppDB02
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDB02'
      NewFile = False
      object pp02GroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLabel25: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label9'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Regi'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3528
          mmLeft = 0
          mmTop = 0
          mmWidth = 11113
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText31: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText9'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'REG_CODIGO'
          DataPipeline = ppDB02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDB02'
          mmHeight = 3528
          mmLeft = 11377
          mmTop = 0
          mmWidth = 5556
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText32: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText11'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'REG_DESCRI'
          DataPipeline = ppDB02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDB02'
          mmHeight = 3528
          mmLeft = 17463
          mmTop = 0
          mmWidth = 67469
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine11: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line4'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3704
          mmWidth = 196000
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup6: TppGroup
      BreakName = 'REP_NOME'
      DataPipeline = ppDB02
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDB02'
      NewFile = False
      object pp02GroupHeaderBand2: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 8467
        mmPrintPosition = 0
        object ppLabel26: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label11'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Representante:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3528
          mmLeft = 12965
          mmTop = 0
          mmWidth = 20461
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppDBText33: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText10'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'REP_CODIGO'
          DataPipeline = ppDB02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDB02'
          mmHeight = 3387
          mmLeft = 34925
          mmTop = 0
          mmWidth = 5292
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppLine12: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line5'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3704
          mmWidth = 196000
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppDBText34: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText12'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'REP_NOME'
          DataPipeline = ppDB02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDB02'
          mmHeight = 3387
          mmLeft = 40746
          mmTop = 0
          mmWidth = 62177
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppLabel27: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3387
          mmLeft = 0
          mmTop = 4233
          mmWidth = 8467
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppLabel28: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3387
          mmLeft = 53181
          mmTop = 4233
          mmWidth = 11853
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppLabel29: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label3'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3387
          mmLeft = 100013
          mmTop = 4233
          mmWidth = 7479
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppLabel30: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label4'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Cep'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3387
          mmLeft = 123561
          mmTop = 4233
          mmWidth = 6350
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppLabel31: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label5'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3387
          mmLeft = 140759
          mmTop = 4233
          mmWidth = 8749
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppLabel32: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label6'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3387
          mmLeft = 168805
          mmTop = 4233
          mmWidth = 3528
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppLabel33: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label7'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Fone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3387
          mmLeft = 174890
          mmTop = 4233
          mmWidth = 6209
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppLine13: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line7'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 8202
          mmWidth = 196000
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
        object ppDBAtivo: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBAtivo'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'REP_SITUACAO'
          DataPipeline = ppDB02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDB02'
          mmHeight = 3440
          mmLeft = 110331
          mmTop = 0
          mmWidth = 17198
          BandType = 3
          GroupNo = 1
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 265
        mmPrintPosition = 0
        object ppLine14: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line6'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 196000
          BandType = 5
          GroupNo = 1
          LayerName = Foreground1
        end
      end
    end
    object raCodeModule3: TraCodeModule
      object raProgramInfo1: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DBAtivoOnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DBAtivoOnGetText(var Text: String);'#13#10'begin'#13#10'    if DB0' +
          '2['#39'REP_SITUACAO'#39'] = '#39'A'#39' then'#13#10'       Text := '#39'Ativo'#39#13#10'    else'#13#10 +
          '       Text := '#39'Inativo'#39';   '#13#10'end;'#13#10
        raProgram.ComponentName = 'DBAtivo'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppReport03: TppReport
    AutoStop = False
    DataPipeline = ppDB03
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELCLIENTES03.r' +
      'tm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.DefaultBands = [btHeader, btTitle, btColumnHeader, btGroupHeader, btDetail]
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 890
    Top = 88
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDB03'
    object pp03HeaderBand1: TppHeaderBand
      BeforePrint = pp03HeaderBand1BeforePrint
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 18256
      mmPrintPosition = 0
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_03_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_03_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_03_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4092
        mmLeft = 0
        mmTop = 529
        mmWidth = 31750
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_03_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_03_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_03_LTITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4092
        mmLeft = 0
        mmTop = 4763
        mmWidth = 30198
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_03_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_03_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_03_LTITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4092
        mmLeft = 0
        mmTop = 8996
        mmWidth = 30198
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 13494
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable5: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4092
        mmLeft = 162666
        mmTop = 529
        mmWidth = 32597
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable6: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4092
        mmLeft = 173250
        mmTop = 8996
        mmWidth = 22013
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2822
        mmLeft = 0
        mmTop = 14023
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2822
        mmLeft = 55827
        mmTop = 14288
        mmWidth = 10160
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2822
        mmLeft = 125148
        mmTop = 14288
        mmWidth = 6562
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2822
        mmLeft = 148696
        mmTop = 14288
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2822
        mmLeft = 170657
        mmTop = 14288
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2822
        mmLeft = 176477
        mmTop = 14288
        mmWidth = 5292
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 17991
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground2
      end
    end
    object pp03DetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object pp03SummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total de Clientes Listado(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3528
        mmLeft = 0
        mmTop = 441
        mmWidth = 41275
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataPipeline = ppDB03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDB03'
        mmHeight = 3528
        mmLeft = 41804
        mmTop = 441
        mmWidth = 20373
        BandType = 7
        LayerName = Foreground2
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'CLI_ATIVIDADE'
      DataPipeline = ppDB03
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      PreventOrphans = True
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDB03'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Visible = False
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object Lbl_Atividade: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'Lbl_Atividade'
          Border.mmPadding = 0
          DataField = 'RCL_ATIVIDADE'
          DataPipeline = ppDB03
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDB03'
          mmHeight = 2840
          mmLeft = 31465
          mmTop = 1415
          mmWidth = 128083
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel35: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label35'
          Border.mmPadding = 0
          Caption = 'RAMO DE ATIVIDADE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3704
          mmLeft = 794
          mmTop = 1323
          mmWidth = 29633
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLine28: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line28'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 840
          mmWidth = 196000
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLine30: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line30'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4808
          mmWidth = 196000
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppDBCalc5: TppDBCalc
          DesignLayer = ppDesignLayer3
          UserName = 'DBCalc5'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataPipeline = ppDB03
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDB03'
          mmHeight = 3440
          mmLeft = 41878
          mmTop = 1080
          mmWidth = 20373
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel39: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label103'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Total de Clientes Listado(s):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 74
          mmTop = 1080
          mmWidth = 41275
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLine31: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line31'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 480
          mmWidth = 196000
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLine32: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line301'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4713
          mmWidth = 196000
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
      end
    end
    object ppGroup8: TppGroup
      BreakName = 'CLI_CODIGO'
      DataPipeline = ppDB03
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group8'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDB03'
      NewFile = False
      object ppGroupHeaderBand4: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppDBText38: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText38'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CLI_CODIGO'
          DataPipeline = ppDB03
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB03'
          mmHeight = 3440
          mmLeft = 0
          mmTop = 0
          mmWidth = 7456
          BandType = 3
          GroupNo = 1
          LayerName = Foreground2
        end
        object ppDBText35: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText35'
          HyperlinkEnabled = False
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CLI_RAZAO'
          DataPipeline = ppDB03
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB03'
          mmHeight = 3440
          mmLeft = 7673
          mmTop = 0
          mmWidth = 47625
          BandType = 3
          GroupNo = 1
          LayerName = Foreground2
        end
        object ppDBText36: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText36'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CLI_ENDERE'
          DataPipeline = ppDB03
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB03'
          mmHeight = 3440
          mmLeft = 55827
          mmTop = 0
          mmWidth = 68527
          BandType = 3
          GroupNo = 1
          LayerName = Foreground2
        end
        object ppDBText37: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText37'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CLI_BAIRRO'
          DataPipeline = ppDB03
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB03'
          mmHeight = 3440
          mmLeft = 124884
          mmTop = 0
          mmWidth = 22754
          BandType = 3
          GroupNo = 1
          LayerName = Foreground2
        end
        object ppDBText39: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText39'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CLI_CIDADE'
          DataPipeline = ppDB03
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB03'
          mmHeight = 3440
          mmLeft = 148696
          mmTop = 0
          mmWidth = 20638
          BandType = 3
          GroupNo = 1
          LayerName = Foreground2
        end
        object ppDBText41: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText41'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CLI_FONE'
          DataPipeline = ppDB03
          DisplayFormat = '\(999\)9999\-9999;0;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB03'
          mmHeight = 3440
          mmLeft = 175684
          mmTop = 0
          mmWidth = 19844
          BandType = 3
          GroupNo = 1
          LayerName = Foreground2
        end
        object ppDBText40: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText40'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CLI_UF'
          DataPipeline = ppDB03
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB03'
          mmHeight = 3440
          mmLeft = 170127
          mmTop = 0
          mmWidth = 4498
          BandType = 3
          GroupNo = 1
          LayerName = Foreground2
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object raCodeModule5: TraCodeModule
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
  object ppReport01: TppReport
    AutoStop = False
    DataPipeline = ppDB01
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 5000
    PrinterSetup.mmMarginRight = 5000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELCLIENTES01.r' +
      'tm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 770
    Top = 48
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDB01'
    object pp01HeaderBand1: TppHeaderBand
      BeforePrint = pp01HeaderBand1BeforePrint
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 18256
      mmPrintPosition = 0
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line24'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 13494
        mmWidth = 269876
        BandType = 0
        LayerName = Foreground3
      end
      object LBL_01_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_01_EMPRESA1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_01_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4092
        mmLeft = 0
        mmTop = 529
        mmWidth = 31750
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line25'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 269876
        BandType = 0
        LayerName = Foreground3
      end
      object ppSystemVariable9: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4092
        mmLeft = 245798
        mmTop = 8996
        mmWidth = 22013
        BandType = 0
        LayerName = Foreground3
      end
      object ppSystemVariable10: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4092
        mmLeft = 235215
        mmTop = 529
        mmWidth = 32597
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label18'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 8996
        mmTop = 14023
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label55'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 128323
        mmTop = 14023
        mmWidth = 6209
        BandType = 0
        LayerName = Foreground3
      end
      object LBL_01_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_01_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LTITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4092
        mmLeft = 0
        mmTop = 4763
        mmWidth = 15946
        BandType = 0
        LayerName = Foreground3
      end
      object LBL_01_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_01_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LTITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4092
        mmLeft = 0
        mmTop = 8996
        mmWidth = 15946
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel62: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label62'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 74613
        mmTop = 14023
        mmWidth = 8749
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 17991
        mmWidth = 269876
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Email'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 156634
        mmTop = 14288
        mmWidth = 6773
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Contato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 218017
        mmTop = 14288
        mmWidth = 9737
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label34'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Ult.Compra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 254001
        mmTop = 14288
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label56'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 121973
        mmTop = 14023
        mmWidth = 3528
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label57'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Cod'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 14023
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground3
      end
    end
    object pp01DetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDB01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB01'
        mmHeight = 3440
        mmLeft = 8996
        mmTop = 0
        mmWidth = 63765
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_CIDADE'
        DataPipeline = ppDB01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB01'
        mmHeight = 3387
        mmLeft = 74613
        mmTop = 0
        mmWidth = 43127
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText20'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_FONE'
        DataPipeline = ppDB01
        DisplayFormat = '\(999\)9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB01'
        mmHeight = 3387
        mmLeft = 128588
        mmTop = 0
        mmWidth = 26723
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText68: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText68'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_CODIGO'
        DataPipeline = ppDB01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB01'
        mmHeight = 3387
        mmLeft = 0
        mmTop = 0
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText201'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_EMAIL'
        DataPipeline = ppDB01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB01'
        mmHeight = 3387
        mmLeft = 156369
        mmTop = 0
        mmWidth = 59267
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText21'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_CONTATO'
        DataPipeline = ppDB01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB01'
        mmHeight = 3440
        mmLeft = 218017
        mmTop = 0
        mmWidth = 34660
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText72: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText72'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_DTULTCOM'
        DataPipeline = ppDB01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB01'
        mmHeight = 3387
        mmLeft = 254001
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText18'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_UF'
        DataPipeline = ppDB01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB01'
        mmHeight = 3387
        mmLeft = 121709
        mmTop = 0
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground3
      end
    end
    object pp01SummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLabel67: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label101'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total de Clientes Listado(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 0
        mmTop = 529
        mmWidth = 34996
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBCalc7: TppDBCalc
        DesignLayer = ppDesignLayer4
        UserName = 'DBCalc7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataPipeline = ppDB01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDB01'
        mmHeight = 3387
        mmLeft = 40217
        mmTop = 529
        mmWidth = 20373
        BandType = 7
        LayerName = Foreground3
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line29'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 269876
        BandType = 7
        LayerName = Foreground3
      end
    end
    object raCodeModule4: TraCodeModule
      object raProgramInfo2: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DBText17OnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DBText17OnGetText(var Text: String);'#13#10'begin'#13#10#13#10'  Text ' +
          ':= copy (DB01['#39'CLI_RAZAO'#39'],1,40) ;'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'DBText17'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
      end
      object raProgramInfo3: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DBText19OnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DBText19OnGetText(var Text: String);'#13#10'begin'#13#10#13#10'  Text ' +
          ':= copy(DB01['#39'CLI_CIDADE'#39'],1,30);'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'DBText19'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
      end
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
  object ppReport05: TppReport
    AutoStop = False
    DataPipeline = ppDB05
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
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
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELCLIENTES05.r' +
      'tm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 772
    Top = 287
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDB05'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 17992
      mmPrintPosition = 0
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground4
      end
      object LBL_05_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LBL_00_EMPRESA1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4092
        mmLeft = 265
        mmTop = 529
        mmWidth = 30621
        BandType = 0
        LayerName = Foreground4
      end
      object LBL_05_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4092
        mmLeft = 265
        mmTop = 4763
        mmWidth = 13970
        BandType = 0
        LayerName = Foreground4
      end
      object LBL_05_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4092
        mmLeft = 265
        mmTop = 8996
        mmWidth = 13970
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 13494
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 0
        mmTop = 14023
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label15'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'E-mail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 116681
        mmTop = 14023
        mmWidth = 7761
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Contato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 86784
        mmTop = 14023
        mmWidth = 9737
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 61119
        mmTop = 14023
        mmWidth = 6209
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 265
        mmTop = 17727
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Home Page'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 161405
        mmTop = 14023
        mmWidth = 14534
        BandType = 0
        LayerName = Foreground4
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer5
        UserName = 'SystemVariable3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4092
        mmLeft = 163725
        mmTop = 529
        mmWidth = 32597
        BandType = 0
        LayerName = Foreground4
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer5
        UserName = 'SystemVariable4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4092
        mmLeft = 174308
        mmTop = 8996
        mmWidth = 22013
        BandType = 0
        LayerName = Foreground4
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_EMAIL'
        DataPipeline = ppDB05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB05'
        mmHeight = 3528
        mmLeft = 116681
        mmTop = 0
        mmWidth = 43127
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_CONTATO'
        DataPipeline = ppDB05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB05'
        mmHeight = 3440
        mmLeft = 86784
        mmTop = 0
        mmWidth = 28840
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText60: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText60'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_HOME'
        DataPipeline = ppDB05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB05'
        mmHeight = 3528
        mmLeft = 160867
        mmTop = 0
        mmWidth = 35454
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText61: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText61'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_FONE'
        DataPipeline = ppDB05
        DisplayFormat = '\(999\)9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB05'
        mmHeight = 3440
        mmLeft = 61119
        mmTop = 0
        mmWidth = 24606
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDB05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB05'
        mmHeight = 3387
        mmLeft = 9525
        mmTop = 0
        mmWidth = 49742
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText71: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText71'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_CODIGO'
        DataPipeline = ppDB05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB05'
        mmHeight = 3387
        mmLeft = 0
        mmTop = 0
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label102'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total de Clientes Listado(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 0
        mmTop = 529
        mmWidth = 34996
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataPipeline = ppDB05
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDB05'
        mmHeight = 3387
        mmLeft = 40746
        mmTop = 529
        mmWidth = 14288
        BandType = 7
        LayerName = Foreground4
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line26'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground4
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'CLI_CIDADE'
      DataPipeline = ppDB05
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDB05'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 3440
        mmPrintPosition = 0
        object ppDBText12: TppDBText
          DesignLayer = ppDesignLayer5
          UserName = 'DBText1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CLI_CIDADE'
          DataPipeline = ppDB05
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDB05'
          mmHeight = 3528
          mmLeft = 0
          mmTop = 0
          mmWidth = 60061
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppDBText13: TppDBText
          DesignLayer = ppDesignLayer5
          UserName = 'DBText2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CLI_UF'
          DataPipeline = ppDB05
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDB05'
          mmHeight = 3387
          mmLeft = 61119
          mmTop = 0
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
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
  object ppDB05: TppDBPipeline
    DataSource = DsClienteRB
    UserName = 'DB05'
    Left = 684
    Top = 287
    object ppDB05ppField1: TppField
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField2: TppField
      FieldAlias = 'CLI_RAZAO'
      FieldName = 'CLI_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField3: TppField
      FieldAlias = 'CLI_PORTE'
      FieldName = 'CLI_PORTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField4: TppField
      FieldAlias = 'CLI_ENDERE'
      FieldName = 'CLI_ENDERE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField5: TppField
      FieldAlias = 'CLI_BAIRRO'
      FieldName = 'CLI_BAIRRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField6: TppField
      FieldAlias = 'CLI_CEP'
      FieldName = 'CLI_CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField7: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField8: TppField
      FieldAlias = 'CLI_UF'
      FieldName = 'CLI_UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField9: TppField
      FieldAlias = 'CLI_FONE'
      FieldName = 'CLI_FONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField10: TppField
      FieldAlias = 'CLI_FAX'
      FieldName = 'CLI_FAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField11: TppField
      FieldAlias = 'CLI_CONTATO'
      FieldName = 'CLI_CONTATO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField12: TppField
      FieldAlias = 'CLI_DTULTCOM'
      FieldName = 'CLI_DTULTCOM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField13: TppField
      FieldAlias = 'CLI_INATIVO'
      FieldName = 'CLI_INATIVO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField14: TppField
      FieldAlias = 'CLI_EMAIL'
      FieldName = 'CLI_EMAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField15: TppField
      FieldAlias = 'CLI_HOME'
      FieldName = 'CLI_HOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField16: TppField
      FieldAlias = 'CLI_ATIVIDADE'
      FieldName = 'CLI_ATIVIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField17: TppField
      FieldAlias = 'CLI_FUNCONT'
      FieldName = 'CLI_FUNCONT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField18: TppField
      FieldAlias = 'REP_CODIGO'
      FieldName = 'REP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField19: TppField
      FieldAlias = 'REP_NOME'
      FieldName = 'REP_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField20: TppField
      FieldAlias = 'REP_SITUACAO'
      FieldName = 'REP_SITUACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField21: TppField
      FieldAlias = 'REG_CODIGO'
      FieldName = 'REG_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField22: TppField
      FieldAlias = 'REG_DESCRI'
      FieldName = 'REG_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField23: TppField
      FieldAlias = 'CC_NOME'
      FieldName = 'CC_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField24: TppField
      FieldAlias = 'CC_EMAIL'
      FieldName = 'CC_EMAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField25: TppField
      FieldAlias = 'CC_CARGO'
      FieldName = 'CC_CARGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField26: TppField
      FieldAlias = 'CC_CELULAR'
      FieldName = 'CC_CELULAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField27: TppField
      FieldAlias = 'CC_TELEFONE'
      FieldName = 'CC_TELEFONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField28: TppField
      FieldAlias = 'CC_RAMAL'
      FieldName = 'CC_RAMAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField29: TppField
      FieldAlias = 'CC_TIPO'
      FieldName = 'CC_TIPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField30: TppField
      FieldAlias = 'EMP_CODIGO'
      FieldName = 'EMP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField31: TppField
      FieldAlias = 'CLI_CLASSE_CLI_FOR'
      FieldName = 'CLI_CLASSE_CLI_FOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField32: TppField
      FieldAlias = 'RCL_ATIVIDADE'
      FieldName = 'RCL_ATIVIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDB05ppField33: TppField
      FieldAlias = 'CORI_DESCRICAO'
      FieldName = 'CORI_DESCRICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
  end
  object ppDB01: TppDBPipeline
    DataSource = DsClienteRB
    UserName = 'DB01'
    Left = 682
    Top = 48
    object ppDB01ppField1: TppField
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField2: TppField
      FieldAlias = 'CLI_RAZAO'
      FieldName = 'CLI_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField3: TppField
      FieldAlias = 'CLI_PORTE'
      FieldName = 'CLI_PORTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField4: TppField
      FieldAlias = 'CLI_ENDERE'
      FieldName = 'CLI_ENDERE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField5: TppField
      FieldAlias = 'CLI_BAIRRO'
      FieldName = 'CLI_BAIRRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField6: TppField
      FieldAlias = 'CLI_CEP'
      FieldName = 'CLI_CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField7: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField8: TppField
      FieldAlias = 'CLI_UF'
      FieldName = 'CLI_UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField9: TppField
      FieldAlias = 'CLI_FONE'
      FieldName = 'CLI_FONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField10: TppField
      FieldAlias = 'CLI_FAX'
      FieldName = 'CLI_FAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField11: TppField
      FieldAlias = 'CLI_CONTATO'
      FieldName = 'CLI_CONTATO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField12: TppField
      FieldAlias = 'CLI_DTULTCOM'
      FieldName = 'CLI_DTULTCOM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField13: TppField
      FieldAlias = 'CLI_INATIVO'
      FieldName = 'CLI_INATIVO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField14: TppField
      FieldAlias = 'CLI_EMAIL'
      FieldName = 'CLI_EMAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField15: TppField
      FieldAlias = 'CLI_HOME'
      FieldName = 'CLI_HOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField16: TppField
      FieldAlias = 'CLI_ATIVIDADE'
      FieldName = 'CLI_ATIVIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField17: TppField
      FieldAlias = 'CLI_FUNCONT'
      FieldName = 'CLI_FUNCONT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField18: TppField
      FieldAlias = 'REP_CODIGO'
      FieldName = 'REP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField19: TppField
      FieldAlias = 'REP_NOME'
      FieldName = 'REP_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField20: TppField
      FieldAlias = 'REP_SITUACAO'
      FieldName = 'REP_SITUACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField21: TppField
      FieldAlias = 'REG_CODIGO'
      FieldName = 'REG_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField22: TppField
      FieldAlias = 'REG_DESCRI'
      FieldName = 'REG_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField23: TppField
      FieldAlias = 'CC_NOME'
      FieldName = 'CC_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField24: TppField
      FieldAlias = 'CC_EMAIL'
      FieldName = 'CC_EMAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField25: TppField
      FieldAlias = 'CC_CARGO'
      FieldName = 'CC_CARGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField26: TppField
      FieldAlias = 'CC_CELULAR'
      FieldName = 'CC_CELULAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField27: TppField
      FieldAlias = 'CC_TELEFONE'
      FieldName = 'CC_TELEFONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField28: TppField
      FieldAlias = 'CC_RAMAL'
      FieldName = 'CC_RAMAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField29: TppField
      FieldAlias = 'CC_TIPO'
      FieldName = 'CC_TIPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField30: TppField
      FieldAlias = 'EMP_CODIGO'
      FieldName = 'EMP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDB01ppField31: TppField
      FieldAlias = 'CLI_CLASSE_CLI_FOR'
      FieldName = 'CLI_CLASSE_CLI_FOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
  end
  object ppDB03: TppDBPipeline
    DataSource = DsClienteRB
    UserName = 'DB03'
    Left = 682
    Top = 128
    object ppDB03ppField1: TppField
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField2: TppField
      FieldAlias = 'CLI_RAZAO'
      FieldName = 'CLI_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField3: TppField
      FieldAlias = 'CLI_PORTE'
      FieldName = 'CLI_PORTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField4: TppField
      FieldAlias = 'CLI_ENDERE'
      FieldName = 'CLI_ENDERE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField5: TppField
      FieldAlias = 'CLI_BAIRRO'
      FieldName = 'CLI_BAIRRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField6: TppField
      FieldAlias = 'CLI_CEP'
      FieldName = 'CLI_CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField7: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField8: TppField
      FieldAlias = 'CLI_UF'
      FieldName = 'CLI_UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField9: TppField
      FieldAlias = 'CLI_FONE'
      FieldName = 'CLI_FONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField10: TppField
      FieldAlias = 'CLI_FAX'
      FieldName = 'CLI_FAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField11: TppField
      FieldAlias = 'CLI_CONTATO'
      FieldName = 'CLI_CONTATO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField12: TppField
      FieldAlias = 'CLI_DTULTCOM'
      FieldName = 'CLI_DTULTCOM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField13: TppField
      FieldAlias = 'CLI_INATIVO'
      FieldName = 'CLI_INATIVO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField14: TppField
      FieldAlias = 'CLI_EMAIL'
      FieldName = 'CLI_EMAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField15: TppField
      FieldAlias = 'CLI_HOME'
      FieldName = 'CLI_HOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField16: TppField
      FieldAlias = 'CLI_ATIVIDADE'
      FieldName = 'CLI_ATIVIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField17: TppField
      FieldAlias = 'CLI_FUNCONT'
      FieldName = 'CLI_FUNCONT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField18: TppField
      FieldAlias = 'REP_CODIGO'
      FieldName = 'REP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField19: TppField
      FieldAlias = 'REP_NOME'
      FieldName = 'REP_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField20: TppField
      FieldAlias = 'REP_SITUACAO'
      FieldName = 'REP_SITUACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField21: TppField
      FieldAlias = 'REG_CODIGO'
      FieldName = 'REG_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField22: TppField
      FieldAlias = 'REG_DESCRI'
      FieldName = 'REG_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField23: TppField
      FieldAlias = 'CC_NOME'
      FieldName = 'CC_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField24: TppField
      FieldAlias = 'CC_EMAIL'
      FieldName = 'CC_EMAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField25: TppField
      FieldAlias = 'CC_CARGO'
      FieldName = 'CC_CARGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField26: TppField
      FieldAlias = 'CC_CELULAR'
      FieldName = 'CC_CELULAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField27: TppField
      FieldAlias = 'CC_TELEFONE'
      FieldName = 'CC_TELEFONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField28: TppField
      FieldAlias = 'CC_RAMAL'
      FieldName = 'CC_RAMAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField29: TppField
      FieldAlias = 'CC_TIPO'
      FieldName = 'CC_TIPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField30: TppField
      FieldAlias = 'EMP_CODIGO'
      FieldName = 'EMP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField31: TppField
      FieldAlias = 'CLI_CLASSE_CLI_FOR'
      FieldName = 'CLI_CLASSE_CLI_FOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDB03ppField32: TppField
      FieldAlias = 'RCL_ATIVIDADE'
      FieldName = 'RCL_ATIVIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
  end
  object DsCliProdu: TDataSource
    DataSet = SqlCdsCliProdu
    Left = 612
    Top = 151
  end
  object SqlCdsCliProdu: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'C1.CLI_CODIGO,'#13#10'C1.CLI_RAZAO,'#13#10'C1.CLI_PORTE,'#13#10'C1.CLI_END' +
      'ERE,'#13#10'C1.CLI_BAIRRO,'#13#10'C1.CLI_CEP,'#13#10'C1.CLI_CIDADE,'#13#10'C1.CLI_UF,'#13#10'C' +
      '1.CLI_FONE,'#13#10'C1.CLI_FAX,'#13#10'C1.CLI_CONTATO,'#13#10'C1.CLI_FUNCONT,'#13#10'C1.C' +
      'LI_DTINICIO,'#13#10'C1.CLI_DTULTCOM,'#13#10'C1.REP_CODIGO,'#13#10'R1.REP_NOME,'#13#10'F1' +
      '.FAT_CODIGO,'#13#10'F1.FAT_DTEMIS,'#13#10'N1.PRD_REFER,'#13#10'N1.PRD_DESCRI,'#13#10'N1.' +
      'NF_QTDE,'#13#10'N1.NF_IPIALIQ,'#13#10'N1.NF_PRECO'#13#10'FROM CLI0000 C1'#13#10'LEFT JOI' +
      'N FAT0000  F1 ON (F1.CLI_CODIGO = C1.CLI_CODIGO)'#13#10'LEFT JOIN NF_I' +
      'T01 N1  ON (F1.FAT_CODIGO = N1.NF_IT_NOTANUMER)'#13#10'LEFT JOIN REP00' +
      '00 R1  ON (C1.REP_CODIGO = R1.REP_CODIGO)'#13#10'ORDER BY'#13#10'C1.CLI_UF,C' +
      '1.CLI_CIDADE,C1.CLI_RAZAO,F1.FAT_DTEMIS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsCliProduCalcFields
    CommandText = 
      'SELECT'#13#10'C1.CLI_CODIGO,'#13#10'C1.CLI_RAZAO,'#13#10'C1.CLI_PORTE,'#13#10'C1.CLI_END' +
      'ERE,'#13#10'C1.CLI_BAIRRO,'#13#10'C1.CLI_CEP,'#13#10'C1.CLI_CIDADE,'#13#10'C1.CLI_UF,'#13#10'C' +
      '1.CLI_FONE,'#13#10'C1.CLI_FAX,'#13#10'C1.CLI_CONTATO,'#13#10'C1.CLI_FUNCONT,'#13#10'C1.C' +
      'LI_DTINICIO,'#13#10'C1.CLI_DTULTCOM,'#13#10'C1.REP_CODIGO,'#13#10'R1.REP_NOME,'#13#10'F1' +
      '.FAT_CODIGO,'#13#10'F1.FAT_DTEMIS,'#13#10'N1.PRD_REFER,'#13#10'N1.PRD_DESCRI,'#13#10'N1.' +
      'NF_QTDE,'#13#10'N1.NF_IPIALIQ,'#13#10'N1.NF_PRECO'#13#10'FROM CLI0000 C1'#13#10'LEFT JOI' +
      'N FAT0000  F1 ON (F1.CLI_CODIGO = C1.CLI_CODIGO)'#13#10'LEFT JOIN NF_I' +
      'T01 N1  ON (F1.FAT_CODIGO = N1.NF_IT_NOTANUMER)'#13#10'LEFT JOIN REP00' +
      '00 R1  ON (C1.REP_CODIGO = R1.REP_CODIGO)'#13#10'ORDER BY'#13#10'C1.CLI_UF,C' +
      '1.CLI_CIDADE,C1.CLI_RAZAO,F1.FAT_DTEMIS'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 548
    Top = 159
    object SqlCdsCliProduCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsCliProduCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object SqlCdsCliProduCLI_PORTE: TStringField
      FieldName = 'CLI_PORTE'
      Size = 1
    end
    object SqlCdsCliProduCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 50
    end
    object SqlCdsCliProduCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object SqlCdsCliProduCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 8
    end
    object SqlCdsCliProduCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object SqlCdsCliProduCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object SqlCdsCliProduCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object SqlCdsCliProduCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 11
    end
    object SqlCdsCliProduCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 25
    end
    object SqlCdsCliProduCLI_FUNCONT: TStringField
      FieldName = 'CLI_FUNCONT'
      Size = 15
    end
    object SqlCdsCliProduCLI_DTINICIO: TSQLTimeStampField
      FieldName = 'CLI_DTINICIO'
    end
    object SqlCdsCliProduCLI_DTULTCOM: TSQLTimeStampField
      FieldName = 'CLI_DTULTCOM'
    end
    object SqlCdsCliProduREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SqlCdsCliProduFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Size = 6
    end
    object SqlCdsCliProduFAT_DTEMIS: TSQLTimeStampField
      FieldName = 'FAT_DTEMIS'
    end
    object SqlCdsCliProduPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsCliProduPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsCliProduNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      Precision = 15
    end
    object SqlCdsCliProduNF_IPIALIQ: TFMTBCDField
      FieldName = 'NF_IPIALIQ'
      Precision = 15
    end
    object SqlCdsCliProduNF_PRECO: TFMTBCDField
      FieldName = 'NF_PRECO'
      Precision = 15
    end
    object SqlCdsCliProduSUBTOTAL_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SUBTOTAL_CC'
      Calculated = True
    end
    object SqlCdsCliProduREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
  end
  object ppDB02: TppDBPipeline
    DataSource = DsClienteRB
    UserName = 'DB02'
    Left = 682
    Top = 80
    object ppDB02ppField1: TppField
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDB02ppField2: TppField
      FieldAlias = 'CLI_RAZAO'
      FieldName = 'CLI_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDB02ppField3: TppField
      FieldAlias = 'CLI_PORTE'
      FieldName = 'CLI_PORTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDB02ppField4: TppField
      FieldAlias = 'CLI_ENDERE'
      FieldName = 'CLI_ENDERE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDB02ppField5: TppField
      FieldAlias = 'CLI_BAIRRO'
      FieldName = 'CLI_BAIRRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDB02ppField6: TppField
      FieldAlias = 'CLI_CEP'
      FieldName = 'CLI_CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDB02ppField7: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDB02ppField8: TppField
      FieldAlias = 'CLI_UF'
      FieldName = 'CLI_UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDB02ppField9: TppField
      FieldAlias = 'CLI_FONE'
      FieldName = 'CLI_FONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDB02ppField10: TppField
      FieldAlias = 'CLI_FAX'
      FieldName = 'CLI_FAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDB02ppField11: TppField
      FieldAlias = 'CLI_CONTATO'
      FieldName = 'CLI_CONTATO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDB02ppField12: TppField
      FieldAlias = 'CLI_DTULTCOM'
      FieldName = 'CLI_DTULTCOM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDB02ppField13: TppField
      FieldAlias = 'CLI_INATIVO'
      FieldName = 'CLI_INATIVO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDB02ppField14: TppField
      FieldAlias = 'CLI_EMAIL'
      FieldName = 'CLI_EMAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDB02ppField15: TppField
      FieldAlias = 'CLI_HOME'
      FieldName = 'CLI_HOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDB02ppField16: TppField
      FieldAlias = 'CLI_ATIVIDADE'
      FieldName = 'CLI_ATIVIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDB02ppField17: TppField
      FieldAlias = 'CLI_FUNCONT'
      FieldName = 'CLI_FUNCONT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDB02ppField18: TppField
      FieldAlias = 'REP_CODIGO'
      FieldName = 'REP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDB02ppField19: TppField
      FieldAlias = 'REP_NOME'
      FieldName = 'REP_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDB02ppField20: TppField
      FieldAlias = 'REP_SITUACAO'
      FieldName = 'REP_SITUACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDB02ppField21: TppField
      FieldAlias = 'REG_CODIGO'
      FieldName = 'REG_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDB02ppField22: TppField
      FieldAlias = 'REG_DESCRI'
      FieldName = 'REG_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
  end
  object ppDBEtiq: TppDBPipeline
    DataSource = DsClienteRB
    UserName = 'DBEtiq'
    Left = 682
    Top = 176
    object ppDBEtiqppField1: TppField
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBEtiqppField2: TppField
      FieldAlias = 'CLI_RAZAO'
      FieldName = 'CLI_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBEtiqppField3: TppField
      FieldAlias = 'CLI_PORTE'
      FieldName = 'CLI_PORTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBEtiqppField4: TppField
      FieldAlias = 'CLI_ENDERE'
      FieldName = 'CLI_ENDERE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBEtiqppField5: TppField
      FieldAlias = 'CLI_BAIRRO'
      FieldName = 'CLI_BAIRRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBEtiqppField6: TppField
      FieldAlias = 'CLI_CEP'
      FieldName = 'CLI_CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBEtiqppField7: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBEtiqppField8: TppField
      FieldAlias = 'CLI_UF'
      FieldName = 'CLI_UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBEtiqppField9: TppField
      FieldAlias = 'CLI_FONE'
      FieldName = 'CLI_FONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBEtiqppField10: TppField
      FieldAlias = 'CLI_FAX'
      FieldName = 'CLI_FAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBEtiqppField11: TppField
      FieldAlias = 'CLI_CONTATO'
      FieldName = 'CLI_CONTATO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBEtiqppField12: TppField
      FieldAlias = 'CLI_DTULTCOM'
      FieldName = 'CLI_DTULTCOM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBEtiqppField13: TppField
      FieldAlias = 'CLI_INATIVO'
      FieldName = 'CLI_INATIVO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBEtiqppField14: TppField
      FieldAlias = 'CLI_EMAIL'
      FieldName = 'CLI_EMAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBEtiqppField15: TppField
      FieldAlias = 'CLI_HOME'
      FieldName = 'CLI_HOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBEtiqppField16: TppField
      FieldAlias = 'CLI_ATIVIDADE'
      FieldName = 'CLI_ATIVIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBEtiqppField17: TppField
      FieldAlias = 'CLI_FUNCONT'
      FieldName = 'CLI_FUNCONT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBEtiqppField18: TppField
      FieldAlias = 'REP_CODIGO'
      FieldName = 'REP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBEtiqppField19: TppField
      FieldAlias = 'REP_NOME'
      FieldName = 'REP_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBEtiqppField20: TppField
      FieldAlias = 'REP_SITUACAO'
      FieldName = 'REP_SITUACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBEtiqppField21: TppField
      FieldAlias = 'REG_CODIGO'
      FieldName = 'REG_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBEtiqppField22: TppField
      FieldAlias = 'REG_DESCRI'
      FieldName = 'REG_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
  end
  object ppREtiq: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '10000'
      '113000')
    DataPipeline = ppDBEtiq
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\JobProgram\Adjutor\FontesRelatorios\RELCLIENTESETIQ.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextFileType = ftFixedLength
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 770
    Top = 176
    Version = '22.0'
    mmColumnWidth = 103000
    DataPipelineName = 'ppDBEtiq'
    object ppColumnHeaderBand1: TppColumnHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailEtiq: TppDetailBand
      Save = True
      Border.mmPadding = 0
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 1000
      mmHeight = 19579
      mmPrintPosition = 0
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText22'
        HyperlinkEnabled = False
        SaveOrder = 0
        Save = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBEtiq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiq'
        mmHeight = 3810
        mmLeft = 1323
        mmTop = 0
        mmWidth = 88106
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText62: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText62'
        HyperlinkEnabled = False
        SaveOrder = 1
        Save = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_ENDERE'
        DataPipeline = ppDBEtiq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiq'
        mmHeight = 3810
        mmLeft = 1323
        mmTop = 3969
        mmWidth = 88106
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText63: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText63'
        HyperlinkEnabled = False
        SaveOrder = 2
        Save = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_BAIRRO'
        DataPipeline = ppDBEtiq
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiq'
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 7938
        mmWidth = 88106
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText64: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText64'
        HyperlinkEnabled = False
        SaveOrder = 3
        Save = True
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_CEP'
        DataPipeline = ppDBEtiq
        DisplayFormat = '99\.999\-999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEtiq'
        mmHeight = 3683
        mmLeft = 1323
        mmTop = 11906
        mmWidth = 15452
        BandType = 4
        LayerName = Foreground5
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer6
        UserName = 'Variable1'
        HyperlinkEnabled = False
        SaveOrder = 4
        Save = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 18256
        mmTop = 11906
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground5
      end
      object ppVariable2: TppVariable
        DesignLayer = ppDesignLayer6
        UserName = 'Variable2'
        HyperlinkEnabled = False
        SaveOrder = 5
        Save = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 1323
        mmTop = 15769
        mmWidth = 13547
        BandType = 4
        LayerName = Foreground5
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      AlignToBottom = True
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object raCodeModule2: TraCodeModule
      object raProgramInfo4: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable1OnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable1OnGetText(var Text: String);'#13#10'begin'#13#10'  Text :' +
          '= '#39' '#39'+DB05['#39'CLI_CIDADE'#39']+'#39' - '#39'+DB05['#39'CLI_UF'#39'];'#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable1'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
      end
      object raProgramInfo5: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable2OnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable2OnGetText(var Text: String);'#13#10'Var'#13#10'  wFone,wC' +
          'ont:String;'#13#10'begin'#13#10'    wFone :=  DB05['#39'CLI_FONE'#39'];'#13#10'    wCont :' +
          '=  DB05['#39'CLI_CONTATO'#39'];'#13#10'    if(wFone = '#39#39' )and(wCont = '#39#39') then' +
          #13#10'       Text :='#39#39#13#10'    else'#13#10'       if (wCont<>'#39#39')and(wCont<>'#39#39 +
          ') then'#13#10'          Text := '#39'Att.: '#39'+wCont'#13#10'       else'#13#10'         ' +
          ' if (wCont='#39#39') then'#13#10'             Text :=wFone'#13#10'          else'#13#10 +
          '             if (wFone='#39#39') then'#13#10'                Text := '#39'Att.: ' +
          #39'+wCont;   '#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable2'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
      end
    end
    object ppDesignLayers6: TppDesignLayers
      object ppDesignLayer6: TppDesignLayer
        UserName = 'Foreground5'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList6: TppParameterList
    end
  end
  object ppReport04: TppReport
    AutoStop = False
    DataPipeline = ppDB04
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
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
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELCLIENTES04.r' +
      'tm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 772
    Top = 239
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDB04'
    object pp04HeaderBand1: TppHeaderBand
      BeforePrint = pp04HeaderBand1BeforePrint
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13758
      mmPrintPosition = 0
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer7
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground6
      end
      object LBL_04_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'LBL_04_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_04_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4092
        mmLeft = 0
        mmTop = 0
        mmWidth = 31750
        BandType = 0
        LayerName = Foreground6
      end
      object LBL_04_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'LBL_04_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_04_LTITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4092
        mmLeft = 0
        mmTop = 4233
        mmWidth = 30198
        BandType = 0
        LayerName = Foreground6
      end
      object LBL_04_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'LBL_04_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_04_LTITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4498
        mmLeft = 0
        mmTop = 8467
        mmWidth = 30163
        BandType = 0
        LayerName = Foreground6
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer7
        UserName = 'Line5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 13493
        mmWidth = 196000
        BandType = 0
        LayerName = Foreground6
      end
      object ppSystemVariable7: TppSystemVariable
        DesignLayer = ppDesignLayer7
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4092
        mmLeft = 163460
        mmTop = 0
        mmWidth = 32597
        BandType = 0
        LayerName = Foreground6
      end
      object ppSystemVariable8: TppSystemVariable
        DesignLayer = ppDesignLayer7
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4092
        mmLeft = 174044
        mmTop = 8467
        mmWidth = 22013
        BandType = 0
        LayerName = Foreground6
      end
    end
    object pp04DetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText43: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FAT_DTEMIS'
        DataPipeline = ppDB04
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB04'
        mmHeight = 3810
        mmLeft = 0
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FAT_CODIGO'
        DataPipeline = ppDB04
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB04'
        mmHeight = 3810
        mmLeft = 17727
        mmTop = 0
        mmWidth = 12000
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PRD_REFER'
        DataPipeline = ppDB04
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB04'
        mmHeight = 3810
        mmLeft = 30163
        mmTop = 0
        mmWidth = 9000
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NF_QTDE'
        DataPipeline = ppDB04
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB04'
        mmHeight = 3810
        mmLeft = 124354
        mmTop = 0
        mmWidth = 17300
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NF_PRECO'
        DataPipeline = ppDB04
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB04'
        mmHeight = 3810
        mmLeft = 146844
        mmTop = 0
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NF_IPIALIQ'
        DataPipeline = ppDB04
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB04'
        mmHeight = 3810
        mmLeft = 187061
        mmTop = 0
        mmWidth = 6615
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText49: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText15'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDB04
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDB04'
        mmHeight = 3810
        mmLeft = 39423
        mmTop = 0
        mmWidth = 82550
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText50: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'SUBTOTAL_CC'
        DataPipeline = ppDB04
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDB04'
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 0
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground6
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'CLI_RAZAO'
      DataPipeline = ppDB04
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDB04'
      NewFile = False
      object pp04GroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 17198
        mmPrintPosition = 0
        object ppDBText51: TppDBText
          DesignLayer = ppDesignLayer7
          UserName = 'DBText2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CLI_RAZAO'
          DataPipeline = ppDB04
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3387
          mmLeft = 8731
          mmTop = 0
          mmWidth = 80169
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel41: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3387
          mmLeft = 265
          mmTop = 3969
          mmWidth = 8202
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppDBText52: TppDBText
          DesignLayer = ppDesignLayer7
          UserName = 'DBText1'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CLI_BAIRRO'
          DataPipeline = ppDB04
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3440
          mmLeft = 8731
          mmTop = 3969
          mmWidth = 43127
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppDBText53: TppDBText
          DesignLayer = ppDesignLayer7
          UserName = 'DBText3'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CLI_ENDERE'
          DataPipeline = ppDB04
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3440
          mmLeft = 102923
          mmTop = 0
          mmWidth = 92340
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel42: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label3'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Ult.Compra:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 7938
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppDBText54: TppDBText
          DesignLayer = ppDesignLayer7
          UserName = 'DBText6'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CLI_DTULTCOM'
          DataPipeline = ppDB04
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3440
          mmLeft = 15610
          mmTop = 7938
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel43: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label4'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'FONE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 124090
          mmTop = 3969
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppDBText55: TppDBText
          DesignLayer = ppDesignLayer7
          UserName = 'DBText7'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CLI_FONE'
          DataPipeline = ppDB04
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3704
          mmLeft = 133879
          mmTop = 3969
          mmWidth = 23283
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel44: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label5'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'FAX:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 157957
          mmTop = 3969
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppDBText56: TppDBText
          DesignLayer = ppDesignLayer7
          UserName = 'DBText4'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CLI_CIDADE'
          DataPipeline = ppDB04
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3440
          mmLeft = 63236
          mmTop = 3969
          mmWidth = 42863
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppDBText57: TppDBText
          DesignLayer = ppDesignLayer7
          UserName = 'DBText8'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CLI_FAX'
          DataPipeline = ppDB04
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3704
          mmLeft = 165365
          mmTop = 3969
          mmWidth = 20902
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel45: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Estado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3387
          mmLeft = 106892
          mmTop = 3969
          mmWidth = 9596
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppDBText58: TppDBText
          DesignLayer = ppDesignLayer7
          UserName = 'DBText5'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CLI_UF'
          DataPipeline = ppDB04
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3440
          mmLeft = 116946
          mmTop = 3969
          mmWidth = 5027
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLine21: TppLine
          DesignLayer = ppDesignLayer7
          UserName = 'Line2'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 12171
          mmWidth = 196000
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppDBText59: TppDBText
          DesignLayer = ppDesignLayer7
          UserName = 'DBText16'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CLI_CODIGO'
          DataPipeline = ppDB04
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3387
          mmLeft = 265
          mmTop = 0
          mmWidth = 8202
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel47: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label7'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 12965
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel48: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label8'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Fatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 17727
          mmTop = 12965
          mmWidth = 7938
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel49: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label9'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Ref.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 30163
          mmTop = 12965
          mmWidth = 5292
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel50: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label10'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Descri'#231#227'o do Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 39423
          mmTop = 12965
          mmWidth = 26988
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel51: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label11'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Qtde'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 134144
          mmTop = 12965
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel52: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label12'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Vl.Unitario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 146844
          mmTop = 12965
          mmWidth = 14288
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel53: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label13'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Vl.Total Liquido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3387
          mmLeft = 164571
          mmTop = 12965
          mmWidth = 19844
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel54: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label14'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 187061
          mmTop = 12965
          mmWidth = 6615
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLine27: TppLine
          DesignLayer = ppDesignLayer7
          UserName = 'Line27'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 16933
          mmWidth = 196000
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel58: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label58'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3387
          mmLeft = 89694
          mmTop = 0
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel59: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label59'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 52388
          mmTop = 3969
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel60: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label60'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Representante:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3528
          mmLeft = 32808
          mmTop = 7938
          mmWidth = 22490
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppDBText73: TppDBText
          DesignLayer = ppDesignLayer7
          UserName = 'DBText73'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'REP_CODIGO'
          DataPipeline = ppDB04
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3440
          mmLeft = 55827
          mmTop = 7938
          mmWidth = 5821
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppDBText74: TppDBText
          DesignLayer = ppDesignLayer7
          UserName = 'DBText74'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'REP_NOME'
          DataPipeline = ppDB04
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3440
          mmLeft = 62442
          mmTop = 7938
          mmWidth = 67204
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
      end
      object pp04GroupFooterBand1: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLabel46: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label6'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3387
          mmLeft = 6350
          mmTop = 529
          mmWidth = 9031
          BandType = 5
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppDBCalc6: TppDBCalc
          DesignLayer = ppDesignLayer7
          UserName = 'DBCalc2'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'SUBTOTAL_CC'
          DataPipeline = ppDB04
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDB04'
          mmHeight = 3528
          mmLeft = 164571
          mmTop = 441
          mmWidth = 19844
          BandType = 5
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLine22: TppLine
          DesignLayer = ppDesignLayer7
          UserName = 'Line4'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 196000
          BandType = 5
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLine23: TppLine
          DesignLayer = ppDesignLayer7
          UserName = 'Line23'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4233
          mmWidth = 196000
          BandType = 5
          GroupNo = 0
          LayerName = Foreground6
        end
      end
    end
    object raCodeModule1: TraCodeModule
      object raProgramInfo6: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DBText12OnDrawCommandClick'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DBText12OnDrawCommandClick(aDrawCommand: TObject);'#13#10'be' +
          'gin'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'DBText12'
        raProgram.EventName = 'OnDrawCommandClick'
        raProgram.EventID = 85
      end
    end
    object ppDesignLayers7: TppDesignLayers
      object ppDesignLayer7: TppDesignLayer
        UserName = 'Foreground6'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList7: TppParameterList
    end
  end
  object ppDB04: TppDBPipeline
    DataSource = DsCliProdu
    UserName = 'DB04'
    Left = 684
    Top = 239
  end
  object ppDB00: TppDBPipeline
    DataSource = DsClienteRB
    UserName = 'DB00'
    Left = 682
    object ppDB00ppField1: TppField
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField2: TppField
      FieldAlias = 'CLI_RAZAO'
      FieldName = 'CLI_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField3: TppField
      FieldAlias = 'CLI_PORTE'
      FieldName = 'CLI_PORTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField4: TppField
      FieldAlias = 'CLI_ENDERE'
      FieldName = 'CLI_ENDERE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField5: TppField
      FieldAlias = 'CLI_BAIRRO'
      FieldName = 'CLI_BAIRRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField6: TppField
      FieldAlias = 'CLI_CEP'
      FieldName = 'CLI_CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField7: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField8: TppField
      FieldAlias = 'CLI_UF'
      FieldName = 'CLI_UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField9: TppField
      FieldAlias = 'CLI_FONE'
      FieldName = 'CLI_FONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField10: TppField
      FieldAlias = 'CLI_FAX'
      FieldName = 'CLI_FAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField11: TppField
      FieldAlias = 'CLI_CONTATO'
      FieldName = 'CLI_CONTATO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField12: TppField
      FieldAlias = 'CLI_DTULTCOM'
      FieldName = 'CLI_DTULTCOM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField13: TppField
      FieldAlias = 'CLI_INATIVO'
      FieldName = 'CLI_INATIVO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField14: TppField
      FieldAlias = 'CLI_EMAIL'
      FieldName = 'CLI_EMAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField15: TppField
      FieldAlias = 'CLI_HOME'
      FieldName = 'CLI_HOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField16: TppField
      FieldAlias = 'CLI_ATIVIDADE'
      FieldName = 'CLI_ATIVIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField17: TppField
      FieldAlias = 'CLI_FUNCONT'
      FieldName = 'CLI_FUNCONT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField18: TppField
      FieldAlias = 'REP_CODIGO'
      FieldName = 'REP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField19: TppField
      FieldAlias = 'REP_NOME'
      FieldName = 'REP_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField20: TppField
      FieldAlias = 'REP_SITUACAO'
      FieldName = 'REP_SITUACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField21: TppField
      FieldAlias = 'REG_CODIGO'
      FieldName = 'REG_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField22: TppField
      FieldAlias = 'REG_DESCRI'
      FieldName = 'REG_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField23: TppField
      FieldAlias = 'CC_NOME'
      FieldName = 'CC_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField24: TppField
      FieldAlias = 'CC_EMAIL'
      FieldName = 'CC_EMAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField25: TppField
      FieldAlias = 'CC_CARGO'
      FieldName = 'CC_CARGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField26: TppField
      FieldAlias = 'CC_CELULAR'
      FieldName = 'CC_CELULAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField27: TppField
      FieldAlias = 'CC_TELEFONE'
      FieldName = 'CC_TELEFONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField28: TppField
      FieldAlias = 'CC_RAMAL'
      FieldName = 'CC_RAMAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField29: TppField
      FieldAlias = 'CC_TIPO'
      FieldName = 'CC_TIPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField30: TppField
      FieldAlias = 'EMP_CODIGO'
      FieldName = 'EMP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField31: TppField
      FieldAlias = 'CLI_CLASSE_CLI_FOR'
      FieldName = 'CLI_CLASSE_CLI_FOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField32: TppField
      FieldAlias = 'RCL_ATIVIDADE'
      FieldName = 'RCL_ATIVIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDB00ppField33: TppField
      FieldAlias = 'CORI_DESCRICAO'
      FieldName = 'CORI_DESCRICAO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 32
    end
  end
  object CdsClienteServico: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'c1.CLI_CODIGO,'#13#10'c1.CLI_RAZAO,'#13#10'S1.CLI_SV_AUTORIZADAS,'#13#10'S' +
      '1.CLI_SV_VALIDADE_ATUAL,'#13#10'S1.CLI_SV_INICIOCT,'#13#10'S1.CLI_SV_DATA_CA' +
      'NCEL_CONTRATO,'#13#10'S1.CLI_SV_VALOR_CONTRATO'#13#10'FROM CLI0000 C1'#13#10'LEFT ' +
      'JOIN REP0000 R1 on (C1.rep_codigo = R1.rep_codigo)'#13#10'LEFT JOIN RE' +
      'G0000 G1 on (C1.reg_codigo = G1.reg_codigo)'#13#10'left join CLI_SV00 ' +
      'S1 ON (S1.CLI_CODIGO = C1.CLI_CODIGO)'#13#10'where s1.CLI_SV_AUTORIZAD' +
      'AS > 0 AND C1.CLI_INATIVO = '#39'A'#39#13#10'order BY S1.CLI_SV_DATA_CANCEL_' +
      'CONTRATO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'c1.CLI_CODIGO,'#13#10'c1.CLI_RAZAO,'#13#10'S1.CLI_SV_AUTORIZADAS,'#13#10'S' +
      '1.CLI_SV_VALIDADE_ATUAL,'#13#10'S1.CLI_SV_INICIOCT,'#13#10'S1.CLI_SV_DATA_CA' +
      'NCEL_CONTRATO,'#13#10'S1.CLI_SV_VALOR_CONTRATO'#13#10'FROM CLI0000 C1'#13#10'LEFT ' +
      'JOIN REP0000 R1 on (C1.rep_codigo = R1.rep_codigo)'#13#10'LEFT JOIN RE' +
      'G0000 G1 on (C1.reg_codigo = G1.reg_codigo)'#13#10'left join CLI_SV00 ' +
      'S1 ON (S1.CLI_CODIGO = C1.CLI_CODIGO)'#13#10'where s1.CLI_SV_AUTORIZAD' +
      'AS > 0 AND C1.CLI_INATIVO = '#39'A'#39#13#10'order BY S1.CLI_SV_DATA_CANCEL_' +
      'CONTRATO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 618
    Top = 400
    object CdsClienteServicoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object CdsClienteServicoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object CdsClienteServicoCLI_SV_AUTORIZADAS: TIntegerField
      FieldName = 'CLI_SV_AUTORIZADAS'
    end
    object CdsClienteServicoCLI_SV_VALIDADE_ATUAL: TDateField
      FieldName = 'CLI_SV_VALIDADE_ATUAL'
    end
    object CdsClienteServicoCLI_SV_INICIOCT: TDateField
      FieldName = 'CLI_SV_INICIOCT'
    end
    object CdsClienteServicoCLI_SV_DATA_CANCEL_CONTRATO: TDateField
      FieldName = 'CLI_SV_DATA_CANCEL_CONTRATO'
    end
    object CdsClienteServicoCLI_SV_VALOR_CONTRATO: TFMTBCDField
      FieldName = 'CLI_SV_VALOR_CONTRATO'
      Precision = 20
      Size = 5
    end
  end
  object frx: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41849.697717719900000000
    ReportOptions.LastChange = 41850.582014664400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxGetValue
    Left = 704
    Top = 368
    Datasets = <
      item
        DataSet = frxdbServico
        DataSetName = 'frxdbServico'
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
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Clientes - Servi'#231'o')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 56.692950000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Licen'#231'as')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Validade')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 75.590600000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'In'#237'cio Contrato')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vcto Contrato')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 56.692950000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'R$ Contrato')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = frxdbServico
        DataSetName = 'frxdbServico'
        RowCount = 0
        object frxdbServicoCLI_RAZAO: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Width = 321.260050000000000000
          Height = 15.118120000000000000
          DataField = 'CLI_RAZAO'
          DataSet = frxdbServico
          DataSetName = 'frxdbServico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbServico."CLI_RAZAO"]')
          ParentFont = False
        end
        object frxdbServicoCLI_SV_AUTORIZADAS: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataField = 'CLI_SV_AUTORIZADAS'
          DataSet = frxdbServico
          DataSetName = 'frxdbServico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbServico."CLI_SV_AUTORIZADAS"]')
          ParentFont = False
        end
        object frxdbServicoCLI_SV_VALIDADE_ATUAL: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'CLI_SV_VALIDADE_ATUAL'
          DataSet = frxdbServico
          DataSetName = 'frxdbServico'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbServico."CLI_SV_VALIDADE_ATUAL"]')
          ParentFont = False
        end
        object frxdbServicoCLI_SV_INICIOCT: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'CLI_SV_INICIOCT'
          DataSet = frxdbServico
          DataSetName = 'frxdbServico'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbServico."CLI_SV_INICIOCT"]')
          ParentFont = False
        end
        object frxdbServicoCLI_SV_DATA_CANCEL_CONTRATO: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DataField = 'CLI_SV_DATA_CANCEL_CONTRATO'
          DataSet = frxdbServico
          DataSetName = 'frxdbServico'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbServico."CLI_SV_DATA_CANCEL_CONTRATO"]')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[LINE#]')
          ParentFont = False
        end
        object frxdbServicoCLI_SV_VALOR_CONTRATO: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = frxdbServico
          DataSetName = 'frxdbServico'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbServico."CLI_SV_VALOR_CONTRATO"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxdbServico."CLI_SV_VALOR_CONTRATO">,MasterData1,3)]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total em Contratos:')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1,3)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total de Clientes:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = -3.779530000000000000
          Top = 18.897650000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  object frxdbServico: TfrxDBDataset
    UserName = 'frxdbServico'
    CloseDataSource = False
    DataSet = CdsClienteServico
    BCDToCurrency = False
    Left = 656
    Top = 368
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
    Top = 456
  end
  object sqlClienteOrigem: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT * FROM F_CONTACX WHERE ID=:ID')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 612
    Top = 543
    object sqlClienteOrigemCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 70
    end
    object sqlClienteOrigemCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      OnGetText = sqlClienteOrigemCLI_CGCGetText
      Size = 18
    end
    object sqlClienteOrigemcli_cidade: TStringField
      FieldName = 'cli_cidade'
      Size = 30
    end
    object sqlClienteOrigemCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object sqltmstmpfldClienteOrigemCLI_DTINICIO: TSQLTimeStampField
      FieldName = 'CLI_DTINICIO'
    end
    object sqltmstmpfldClienteOrigemCLI_DTULTCOM: TSQLTimeStampField
      FieldName = 'CLI_DTULTCOM'
    end
    object sqlClienteOrigemCORI_DESCRICAO: TStringField
      FieldName = 'CORI_DESCRICAO'
      Size = 150
    end
    object sqlClienteOrigemREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
  end
  object frxClienteOrigem: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43871.406966990690000000
    ReportOptions.LastChange = 43871.565042916700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxClienteOrigemGetValue
    Left = 736
    Top = 568
    Datasets = <
      item
        DataSet = frxOrigem
        DataSetName = 'frxdbServico'
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
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 71.923719230000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de clientes por origem')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Per'#237'odo de [DataIni] a [DataFim]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 289.819110000000000000
          Top = 56.692949999999990000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 385.137743850000000000
          Top = 56.692949999999990000
          Width = 79.303506150000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Top = 56.692949999999990000
          Width = 288.988726160000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Raz'#227'o Social')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 483.338900000000000000
          Top = 56.692949999999990000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data cadastro')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 563.709030000000000000
          Top = 56.692949999999990000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vendedor')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 643.079160000000000000
          Top = 56.692949999999990000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Ultima compra')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = -1.000000000000000000
          Top = 71.923719230000000000
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 463.846153850000000000
          Top = 56.692949999999990000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 27.583202310000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        Condition = 'frxdbServico."CORI_DESCRICAO"'
        KeepTogether = True
        object frxdbServicoCORI_DESCRICAO: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataSet = frxOrigem
          DataSetName = 'frxdbServico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Origem: [frxdbServico."CORI_DESCRICAO"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Top = 1.000000000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 504.845511540000000000
          Top = 0.561961540000000000
          Width = 89.103634620000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de clientes:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = -7.559060000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 23.846153850000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = frxOrigem
        DataSetName = 'frxdbServico'
        RowCount = 0
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 289.819110000000000000
          Top = 0.906022309999997300
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbServico."CLI_CGC"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 385.137743850000000000
          Top = 0.906022309999997300
          Width = 79.303506150000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbServico."cli_cidade"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Top = 0.906022309999997300
          Width = 288.988726160000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbServico."CLI_RAZAO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 483.338900000000000000
          Top = 0.906022309999997300
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbServico."CLI_DTINICIO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 563.709030000000000000
          Top = 0.906022309999997300
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbServico."REP_NOME"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 643.079160000000000000
          Top = 0.906022309999997300
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[frxdbServico."CLI_DTULTCOM"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 463.846153850000000000
          Top = 0.906022309999997300
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdbServico."CLI_UF"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 287.244280000000000000
        Width = 718.110700000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 610.115838460000000000
          Top = 0.438038460000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Width = 89.103634620000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de clientes:')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = -7.559060000000000000
          Top = 1.000000000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  object frxOrigem: TfrxDBDataset
    UserName = 'frxdbServico'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CLI_RAZAO=CLI_RAZAO'
      'CLI_CGC=CLI_CGC'
      'cli_cidade=cli_cidade'
      'CLI_UF=CLI_UF'
      'CLI_DTINICIO=CLI_DTINICIO'
      'CLI_DTULTCOM=CLI_DTULTCOM'
      'CORI_DESCRICAO=CORI_DESCRICAO'
      'REP_NOME=REP_NOME')
    DataSet = sqlClienteOrigem
    BCDToCurrency = False
    Left = 680
    Top = 544
  end
  object frxDBClienteRB: TfrxDBDataset
    UserName = 'frxDBClienteRB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CLI_CODIGO=CLI_CODIGO'
      'CLI_RAZAO=CLI_RAZAO'
      'CLI_PORTE=CLI_PORTE'
      'CLI_ENDERE=CLI_ENDERE'
      'CLI_BAIRRO=CLI_BAIRRO'
      'CLI_CEP=CLI_CEP'
      'CLI_CIDADE=CLI_CIDADE'
      'CLI_UF=CLI_UF'
      'CLI_FONE=CLI_FONE'
      'CLI_FAX=CLI_FAX'
      'CLI_CONTATO=CLI_CONTATO'
      'CLI_DTULTCOM=CLI_DTULTCOM'
      'CLI_INATIVO=CLI_INATIVO'
      'CLI_EMAIL=CLI_EMAIL'
      'CLI_HOME=CLI_HOME'
      'CLI_ATIVIDADE=CLI_ATIVIDADE'
      'CLI_FUNCONT=CLI_FUNCONT'
      'REP_CODIGO=REP_CODIGO'
      'REP_NOME=REP_NOME'
      'REP_SITUACAO=REP_SITUACAO'
      'REG_CODIGO=REG_CODIGO'
      'REG_DESCRI=REG_DESCRI'
      'CC_NOME=CC_NOME'
      'CC_EMAIL=CC_EMAIL'
      'CC_CARGO=CC_CARGO'
      'CC_CELULAR=CC_CELULAR'
      'CC_TELEFONE=CC_TELEFONE'
      'CC_RAMAL=CC_RAMAL'
      'CC_TIPO=CC_TIPO')
    DataSet = SqlCdsClienteRB
    BCDToCurrency = False
    Left = 888
    Top = 208
  end
  object frxListaContatos: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43929.473863611100000000
    ReportOptions.LastChange = 43929.473863611100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxListaContatosGetValue
    Left = 944
    Top = 208
    Datasets = <
      item
        DataSet = frxDBClienteRB
        DataSetName = 'frxDBClienteRB'
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
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.978664290000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Lista de contatos de clientes para CRM ou Email Marketing')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Empresa]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Filtro]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 219.902288570000000000
          Top = 56.692950000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome Contato')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 295.921460000000000000
          Top = 56.692950000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Email')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 219.741497140000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 75.978664290000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 546.709030000000000000
          Top = 56.692950000000000000
          Width = 59.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cargo')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 605.520100000000000000
          Top = 56.692950000000000000
          Width = 75.174397140000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fone')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 681.857142860000000000
          Top = 56.692950000000000000
          Width = 35.680581430000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Ramal')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.092145710000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = frxDBClienteRB
        DataSetName = 'frxDBClienteRB'
        RowCount = 0
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Top = 0.753555710000000000
          Width = 219.741497140000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBClienteRB."CLI_RAZAO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 219.902288570000000000
          Top = 0.753555710000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBClienteRB."CC_NOME"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 295.921460000000000000
          Top = 0.753555710000000000
          Width = 249.448980000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBClienteRB."CC_EMAIL"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 546.570501430000000000
          Top = 0.753555710000000000
          Width = 59.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBClienteRB."CC_CARGO"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 605.520100000000000000
          Top = 0.753555710000000000
          Width = 75.174397140000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FONE]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 681.857142860000000000
          Top = 0.753555710000000000
          Width = 35.680581430000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBClienteRB."CC_RAMAL"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 17.897650000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 2.118120000000000000
          Top = 2.779530000000000000
          Width = 238.110390000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de registros: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 872
    Top = 424
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 944
    Top = 376
  end
  object qCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBInicio.MainDB
    Left = 528
    Top = 776
  end
  object qClienteProdutoVendido: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        ' SELECT  EXTRACT(YEAR FROM  ft.FAT_DTEMIS) || '#39'-'#39' || LPAD(EXTRAC' +
        'T(MONTH FROM  ft.FAT_DTEMIS),  2,  0) AS AnoMes,'
      
        '  cl.CLI_CODIGO,  cl.EMP_CODIGO,  cl.CLI_RAZAO,  cl.CLI_PORTE,  ' +
        'cl.CLI_ENDERE,'
      
        '  cl.CLI_BAIRRO,  cl.CLI_CEP,  cl.CLI_CIDADE,  cl.CLI_UF,  cl.CL' +
        'I_FONE,'
      
        '  cl.CLI_FAX,  cl.CLI_CONTATO,  cl.CLI_FUNCONT,  cl.CLI_DTINICIO' +
        ',  cl.CLI_DTULTCOM,'
      
        '  cl.REP_CODIGO,  rp.REP_NOME,  ft.FAT_CODIGO,  ft.FAT_DTEMIS,  ' +
        'ni.PRD_REFER,'
      '  ni.PRD_DESCRI,  ni.NF_QTDE,  ni.NF_IPIALIQ,  ni.NF_PRECO'
      'FROM  CLI0000 cl'
      'LEFT JOIN FAT0000 ft ON  (ft.CLI_CODIGO = cl.CLI_CODIGO)'
      'LEFT JOIN NF_IT01 ni ON  (ft.FAT_CODIGO = ni.NF_IT_NOTANUMER)'
      'LEFT JOIN REP0000 rp ON  (cl.REP_CODIGO = rp.REP_CODIGO)'
      'WHERE'
      '  1 = 1'
      '  AND cl.CLI_INATIVO = '#39'A'#39
      '  AND ft.FAT_DTEMIS BETWEEN '#39'2020-02-10'#39' AND '#39'2020-02-10'#39
      '  AND cl.EMP_CODIGO = '#39'001'#39
      'ORDER BY  AnoMes,  cl.CLI_UF,  cl.CLI_CIDADE,  cl.CLI_RAZAO ')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 624
    Top = 776
    object qClienteProdutoVendidoANOMES: TStringField
      FieldName = 'ANOMES'
      Size = 9
    end
    object qClienteProdutoVendidoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object qClienteProdutoVendidoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object qClienteProdutoVendidoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 70
    end
    object qClienteProdutoVendidoCLI_PORTE: TStringField
      FieldName = 'CLI_PORTE'
      Size = 1
    end
    object qClienteProdutoVendidoCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 60
    end
    object qClienteProdutoVendidoCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object qClienteProdutoVendidoCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 8
    end
    object qClienteProdutoVendidoCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object qClienteProdutoVendidoCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object qClienteProdutoVendidoCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 12
    end
    object qClienteProdutoVendidoCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 12
    end
    object qClienteProdutoVendidoCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 25
    end
    object qClienteProdutoVendidoCLI_FUNCONT: TStringField
      FieldName = 'CLI_FUNCONT'
      Size = 15
    end
    object qClienteProdutoVendidoCLI_DTINICIO: TSQLTimeStampField
      FieldName = 'CLI_DTINICIO'
    end
    object qClienteProdutoVendidoCLI_DTULTCOM: TSQLTimeStampField
      FieldName = 'CLI_DTULTCOM'
    end
    object qClienteProdutoVendidoREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object qClienteProdutoVendidoREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object qClienteProdutoVendidoFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Size = 15
    end
    object qClienteProdutoVendidoFAT_DTEMIS: TSQLTimeStampField
      FieldName = 'FAT_DTEMIS'
    end
    object qClienteProdutoVendidoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object qClienteProdutoVendidoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 500
    end
    object qClienteProdutoVendidoNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      Precision = 18
      Size = 5
    end
    object qClienteProdutoVendidoNF_IPIALIQ: TFMTBCDField
      FieldName = 'NF_IPIALIQ'
      Precision = 18
      Size = 5
    end
    object qClienteProdutoVendidoNF_PRECO: TFMTBCDField
      FieldName = 'NF_PRECO'
      Precision = 18
      Size = 5
    end
  end
  object frxDBClienteProdutoVendido: TfrxDBDataset
    UserName = 'frxDBClienteProdutoVendido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ANOMES=ANOMES'
      'CLI_CODIGO=CLI_CODIGO'
      'EMP_CODIGO=EMP_CODIGO'
      'CLI_RAZAO=CLI_RAZAO'
      'CLI_PORTE=CLI_PORTE'
      'CLI_ENDERE=CLI_ENDERE'
      'CLI_BAIRRO=CLI_BAIRRO'
      'CLI_CEP=CLI_CEP'
      'CLI_CIDADE=CLI_CIDADE'
      'CLI_UF=CLI_UF'
      'CLI_FONE=CLI_FONE'
      'CLI_FAX=CLI_FAX'
      'CLI_CONTATO=CLI_CONTATO'
      'CLI_FUNCONT=CLI_FUNCONT'
      'CLI_DTINICIO=CLI_DTINICIO'
      'CLI_DTULTCOM=CLI_DTULTCOM'
      'REP_CODIGO=REP_CODIGO'
      'REP_NOME=REP_NOME'
      'FAT_CODIGO=FAT_CODIGO'
      'FAT_DTEMIS=FAT_DTEMIS'
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'NF_QTDE=NF_QTDE'
      'NF_IPIALIQ=NF_IPIALIQ'
      'NF_PRECO=NF_PRECO')
    DataSet = qClienteProdutoVendido
    BCDToCurrency = False
    Left = 768
    Top = 776
  end
  object frxClienteProdutoVendido: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44938.547867083300000000
    ReportOptions.LastChange = 44939.599823796300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeginDoc = frxClienteProdutoVendidoBeginDoc
    OnGetValue = frxClienteProdutoVendidoGetValue
    Left = 768
    Top = 704
    Datasets = <
      item
        DataSet = frxDBClienteProdutoVendido
        DataSetName = 'frxDBClienteProdutoVendido'
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
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 73.031540000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object LogoEmpresa: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 196.535433070000000000
          Height = 68.031540000000000000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object wFrxRazao: TfrxMemoView
          AllowVectorExport = True
          Left = 205.551330000000000000
          Top = 5.559060000000000000
          Width = 502.677490000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
        end
        object wFrxEndereco: TfrxMemoView
          AllowVectorExport = True
          Left = 205.567100000000000000
          Top = 23.779530000000000000
          Width = 502.677490000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[ENDERECO]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 205.551330000000000000
          Top = 40.795300000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CEP]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 272.464750000000000000
          Top = 40.795300000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CIDADE]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 462.338900000000000000
          Top = 40.795300000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UF]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 489.016080000000000000
          Top = 40.795300000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[FONE]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 205.330860000000000000
          Top = 57.692950000000000000
          Width = 222.992270000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'E-Mail: [EMAIL]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 488.866420000000000000
          Top = 57.692950000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[CNPJ]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 451.323130000000000000
          Top = 57.692950000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 606.929500000000000000
          Top = 57.913420000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Inscri'#231#227'o:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 654.401980000000000000
          Top = 57.692950000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[INSCR]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 359.055350000000000000
        Width = 718.110700000000000000
        DataSet = frxDBClienteProdutoVendido
        DataSetName = 'frxDBClienteProdutoVendido'
        RowCount = 0
        Stretched = True
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 60.472431180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBClienteProdutoVendido."FAT_DTEMIS"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Width = 41.574781180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBClienteProdutoVendido."FAT_CODIGO"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Width = 41.574781180000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBClienteProdutoVendido."PRD_REFER"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 147.401670000000000000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBClienteProdutoVendido."PRD_DESCRI"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBClienteProdutoVendido."NF_QTDE"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBClienteProdutoVendido."NF_PRECO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataSet = frxDBClienteProdutoVendido
          DataSetName = 'frxDBClienteProdutoVendido'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<frxDBClienteProdutoVendido."NF_QTDE"> * <frxDBClienteProdutoVe' +
              'ndido."NF_PRECO"> ]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          DataField = 'NF_IPIALIQ'
          DataSet = frxDBClienteProdutoVendido
          DataSetName = 'frxDBClienteProdutoVendido'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBClienteProdutoVendido."NF_IPIALIQ"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 86.929190000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBClienteProdutoVendido."CLI_RAZAO"'
        object Line3: TfrxLineView
          AllowVectorExport = True
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBClienteProdutoVendido."CLI_CODIGO"] - [frxDBClienteProduto' +
              'Vendido."CLI_RAZAO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 706.772110000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Endere'#231'o: [<frxDBClienteProdutoVendido."CLI_ENDERE">], [<frxDBCl' +
              'ienteProdutoVendido."CLI_BAIRRO">] - [<frxDBClienteProdutoVendid' +
              'o."CLI_CIDADE">] - [<frxDBClienteProdutoVendido."CLI_UF">]')
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 41.795300000000000000
          Width = 706.772110000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Telefone: [<frxDBClienteProdutoVendido."CLI_FONE">] - Fax: [<frx' +
              'DBClienteProdutoVendido."CLI_FAX">]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 64.252010000000000000
          Width = 706.772110000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              #218'ltima Compra: [frxDBClienteProdutoVendido."CLI_DTULTCOM"]    Re' +
              'presentante: [frxDBClienteProdutoVendido."REP_NOME"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 86.929190000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 34.015770000000000000
        ParentFont = False
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBClienteProdutoVendido."ANOMES"'
        ReprintOnNewPage = True
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBClienteProdutoVendido."ANOMES"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 17.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420000000000000
          Top = 17.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Fatura')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 17.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Ref.')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 147.401670000000000000
          Top = 17.897650000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o do Produto')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 17.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde.')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Top = 17.897650000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vl. Unit'#225'rio')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 17.897650000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vl. Total L'#237'quido')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 17.897650000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'IPI')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 34.015770000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 396.850650000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBClienteProdutoVendido."NF_QTDE">, MasterData1, 0)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBClienteProdutoVendido
          DataSetName = 'frxDBClienteProdutoVendido'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[sum(<frxDBClienteProdutoVendido."NF_QTDE"> * <frxDBClienteProdu' +
              'toVendido."NF_PRECO">, MasterData1, 0) ]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Totais:')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          AllowVectorExport = True
          Left = 609.606680000000000000
          Top = 1.000000000000000000
          Width = 102.047310000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'g. [Page#] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Listagem de Clientes e Produtos Vendidos por M'#234's [PERIODO]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 442.205010000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBClienteProdutoVendido."NF_QTDE">, MasterData1, 0)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBClienteProdutoVendido
          DataSetName = 'frxDBClienteProdutoVendido'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[sum(<frxDBClienteProdutoVendido."NF_QTDE"> * <frxDBClienteProdu' +
              'toVendido."NF_PRECO">, MasterData1, 0) ]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Totais do Cliente:')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 551.811380000000000000
        Width = 718.110700000000000000
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBClienteProdutoVendido."NF_QTDE">, MasterData1, 0)]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBClienteProdutoVendido
          DataSetName = 'frxDBClienteProdutoVendido'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[sum(<frxDBClienteProdutoVendido."NF_QTDE"> * <frxDBClienteProdu' +
              'toVendido."NF_PRECO">, MasterData1, 0) ]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Totais do Relat'#243'rio:')
          ParentFont = False
        end
      end
    end
  end
end
