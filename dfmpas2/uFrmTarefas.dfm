inherited frmTarefas: TfrmTarefas
  Caption = 'CRM Agenda - TAREFAS'
  ClientHeight = 570
  ClientWidth = 1039
  ExplicitWidth = 1047
  ExplicitHeight = 597
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtil: TPanel
    Top = 537
    Width = 1039
    Height = 33
    ExplicitTop = 537
    ExplicitWidth = 938
    ExplicitHeight = 33
    DesignSize = (
      1039
      33)
    inherited btnOk: TSpeedButton
      Left = 736
      Top = 6
      Hint = 'Ctrl+ENTER'
      Caption = 'Gravar'
      Enabled = False
      ExplicitLeft = 535
      ExplicitTop = 6
    end
    inherited btnCancelar: TSpeedButton
      Left = 888
      Top = 6
      Caption = 'Sair'
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
      ExplicitLeft = 687
      ExplicitTop = 6
    end
    object btnFinalizar: TSpeedButton [2]
      Tag = 1
      Left = 309
      Top = 6
      Width = 100
      Height = 24
      Caption = 'Finalizar'
      NumGlyphs = 2
      Visible = False
    end
    object btnExcluir: TSpeedButton [3]
      Tag = 1
      Left = 203
      Top = 6
      Width = 100
      Height = 24
      Caption = 'Excluir'
      NumGlyphs = 2
      Visible = False
      OnClick = btnExcluirClick
    end
    inherited Panel3: TPanel
      Left = 60
      Top = -1
      Align = alNone
      Visible = False
      ExplicitLeft = 60
      ExplicitTop = -1
      inherited btCalc: TSpeedButton
        Left = 20
        Top = 7
        Visible = False
        ExplicitLeft = 20
        ExplicitTop = 7
      end
    end
    inherited pnMove: TPanel
      Left = 0
      Width = 33
      Height = 33
      ExplicitLeft = 0
      ExplicitWidth = 33
      ExplicitHeight = 33
      inherited btFirst: TSpeedButton
        Left = 0
        Top = 29
        Visible = False
        ExplicitLeft = 0
        ExplicitTop = 29
      end
      inherited btPrior: TSpeedButton
        Left = 0
        Top = -1
        Visible = False
        ExplicitLeft = 0
        ExplicitTop = -1
      end
      inherited btNext: TSpeedButton
        Left = 1
        Top = -1
        Visible = False
        ExplicitLeft = 1
        ExplicitTop = -1
      end
      inherited btLast: TSpeedButton
        Left = 7
        Top = 6
        Visible = False
        ExplicitLeft = 7
        ExplicitTop = 6
      end
      inherited btSave: TSpeedButton
        Top = 6
        ExplicitTop = 6
      end
    end
    inherited cbPersistente: TCheckBox
      Left = 32
      Top = 6
      Width = 6
      Caption = ''
      ExplicitLeft = 32
      ExplicitTop = 6
      ExplicitWidth = 6
    end
    object btCliente: TButton
      Left = 445
      Top = 6
      Width = 124
      Height = 25
      Caption = 'Cadastro de Clientes'
      TabOrder = 3
      OnClick = btClienteClick
    end
  end
  object pedit: TPanel [1]
    Left = 0
    Top = 0
    Width = 1039
    Height = 537
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 938
    object Label1: TLabel
      Left = 11
      Top = 11
      Width = 50
      Height = 13
      Caption = 'Vendedor:'
    end
    object Label8: TLabel
      Left = 22
      Top = 35
      Width = 37
      Height = 16
      Caption = 'Prazo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 8
      Top = 67
      Width = 119
      Height = 14
      Caption = 'N'#237'vel Relacionamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEREP_CODIGO: TDBEdit
      Left = 63
      Top = 8
      Width = 43
      Height = 21
      CharCase = ecUpperCase
      DataField = 'REP_CODIGO'
      DataSource = dsEditS
      TabOrder = 0
    end
    object edVendedor: TSgDbSearchCombo
      Left = 110
      Top = 8
      Width = 331
      Height = 21
      TabOrder = 1
      CharCase = ecUpperCase
      LookupSelect = 'rep_codigo, rep_nome'
      LookupOrderBy = 'rep_nome'
      LookupTable = 'rep0000'
      LookupDispl = 'REP_NOME'
      GridAutoSize = False
      LookupSource = qRep
      DataField = 'REP_CODIGO'
      DataSource = dsEditS
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
    object rgAcao: TDBRadioGroup
      Left = 5
      Top = 93
      Width = 1004
      Height = 43
      Caption = 'A'#231#227'o'
      Columns = 10
      DataField = 'TRF_ACAO'
      DataSource = dsEditS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'Email'
        'Liga'#231#227'o'
        'Visita'
        'Proposta'
        'P'#243's-Venda'
        'Venda efetivada'
        'Reuni'#227'o'
        'Manuten'#231#227'o'
        'Or'#231'amento'
        'Cobran'#231'a')
      ParentFont = False
      TabOrder = 5
      Values.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9')
      OnChange = rgAcaoChange
    end
    object dtPrazo: TJvDateTimePicker
      Left = 64
      Top = 31
      Width = 122
      Height = 24
      Date = 43318.613305509260000000
      Time = 43318.613305509260000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = dtPrazoChange
      DropDownDate = 43318.000000000000000000
    end
    object timePrazo: TJvDateTimePicker
      Left = 203
      Top = 32
      Width = 89
      Height = 24
      Date = 43318.613194444440000000
      Format = 'H:m'
      Time = 43318.613194444440000000
      DateMode = dmUpDown
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 3
      OnChange = timePrazoChange
      DropDownDate = 43318.000000000000000000
    end
    object cbNivel: TDBComboBox
      Left = 131
      Top = 65
      Width = 145
      Height = 22
      DataField = 'TRF_NIVEL'
      DataSource = dsEditS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'Prospect'
        'Lead'
        'Cliente'
        'Fornecedor'
        'Outros')
      ParentFont = False
      TabOrder = 4
      OnChange = cbNivelChange
    end
    object Panel1: TPanel
      Left = 782
      Top = 265
      Width = 25
      Height = 25
      TabOrder = 6
      object SpeedButton1: TSpeedButton
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
        OnClick = SpeedButton1Click
      end
    end
    object pgprincipal: TPageControl
      Left = 1
      Top = 140
      Width = 1037
      Height = 396
      ActivePage = tsprincipal
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 7
      ExplicitWidth = 936
      object tsprincipal: TTabSheet
        Caption = ' '
        ExplicitWidth = 928
        object Label7: TLabel
          Left = 2
          Top = 82
          Width = 78
          Height = 14
          Caption = 'Novo assunto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 714
          Top = 271
          Width = 99
          Height = 13
          Caption = 'Status da finaliza'#231#227'o'
        end
        object pUltimoAssunto: TPanel
          Left = 1
          Top = -6
          Width = 904
          Height = 90
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            904
            90)
          object Label2: TLabel
            Left = 1
            Top = 6
            Width = 84
            Height = 14
            Caption = #218'ltimo assunto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBText1: TDBText
            Left = 91
            Top = 6
            Width = 145
            Height = 20
            DataField = 'TAH_DATA_REGISTRO'
            DataSource = dsHistorico
          end
          object meUltimoAssunto: TDBMemo
            Left = 0
            Top = 25
            Width = 907
            Height = 61
            Anchors = [akLeft, akTop, akRight]
            Color = clSilver
            DataField = 'TAH_ASSUNTO'
            DataSource = dsHistorico
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = meAssuntoEnter
            OnExit = meAssuntoExit
          end
        end
        object meAssunto: TDBMemo
          Left = 0
          Top = 102
          Width = 908
          Height = 71
          DataField = 'TRF_ASSUNTO'
          DataSource = dsEditS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnEnter = meAssuntoEnter
          OnExit = meAssuntoExit
          OnKeyPress = meAssuntoKeyPress
        end
        object rgOrigem: TDBRadioGroup
          AlignWithMargins = True
          Left = 0
          Top = 172
          Width = 905
          Height = 46
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Caption = 'Origem'
          Columns = 7
          DataField = 'TRF_ORIGEM'
          DataSource = dsEditS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Cliente'
            'Email Mkt'
            'Site/Internet'
            'Indica'#231#227'o'
            'Prospec'#231#227'o'
            'Televendas'
            'Outros')
          ParentFont = False
          TabOrder = 2
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6')
          OnChange = rgOrigemChange
        end
        object Contato: TGroupBox
          Left = 2
          Top = 219
          Width = 640
          Height = 148
          Caption = 'Dados do Contato'
          TabOrder = 3
          object lcliente: TLabel
            Left = 22
            Top = 47
            Width = 41
            Height = 14
            Alignment = taRightJustify
            Caption = 'Cliente:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 15
            Top = 22
            Width = 48
            Height = 14
            Caption = 'Contato:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 32
            Top = 72
            Width = 31
            Height = 14
            Caption = 'Email:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 32
            Top = 96
            Width = 31
            Height = 14
            Caption = 'Fone:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 7
            Top = 123
            Width = 56
            Height = 14
            Caption = 'Endere'#231'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 400
            Top = 99
            Width = 42
            Height = 14
            Caption = 'Fone 2:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit1: TDBEdit
            Left = 66
            Top = 18
            Width = 551
            Height = 22
            DataField = 'TRF_CONTATO'
            DataSource = dsEditS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object edCodigoCliente: TDBEdit
            Left = 66
            Top = 44
            Width = 57
            Height = 22
            DataField = 'CLI_CODIGO'
            DataSource = dsEditS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnExit = edCodigoClienteExit
          end
          object PesqCliente: TSgDbSearchCombo
            Left = 124
            Top = 44
            Width = 470
            Height = 22
            EmptyText = 'Selecione o cliente'
            TabOrder = 3
            CharCase = ecUpperCase
            font.Charset = DEFAULT_CHARSET
            font.Color = clWindowText
            font.Height = -12
            font.Name = 'Tahoma'
            font.Style = []
            LookupSelect = 
              't1.cli_valorfrete,t1.cli_valordespesas,t1.cli_codigo,t1.cli_tabp' +
              'reco,t1.cli_razao,t1.cli_cgc,t1.cli_insc,t2.cid_cidade,t2.cid_es' +
              'tado,t1.cli_modo_trib_st,cn1.cnae_carga_trib_media,t1.pcx_codigo' +
              ',t1.cli_consfinal,t1.CLI_REGIME_TRIBUTARIO,t1.OPE_CODIGO,t1.pcl_' +
              'codigo,t3.pcl_nome,t1.REP_CODIGO,t1.TRP_CODIGO,cli_fone, t1.VEND' +
              '_INTERNO_CODIGO, FPG_REGISTRO, CLI_FRETE'
            LookupOrderBy = 't1.CLI_RAZAO'
            LookupTable = 
              'cli0000 t1 left join cid0000 t2 on (t2.cid_codigo = t1.cid_codig' +
              'o) LEFT JOIN cnae CN1 ON (CN1.cnae_registro = t1.cnae_registro) ' +
              'left join pcl0000 t3 on (t3.pcl_codigo = t1.pcl_codigo)'
            LookupDispl = 'T1.CLI_RAZAO'
            OnButtonClick = PesqClienteButtonClick
            OnSelect = PesqClienteSelect
            GridAutoSize = False
            LookupSource = qCli
            DataField = 'CLI_CODIGO'
            DataSource = dsEditS
            LookupKeyField = 't1.cli_codigo'
            ShowButton = True
            LookupTableShare = 'CLIENTES'
            AutoF8WinTitulo = 'Clientes'
            AutoF8ColumnsTitulo = 'C'#243'digo, Nome, Fantasia'
            LookupDbGridColumnsTitle = 'Nome'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
          end
          object edemail: TDBEdit
            Left = 66
            Top = 69
            Width = 551
            Height = 22
            DataField = 'TRF_EMAILCONTATO'
            DataSource = dsEditS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnEnter = edemailEnter
            OnExit = edemailExit
          end
          object edFone: TDBEdit
            Left = 66
            Top = 94
            Width = 170
            Height = 22
            DataField = 'TRF_CONTATOFONE'
            DataSource = dsEditS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object edEndereco: TDBEdit
            Left = 66
            Top = 120
            Width = 551
            Height = 22
            DataField = 'TRF_ENDERECO'
            DataSource = dsEditS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object DBEdit2: TDBEdit
            Left = 447
            Top = 95
            Width = 170
            Height = 22
            DataField = 'TRF_CONTATOFONE2'
            DataSource = dsEditS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object edNomeEmpresa: TDBEdit
            Left = 124
            Top = 44
            Width = 453
            Height = 21
            DataField = 'TRF_NOMEEMPRESA'
            DataSource = dsEditS
            TabOrder = 1
            Visible = False
          end
        end
        object chkFinalizada: TDBCheckBox
          Left = 738
          Top = 248
          Width = 97
          Height = 17
          Caption = 'Finalizar tarefa'
          DataField = 'TRF_FINALIZADA'
          DataSource = dsEditS
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = chkFinalizadaClick
        end
        object cbStatusFinalizacao: TDBComboBox
          Left = 713
          Top = 289
          Width = 145
          Height = 22
          DataField = 'TRF_STATUS_FINAL'
          DataSource = dsEditS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Sucesso Efetivo'
            'Fora de Budget'
            'Concorrente Ganhou'
            'Pre'#231'o Incomp'#225'tivel'
            'Sem Fit (solu'#231#227'o)')
          ParentFont = False
          TabOrder = 5
          OnChange = cbNivelChange
        end
      end
      object tabHistorico: TTabSheet
        Caption = 'Historico'
        ImageIndex = 1
        ExplicitWidth = 928
        object DBCtrlGrid1: TDBCtrlGrid
          Left = 0
          Top = 0
          Width = 1029
          Height = 368
          Align = alClient
          AllowDelete = False
          AllowInsert = False
          DataSource = dsHistorico
          PanelHeight = 92
          PanelWidth = 1013
          TabOrder = 0
          RowCount = 4
          ExplicitWidth = 928
          object DBText2: TDBText
            Left = 4
            Top = 6
            Width = 118
            Height = 17
            DataField = 'TAH_DATA_REGISTRO'
            DataSource = dsHistorico
          end
          object dbultimo: TDBMemo
            Left = 128
            Top = 0
            Width = 674
            Height = 89
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clBtnFace
            DataField = 'TAH_ASSUNTO'
            DataSource = dsHistorico
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 440
    Top = 128
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 704
    Top = 216
  end
  inherited DBConn: TSQLConnection
    Params.Strings = (
      '')
    Left = 560
    Top = 56
  end
  inherited qAux: TSQLQuery
    Left = 730
    Top = 5
  end
  inherited qAux2: TSQLQuery
    Left = 770
    Top = 4
  end
  inherited qAux3: TSQLQuery
    Left = 810
    Top = 4
  end
  inherited qEdit: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT TRF_REGISTRO, EMP_CODIGO, REP_CODIGO, TRF_PRAZO, TRF_ASSU' +
        'NTO, TRF_FINALIZADA,'
      
        'TRF_DATA_FINA, TRF_EXCLUIDO, TRF_DATA_EXCL, TRF_NIVEL, CLI_CODIG' +
        'O,TRF_NOMEEMPRESA, '
      
        ' TRF_CONTATO, TRF_EMAILCONTATO, TRF_CONTATOFONE, TRF_CONTATOFONE' +
        '2, TRF_ENDERECO, '
      
        'TRF_ACAO, TRF_ORIGEM,TRF_DATA_REGISTRO, TRF_STATUS_FINAL,TRF_DAT' +
        'AABERTURA  FROM tarefas_crm WHERE TRF_REGISTRO = :ID')
    Left = 468
    Top = 65535
    object qEditTRF_REGISTRO: TIntegerField
      FieldName = 'TRF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEditTRF_DATA_REGISTRO: TSQLTimeStampField
      FieldName = 'TRF_DATA_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object qEditemp_codigo: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qEditREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qEditTRF_PRAZO: TSQLTimeStampField
      FieldName = 'TRF_PRAZO'
      ProviderFlags = [pfInUpdate]
    end
    object qEditTRF_ASSUNTO: TBlobField
      FieldName = 'TRF_ASSUNTO'
      ProviderFlags = [pfInUpdate]
      Size = 4000
    end
    object qEditTRF_FINALIZADA: TStringField
      FieldName = 'TRF_FINALIZADA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qEditTRF_DATA_FINA: TSQLTimeStampField
      FieldName = 'TRF_DATA_FINA'
      ProviderFlags = [pfInUpdate]
    end
    object qEditTRF_EXCLUIDO: TStringField
      FieldName = 'TRF_EXCLUIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qEditTRF_DATA_EXCL: TSQLTimeStampField
      FieldName = 'TRF_DATA_EXCL'
      ProviderFlags = [pfInUpdate]
    end
    object qEditTRF_NIVEL: TIntegerField
      FieldName = 'TRF_NIVEL'
      ProviderFlags = [pfInUpdate]
    end
    object qEditCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object qEditTRF_NOMEEMPRESA: TStringField
      FieldName = 'TRF_NOMEEMPRESA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qEditTRF_CONTATO: TStringField
      FieldName = 'TRF_CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qEditTRF_EMAILCONTATO: TStringField
      FieldName = 'TRF_EMAILCONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qEditTRF_CONTATOFONE: TStringField
      FieldName = 'TRF_CONTATOFONE'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object qEditTRF_CONTATOFONE2: TStringField
      FieldName = 'TRF_CONTATOFONE2'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object qEditTRF_ENDERECO: TStringField
      FieldName = 'TRF_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object qEditTRF_ACAO: TIntegerField
      FieldName = 'TRF_ACAO'
      ProviderFlags = [pfInUpdate]
    end
    object qEditTRF_ORIGEM: TIntegerField
      FieldName = 'TRF_ORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object qEditTRF_STATUS_FINAL: TStringField
      FieldName = 'TRF_STATUS_FINAL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qEditTRF_DATAABERTURA: TSQLTimeStampField
      FieldName = 'TRF_DATAABERTURA'
    end
  end
  inherited DspEdit: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 520
    Top = 65535
  end
  inherited CdsEdit: TClientDataSet
    AfterInsert = CdsEditAfterInsert
    Left = 575
    Top = 65535
    object CdsEditTRF_REGISTRO: TIntegerField
      FieldName = 'TRF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsEditTRF_DATA_REGISTRO: TSQLTimeStampField
      FieldName = 'TRF_DATA_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsEditREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEditCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object CdsEditTRF_PRAZO: TSQLTimeStampField
      FieldName = 'TRF_PRAZO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditTRF_ASSUNTO: TMemoField
      FieldName = 'TRF_ASSUNTO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 4000
    end
    object CdsEditTRF_FINALIZADA: TStringField
      FieldName = 'TRF_FINALIZADA'
      ProviderFlags = [pfInUpdate]
      OnChange = CdsEditTRF_FINALIZADAChange
      Size = 1
    end
    object CdsEditTRF_EXCLUIDO: TStringField
      FieldName = 'TRF_EXCLUIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditTRF_NIVEL: TIntegerField
      FieldName = 'TRF_NIVEL'
      ProviderFlags = [pfInUpdate]
      OnGetText = CdsEditTRF_NIVELGetText
      OnSetText = CdsEditTRF_NIVELSetText
    end
    object CdsEditTRF_EMAILCONTATO: TStringField
      FieldName = 'TRF_EMAILCONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsEditTRF_NOMEEMPRESA: TStringField
      FieldName = 'TRF_NOMEEMPRESA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsEditTRF_CONTATO: TStringField
      FieldName = 'TRF_CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsEditTRF_CONTATOFONE: TStringField
      FieldName = 'TRF_CONTATOFONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(99\)99999\-9999;0;_'
      Size = 11
    end
    object CdsEditTRF_CONTATOFONE2: TStringField
      FieldName = 'TRF_CONTATOFONE2'
      ProviderFlags = [pfInUpdate]
      EditMask = '\(99\)99999\-9999;0;_'
      Size = 11
    end
    object CdsEditTRF_ACAO: TIntegerField
      FieldName = 'TRF_ACAO'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditTRF_ENDERECO: TStringField
      FieldName = 'TRF_ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsEditTRF_DATA_FINA: TSQLTimeStampField
      FieldName = 'TRF_DATA_FINA'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditTRF_DATA_EXCL: TSQLTimeStampField
      FieldName = 'TRF_DATA_EXCL'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditTRF_ORIGEM: TIntegerField
      FieldName = 'TRF_ORIGEM'
      ProviderFlags = [pfInUpdate]
    end
    object CdsEditTRF_STATUS_FINAL: TStringField
      FieldName = 'TRF_STATUS_FINAL'
      ProviderFlags = [pfInUpdate]
      OnGetText = CdsEditTRF_STATUS_FINALGetText
      OnSetText = CdsEditTRF_STATUS_FINALSetText
      Size = 1
    end
    object CdsEditTRF_DATAABERTURA: TSQLTimeStampField
      FieldName = 'TRF_DATAABERTURA'
      ProviderFlags = [pfInUpdate]
    end
  end
  inherited dsEditS: TDataSource
    Left = 629
    Top = 65535
  end
  inherited qAuditoria: TSQLQuery
    Left = 608
    Top = 311
  end
  inherited dspAuditoria: TDataSetProvider
    Left = 660
    Top = 311
  end
  inherited cdsAuditoria: TClientDataSet
    Left = 752
    Top = 303
  end
  object ACBrValidador1: TACBrValidador
    IgnorarChar = './-'
    Left = 665
    Top = 247
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
    Left = 417
    Top = 36
  end
  object qCli: TSQLQuery
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
    Left = 577
    Top = 204
  end
  object cdsHistorico: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsHistoricoIndex1'
        DescFields = 'TAH_DATA_REGISTRO'
        Fields = 'TAH_DATA_REGISTRO'
        Options = [ixDescending]
      end>
    IndexName = 'cdsHistoricoIndex1'
    Params = <>
    ProviderName = 'dspHistorico'
    StoreDefs = True
    Left = 576
    Top = 144
    object cdsHistoricoTAH_REGISTRO: TIntegerField
      FieldName = 'TAH_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsHistoricoTAH_DATA_REGISTRO: TSQLTimeStampField
      FieldName = 'TAH_DATA_REGISTRO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object cdsHistoricoTRF_REGISTRO: TIntegerField
      FieldName = 'TRF_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsHistoricoTAH_ASSUNTO: TBlobField
      FieldName = 'TAH_ASSUNTO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 4000
    end
  end
  object dspHistorico: TDataSetProvider
    DataSet = qHistorico
    Left = 624
    Top = 144
  end
  object dsHistorico: TDataSource
    DataSet = cdsHistorico
    Left = 696
    Top = 144
  end
  object qHistorico: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'TRF_REGISTRO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from TAREFAS_HISTORICO'
      'where TRF_REGISTRO = :TRF_REGISTRO')
    Left = 504
    Top = 144
  end
end
