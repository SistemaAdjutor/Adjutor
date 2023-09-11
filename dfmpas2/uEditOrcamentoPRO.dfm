inherited FrmEditOrcamentoPRO: TFrmEditOrcamentoPRO
  Caption = 'FrmEditOrcamentoPRO'
  ClientHeight = 517
  ClientWidth = 1123
  ExplicitWidth = 1131
  ExplicitHeight = 544
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 241
    Width = 1123
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 194
  end
  inherited pnUtil: TPanel
    Top = 485
    Width = 1123
    TabOrder = 1
    ExplicitTop = 485
    ExplicitWidth = 1123
    DesignSize = (
      1123
      32)
    inherited btnOk: TSpeedButton
      Left = 864
      ExplicitLeft = 864
    end
    inherited btnCancelar: TSpeedButton
      Left = 991
      ExplicitLeft = 991
    end
    object btnAddItem: TSpeedButton
      Tag = 1
      Left = 4
      Top = 4
      Width = 119
      Height = 24
      Anchors = [akLeft, akBottom]
      Caption = 'Adicionar item'
      NumGlyphs = 2
      OnClick = btnItem
    end
    object btnExclItem: TSpeedButton
      Tag = 3
      Left = 295
      Top = 4
      Width = 119
      Height = 24
      Anchors = [akLeft, akBottom]
      Caption = 'Excluir item'
      NumGlyphs = 2
      OnClick = btnItem
    end
    object btnAltItem: TSpeedButton
      Tag = 2
      Left = 151
      Top = 4
      Width = 119
      Height = 24
      Anchors = [akLeft, akBottom]
      Caption = 'Altera'#231#227'o'
      NumGlyphs = 2
      OnClick = btnItem
    end
    object litens: TLabel
      Left = 125
      Top = 11
      Width = 3
      Height = 13
    end
    object Label18: TLabel
      Left = 456
      Top = 9
      Width = 53
      Height = 13
      Caption = 'Valor total:'
    end
    object DBEdit1: TDBEdit
      Left = 525
      Top = 6
      Width = 148
      Height = 21
      Color = clSilver
      DataField = 'ORC_VLR_TOTAL'
      DataSource = dsEdits
      Enabled = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object porcamento: TPanel [2]
    Left = 0
    Top = 0
    Width = 1123
    Height = 241
    Align = alTop
    TabOrder = 0
    object DBText1: TDBText
      Left = 92
      Top = 9
      Width = 57
      Height = 16
      DataField = 'ORC_CODIGO'
      DataSource = dsEdits
    end
    object Orçamento: TLabel
      Left = 5
      Top = 9
      Width = 81
      Height = 13
      Caption = 'N'#250'm Or'#231'amento:'
    end
    object Label1: TLabel
      Left = 36
      Top = 35
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object Label2: TLabel
      Left = 49
      Top = 58
      Width = 37
      Height = 13
      Caption = 'Cliente:'
    end
    object Label3: TLabel
      Left = 176
      Top = 118
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label4: TLabel
      Left = 54
      Top = 141
      Width = 32
      Height = 13
      Caption = 'Bairro:'
    end
    object Label5: TLabel
      Left = 49
      Top = 166
      Width = 37
      Height = 13
      Caption = 'Cidade:'
    end
    object Label6: TLabel
      Left = 395
      Top = 165
      Width = 17
      Height = 13
      Caption = 'UF:'
    end
    object SpeedButton1: TSpeedButton
      Left = 445
      Top = 162
      Width = 22
      Height = 21
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object Label8: TLabel
      Left = 170
      Top = 9
      Width = 68
      Height = 13
      Caption = 'Data inclus'#227'o:'
    end
    object Label9: TLabel
      Left = 43
      Top = 191
      Width = 43
      Height = 13
      Caption = 'Contato:'
    end
    object Label10: TLabel
      Left = 428
      Top = 192
      Width = 28
      Height = 13
      Caption = 'Fone:'
    end
    object Label7: TLabel
      Left = 63
      Top = 117
      Width = 23
      Height = 13
      Caption = 'CEP:'
    end
    object Label11: TLabel
      Left = 58
      Top = 214
      Width = 28
      Height = 13
      Caption = 'Email:'
    end
    object Label12: TLabel
      Left = 354
      Top = 216
      Width = 96
      Height = 13
      Caption = 'Data pr'#243'x. contato:'
    end
    object Label13: TLabel
      Left = 568
      Top = 31
      Width = 87
      Height = 13
      Caption = 'Prazo de entrega:'
    end
    object Label14: TLabel
      Left = 726
      Top = 31
      Width = 19
      Height = 13
      Caption = 'dias'
    end
    object Label15: TLabel
      Left = 568
      Top = 55
      Width = 78
      Height = 14
      Alignment = taRightJustify
      Caption = 'Forma de Pagto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 834
      Top = 31
      Width = 44
      Height = 13
      Caption = 'Validade:'
    end
    object Label17: TLabel
      Left = 980
      Top = 31
      Width = 19
      Height = 13
      Caption = 'dias'
    end
    object lCliente: TLabel
      Left = 541
      Top = 104
      Width = 3
      Height = 13
    end
    object Label19: TLabel
      Left = 577
      Top = 8
      Width = 50
      Height = 14
      Alignment = taRightJustify
      Caption = 'Vendedor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lErroVendedor: TLabel
      Left = 1008
      Top = 8
      Width = 3
      Height = 13
    end
    object Label20: TLabel
      Left = 615
      Top = 81
      Width = 31
      Height = 14
      Alignment = taRightJustify
      Caption = 'Prazo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lclienteaviso: TLabel
      Left = 544
      Top = 59
      Width = 3
      Height = 13
    end
    object sbcontatos: TSpeedButton
      Left = 350
      Top = 187
      Width = 57
      Height = 22
      Caption = 'Contatos'
      OnClick = sbcontatosClick
    end
    object edDescricao: TDBEdit
      Left = 92
      Top = 31
      Width = 446
      Height = 21
      DataField = 'ORC_DESCRICAO'
      DataSource = dsEdits
      TabOrder = 1
    end
    object PesqCliente: TSgDbSearchCombo
      Left = 138
      Top = 53
      Width = 375
      Height = 21
      EmptyText = 'TODOS OS CLIENTES'
      TabOrder = 3
      OnExit = PesqClienteExit
      CharCase = ecUpperCase
      LookupSelect = 'CLI_CODIGO,CLI_RAZAO,CLI_FANTASIA'
      LookupOrderBy = 'CLI_RAZAO'
      LookupTable = 'cli0000'
      LookupDispl = 'CLI_RAZAO'
      OnButtonClick = PesqClienteButtonClick
      OnSelect = PesqClienteSelect
      GridAutoSize = False
      LookupSource = qCli
      DataField = 'CLI_CODIGO'
      DataSource = dsEdits
      LookupKeyField = 'CLI_CODIGO'
      ShowButton = True
      LookupTableShare = 'clientes'
      AutoF8WinTitulo = 'Clientes'
      AutoF8ColumnsTitulo = 'C'#243'digo, Nome, Fantasia'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object DbeCliCep: TDBEdit
      Left = 92
      Top = 114
      Width = 69
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ORC_CEP'
      DataSource = dsEdits
      MaxLength = 10
      TabOrder = 4
      OnExit = DbeCliCepExit
    end
    object DbeCli_endere: TDBEdit
      Left = 228
      Top = 114
      Width = 310
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ORC_ENDERECO'
      DataSource = dsEdits
      TabOrder = 5
    end
    object DbeCLI_BAIRRO: TDBEdit
      Left = 92
      Top = 137
      Width = 300
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ORC_BAIRRO'
      DataSource = dsEdits
      TabOrder = 6
    end
    object DbeCli_cidade: TDBEdit
      Left = 92
      Top = 162
      Width = 294
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = 14145495
      DataField = 'ORC_CIDADE'
      DataSource = dsEdits
      ReadOnly = True
      TabOrder = 7
    end
    object DBECLIUF: TDBEdit
      Left = 414
      Top = 162
      Width = 29
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = 14145495
      DataField = 'ORC_UF'
      DataSource = dsEdits
      ReadOnly = True
      TabOrder = 8
    end
    object edFoneCliente: TDBEdit
      Left = 462
      Top = 189
      Width = 121
      Height = 21
      DataField = 'ORC_FONE'
      DataSource = dsEdits
      MaxLength = 15
      TabOrder = 10
      OnExit = edFoneClienteExit
    end
    object edContato: TDBEdit
      Left = 92
      Top = 187
      Width = 255
      Height = 21
      DataField = 'ORC_CONTATO'
      DataSource = dsEdits
      TabOrder = 9
    end
    object EdClienteCodigo: TDBEdit
      Left = 92
      Top = 54
      Width = 43
      Height = 21
      DataField = 'CLI_CODIGO'
      DataSource = dsEdits
      TabOrder = 2
    end
    object edemail: TDBEdit
      Left = 92
      Top = 212
      Width = 255
      Height = 21
      DataField = 'ORC_EMAIL'
      DataSource = dsEdits
      TabOrder = 11
      OnExit = edemailExit
    end
    object DBEdit4: TDBEdit
      Left = 663
      Top = 27
      Width = 57
      Height = 21
      DataField = 'ORC_DIAS_ENTREGA'
      DataSource = dsEdits
      TabOrder = 17
    end
    object edFPagto: TSgDbSearchCombo
      Left = 724
      Top = 51
      Width = 256
      Height = 21
      TabOrder = 20
      CharCase = ecUpperCase
      LookupSelect = 'FPG_DESCRICAO, FPG_REGISTRO'
      LookupOrderBy = 'FPG_DESCRICAO'
      LookupTable = 'FORMA_PAGAMENTO'
      LookupDispl = 'FPG_DESCRICAO'
      GridAutoSize = False
      LookupSource = qFPagto
      DataField = 'FPG_REGISTRO'
      DataSource = dsEdits
      LookupKeyField = 'FPG_REGISTRO'
      ShowButton = True
      AutoF8WinTitulo = 'Formas de Pagamento'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object DBEdit5: TDBEdit
      Left = 891
      Top = 27
      Width = 79
      Height = 21
      DataField = 'ORC_DIAS_VALIDADE'
      DataSource = dsEdits
      TabOrder = 18
    end
    object DBEdit6: TDBEdit
      Left = 652
      Top = 51
      Width = 69
      Height = 21
      DataField = 'FPG_REGISTRO'
      DataSource = dsEdits
      TabOrder = 19
    end
    object btnCRMAgenda: TButton
      Left = 672
      Top = 210
      Width = 75
      Height = 25
      Caption = 'CRM agenda'
      TabOrder = 14
      Visible = False
      OnClick = btnCRMAgendaClick
    end
    object chkAgenda: TCheckBox
      Left = 570
      Top = 215
      Width = 97
      Height = 17
      Caption = 'gerar follow up'
      TabOrder = 13
    end
    object rgSituacao: TDBRadioGroup
      Left = 834
      Top = 129
      Width = 247
      Height = 106
      Caption = 'Situa'#231#227'o'
      Columns = 2
      DataField = 'ORC_SITUACAO'
      DataSource = dsEdits
      Items.Strings = (
        'Pendente'
        'Em Andamento'
        'Aprovado'
        'Recusado'
        'Cancelado'
        'Em Revis'#227'o')
      TabOrder = 21
      Values.Strings = (
        'P'
        'E'
        'A'
        'R'
        'C'
        'V')
    end
    object JvDBDateEdit1: TJvDBDateEdit
      Left = 456
      Top = 214
      Width = 108
      Height = 21
      DataField = 'ORC_DATA_PROX_CONCAT'
      DataSource = dsEdits
      ShowNullDate = False
      TabOrder = 12
    end
    object dtInclusao: TJvDBDateEdit
      Left = 244
      Top = 5
      Width = 108
      Height = 21
      DataField = 'ORC_DATAAQUISICAO'
      DataSource = dsEdits
      ShowNullDate = False
      TabOrder = 0
    end
    object edVendedor: TSgDbSearchCombo
      Left = 688
      Top = 5
      Width = 292
      Height = 21
      TabOrder = 16
      CharCase = ecUpperCase
      LookupSelect = 'rep_codigo, rep_nome'
      LookupOrderBy = 'rep_nome'
      LookupTable = 'rep0000'
      LookupDispl = 'REP_NOME'
      OnSelect = edVendedorSelect
      GridAutoSize = False
      LookupSource = qRep
      DataField = 'REP_CODIGO'
      DataSource = dsEdits
      LookupKeyField = 'rep_codigo'
      ShowButton = True
      AutoF8WinTitulo = 'Vendedores'
      AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object EdVendedorCodigo: TDBEdit
      Left = 632
      Top = 5
      Width = 54
      Height = 21
      DataField = 'REP_CODIGO'
      DataSource = dsEdits
      TabOrder = 15
    end
    object gbCliente: TGroupBox
      Left = 43
      Top = 76
      Width = 493
      Height = 38
      Caption = 'Cliente sem cadastro '
      TabOrder = 22
      object cliente_nome: TDBEdit
        Left = 107
        Top = 13
        Width = 373
        Height = 21
        DataField = 'ORC_CLIENTE'
        DataSource = dsEdits
        TabOrder = 0
      end
      object edCNPJ: TDBEdit
        Left = 8
        Top = 13
        Width = 90
        Height = 21
        DataField = 'ORC_CGCCPF'
        DataSource = dsEdits
        MaxLength = 18
        TabOrder = 1
        OnExit = edCNPJExit
      end
    end
    object edPrazo: TSgDbSearchCombo
      Left = 724
      Top = 78
      Width = 256
      Height = 21
      TabOrder = 23
      CharCase = ecUpperCase
      LookupSelect = 'pcl_codigo, pcl_nome'
      LookupOrderBy = 'pcl_nome'
      LookupTable = 'PCL0000'
      LookupDispl = 'PCL_NOME'
      GridAutoSize = False
      LookupSource = qPrazo
      DataField = 'PCL_CODIGO'
      DataSource = dsEdits
      LookupKeyField = 'pcl_codigo'
      FiltroTabela = 'PCL_DISPONIVEL='#39'S'#39
      ShowButton = True
      AutoF8WinTitulo = 'Prazos'
      AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object DBEdit2: TDBEdit
      Left = 652
      Top = 78
      Width = 69
      Height = 21
      DataField = 'PCL_CODIGO'
      DataSource = dsEdits
      TabOrder = 24
    end
  end
  object pitens: TPanel [3]
    Left = 0
    Top = 244
    Width = 1123
    Height = 241
    Align = alClient
    Caption = 'pitens'
    TabOrder = 2
    object pgitens: TPageControl
      Left = 1
      Top = 1
      Width = 1121
      Height = 239
      ActivePage = tsclientes
      Align = alClient
      TabOrder = 0
      object tsclientes: TTabSheet
        Caption = 'Itens    '
        object gdItens: TDBGrid
          Left = 0
          Top = 0
          Width = 1113
          Height = 211
          Align = alClient
          DataSource = dsEditDetail
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'OIP_SEQ'
              Title.Caption = 'Seq'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OIP_DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 160
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_REFER'
              Title.Caption = 'Refer'#234'ncia'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_DESCRI'
              Title.Caption = 'Produto'
              Width = 284
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SRV_CODIGO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SRV_NOME'
              Title.Caption = 'Servi'#231'o'
              Width = 194
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRO_CODIGO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRO_DESCRICAO'
              Title.Caption = 'Processo'
              Width = 421
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OIP_PESO'
              Title.Caption = 'Peso'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OIP_PRECO'
              Title.Caption = 'Pre'#231'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OIP_TOTAL'
              Title.Caption = 'Total'
              Visible = True
            end>
        end
      end
      object obsPedidos: TTabSheet
        Caption = 'Observa'#231#227'o do pedido'
        ImageIndex = 1
        object mObs: TDBMemo
          Left = 0
          Top = 0
          Width = 1113
          Height = 211
          Align = alClient
          DataField = 'ORC_OBSERVACAO'
          DataSource = dsEdits
          TabOrder = 0
          OnEnter = mObsTranspEnter
          OnExit = mObsTranspExit
        end
        object Panel9: TPanel
          Left = 1070
          Top = 18
          Width = 25
          Height = 25
          TabOrder = 1
          object SpeedButton2: TSpeedButton
            Left = 2
            Top = 2
            Width = 23
            Height = 22
            Hint = 'Adicionar Observa'#231#227'o Cadastrada'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
              0E0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E0EFFFFFF0E0E0E8F690A8F
              690A8F690A8F690A8F690AFFFFFFFFFFFF0E0E0EFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF0E0E0E0E0E0E0E0E0E97740B97740B97740B97740B97740B000000FFFF
              FF0E0E0EFFFFFFFFFFFF0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0EA2
              830DA2830DA2830DA2830DFFFFFFFFFFFF0E0E0EFFFFFFFFFFFF0E0E0EBFC7C7
              BFC7C7BFC7C7BFC7C7BFC7C70E0E0EAF940FAF940FAF940FAF940F000000FFFF
              FF0E0E0EFFFFFFFFFFFF0E0E0ED7DBDBD7DBDBD7DBDBD7DBDBD7DBDB0E0E0EBA
              A411BAA411BAA411BAA411FFFFFFFFFFFF0E0E0EFFFFFFFFFFFF0E0E0EEEEFEF
              EEEFEFEEEFEFEEEFEFEEEFEF0E0E0EC2AE12C2AE12C2AE12C2AE12000000FFFF
              FF0E0E0EFFFFFFFFFFFF0000000000008181810000008181810000000E0E0EBA
              A411BAA411BAA411BAA411FFFFFFFFFFFF0E0E0EFFFFFFFFFFFF000000FFFFFF
              000000FFFFFF000000FFFFFF0E0E0EAF940FAF940FAF940FAF940F000000FFFF
              FF0E0E0EFFFFFFFFFFFF0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0EA2
              830DA2830DA2830DA2830DFFFFFFFFFFFF0E0E0EFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF0E0E0E0E0E0E0E0E0E97740B97740B97740B97740B97740B000000FFFF
              FF0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E0E0EFFFFFF0E0E0E8F690A8F
              690A8F690A8F690A8F690AFFFFFFFFFFFF0E0E0EFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
              0E0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton2Click
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Informa'#231#245'es transportadora'
        ImageIndex = 2
        object mObsTransp: TDBMemo
          Left = 0
          Top = 0
          Width = 1113
          Height = 211
          Align = alClient
          DataField = 'ORC_OBS_TRANSP'
          DataSource = dsEdits
          TabOrder = 0
          OnEnter = mObsTranspEnter
          OnExit = mObsTranspExit
        end
      end
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 304
    Top = 16
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 8
    Top = 120
  end
  inherited dsEdits: TDataSource
    Left = 509
    Top = 39
  end
  object qCli: TSQLQuery [17]
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select t1.cli_codigo,'
      '       t1.cli_tabpreco,'
      '       t1.cli_razao,'
      '       t1.cli_cgc,'
      '       t1.cli_insc,'
      '       t2.cid_cidade,'
      '       t2.cid_estado,'
      '       t1.cli_modo_trib_st,'
      '       cn1.cnae_carga_trib_media,'
      '       t1.pcx_codigo,'
      '       t1.cli_consfinal,'
      '       t1.CLI_REGIME_TRIBUTARIO,'
      '       t1.OPE_CODIGO,'
      '       t1.pcl_codigo,'
      '       t3.pcl_nome,'
      '       t1.REP_CODIGO,'
      '       t1.TRP_CODIGO,'
      '       t1.cli_fone'
      'from cli0000 t1'
      '       left join cid0000 t2 on (t2.cid_codigo = t1.cid_codigo)'
      
        '       LEFT JOIN cnae CN1 ON (CN1.cnae_registro = t1.cnae_regist' +
        'ro)'
      '       left join pcl0000 t3 on (t3.pcl_codigo = t1.pcl_codigo)'
      'Where t1.Cli_Codigo='#39'-1'#39
      'order by t1.cli_razao'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 423
    Top = 28
  end
  object ACBrCEP1: TACBrCEP [18]
    ProxyPort = '8080'
    ParseText = True
    TimeOut = 10000
    WebService = wsViaCep
    PesquisarIBGE = True
    OnBuscaEfetuada = ACBrCEP1BuscaEfetuada
    Left = 11
    Top = 197
  end
  object qFPagto: TSQLQuery [19]
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select FPG_DESCRICAO, FPG_REGISTRO'
      'from FORMA_PAGAMENTO'
      'Where FPG_REGISTRO='#39'-1'#39
      'order by FPG_DESCRICAO'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 764
    Top = 60
  end
  inherited cdsEdit: TFDQuery
    SQL.Strings = (
      
        'SELECT ORC_CODIGO, EMP_CODIGO, ORC_DESCRICAO, ORC_DATAAQUISICAO,' +
        ' CLI_CODIGO,rep_codigo, ORC_CLIENTE,ORC_CEP, ORC_BAIRRO,ORC_CIDA' +
        'DE, CID_CODIGO,ORC_UF,ORC_CONTATO, ORC_EMAIL, ORC_FONE, ORC_FAX,' +
        ' '
      
        'ORC_DIAS_ENTREGA, ORC_DIAS_VALIDADE, ORC_ENDERECO, FPG_REGISTRO,' +
        ' ORC_SITUACAO, ORC_VLR_TOTAL, ORC_OBSERVACAO, ORC_OBS_TRANSP, OR' +
        'C_DATA_PROX_CONCAT,TRF_REGISTRO, ORC_CGCCPF, orc_Revisao, PCL_CO' +
        'DIGO'
      'FROM ORCAMENTO_PROD'
      'where orc_codigo = :id       ')
    Left = 515
    Top = 8
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        FDDataType = dtInt32
        ParamType = ptInput
        Value = 0
      end>
    object cdsEditORC_CODIGO: TIntegerField
      FieldName = 'ORC_CODIGO'
      Origin = 'ORC_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object cdsEditORC_DESCRICAO: TStringField
      FieldName = 'ORC_DESCRICAO'
      Origin = 'ORC_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 250
    end
    object cdsEditORC_DATAAQUISICAO: TSQLTimeStampField
      FieldName = 'ORC_DATAAQUISICAO'
      Origin = 'ORC_DATAAQUISICAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsEditREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Origin = 'REP_CODIGO'
      Size = 3
    end
    object cdsEditORC_CLIENTE: TStringField
      FieldName = 'ORC_CLIENTE'
      Origin = 'ORC_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsEditORC_ENDERECO: TStringField
      FieldName = 'ORC_ENDERECO'
      Origin = 'ORC_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsEditORC_CEP: TStringField
      FieldName = 'ORC_CEP'
      Origin = 'ORC_CEP'
      ProviderFlags = [pfInUpdate]
      OnSetText = cdsEditORC_CEPSetText
      OnValidate = cdsEditORC_CEPValidate
      Size = 8
    end
    object cdsEditORC_BAIRRO: TStringField
      FieldName = 'ORC_BAIRRO'
      Origin = 'ORC_BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsEditCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      Origin = 'CID_CODIGO'
    end
    object cdsEditORC_CIDADE: TStringField
      FieldName = 'ORC_CIDADE'
      Origin = 'ORC_CIDADE'
      Size = 60
    end
    object cdsEditORC_UF: TStringField
      FieldName = 'ORC_UF'
      Origin = 'ORC_UF'
      Size = 2
    end
    object cdsEditORC_CONTATO: TStringField
      FieldName = 'ORC_CONTATO'
      Origin = 'ORC_CONTATO'
      OnSetText = cdsEditORC_CONTATOSetText
      Size = 100
    end
    object cdsEditORC_EMAIL: TStringField
      FieldName = 'ORC_EMAIL'
      Origin = 'ORC_EMAIL'
      ProviderFlags = [pfInUpdate]
      OnSetText = cdsEditORC_CONTATOSetText
      Size = 100
    end
    object cdsEditORC_FONE: TStringField
      FieldName = 'ORC_FONE'
      Origin = 'ORC_FONE'
      ProviderFlags = [pfInUpdate]
      OnGetText = cdsEditORC_FONEGetText
      OnSetText = cdsEditORC_FONESetText
      Size = 12
    end
    object cdsEditORC_FAX: TStringField
      FieldName = 'ORC_FAX'
      Origin = 'ORC_FAX'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cdsEditORC_DIAS_ENTREGA: TIntegerField
      FieldName = 'ORC_DIAS_ENTREGA'
      Origin = 'ORC_DIAS_ENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditORC_DIAS_VALIDADE: TIntegerField
      FieldName = 'ORC_DIAS_VALIDADE'
      Origin = 'ORC_DIAS_VALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
      Origin = 'FPG_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditORC_SITUACAO: TStringField
      FieldName = 'ORC_SITUACAO'
      Origin = 'ORC_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsEditORC_VLR_TOTAL: TBCDField
      FieldName = 'ORC_VLR_TOTAL'
      Origin = 'ORC_VLR_TOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.000'
      EditFormat = '###,###,##0.000'
      Precision = 18
    end
    object cdsEditORC_OBSERVACAO: TBlobField
      FieldName = 'ORC_OBSERVACAO'
      Origin = 'ORC_OBSERVACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditORC_OBS_TRANSP: TBlobField
      FieldName = 'ORC_OBS_TRANSP'
      Origin = 'ORC_OBS_TRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditORC_DATA_PROX_CONCAT: TDateField
      FieldName = 'ORC_DATA_PROX_CONCAT'
      Origin = 'ORC_DATA_PROX_CONCAT'
    end
    object cdsEditTRF_REGISTRO: TIntegerField
      FieldName = 'TRF_REGISTRO'
      Origin = 'TRF_REGISTRO'
    end
    object cdsEditORC_CGCCPF: TStringField
      FieldName = 'ORC_CGCCPF'
      Origin = 'ORC_CGCCPF'
      OnSetText = cdsEditORC_CGCCPFSetText
      Size = 14
    end
    object cdsEditORC_REVISAO: TIntegerField
      FieldName = 'ORC_REVISAO'
    end
    object cdsEditPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Origin = 'PCL_CODIGO'
      Size = 3
    end
  end
  inherited cdsEditDetail: TFDQuery
    AfterScroll = cdsEditDetailAfterScroll
    AggregatesActive = True
    UpdateOptions.RefreshMode = rmOnDemand
    SQL.Strings = (
      
        'SELECT OIP_CODIGO, ORC_CODIGO, IT.PRO_CODIGO, IT.PRD_REFER, IT.P' +
        'RD_CODIGO, OIP_UND, OIP_SEQ, OIP_DESCRICAO, IT.SRV_CODIGO, OIP_T' +
        'IPOPECA_TERM, OIP_MATERIAL_TERM, OIP_PESO, OIP_PROFUNDIDADE_TERM' +
        ', OIP_DUREZASUPERFICIAL_TERM, OIP_DUREZANUCLEO_TERM, '
      
        'PRDCO_CODIGO_ORIGINAL, OIP_TAMANHOGRAO_TERM, OIP_EHT_TERM, OIP_D' +
        'ESENHO_TERM, OIP_QDE, OIP_PRECO, OIP_TOTAL, OIP_PESOTOTAL, OIP_P' +
        'RAZOENTREGA, OIP_IMAGEM, '
      'PR.PRD_DESCRI, PO.PRO_DESCRICAO, SE.SRV_NOME'
      'FROM ORCIT_PROD it'
      'LEFT JOIN PRD0000 pr ON (it.PRD_CODIGO = pr.PRD_CODIGO)'
      'LEFT JOIN SERVICO SE ON (SE.SRV_CODIGO = IT.SRV_CODIGO)'
      'LEFT JOIN MODL_PROCESSOS PO ON (PO.PRO_CODIGO = IT.PRO_CODIGO)'
      'where orc_codigo = :id       ')
    Left = 531
    Top = 112
    object cdsEditDetailOIP_CODIGO: TIntegerField
      FieldName = 'OIP_CODIGO'
      Origin = 'OIP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEditDetailORC_CODIGO: TIntegerField
      FieldName = 'ORC_CODIGO'
      Origin = 'ORC_CODIGO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsEditDetailPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'PRO_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditDetailPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditDetailPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsEditDetailOIP_UND: TStringField
      FieldName = 'OIP_UND'
      Origin = 'OIP_UND'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsEditDetailOIP_SEQ: TIntegerField
      FieldName = 'OIP_SEQ'
      Origin = 'OIP_SEQ'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditDetailOIP_DESCRICAO: TStringField
      FieldName = 'OIP_DESCRICAO'
      Origin = 'OIP_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsEditDetailOIP_TIPOPECA_TERM: TStringField
      FieldName = 'OIP_TIPOPECA_TERM'
      Origin = 'OIP_TIPOPECA_TERM'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsEditDetailOIP_MATERIAL_TERM: TStringField
      FieldName = 'OIP_MATERIAL_TERM'
      Origin = 'OIP_MATERIAL_TERM'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsEditDetailOIP_PESO: TFMTBCDField
      FieldName = 'OIP_PESO'
      Origin = 'OIP_PESO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.0000'
      Precision = 18
    end
    object cdsEditDetailOIP_PROFUNDIDADE_TERM: TStringField
      FieldName = 'OIP_PROFUNDIDADE_TERM'
      Origin = 'OIP_PROFUNDIDADE_TERM'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object cdsEditDetailOIP_DUREZASUPERFICIAL_TERM: TStringField
      FieldName = 'OIP_DUREZASUPERFICIAL_TERM'
      Origin = 'OIP_DUREZASUPERFICIAL_TERM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditDetailOIP_DUREZANUCLEO_TERM: TStringField
      FieldName = 'OIP_DUREZANUCLEO_TERM'
      Origin = 'OIP_DUREZANUCLEO_TERM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditDetailPRDCO_CODIGO_ORIGINAL: TStringField
      FieldName = 'PRDCO_CODIGO_ORIGINAL'
      Origin = 'PRDCO_CODIGO_ORIGINAL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsEditDetailOIP_TAMANHOGRAO_TERM: TStringField
      FieldName = 'OIP_TAMANHOGRAO_TERM'
      Origin = 'OIP_TAMANHOGRAO_TERM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditDetailOIP_EHT_TERM: TStringField
      FieldName = 'OIP_EHT_TERM'
      Origin = 'OIP_EHT_TERM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsEditDetailOIP_DESENHO_TERM: TStringField
      FieldName = 'OIP_DESENHO_TERM'
      Origin = 'OIP_DESENHO_TERM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditDetailOIP_QDE: TFMTBCDField
      FieldName = 'OIP_QDE'
      Origin = 'OIP_QDE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.0000'
      Precision = 18
    end
    object cdsEditDetailOIP_PRECO: TFMTBCDField
      FieldName = 'OIP_PRECO'
      Origin = 'OIP_PRECO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.0000'
      currency = True
      Precision = 18
    end
    object cdsEditDetailOIP_TOTAL: TFMTBCDField
      FieldName = 'OIP_TOTAL'
      Origin = 'OIP_TOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.0000'
      currency = True
      Precision = 18
    end
    object cdsEditDetailOIP_PRAZOENTREGA: TIntegerField
      FieldName = 'OIP_PRAZOENTREGA'
      Origin = 'OIP_PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditDetailOIP_IMAGEM: TBlobField
      FieldName = 'OIP_IMAGEM'
      Origin = 'OIP_IMAGEM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditDetailOIP_PESOTOTAL: TFMTBCDField
      FieldName = 'OIP_PESOTOTAL'
      Origin = 'OIP_PESOTOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.000'
      EditFormat = '###,###,##0.000'
      Precision = 18
    end
    object cdsEditDetailSRV_CODIGO: TIntegerField
      FieldName = 'SRV_CODIGO'
      Origin = 'SRV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditDetailPRD_DESCRI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
    object cdsEditDetailPRO_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_DESCRICAO'
      Origin = 'PRO_DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsEditDetailSRV_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SRV_NOME'
      Origin = 'SRV_NOME'
      ProviderFlags = []
      Size = 60
    end
    object cdsEditDetailTOTALORC: TAggregateField
      FieldName = 'TOTALORC'
      Active = True
      currency = True
      DisplayName = 'Total or'#231'amento'
      DisplayFormat = '###,###,##0.000'
      Expression = 'SUM(OIP_TOTAL)'
    end
  end
  inherited dsEditDetail: TDataSource
    Left = 605
    Top = 159
  end
  inherited JvValidators1: TJvValidators
    ValidationSummary = nil
    Left = 185
    object ValidarCliente: TJvCustomValidator
      ControlToValidate = lCliente
      ErrorMessage = 'Cliente deve ser preenchido'
      OnValidate = ValidarClienteValidate
    end
    object ValidarItens: TJvCustomValidator
      ControlToValidate = litens
      ErrorMessage = 'Nenhum item foi adicionado'
      OnValidate = ValidarItensValidate
    end
    object ValidarItensProduto: TJvCustomValidator
      ControlToValidate = litens
      ErrorMessage = 'H'#225' itens que n'#227'o possui produto vinculado antes de aprovar'
      OnValidate = ValidarItensProdutoValidate
    end
    object ValidarDescricaoOrc: TJvCustomValidator
      ErrorControl = edDescricao
      ControlToValidate = edDescricao
      ErrorMessage = 'Descri'#231#227'o do or'#231'amento obrigat'#243'ria'
      OnValidate = ValidarDescricaoOrcValidate
    end
    object ValidarVendedor: TJvCustomValidator
      ErrorControl = lErroVendedor
      ControlToValidate = lErroVendedor
      ErrorMessage = 'Vendedor deve ser preenchido'
      OnValidate = ValidarVendedorValidate
    end
    object ValidarCNPJ: TJvCustomValidator
      ErrorControl = edCNPJ
      ControlToValidate = edCNPJ
      ErrorMessage = 'CNPJ/CPF inv'#225'lido'
      OnValidate = ValidarCNPJValidate
    end
    object ValidarIdCliente: TJvCustomValidator
      ErrorControl = lclienteaviso
      ControlToValidate = lclienteaviso
      ErrorMessage = 'Para aprovar precisa do cliente cadastrado'
      OnValidate = ValidarIdClienteValidate
    end
  end
  inherited JvValidationSummary1: TJvValidationSummary
    Top = 240
  end
  object qRep: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select rep_codigo, rep_nome'
      'from rep0000'
      'Where rep_codigo='#39'-1'#39
      'order by rep_nome'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 1055
    Top = 28
  end
  object ACBrValidador1: TACBrValidador
    IgnorarChar = './-'
    Left = 16
    Top = 96
  end
  object qPrazo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select pcl_codigo, pcl_nome'
      'from prazos'
      'Where pcl_codigo='#39'-1'#39
      'order by pcl_nome'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 631
    Top = 164
  end
  object qsimulado: TFDQuery
    AggregatesActive = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT * FROM SIMULACAO_ITORC'
      'where oip_codigo = :oip_codigo')
    Left = 571
    Top = 128
    ParamData = <
      item
        Name = 'OIP_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qsimuladoSPR_CODIGO: TIntegerField
      FieldName = 'SPR_CODIGO'
      Origin = 'SPR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qsimuladoOIP_CODIGO: TIntegerField
      FieldName = 'OIP_CODIGO'
      Origin = 'OIP_CODIGO'
      Required = True
    end
    object qsimuladoSET_CODIGO: TIntegerField
      FieldName = 'SET_CODIGO'
      Origin = 'SET_CODIGO'
      Required = True
    end
    object qsimuladoSPR_HORASTRAB: TBCDField
      FieldName = 'SPR_HORASTRAB'
      Origin = 'SPR_HORASTRAB'
      Precision = 18
    end
    object qsimuladoSPR_PESO: TBCDField
      FieldName = 'SPR_PESO'
      Origin = 'SPR_PESO'
      Precision = 18
    end
    object qsimuladoSPR_VALORTOTAL: TIntegerField
      FieldName = 'SPR_VALORTOTAL'
      Origin = 'SPR_VALORTOTAL'
    end
    object qsimuladoSPR_DATASIMULACAO: TSQLTimeStampField
      FieldName = 'SPR_DATASIMULACAO'
      Origin = 'SPR_DATASIMULACAO'
    end
  end
end
