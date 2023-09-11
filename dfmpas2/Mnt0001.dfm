inherited FrmManutencao: TFrmManutencao
  Left = 242
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Manuten'#231#227'o T'#233'cnica Novi'
  ClientHeight = 573
  ClientWidth = 748
  Font.Name = 'MS Sans Serif'
  FormStyle = fsMDIChild
  Position = poDesktopCenter
  Visible = True
  ExplicitWidth = 756
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel [0]
    Left = 448
    Top = 526
    Width = 210
    Height = 13
    Caption = 'OS COMPONENTES EST'#195'O ABAIXO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Button22: TButton [1]
    Left = 368
    Top = 147
    Width = 345
    Height = 31
    Hint = 
      'Transferir dados de parcelamento para outra tabela de calculos d' +
      'a view'
    Caption = 'Transferir dados para tabela de Parcelas da NFe (v.239)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 22
    OnClick = Button22Click
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 748
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 16
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 48
      Top = 24
      Width = 351
      Height = 13
      Caption = 
        'Aten'#231#227'o o uso indevido dessa area pode causar inconsist'#234'ncia nos' +
        ' dados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Button3: TButton [3]
    Left = 324
    Top = 521
    Width = 75
    Height = 25
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    TabStop = False
    OnClick = Button3Click
  end
  object PrBar: TProgressBar [4]
    Left = 0
    Top = 555
    Width = 748
    Height = 18
    Align = alBottom
    TabOrder = 15
  end
  object Button17: TButton [5]
    Left = 16
    Top = 371
    Width = 345
    Height = 25
    Caption = 'Colocar Flag no Pedido Duplicado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = Button17Click
  end
  object Button14: TButton [6]
    Left = 16
    Top = 47
    Width = 345
    Height = 25
    Caption = 'Corrigir Flag Atualiza Estoque Pedido (Vers'#227'o 201)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button14Click
  end
  object Button11: TButton [7]
    Left = 16
    Top = 344
    Width = 345
    Height = 25
    Caption = 'Inserir o N'#186' total  de parcelas no Pagar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = Button11Click
  end
  object Button15: TButton [8]
    Left = 16
    Top = 128
    Width = 345
    Height = 25
    Caption = 'Atualizar Flag Sem Valor Comercial NF (Vers'#227'o 201)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button15Click
  end
  object Button2: TButton [9]
    Left = 16
    Top = 317
    Width = 345
    Height = 25
    Caption = 'Reservado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = Button2Click
  end
  object Button4: TButton [10]
    Left = 16
    Top = 182
    Width = 345
    Height = 25
    Caption = 'Produ'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button10: TButton [11]
    Left = 16
    Top = 209
    Width = 345
    Height = 25
    Caption = 'Atribui'#231#227'o do Tup no Relat'#243'rio anal'#237'tico mensal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button10Click
  end
  object Button13: TButton [12]
    Left = 16
    Top = 263
    Width = 345
    Height = 25
    Caption = 'Corrigir Reserva no Estoque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = Button13Click
  end
  object Button9: TButton [13]
    Left = 16
    Top = 236
    Width = 345
    Height = 25
    Caption = 'Acerta refer'#234'ncia das varia'#231#245'es (Vincitore)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Button9Click
  end
  object Button16: TButton [14]
    Left = 16
    Top = 101
    Width = 345
    Height = 25
    Caption = 'Tabela Clientes (Vers'#227'o 190)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button16Click
  end
  object Button12: TButton [15]
    Left = 16
    Top = 290
    Width = 345
    Height = 25
    Caption = 'Chave Primaria da Tabela OSV0000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = Button12Click
  end
  object Button1: TButton [16]
    Left = 16
    Top = 155
    Width = 345
    Height = 25
    Caption = 'Excluir Movimento Kardex (Via Vincitore)Vers'#227'o 190'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button5: TButton [17]
    Left = 16
    Top = 399
    Width = 345
    Height = 25
    Caption = 'Colocar Tipo Documento na Nota Fiscal (Todos) (201)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = Button5Click
  end
  object Button6: TButton [18]
    Left = 16
    Top = 74
    Width = 345
    Height = 25
    Caption = 'Corrigir Flag Atualiza Estoque da Nota Fiscal (Vers'#227'o 201)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button6Click
  end
  object Button7: TButton [19]
    Left = 368
    Top = 258
    Width = 345
    Height = 25
    Caption = 'Zerar Empenho e Reservas - PCP (v.316)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 26
    OnClick = Button7Click
  end
  object Button8: TButton [20]
    Left = 16
    Top = 428
    Width = 345
    Height = 25
    Caption = 'Atualizar a ultima compra do Produto (Todos) (202)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    OnClick = Button8Click
  end
  object Button18: TButton [21]
    Left = 368
    Top = 47
    Width = 345
    Height = 25
    Caption = 'Rotina de Corre'#231#227'o de Acerto Manual (Todos)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    OnClick = Button18Click
  end
  object Button19: TButton [22]
    Left = 368
    Top = 72
    Width = 345
    Height = 25
    Caption = 'Acerto de Cidades Cliente/Fornecedores NFe (v.350)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
    OnClick = Button19Click
  end
  object Button20: TButton [23]
    Left = 368
    Top = 122
    Width = 345
    Height = 25
    Caption = 'Nfe - Troca Homologa'#231#227'o p/ Produ'#231#227'o (Zera Generator + XML)'
    TabOrder = 20
    OnClick = Button20Click
  end
  object Button21: TButton [24]
    Left = 368
    Top = 97
    Width = 345
    Height = 25
    Caption = 'Ajustar valores fiscais no contas a receber'
    TabOrder = 21
    OnClick = Button21Click
  end
  object Button23: TButton [25]
    Left = 368
    Top = 178
    Width = 345
    Height = 31
    Hint = 
      'Transferir dados de parcelamento para outra tabela de calculos d' +
      'a view'
    Caption = 'Zerar Saldo Inicial do estoque Negativo (v.251)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 23
    OnClick = Button23Click
  end
  object Button24: TButton [26]
    Left = 368
    Top = 209
    Width = 345
    Height = 25
    Caption = 'Acerto de Cidades Transportadora NFe (v.251)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 24
    OnClick = Button24Click
  end
  object Button25: TButton [27]
    Left = 368
    Top = 234
    Width = 345
    Height = 25
    Caption = 'Importar saldos para Novo Estoque (v.311)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 25
    OnClick = Button25Click
  end
  object GroupBox1: TGroupBox [28]
    Left = 367
    Top = 353
    Width = 345
    Height = 153
    Caption = 'Importa'#231#227'o Produtos e Grades Adjutor Produ'#231#227'o Web'
    TabOrder = 27
    object Label3: TLabel
      Left = 14
      Top = 88
      Width = 146
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total de Produtos Localizados:'
    end
    object Label4: TLabel
      Left = 22
      Top = 104
      Width = 138
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total de Grades Localizadas:'
    end
    object LblImportacaoProdutos: TLabel
      Left = 165
      Top = 90
      Width = 6
      Height = 13
      Caption = '0'
    end
    object LblImportacaoGrades: TLabel
      Left = 165
      Top = 106
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Edit1: TEdit
      Left = 16
      Top = 32
      Width = 321
      Height = 21
      TabOrder = 0
      Text = 'Caminho do XML ou webservice'
    end
    object Button26: TButton
      Left = 16
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Carregar'
      TabOrder = 1
      OnClick = Button26Click
    end
    object Button27: TButton
      Left = 16
      Top = 120
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 2
      OnClick = Button27Click
    end
  end
  object Button28: TButton [29]
    Left = 16
    Top = 454
    Width = 345
    Height = 25
    Caption = 'Acerto Nova Op'#231#227'o Estoque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 28
    OnClick = Button28Click
  end
  object Button29: TButton [30]
    Left = 16
    Top = 481
    Width = 345
    Height = 25
    Caption = 'Acerto Grade preencher campos medida'
    TabOrder = 29
    OnClick = Button29Click
  end
  object Button30: TButton [31]
    Left = 368
    Top = 283
    Width = 345
    Height = 25
    Caption = 'Atualizar Sequ'#234'ncia dos Itens no Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 30
    OnClick = Button30Click
  end
  object cbAlmoxarifado: TComboBoxRw [32]
    Left = 589
    Top = 314
    Width = 99
    Height = 21
    TabOrder = 32
    CharCase = ecUpperCase
    LookupSelect = 'amx_CODIGO,AMX_DESCRI'
    LookupOrderBy = 'AMX_DESCRI'
    LookupTable = 'ALMOX0000'
    LookupDispl = 'AMX_DESCRI'
    GridAutoSize = False
    LookupSource = cbAlmoxarifado.InternalSource
    LookupKeyField = 'amx_CODIGO'
    ShowButton = True
    LookupTableShare = 'TABELAS'
    AutoF8WinTitulo = 'Almoxarifados'
    AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
    Tabela = 'ALMOX0000'
    CamposCarregar = 'amx_CODIGO,AMX_DESCRI'
    CamposRetornar = 'amx_CODIGO'
    CamposOrdernar = 'AMX_DESCRI'
    ConexaoBanco = DataCadastros.SQLConnection1
    Compartilhar = 'TABELAS'
    Localizado = False
    CodigoEmpresa = 0
    ResetaCampos = False
    MultiEmpresa = False
    Localizar = False
    CarregarCombo = False
    itemindex = 0
    style = csDropDown
  end
  object Button31: TButton [33]
    Left = 368
    Top = 311
    Width = 217
    Height = 25
    Caption = 'Refaz Saldos dos Lotes de Produtos'
    TabOrder = 31
    OnClick = Button31Click
  end
  inherited coCalcula: TACBrCalculadora
    Top = 624
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 184
    Top = 656
  end
  inherited DBConn: TSQLConnection
    Left = 24
    Top = 625
  end
  inherited qAux: TSQLQuery
    Left = 274
    Top = 645
  end
  inherited qAux2: TSQLQuery
    Left = 330
    Top = 644
  end
  inherited qAux3: TSQLQuery
    Left = 378
    Top = 644
  end
  inherited qAuxEstorna: TSQLQuery
    Left = 874
    Top = 648
  end
  inherited qAuxEstornaItem: TSQLQuery
    Left = 786
    Top = 648
  end
  object SqlCdsPesquisa: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 96
    Top = 705
  end
  object DsPesquisa: TDataSource
    DataSet = SqlCdsPesquisa
    Left = 136
    Top = 706
  end
  object CdsConcluir: TClientDataSet
    PersistDataPacket.Data = {
      6D0000009619E0BD0100000018000000030000000000030000006D000A524546
      4552454E4349410100490000000100055749445448020002001400064E554D5F
      4F50010049000000010005574944544802000200140004515444450100490000
      0001000557494454480200020014000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 168
    Top = 721
    object CdsConcluirREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object CdsConcluirNUM_OP: TStringField
      FieldName = 'NUM_OP'
    end
    object CdsConcluirQTDE: TStringField
      FieldName = 'QTDE'
    end
  end
  object SqlCdsNparcelas: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select EMP_CODIGO,PAG_CODIGO,Count(*) AS NPARCELAS From PAG_PC01' +
      #13#10'Group by'#13#10'EMP_CODIGO,'#13#10'PAG_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select EMP_CODIGO,PAG_CODIGO,Count(*) AS NPARCELAS From PAG_PC01' +
      #13#10'Group by'#13#10'EMP_CODIGO,'#13#10'PAG_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 332
    Top = 721
    object SqlCdsNparcelasEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsNparcelasPAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsNparcelasNPARCELAS: TIntegerField
      FieldName = 'NPARCELAS'
      Required = True
    end
  end
  object SQLClientDataSet1: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'O1.OSV_REGISTRO,'#13#10'O1.OSV_CODIGO,'#13#10'O1.OSV_CODIGO_PAI'#13#10'fro' +
      'm OSV0001 O1'#13#10'ORDER BY'#13#10'O1.OSV_REGISTRO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select'#13#10'O1.OSV_REGISTRO,'#13#10'O1.OSV_CODIGO,'#13#10'O1.OSV_CODIGO_PAI'#13#10'fro' +
      'm OSV0001 O1'#13#10'ORDER BY'#13#10'O1.OSV_REGISTRO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 366
    Top = 722
  end
  object SqlCdsReserva: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'P2.PRD_REFER,'#13#10'SUM(P2.PRF_QTDE) AS WQTDE'#13#10'from PED0000 P' +
      '1'#13#10'JOIN PED_IT01 P2 ON (P1.PED_CODIGO = P2.PED_CODIGO) AND (P1.E' +
      'MP_CODIGO = P2.EMP_CODIGO)'#13#10'JOIN OPV0000 O1 ON (P1.opv_codigo = ' +
      'O1.opv_codigo)'#13#10'where P1.PED_SITUACAO <> '#39'T'#39' AND O1.opv_atestoqu' +
      'e = '#39'S'#39'  AND P1.ped_flag_ped_dupl = '#39'N'#39#13#10'GROUP BY'#13#10'P2.PRD_REFER'#13 +
      #10#13#10'ORDER BY'#13#10'P2.PRD_REFER'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select'#13#10'P2.PRD_REFER,'#13#10'SUM(P2.PRF_QTDE) AS WQTDE'#13#10'from PED0000 P' +
      '1'#13#10'JOIN PED_IT01 P2 ON (P1.PED_CODIGO = P2.PED_CODIGO) AND (P1.E' +
      'MP_CODIGO = P2.EMP_CODIGO)'#13#10'JOIN OPV0000 O1 ON (P1.opv_codigo = ' +
      'O1.opv_codigo)'#13#10'where P1.PED_SITUACAO <> '#39'T'#39' AND O1.opv_atestoqu' +
      'e = '#39'S'#39'  AND P1.ped_flag_ped_dupl = '#39'N'#39#13#10'GROUP BY'#13#10'P2.PRD_REFER'#13 +
      #10#13#10'ORDER BY'#13#10'P2.PRD_REFER'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 200
    Top = 721
    object SqlCdsReservaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsReservaWQTDE: TFMTBCDField
      FieldName = 'WQTDE'
      Precision = 15
    end
  end
  object SqlPedidos: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select '#13#10'P1.PED_REGISTRO,'#13#10'P1.PED_CODIGO '#13#10'from PED0000 P1'#13#10'orde' +
      'r by'#13#10'P1.PED_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select '#13#10'P1.PED_REGISTRO,'#13#10'P1.PED_CODIGO '#13#10'from PED0000 P1'#13#10'orde' +
      'r by'#13#10'P1.PED_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 232
    Top = 729
    object SqlPedidosPED_REGISTRO: TIntegerField
      FieldName = 'PED_REGISTRO'
      Required = True
    end
    object SqlPedidosPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Required = True
      Size = 7
    end
  end
  object SqlCdsOsv: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select OSV_CODIGO from OSV0001'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select OSV_CODIGO from OSV0001'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 64
    Top = 705
    object SqlCdsOsvOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Required = True
      Size = 8
    end
  end
  object SqlCdsFlag: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T2.PED_REGISTRO,'#13#10'T1.PED_CODIGO,'#13#10'T1.EMP_CODIGO,'#13#10'T1.PRF' +
      '_REGISTRO,'#13#10'T1.PRD_REFER,'#13#10'T3.OPV_ATESTOQUE,'#13#10'T5.PGR_ATUALIZA_ES' +
      'TOQUE,'#13#10'T6.PTI_ATUALIZAR_ESTOQUE,'#13#10'T1.PRF_FLAG_ATUALIZA_ESTOQUE,' +
      #13#10'T1.PRF_ORIGEM_ITEM,'#13#10'T2.PED_FLAG_PED_DUPL'#13#10'FROM PED_IT01 T1'#13#10'J' +
      'OIN PED0000 T2 ON (T2.PED_CODIGO = T1.PED_CODIGO) AND (T2.EMP_CO' +
      'DIGO = T1.EMP_CODIGO)'#13#10'LEFT JOIN OPV0000 T3 ON (T3.OPV_CODIGO = ' +
      'T2.OPV_CODIGO)'#13#10'LEFT JOIN PRD0000 T4 ON (T4.PRD_REFER = T1.PRD_R' +
      'EFER)'#13#10'LEFT JOIN PRD_GRUPO T5 ON (T5.PGR_CODIGO = T4.PGR_CODIGO)' +
      #13#10'LEFT JOIN PRD_TIPO T6 ON (T6.PTI_CODIGO = T4.PTI_CODIGO)'#13#10'WHER' +
      'E T1.PRF_FLAG_ATUALIZA_ESTOQUE IS NULL'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T2.PED_REGISTRO,'#13#10'T1.PED_CODIGO,'#13#10'T1.EMP_CODIGO,'#13#10'T1.PRF' +
      '_REGISTRO,'#13#10'T1.PRD_REFER,'#13#10'T3.OPV_ATESTOQUE,'#13#10'T5.PGR_ATUALIZA_ES' +
      'TOQUE,'#13#10'T6.PTI_ATUALIZAR_ESTOQUE,'#13#10'T1.PRF_FLAG_ATUALIZA_ESTOQUE,' +
      #13#10'T1.PRF_ORIGEM_ITEM,'#13#10'T2.PED_FLAG_PED_DUPL'#13#10'FROM PED_IT01 T1'#13#10'J' +
      'OIN PED0000 T2 ON (T2.PED_CODIGO = T1.PED_CODIGO) AND (T2.EMP_CO' +
      'DIGO = T1.EMP_CODIGO)'#13#10'LEFT JOIN OPV0000 T3 ON (T3.OPV_CODIGO = ' +
      'T2.OPV_CODIGO)'#13#10'LEFT JOIN PRD0000 T4 ON (T4.PRD_REFER = T1.PRD_R' +
      'EFER)'#13#10'LEFT JOIN PRD_GRUPO T5 ON (T5.PGR_CODIGO = T4.PGR_CODIGO)' +
      #13#10'LEFT JOIN PRD_TIPO T6 ON (T6.PTI_CODIGO = T4.PTI_CODIGO)'#13#10'WHER' +
      'E T1.PRF_FLAG_ATUALIZA_ESTOQUE IS NULL'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 472
    Top = 735
    object SqlCdsFlagPED_REGISTRO: TIntegerField
      FieldName = 'PED_REGISTRO'
      Required = True
    end
    object SqlCdsFlagPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      Required = True
    end
    object SqlCdsFlagPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsFlagEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsFlagPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsFlagOPV_ATESTOQUE: TStringField
      FieldName = 'OPV_ATESTOQUE'
      FixedChar = True
      Size = 1
    end
    object SqlCdsFlagPGR_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'PGR_ATUALIZA_ESTOQUE'
      Size = 1
    end
    object SqlCdsFlagPTI_ATUALIZAR_ESTOQUE: TStringField
      FieldName = 'PTI_ATUALIZAR_ESTOQUE'
      Size = 1
    end
    object SqlCdsFlagPRF_FLAG_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'PRF_FLAG_ATUALIZA_ESTOQUE'
      Size = 1
    end
    object SqlCdsFlagPRF_ORIGEM_ITEM: TStringField
      FieldName = 'PRF_ORIGEM_ITEM'
      Size = 1
    end
    object SqlCdsFlagPED_FLAG_PED_DUPL: TStringField
      FieldName = 'PED_FLAG_PED_DUPL'
      Size = 1
    end
  end
  object SqlCdsFlagNF: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.NF_REGISTRO,'#13#10'T2.OPE_SEMVLCOM'#13#10'FROM NF0001 T1'#13#10'JOIN O' +
      'PE0000 T2 ON (T2.OPE_CODIGO = T1.OPE_CODIGO)'#13#10'ORDER BY'#13#10'T1.NF_RE' +
      'GISTRO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T1.NF_REGISTRO,'#13#10'T2.OPE_SEMVLCOM'#13#10'FROM NF0001 T1'#13#10'JOIN O' +
      'PE0000 T2 ON (T2.OPE_CODIGO = T1.OPE_CODIGO)'#13#10'ORDER BY'#13#10'T1.NF_RE' +
      'GISTRO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 32
    Top = 704
    object SqlCdsFlagNFNF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
      Required = True
    end
    object SqlCdsFlagNFOPE_SEMVLCOM: TStringField
      FieldName = 'OPE_SEMVLCOM'
      Size = 1
    end
  end
  object SqlCdsTabela: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 296
    Top = 728
  end
  object SqlCdsFlagNF2: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T3.CLI_CODIGO,'#13#10'T3.AMX_CODIGO,'#13#10'T5.CLI_RAZAO,'#13#10'T3.NF_EMI' +
      'SSAO,'#13#10'T3.NF_HORASAIDA,'#13#10'T3.OPE_NATUREZA,'#13#10'T4.OPE_DESCRI,'#13#10'T2.PR' +
      'F_SITUACAO,'#13#10'T2.PRF_QTDEFAT,'#13#10'T1.*,'#13#10'T2.PRF_REGISTRO,'#13#10'T2.PRF_FL' +
      'AG_ATUALIZA_ESTOQUE,'#13#10'T2.PRF_ORIGEM_ITEM'#13#10'FROM NF_IT01 T1'#13#10'JOIN ' +
      'NF0001 T3 ON (T3.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)'#13#10'LEFT JOIN ' +
      'CLI0000 T5 ON (T5.CLI_CODIGO = T3.CLI_CODIGO)'#13#10'LEFT JOIN OPE0000' +
      ' T4 ON (T4.OPE_CODIGO = T3.OPE_CODIGO)'#13#10'LEFT JOIN PED_IT01 T2 ON' +
      ' (T2.PRD_REFER = T1.PRD_REFER) AND (T1.PED_CODIGO = T2.PED_CODIG' +
      'O)'#13#10'WHERE ((T2.PRF_SITUACAO = '#39'T'#39') or (T2.PRF_SITUACAO = '#39'P'#39'))'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T3.CLI_CODIGO,'#13#10'T3.AMX_CODIGO,'#13#10'T5.CLI_RAZAO,'#13#10'T3.NF_EMI' +
      'SSAO,'#13#10'T3.NF_HORASAIDA,'#13#10'T3.OPE_NATUREZA,'#13#10'T4.OPE_DESCRI,'#13#10'T2.PR' +
      'F_SITUACAO,'#13#10'T2.PRF_QTDEFAT,'#13#10'T1.*,'#13#10'T2.PRF_REGISTRO,'#13#10'T2.PRF_FL' +
      'AG_ATUALIZA_ESTOQUE,'#13#10'T2.PRF_ORIGEM_ITEM'#13#10'FROM NF_IT01 T1'#13#10'JOIN ' +
      'NF0001 T3 ON (T3.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)'#13#10'LEFT JOIN ' +
      'CLI0000 T5 ON (T5.CLI_CODIGO = T3.CLI_CODIGO)'#13#10'LEFT JOIN OPE0000' +
      ' T4 ON (T4.OPE_CODIGO = T3.OPE_CODIGO)'#13#10'LEFT JOIN PED_IT01 T2 ON' +
      ' (T2.PRD_REFER = T1.PRD_REFER) AND (T1.PED_CODIGO = T2.PED_CODIG' +
      'O)'#13#10'WHERE ((T2.PRF_SITUACAO = '#39'T'#39') or (T2.PRF_SITUACAO = '#39'P'#39'))'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 265
    Top = 730
    object SqlCdsFlagNF2NF_IT_NOTANUMER: TStringField
      FieldName = 'NF_IT_NOTANUMER'
      Required = True
      Size = 6
    end
    object SqlCdsFlagNF2CLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsFlagNF2AMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 3
    end
    object SqlCdsFlagNF2CLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object SqlCdsFlagNF2NF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
    end
    object SqlCdsFlagNF2NF_HORASAIDA: TTimeField
      FieldName = 'NF_HORASAIDA'
    end
    object SqlCdsFlagNF2OPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object SqlCdsFlagNF2OPE_DESCRI: TStringField
      FieldName = 'OPE_DESCRI'
      Size = 55
    end
    object SqlCdsFlagNF2PRF_SITUACAO: TStringField
      FieldName = 'PRF_SITUACAO'
      Size = 1
    end
    object SqlCdsFlagNF2PRF_QTDEFAT: TFMTBCDField
      FieldName = 'PRF_QTDEFAT'
      Precision = 15
      Size = 4
    end
    object SqlCdsFlagNF2NF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
      Required = True
    end
    object SqlCdsFlagNF2PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsFlagNF2PED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsFlagNF2NF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      Precision = 15
      Size = 4
    end
    object SqlCdsFlagNF2NF_PRECO: TFMTBCDField
      FieldName = 'NF_PRECO'
      Precision = 15
      Size = 5
    end
    object SqlCdsFlagNF2NF_IPIALIQ: TFMTBCDField
      FieldName = 'NF_IPIALIQ'
      Precision = 15
      Size = 4
    end
    object SqlCdsFlagNF2IPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object SqlCdsFlagNF2NF_VLSUBST: TFMTBCDField
      FieldName = 'NF_VLSUBST'
      Precision = 15
      Size = 4
    end
    object SqlCdsFlagNF2NF_IDESCTO1: TFMTBCDField
      FieldName = 'NF_IDESCTO1'
      Precision = 15
      Size = 4
    end
    object SqlCdsFlagNF2NF_IDESCTO2: TFMTBCDField
      FieldName = 'NF_IDESCTO2'
      Precision = 15
      Size = 4
    end
    object SqlCdsFlagNF2PRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsFlagNF2EMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsFlagNF2NF_ICMSALIQ: TFMTBCDField
      FieldName = 'NF_ICMSALIQ'
      Precision = 15
      Size = 4
    end
    object SqlCdsFlagNF2NF_PMATPRIMA: TFMTBCDField
      FieldName = 'NF_PMATPRIMA'
      Precision = 15
      Size = 4
    end
    object SqlCdsFlagNF2NF_COMISSAO: TFMTBCDField
      FieldName = 'NF_COMISSAO'
      Precision = 15
      Size = 4
    end
    object SqlCdsFlagNF2NF_QTDE_VAR1: TFMTBCDField
      FieldName = 'NF_QTDE_VAR1'
      Precision = 15
      Size = 4
    end
    object SqlCdsFlagNF2NF_QTDE_VAR2: TFMTBCDField
      FieldName = 'NF_QTDE_VAR2'
      Precision = 15
      Size = 4
    end
    object SqlCdsFlagNF2NF_QTDE_VAR3: TFMTBCDField
      FieldName = 'NF_QTDE_VAR3'
      Precision = 15
      Size = 4
    end
    object SqlCdsFlagNF2NF_QTDE_VAR4: TFMTBCDField
      FieldName = 'NF_QTDE_VAR4'
      Precision = 15
      Size = 4
    end
    object SqlCdsFlagNF2NF_QTDE_VAR5: TFMTBCDField
      FieldName = 'NF_QTDE_VAR5'
      Precision = 15
      Size = 4
    end
    object SqlCdsFlagNF2NF_QTDE_VAR6: TFMTBCDField
      FieldName = 'NF_QTDE_VAR6'
      Precision = 15
      Size = 4
    end
    object SqlCdsFlagNF2NF_QTDE_VAR7: TFMTBCDField
      FieldName = 'NF_QTDE_VAR7'
      Precision = 15
      Size = 4
    end
    object SqlCdsFlagNF2NF_QTDE_VAR8: TFMTBCDField
      FieldName = 'NF_QTDE_VAR8'
      Precision = 15
      Size = 4
    end
    object SqlCdsFlagNF2NF_FLAG_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'NF_FLAG_ATUALIZA_ESTOQUE'
      Size = 1
    end
    object SqlCdsFlagNF2NF_PRODUTO_AGREGADO: TStringField
      FieldName = 'NF_PRODUTO_AGREGADO'
      Size = 1
    end
    object SqlCdsFlagNF2PRF_FLAG_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'PRF_FLAG_ATUALIZA_ESTOQUE'
      Size = 1
    end
    object SqlCdsFlagNF2PRF_ORIGEM_ITEM: TStringField
      FieldName = 'PRF_ORIGEM_ITEM'
      Size = 1
    end
    object SqlCdsFlagNF2PRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
    end
  end
  object SqlCdsSaldo: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'SELECT'#13#10'DISTINCT(PRD_REFER)'#13#10'FROM'#13#10'PRD_ENSA'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT'#13#10'DISTINCT(PRD_REFER)'#13#10'FROM'#13#10'PRD_ENSA'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 406
    Top = 737
    object SqlCdsSaldoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
  end
  object SqlSaldoAcerto: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'E1.PRD_REFER,'#13#10'E1.PES_DATA,'#13#10'E1.PES_HORA,'#13#10'E1.PES_FLAG_A' +
      'CERTO,'#13#10'E1.PES_FLAG_CONTA'#13#10'from PRD_ENSA E1'#13#10'WHERE E1.PES_TIPDOC' +
      ' = '#39'AC'#39' AND E1.PRD_REFER = '#39'PH17535'#39#13#10'ORDER BY'#13#10'E1.PES_DATA DESC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'E1.PRD_REFER,'#13#10'E1.PES_DATA,'#13#10'E1.PES_HORA,'#13#10'E1.PES_FLAG_A' +
      'CERTO,'#13#10'E1.PES_FLAG_CONTA'#13#10'from PRD_ENSA E1'#13#10'WHERE E1.PES_TIPDOC' +
      ' = '#39'AC'#39' AND E1.PRD_REFER = '#39'PH17535'#39#13#10'ORDER BY'#13#10'E1.PES_DATA DESC'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 438
    Top = 737
    object SqlSaldoAcertoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlSaldoAcertoPES_DATA: TSQLTimeStampField
      FieldName = 'PES_DATA'
    end
    object SqlSaldoAcertoPES_HORA: TTimeField
      FieldName = 'PES_HORA'
    end
    object SqlSaldoAcertoPES_FLAG_ACERTO: TStringField
      FieldName = 'PES_FLAG_ACERTO'
      Size = 1
    end
    object SqlSaldoAcertoPES_FLAG_CONTA: TStringField
      FieldName = 'PES_FLAG_CONTA'
      Size = 1
    end
  end
  object SqlCdsNF: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.EMP_CODIGO,'#13#10'T1.FAT_CODIGO,'#13#10'T1.FPC_TIPODOC'#13#10'FROM FAT' +
      '_PC01 T1'#13#10'WHERE T1.FPC_TIPODOC <> '#39#39#13#10'GROUP BY'#13#10'T1.EMP_CODIGO,'#13#10 +
      'T1.FAT_CODIGO,'#13#10'T1.FPC_TIPODOC'#13#10'ORDER BY'#13#10'T1.EMP_CODIGO,'#13#10'T1.FAT' +
      '_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T1.EMP_CODIGO,'#13#10'T1.FAT_CODIGO,'#13#10'T1.FPC_TIPODOC'#13#10'FROM FAT' +
      '_PC01 T1'#13#10'WHERE T1.FPC_TIPODOC <> '#39#39#13#10'GROUP BY'#13#10'T1.EMP_CODIGO,'#13#10 +
      'T1.FAT_CODIGO,'#13#10'T1.FPC_TIPODOC'#13#10'ORDER BY'#13#10'T1.EMP_CODIGO,'#13#10'T1.FAT' +
      '_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 508
    Top = 736
    object SqlCdsNFEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsNFFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsNFFPC_TIPODOC: TStringField
      FieldName = 'FPC_TIPODOC'
      Size = 2
    end
  end
  object SqlFlag_nota: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.NF_REGISTRO,'#13#10'T5.PTI_ATUALIZAR_ESTOQUE,'#13#10'T7.PGR_ATUAL' +
      'IZA_ESTOQUE,'#13#10'T3.OPV_ATESTOQUE,'#13#10'T6.OPE_ESTOQUE,'#13#10'T4.PGR_CODIGO,' +
      #13#10'T1.NF_FLAG_ATUALIZA_ESTOQUE'#13#10#13#10'FROM NF_IT01 T1'#13#10'LEFT JOIN NF00' +
      '01 T2 ON (T2.NF_NOTANUMBER =  T1.NF_IT_NOTANUMER)'#13#10'LEFT JOIN OPV' +
      '0000 T3 ON (T3.OPV_CODIGO = T2.OPV_CODIGO)'#13#10'LEFT JOIN PRD0000 T4' +
      ' ON (T4.PRD_REFER = T1.PRD_REFER)'#13#10'LEFT JOIN PRD_TIPO T5 ON (T5.' +
      'PTI_CODIGO = T4.PTI_CODIGO)'#13#10'LEFT JOIN OPE0000 T6 ON (T6.OPE_COD' +
      'IGO = T2.OPE_CODIGO)'#13#10'LEFT JOIN PRD_GRUPO T7 ON (T7.PGR_CODIGO =' +
      ' T4.PGR_CODIGO)'#13#10'WHERE (T1.NF_FLAG_ATUALIZA_ESTOQUE = '#39#39') or (T1' +
      '.NF_FLAG_ATUALIZA_ESTOQUE IS NULL)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T1.NF_REGISTRO,'#13#10'T5.PTI_ATUALIZAR_ESTOQUE,'#13#10'T7.PGR_ATUAL' +
      'IZA_ESTOQUE,'#13#10'T3.OPV_ATESTOQUE,'#13#10'T6.OPE_ESTOQUE,'#13#10'T4.PGR_CODIGO,' +
      #13#10'T1.NF_FLAG_ATUALIZA_ESTOQUE'#13#10#13#10'FROM NF_IT01 T1'#13#10'LEFT JOIN NF00' +
      '01 T2 ON (T2.NF_NOTANUMBER =  T1.NF_IT_NOTANUMER)'#13#10'LEFT JOIN OPV' +
      '0000 T3 ON (T3.OPV_CODIGO = T2.OPV_CODIGO)'#13#10'LEFT JOIN PRD0000 T4' +
      ' ON (T4.PRD_REFER = T1.PRD_REFER)'#13#10'LEFT JOIN PRD_TIPO T5 ON (T5.' +
      'PTI_CODIGO = T4.PTI_CODIGO)'#13#10'LEFT JOIN OPE0000 T6 ON (T6.OPE_COD' +
      'IGO = T2.OPE_CODIGO)'#13#10'LEFT JOIN PRD_GRUPO T7 ON (T7.PGR_CODIGO =' +
      ' T4.PGR_CODIGO)'#13#10'WHERE (T1.NF_FLAG_ATUALIZA_ESTOQUE = '#39#39') or (T1' +
      '.NF_FLAG_ATUALIZA_ESTOQUE IS NULL)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 34
    Top = 680
    object SqlFlag_notaNF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
      Required = True
    end
    object SqlFlag_notaPTI_ATUALIZAR_ESTOQUE: TStringField
      FieldName = 'PTI_ATUALIZAR_ESTOQUE'
      Size = 1
    end
    object SqlFlag_notaPGR_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'PGR_ATUALIZA_ESTOQUE'
      Size = 1
    end
    object SqlFlag_notaOPV_ATESTOQUE: TStringField
      FieldName = 'OPV_ATESTOQUE'
      FixedChar = True
      Size = 1
    end
    object SqlFlag_notaOPE_ESTOQUE: TStringField
      FieldName = 'OPE_ESTOQUE'
      Size = 1
    end
    object SqlFlag_notaPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
    object SqlFlag_notaNF_FLAG_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'NF_FLAG_ATUALIZA_ESTOQUE'
      Size = 1
    end
  end
  object SqlCdsEstoque: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.PRD_CODIGO,'#13#10'T1.PRD_REFER'#13#10'FROM PRD0000 T1'#13#10'ORDER BY'#13 +
      #10'T1.PRD_REFER'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T1.PRD_CODIGO,'#13#10'T1.PRD_REFER'#13#10'FROM PRD0000 T1'#13#10'ORDER BY'#13 +
      #10'T1.PRD_REFER'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 72
    Top = 680
    object SqlCdsEstoquePRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsEstoquePRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
  end
  object SqlCdsUltCompra: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'T1.ENF_PRECO,'#13#10'T1.ENF_IT_NOTANUMBER,'#13#10'T2.ENF_EMISSAO,'#13#10'T' +
      '1.FOR_CODIGO'#13#10'FROM ENF_IT01 T1'#13#10'LEFT JOIN ENF0001 T2 ON (T2.FOR_' +
      'CODIGO = T1.FOR_CODIGO) AND (T1.ENF_IT_NOTANUMBER = T2.ENF_NOTAN' +
      'UMBER) AND (T1.EMP_CODIGO = T2.EMP_CODIGO)'#13#10'LEFT JOIN FOR0000 T3' +
      ' ON (T3.FOR_CODIGO = T1.FOR_CODIGO) AND (T1.EMP_CODIGO = T3.EMP_' +
      'CODIGO)'#13#10'WHERE T1.PRD_REFER = '#39'385'#39#13#10'ORDER BY'#13#10'T2.ENF_EMISSAO DE' +
      'SC,'#13#10'T1.ENF_PRECO,'#13#10'T1.ENF_IT_NOTANUMBER desc'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T1.ENF_PRECO,'#13#10'T1.ENF_IT_NOTANUMBER,'#13#10'T2.ENF_EMISSAO,'#13#10'T' +
      '1.FOR_CODIGO'#13#10'FROM ENF_IT01 T1'#13#10'LEFT JOIN ENF0001 T2 ON (T2.FOR_' +
      'CODIGO = T1.FOR_CODIGO) AND (T1.ENF_IT_NOTANUMBER = T2.ENF_NOTAN' +
      'UMBER) AND (T1.EMP_CODIGO = T2.EMP_CODIGO)'#13#10'LEFT JOIN FOR0000 T3' +
      ' ON (T3.FOR_CODIGO = T1.FOR_CODIGO) AND (T1.EMP_CODIGO = T3.EMP_' +
      'CODIGO)'#13#10'WHERE T1.PRD_REFER = '#39'385'#39#13#10'ORDER BY'#13#10'T2.ENF_EMISSAO DE' +
      'SC,'#13#10'T1.ENF_PRECO,'#13#10'T1.ENF_IT_NOTANUMBER desc'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 104
    Top = 680
    object SqlCdsUltCompraENF_PRECO: TFMTBCDField
      FieldName = 'ENF_PRECO'
      Precision = 15
      Size = 5
    end
    object SqlCdsUltCompraENF_IT_NOTANUMBER: TStringField
      FieldName = 'ENF_IT_NOTANUMBER'
      Required = True
      Size = 6
    end
    object SqlCdsUltCompraENF_EMISSAO: TDateField
      FieldName = 'ENF_EMISSAO'
    end
    object SqlCdsUltCompraFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
  end
  object SqlAtualizaFlag: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT T1.* FROM PRD_ENSA T1 WHERE T1.PES_TIPDOC = '#39'AC'#39' AND T1.P' +
      'RD_REFER = '#39'TESTE'#39' ORDER BY T1.PES_REGISTRO DESC'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT T1.* FROM PRD_ENSA T1 WHERE T1.PES_TIPDOC = '#39'AC'#39' AND T1.P' +
      'RD_REFER = '#39'TESTE'#39' ORDER BY T1.PES_REGISTRO DESC'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 714
    Top = 700
    object SqlAtualizaFlagPES_REGISTRO: TIntegerField
      FieldName = 'PES_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlAtualizaFlagPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlAtualizaFlagPES_TIPO: TStringField
      FieldName = 'PES_TIPO'
      Size = 1
    end
    object SqlAtualizaFlagPES_QTDE: TFMTBCDField
      FieldName = 'PES_QTDE'
      Precision = 15
      Size = 4
    end
    object SqlAtualizaFlagPES_NUMDOC: TStringField
      FieldName = 'PES_NUMDOC'
      Size = 8
    end
    object SqlAtualizaFlagPES_TIPDOC: TStringField
      FieldName = 'PES_TIPDOC'
      Size = 2
    end
    object SqlAtualizaFlagPES_DATA: TSQLTimeStampField
      FieldName = 'PES_DATA'
    end
    object SqlAtualizaFlagEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlAtualizaFlagPES_ORIGEM: TStringField
      FieldName = 'PES_ORIGEM'
      Size = 10
    end
    object SqlAtualizaFlagPES_VALOR: TFMTBCDField
      FieldName = 'PES_VALOR'
      Precision = 15
      Size = 4
    end
    object SqlAtualizaFlagPES_VAR1: TFMTBCDField
      FieldName = 'PES_VAR1'
      Precision = 15
      Size = 4
    end
    object SqlAtualizaFlagPES_VAR2: TFMTBCDField
      FieldName = 'PES_VAR2'
      Precision = 15
      Size = 4
    end
    object SqlAtualizaFlagPES_VAR3: TFMTBCDField
      FieldName = 'PES_VAR3'
      Precision = 15
      Size = 4
    end
    object SqlAtualizaFlagPES_VAR4: TFMTBCDField
      FieldName = 'PES_VAR4'
      Precision = 15
      Size = 4
    end
    object SqlAtualizaFlagPES_VAR5: TFMTBCDField
      FieldName = 'PES_VAR5'
      Precision = 15
      Size = 4
    end
    object SqlAtualizaFlagPES_VAR6: TFMTBCDField
      FieldName = 'PES_VAR6'
      Precision = 15
      Size = 4
    end
    object SqlAtualizaFlagPES_VAR7: TFMTBCDField
      FieldName = 'PES_VAR7'
      Precision = 15
      Size = 4
    end
    object SqlAtualizaFlagPES_VAR8: TFMTBCDField
      FieldName = 'PES_VAR8'
      Precision = 15
      Size = 4
    end
    object SqlAtualizaFlagAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 3
    end
    object SqlAtualizaFlagFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object SqlAtualizaFlagPES_IPI: TFMTBCDField
      FieldName = 'PES_IPI'
      Precision = 15
      Size = 4
    end
    object SqlAtualizaFlagPES_FLAG_ACERTO: TStringField
      FieldName = 'PES_FLAG_ACERTO'
      Size = 1
    end
    object SqlAtualizaFlagPES_FLAG_CONTA: TStringField
      FieldName = 'PES_FLAG_CONTA'
      Size = 1
    end
    object SqlAtualizaFlagPES_HORA: TTimeField
      FieldName = 'PES_HORA'
    end
    object SqlAtualizaFlagPES_KARDEX_TIPO: TStringField
      FieldName = 'PES_KARDEX_TIPO'
      Size = 1
    end
    object SqlAtualizaFlagPES_KARDEX_OBS: TStringField
      FieldName = 'PES_KARDEX_OBS'
      Size = 40
    end
    object SqlAtualizaFlagPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
  end
  object SqlItens: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'SELECT DISTINCT(X1.PRD_REFER) FROM PRD_ENSA X1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT DISTINCT(X1.PRD_REFER) FROM PRD_ENSA X1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 682
    Top = 700
    object SqlItensPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
  end
  object SqlAcertos: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT E1.PES_REGISTRO,E1.PES_DATA, E1.PES_HORA from PRD_ENSA E1' +
      '  LEFT JOIN PRD0000 P1 ON (P1.PRD_REFER = E1.PRD_REFER) WHERE E1' +
      '.PES_TIPDOC = '#39'AC'#39' AND E1.PES_TIPO = '#39'E'#39' AND E1.PRD_REFER = '#39'TES' +
      'TE'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT E1.PES_REGISTRO,E1.PES_DATA, E1.PES_HORA from PRD_ENSA E1' +
      '  LEFT JOIN PRD0000 P1 ON (P1.PRD_REFER = E1.PRD_REFER) WHERE E1' +
      '.PES_TIPDOC = '#39'AC'#39' AND E1.PES_TIPO = '#39'E'#39' AND E1.PRD_REFER = '#39'TES' +
      'TE'#39
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 650
    Top = 700
    object SqlAcertosPES_REGISTRO: TIntegerField
      FieldName = 'PES_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlAcertosPES_DATA: TSQLTimeStampField
      FieldName = 'PES_DATA'
    end
    object SqlAcertosPES_HORA: TTimeField
      FieldName = 'PES_HORA'
    end
  end
  object CONSULTATMP: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'SELECT'#13#10'DISTINCT(PRD_REFER)'#13#10'FROM'#13#10'PRD_ENSA'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'SELECT'#13#10'DISTINCT(PRD_REFER)'#13#10'FROM'#13#10'PRD_ENSA'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 542
    Top = 737
  end
  object SQLNF_PC01: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from NF_PC01'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from NF_PC01'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 566
    Top = 649
    object SQLNF_PC01FAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object SQLNF_PC01FPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object SQLNF_PC01REP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SQLNF_PC01BAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object SQLNF_PC01CCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SQLNF_PC01PCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object SQLNF_PC01FPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
    end
    object SQLNF_PC01FPC_NPARCELAS: TSmallintField
      FieldName = 'FPC_NPARCELAS'
    end
    object SQLNF_PC01FPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Size = 16
    end
    object SQLNF_PC01FPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      Size = 2
    end
    object SQLNF_PC01FPC_TIPODOC: TStringField
      FieldName = 'FPC_TIPODOC'
      Size = 2
    end
    object SQLNF_PC01FPC_SITPAG: TStringField
      FieldName = 'FPC_SITPAG'
      Size = 1
    end
    object SQLNF_PC01FPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object SQLNF_PC01FPC_DESCTO: TFMTBCDField
      FieldName = 'FPC_DESCTO'
      Precision = 15
      Size = 4
    end
    object SQLNF_PC01FPC_DTDESC: TSQLTimeStampField
      FieldName = 'FPC_DTDESC'
    end
    object SQLNF_PC01FPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object SQLNF_PC01FPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
    end
    object SQLNF_PC01FPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      Precision = 15
      Size = 4
    end
    object SQLNF_PC01FPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      Precision = 15
      Size = 4
    end
    object SQLNF_PC01FPC_OBS: TStringField
      FieldName = 'FPC_OBS'
      Size = 50
    end
    object SQLNF_PC01CLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SQLNF_PC01FPC_IMPDUP: TStringField
      FieldName = 'FPC_IMPDUP'
      Size = 1
    end
    object SQLNF_PC01FPC_JUROS: TFMTBCDField
      FieldName = 'FPC_JUROS'
      Precision = 15
      Size = 4
    end
    object SQLNF_PC01FPC_MULTA: TFMTBCDField
      FieldName = 'FPC_MULTA'
      Precision = 15
      Size = 4
    end
    object SQLNF_PC01FPC_VL_RET: TFMTBCDField
      FieldName = 'FPC_VL_RET'
      Precision = 15
      Size = 4
    end
    object SQLNF_PC01EMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SQLNF_PC01CCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      Size = 3
    end
    object SQLNF_PC01FPC_PREVISAO: TStringField
      FieldName = 'FPC_PREVISAO'
      Size = 1
    end
    object SQLNF_PC01FPC_STATUS_REMESSA: TStringField
      FieldName = 'FPC_STATUS_REMESSA'
      FixedChar = True
      Size = 1
    end
    object SQLNF_PC01FPC_DATA_REMESSA: TDateField
      FieldName = 'FPC_DATA_REMESSA'
    end
    object SQLNF_PC01BAN_COD_APELIDO: TIntegerField
      FieldName = 'BAN_COD_APELIDO'
    end
    object SQLNF_PC01FPC_STATUS_BAIXA: TStringField
      FieldName = 'FPC_STATUS_BAIXA'
      FixedChar = True
      Size = 1
    end
    object SQLNF_PC01FPC_FORMAPAGTO: TStringField
      FieldName = 'FPC_FORMAPAGTO'
      Size = 2
    end
    object SQLNF_PC01FPC_DESCONTADO: TStringField
      FieldName = 'FPC_DESCONTADO'
      Size = 1
    end
    object SQLNF_PC01FPC_DATADESCTO: TDateField
      FieldName = 'FPC_DATADESCTO'
    end
    object SQLNF_PC01FPC_CONFIRMADESCTO: TStringField
      FieldName = 'FPC_CONFIRMADESCTO'
      Size = 1
    end
    object SQLNF_PC01FPC_CONFIRMADEVOLUCAO: TStringField
      FieldName = 'FPC_CONFIRMADEVOLUCAO'
      Size = 1
    end
    object SQLNF_PC01FPC_DATADEVOLUCAO: TDateField
      FieldName = 'FPC_DATADEVOLUCAO'
    end
    object SQLNF_PC01FPC_OBS_DESCTO: TStringField
      FieldName = 'FPC_OBS_DESCTO'
      Size = 25
    end
    object SQLNF_PC01FPC_JUROS_DESCTO: TFMTBCDField
      FieldName = 'FPC_JUROS_DESCTO'
      Precision = 15
      Size = 4
    end
    object SQLNF_PC01PAG_CODIGO: TStringField
      FieldName = 'PAG_CODIGO'
      Size = 5
    end
    object SQLNF_PC01FPC_BANCO_CHEQUE: TIntegerField
      FieldName = 'FPC_BANCO_CHEQUE'
    end
    object SQLNF_PC01FPC_NUM_CHEQUE: TStringField
      FieldName = 'FPC_NUM_CHEQUE'
      Size = 10
    end
    object SQLNF_PC01FPC_NUM_CHEQUE_DV: TStringField
      FieldName = 'FPC_NUM_CHEQUE_DV'
      Size = 1
    end
    object SQLNF_PC01FPC_CHEQUE_DATA: TDateField
      FieldName = 'FPC_CHEQUE_DATA'
    end
    object SQLNF_PC01FPC_SACADO_CHEQUE: TStringField
      FieldName = 'FPC_SACADO_CHEQUE'
      Size = 55
    end
    object SQLNF_PC01FPC_EXCLUSAO: TStringField
      FieldName = 'FPC_EXCLUSAO'
      Size = 1
    end
    object SQLNF_PC01FPC_DATA_EXCLUSAO: TDateField
      FieldName = 'FPC_DATA_EXCLUSAO'
    end
    object SQLNF_PC01FPC_HORA_EXCLUSAO: TTimeField
      FieldName = 'FPC_HORA_EXCLUSAO'
    end
    object SQLNF_PC01FPC_MOTIVO_EXCLUSAO: TStringField
      FieldName = 'FPC_MOTIVO_EXCLUSAO'
    end
    object SQLNF_PC01USU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object SQLNF_PC01USU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Size = 15
    end
  end
  object vXMLDoc: TXMLDocument
    Left = 584
    Top = 680
    DOMVendorDesc = 'MSXML'
  end
  object CdsProdutos: TClientDataSet
    PersistDataPacket.Data = {
      D90000009619E0BD010000001800000007000000000003000000D9000A526566
      6572656E6369610100490000000100055749445448020002000F000944657363
      726963616F020049000000010005574944544802000200FF00047469706F0100
      4900000001000557494454480200020003000D756E69646164654D6564696461
      010049000000010005574944544802000200030005677275706F020049000000
      010005574944544802000200FF0008737562477275706F020049000000010005
      574944544802000200FF00076573746F71756508000400000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'tipo'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'unidadeMedida'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'grupo'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'subGrupo'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'estoque'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 552
    Top = 680
    object CdsProdutosReferencia: TStringField
      FieldName = 'Referencia'
      Size = 15
    end
    object CdsProdutosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 255
    end
    object CdsProdutostipo: TStringField
      FieldName = 'tipo'
      Size = 3
    end
    object CdsProdutosunidadeMedida: TStringField
      FieldName = 'unidadeMedida'
      Size = 3
    end
    object CdsProdutosgrupo: TStringField
      FieldName = 'grupo'
      Size = 255
    end
    object CdsProdutossubGrupo: TStringField
      FieldName = 'subGrupo'
      Size = 255
    end
    object CdsProdutosestoque: TFloatField
      FieldName = 'estoque'
    end
  end
  object CdsGrades: TClientDataSet
    PersistDataPacket.Data = {
      530000009619E0BD01000000180000000200000000000300000053000A526566
      6572656E6369610100490000000100055749445448020002000F000567726164
      65020049000000010005574944544802000200FF000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 520
    Top = 680
    object CdsGradesReferencia: TStringField
      FieldName = 'Referencia'
      Size = 15
    end
    object CdsGradesgrade: TStringField
      FieldName = 'grade'
      Size = 255
    end
  end
end
