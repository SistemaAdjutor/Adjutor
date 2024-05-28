inherited frmPesquisaInadimplencia: TfrmPesquisaInadimplencia
  Caption = 'inadimpl'#234'ncia'
  ClientHeight = 513
  ClientWidth = 1009
  ExplicitWidth = 1025
  ExplicitHeight = 552
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 1009
    ExplicitWidth = 1108
    DesignSize = (
      1009
      41)
    inherited btnExclui: TSpeedButton
      Visible = False
    end
    inherited btnNovo: TSpeedButton
      Visible = False
    end
    inherited btnEdita: TSpeedButton
      Visible = False
    end
    inherited btnFechar: TSpeedButton
      Left = 945
      ExplicitLeft = 1044
    end
    inherited btnImprime: TSpeedButton
      Left = 788
      OnClick = btnImprimeClick
      ExplicitLeft = 887
    end
    inherited btnExcel: TSpeedButton
      Left = 867
      ExplicitLeft = 966
    end
    object Label5: TLabel
      Left = 15
      Top = 10
      Width = 463
      Height = 18
      Caption = 'Duplo click sobre o registro para exibir as parcelas em atraso.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  inherited PageControl1: TPageControl
    Width = 1009
    Height = 423
    ExplicitWidth = 1108
    ExplicitHeight = 423
    inherited tsNotas: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 1100
      ExplicitHeight = 395
      inherited pnControle: TPanel
        Width = 1001
        Height = 73
        ExplicitWidth = 1100
        ExplicitHeight = 73
        inherited pnFiltro: TPanel
          Width = 1001
          Height = 73
          Align = alClient
          ExplicitWidth = 1100
          ExplicitHeight = 73
          inherited pn1: TPanel
            Top = 0
            Width = 1001
            Height = 73
            Align = alClient
            ExplicitTop = 0
            ExplicitWidth = 1100
            ExplicitHeight = 73
            inherited btnPesquisa: TSpeedButton
              Left = 906
              Top = 7
              ExplicitLeft = 906
              ExplicitTop = 7
            end
            inherited btnLimpar: TSpeedButton
              Left = 906
              Top = 33
              ExplicitLeft = 906
              ExplicitTop = 33
            end
            object Label1: TLabel
              Left = 7
              Top = 5
              Width = 35
              Height = 14
              Alignment = taRightJustify
              Caption = 'Cliente:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 603
              Top = 8
              Width = 117
              Height = 13
              Caption = 'Dias ap'#243's o vencimento:'
            end
            object Label4: TLabel
              Left = 272
              Top = 41
              Width = 50
              Height = 13
              Caption = 'Vendedor:'
            end
            object EdClienteCodigo: TEdit
              Left = 45
              Top = 4
              Width = 43
              Height = 21
              CharCase = ecUpperCase
              Color = clWhite
              MaxLength = 5
              TabOrder = 0
              OnChange = EdClienteCodigoChange
              OnExit = EdClienteCodigoExit
            end
            object PesqCliente: TSgDbSearchCombo
              Left = 89
              Top = 4
              Width = 485
              Height = 21
              EmptyText = 'TODOS OS CLIENTES'
              TabOrder = 1
              CharCase = ecUpperCase
              LookupSelect = 'CLI_CODIGO,CLI_RAZAO,CLI_FANTASIA'
              LookupOrderBy = 'CLI_RAZAO'
              LookupTable = 'cli0000'
              LookupDispl = 'CLI_RAZAO'
              OnSelect = PesqClienteSelect
              GridAutoSize = False
              LookupSource = qAux
              LookupKeyField = 'CLI_CODIGO'
              ShowButton = True
              LookupTableShare = 'clientes'
              AutoF8WinTitulo = 'Clientes'
              AutoF8ColumnsTitulo = 'C'#243'digo, Nome, Fantasia'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridTop = 0
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
              LimparCampoAoSair = True
            end
            object edDias: TEdit
              Left = 729
              Top = 3
              Width = 91
              Height = 21
              TabOrder = 2
              OnKeyPress = edDiasKeyPress
            end
            object Data: TGroupBox
              Left = 1
              Top = 27
              Width = 265
              Height = 37
              Caption = 'Per'#237'odo de vencimento'
              TabOrder = 3
              object Ate: TLabel
                Left = 133
                Top = 16
                Width = 17
                Height = 13
                Caption = 'At'#233
              end
              object Label3: TLabel
                Left = 10
                Top = 15
                Width = 13
                Height = 13
                Caption = 'De'
              end
              object DataFim: TJvDateEdit
                Left = 158
                Top = 13
                Width = 87
                Height = 21
                ShowNullDate = False
                TabOrder = 0
              end
              object DataIni: TJvDateEdit
                Left = 29
                Top = 13
                Width = 98
                Height = 21
                ShowNullDate = False
                TabOrder = 1
              end
            end
            object cbVendedor: TSgDbSearchCombo
              Left = 368
              Top = 38
              Width = 206
              Height = 21
              TabOrder = 4
              CharCase = ecUpperCase
              LookupSelect = 'rep_codigo, rep_nome'
              LookupOrderBy = 'rep_nome'
              LookupTable = 'rep0000'
              LookupDispl = 'REP_NOME'
              OnSelect = cbVendedorSelect
              GridAutoSize = False
              LookupSource = qRep
              DataField = 'REP_CODIGO'
              DataSource = DataCadastros.DsCliente
              LookupKeyField = 'rep_codigo'
              FiltroTabela = 'REP_SITUACAO = '#39'A'#39
              ShowButton = True
              AutoF8WinTitulo = 'Vendedores'
              AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridTop = 0
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
              LimparCampoAoSair = True
            end
            object edVendedor: TEdit
              Left = 324
              Top = 38
              Width = 41
              Height = 21
              TabOrder = 5
              OnExit = edVendedorExit
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Top = 73
        Width = 1001
        Height = 322
        OnCellClick = DBGridCellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CLI_CODIGO'
            Title.Caption = 'c'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_RAZAO'
            Title.Caption = 'Cliente'
            Width = 205
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vendas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valorpend'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtde'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dias'
            Title.Caption = 'Dias *'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'indice'
            Title.Caption = 'Indice'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fpc_vencto'
            Title.Caption = #218'ltimo Vcto'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_FONE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_EMAIL'
            Width = 173
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REP_NOME'
            Title.Caption = 'Vendedor'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_OBS'
            Title.Caption = 'Observa'#231#245'es'
            Width = 270
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Top = 464
    Width = 1009
    Height = 49
    ExplicitTop = 464
    ExplicitWidth = 1108
    ExplicitHeight = 49
    DesignSize = (
      1009
      49)
    inherited btnSelect: TSpeedButton
      Left = 861
      ExplicitLeft = 960
    end
    object labIndice: TLabel
      Left = 181
      Top = 28
      Width = 32
      Height = 13
      Caption = 'indices'
    end
  end
  inherited qBusco: TSQLQuery
    object qBuscoCLI_CODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLI_CODIGO'
      Size = 6
    end
    object qBuscoCLI_RAZAO: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLI_RAZAO'
      Size = 150
    end
    object qBuscovendas: TFMTBCDField
      DisplayLabel = 'Total t'#237'tulos'
      FieldName = 'vendas'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
    end
    object qBuscovalorpend: TFMTBCDField
      DisplayLabel = 'Inadimpl'#234'ncia'
      FieldName = 'valorpend'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
    end
    object qBuscoqtde: TIntegerField
      DisplayLabel = 'T'#237'tulos atrasados'
      FieldName = 'qtde'
    end
    object qBuscodias: TLargeintField
      DisplayLabel = 'Dias'
      FieldName = 'dias'
    end
    object qBuscoindice: TFMTBCDField
      FieldName = 'Indice'
      DisplayFormat = '###0.00 %'
      Precision = 15
    end
    object qBuscofpc_vencto: TSQLTimeStampField
      DisplayLabel = 'Ultimo vcto'
      FieldName = 'fpc_vencto'
    end
    object qBuscoCLI_FONE: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'CLI_FONE'
      OnGetText = cdsBuscoCLI_FONEGetText
      Size = 14
    end
    object qBuscoCLI_EMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'CLI_EMAIL'
      Size = 150
    end
    object qBuscoREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object qBuscoCLI_OBS: TMemoField
      FieldName = 'CLI_OBS'
      BlobType = ftMemo
    end
  end
  inherited cdsBusco: TClientDataSet
    PacketRecords = -1
    object cdsBuscoCLI_CODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLI_CODIGO'
      Size = 6
    end
    object cdsBuscoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 150
    end
    object cdsBuscovendas: TFMTBCDField
      DisplayLabel = 'Total t'#237'tulos'
      FieldName = 'vendas'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
    end
    object cdsBuscovalorpend: TFMTBCDField
      DisplayLabel = 'Inadimpl'#234'ncia'
      FieldName = 'valorpend'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
    end
    object cdsBuscoqtde: TIntegerField
      DisplayLabel = 'T'#237'tulos atrasados'
      FieldName = 'qtde'
    end
    object cdsBuscodias: TLargeintField
      DisplayLabel = 'Dias'
      FieldName = 'dias'
    end
    object cdsBuscoindice: TFMTBCDField
      FieldName = 'indice'
      DisplayFormat = '###0.00 %'
      Precision = 15
    end
    object cdsBuscofpc_vencto: TSQLTimeStampField
      DisplayLabel = 'Ultimo vcto'
      FieldName = 'fpc_vencto'
    end
    object cdsBuscoCLI_FONE: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'CLI_FONE'
      OnGetText = cdsBuscoCLI_FONEGetText
      Size = 14
    end
    object cdsBuscoCLI_EMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'CLI_EMAIL'
      Size = 150
    end
    object cdsBuscoREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object cdsBuscoCLI_OBS: TMemoField
      FieldName = 'CLI_OBS'
      OnGetText = cdsBuscoCLI_OBSGetText
      BlobType = ftMemo
    end
  end
  object bl1: TACBrBoleto
    Banco.Numero = 104
    Banco.TamanhoMaximoNossoNum = 15
    Banco.TipoCobranca = cobCaixaEconomica
    Banco.OrientacoesBanco.Strings = (
      
        'SAC CAIXA: 0800 726 0101 (informa'#231#245'es, reclama'#231#245'es, sugest'#245'es e ' +
        'elogios) '
      'Para pessoas com defici'#234'ncia auditiva ou de fala: 0800 726 2492 '
      
        'Ouvidoria: 0800 725 7474 (reclama'#231#245'es n'#227'o solucionadas e den'#250'nci' +
        'as) '
      'caixa.gov.br ')
    Banco.LayoutVersaoArquivo = 0
    Banco.LayoutVersaoLote = 0
    Banco.CasasDecimaisMoraJuros = 2
    Cedente.TipoInscricao = pJuridica
    Cedente.IdentDistribuicao = tbBancoDistribui
    Cedente.PIX.TipoChavePIX = tchNenhuma
    NumeroArquivo = 0
    Configuracoes.Arquivos.LogNivel = logNenhum
    Configuracoes.WebService.SSLHttpLib = httpOpenSSL
    Configuracoes.WebService.StoreName = 'My'
    Configuracoes.WebService.Ambiente = taHomologacao
    Configuracoes.WebService.Operacao = tpInclui
    Configuracoes.WebService.VersaoDF = '1.2'
    Left = 816
    Top = 280
  end
  object PopupMenu1: TPopupMenu
    Left = 300
    Top = 241
    object Boletos1: TMenuItem
      Caption = 'Gerar boletos'
    end
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
    Left = 608
    Top = 228
  end
end
