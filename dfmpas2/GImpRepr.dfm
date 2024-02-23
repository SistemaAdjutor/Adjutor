inherited FormGimpRepr: TFormGimpRepr
  Left = 248
  Top = 219
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gerenciador de Impress'#227'o (Vendedores)'
  ClientHeight = 693
  ClientWidth = 1056
  Font.Name = 'MS Sans Serif'
  Position = poMainFormCenter
  ExplicitWidth = 1062
  ExplicitHeight = 722
  PixelsPerInch = 96
  TextHeight = 13
  object GroupPeriodo: TGroupBox [0]
    Left = 0
    Top = 279
    Width = 553
    Height = 54
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    object pnPeriodo1: TPanel
      Left = 2
      Top = 15
      Width = 549
      Height = 37
      Align = alClient
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object LabelMes: TLabel
        Left = 27
        Top = 9
        Width = 26
        Height = 13
        Caption = 'M'#234's :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object LabelAno: TLabel
        Left = 89
        Top = 9
        Width = 25
        Height = 13
        Caption = 'Ano :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object EditMes: TEdit
        Left = 55
        Top = 5
        Width = 25
        Height = 21
        BiDiMode = bdRightToLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 2
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
        OnExit = EditMesExit
        OnKeyPress = EditMesKeyPress
      end
      object EditAno: TEdit
        Left = 120
        Top = 5
        Width = 38
        Height = 21
        BiDiMode = bdRightToLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 4
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        OnExit = EditAnoExit
        OnKeyPress = EditMesKeyPress
      end
      object gbDefinir: TGroupBox
        Left = 312
        Top = -2
        Width = 208
        Height = 40
        Caption = 'Definir Quinzena: Dias Inicial e Final'
        TabOrder = 2
        Visible = False
        object Label2: TLabel
          Left = 10
          Top = 19
          Width = 40
          Height = 13
          Caption = 'Primeira:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 112
          Top = 19
          Width = 46
          Height = 13
          Caption = 'Segunda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edPrimeira: TEdit
          Left = 56
          Top = 16
          Width = 38
          Height = 21
          BiDiMode = bdRightToLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 4
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          OnExit = EditAnoExit
          OnKeyPress = EditMesKeyPress
        end
        object edSegunda: TEdit
          Left = 158
          Top = 16
          Width = 38
          Height = 21
          BiDiMode = bdRightToLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 4
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
          OnExit = EditAnoExit
          OnKeyPress = EditMesKeyPress
        end
      end
    end
  end
  object GroupConfig: TGroupBox [1]
    Left = 0
    Top = 479
    Width = 553
    Height = 47
    TabOrder = 8
    object BitCancelar: TBitBtn
      Left = 465
      Top = 13
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = '&Cancelar'
      TabOrder = 1
      TabStop = False
      OnClick = BitCancelarClick
    end
    object BitConfig: TBitBtn
      Left = 12
      Top = 13
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Caption = '&Configura'#231#227'o de Impress'#227'o'
      TabOrder = 2
      TabStop = False
      OnClick = BitConfigClick
    end
    object BitOk: TBitBtn
      Left = 384
      Top = 13
      Width = 75
      Height = 25
      Caption = '&Ok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = BitOKClick
    end
  end
  object GroupObs: TGroupBox [2]
    Left = 0
    Top = 331
    Width = 553
    Height = 57
    Caption = 'Observa'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    object EditObs01: TEdit
      Left = 4
      Top = 17
      Width = 403
      Height = 17
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 105
      ParentFont = False
      TabOrder = 0
    end
    object EditObs02: TEdit
      Left = 4
      Top = 34
      Width = 403
      Height = 18
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 105
      ParentFont = False
      TabOrder = 1
    end
  end
  object GroupQuinzenas: TGroupBox [3]
    Left = 0
    Top = 239
    Width = 553
    Height = 41
    Caption = 'Imprimir:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object RadDuas: TRadioButton
      Left = 281
      Top = 16
      Width = 113
      Height = 17
      Caption = '1'#186' e 2'#186' &Quinzenas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = RadDuasClick
    end
    object RadSegunda: TRadioButton
      Left = 154
      Top = 16
      Width = 82
      Height = 17
      Caption = '&2'#186' Quinzena'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = RadSegundaClick
    end
    object RadPrimeira: TRadioButton
      Left = 21
      Top = 16
      Width = 97
      Height = 17
      Caption = '&1'#186' Quinzena'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = RadPrimeiraClick
    end
    object radDefinir: TRadioButton
      Left = 417
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Definir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = radDefinirClick
    end
  end
  object GroupClassif: TGroupBox [4]
    Left = 0
    Top = 152
    Width = 553
    Height = 41
    Caption = 'Classifica'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object RadCodi: TRadioButton
      Left = 281
      Top = 16
      Width = 113
      Height = 17
      Caption = '&C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object RadCida: TRadioButton
      Left = 154
      Top = 16
      Width = 82
      Height = 17
      Caption = 'UF+Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object RadAlfa: TRadioButton
      Left = 21
      Top = 16
      Width = 97
      Height = 17
      Caption = '&Alfab'#233'tica'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
  end
  object GroupAtivos: TGroupBox [5]
    Left = 0
    Top = 150
    Width = 553
    Height = 43
    Caption = 'Selecionar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object RadInativos: TRadioButton
      Left = 281
      Top = 16
      Width = 70
      Height = 17
      Caption = '&Inativos '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object RadAtivos: TRadioButton
      Left = 154
      Top = 16
      Width = 65
      Height = 17
      Caption = '&Ativos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object RadTodos: TRadioButton
      Left = 21
      Top = 16
      Width = 97
      Height = 17
      Caption = '&Todos'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
  end
  object GroupSelecao: TGroupBox [6]
    Left = 0
    Top = 100
    Width = 553
    Height = 51
    Caption = 'Sele'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object LabelRepre: TLabel
      Left = 30
      Top = 28
      Width = 49
      Height = 13
      Caption = 'Vendedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CbRepresentantes: TComboBox
      Left = 107
      Top = 25
      Width = 302
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'TODOS OS REPRESENTANTES'
      OnClick = CbRepresentantesClick
      OnExit = CbRepresentantesExit
      Items.Strings = (
        'TODOS OS REPRESENTANTES')
    end
    object EdtRep: TEdit
      AlignWithMargins = True
      Left = 82
      Top = 25
      Width = 25
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 0
      Text = '999'
      OnExit = EdtRepExit
      OnKeyPress = EdtRepKeyPress
    end
    object PanEquipe: TPanel
      Left = 82
      Top = 7
      Width = 317
      Height = 18
      BevelOuter = bvNone
      TabOrder = 2
      object RadGer: TRadioButton
        Left = 2
        Top = 2
        Width = 71
        Height = 17
        Caption = 'Gerente'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = RadGerClick
      end
      object RadSup: TRadioButton
        Left = 136
        Top = 2
        Width = 87
        Height = 17
        Caption = 'Supervisor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = RadGerClick
      end
    end
  end
  object GroupDispositivo: TGroupBox [7]
    Left = 330
    Top = 0
    Width = 121
    Height = 100
    Caption = 'Dispositivo de sa'#237'da'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object RadImpressora: TRadioButton
      Left = 14
      Top = 48
      Width = 81
      Height = 17
      Caption = '&Impressora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object RadVideo: TRadioButton
      Left = 14
      Top = 23
      Width = 65
      Height = 17
      Caption = '&V'#237'deo'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object rbExcel: TRadioButton
      Left = 14
      Top = 73
      Width = 81
      Height = 17
      Caption = '&Excel (csv)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox [8]
    Left = 0
    Top = 0
    Width = 329
    Height = 100
    Caption = 'Tipos de Relat'#243'rios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object LTBoxRelatorio: TListBox
      Left = 3
      Top = 15
      Width = 322
      Height = 82
      Style = lbOwnerDrawVariable
      Color = 11599871
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = LTBoxRelatorioClick
    end
  end
  object GroupGrupo: TGroupBox [9]
    Left = 0
    Top = 388
    Width = 553
    Height = 43
    Caption = 'Filtrar por Grupo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    object Label1: TLabel
      Left = 8
      Top = 19
      Width = 96
      Height = 13
      Caption = 'Grupo do Vendedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edt_Grupo: TEdit
      Left = 129
      Top = 16
      Width = 25
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 0
    end
  end
  object GpTipoRel: TGroupBox [10]
    Left = 0
    Top = 197
    Width = 553
    Height = 44
    Caption = 'Op'#231#227'o de relat'#243'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    Visible = False
    object RadSintetico: TRadioButton
      Left = 88
      Top = 16
      Width = 65
      Height = 17
      Caption = 'Sint'#233'tico'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object RadAnalitico: TRadioButton
      Left = 256
      Top = 16
      Width = 73
      Height = 17
      Caption = 'Analitico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object rgEmpresaLogada: TRadioGroup [11]
    Left = 456
    Top = 0
    Width = 97
    Height = 100
    Caption = 'Empresa'
    ItemIndex = 1
    Items.Strings = (
      'Logada'
      'Todas')
    TabOrder = 11
    OnClick = rgEmpresaLogadaClick
    OnExit = rgEmpresaLogadaExit
  end
  object gbProduto: TGroupBox [12]
    Left = 1
    Top = 431
    Width = 551
    Height = 50
    Caption = 'Produtos'
    TabOrder = 12
    object cbProduto: TSgDbSearchCombo
      Left = 106
      Top = 16
      Width = 402
      Height = 21
      TabOrder = 0
      LookupSelect = 'PRD_REFER, PRD_DESCRI'
      LookupOrderBy = 'PRD_DESCRI'
      LookupTable = 'PRD0000'
      LookupDispl = 'PRD_DESCRI'
      OnSelect = cbProdutoSelect
      GridAutoSize = False
      LookupSource = qProduto
      LookupKeyField = 'PRD_REFER'
      ShowButton = True
      LookupTableShare = 'PRODUTOS'
      AutoF8WinTitulo = 'Produtos'
      AutoF8ColumnsTitulo = 'Refer'#234'ncia, Descri'#231#227'o'
      LookupDbGridColumns = 'PRD_REFER, PRD_DESCRI'
      LookupDbGridColumnsTitle = 'Refer'#234'ncia, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridTop = 0
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
      LimparCampoAoSair = True
    end
    object edProduto: TEdit
      Left = 11
      Top = 16
      Width = 88
      Height = 21
      TabOrder = 1
      OnExit = edProdutoExit
    end
  end
  object PrinterBordero: TPrinterSetupDialog
    Left = 198
    Top = 465
  end
  object SqlCdsRepre: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT '#13#10'R1.REP_CODIGO,'#13#10'R1.REP_NOME,'#13#10'R1.REP_FUNCAO,'#13#10'FROM REP0' +
      '000 R1'#13#10'ORDER BY '#13#10'R1.REP_NOME'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT '#13#10'R1.REP_CODIGO,'#13#10'R1.REP_NOME,'#13#10'R1.REP_FUNCAO,'#13#10'FROM REP0' +
      '000 R1'#13#10'ORDER BY '#13#10'R1.REP_NOME'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 488
    Top = 384
    object SqlCdsRepreREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsRepreREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object SqlCdsRepreREP_FUNCAO: TStringField
      FieldName = 'REP_FUNCAO'
      Size = 1
    end
  end
  object SqlCdsRepresentantes: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select R1.* from REP0000 R1'
    DataSet.MaxBlobSize = 1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select R1.* from REP0000 R1'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 600
    object SqlCdsRepresentantesREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCdsRepresentantesREP_GRUPO: TStringField
      FieldName = 'REP_GRUPO'
      Size = 2
    end
    object SqlCdsRepresentantesREG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      Size = 3
    end
    object SqlCdsRepresentantesREP_FUNCAO: TStringField
      FieldName = 'REP_FUNCAO'
      Size = 1
    end
    object SqlCdsRepresentantesREP_SUPERVISAO: TStringField
      FieldName = 'REP_SUPERVISAO'
      Size = 3
    end
    object SqlCdsRepresentantesREP_GERENTE: TStringField
      FieldName = 'REP_GERENTE'
      Size = 3
    end
    object SqlCdsRepresentantesREP_RAZAO: TStringField
      FieldName = 'REP_RAZAO'
      Size = 40
    end
    object SqlCdsRepresentantesREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object SqlCdsRepresentantesREP_ENDERE: TStringField
      FieldName = 'REP_ENDERE'
      Size = 40
    end
    object SqlCdsRepresentantesREP_CIDADE: TStringField
      FieldName = 'REP_CIDADE'
      Size = 30
    end
    object SqlCdsRepresentantesREP_CELULAR: TStringField
      FieldName = 'REP_CELULAR'
      Size = 11
    end
    object SqlCdsRepresentantesREP_CONTA: TStringField
      FieldName = 'REP_CONTA'
      Size = 12
    end
    object SqlCdsRepresentantesREP_AGENCIA: TStringField
      FieldName = 'REP_AGENCIA'
      Size = 6
    end
    object SqlCdsRepresentantesREP_BANCO: TStringField
      FieldName = 'REP_BANCO'
      Size = 25
    end
    object SqlCdsRepresentantesREP_BANCOFAVOR: TStringField
      FieldName = 'REP_BANCOFAVOR'
      Size = 30
    end
    object SqlCdsRepresentantesREP_UF: TStringField
      FieldName = 'REP_UF'
      Size = 2
    end
    object SqlCdsRepresentantesREP_CEP: TStringField
      FieldName = 'REP_CEP'
      Size = 8
    end
    object SqlCdsRepresentantesREP_FONE: TStringField
      FieldName = 'REP_FONE'
      Size = 11
    end
    object SqlCdsRepresentantesREP_FAX: TStringField
      FieldName = 'REP_FAX'
      Size = 11
    end
    object SqlCdsRepresentantesREP_EMAIL: TStringField
      FieldName = 'REP_EMAIL'
      Size = 35
    end
    object SqlCdsRepresentantesREP_TIPO: TStringField
      FieldName = 'REP_TIPO'
      Size = 1
    end
    object SqlCdsRepresentantesREP_SITUACAO: TStringField
      FieldName = 'REP_SITUACAO'
      Size = 1
    end
    object SqlCdsRepresentantesREP_OBS: TMemoField
      FieldName = 'REP_OBS'
      BlobType = ftMemo
      Size = 1
    end
    object SqlCdsRepresentantesREP_QUOTA: TFMTBCDField
      FieldName = 'REP_QUOTA'
      Precision = 15
    end
    object SqlCdsRepresentantesREP_NDEPEND: TSmallintField
      FieldName = 'REP_NDEPEND'
    end
    object SqlCdsRepresentantesREP_DTNASC: TSQLTimeStampField
      FieldName = 'REP_DTNASC'
    end
    object SqlCdsRepresentantesREP_INSC: TStringField
      FieldName = 'REP_INSC'
      Size = 14
    end
    object SqlCdsRepresentantesREP_CGC: TStringField
      FieldName = 'REP_CGC'
      Size = 14
    end
    object SqlCdsRepresentantesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DsRepresentantes: TDataSource
    DataSet = SqlCdsRepresentantes
    Left = 704
  end
  object ppRP03: TppReport
    AutoStop = False
    DataPipeline = ppDBRepresentantes
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 5000
    PrinterSetup.mmMarginRight = 5000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Developer\Adjutor\fontesrelatorios\RELREPRESENTANTES01.rtm'
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
    LanguageID = 'Default'
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
    Left = 856
    Top = 240
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRepresentantes'
    object pp00HeaderBand2: TppHeaderBand
      BeforePrint = pp00HeaderBand2BeforePrint
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 205000
        BandType = 0
        LayerName = Foreground
      end
      object LBL_03_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_03_EMPRESA'
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
        mmHeight = 4057
        mmLeft = 0
        mmTop = 794
        mmWidth = 29845
        BandType = 0
        LayerName = Foreground
      end
      object LBL_03_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_03_LTITULO1'
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
        mmHeight = 4057
        mmLeft = 0
        mmTop = 6085
        mmWidth = 14393
        BandType = 0
        LayerName = Foreground
      end
      object LBL_03_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_03_LTITULO2'
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
        mmHeight = 4057
        mmLeft = 0
        mmTop = 10848
        mmWidth = 14393
        BandType = 0
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 15345
        mmWidth = 205000
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
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
        Transparent = True
        mmHeight = 4057
        mmLeft = 178330
        mmTop = 794
        mmWidth = 31962
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable4: TppSystemVariable
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
        Transparent = True
        mmHeight = 4057
        mmLeft = 189971
        mmTop = 10848
        mmWidth = 21590
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'COD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 15875
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VENDEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3260
        mmLeft = 6879
        mmTop = 15875
        mmWidth = 16044
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'FUN'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 62706
        mmTop = 15875
        mmWidth = 12065
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 93398
        mmTop = 15875
        mmWidth = 11007
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
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
        mmHeight = 3175
        mmLeft = 126736
        mmTop = 15875
        mmWidth = 3810
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'FONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 134938
        mmTop = 15875
        mmWidth = 7832
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 19315
        mmWidth = 205000
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'FAX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 156634
        mmTop = 15875
        mmWidth = 5503
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'SITUA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 178594
        mmTop = 15875
        mmWidth = 14605
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TIPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 196586
        mmTop = 15875
        mmWidth = 6562
        BandType = 0
        LayerName = Foreground
      end
    end
    object pp00DetailBand2: TppDetailBand
      Border.mmPadding = 0
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_CODIGO'
        DataPipeline = ppDBRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRepresentantes'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_NOME'
        DataPipeline = ppDBRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRepresentantes'
        mmHeight = 3175
        mmLeft = 6615
        mmTop = 0
        mmWidth = 55000
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_CIDADE'
        DataPipeline = ppDBRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRepresentantes'
        mmHeight = 3175
        mmLeft = 93398
        mmTop = 0
        mmWidth = 32279
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_UF'
        DataPipeline = ppDBRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRepresentantes'
        mmHeight = 3175
        mmLeft = 126736
        mmTop = 0
        mmWidth = 6615
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_FONE'
        DataPipeline = ppDBRepresentantes
        DisplayFormat = '\(999\)9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRepresentantes'
        mmHeight = 3175
        mmLeft = 134938
        mmTop = 0
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_FAX'
        DataPipeline = ppDBRepresentantes
        DisplayFormat = '\(999\)9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRepresentantes'
        mmHeight = 3175
        mmLeft = 156634
        mmTop = 0
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_TIPO'
        DataPipeline = ppDBRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBRepresentantes'
        mmHeight = 3175
        mmLeft = 196586
        mmTop = 0
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 62971
        mmTop = 0
        mmWidth = 11430
        BandType = 4
        LayerName = Foreground
      end
      object ppVariable2: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 178594
        mmTop = 0
        mmWidth = 11430
        BandType = 4
        LayerName = Foreground
      end
    end
    object pp00SummaryBand2: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total de Vendedores Listado(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 529
        mmWidth = 40344
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataPipeline = ppDBRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBRepresentantes'
        mmHeight = 3175
        mmLeft = 46567
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'REP_GRUPO'
      DataPipeline = ppDBRepresentantes
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRepresentantes'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLabel55: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label101'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Grupo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 265
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine19: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line19'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 3704
          mmWidth = 205052
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText38: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText38'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'REP_GRUPO'
          DataPipeline = ppDBRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBRepresentantes'
          mmHeight = 3175
          mmLeft = 10583
          mmTop = 265
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 265
        mmPrintPosition = 0
        object ppLine21: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line21'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 205052
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object raCodeModule2: TraCodeModule
      object raProgramInfo1: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable1OnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable1OnGetText(var Text: String);'#13#10'Var'#13#10'  wTipo:St' +
          'ring;'#13#10'begin'#13#10'    wTipo:=DBRepresentantes['#39'REP_FUNCAO'#39'];'#13#10'    if' +
          ' (wTipo='#39'R'#39') then'#13#10'       Text :='#39'REPRESENTANTE'#39';'#13#10'    if (wTipo' +
          '='#39'G'#39') then'#13#10'       Text :='#39'GERENTE'#39';'#13#10'    if (wTipo='#39'S'#39') then'#13#10' ' +
          '      Text:='#39'SUPERVISOR'#39';'#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable1'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
      end
      object raProgramInfo2: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable2OnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable2OnGetText(var Text: String);'#13#10'Var'#13#10'  wAtivo:S' +
          'tring;'#13#10'begin'#13#10'    wAtivo:=DBRepresentantes['#39'REP_SITUACAO'#39'];'#13#10'  ' +
          '  if (wAtivo='#39'A'#39') then'#13#10'       Text := '#39'ATIVO'#39';'#13#10'    if (wAtivo=' +
          #39'I'#39') then'#13#10'       Text := '#39'INATIVO'#39';   '#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable2'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
      end
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
  object ppDBRepresentantes: TppDBPipeline
    DataSource = DsRepresentantes
    UserName = 'DBRepresentantes'
    Left = 808
    Top = 5
    object ppDBRepresentantesppField1: TppField
      FieldAlias = 'REP_CODIGO'
      FieldName = 'REP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField2: TppField
      FieldAlias = 'REP_GRUPO'
      FieldName = 'REP_GRUPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField3: TppField
      FieldAlias = 'REG_CODIGO'
      FieldName = 'REG_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField4: TppField
      FieldAlias = 'REP_FUNCAO'
      FieldName = 'REP_FUNCAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField5: TppField
      FieldAlias = 'REP_SUPERVISAO'
      FieldName = 'REP_SUPERVISAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField6: TppField
      FieldAlias = 'REP_GERENTE'
      FieldName = 'REP_GERENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField7: TppField
      FieldAlias = 'REP_RAZAO'
      FieldName = 'REP_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField8: TppField
      FieldAlias = 'REP_NOME'
      FieldName = 'REP_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField9: TppField
      FieldAlias = 'REP_ENDERE'
      FieldName = 'REP_ENDERE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField10: TppField
      FieldAlias = 'REP_CIDADE'
      FieldName = 'REP_CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField11: TppField
      FieldAlias = 'REP_CELULAR'
      FieldName = 'REP_CELULAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField12: TppField
      FieldAlias = 'REP_CONTA'
      FieldName = 'REP_CONTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField13: TppField
      FieldAlias = 'REP_AGENCIA'
      FieldName = 'REP_AGENCIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField14: TppField
      FieldAlias = 'REP_BANCO'
      FieldName = 'REP_BANCO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField15: TppField
      FieldAlias = 'REP_BANCOFAVOR'
      FieldName = 'REP_BANCOFAVOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField16: TppField
      FieldAlias = 'REP_UF'
      FieldName = 'REP_UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField17: TppField
      FieldAlias = 'REP_CEP'
      FieldName = 'REP_CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField18: TppField
      FieldAlias = 'REP_FONE'
      FieldName = 'REP_FONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField19: TppField
      FieldAlias = 'REP_FAX'
      FieldName = 'REP_FAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField20: TppField
      FieldAlias = 'REP_EMAIL'
      FieldName = 'REP_EMAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField21: TppField
      FieldAlias = 'REP_TIPO'
      FieldName = 'REP_TIPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField22: TppField
      FieldAlias = 'REP_SITUACAO'
      FieldName = 'REP_SITUACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField23: TppField
      FieldAlias = 'REP_OBS'
      FieldName = 'REP_OBS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField24: TppField
      FieldAlias = 'REP_QUOTA'
      FieldName = 'REP_QUOTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField25: TppField
      FieldAlias = 'REP_NDEPEND'
      FieldName = 'REP_NDEPEND'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField26: TppField
      FieldAlias = 'REP_DTNASC'
      FieldName = 'REP_DTNASC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField27: TppField
      FieldAlias = 'REP_INSC'
      FieldName = 'REP_INSC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField28: TppField
      FieldAlias = 'REP_CGC'
      FieldName = 'REP_CGC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBRepresentantesppField29: TppField
      FieldAlias = 'EMP_CODIGO'
      FieldName = 'EMP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
  end
  object ppRP04: TppReport
    AutoStop = False
    DataPipeline = ppDBRepresentantes
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 5000
    PrinterSetup.mmMarginRight = 5000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Developer\Adjutor\fontesrelatorios\RELCONPAGAR01.rtm'
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
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
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
    Left = 992
    Top = 272
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRepresentantes'
    object pp04HeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 15610
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 205000
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_04_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_04_EMPRESA'
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
        mmHeight = 4057
        mmLeft = 0
        mmTop = 794
        mmWidth = 29845
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_04_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_04_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 6085
        mmWidth = 11430
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_04_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_04_LTITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 10848
        mmWidth = 11430
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 15345
        mmWidth = 205000
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 178330
        mmTop = 794
        mmWidth = 24977
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 189971
        mmTop = 10848
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground1
      end
    end
    object pp04DetailBand1: TppDetailBand
      Border.mmPadding = 0
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 36777
      mmPrintPosition = 0
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CIDADE.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 12912
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_CIDADE'
        DataPipeline = ppDBRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBRepresentantes'
        mmHeight = 3528
        mmLeft = 13758
        mmTop = 0
        mmWidth = 82021
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 100806
        mmTop = 0
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_UF'
        DataPipeline = ppDBRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBRepresentantes'
        mmHeight = 3440
        mmLeft = 112713
        mmTop = 0
        mmWidth = 4763
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'SITUA'#199#195'O.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 171980
        mmTop = 0
        mmWidth = 16722
        BandType = 4
        LayerName = Foreground1
      end
      object ppVariable3: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'VSituacao'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 190500
        mmTop = 0
        mmWidth = 13335
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 8128
        mmTop = 4233
        mmWidth = 13039
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Empresa.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 7409
        mmTop = 8202
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Fone.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 12276
        mmTop = 15875
        mmWidth = 7832
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'E-mail.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 10584
        mmTop = 19844
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'OBS/SETOR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 2752
        mmTop = 23813
        mmWidth = 17357
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'C'#243'digo.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 101547
        mmTop = 4233
        mmWidth = 10372
        BandType = 4
        LayerName = Foreground1
      end
      object LblCgcCpf: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblCgcCpf'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CNPJ/CPF.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 96044
        mmTop = 8202
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label21'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CEP.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 104299
        mmTop = 15875
        mmWidth = 7620
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label22'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Celular.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 101547
        mmTop = 19844
        mmWidth = 10372
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label23'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Fax.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 61912
        mmTop = 15875
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_NOME'
        DataPipeline = ppDBRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRepresentantes'
        mmHeight = 3175
        mmLeft = 20638
        mmTop = 4233
        mmWidth = 48683
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_RAZAO'
        DataPipeline = ppDBRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRepresentantes'
        mmHeight = 3175
        mmLeft = 20638
        mmTop = 8202
        mmWidth = 75142
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_FONE'
        DataPipeline = ppDBRepresentantes
        DisplayFormat = '\(999\)9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRepresentantes'
        mmHeight = 3704
        mmLeft = 20638
        mmTop = 15875
        mmWidth = 26988
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_FAX'
        DataPipeline = ppDBRepresentantes
        DisplayFormat = '\(999\)9999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRepresentantes'
        mmHeight = 3704
        mmLeft = 68792
        mmTop = 15875
        mmWidth = 26988
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_EMAIL'
        DataPipeline = ppDBRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRepresentantes'
        mmHeight = 3704
        mmLeft = 20638
        mmTop = 19844
        mmWidth = 63500
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_CODIGO'
        DataPipeline = ppDBRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRepresentantes'
        mmHeight = 3175
        mmLeft = 112448
        mmTop = 4233
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText18'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_CEP'
        DataPipeline = ppDBRepresentantes
        DisplayFormat = '99\.999\-999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRepresentantes'
        mmHeight = 3704
        mmLeft = 112448
        mmTop = 15875
        mmWidth = 24077
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_CELULAR'
        DataPipeline = ppDBRepresentantes
        DisplayFormat = '\(99\)99999\-9999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRepresentantes'
        mmHeight = 3704
        mmLeft = 112448
        mmTop = 19844
        mmWidth = 30692
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 36512
        mmWidth = 205052
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer2
        UserName = 'DBMemo1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'REP_OBS'
        DataPipeline = ppDBRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        TextAlignment = taFullJustified
        Transparent = True
        DataPipelineName = 'ppDBRepresentantes'
        mmHeight = 12171
        mmLeft = 20638
        mmTop = 23813
        mmWidth = 75671
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBTextCgcCpf: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBTextCgcCpf'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_CGC'
        DataPipeline = ppDBRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRepresentantes'
        mmHeight = 3175
        mmLeft = 112448
        mmTop = 8202
        mmWidth = 30427
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label24'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'FUN'#199#195'O.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 128852
        mmTop = 4233
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground1
      end
      object VarFuncao: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'VarFuncao'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 142875
        mmTop = 4233
        mmWidth = 13335
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label57'
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 7620
        mmTop = 12171
        mmWidth = 12488
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText41'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_ENDERE'
        DataPipeline = ppDBRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRepresentantes'
        mmHeight = 3175
        mmLeft = 20902
        mmTop = 12171
        mmWidth = 74877
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line20'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1588
        mmTop = 0
        mmWidth = 205052
        BandType = 4
        LayerName = Foreground1
      end
    end
    object pp04SummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total de Vendedores Listados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 529
        mmWidth = 38481
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataPipeline = ppDBRepresentantes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBRepresentantes'
        mmHeight = 3175
        mmLeft = 46567
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground1
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'REP_GRUPO'
      DataPipeline = ppDBRepresentantes
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRepresentantes'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppLabel56: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label56'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'GRUPO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 265
          mmWidth = 11218
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText39: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText39'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'REP_GRUPO'
          DataPipeline = ppDBRepresentantes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRepresentantes'
          mmHeight = 3175
          mmLeft = 11642
          mmTop = 265
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
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
    object raCodeModule1: TraCodeModule
      object raProgramInfo3: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'VSituacaoOnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure VSituacaoOnGetText(var Text: String);'#13#10'Var'#13#10'  wSitua:S' +
          'tring;'#13#10'begin'#13#10'    wSitua:=DBRepresentantes['#39'REP_SITUACAO'#39'];'#13#10'  ' +
          '  if (wSitua='#39'A'#39') then'#13#10'       Text := '#39'ATIVO'#39';'#13#10'    if (wSitua=' +
          #39'I'#39') then'#13#10'       Text := '#39'INATIVO'#39';   '#13#10'end;'#13#10
        raProgram.ComponentName = 'VSituacao'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
      end
      object raProgramInfo4: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'DBTextCgcCpfOnPrint'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure DBTextCgcCpfOnPrint;'#13#10'Var'#13#10'  wCgc:string;'#13#10'begin'#13#10'    ' +
          'wCgc:=TrimRight(DBRepresentantes['#39'REP_CGC'#39']);'#13#10'    if length(wCg' +
          'c)=14 then'#13#10'       begin'#13#10'           LblCgcCpf.Caption:='#39'CNPJ.:'#39 +
          ';'#13#10'           DBTextCgcCpf.DisplayFormat:='#39'99\.999\.999\/9999-99' +
          ';0;_'#39#13#10'       end    '#13#10'    else'#13#10'       begin'#13#10'           LblCgc' +
          'Cpf.Caption:='#39'CPF.:'#39';'#13#10'           DBTextCgcCpf.DisplayFormat:='#39'9' +
          '99\.999\.999\-99;0;_'#39';'#13#10'       end;    '#13#10'    end;'#13#10
        raProgram.ComponentName = 'DBTextCgcCpf'
        raProgram.EventName = 'OnPrint'
        raProgram.EventID = 32
      end
      object raProgramInfo5: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'VarFuncaoOnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure VarFuncaoOnGetText(var Text: String);'#13#10'Var'#13#10'  wFuncao:' +
          'String;'#13#10'begin'#13#10'    wFuncao:= DBRepresentantes['#39'REP_FUNCAO'#39'];'#13#10' ' +
          '   if (wFuncao='#39'R'#39') then'#13#10'       Text := '#39'REPRESENTANTE'#39';'#13#10'    i' +
          'f (wFuncao='#39'S'#39') then'#13#10'       Text := '#39'SUPERVISOR'#39';'#13#10'    if (wFun' +
          'cao='#39'G'#39') then'#13#10'       Text := '#39'GERENTE'#39';'#13#10'end;'#13#10
        raProgram.ComponentName = 'VarFuncao'
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
  object SqlCdsParametros: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'X1.PMT_COMIS_PROD,'#13#10'X1.PMT_1QZ_DIAS,'#13#10'X1.PMT_2QZ_DIAS,'#13#10 +
      'X1.PMT_PAGTO_COM_TP,'#13#10'X1.PMT_IRRF,'#13#10'X1.PMT_BORDERO_COM'#13#10'FROM PRM' +
      'T0001 X1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'X1.PMT_COMIS_PROD,'#13#10'X1.PMT_1QZ_DIAS,'#13#10'X1.PMT_2QZ_DIAS,'#13#10 +
      'X1.PMT_PAGTO_COM_TP,'#13#10'X1.PMT_IRRF,'#13#10'X1.PMT_BORDERO_COM'#13#10'FROM PRM' +
      'T0001 X1'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 472
    Top = 512
    object SqlCdsParametrosPMT_COMIS_PROD: TStringField
      FieldName = 'PMT_COMIS_PROD'
      Size = 1
    end
    object SqlCdsParametrosPMT_1QZ_DIAS: TStringField
      FieldName = 'PMT_1QZ_DIAS'
      Size = 4
    end
    object SqlCdsParametrosPMT_2QZ_DIAS: TStringField
      FieldName = 'PMT_2QZ_DIAS'
      Size = 4
    end
    object SqlCdsParametrosPMT_PAGTO_COM_TP: TStringField
      FieldName = 'PMT_PAGTO_COM_TP'
      Size = 1
    end
    object SqlCdsParametrosPMT_IRRF: TFMTBCDField
      FieldName = 'PMT_IRRF'
      Precision = 15
    end
    object SqlCdsParametrosPMT_BORDERO_COM: TStringField
      FieldName = 'PMT_BORDERO_COM'
      Size = 1
    end
    object SqlCdsParametrosPMT_COMIS_SOBRE_DIF_VENDA_CUSTO: TStringField
      FieldName = 'PMT_COMIS_SOBRE_DIF_VENDA_CUSTO'
      Size = 1
    end
  end
  object SqlCdsComissao: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'N1.nf_num_nfe,'#13#10'F2.FAT_CODIGO,'#13#10'F2.FPC_NUMER,'#13#10'F2.REP_CO' +
      'DIGO,'#13#10'F2.FPC_DTEMIS,'#13#10'F2.FPC_VLPARC,'#13#10'F2.FPC_PAGTO,'#13#10'F2.FPC_VEN' +
      'CTO,'#13#10'F2.FPC_VLPAGO,'#13#10'F2.FPC_NPARCELAS,'#13#10'F2.FPC_DESCONTADO,'#13#10'F1.' +
      'FAT_CANCELADA,'#13#10'F1.PED_CODIGO,'#13#10'F1.FAT_VL_LIQ,'#13#10'F1.FAT_VLNCOMIS,' +
      #13#10'F1.FAT_DTEMIS,'#13#10'F1.FAT_COMIS1,'#13#10'F1.FAT_COMIS2,'#13#10'F1.FAT_COMIS3,' +
      #13#10'F1.FAT_CANCELADA,'#13#10'F1.FAT_VLFAT,'#13#10'R1.REP_FUNCAO,'#13#10'       f1.fa' +
      't_icmsret,'#13#10'       f1.fat_vl_ipi'#13#10'FROM FAT_PC01 F2'#13#10'JOIN FAT0000' +
      ' F1 ON (F1.FAT_CODIGO = F2.FAT_CODIGO) AND (F2.EMP_CODIGO = F1.E' +
      'MP_CODIGO)  AND ((F1.OPV_CODIGO =15 ) or (F1.OPV_CODIGO =22) or ' +
      '(F1.OPV_CODIGO = 23))'#13#10'JOIN REP0000 R1 ON (R1.rep_codigo = F2.RE' +
      'P_CODIGO)'#13#10'LEFT JOIN nf0001 N1 ON (N1.nf_notanumber = F1.fat_cod' +
      'igo)'#13#10'WHERE (F1.FAT_DTEMIS BETWEEN '#39'11/11/2004'#39' AND '#39'11/25/2040'#39 +
      ')'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'N1.nf_num_nfe,'#13#10'F2.FAT_CODIGO,'#13#10'F2.FPC_NUMER,'#13#10'F2.REP_CO' +
      'DIGO,'#13#10'F2.FPC_DTEMIS,'#13#10'F2.FPC_VLPARC,'#13#10'F2.FPC_PAGTO,'#13#10'F2.FPC_VEN' +
      'CTO,'#13#10'F2.FPC_VLPAGO,'#13#10'F2.FPC_NPARCELAS,'#13#10'F2.FPC_DESCONTADO,'#13#10'F1.' +
      'FAT_CANCELADA,'#13#10'F1.PED_CODIGO,'#13#10'F1.FAT_VL_LIQ,'#13#10'F1.FAT_VLNCOMIS,' +
      #13#10'F1.FAT_DTEMIS,'#13#10'F1.FAT_COMIS1,'#13#10'F1.FAT_COMIS2,'#13#10'F1.FAT_COMIS3,' +
      #13#10'F1.FAT_CANCELADA,'#13#10'F1.FAT_VLFAT,'#13#10'R1.REP_FUNCAO,'#13#10'       f1.fa' +
      't_icmsret,'#13#10'       f1.fat_vl_ipi'#13#10'FROM FAT_PC01 F2'#13#10'JOIN FAT0000' +
      ' F1 ON (F1.FAT_CODIGO = F2.FAT_CODIGO) AND (F2.EMP_CODIGO = F1.E' +
      'MP_CODIGO)  AND ((F1.OPV_CODIGO =15 ) or (F1.OPV_CODIGO =22) or ' +
      '(F1.OPV_CODIGO = 23))'#13#10'JOIN REP0000 R1 ON (R1.rep_codigo = F2.RE' +
      'P_CODIGO)'#13#10'LEFT JOIN nf0001 N1 ON (N1.nf_notanumber = F1.fat_cod' +
      'igo)'#13#10'WHERE (F1.FAT_DTEMIS BETWEEN '#39'11/11/2004'#39' AND '#39'11/25/2040'#39 +
      ')'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 776
    Top = 233
    object SqlCdsComissaoFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsComissaoFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object SqlCdsComissaoREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SqlCdsComissaoFPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
    end
    object SqlCdsComissaoFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      Precision = 15
    end
    object SqlCdsComissaoFPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
    end
    object SqlCdsComissaoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsComissaoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object SqlCdsComissaoCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object SqlCdsComissaoFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object SqlCdsComissaoFPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      Precision = 15
    end
    object SqlCdsComissaoFPC_NPARCELAS: TSmallintField
      FieldName = 'FPC_NPARCELAS'
    end
    object SqlCdsComissaoFAT_CANCELADA: TStringField
      FieldName = 'FAT_CANCELADA'
      Size = 1
    end
    object SqlCdsComissaoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object SqlCdsComissaoFAT_QTDITEM: TFMTBCDField
      FieldName = 'FAT_QTDITEM'
      Precision = 15
    end
    object SqlCdsComissaoFAT_VL_LIQ: TFMTBCDField
      FieldName = 'FAT_VL_LIQ'
      Precision = 15
    end
    object SqlCdsComissaoFAT_VLNCOMIS: TFMTBCDField
      FieldName = 'FAT_VLNCOMIS'
      Precision = 15
    end
    object SqlCdsComissaoFAT_DTEMIS: TSQLTimeStampField
      FieldName = 'FAT_DTEMIS'
    end
    object SqlCdsComissaoFAT_COMIS1: TFMTBCDField
      FieldName = 'FAT_COMIS1'
      Precision = 15
    end
    object SqlCdsComissaoFAT_COMIS2: TFMTBCDField
      FieldName = 'FAT_COMIS2'
      Precision = 15
    end
    object SqlCdsComissaoFAT_COMIS3: TFMTBCDField
      FieldName = 'FAT_COMIS3'
      Precision = 15
    end
    object SqlCdsComissaoFAT_VLFAT: TFMTBCDField
      FieldName = 'FAT_VLFAT'
      Precision = 15
    end
    object SqlCdsComissaoREP_FUNCAO: TStringField
      FieldName = 'REP_FUNCAO'
      Size = 1
    end
    object SqlCdsComissaoFPC_DESCONTADO: TStringField
      FieldName = 'FPC_DESCONTADO'
      Size = 1
    end
    object SqlCdsComissaoNF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object SqlCdsComissaoFAT_ICMSRET: TFMTBCDField
      FieldName = 'FAT_ICMSRET'
      Precision = 20
      Size = 5
    end
    object SqlCdsComissaoFAT_VL_IPI: TFMTBCDField
      FieldName = 'FAT_VL_IPI'
      Precision = 20
      Size = 5
    end
  end
  object SqlCdsEventos: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'E1.EMP_CODIGO,'#13#10'E1.REP_CODIGO,'#13#10'E1.EVE_CODIGO,'#13#10'E2.EVE_D' +
      'ESCRI,'#13#10'E1.ERP_VALOR,'#13#10'E1.ERP_TIPO,'#13#10'E1.ERP_DATA,'#13#10'E1.ERP_COMPL,' +
      #13#10'E1.ERP_CODIGO,'#13#10'E1.ERP_IMPOSTO'#13#10'FROM EVE_RP01 E1'#13#10'JOIN EVE0000' +
      ' E2 ON (E2.EVE_CODIGO = E1.EVE_CODIGO)'#13#10'WHERE ERP_DATA BETWEEN '#39 +
      '01/11/2004'#39' AND '#39'11/15/2004'#39#13#10'ORDER BY REP_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'E1.EMP_CODIGO,'#13#10'E1.REP_CODIGO,'#13#10'E1.EVE_CODIGO,'#13#10'E2.EVE_D' +
      'ESCRI,'#13#10'E1.ERP_VALOR,'#13#10'E1.ERP_TIPO,'#13#10'E1.ERP_DATA,'#13#10'E1.ERP_COMPL,' +
      #13#10'E1.ERP_CODIGO,'#13#10'E1.ERP_IMPOSTO'#13#10'FROM EVE_RP01 E1'#13#10'JOIN EVE0000' +
      ' E2 ON (E2.EVE_CODIGO = E1.EVE_CODIGO)'#13#10'WHERE ERP_DATA BETWEEN '#39 +
      '01/11/2004'#39' AND '#39'11/15/2004'#39#13#10'ORDER BY REP_CODIGO'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 580
    Top = 262
    object SqlCdsEventosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsEventosREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SqlCdsEventosEVE_CODIGO: TStringField
      FieldName = 'EVE_CODIGO'
      Size = 2
    end
    object SqlCdsEventosEVE_DESCRI: TStringField
      FieldName = 'EVE_DESCRI'
      Size = 25
    end
    object SqlCdsEventosERP_VALOR: TFMTBCDField
      FieldName = 'ERP_VALOR'
      Precision = 15
    end
    object SqlCdsEventosERP_TIPO: TStringField
      FieldName = 'ERP_TIPO'
      Size = 1
    end
    object SqlCdsEventosERP_DATA: TSQLTimeStampField
      FieldName = 'ERP_DATA'
    end
    object SqlCdsEventosERP_COMPL: TStringField
      FieldName = 'ERP_COMPL'
      Size = 30
    end
    object SqlCdsEventosERP_CODIGO: TStringField
      FieldName = 'ERP_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsEventosERP_IMPOSTO: TStringField
      FieldName = 'ERP_IMPOSTO'
      Size = 1
    end
  end
  object CdsTmp_Rcom: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 584
    Top = 192
    object CdsTmp_RcomEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsTmp_RcomREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object CdsTmp_RcomREP_GRUPO: TStringField
      FieldName = 'REP_GRUPO'
      Size = 2
    end
    object CdsTmp_RcomREP_RAZAO: TStringField
      FieldName = 'REP_RAZAO'
      Size = 40
    end
    object CdsTmp_RcomREP_AGENCIA: TStringField
      FieldName = 'REP_AGENCIA'
      Size = 6
    end
    object CdsTmp_RcomREP_CONTA: TStringField
      FieldName = 'REP_CONTA'
      Size = 12
    end
    object CdsTmp_RcomREP_BANCO: TStringField
      FieldName = 'REP_BANCO'
      Size = 25
    end
    object CdsTmp_RcomREP_BANCOFAVOR: TStringField
      FieldName = 'REP_BANCOFAVOR'
      Size = 30
    end
    object CdsTmp_RcomREP_CGC: TStringField
      FieldName = 'REP_CGC'
      Size = 14
    end
    object CdsTmp_RcomREP_TIPO: TStringField
      FieldName = 'REP_TIPO'
      Size = 1
    end
    object CdsTmp_RcomRCOM_VENDAS: TCurrencyField
      FieldName = 'RCOM_VENDAS'
      DisplayFormat = '#,##0.00'
    end
    object CdsTmp_RcomRCOM_COMISSOES: TCurrencyField
      FieldName = 'RCOM_COMISSOES'
      DisplayFormat = '#,##0.00'
    end
    object CdsTmp_RcomRCOM_CREDITOS: TCurrencyField
      FieldName = 'RCOM_CREDITOS'
      DisplayFormat = '#,##0.00'
    end
    object CdsTmp_RcomRCOM_DEBITOS: TCurrencyField
      FieldName = 'RCOM_DEBITOS'
      DisplayFormat = '#,##0.00'
    end
    object CdsTmp_RcomRCOM_IRRF: TCurrencyField
      FieldName = 'RCOM_IRRF'
      DisplayFormat = '#,##0.00'
    end
  end
  object DsTmp_Rcom: TDataSource
    DataSet = CdsTmp_Rcom
    Left = 944
    Top = 480
  end
  object DsEventos: TDataSource
    DataSet = SqlCdsEventos
    Left = 632
    Top = 248
  end
  object ppDBTmp_RCom: TppDBPipeline
    DataSource = DsTmp_Rcom
    UserName = 'DBTmp_RCom'
    Left = 696
    Top = 216
    object ppDBTmp_RComppField1: TppField
      FieldAlias = 'EMP_CODIGO'
      FieldName = 'EMP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBTmp_RComppField2: TppField
      FieldAlias = 'REP_CODIGO'
      FieldName = 'REP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBTmp_RComppField3: TppField
      FieldAlias = 'REP_GRUPO'
      FieldName = 'REP_GRUPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBTmp_RComppField4: TppField
      FieldAlias = 'REP_RAZAO'
      FieldName = 'REP_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBTmp_RComppField5: TppField
      FieldAlias = 'REP_AGENCIA'
      FieldName = 'REP_AGENCIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBTmp_RComppField6: TppField
      FieldAlias = 'REP_CONTA'
      FieldName = 'REP_CONTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBTmp_RComppField7: TppField
      FieldAlias = 'REP_BANCO'
      FieldName = 'REP_BANCO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBTmp_RComppField8: TppField
      FieldAlias = 'REP_BANCOFAVOR'
      FieldName = 'REP_BANCOFAVOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBTmp_RComppField9: TppField
      FieldAlias = 'REP_CGC'
      FieldName = 'REP_CGC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBTmp_RComppField10: TppField
      FieldAlias = 'REP_TIPO'
      FieldName = 'REP_TIPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBTmp_RComppField11: TppField
      FieldAlias = 'RCOM_VENDAS'
      FieldName = 'RCOM_VENDAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBTmp_RComppField12: TppField
      FieldAlias = 'RCOM_COMISSOES'
      FieldName = 'RCOM_COMISSOES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBTmp_RComppField13: TppField
      FieldAlias = 'RCOM_CREDITOS'
      FieldName = 'RCOM_CREDITOS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBTmp_RComppField14: TppField
      FieldAlias = 'RCOM_DEBITOS'
      FieldName = 'RCOM_DEBITOS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBTmp_RComppField15: TppField
      FieldAlias = 'RCOM_IRRF'
      FieldName = 'RCOM_IRRF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
  end
  object ppDBEventos: TppDBPipeline
    DataSource = DsEventos
    SkipWhenNoRecords = False
    UserName = 'DBEventos'
    Left = 696
    Top = 288
    MasterDataPipelineName = 'ppDBTmp_RCom'
    object ppDBEventosppField1: TppField
      FieldAlias = 'EMP_CODIGO'
      FieldName = 'EMP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBEventosppField2: TppField
      FieldAlias = 'REP_CODIGO'
      FieldName = 'REP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBEventosppField3: TppField
      FieldAlias = 'EVE_CODIGO'
      FieldName = 'EVE_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBEventosppField4: TppField
      FieldAlias = 'EVE_DESCRI'
      FieldName = 'EVE_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBEventosppField5: TppField
      FieldAlias = 'ERP_VALOR'
      FieldName = 'ERP_VALOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBEventosppField6: TppField
      FieldAlias = 'ERP_TIPO'
      FieldName = 'ERP_TIPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBEventosppField7: TppField
      FieldAlias = 'ERP_DATA'
      FieldName = 'ERP_DATA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBEventosppField8: TppField
      FieldAlias = 'ERP_COMPL'
      FieldName = 'ERP_COMPL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBEventosppField9: TppField
      FieldAlias = 'ERP_CODIGO'
      FieldName = 'ERP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBEventosppField10: TppField
      FieldAlias = 'ERP_IMPOSTO'
      FieldName = 'ERP_IMPOSTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBEventosppMasterFieldLink1: TppMasterFieldLink
      MasterFieldName = 'REP_CODIGO'
      GuidCollationType = gcString
      DetailFieldName = 'REP_CODIGO'
      DetailSortOrder = soAscending
      IgnoreTrailingSpaces = False
    end
  end
  object ppRepTmp_Rcom: TppReport
    AutoStop = False
    DataPipeline = ppDBTmp_RCom
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
      'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELRECIBOCOMISS' +
      'AO.rtm'
    Units = utMillimeters
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    CachePages = True
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
    LanguageID = 'Default'
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
    TextSearchSettings.Enabled = False
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
    Left = 920
    Top = 224
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBTmp_RCom'
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 98690
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape1'
        mmHeight = 91811
        mmLeft = 0
        mmTop = 0
        mmWidth = 196321
        BandType = 4
        LayerName = Foreground3
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape2'
        mmHeight = 20902
        mmLeft = 0
        mmTop = 26458
        mmWidth = 196321
        BandType = 4
        LayerName = Foreground3
      end
      object LBL_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4868
        mmLeft = 83749
        mmTop = 1323
        mmWidth = 30410
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label20'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'RECIBO DE PAGAMENTO DE COMISS'#213'ES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4163
        mmLeft = 62883
        mmTop = 8731
        mmWidth = 70838
        BandType = 4
        LayerName = Foreground3
      end
      object LBL_REPRESENTANTE: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_REPRESENTANTE'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_REPRESENTANTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 79904
        mmTop = 15081
        mmWidth = 37835
        BandType = 4
        LayerName = Foreground3
      end
      object LBL_PERIODO: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_PERIODO'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_PERIODO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 21431
        mmWidth = 23548
        BandType = 4
        LayerName = Foreground3
      end
      object LBL_QUINZENA: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_QUINZENA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_QUINZENA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 169863
        mmTop = 21431
        mmWidth = 25135
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label26'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'FATURAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 19580
        mmTop = 27252
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label27'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CR'#201'DITOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 91811
        mmTop = 27252
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label28'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'D'#201'BITOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 155443
        mmTop = 27252
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground3
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line7'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 65088
        mmLeft = 62177
        mmTop = 26458
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground3
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20638
        mmLeft = 137848
        mmTop = 26458
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label29'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VENDAS(Produtos)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 34925
        mmWidth = 30163
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText15'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'RCOM_VENDAS'
        DataPipeline = ppDBTmp_RCom
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTmp_RCom'
        mmHeight = 4233
        mmLeft = 44186
        mmTop = 35190
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label30'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'COMISS'#213'ES S/VENDAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 62706
        mmTop = 34925
        mmWidth = 39688
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label301'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'OUTROS CR'#201'DITOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 62706
        mmTop = 41804
        mmWidth = 32544
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText17'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'RCOM_COMISSOES'
        DataPipeline = ppDBTmp_RCom
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTmp_RCom'
        mmHeight = 4233
        mmLeft = 120121
        mmTop = 34925
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText20'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'RCOM_CREDITOS'
        DataPipeline = ppDBTmp_RCom
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTmp_RCom'
        mmHeight = 4233
        mmLeft = 120121
        mmTop = 41804
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label302'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'I.R.R.F.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 138377
        mmTop = 34925
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label33'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'OUTROS DEBITOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 138377
        mmTop = 41804
        mmWidth = 30163
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText21'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'RCOM_IRRF'
        DataPipeline = ppDBTmp_RCom
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTmp_RCom'
        mmHeight = 4233
        mmLeft = 177800
        mmTop = 34925
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText22'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'RCOM_DEBITOS'
        DataPipeline = ppDBTmp_RCom
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTmp_RCom'
        mmHeight = 4233
        mmLeft = 177800
        mmTop = 41804
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground3
      end
      object LBL_LIN01: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_LIN01'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_LIN01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 63500
        mmTop = 52917
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground3
      end
      object LBL_LIN02: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_LIN02'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_LIN02'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 63500
        mmTop = 57679
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground3
      end
      object LBL_LIN03: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_LIN03'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_LIN03'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 63500
        mmTop = 62442
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground3
      end
      object LBL_LIN04: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_LIN04'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_LIN04'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 63500
        mmTop = 67204
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground3
      end
      object LBL_LIN05: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_LIN05'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 
          'comiss'#245'es sobre vendas efetuadas durante o m'#234's de    ___________' +
          '___ de _________.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3598
        mmLeft = 63500
        mmTop = 71967
        mmWidth = 126577
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label34'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 
          '______/______/__________      Ass. Vendedor: ___________________' +
          '_______________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 63500
        mmTop = 86519
        mmWidth = 132821
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label35'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total de Cr'#233'ditos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 57679
        mmWidth = 25929
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label36'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'RESUMO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 20374
        mmTop = 47890
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label37'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total de D'#233'bitos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 62442
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label38'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'L'#237'quido '#224' Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 71967
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground3
      end
      object Total_Creditos: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'Total_Creditos'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 34925
        mmTop = 57679
        mmWidth = 26458
        BandType = 4
        LayerName = Foreground3
      end
      object Total_Debitos: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'Total_Debitos'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 34925
        mmTop = 62442
        mmWidth = 26458
        BandType = 4
        LayerName = Foreground3
      end
      object Liquido_Pagar: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'Liquido_Pagar'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 2
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 34925
        mmTop = 71967
        mmWidth = 26458
        BandType = 4
        LayerName = Foreground3
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape3'
        mmHeight = 7144
        mmLeft = 0
        mmTop = 91546
        mmWidth = 196321
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label39'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'AG.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 1058
        mmTop = 92604
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText23'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_AGENCIA'
        DataPipeline = ppDBTmp_RCom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBTmp_RCom'
        mmHeight = 5027
        mmLeft = 9525
        mmTop = 92604
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label40'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CONTA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 37306
        mmTop = 92604
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText24'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_CONTA'
        DataPipeline = ppDBTmp_RCom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBTmp_RCom'
        mmHeight = 5027
        mmLeft = 53181
        mmTop = 92604
        mmWidth = 29898
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText25'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_BANCO'
        DataPipeline = ppDBTmp_RCom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBTmp_RCom'
        mmHeight = 5027
        mmLeft = 83344
        mmTop = 92604
        mmWidth = 29898
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label401'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CREDOR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 124619
        mmTop = 92604
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText26'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_BANCOFAVOR'
        DataPipeline = ppDBTmp_RCom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBTmp_RCom'
        mmHeight = 5027
        mmLeft = 144198
        mmTop = 92604
        mmWidth = 50800
        BandType = 4
        LayerName = Foreground3
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13758
      mmPrintPosition = 0
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape5'
        mmHeight = 13758
        mmLeft = 0
        mmTop = 0
        mmWidth = 196321
        BandType = 8
        LayerName = Foreground3
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label43'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'OBSERVA'#199#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 1852
        mmWidth = 25665
        BandType = 8
        LayerName = Foreground3
      end
      object LBL_OBS01: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_OBS01'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_OBS01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 28575
        mmTop = 1852
        mmWidth = 19579
        BandType = 8
        LayerName = Foreground3
      end
      object LBL_OBS02: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_OBS02'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_OBS01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 28575
        mmTop = 6350
        mmWidth = 19579
        BandType = 8
        LayerName = Foreground3
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'REP_CODIGO'
      DataPipeline = ppDBTmp_RCom
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBTmp_RCom'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Border.mmPadding = 0
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppSubReport1: TppSubReport
          DesignLayer = ppDesignLayer4
          UserName = 'SubReport1'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          ParentPrinterSetup = False
          TraverseAllData = False
          DataPipelineName = 'ppDBEventos'
          mmHeight = 5027
          mmLeft = 0
          mmTop = 0
          mmWidth = 196000
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppChildReport1: TppChildReport
            AutoStop = False
            DataPipeline = ppDBEventos
            PrinterSetup.BinName = 'Default'
            PrinterSetup.DocumentName = 'Report'
            PrinterSetup.Duplex = dpNone
            PrinterSetup.PaperName = 'A4'
            PrinterSetup.PrinterName = 'Default'
            PrinterSetup.SaveDeviceSettings = False
            PrinterSetup.mmMarginBottom = 6350
            PrinterSetup.mmMarginLeft = 6350
            PrinterSetup.mmMarginRight = 6350
            PrinterSetup.mmMarginTop = 6350
            PrinterSetup.mmPaperHeight = 297000
            PrinterSetup.mmPaperWidth = 210000
            PrinterSetup.PaperSize = 9
            Units = utMillimeters
            Version = '22.0'
            mmColumnWidth = 0
            DataPipelineName = 'ppDBEventos'
            object ppHeaderBand1: TppHeaderBand
              BeforePrint = ppHeaderBand1BeforePrint
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 7673
              mmPrintPosition = 0
              object ppLabel42: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label42'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'DISCRIMINA'#199#195'O DOS CR'#201'DITOS E D'#201'BITOS DO PER'#205'ODO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = []
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 4163
                mmLeft = 39625
                mmTop = 1323
                mmWidth = 99342
                BandType = 0
                LayerName = Foreground2
              end
              object ppLine10: TppLine
                DesignLayer = ppDesignLayer3
                UserName = 'Line10'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Weight = 0.750000000000000000
                mmHeight = 265
                mmLeft = 0
                mmTop = 7408
                mmWidth = 196321
                BandType = 0
                LayerName = Foreground2
              end
              object ppLine11: TppLine
                DesignLayer = ppDesignLayer3
                UserName = 'Line11'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 7408
                mmLeft = 0
                mmTop = 0
                mmWidth = 265
                BandType = 0
                LayerName = Foreground2
              end
              object ppLine12: TppLine
                DesignLayer = ppDesignLayer3
                UserName = 'Line12'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 7408
                mmLeft = 196057
                mmTop = 0
                mmWidth = 265
                BandType = 0
                LayerName = Foreground2
              end
            end
            object ppDetailBand2: TppDetailBand
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 4233
              mmPrintPosition = 0
              object ppDBText27: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText27'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'EVE_DESCRI'
                DataPipeline = ppDBEventos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppDBEventos'
                mmHeight = 4233
                mmLeft = 0
                mmTop = 0
                mmWidth = 76200
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText28: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText28'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'ERP_COMPL'
                DataPipeline = ppDBEventos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppDBEventos'
                mmHeight = 4233
                mmLeft = 79375
                mmTop = 0
                mmWidth = 73025
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText29: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText29'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'ERP_VALOR'
                DataPipeline = ppDBEventos
                DisplayFormat = '#,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBEventos'
                mmHeight = 4233
                mmLeft = 155575
                mmTop = 0
                mmWidth = 26723
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText30: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText30'
                HyperlinkEnabled = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'ERP_TIPO'
                DataPipeline = ppDBEventos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppDBEventos'
                mmHeight = 4233
                mmLeft = 182827
                mmTop = 0
                mmWidth = 9260
                BandType = 4
                LayerName = Foreground2
              end
            end
            object raCodeModule4: TraCodeModule
            end
            object ppDesignLayers3: TppDesignLayers
              object ppDesignLayer3: TppDesignLayer
                UserName = 'Foreground2'
                LayerType = ltBanded
                Index = 0
              end
            end
          end
        end
      end
    end
    object raCodeModule3: TraCodeModule
      object raProgramInfo6: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Total_CreditosOnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Total_CreditosOnCalc(var Value: Variant);'#13#10'begin'#13#10#13#10'  ' +
          'Value := DBTmp_Rcom['#39'RCOM_COMISSOES'#39']+DBTmp_Rcom['#39'RCOM_CREDITOS'#39 +
          '];'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Total_Creditos'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
      end
      object raProgramInfo7: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Total_DebitosOnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Total_DebitosOnCalc(var Value: Variant);'#13#10'begin'#13#10#13#10'  V' +
          'alue := (DBTmp_Rcom['#39'RCOM_DEBITOS'#39']+ DBTmp_Rcom['#39'RCOM_IRRF'#39']);'#13#10 +
          #13#10'end;'#13#10
        raProgram.ComponentName = 'Total_Debitos'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
      end
      object raProgramInfo8: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Liquido_PagarOnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Liquido_PagarOnCalc(var Value: Variant);'#13#10'begin'#13#10#13#10'  V' +
          'alue := (Total_Creditos.Value-Total_Debitos.Value); '#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Liquido_Pagar'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
      end
      object raProgramInfo9: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'LBL_LIN04OnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure LBL_LIN04OnGetText(var Text: String);'#13#10'begin'#13#10#13#10'  Text' +
          ' := '#39'a import'#226'ncia de R$ '#39'+FormatFloat('#39'#,##0.00'#39',Liquido_Pagar.' +
          'Value)+'#39' como '#224' import'#226'ncia l'#237'quida do pagamentos das'#39';'#13#10#13#10'end;'#13 +
          #10
        raProgram.ComponentName = 'LBL_LIN04'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
      end
      object raProgramInfo10: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'LBL_REPRESENTANTEOnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure LBL_REPRESENTANTEOnGetText(var Text: String);'#13#10'Var'#13#10'  ' +
          'wCgC : String;'#13#10'begin'#13#10'    if Length(DBTMP_Rcom['#39'REP_CGC'#39'])>0 th' +
          'en'#13#10'       begin '#13#10'           if Length(DBTMP_Rcom['#39'REP_CGC'#39'])=1' +
          '4 then'#13#10'              begin'#13#10'                  wCgC := '#39'CNPJ.: '#39 +
          '+copy(DBTMP_Rcom['#39'REP_CGC'#39'],1,2)+'#39'.'#39'+copy(DBTMP_Rcom['#39'REP_CGC'#39'],' +
          '3,3)+'#39'.'#39'+copy(DBTMP_Rcom['#39'REP_CGC'#39'],6,3)+'#39'/'#39'+copy(DBTMP_Rcom['#39'RE' +
          'P_CGC'#39'],9,4)+'#39'-'#39'+copy(DBTMP_Rcom['#39'REP_CGC'#39'],13,2);'#13#10'            ' +
          '  end'#13#10'           else'#13#10'              begin'#13#10'                  w' +
          'CgC := '#39'CPF.: '#39'+copy(DBTMP_Rcom['#39'REP_CGC'#39'],1,3)+'#39'.'#39'+copy(DBTMP_R' +
          'com['#39'REP_CGC'#39'],4,3)+'#39'.'#39'+copy(DBTMP_Rcom['#39'REP_CGC'#39'],7,3)+'#39'-'#39'+copy' +
          '(DBTMP_Rcom['#39'REP_CGC'#39'],10,2);'#13#10'              end;'#13#10'       end; '#13 +
          #10'     '#13#10'    Text :='#39'Representante: '#39'+DBTmp_Rcom['#39'REP_CODIGO'#39']+'#39'-' +
          #39'+DBTmp_Rcom['#39'REP_GRUPO'#39']+'#39' '#39'+DBTmp_Rcom['#39'REP_RAZAO'#39']+'#39' - '#39'+wCgC' +
          ';'#13#10'  '#13#10'end;'#13#10
        raProgram.ComponentName = 'LBL_REPRESENTANTE'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
      end
      object raProgramInfo11: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'LBL_LIN02OnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure LBL_LIN02OnGetText(var Text: String);'#13#10'begin'#13#10#13#10'  Text' +
          ' := '#39'Eu, '#39'+DBTMP_Rcom['#39'REP_RAZAO'#39']+'#39'. Declara que recebeu de'#39'; '#13 +
          #10#13#10'end;'#13#10
        raProgram.ComponentName = 'LBL_LIN02'
        raProgram.EventName = 'OnGetText'
        raProgram.EventID = 53
      end
      object raProgramInfo12: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'LBL_LIN01OnGetText'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure LBL_LIN01OnGetText(var Text: String);'#13#10'begin'#13#10#13#10'  Text' +
          ' := '#39'Pedidos entregues conforme relat'#243'rio este m'#234's R$ '#39'+ FormatF' +
          'loat('#39'#,##0.00'#39',DBTMP_Rcom['#39'RCOM_VENDAS'#39']);'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'LBL_LIN01'
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
    object ppParameterList4: TppParameterList
    end
  end
  object CdsTmpEquip: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'CdsTmpEquipIndex1'
        Fields = 'REP_RAZAO'
      end>
    IndexName = 'CdsTmpEquipIndex1'
    Params = <>
    StoreDefs = True
    OnCalcFields = CdsTmpEquipCalcFields
    Left = 576
    Top = 336
    object CdsTmpEquipEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsTmpEquipREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object CdsTmpEquipREP_GRUPO: TStringField
      FieldName = 'REP_GRUPO'
      Size = 2
    end
    object CdsTmpEquipREP_RAZAO: TStringField
      FieldName = 'REP_RAZAO'
      Size = 40
    end
    object CdsTmpEquipREP_FUNCAO: TStringField
      FieldName = 'REP_FUNCAO'
      Size = 1
    end
    object CdsTmpEquipREP_SUPERVISOR: TStringField
      FieldName = 'REP_SUPERVISOR'
      Size = 3
    end
    object CdsTmpEquipREP_GERENTE: TStringField
      FieldName = 'REP_GERENTE'
      Size = 3
    end
    object CdsTmpEquipTMP_TOTVENDAS: TCurrencyField
      FieldName = 'TMP_TOTVENDAS'
    end
    object CdsTmpEquipTMP_COMISSAO: TCurrencyField
      FieldName = 'TMP_COMISSAO'
    end
    object CdsTmpEquipTMP_TOTLITROS: TCurrencyField
      FieldName = 'TMP_TOTLITROS'
    end
    object CdsTmpEquipTMP_VENDAPRODP: TCurrencyField
      FieldName = 'TMP_VENDAPRODP'
    end
    object CdsTmpEquipTMP_COMPROP: TCurrencyField
      FieldName = 'TMP_COMPROP'
    end
    object CdsTmpEquipTMP_LITROPROP: TCurrencyField
      FieldName = 'TMP_LITROPROP'
    end
    object CdsTmpEquipPER_COMISSAO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PER_COMISSAO_CC'
      Calculated = True
    end
    object CdsTmpEquipWTOTALVENDIDO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'WTOTALVENDIDO_CC'
      Calculated = True
    end
    object CdsTmpEquipWVALORCOMISSAO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'WVALORCOMISSAO_CC'
      Calculated = True
    end
    object CdsTmpEquipWQTDE_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'WQTDE_CC'
      Calculated = True
    end
  end
  object DsTmpEquip: TDataSource
    DataSet = CdsTmpEquip
    Left = 608
    Top = 336
  end
  object ppRTmpEquip: TppReport
    AutoStop = False
    DataPipeline = ppDBTmpEquip
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
    Template.FileName = 'C:\Developer\Adjutor\fontesrelatorios\RELCOMISEQUIP.rtm'
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
    LanguageID = 'Default'
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
    Left = 920
    Top = 296
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBTmpEquip'
    object ppHeaderBand2: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 25135
      mmPrintPosition = 0
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground4
      end
      object LBL_02_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LBL_02_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
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
        mmHeight = 4233
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground4
      end
      object LBL_02_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LBL_02_LTITULO2'
        HyperlinkEnabled = False
        AutoSize = False
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
        mmHeight = 4233
        mmLeft = 0
        mmTop = 9790
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground4
      end
      object ppSystemVariable13: TppSystemVariable
        DesignLayer = ppDesignLayer5
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
        mmHeight = 4163
        mmLeft = 163725
        mmTop = 794
        mmWidth = 32597
        BandType = 0
        LayerName = Foreground4
      end
      object ppSystemVariable14: TppSystemVariable
        DesignLayer = ppDesignLayer5
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
        mmHeight = 4163
        mmLeft = 178188
        mmTop = 5292
        mmWidth = 18133
        BandType = 0
        LayerName = Foreground4
      end
      object LBL_02_LTITULO3: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LBL_02_LTITULO3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TITULO3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 14288
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line13'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 18785
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line14'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 24870
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label44'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'COD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 19844
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label45'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'GRP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4163
        mmLeft = 8467
        mmTop = 19844
        mmWidth = 7620
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label46'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VENDEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 21431
        mmTop = 19844
        mmWidth = 19897
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label47'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'SUP.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4163
        mmLeft = 94721
        mmTop = 19844
        mmWidth = 8184
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label48'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'GER.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4163
        mmLeft = 103717
        mmTop = 19844
        mmWidth = 8608
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label49'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TOTAL VENDIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 113242
        mmTop = 19844
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label50'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'COMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 141552
        mmTop = 19844
        mmWidth = 18909
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label501'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VL.COMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 161132
        mmTop = 19844
        mmWidth = 24201
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label52'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'QTDE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 186002
        mmTop = 19844
        mmWidth = 9807
        BandType = 0
        LayerName = Foreground4
      end
      object LBL_02_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LBL_02_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_02_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 794
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground4
      end
      object LBL_02_QUINZENA: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LBL_02_QUINZENA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_02_QUINZENA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 163672
        mmTop = 14288
        mmWidth = 32385
        BandType = 0
        LayerName = Foreground4
      end
    end
    object ppDetailBand3: TppDetailBand
      Border.mmPadding = 0
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText31'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_CODIGO'
        DataPipeline = ppDBTmpEquip
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTmpEquip'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText32'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_GRUPO'
        DataPipeline = ppDBTmpEquip
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTmpEquip'
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 0
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText33'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_FUNCAO'
        DataPipeline = ppDBTmpEquip
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTmpEquip'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText34'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_RAZAO'
        DataPipeline = ppDBTmpEquip
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTmpEquip'
        mmHeight = 4233
        mmLeft = 21431
        mmTop = 0
        mmWidth = 72231
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText35'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_SUPERVISOR'
        DataPipeline = ppDBTmpEquip
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTmpEquip'
        mmHeight = 4233
        mmLeft = 94721
        mmTop = 0
        mmWidth = 7673
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText36'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_GERENTE'
        DataPipeline = ppDBTmpEquip
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBTmpEquip'
        mmHeight = 4233
        mmLeft = 103717
        mmTop = 0
        mmWidth = 7673
        BandType = 4
        LayerName = Foreground4
      end
      object ppTotVendido: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'TotVendido'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PER_COMISSAO_CC'
        DataPipeline = ppDBTmpEquip
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTmpEquip'
        mmHeight = 4233
        mmLeft = 141552
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground4
      end
      object ppVlComissao: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'VlComissao'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TMP_COMISSAO'
        DataPipeline = ppDBTmpEquip
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTmpEquip'
        mmHeight = 4233
        mmLeft = 160867
        mmTop = 0
        mmWidth = 24077
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText40'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TMP_TOTLITROS'
        DataPipeline = ppDBTmpEquip
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTmpEquip'
        mmHeight = 4233
        mmLeft = 186002
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'TotVendido1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TMP_TOTVENDAS'
        DataPipeline = ppDBTmpEquip
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTmpEquip'
        mmHeight = 4233
        mmLeft = 113242
        mmTop = 0
        mmWidth = 27252
        BandType = 4
        LayerName = Foreground4
      end
    end
    object ppFooterBand2: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 11113
      mmPrintPosition = 0
      object LBL_02_OBS1: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LBL_02_OBS1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_02_OBS1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 1323
        mmWidth = 23566
        BandType = 8
        LayerName = Foreground4
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line15'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196057
        BandType = 8
        LayerName = Foreground4
      end
      object LBL_02_OBS2: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LBL_02_OBS2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_02_OBS2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 6085
        mmWidth = 23566
        BandType = 8
        LayerName = Foreground4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 14817
      mmPrintPosition = 0
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label53'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total de Vendas de toda a equipe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 1588
        mmWidth = 60590
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TMP_TOTVENDAS'
        DataPipeline = ppDBTmpEquip
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTmpEquip'
        mmHeight = 4304
        mmLeft = 113242
        mmTop = 1517
        mmWidth = 27252
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TMP_COMISSAO'
        DataPipeline = ppDBTmpEquip
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTmpEquip'
        mmHeight = 4304
        mmLeft = 160867
        mmTop = 1517
        mmWidth = 24077
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TMP_TOTLITROS'
        DataPipeline = ppDBTmpEquip
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTmpEquip'
        mmHeight = 4304
        mmLeft = 186002
        mmTop = 1517
        mmWidth = 10054
        BandType = 7
        LayerName = Foreground4
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line16'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196057
        BandType = 7
        LayerName = Foreground4
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line17'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 7408
        mmWidth = 196057
        BandType = 7
        LayerName = Foreground4
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label54'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total de Vendas dos Supervisionados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4163
        mmLeft = 0
        mmTop = 8996
        mmWidth = 60590
        BandType = 7
        LayerName = Foreground4
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line18'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14552
        mmWidth = 196057
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'WTOTALVENDIDO_CC'
        DataPipeline = ppDBTmpEquip
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTmpEquip'
        mmHeight = 4163
        mmLeft = 113242
        mmTop = 8996
        mmWidth = 27252
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc7: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'WVALORCOMISSAO_CC'
        DataPipeline = ppDBTmpEquip
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTmpEquip'
        mmHeight = 4163
        mmLeft = 160602
        mmTop = 8996
        mmWidth = 24077
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc8: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'WQTDE_CC'
        DataPipeline = ppDBTmpEquip
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBTmpEquip'
        mmHeight = 4163
        mmLeft = 186002
        mmTop = 8996
        mmWidth = 10054
        BandType = 7
        LayerName = Foreground4
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
  object ppDBTmpEquip: TppDBPipeline
    DataSource = DsTmpEquip
    UserName = 'DBTmpEquip'
    Left = 688
    Top = 360
    object ppDBTmpEquipppField1: TppField
      FieldAlias = 'EMP_CODIGO'
      FieldName = 'EMP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBTmpEquipppField2: TppField
      FieldAlias = 'REP_CODIGO'
      FieldName = 'REP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBTmpEquipppField3: TppField
      FieldAlias = 'REP_GRUPO'
      FieldName = 'REP_GRUPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBTmpEquipppField4: TppField
      FieldAlias = 'REP_RAZAO'
      FieldName = 'REP_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBTmpEquipppField5: TppField
      FieldAlias = 'REP_FUNCAO'
      FieldName = 'REP_FUNCAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBTmpEquipppField6: TppField
      FieldAlias = 'REP_SUPERVISOR'
      FieldName = 'REP_SUPERVISOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBTmpEquipppField7: TppField
      FieldAlias = 'REP_GERENTE'
      FieldName = 'REP_GERENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBTmpEquipppField8: TppField
      FieldAlias = 'TMP_TOTVENDAS'
      FieldName = 'TMP_TOTVENDAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBTmpEquipppField9: TppField
      FieldAlias = 'TMP_COMISSAO'
      FieldName = 'TMP_COMISSAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBTmpEquipppField10: TppField
      FieldAlias = 'TMP_TOTLITROS'
      FieldName = 'TMP_TOTLITROS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBTmpEquipppField11: TppField
      FieldAlias = 'TMP_VENDAPRODP'
      FieldName = 'TMP_VENDAPRODP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBTmpEquipppField12: TppField
      FieldAlias = 'TMP_COMPROP'
      FieldName = 'TMP_COMPROP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBTmpEquipppField13: TppField
      FieldAlias = 'TMP_LITROPROP'
      FieldName = 'TMP_LITROPROP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBTmpEquipppField14: TppField
      FieldAlias = 'PER_COMISSAO_CC'
      FieldName = 'PER_COMISSAO_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBTmpEquipppField15: TppField
      FieldAlias = 'WTOTALVENDIDO_CC'
      FieldName = 'WTOTALVENDIDO_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBTmpEquipppField16: TppField
      FieldAlias = 'WVALORCOMISSAO_CC'
      FieldName = 'WVALORCOMISSAO_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBTmpEquipppField17: TppField
      FieldAlias = 'WQTDE_CC'
      FieldName = 'WQTDE_CC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
  end
  object ppRComissaoTipo: TppReport
    AutoStop = False
    DataPipeline = ppDBComissaoTipo
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = True
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 15000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    PrinterSetup.DevMode = {00000000}
    Template.FileName = 'C:\Developer\Adjutor\fontesrelatorios\RELCOMISEQUIP.rtm'
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
    LanguageID = 'Default'
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
    Left = 928
    Top = 352
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBComissaoTipo'
    object ppHeaderBand3: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 21696
      mmPrintPosition = 0
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground5
      end
      object ppLblPeriodoTipo: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'ppLblPeriodoTipo'
        HyperlinkEnabled = False
        AutoSize = False
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
        mmHeight = 4233
        mmLeft = 0
        mmTop = 9790
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground5
      end
      object ppSystemVariable5: TppSystemVariable
        DesignLayer = ppDesignLayer6
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
        mmHeight = 4163
        mmLeft = 163725
        mmTop = 794
        mmWidth = 32597
        BandType = 0
        LayerName = Foreground5
      end
      object ppSystemVariable6: TppSystemVariable
        DesignLayer = ppDesignLayer6
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
        mmHeight = 4163
        mmLeft = 178188
        mmTop = 5292
        mmWidth = 18133
        BandType = 0
        LayerName = Foreground5
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line13'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14817
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground5
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line14'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 21167
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label46'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 9525
        mmTop = 16140
        mmWidth = 15198
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel66: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label49'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Total Faturado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 114829
        mmTop = 16140
        mmWidth = 23019
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel67: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label50'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Media Comiss'#227'o '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 141817
        mmTop = 16140
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground5
      end
      object ppLabel68: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label501'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Vl.Comiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 175155
        mmTop = 16140
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground5
      end
      object lblComissaoTipoEmp: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'lblComissaoTipoEmp'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'lblComissaoTipoEmp'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 794
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground5
      end
      object ppLblQuinzenaTipo: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'ppLblQuinzenaTipo'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ppLblQuinzenaTipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 165365
        mmTop = 10054
        mmWidth = 30692
        BandType = 0
        LayerName = Foreground5
      end
      object ppLblPeriodoTipo1: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'ppLblPeriodoTipo1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Relat'#243'rio de comiss'#227'o por tipo de produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground5
      end
    end
    object ppDetailBand4: TppDetailBand
      Border.mmPadding = 0
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText44'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PTI_CODIGO'
        DataPipeline = ppDBComissaoTipo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBComissaoTipo'
        mmHeight = 3969
        mmLeft = 9260
        mmTop = 529
        mmWidth = 6615
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText45'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PTI_DESCRI'
        DataPipeline = ppDBComissaoTipo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBComissaoTipo'
        mmHeight = 3969
        mmLeft = 16933
        mmTop = 529
        mmWidth = 86784
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText46'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'TOTAL_FAT'
        DataPipeline = ppDBComissaoTipo
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBComissaoTipo'
        mmHeight = 3969
        mmLeft = 118004
        mmTop = 500
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText47'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'MEDIA_COMIS'
        DataPipeline = ppDBComissaoTipo
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBComissaoTipo'
        mmHeight = 3969
        mmLeft = 146579
        mmTop = 500
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText48'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CC_VALOR_COMIS'
        DataPipeline = ppDBComissaoTipo
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBComissaoTipo'
        mmHeight = 3969
        mmLeft = 176742
        mmTop = 500
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground5
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'REP_CODIGO'
      DataPipeline = ppDBComissaoTipo
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBComissaoTipo'
      NewFile = False
      object ppGroupHeaderBand4: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppDBText42: TppDBText
          DesignLayer = ppDesignLayer6
          UserName = 'DBText31'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'REP_CODIGO'
          DataPipeline = ppDBComissaoTipo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBComissaoTipo'
          mmHeight = 4233
          mmLeft = 1000
          mmTop = 500
          mmWidth = 6615
          BandType = 3
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppDBText43: TppDBText
          DesignLayer = ppDesignLayer6
          UserName = 'DBText43'
          HyperlinkEnabled = False
          AutoSize = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'REP_NOME'
          DataPipeline = ppDBComissaoTipo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBComissaoTipo'
          mmHeight = 4064
          mmLeft = 9260
          mmTop = 500
          mmWidth = 13293
          BandType = 3
          GroupNo = 0
          LayerName = Foreground5
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppLabel72: TppLabel
          DesignLayer = ppDesignLayer6
          UserName = 'Label72'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Total Comiss'#227'o Vendedor :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4022
          mmLeft = 794
          mmTop = 1058
          mmWidth = 42630
          BandType = 5
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppDBCalc15: TppDBCalc
          DesignLayer = ppDesignLayer6
          UserName = 'DBCalc15'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CC_VALOR_COMIS'
          DataPipeline = ppDBComissaoTipo
          DisplayFormat = '##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBComissaoTipo'
          mmHeight = 3969
          mmLeft = 168805
          mmTop = 1058
          mmWidth = 25400
          BandType = 5
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppLine24: TppLine
          DesignLayer = ppDesignLayer6
          UserName = 'Line24'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 265
          mmWidth = 196057
          BandType = 5
          GroupNo = 0
          LayerName = Foreground5
        end
        object ppDBCalc9: TppDBCalc
          DesignLayer = ppDesignLayer6
          UserName = 'DBCalc9'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'TOTAL_FAT'
          DataPipeline = ppDBComissaoTipo
          DisplayFormat = '#0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBComissaoTipo'
          mmHeight = 3969
          mmLeft = 105304
          mmTop = 1058
          mmWidth = 29633
          BandType = 5
          GroupNo = 0
          LayerName = Foreground5
        end
      end
    end
    object raCodeModule6: TraCodeModule
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
  object DsComissaoTipo: TDataSource
    DataSet = SqlCdsComissaoTipo
    Left = 944
    Top = 424
  end
  object SqlCdsComissaoTipo: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select avg(I1.PRF_ITEMCOMIS)AS MEDIA_COMIS ,sum(I1.PRF_QTDEFAT *' +
      ' I1.PRF_PRECO)AS TOTAL_FAT'#13#10',P1.PTI_CODIGO,L1.PTI_DESCRI,PED.REP' +
      '_CODIGO,REP.REP_NOME'#13#10'from PED_IT01 I1 left join PED0000 PED on ' +
      '(I1.PED_CODIGO = PED.PED_CODIGO) left join PRD0000 P1 on(I1.PRD_' +
      'REFER = P1.PRD_REFER)'#13#10'left join PRD_TIPO L1 on (L1.PTI_CODIGO =' +
      ' P1.PTI_CODIGO)'#13#10'left join REP0000 REP on (REP.rep_codigo = PED.' +
      'REP_CODIGO)'#13#10'where  PED.ped_codigo in(select PED_CODIGO from FAT' +
      '0000)'#13#10'group by P1.PTI_CODIGO,L1.PTI_DESCRI,PED.REP_CODIGO,REP.R' +
      'EP_NOME'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsComissaoTipoCalcFields
    CommandText = 
      'select avg(I1.PRF_ITEMCOMIS)AS MEDIA_COMIS ,sum(I1.PRF_QTDEFAT *' +
      ' I1.PRF_PRECO)AS TOTAL_FAT'#13#10',P1.PTI_CODIGO,L1.PTI_DESCRI,PED.REP' +
      '_CODIGO,REP.REP_NOME'#13#10'from PED_IT01 I1 left join PED0000 PED on ' +
      '(I1.PED_CODIGO = PED.PED_CODIGO) left join PRD0000 P1 on(I1.PRD_' +
      'REFER = P1.PRD_REFER)'#13#10'left join PRD_TIPO L1 on (L1.PTI_CODIGO =' +
      ' P1.PTI_CODIGO)'#13#10'left join REP0000 REP on (REP.rep_codigo = PED.' +
      'REP_CODIGO)'#13#10'where  PED.ped_codigo in(select PED_CODIGO from FAT' +
      '0000)'#13#10'group by P1.PTI_CODIGO,L1.PTI_DESCRI,PED.REP_CODIGO,REP.R' +
      'EP_NOME'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 584
    Top = 416
    object SqlCdsComissaoTipoMEDIA_COMIS: TFMTBCDField
      FieldName = 'MEDIA_COMIS'
      Precision = 15
    end
    object SqlCdsComissaoTipoTOTAL_FAT: TFMTBCDField
      FieldName = 'TOTAL_FAT'
      Precision = 15
    end
    object SqlCdsComissaoTipoPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object SqlCdsComissaoTipoPTI_DESCRI: TStringField
      DisplayWidth = 100
      FieldName = 'PTI_DESCRI'
      Size = 100
    end
    object SqlCdsComissaoTipoREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SqlCdsComissaoTipoCC_VALOR_COMIS: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CC_VALOR_COMIS'
      Calculated = True
    end
    object SqlCdsComissaoTipoREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
  end
  object ppDBComissaoTipo: TppDBPipeline
    DataSource = DsComissaoTipo
    UserName = 'DBComissaoTipo'
    Left = 696
    Top = 432
  end
  object SqlCdsTipoAnalitico1: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 608
    Top = 480
  end
  object CdsTipoAnalitico2: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'Select N1.PRD_REFER,P1.PRD_DESCRI,sum(N1.NF_PRECO * N1.NF_QTDE)a' +
      's TotalPReco ,'#13#10'sum(N1.NF_QTDE)as TotalQtde , AVG(N1.NF_COMISSAO' +
      ')as media_perc'#13#10'from nf_it01 N1  left join PRD0000 P1 on (P1.PRD' +
      '_REFER = N1.PRD_REFER)'#13#10'group by N1.PRD_REFER,P1.PRD_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select N1.PRD_REFER,P1.PRD_DESCRI,sum(N1.NF_PRECO * N1.NF_QTDE)a' +
      's TotalPReco ,'#13#10'sum(N1.NF_QTDE)as TotalQtde , AVG(N1.NF_COMISSAO' +
      ')as media_perc'#13#10'from nf_it01 N1  left join PRD0000 P1 on (P1.PRD' +
      '_REFER = N1.PRD_REFER)'#13#10'group by N1.PRD_REFER,P1.PRD_DESCRI'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 832
    Top = 416
    object CdsTipoAnalitico2PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object CdsTipoAnalitico2PRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object CdsTipoAnalitico2TOTALPRECO: TFMTBCDField
      FieldName = 'TOTALPRECO'
      Precision = 15
    end
    object CdsTipoAnalitico2TOTALQTDE: TFMTBCDField
      FieldName = 'TOTALQTDE'
      Precision = 15
    end
    object CdsTipoAnalitico2MEDIA_PERC: TFMTBCDField
      FieldName = 'MEDIA_PERC'
      Precision = 15
    end
  end
  object SQLCdsComissaoProd: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'    T1.FAT_CODIGO,'#13#10'    T2.CLI_CODIGO,'#13#10'    T2.REP_CODIG' +
      'O,'#13#10'    T5.CLI_RAZAO,'#13#10'    T5.CLI_CIDADE,'#13#10'    T2.REP_CODIGO,'#13#10' ' +
      '   T7.REP_NOME, '#13#10'    T2.FPC_DTEMIS,'#13#10'    T2.FPC_PAGTO,'#13#10'    T2.' +
      'FPC_VENCTO,'#13#10'    T2.EMP_CODIGO,'#13#10'    T3.PED_CODIGO,'#13#10'    T1.PRD_' +
      'REFER,'#13#10'    T4.PRD_DESCRI,'#13#10'    T4.LIN_CODIGO,'#13#10'    T1.FIT_QTDE,' +
      #13#10'    T1.FIT_PRECO,'#13#10'    T1.FIT_COMIS,'#13#10'    T8.LIN_DESCRI'#13#10'FROM ' +
      'FAT_IT02 T1'#13#10'JOIN FAT_PC01 T2 on (T2.fat_registro IN (SELECT FIR' +
      'ST 1 T6.fat_registro FROM fat_pc01 T6 WHERE T6.fat_codigo = T1.f' +
      'at_codigo ))'#13#10'JOIN FAT0000 T3 ON (T3.FAT_CODIGO = T2.FAT_CODIGO)' +
      #13#10'JOIN PRD0000 T4 ON (T4.PRD_REFER = T1.PRD_REFER)'#13#10'JOIN CLI0000' +
      ' T5 ON (T5.CLI_CODIGO = T3.CLI_CODIGO)'#13#10'JOIN REP0000 T7 ON (T7.R' +
      'EP_CODIGO = T2.REP_CODIGO)'#13#10'JOIN PRD_LINHA T8 ON (T8.LIN_CODIGO ' +
      '= T4.LIN_CODIGO)'#13#10'GROUP BY'#13#10'    T1.FAT_CODIGO,'#13#10'    T2.CLI_CODIG' +
      'O,'#13#10'    T2.REP_CODIGO,'#13#10'    T7.REP_NOME, '#13#10'    T5.CLI_RAZAO,'#13#10'  ' +
      '  T5.CLI_CIDADE,'#13#10'    T2.REP_CODIGO,'#13#10'    T2.FPC_DTEMIS,'#13#10'    T2' +
      '.FPC_PAGTO,'#13#10'    T2.FPC_VENCTO,'#13#10'    T2.EMP_CODIGO,'#13#10'    T3.PED_' +
      'CODIGO,'#13#10'    T1.PRD_REFER,'#13#10'    T4.PRD_DESCRI,'#13#10'    T4.LIN_CODIG' +
      'O,'#13#10'    T1.FIT_QTDE,'#13#10'    T1.FIT_PRECO,'#13#10'    T1.FIT_COMIS,'#13#10'    ' +
      'T8.LIN_DESCRI'#13#10'ORDER BY T2.REP_CODIGO,T4.LIN_CODIGO,T2.FPC_DTEMI' +
      'S,T5.CLI_RAZAO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SQLCdsComissaoProdCalcFields
    CommandText = 
      'SELECT'#13#10'    T1.FAT_CODIGO,'#13#10'    T2.CLI_CODIGO,'#13#10'    T2.REP_CODIG' +
      'O,'#13#10'    T5.CLI_RAZAO,'#13#10'    T5.CLI_CIDADE,'#13#10'    T2.REP_CODIGO,'#13#10' ' +
      '   T7.REP_NOME, '#13#10'    T2.FPC_DTEMIS,'#13#10'    T2.FPC_PAGTO,'#13#10'    T2.' +
      'FPC_VENCTO,'#13#10'    T2.EMP_CODIGO,'#13#10'    T3.PED_CODIGO,'#13#10'    T1.PRD_' +
      'REFER,'#13#10'    T4.PRD_DESCRI,'#13#10'    T4.LIN_CODIGO,'#13#10'    T1.FIT_QTDE,' +
      #13#10'    T1.FIT_PRECO,'#13#10'    T1.FIT_COMIS,'#13#10'    T8.LIN_DESCRI'#13#10'FROM ' +
      'FAT_IT02 T1'#13#10'JOIN FAT_PC01 T2 on (T2.fat_registro IN (SELECT FIR' +
      'ST 1 T6.fat_registro FROM fat_pc01 T6 WHERE T6.fat_codigo = T1.f' +
      'at_codigo ))'#13#10'JOIN FAT0000 T3 ON (T3.FAT_CODIGO = T2.FAT_CODIGO)' +
      #13#10'JOIN PRD0000 T4 ON (T4.PRD_REFER = T1.PRD_REFER)'#13#10'JOIN CLI0000' +
      ' T5 ON (T5.CLI_CODIGO = T3.CLI_CODIGO)'#13#10'JOIN REP0000 T7 ON (T7.R' +
      'EP_CODIGO = T2.REP_CODIGO)'#13#10'JOIN PRD_LINHA T8 ON (T8.LIN_CODIGO ' +
      '= T4.LIN_CODIGO)'#13#10'GROUP BY'#13#10'    T1.FAT_CODIGO,'#13#10'    T2.CLI_CODIG' +
      'O,'#13#10'    T2.REP_CODIGO,'#13#10'    T7.REP_NOME, '#13#10'    T5.CLI_RAZAO,'#13#10'  ' +
      '  T5.CLI_CIDADE,'#13#10'    T2.REP_CODIGO,'#13#10'    T2.FPC_DTEMIS,'#13#10'    T2' +
      '.FPC_PAGTO,'#13#10'    T2.FPC_VENCTO,'#13#10'    T2.EMP_CODIGO,'#13#10'    T3.PED_' +
      'CODIGO,'#13#10'    T1.PRD_REFER,'#13#10'    T4.PRD_DESCRI,'#13#10'    T4.LIN_CODIG' +
      'O,'#13#10'    T1.FIT_QTDE,'#13#10'    T1.FIT_PRECO,'#13#10'    T1.FIT_COMIS,'#13#10'    ' +
      'T8.LIN_DESCRI'#13#10'ORDER BY T2.REP_CODIGO,T4.LIN_CODIGO,T2.FPC_DTEMI' +
      'S,T5.CLI_RAZAO'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 704
    Top = 144
    object SQLCdsComissaoProdFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object SQLCdsComissaoProdCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SQLCdsComissaoProdCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object SQLCdsComissaoProdREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SQLCdsComissaoProdFPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
    end
    object SQLCdsComissaoProdFPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
    end
    object SQLCdsComissaoProdFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object SQLCdsComissaoProdEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SQLCdsComissaoProdPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SQLCdsComissaoProdPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SQLCdsComissaoProdLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      Size = 3
    end
    object SQLCdsComissaoProdFIT_QTDE: TFMTBCDField
      FieldName = 'FIT_QTDE'
      Precision = 15
      Size = 4
    end
    object SQLCdsComissaoProdFIT_PRECO: TFMTBCDField
      FieldName = 'FIT_PRECO'
      Precision = 15
      Size = 4
    end
    object SQLCdsComissaoProdFIT_COMIS: TFMTBCDField
      FieldName = 'FIT_COMIS'
      Precision = 15
      Size = 4
    end
    object SQLCdsComissaoProdCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object SQLCdsComissaoProdREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object SQLCdsComissaoProdLIN_DESCRI: TStringField
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object SQLCdsComissaoProdCC_TOTAL_VENDA: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CC_TOTAL_VENDA'
      Calculated = True
    end
    object SQLCdsComissaoProdCC_TOTAL_COMIS: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CC_TOTAL_COMIS'
      Calculated = True
    end
    object SQLCdsComissaoProdPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
  end
  object DsComissaoProd: TDataSource
    DataSet = SQLCdsComissaoProd
    Left = 800
    Top = 144
  end
  object ppRComissaoProd: TppReport
    AutoStop = False
    DataPipeline = DBComissaoProd
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = True
    PrinterSetup.mmMarginBottom = 10000
    PrinterSetup.mmMarginLeft = 5000
    PrinterSetup.mmMarginRight = 5000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    PrinterSetup.DevMode = {00000000}
    Template.FileName = 'C:\Developer\Adjutor\fontesrelatorios\RELCOMISSAOPROD.rtm'
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
    LanguageID = 'Default'
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
    Left = 976
    Top = 144
    Version = '22.0'
    mmColumnWidth = 287000
    DataPipelineName = 'DBComissaoProd'
    object ppHeaderBand4: TppHeaderBand
      BeforePrint = pp00HeaderBand2BeforePrint
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 20108
      mmPrintPosition = 0
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer7
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 285751
        BandType = 0
        LayerName = Foreground6
      end
      object LBL_CP_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'LBL_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_CP_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 0
        mmTop = 1323
        mmWidth = 32089
        BandType = 0
        LayerName = Foreground6
      end
      object LBL_CP_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'LBL_03_LTITULO1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_CP_LTITULO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 0
        mmTop = 6085
        mmWidth = 31496
        BandType = 0
        LayerName = Foreground6
      end
      object LBL_CP_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'LB_TITULO2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LBL_CP_LTITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 0
        mmTop = 10848
        mmWidth = 31496
        BandType = 0
        LayerName = Foreground6
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer7
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 15345
        mmWidth = 285486
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
        Transparent = True
        mmHeight = 4057
        mmLeft = 247915
        mmTop = 794
        mmWidth = 31962
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
        Transparent = True
        mmHeight = 4057
        mmLeft = 257705
        mmTop = 10848
        mmWidth = 21590
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel61: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label1'
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
        mmHeight = 3260
        mmLeft = 4498
        mmTop = 15875
        mmWidth = 10964
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel62: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label2'
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
        mmHeight = 3175
        mmLeft = 21696
        mmTop = 15875
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel64: TppLabel
        DesignLayer = ppDesignLayer7
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
        mmHeight = 3260
        mmLeft = 46831
        mmTop = 15875
        mmWidth = 8805
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel69: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3260
        mmLeft = 113771
        mmTop = 15875
        mmWidth = 9906
        BandType = 0
        LayerName = Foreground6
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer7
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 19315
        mmWidth = 285486
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel71: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Pre'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3260
        mmLeft = 171450
        mmTop = 15875
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel73: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label8'
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
        Transparent = True
        mmHeight = 3260
        mmLeft = 189971
        mmTop = 15875
        mmWidth = 6138
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel74: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3260
        mmLeft = 247386
        mmTop = 15875
        mmWidth = 15028
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel76: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label76'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Com.%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3260
        mmLeft = 216959
        mmTop = 15875
        mmWidth = 9356
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel77: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label77'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Vl.Comiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3260
        mmLeft = 227807
        mmTop = 15875
        mmWidth = 16002
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel78: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label78'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Pre'#231'o Bruto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3260
        mmLeft = 200290
        mmTop = 15875
        mmWidth = 14986
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel79: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label79'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3260
        mmLeft = 265642
        mmTop = 15875
        mmWidth = 14520
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label58'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3260
        mmLeft = 87048
        mmTop = 15610
        mmWidth = 8805
        BandType = 0
        LayerName = Foreground6
      end
    end
    object ppDetailBand5: TppDetailBand
      Border.mmPadding = 0
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText49: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FPC_DTEMIS'
        DataPipeline = DBComissaoProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBComissaoProd'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText50: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText50'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FAT_CODIGO'
        DataPipeline = DBComissaoProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBComissaoProd'
        mmHeight = 3175
        mmLeft = 19315
        mmTop = 0
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText52: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText52'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CLI_RAZAO'
        DataPipeline = DBComissaoProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBComissaoProd'
        mmHeight = 2921
        mmLeft = 31221
        mmTop = 0
        mmWidth = 53975
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText53: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText53'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PRD_DESCRI'
        DataPipeline = DBComissaoProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBComissaoProd'
        mmHeight = 2921
        mmLeft = 116681
        mmTop = 0
        mmWidth = 46831
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText51: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText51'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FIT_PRECO'
        DataPipeline = DBComissaoProd
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBComissaoProd'
        mmHeight = 3260
        mmLeft = 165100
        mmTop = 0
        mmWidth = 15000
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText54: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText54'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FIT_QTDE'
        DataPipeline = DBComissaoProd
        DisplayFormat = '#,##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBComissaoProd'
        mmHeight = 3175
        mmLeft = 181505
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground6
      end
      object ppVariable4: TppVariable
        DesignLayer = ppDesignLayer7
        UserName = 'Variable4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
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
        mmLeft = 198438
        mmTop = 0
        mmWidth = 17000
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBREP_CODIGO: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBREP_CODIGO'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'REP_CODIGO'
        DataPipeline = DBComissaoProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        Visible = False
        DataPipelineName = 'DBComissaoProd'
        mmHeight = 3260
        mmLeft = 2381
        mmTop = 0
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText57: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText57'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'LIN_CODIGO'
        DataPipeline = DBComissaoProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'DBComissaoProd'
        mmHeight = 2910
        mmLeft = 37042
        mmTop = 265
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText60: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText60'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FIT_COMIS'
        DataPipeline = DBComissaoProd
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBComissaoProd'
        mmHeight = 3175
        mmLeft = 216959
        mmTop = 0
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground6
      end
      object ppVariable5: TppVariable
        DesignLayer = ppDesignLayer7
        UserName = 'Variable5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
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
        mmLeft = 227807
        mmTop = 0
        mmWidth = 16000
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText61: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText61'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FPC_VENCTO'
        DataPipeline = DBComissaoProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBComissaoProd'
        mmHeight = 3175
        mmLeft = 245798
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText62: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText62'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FPC_PAGTO'
        DataPipeline = DBComissaoProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBComissaoProd'
        mmHeight = 3175
        mmLeft = 263790
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText63: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText501'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PED_CODIGO'
        DataPipeline = DBComissaoProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBComissaoProd'
        mmHeight = 3175
        mmLeft = 86519
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText64: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText64'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PRD_REFER'
        DataPipeline = DBComissaoProd
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBComissaoProd'
        mmHeight = 3260
        mmLeft = 99748
        mmTop = 0
        mmWidth = 16000
        BandType = 4
        LayerName = Foreground6
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'ppDBREP_CODIGO'
      BreakType = btCustomField
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      NewFile = False
      object ppGroupHeaderBand5: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppDBText55: TppDBText
          DesignLayer = ppDesignLayer7
          UserName = 'DBText55'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'REP_CODIGO'
          DataPipeline = DBComissaoProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'DBComissaoProd'
          mmHeight = 3175
          mmLeft = 28575
          mmTop = 0
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLabel65: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label65'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'VENDEDOR :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3260
          mmLeft = 3175
          mmTop = 0
          mmWidth = 17653
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppDBText56: TppDBText
          DesignLayer = ppDesignLayer7
          UserName = 'DBText56'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'REP_NOME'
          DataPipeline = DBComissaoProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'DBComissaoProd'
          mmHeight = 3175
          mmLeft = 37306
          mmTop = 0
          mmWidth = 98690
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLine31: TppLine
          DesignLayer = ppDesignLayer7
          UserName = 'Line6'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 265
          mmTop = 3969
          mmWidth = 135202
          BandType = 3
          GroupNo = 0
          LayerName = Foreground6
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLabel80: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label80'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'TOTAL GERAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3387
          mmLeft = 3175
          mmTop = 1000
          mmWidth = 19812
          BandType = 5
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppDBCalc13: TppDBCalc
          DesignLayer = ppDesignLayer7
          UserName = 'DBCalc13'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'FIT_QTDE'
          DataPipeline = DBComissaoProd
          DisplayFormat = '#,##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBComissaoProd'
          mmHeight = 3260
          mmLeft = 181769
          mmTop = 1000
          mmWidth = 15081
          BandType = 5
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppDBCalc14: TppDBCalc
          DesignLayer = ppDesignLayer7
          UserName = 'DBCalc14'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CC_TOTAL_VENDA'
          DataPipeline = DBComissaoProd
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBComissaoProd'
          mmHeight = 3260
          mmLeft = 198702
          mmTop = 1000
          mmWidth = 17000
          BandType = 5
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppDBCalc16: TppDBCalc
          DesignLayer = ppDesignLayer7
          UserName = 'DBCalc16'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CC_TOTAL_COMIS'
          DataPipeline = DBComissaoProd
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBComissaoProd'
          mmHeight = 3260
          mmLeft = 227013
          mmTop = 1000
          mmWidth = 17000
          BandType = 5
          GroupNo = 0
          LayerName = Foreground6
        end
        object ppLine29: TppLine
          DesignLayer = ppDesignLayer7
          UserName = 'Line5'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 529
          mmWidth = 285751
          BandType = 5
          GroupNo = 0
          LayerName = Foreground6
        end
      end
    end
    object ppGroup6: TppGroup
      BreakName = 'LIN_CODIGO'
      DataPipeline = DBComissaoProd
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group6'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DBComissaoProd'
      NewFile = False
      object ppGroupHeaderBand6: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 3440
        mmPrintPosition = 0
        object ppLabel75: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label75'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'LINHA :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3387
          mmLeft = 3175
          mmTop = 0
          mmWidth = 10287
          BandType = 3
          GroupNo = 1
          LayerName = Foreground6
        end
        object ppDBText58: TppDBText
          DesignLayer = ppDesignLayer7
          UserName = 'DBText58'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'LIN_CODIGO'
          DataPipeline = DBComissaoProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'DBComissaoProd'
          mmHeight = 3387
          mmLeft = 14817
          mmTop = 0
          mmWidth = 8996
          BandType = 3
          GroupNo = 1
          LayerName = Foreground6
        end
        object ppDBText59: TppDBText
          DesignLayer = ppDesignLayer7
          UserName = 'DBText59'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'LIN_DESCRI'
          DataPipeline = DBComissaoProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'DBComissaoProd'
          mmHeight = 3387
          mmLeft = 25400
          mmTop = 0
          mmWidth = 72496
          BandType = 3
          GroupNo = 1
          LayerName = Foreground6
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppDBCalc10: TppDBCalc
          DesignLayer = ppDesignLayer7
          UserName = 'DBCalc10'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'FIT_QTDE'
          DataPipeline = DBComissaoProd
          DisplayFormat = '#,##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBComissaoProd'
          mmHeight = 3260
          mmLeft = 181769
          mmTop = 1000
          mmWidth = 15081
          BandType = 5
          GroupNo = 1
          LayerName = Foreground6
        end
        object ppDBCalc11: TppDBCalc
          DesignLayer = ppDesignLayer7
          UserName = 'DBCalc101'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CC_TOTAL_VENDA'
          DataPipeline = DBComissaoProd
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBComissaoProd'
          mmHeight = 3260
          mmLeft = 198702
          mmTop = 1000
          mmWidth = 17000
          BandType = 5
          GroupNo = 1
          LayerName = Foreground6
        end
        object ppDBCalc12: TppDBCalc
          DesignLayer = ppDesignLayer7
          UserName = 'DBCalc12'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'CC_TOTAL_COMIS'
          DataPipeline = DBComissaoProd
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DBComissaoProd'
          mmHeight = 3260
          mmLeft = 226748
          mmTop = 1000
          mmWidth = 17000
          BandType = 5
          GroupNo = 1
          LayerName = Foreground6
        end
        object ppLabel70: TppLabel
          DesignLayer = ppDesignLayer7
          UserName = 'Label70'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'TOTAL DA LINHA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3387
          mmLeft = 3175
          mmTop = 1000
          mmWidth = 23283
          BandType = 5
          GroupNo = 1
          LayerName = Foreground6
        end
        object ppLine28: TppLine
          DesignLayer = ppDesignLayer7
          UserName = 'Line4'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 265
          mmWidth = 285751
          BandType = 5
          GroupNo = 1
          LayerName = Foreground6
        end
      end
    end
    object raCodeModule5: TraCodeModule
      object raProgramInfo13: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable4OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable4OnCalc(var Value: Variant);'#13#10'begin'#13#10#13#10'  Value' +
          ' := (DBComissaoProd['#39'FIT_QTDE'#39']* DBComissaoProd['#39'FIT_PRECO'#39'])'#13#10'e' +
          'nd;'#13#10
        raProgram.ComponentName = 'Variable4'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
      end
      object raProgramInfo14: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'Variable5OnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure Variable5OnCalc(var Value: Variant);'#13#10'begin'#13#10#13#10'  Value' +
          ' :=(DBComissaoProd['#39'FIT_QTDE'#39']* DBComissaoProd['#39'FIT_PRECO'#39'])*DBC' +
          'omissaoProd['#39'FIT_COMIS'#39']/100'#13#10#13#10'end;'#13#10
        raProgram.ComponentName = 'Variable5'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
      end
    end
    object ppDesignLayers7: TppDesignLayers
      object ppDesignLayer7: TppDesignLayer
        UserName = 'Foreground6'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object DBComissaoProd: TppDBPipeline
    DataSource = DsComissaoProd
    UserName = 'DBComissaoProd'
    Left = 888
    Top = 144
    object DBComissaoProdppField1: TppField
      FieldAlias = 'FAT_CODIGO'
      FieldName = 'FAT_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object DBComissaoProdppField2: TppField
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object DBComissaoProdppField3: TppField
      FieldAlias = 'CLI_RAZAO'
      FieldName = 'CLI_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object DBComissaoProdppField4: TppField
      FieldAlias = 'REP_CODIGO'
      FieldName = 'REP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object DBComissaoProdppField5: TppField
      FieldAlias = 'FPC_DTEMIS'
      FieldName = 'FPC_DTEMIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object DBComissaoProdppField6: TppField
      FieldAlias = 'FPC_PAGTO'
      FieldName = 'FPC_PAGTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object DBComissaoProdppField7: TppField
      FieldAlias = 'FPC_VENCTO'
      FieldName = 'FPC_VENCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object DBComissaoProdppField8: TppField
      FieldAlias = 'EMP_CODIGO'
      FieldName = 'EMP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object DBComissaoProdppField9: TppField
      FieldAlias = 'PRD_REFER'
      FieldName = 'PRD_REFER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object DBComissaoProdppField10: TppField
      FieldAlias = 'PRD_DESCRI'
      FieldName = 'PRD_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object DBComissaoProdppField11: TppField
      FieldAlias = 'LIN_CODIGO'
      FieldName = 'LIN_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object DBComissaoProdppField12: TppField
      FieldAlias = 'FIT_QTDE'
      FieldName = 'FIT_QTDE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object DBComissaoProdppField13: TppField
      FieldAlias = 'FIT_PRECO'
      FieldName = 'FIT_PRECO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object DBComissaoProdppField14: TppField
      FieldAlias = 'FIT_COMIS'
      FieldName = 'FIT_COMIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object DBComissaoProdppField15: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object DBComissaoProdppField16: TppField
      FieldAlias = 'REP_NOME'
      FieldName = 'REP_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object DBComissaoProdppField17: TppField
      FieldAlias = 'LIN_DESCRI'
      FieldName = 'LIN_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object DBComissaoProdppField18: TppField
      FieldAlias = 'CC_TOTAL_VENDA'
      FieldName = 'CC_TOTAL_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object DBComissaoProdppField19: TppField
      FieldAlias = 'CC_TOTAL_COMIS'
      FieldName = 'CC_TOTAL_COMIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object DBComissaoProdppField20: TppField
      FieldAlias = 'PED_CODIGO'
      FieldName = 'PED_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
  end
  object RDPrintBordero: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.MostrarSETUP = True
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 75
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    OpcoesPreview.BotaoPDF = Ativo
    OpcoesPreview.BotaoEMAIL = Ativo
    OpcoesPreview.ExtraBtnStatus = Invisivel
    OpcoesPreview.ExtraBtnWidth = 80
    OpcoesPreview.ExtraBtnCaption = 'Extra Btn'
    OpcoesPreview.PreviewMode = vPrinter
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'DELTRESS SISTEMAS S/S LTDA'
    RegistroUsuario.SerieProduto = 'DEMONSTRA'#199#195'O'
    RegistroUsuario.AutorizacaoKey = '*** SEM REGISTRO ***'
    About = 'RDprint 8.2 - TRIAL'
    Acentuacao = SemAcento
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Gerado por RDprint'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Grafico
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERIC=EPSON'
      'TEXT=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    PortaComunicacao = 'LPT1'
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 132
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S17cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    FonteGrafica = sCourierNew
    ReduzParaCaber = True
    Left = 808
    Top = 312
  end
  object ReportComissao: TppReport
    AutoStop = False
    DataPipeline = pipeComissao
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
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
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
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
    Left = 976
    Top = 80
    Version = '22.0'
    mmColumnWidth = 0
    DataPipelineName = 'pipeComissao'
    object ppHeaderBand5: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 15610
      mmPrintPosition = 0
      object lempresa: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'lempresa'
        OnGetText = lempresaGetText
        Border.mmPadding = 0
        Caption = 'lempresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4762
        mmLeft = 3704
        mmTop = 1323
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground7
      end
      object ltitulo: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'ltitulo'
        OnGetText = ltituloGetText
        Border.mmPadding = 0
        Caption = 'ltitulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 3969
        mmTop = 6707
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground7
      end
      object lperiodo: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'lperiodo'
        OnGetText = lperiodoGetText
        Border.mmPadding = 0
        Caption = 'lperiodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 3969
        mmTop = 11205
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground7
      end
      object ppSystemVariable9: TppSystemVariable
        DesignLayer = ppDesignLayer8
        UserName = 'SystemVariable9'
        Border.mmPadding = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 177800
        mmTop = 1323
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground7
      end
      object lquinzena: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'lquinzena'
        OnGetText = lquinzenaGetText
        Border.mmPadding = 0
        Caption = 'lquinzena'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 179123
        mmTop = 11205
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground7
      end
    end
    object ppDetailBand6: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText68: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText68'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'FPC_DTEMIS'
        DataPipeline = pipeComissao
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipeComissao'
        mmHeight = 3663
        mmLeft = 1056
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText69: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText69'
        Border.mmPadding = 0
        DataField = 'PED_CODIGO'
        DataPipeline = pipeComissao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipeComissao'
        mmHeight = 3663
        mmLeft = 15871
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText70: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText70'
        Border.mmPadding = 0
        DataField = 'CLI_RAZAO'
        DataPipeline = pipeComissao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipeComissao'
        mmHeight = 3663
        mmLeft = 26286
        mmTop = 0
        mmWidth = 31750
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText71: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText701'
        Border.mmPadding = 0
        DataField = 'CLI_UF'
        DataPipeline = pipeComissao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipeComissao'
        mmHeight = 3663
        mmLeft = 58728
        mmTop = 0
        mmWidth = 3528
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText72: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText702'
        Border.mmPadding = 0
        DataField = 'FAT_CODIGO'
        DataPipeline = pipeComissao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipeComissao'
        mmHeight = 3663
        mmLeft = 62702
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText75: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText75'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'FPC_VENCTO'
        DataPipeline = pipeComissao
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipeComissao'
        mmHeight = 3663
        mmLeft = 139837
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText76: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText76'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'FPC_PAGTO'
        DataPipeline = pipeComissao
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipeComissao'
        mmHeight = 3663
        mmLeft = 156771
        mmTop = 0
        mmWidth = 12532
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText78: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText78'
        Border.mmPadding = 0
        DataField = 'FAT_COMIS1'
        DataPipeline = pipeComissao
        DisplayFormat = '###,##0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipeComissao'
        mmHeight = 3704
        mmLeft = 117188
        mmTop = 0
        mmWidth = 8742
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText79: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText79'
        Border.mmPadding = 0
        DataField = 'Parcelas'
        DataPipeline = pipeComissao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipeComissao'
        mmHeight = 3663
        mmLeft = 73616
        mmTop = 0
        mmWidth = 7582
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText73: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText73'
        Border.mmPadding = 0
        DataField = 'VLNCOMIS'
        DataPipeline = pipeComissao
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pipeComissao'
        mmHeight = 3704
        mmLeft = 103179
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText77: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText77'
        Border.mmPadding = 0
        DataField = 'comissao'
        DataPipeline = pipeComissao
        DisplayFormat = '###,##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pipeComissao'
        mmHeight = 3704
        mmLeft = 126805
        mmTop = 0
        mmWidth = 12329
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText74: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText74'
        Border.mmPadding = 0
        DataField = 'VL_LIQ'
        DataPipeline = pipeComissao
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pipeComissao'
        mmHeight = 3663
        mmLeft = 82191
        mmTop = 0
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground7
      end
      object ppDBText82: TppDBText
        DesignLayer = ppDesignLayer8
        UserName = 'DBText2'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'REP_NOME'
        DataPipeline = pipeComissao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipeComissao'
        mmHeight = 3704
        mmLeft = 171980
        mmTop = 0
        mmWidth = 14287
        BandType = 4
        LayerName = Foreground7
      end
    end
    object ppFooterBand3: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBCalc18: TppDBCalc
        DesignLayer = ppDesignLayer8
        UserName = 'DBCalc18'
        Border.mmPadding = 0
        DataField = 'VL_LIQ'
        DataPipeline = pipeComissao
        DisplayFormat = '###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pipeComissao'
        mmHeight = 4498
        mmLeft = 48154
        mmTop = 265
        mmWidth = 53969
        BandType = 7
        LayerName = Foreground7
      end
      object ppDBCalc20: TppDBCalc
        DesignLayer = ppDesignLayer8
        UserName = 'DBCalc20'
        Border.mmPadding = 0
        DataField = 'comissao'
        DataPipeline = pipeComissao
        DisplayFormat = '###,##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pipeComissao'
        mmHeight = 4498
        mmLeft = 104489
        mmTop = 265
        mmWidth = 34645
        BandType = 7
        LayerName = Foreground7
      end
      object ppLabel92: TppLabel
        DesignLayer = ppDesignLayer8
        UserName = 'Label92'
        Border.mmPadding = 0
        Caption = 'Total M'#234's :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 3969
        mmTop = 265
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground7
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'REP_CODIGO'
      DataPipeline = pipeComissao
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'pipeComissao'
      NewFile = False
      object ppGroupHeaderBand7: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 16140
        mmPrintPosition = 0
        object ppDBText65: TppDBText
          DesignLayer = ppDesignLayer8
          UserName = 'DBText65'
          Border.mmPadding = 0
          DataField = 'REP_CODIGO'
          DataPipeline = pipeComissao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          DataPipelineName = 'pipeComissao'
          mmHeight = 4763
          mmLeft = 3969
          mmTop = 352
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppDBText67: TppDBText
          DesignLayer = ppDesignLayer8
          UserName = 'DBText67'
          AutoSize = True
          Border.mmPadding = 0
          DataField = 'REP_NOME'
          DataPipeline = pipeComissao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          DataPipelineName = 'pipeComissao'
          mmHeight = 4498
          mmLeft = 18256
          mmTop = 5821
          mmWidth = 64382
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppLine32: TppLine
          DesignLayer = ppDesignLayer8
          UserName = 'Line32'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 11293
          mmWidth = 285486
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppLabel59: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label59'
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
          mmHeight = 3175
          mmLeft = 26286
          mmTop = 11778
          mmWidth = 8731
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppLine33: TppLine
          DesignLayer = ppDesignLayer8
          UserName = 'Line33'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 14997
          mmWidth = 285486
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppLabel60: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label60'
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
          mmHeight = 3260
          mmLeft = 972
          mmTop = 11735
          mmWidth = 10964
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppLabel81: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label81'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3175
          mmLeft = 15871
          mmTop = 11778
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppLabel82: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label82'
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
          mmHeight = 3704
          mmLeft = 58728
          mmTop = 11513
          mmWidth = 3440
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppLabel83: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label83'
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
          mmHeight = 3704
          mmLeft = 62702
          mmTop = 11513
          mmWidth = 8202
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppLabel84: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label84'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'PC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3704
          mmLeft = 75491
          mmTop = 11513
          mmWidth = 3440
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppLabel85: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label85'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Valor liq.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3704
          mmLeft = 82191
          mmTop = 11377
          mmWidth = 12689
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppLabel86: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label86'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Vl s/comis.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3704
          mmLeft = 101327
          mmTop = 11642
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppLabel87: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label87'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3704
          mmLeft = 121162
          mmTop = 11513
          mmWidth = 1585
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppLabel88: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label88'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Comis Pg.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3704
          mmLeft = 126736
          mmTop = 11642
          mmWidth = 12435
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppLabel89: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label89'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Venc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3704
          mmLeft = 141512
          mmTop = 11513
          mmWidth = 6879
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppLabel90: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label90'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3704
          mmLeft = 156328
          mmTop = 11513
          mmWidth = 14288
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppLabel93: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label93'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Banco Pag:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3355
          mmLeft = 108744
          mmTop = 265
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppLabel94: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label94'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Conta :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 143404
          mmTop = 3969
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppLabel95: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label95'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'Ag'#234'ncia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3355
          mmLeft = 108744
          mmTop = 3969
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppDBText83: TppDBText
          DesignLayer = ppDesignLayer8
          UserName = 'DBText83'
          AutoSize = True
          Border.mmPadding = 0
          DataField = 'REP_RAZAO'
          DataPipeline = pipeComissao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          DataPipelineName = 'pipeComissao'
          mmHeight = 4498
          mmLeft = 18256
          mmTop = 265
          mmWidth = 54681
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppDBText66: TppDBText
          DesignLayer = ppDesignLayer8
          UserName = 'DBText81'
          Border.mmPadding = 0
          DataField = 'REP_CONTA'
          DataPipeline = pipeComissao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'pipeComissao'
          mmHeight = 3440
          mmLeft = 155575
          mmTop = 3969
          mmWidth = 21167
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppDBText80: TppDBText
          DesignLayer = ppDesignLayer8
          UserName = 'DBText82'
          Border.mmPadding = 0
          DataField = 'REP_AGENCIA'
          DataPipeline = pipeComissao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'pipeComissao'
          mmHeight = 3440
          mmLeft = 122502
          mmTop = 3969
          mmWidth = 20108
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppDBText81: TppDBText
          DesignLayer = ppDesignLayer8
          UserName = 'DBText1'
          Border.mmPadding = 0
          DataField = 'REP_BANCO'
          DataPipeline = pipeComissao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'pipeComissao'
          mmHeight = 3355
          mmLeft = 125677
          mmTop = 265
          mmWidth = 36777
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppLabel96: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label901'
          HyperlinkEnabled = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Vendedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3704
          mmLeft = 171450
          mmTop = 11642
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
          LayerName = Foreground7
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLabel91: TppLabel
          DesignLayer = ppDesignLayer8
          UserName = 'Label91'
          Border.mmPadding = 0
          Caption = 'Total :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3969
          mmLeft = 11113
          mmTop = 529
          mmWidth = 11377
          BandType = 5
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppDBCalc19: TppDBCalc
          DesignLayer = ppDesignLayer8
          UserName = 'DBCalc19'
          Border.mmPadding = 0
          DataField = 'comissao'
          DataPipeline = pipeComissao
          DisplayFormat = '###,##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pipeComissao'
          mmHeight = 4498
          mmLeft = 104489
          mmTop = 0
          mmWidth = 34645
          BandType = 5
          GroupNo = 0
          LayerName = Foreground7
        end
        object ppDBCalc17: TppDBCalc
          DesignLayer = ppDesignLayer8
          UserName = 'DBCalc17'
          Border.mmPadding = 0
          DataField = 'VL_LIQ'
          DataPipeline = pipeComissao
          DisplayFormat = '###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pipeComissao'
          mmHeight = 4498
          mmLeft = 47890
          mmTop = 0
          mmWidth = 54233
          BandType = 5
          GroupNo = 0
          LayerName = Foreground7
        end
      end
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
  object pipeComissao: TppDBPipeline
    DataSource = dsComissao
    UserName = 'pipeComissao'
    Left = 888
    Top = 80
    object pipeComissaoppField1: TppField
      FieldAlias = 'REP_CODIGO'
      FieldName = 'REP_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField2: TppField
      FieldAlias = 'REP_NOME'
      FieldName = 'REP_NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField3: TppField
      FieldAlias = 'REP_RAZAO'
      FieldName = 'REP_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField4: TppField
      FieldAlias = 'REP_AGENCIA'
      FieldName = 'REP_AGENCIA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField5: TppField
      FieldAlias = 'REP_CONTA'
      FieldName = 'REP_CONTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField6: TppField
      FieldAlias = 'REP_BANCO'
      FieldName = 'REP_BANCO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField7: TppField
      FieldAlias = 'REP_BANCOFAVOR'
      FieldName = 'REP_BANCOFAVOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField8: TppField
      FieldAlias = 'FAT_CODIGO'
      FieldName = 'FAT_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField9: TppField
      FieldAlias = 'FPC_NUMER'
      FieldName = 'FPC_NUMER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField10: TppField
      FieldAlias = 'FPC_DTEMIS'
      FieldName = 'FPC_DTEMIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField11: TppField
      FieldAlias = 'FPC_VLPARC'
      FieldName = 'FPC_VLPARC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField12: TppField
      FieldAlias = 'FPC_PAGTO'
      FieldName = 'FPC_PAGTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField13: TppField
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField14: TppField
      FieldAlias = 'CLI_RAZAO'
      FieldName = 'CLI_RAZAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField15: TppField
      FieldAlias = 'CLI_UF'
      FieldName = 'CLI_UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField16: TppField
      FieldAlias = 'FPC_VENCTO'
      FieldName = 'FPC_VENCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField17: TppField
      FieldAlias = 'FPC_VLPAGO'
      FieldName = 'FPC_VLPAGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField18: TppField
      FieldAlias = 'FPC_NPARCELAS'
      FieldName = 'FPC_NPARCELAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField19: TppField
      FieldAlias = 'FAT_CANCELADA'
      FieldName = 'FAT_CANCELADA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField20: TppField
      FieldAlias = 'PED_CODIGO'
      FieldName = 'PED_CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField21: TppField
      FieldAlias = 'FAT_QTDITEM'
      FieldName = 'FAT_QTDITEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField22: TppField
      FieldAlias = 'FAT_VL_LIQ'
      FieldName = 'FAT_VL_LIQ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField23: TppField
      FieldAlias = 'FAT_VLNCOMIS'
      FieldName = 'FAT_VLNCOMIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField24: TppField
      FieldAlias = 'FAT_DTEMIS'
      FieldName = 'FAT_DTEMIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField25: TppField
      FieldAlias = 'FAT_COMIS1'
      FieldName = 'FAT_COMIS1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField26: TppField
      FieldAlias = 'FAT_COMIS2'
      FieldName = 'FAT_COMIS2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField27: TppField
      FieldAlias = 'FAT_COMIS3'
      FieldName = 'FAT_COMIS3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField28: TppField
      FieldAlias = 'FAT_VLFAT'
      FieldName = 'FAT_VLFAT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField29: TppField
      FieldAlias = 'REP_FUNCAO'
      FieldName = 'REP_FUNCAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField30: TppField
      FieldAlias = 'FPC_DESCONTADO'
      FieldName = 'FPC_DESCONTADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField31: TppField
      FieldAlias = 'NF_NUM_NFE'
      FieldName = 'NF_NUM_NFE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField32: TppField
      FieldAlias = 'FAT_ICMSRET'
      FieldName = 'FAT_ICMSRET'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField33: TppField
      FieldAlias = 'FAT_VL_IPI'
      FieldName = 'FAT_VL_IPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField34: TppField
      FieldAlias = 'VL_LIQ'
      FieldName = 'VL_LIQ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField35: TppField
      FieldAlias = 'VLNCOMIS'
      FieldName = 'VLNCOMIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField36: TppField
      FieldAlias = 'comissao'
      FieldName = 'comissao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object pipeComissaoppField37: TppField
      FieldAlias = 'Parcelas'
      FieldName = 'Parcelas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
  end
  object dsComissao: TDataSource
    DataSet = SqlCdsComissaoPedido
    Left = 800
    Top = 80
  end
  object SqlCdsComissaoPedido: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'N1.nf_num_nfe,'#13#10'F2.FAT_CODIGO,'#13#10'F2.FPC_NUMER,'#13#10'F2.REP_CO' +
      'DIGO,'#13#10'F2.FPC_DTEMIS,'#13#10'F2.FPC_VLPARC,'#13#10'F2.FPC_PAGTO,'#13#10'F2.FPC_VEN' +
      'CTO,'#13#10'F2.FPC_VLPAGO,'#13#10'F2.FPC_NPARCELAS,'#13#10'F2.FPC_DESCONTADO,'#13#10'F1.' +
      'FAT_CANCELADA,'#13#10'F1.PED_CODIGO,'#13#10'F1.FAT_VL_LIQ,'#13#10'F1.FAT_VLNCOMIS,' +
      #13#10'F1.FAT_DTEMIS,'#13#10'F1.FAT_COMIS1,'#13#10'F1.FAT_COMIS2,'#13#10'F1.FAT_COMIS3,' +
      #13#10'F1.FAT_CANCELADA,'#13#10'F1.FAT_VLFAT,'#13#10'R1.REP_FUNCAO,'#13#10'       f1.fa' +
      't_icmsret,'#13#10'       f1.fat_vl_ipi'#13#10'FROM FAT_PC01 F2'#13#10'JOIN FAT0000' +
      ' F1 ON (F1.FAT_CODIGO = F2.FAT_CODIGO) AND (F2.EMP_CODIGO = F1.E' +
      'MP_CODIGO)  AND ((F1.OPV_CODIGO =15 ) or (F1.OPV_CODIGO =22) or ' +
      '(F1.OPV_CODIGO = 23))'#13#10'JOIN REP0000 R1 ON (R1.rep_codigo = F2.RE' +
      'P_CODIGO)'#13#10'LEFT JOIN nf0001 N1 ON (N1.nf_notanumber = F1.fat_cod' +
      'igo)'#13#10'WHERE (F1.FAT_DTEMIS BETWEEN '#39'11/11/2004'#39' AND '#39'11/25/2040'#39 +
      ')'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'N1.nf_num_nfe,'#13#10'F2.FAT_CODIGO,'#13#10'F2.FPC_NUMER,'#13#10'F2.REP_CO' +
      'DIGO,'#13#10'F2.FPC_DTEMIS,'#13#10'F2.FPC_VLPARC,'#13#10'F2.FPC_PAGTO,'#13#10'F2.FPC_VEN' +
      'CTO,'#13#10'F2.FPC_VLPAGO,'#13#10'F2.FPC_NPARCELAS,'#13#10'F2.FPC_DESCONTADO,'#13#10'F1.' +
      'FAT_CANCELADA,'#13#10'F1.PED_CODIGO,'#13#10'F1.FAT_VL_LIQ,'#13#10'F1.FAT_VLNCOMIS,' +
      #13#10'F1.FAT_DTEMIS,'#13#10'F1.FAT_COMIS1,'#13#10'F1.FAT_COMIS2,'#13#10'F1.FAT_COMIS3,' +
      #13#10'F1.FAT_CANCELADA,'#13#10'F1.FAT_VLFAT,'#13#10'R1.REP_FUNCAO,'#13#10'       f1.fa' +
      't_icmsret,'#13#10'       f1.fat_vl_ipi'#13#10'FROM FAT_PC01 F2'#13#10'JOIN FAT0000' +
      ' F1 ON (F1.FAT_CODIGO = F2.FAT_CODIGO) AND (F2.EMP_CODIGO = F1.E' +
      'MP_CODIGO)  AND ((F1.OPV_CODIGO =15 ) or (F1.OPV_CODIGO =22) or ' +
      '(F1.OPV_CODIGO = 23))'#13#10'JOIN REP0000 R1 ON (R1.rep_codigo = F2.RE' +
      'P_CODIGO)'#13#10'LEFT JOIN nf0001 N1 ON (N1.nf_notanumber = F1.fat_cod' +
      'igo)'#13#10'WHERE (F1.FAT_DTEMIS BETWEEN '#39'11/11/2004'#39' AND '#39'11/25/2040'#39 +
      ')'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 704
    Top = 81
    object SqlCdsComissaoPedidoREP_CODIGO: TStringField
      DisplayLabel = 'C'#243'd. Vendedor'
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SqlCdsComissaoPedidoREP_NOME: TStringField
      DisplayLabel = 'Nome do Vendedor'
      FieldName = 'REP_NOME'
      Size = 50
    end
    object SqlCdsComissaoPedidoREP_RAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social do Vendedor'
      FieldName = 'REP_RAZAO'
      Size = 40
    end
    object SqlCdsComissaoPedidoREP_AGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia do Vendedor'
      FieldName = 'REP_AGENCIA'
      Size = 6
    end
    object SqlCdsComissaoPedidoREP_CONTA: TStringField
      DisplayLabel = 'Conta do Vendedor'
      FieldName = 'REP_CONTA'
      Size = 12
    end
    object SqlCdsComissaoPedidoREP_BANCO: TStringField
      DisplayLabel = 'Banco do Vendedor'
      FieldName = 'REP_BANCO'
      Size = 25
    end
    object SqlCdsComissaoPedidoREP_BANCOFAVOR: TStringField
      FieldName = 'REP_BANCOFAVOR'
      Size = 30
    end
    object SqlCdsComissaoPedidoFAT_CODIGO: TStringField
      DisplayLabel = 'Fatura N'#186
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsComissaoPedidoFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object SqlCdsComissaoPedidoFPC_DTEMIS: TSQLTimeStampField
      DisplayLabel = 'Data da Emiss'#227'o'
      FieldName = 'FPC_DTEMIS'
    end
    object SqlCdsComissaoPedidoFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      Precision = 15
    end
    object SqlCdsComissaoPedidoFPC_PAGTO: TSQLTimeStampField
      DisplayLabel = 'Data do Pagamento'
      FieldName = 'FPC_PAGTO'
    end
    object SqlCdsComissaoPedidoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsComissaoPedidoCLI_RAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social do Cliente'
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object SqlCdsComissaoPedidoCLI_UF: TStringField
      DisplayLabel = 'UF do Cliente'
      FieldName = 'CLI_UF'
      Size = 2
    end
    object SqlCdsComissaoPedidoFPC_VENCTO: TSQLTimeStampField
      DisplayLabel = 'Data do Vencimento'
      FieldName = 'FPC_VENCTO'
    end
    object SqlCdsComissaoPedidoFPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      Precision = 15
    end
    object SqlCdsComissaoPedidoFPC_NPARCELAS: TSmallintField
      FieldName = 'FPC_NPARCELAS'
    end
    object SqlCdsComissaoPedidoFAT_CANCELADA: TStringField
      FieldName = 'FAT_CANCELADA'
      Size = 1
    end
    object SqlCdsComissaoPedidoPED_CODIGO: TStringField
      DisplayLabel = 'Pedido'
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object SqlCdsComissaoPedidoFAT_QTDITEM: TFMTBCDField
      FieldName = 'FAT_QTDITEM'
      Precision = 15
    end
    object SqlCdsComissaoPedidoFAT_VL_LIQ: TFMTBCDField
      FieldName = 'FAT_VL_LIQ'
      Precision = 15
    end
    object SqlCdsComissaoPedidoFAT_VLNCOMIS: TFMTBCDField
      FieldName = 'FAT_VLNCOMIS'
      Precision = 15
    end
    object SqlCdsComissaoPedidoFAT_DTEMIS: TSQLTimeStampField
      FieldName = 'FAT_DTEMIS'
    end
    object SqlCdsComissaoPedidoFAT_COMIS1: TFMTBCDField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'FAT_COMIS1'
      Precision = 15
    end
    object SqlCdsComissaoPedidoFAT_COMIS2: TFMTBCDField
      FieldName = 'FAT_COMIS2'
      Precision = 15
    end
    object SqlCdsComissaoPedidoFAT_COMIS3: TFMTBCDField
      FieldName = 'FAT_COMIS3'
      Precision = 15
    end
    object SqlCdsComissaoPedidoFAT_VLFAT: TFMTBCDField
      FieldName = 'FAT_VLFAT'
      Precision = 15
    end
    object SqlCdsComissaoPedidoREP_FUNCAO: TStringField
      FieldName = 'REP_FUNCAO'
      Size = 1
    end
    object SqlCdsComissaoPedidoFPC_DESCONTADO: TStringField
      FieldName = 'FPC_DESCONTADO'
      Size = 1
    end
    object SqlCdsComissaoPedidoNF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object SqlCdsComissaoPedidoFAT_ICMSRET: TFMTBCDField
      FieldName = 'FAT_ICMSRET'
      Precision = 20
      Size = 5
    end
    object SqlCdsComissaoPedidoFAT_VL_IPI: TFMTBCDField
      FieldName = 'FAT_VL_IPI'
      Precision = 20
      Size = 5
    end
    object SqlCdsComissaoPedidoVL_LIQ: TFloatField
      DisplayLabel = 'Valor L'#237'quido'
      FieldKind = fkInternalCalc
      FieldName = 'VL_LIQ'
    end
    object SqlCdsComissaoPedidoVLNCOMIS: TFloatField
      DisplayLabel = 'Valor Sem Comiss'#227'o'
      FieldKind = fkInternalCalc
      FieldName = 'VLNCOMIS'
    end
    object SqlCdsComissaoPedidocomissao: TFloatField
      DisplayLabel = 'Comiss'#227'o a Pagar'
      FieldKind = fkInternalCalc
      FieldName = 'comissao'
    end
    object SqlCdsComissaoPedidoParcelas: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Parcelas'
      Size = 10
    end
  end
  object qAux: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBInicio.MainDB
    Left = 592
    Top = 80
  end
  object qProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBInicio.MainDB
    Left = 592
    Top = 136
  end
end
