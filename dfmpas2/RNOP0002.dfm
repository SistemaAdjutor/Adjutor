inherited FormRNOPGrid: TFormRNOPGrid
  Left = 140
  Top = 191
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta das Regras Fiscais por CFOP'
  ClientHeight = 602
  ClientWidth = 1076
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  Position = poMainFormCenter
  ExplicitTop = -92
  ExplicitWidth = 1084
  ExplicitHeight = 629
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel [0]
    Left = 687
    Top = 2
    Width = 13
    Height = 14
    Caption = 'ST'
  end
  object Label2: TLabel [1]
    Left = 749
    Top = 2
    Width = 13
    Height = 14
    Caption = 'UF'
  end
  object GbPesquisa: TGroupBox [2]
    Left = 10
    Top = 0
    Width = 518
    Height = 46
    Caption = 'Natureza da Opera'#231#227'o'
    TabOrder = 0
    object CbOrigemDestino: TComboBox
      Left = 417
      Top = 17
      Width = 89
      Height = 22
      Style = csDropDownList
      ItemIndex = 2
      TabOrder = 0
      Text = 'TODAS'
      Items.Strings = (
        'ORIGEM'
        'DESTINO'
        'TODAS')
    end
    object cbCfop: TSgDbSearchCombo
      Left = 9
      Top = 17
      Width = 380
      Height = 22
      TabOrder = 1
      LookupSelect = 'ope_codigo, cfop'
      LookupOrderBy = 'cfop'
      LookupTable = 'OPE0000_VIEW_PESQUISA'
      GridAutoSize = False
      LookupSource = qAux3
      LookupKeyField = 'ope_codigo'
      ShowButton = True
      LookupTableShare = 'FISCAL'
      AutoF8WinTitulo = 'CFOP'
      AutoF8ColumnsTitulo = 'C'#243'digo, Cfop'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
  end
  object BitSair: TBitBtn [3]
    Left = 827
    Top = 24
    Width = 100
    Height = 21
    Caption = '&Sair'
    TabOrder = 2
    OnClick = BitSairClick
  end
  object DBGrid1: TDBGrid [4]
    Left = 0
    Top = 48
    Width = 1076
    Height = 554
    Hint = 
      'Crit'#233'rio de preval'#234'ncia das aliquotas icms:'#13#10#13#10'1 - Regra CFOP (e' +
      'ste registro)'#13#10'2 - Al'#237'quota Icms Reg.Produto'#13#10'3 - NCM'#13#10'4 - Icms ' +
      'UF'
    Align = alBottom
    Color = clWhite
    DataSource = DsRegra
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'OPR_ATIVO'
        Title.Alignment = taCenter
        Title.Caption = 'Ativo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IPI_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'NCM'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CFOP_ORIGEM'
        Title.Alignment = taCenter
        Title.Caption = 'Cfop Origem'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CFOP_DESTINO'
        Title.Alignment = taCenter
        Title.Caption = 'Cfop Destino'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_ORIGEM'
        Title.Caption = 'Orig. Mercadoria'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STB_TRIBUTACAO'
        Title.Alignment = taCenter
        Title.Caption = 'ST'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 24
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_PERCENTUAL_MVA'
        Title.Alignment = taCenter
        Title.Caption = 'MVA'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_PERCENTUAL_MVA_SIMPLES'
        Title.Alignment = taCenter
        Title.Caption = 'MVA Simples'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_AC'
        Title.Caption = 'AC'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_AL'
        Title.Caption = 'AL'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_AP'
        Title.Caption = 'AP'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_AM'
        Title.Caption = 'AM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_BA'
        Title.Caption = 'BA'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_CE'
        Title.Caption = 'CE'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_DF'
        Title.Caption = 'DF'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_GO'
        Title.Caption = 'GO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_ES'
        Title.Caption = 'ES'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_MA'
        Title.Caption = 'MA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_MT'
        Title.Caption = 'MT'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_MS'
        Title.Caption = 'MS'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_MG'
        Title.Caption = 'MG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_PA'
        Title.Caption = 'PA'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_PB'
        Title.Caption = 'PB'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_PR'
        Title.Caption = 'PR'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_PE'
        Title.Caption = 'PE'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_PI'
        Title.Caption = 'PI'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_RJ'
        Title.Caption = 'RJ'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_RN'
        Title.Caption = 'RN'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_RS'
        Title.Caption = 'RS'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_RO'
        Title.Caption = 'RO'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_RR'
        Title.Caption = 'RR'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_SP'
        Title.Caption = 'SP'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_SC'
        Title.Caption = 'SC'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_SE'
        Title.Caption = 'SE'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_TO'
        Title.Caption = 'TO'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPR_EX'
        Title.Caption = 'EX'
        Width = 20
        Visible = True
      end>
  end
  object pesqNCM: TLabeledEdit [5]
    Left = 538
    Top = 19
    Width = 143
    Height = 22
    EditLabel.Width = 22
    EditLabel.Height = 14
    EditLabel.Caption = 'NCM'
    TabOrder = 4
    OnChange = pesqNCMChange
  end
  object cbST: TComboBox [6]
    Left = 687
    Top = 19
    Width = 58
    Height = 22
    TabOrder = 5
    OnChange = cbSTChange
    Items.Strings = (
      '00'
      '10'
      '20'
      '40'
      '41'
      '50'
      '60'
      '90')
  end
  object cbUF: TComboBox [7]
    Left = 749
    Top = 19
    Width = 68
    Height = 22
    TabOrder = 6
    OnChange = cbSTChange
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO')
  end
  object BitPesquisar: TBitBtn [8]
    Left = 827
    Top = 1
    Width = 99
    Height = 21
    Caption = '&Pesquisar'
    TabOrder = 1
    OnClick = BitPesquisarClick
  end
  inherited coCalcula: TACBrCalculadora
    Left = 384
    Top = 432
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 432
    Top = 440
  end
  inherited DBConn: TSQLConnection
    Left = 328
    Top = 433
  end
  inherited qAux: TSQLQuery
    Left = 594
    Top = 413
  end
  inherited qAux2: TSQLQuery
    Left = 634
    Top = 412
  end
  inherited qAux3: TSQLQuery
    Left = 674
    Top = 412
  end
  object SqlRegra: TClientDataSet
    Aggregates = <>
    PacketRecords = 20
    Params = <>
    ProviderName = 'dspRegra'
    Left = 272
    Top = 144
    object SqlRegraOPR_REGISTRO: TIntegerField
      FieldName = 'OPR_REGISTRO'
      Required = True
    end
    object SqlRegraEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlRegraIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object SqlRegraOPE_CODIGO_ORIGEM: TStringField
      FieldName = 'OPE_CODIGO_ORIGEM'
      Size = 3
    end
    object SqlRegraOPR_AC: TStringField
      FieldName = 'OPR_AC'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_AL: TStringField
      FieldName = 'OPR_AL'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_AP: TStringField
      FieldName = 'OPR_AP'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_AM: TStringField
      FieldName = 'OPR_AM'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_BA: TStringField
      FieldName = 'OPR_BA'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_CE: TStringField
      FieldName = 'OPR_CE'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_DF: TStringField
      FieldName = 'OPR_DF'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_GO: TStringField
      FieldName = 'OPR_GO'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_ES: TStringField
      FieldName = 'OPR_ES'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_MA: TStringField
      FieldName = 'OPR_MA'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_MT: TStringField
      FieldName = 'OPR_MT'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_MS: TStringField
      FieldName = 'OPR_MS'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_MG: TStringField
      FieldName = 'OPR_MG'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_PA: TStringField
      FieldName = 'OPR_PA'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_PB: TStringField
      FieldName = 'OPR_PB'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_PR: TStringField
      FieldName = 'OPR_PR'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_PE: TStringField
      FieldName = 'OPR_PE'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_PI: TStringField
      FieldName = 'OPR_PI'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_RJ: TStringField
      FieldName = 'OPR_RJ'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_RN: TStringField
      FieldName = 'OPR_RN'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_RS: TStringField
      FieldName = 'OPR_RS'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_RO: TStringField
      FieldName = 'OPR_RO'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_RR: TStringField
      FieldName = 'OPR_RR'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_SP: TStringField
      FieldName = 'OPR_SP'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_SC: TStringField
      FieldName = 'OPR_SC'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_SE: TStringField
      FieldName = 'OPR_SE'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_TO: TStringField
      FieldName = 'OPR_TO'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPR_EX: TStringField
      FieldName = 'OPR_EX'
      FixedChar = True
      Size = 1
    end
    object SqlRegraOPE_DESTINO: TStringField
      FieldName = 'OPE_DESTINO'
      Size = 3
    end
    object SqlRegraSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Size = 2
    end
    object SqlRegraOPR_PERCENTUAL_MVA: TFMTBCDField
      FieldName = 'OPR_PERCENTUAL_MVA'
      DisplayFormat = '##0.00 %'
      currency = True
      Precision = 15
      Size = 4
    end
    object SqlRegraDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SqlRegraDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object SqlRegraOPR_ATIVO: TStringField
      FieldName = 'OPR_ATIVO'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOP_ORIGEM: TStringField
      FieldName = 'CFOP_ORIGEM'
      OnGetText = SqlRegraCFOP_ORIGEMGetText
      Size = 4
    end
    object SqlRegraCFOP_DESTINO: TStringField
      FieldName = 'CFOP_DESTINO'
      OnGetText = SqlRegraCFOP_DESTINOGetText
      Size = 4
    end
    object SqlRegraOPR_PERCENTUAL_MVA_SIMPLES: TFMTBCDField
      FieldName = 'OPR_PERCENTUAL_MVA_SIMPLES'
      DisplayFormat = '##0.00 %'
      currency = True
      Precision = 20
      Size = 5
    end
    object SqlRegraOPR_ORIGEM: TStringField
      FieldName = 'OPR_ORIGEM'
      OnGetText = SqlRegraOPR_ORIGEMGetText
      Size = 1
    end
  end
  object DsRegra: TDataSource
    DataSet = SqlRegra
    Left = 344
    Top = 144
  end
  object qRegra: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 152
    Top = 144
  end
  object dspRegra: TDataSetProvider
    DataSet = qRegra
    Left = 216
    Top = 144
  end
end
