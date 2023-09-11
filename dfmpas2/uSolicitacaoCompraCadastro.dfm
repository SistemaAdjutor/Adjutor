inherited frmSolicitacaoCompraCadastro: TfrmSolicitacaoCompraCadastro
  Caption = 'Gerar Solicita'#231#227'o de Compra'
  ClientHeight = 699
  ClientWidth = 950
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  ExplicitTop = -181
  ExplicitWidth = 958
  ExplicitHeight = 726
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 668
    Width = 950
    ExplicitTop = 668
    ExplicitWidth = 950
    inherited btnConfirmar: TButton
      Left = 727
      Caption = '&Sair'
      ExplicitLeft = 727
    end
    inherited btnCancelar: TButton
      Left = 838
      OnClick = btnCancelarClick
      ExplicitLeft = 838
    end
    object btIncluirNovoFornecedor: TButton
      Left = 401
      Top = 3
      Width = 162
      Height = 25
      Caption = '&Nova Cota'#231#227'o'
      TabOrder = 2
      OnClick = btIncluirNovoFornecedorClick
    end
  end
  inherited pprincipal: TPanel
    Width = 950
    Height = 668
    ExplicitWidth = 950
    ExplicitHeight = 668
    object pTop: TPanel
      Left = 1
      Top = 1
      Width = 948
      Height = 152
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 255
        Top = 16
        Width = 30
        Height = 13
        Caption = 'Setor:'
      end
      object Label2: TLabel
        Left = 25
        Top = 16
        Width = 53
        Height = 13
        Caption = 'Solicitante:'
      end
      object Label3: TLabel
        Left = 16
        Top = 42
        Width = 62
        Height = 13
        Caption = 'Observa'#231#227'o:'
      end
      object Label4: TLabel
        Left = 443
        Top = 42
        Width = 95
        Height = 13
        Caption = 'Data da Solicita'#231#227'o:'
      end
      object Label18: TLabel
        Left = 643
        Top = 42
        Width = 84
        Height = 13
        Caption = 'N'#186' Pedido Venda:'
      end
      object cbSetor: TComboBoxRw
        Left = 338
        Top = 13
        Width = 271
        Height = 21
        TabOrder = 2
        CharCase = ecUpperCase
        LookupSelect = 'SET_CODIGO,SET_DESCRICAO'
        LookupOrderBy = 'SET_DESCRICAO'
        LookupTable = 'SETOR'
        LookupDispl = 'SET_DESCRICAO'
        OnSelect = cbSetorSelect
        GridAutoSize = False
        LookupSource = cbSetor.InternalSource
        LookupKeyField = 'SET_CODIGO'
        ShowButton = True
        LookupTableShare = 'SETORES'
        AutoF8WinTitulo = 'Setores'
        AutoF8ColumnsTitulo = 'C'#243'digo, Descricao'
        GridLeft = 0
        GridWidth = 0
        GridHeight = 100
        GridShowWhenEnter = False
        SelectWithDoubleClick = False
        Tabela = 'SETOR'
        CamposCarregar = 'SET_CODIGO,SET_DESCRICAO'
        CamposRetornar = 'SET_CODIGO'
        CamposOrdernar = 'SET_DESCRICAO'
        ConexaoBanco = DataCadastros.SQLConnection1
        Compartilhar = 'SETORES'
        Localizado = False
        CodigoEmpresa = 0
        ResetaCampos = False
        MultiEmpresa = False
        Localizar = False
        CarregarCombo = False
        itemindex = 0
        style = csDropDown
      end
      object edSetorCodigo: TDBEdit
        Left = 291
        Top = 13
        Width = 45
        Height = 21
        DataField = 'SET_CODIGO'
        DataSource = dsSolicitacaoCompra
        TabOrder = 1
        OnExit = edSetorCodigoExit
      end
      object edSolicitante: TDBEdit
        Left = 84
        Top = 13
        Width = 164
        Height = 21
        DataField = 'SCO_SOLICITANTE'
        DataSource = dsSolicitacaoCompra
        TabOrder = 0
      end
      object edObservacao: TDBEdit
        Left = 84
        Top = 39
        Width = 348
        Height = 21
        DataField = 'SCO_OBSERVACAO'
        DataSource = dsSolicitacaoCompra
        TabOrder = 3
      end
      object dtSolicitacao: TJvDateEdit
        Left = 540
        Top = 39
        Width = 93
        Height = 21
        DateFormat = 'YYYY'
        ShowNullDate = False
        YearDigits = dyFour
        TabOrder = 4
        OnExit = dtSolicitacaoExit
      end
      object gbProduto: TGroupBox
        Left = 1
        Top = 59
        Width = 946
        Height = 92
        Align = alBottom
        Caption = 'Produto'
        TabOrder = 5
        DesignSize = (
          946
          92)
        object Label5: TLabel
          Left = 13
          Top = 13
          Width = 46
          Height = 13
          Caption = 'Pesquisa:'
        end
        object Label6: TLabel
          Left = 54
          Top = 40
          Width = 50
          Height = 13
          Caption = 'Descri'#231#227'o:'
        end
        object Label7: TLabel
          Left = 49
          Top = 70
          Width = 55
          Height = 13
          Caption = 'Qtde. M'#237'n.:'
        end
        object Label11: TLabel
          Left = 169
          Top = 69
          Width = 59
          Height = 13
          Caption = 'Qtde. M'#225'x.:'
        end
        object Label12: TLabel
          Left = 296
          Top = 69
          Width = 43
          Height = 13
          Caption = 'Unidade:'
        end
        object Label17: TLabel
          Left = 470
          Top = 69
          Width = 123
          Height = 13
          Hint = 'Data em que ser'#227'o entregues os itens aprovados da cota'#231#227'o'
          Caption = 'Previs'#227'o de Necessidade:'
          ParentShowHint = False
          ShowHint = True
        end
        object cbProduto: TComboBoxRw
          Left = 105
          Top = 10
          Width = 237
          Height = 21
          TabOrder = 1
          CharCase = ecUpperCase
          LookupSelect = 'PRD_REFER,PRD_DESCRI'
          LookupOrderBy = 'PRD_DESCRI'
          LookupTable = 'PRD0000'
          LookupDispl = 'PRD_DESCRI'
          OnSelect = cbProdutoSelect
          GridAutoSize = False
          LookupSource = cbProduto.InternalSource
          LookupKeyField = 'PRD_REFER'
          ShowButton = True
          LookupTableShare = 'PRODUTOS'
          AutoF8WinTitulo = 'Produtos'
          AutoF8ColumnsTitulo = 'C'#243'digo, Descricao'
          GridLeft = 0
          GridWidth = 0
          GridHeight = 100
          GridShowWhenEnter = False
          SelectWithDoubleClick = False
          Tabela = 'PRD0000'
          CamposCarregar = 'PRD_REFER,PRD_DESCRI'
          CamposRetornar = 'PRD_REFER'
          CamposOrdernar = 'PRD_DESCRI'
          ConexaoBanco = DataCadastros.SQLConnection1
          Compartilhar = 'PRODUTOS'
          Localizado = False
          CodigoEmpresa = 0
          ResetaCampos = False
          MultiEmpresa = False
          Localizar = False
          CarregarCombo = False
          itemindex = 0
          style = csDropDown
        end
        object edPrdRefer: TDBEdit
          Left = 59
          Top = 10
          Width = 45
          Height = 21
          DataField = 'PRD_REFER'
          DataSource = dsSolicitacaoCompra
          TabOrder = 0
          OnExit = edPrdReferExit
        end
        object edSitDescricaoProduto: TDBEdit
          Left = 105
          Top = 37
          Width = 708
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'SCO_DESCRICAO_PRODUTO'
          DataSource = dsSolicitacaoCompra
          TabOrder = 2
        end
        object edQtdeMin: TDBEdit
          Left = 106
          Top = 66
          Width = 50
          Height = 21
          DataField = 'SCO_QTDE_MIN'
          DataSource = dsSolicitacaoCompra
          TabOrder = 3
        end
        object edQtdeMax: TDBEdit
          Left = 229
          Top = 66
          Width = 50
          Height = 21
          DataField = 'SCO_QTDE_MAX'
          DataSource = dsSolicitacaoCompra
          TabOrder = 4
        end
        object cbUndMedida: TDBLookupComboBox
          Left = 340
          Top = 66
          Width = 101
          Height = 21
          DataField = 'UND_SIGLA'
          DataSource = dsSolicitacaoCompra
          KeyField = 'UND_SIGLA'
          ListField = 'UND_DESCRICAO'
          ListSource = dsUndMedida
          TabOrder = 5
        end
        object dtScoDataEntrega: TJvDateEdit
          Left = 595
          Top = 66
          Width = 113
          Height = 21
          DateFormat = 'YYYY'
          ShowNullDate = False
          YearDigits = dyFour
          TabOrder = 6
          OnExit = dtScoDataEntregaExit
        end
        object btGravarSolicitacao: TButton
          Left = 819
          Top = 66
          Width = 124
          Height = 21
          Hint = 'Grava as altera'#231#245'es na Solicita'#231#227'o'
          Anchors = [akTop, akRight]
          Caption = 'Gravar Solicita'#231#227'o'
          TabOrder = 7
          OnClick = btGravarSolicitacaoClick
        end
      end
      object edScoNroPedidoVenda: TDBEdit
        Left = 726
        Top = 39
        Width = 96
        Height = 21
        DataField = 'SCO_NRO_PEDIDO_VENDA'
        DataSource = dsSolicitacaoCompra
        TabOrder = 6
      end
    end
    object pnSolicitacaoItem: TPanel
      Left = 1
      Top = 153
      Width = 948
      Height = 514
      Align = alClient
      Enabled = False
      TabOrder = 1
      object gbFornecedor: TGroupBox
        Left = 1
        Top = 1
        Width = 946
        Height = 70
        Align = alTop
        Caption = 'Fornecedor'
        TabOrder = 0
        object Label8: TLabel
          Left = 13
          Top = 44
          Width = 31
          Height = 13
          Caption = 'Nome:'
        end
        object Label9: TLabel
          Left = 588
          Top = 17
          Width = 46
          Height = 13
          Caption = 'Telefone:'
        end
        object Label10: TLabel
          Left = 423
          Top = 44
          Width = 32
          Height = 13
          Caption = 'e-mail:'
        end
        object Label32: TLabel
          Left = 411
          Top = 17
          Width = 29
          Height = 13
          Caption = 'CNPJ:'
        end
        object cbFornecedor: TComboBoxRw
          Left = 50
          Top = 14
          Width = 314
          Height = 21
          TabOrder = 2
          CharCase = ecUpperCase
          LookupSelect = 'FOR_CODIGO,FOR_RAZAO'
          LookupOrderBy = 'FOR_RAZAO'
          LookupTable = 'FOR0000'
          LookupDispl = 'FOR_RAZAO'
          OnSelect = cbFornecedorSelect
          GridAutoSize = False
          LookupSource = cbFornecedor.InternalSource
          LookupKeyField = 'FOR_CODIGO'
          ShowButton = True
          LookupTableShare = 'FORNECEDORES'
          AutoF8WinTitulo = 'Fornecedores'
          AutoF8ColumnsTitulo = 'C'#243'digo, Raz'#227'o'
          GridLeft = 0
          GridWidth = 0
          GridHeight = 100
          GridShowWhenEnter = False
          SelectWithDoubleClick = False
          Tabela = 'FOR0000'
          CamposCarregar = 'FOR_CODIGO,FOR_RAZAO'
          CamposRetornar = 'FOR_CODIGO'
          CamposOrdernar = 'FOR_RAZAO'
          ConexaoBanco = DataCadastros.SQLConnection1
          Compartilhar = 'FORNECEDORES'
          Localizado = False
          CodigoEmpresa = 0
          ResetaCampos = False
          MultiEmpresa = False
          Localizar = False
          CarregarCombo = False
          itemindex = 0
          style = csDropDown
        end
        object edForCodigo: TDBEdit
          Left = 4
          Top = 14
          Width = 45
          Height = 21
          DataField = 'FOR_CODIGO'
          DataSource = dsSolicitacaoItem
          TabOrder = 0
          OnExit = edForCodigoExit
        end
        object edForRazao: TDBEdit
          Left = 50
          Top = 41
          Width = 340
          Height = 21
          DataField = 'FOR_RAZAO'
          DataSource = dsSolicitacaoItem
          TabOrder = 4
        end
        object edFornecedorTelefone: TDBEdit
          Left = 635
          Top = 14
          Width = 91
          Height = 21
          DataField = 'FOR_FONE'
          DataSource = dsSolicitacaoItem
          TabOrder = 3
        end
        object edEmail: TDBEdit
          Left = 456
          Top = 41
          Width = 340
          Height = 21
          DataField = 'FOR_EMAIL'
          DataSource = dsSolicitacaoItem
          TabOrder = 5
        end
        object edFornecedorCNPJ: TDBEdit
          Left = 442
          Top = 14
          Width = 140
          Height = 21
          DataField = 'FOR_CGC'
          DataSource = dsSolicitacaoItem
          TabOrder = 1
          OnExit = edFornecedorCNPJExit
        end
      end
      object gbCompra: TGroupBox
        Left = 1
        Top = 274
        Width = 946
        Height = 57
        Align = alBottom
        Caption = 'Compra'
        TabOrder = 2
        object Label27: TLabel
          Left = 3
          Top = 33
          Width = 136
          Height = 13
          Caption = 'Observa'#231#227'o Status Compra:'
        end
        object Label26: TLabel
          Left = 64
          Top = 11
          Width = 75
          Height = 13
          Caption = 'Status Compra:'
        end
        object Label19: TLabel
          Left = 294
          Top = 11
          Width = 91
          Height = 13
          Caption = 'N'#186' Pedido Compra:'
        end
        object Label30: TLabel
          Left = 523
          Top = 11
          Width = 32
          Height = 13
          Hint = 'Respons'#225'vel'
          Caption = 'Resp.:'
          ParentShowHint = False
          ShowHint = True
        end
        object edSitStatusCompraObs: TDBEdit
          Left = 140
          Top = 30
          Width = 397
          Height = 21
          Hint = 'Observa'#231#227'o do Status da Compra'
          DataField = 'SIT_STATUS_COMPRA_OBS'
          DataSource = dsSolicitacaoItem
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object cbSitStatusCompra: TComboBox
          Left = 140
          Top = 8
          Width = 145
          Height = 21
          TabOrder = 0
          OnChange = cbSitStatusCompraChange
          Items.Strings = (
            'N'#227'o Definido'
            'Em An'#225'lise'
            'Em Aprova'#231#227'o'
            'Transmitir'
            'Em Acompanhamento'
            'Conclu'#237'da'
            'Cancelada'
            'Revisar')
        end
        object edSitNroPedidoCompra: TDBEdit
          Left = 387
          Top = 8
          Width = 117
          Height = 21
          DataField = 'SIT_NRO_PEDIDO_COMPRA'
          DataSource = dsSolicitacaoItem
          TabOrder = 1
        end
        object chkSitPedidoCompra: TDBCheckBox
          Left = 554
          Top = 32
          Width = 123
          Height = 17
          Caption = 'Pedido de Compra'
          DataField = 'SIT_PEDIDO_COMPRA'
          DataSource = dsSolicitacaoItem
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object edSitStatCompraResp: TDBEdit
          Left = 556
          Top = 8
          Width = 121
          Height = 21
          DataField = 'SIT_STAT_COMPRA_RESP'
          DataSource = dsSolicitacaoItem
          Enabled = False
          TabOrder = 4
        end
      end
      object pnDataCotacao: TPanel
        Left = 1
        Top = 71
        Width = 946
        Height = 127
        Align = alClient
        TabOrder = 1
        object gbData: TGroupBox
          Left = 1
          Top = 1
          Width = 208
          Height = 125
          Align = alLeft
          Caption = 'Datas'
          TabOrder = 0
          object Label13: TLabel
            Left = 44
            Top = 13
            Width = 44
            Height = 13
            Hint = 'Data em que a cota'#231#227'o foi inserida'
            Caption = 'Cota'#231#227'o:'
            ParentShowHint = False
            ShowHint = True
          end
          object Label23: TLabel
            Left = 6
            Top = 70
            Width = 82
            Height = 13
            Hint = 'Data da Autoriza'#231#227'o da Compra'
            Caption = 'Autoriz. Compra:'
            ParentShowHint = False
            ShowHint = True
          end
          object Label28: TLabel
            Left = 6
            Top = 37
            Width = 80
            Height = 13
            Hint = 'Data da Finaliza'#231#227'o da Cota'#231#227'o'
            Caption = 'Finaliz. Cota'#231#227'o:'
            ParentShowHint = False
            ShowHint = True
          end
          object dtSitDataCotacao: TJvDateEdit
            Left = 90
            Top = 10
            Width = 113
            Height = 21
            DateFormat = 'YYYY'
            ShowNullDate = False
            YearDigits = dyFour
            TabOrder = 0
            OnExit = dtSitDataCotacaoExit
          end
          object dtSitDataAutorizacaoCompra: TJvDateEdit
            Left = 90
            Top = 67
            Width = 113
            Height = 21
            DateFormat = 'YYYY'
            ShowNullDate = False
            YearDigits = dyFour
            TabOrder = 2
            OnExit = dtSitDataAutorizacaoCompraExit
          end
          object dtSitDataFinalizacaoCotacao: TJvDateEdit
            Left = 90
            Top = 34
            Width = 113
            Height = 21
            DateFormat = 'YYYY'
            ShowNullDate = False
            YearDigits = dyFour
            TabOrder = 1
            OnExit = dtSitDataFinalizacaoCotacaoExit
          end
          object pMiddle: TPanel
            Left = 2
            Top = 95
            Width = 204
            Height = 28
            Align = alBottom
            TabOrder = 3
            DesignSize = (
              204
              28)
            object btGravar: TButton
              Left = 89
              Top = 0
              Width = 111
              Height = 26
              Anchors = [akTop, akRight]
              Caption = 'Gravar'
              TabOrder = 0
              OnClick = btGravarClick
            end
            object btCancelar: TButton
              Left = 4
              Top = 0
              Width = 70
              Height = 26
              Anchors = [akTop, akRight]
              Caption = '&Cancelar'
              TabOrder = 1
              OnClick = btCancelarClick
            end
          end
        end
        object gbCotacao: TGroupBox
          Left = 278
          Top = 1
          Width = 667
          Height = 125
          Align = alRight
          Caption = 'Cota'#231#227'o'
          TabOrder = 1
          object Label24: TLabel
            Left = 51
            Top = 68
            Width = 50
            Height = 13
            Caption = 'Conclu'#237'da:'
          end
          object Label20: TLabel
            Left = 204
            Top = 41
            Width = 88
            Height = 13
            Caption = 'Prazo Pagamento:'
          end
          object Label16: TLabel
            Left = 414
            Top = 19
            Width = 68
            Height = 13
            Caption = 'Tipo do Frete:'
          end
          object Label15: TLabel
            Left = 205
            Top = 19
            Width = 87
            Height = 13
            Caption = 'Prazo da Entrega:'
          end
          object Label14: TLabel
            Left = 29
            Top = 20
            Width = 74
            Height = 13
            Caption = 'Pre'#231'o Cota'#231#227'o:'
          end
          object Label31: TLabel
            Left = 6
            Top = 102
            Width = 90
            Height = 13
            Caption = 'Cota'#231#227'o Aprovada'
          end
          object edSitConcluida: TDBEdit
            Left = 102
            Top = 65
            Width = 397
            Height = 21
            Hint = 'Cota'#231#227'o Conclu'#237'da - N'#186' das OCs correspondentes'
            DataField = 'SIT_CONCLUIDA'
            DataSource = dsSolicitacaoItem
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
          end
          object edSitPrazoPagamento: TDBEdit
            Left = 292
            Top = 38
            Width = 96
            Height = 21
            DataField = 'SIT_PRAZO_PAGAMENTO'
            DataSource = dsSolicitacaoItem
            TabOrder = 3
          end
          object cbSitTipoFrete: TComboBox
            Left = 481
            Top = 16
            Width = 113
            Height = 21
            TabOrder = 2
            OnChange = cbSitTipoFreteChange
            Items.Strings = (
              'N'#227'o Definido'
              'CIF-Pago'
              'FOB-a pagar')
          end
          object edSitPrecoCotacao: TDBEdit
            Left = 102
            Top = 17
            Width = 95
            Height = 21
            DataField = 'SIT_PRECO_COTACAO'
            DataSource = dsSolicitacaoItem
            TabOrder = 0
          end
          object cbSitCotacaoAprovada: TDBRadioGroup
            Left = 102
            Top = 90
            Width = 121
            Height = 33
            Columns = 2
            DataField = 'SIT_COTACAO_APROVADA'
            DataSource = dsSolicitacaoItem
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 5
            Values.Strings = (
              'S'
              'N')
            OnChange = cbSitCotacaoAprovadaChange
          end
          object edSitPrazoEntrega: TJvDateEdit
            Left = 293
            Top = 14
            Width = 113
            Height = 21
            DateFormat = 'YYYY'
            ShowNullDate = False
            YearDigits = dyFour
            TabOrder = 1
            OnExit = edSitPrazoEntregaExit
          end
        end
      end
      object cxGrid1: TcxGrid
        Left = 1
        Top = 331
        Width = 946
        Height = 182
        Align = alBottom
        TabOrder = 3
        object cxGrid1DBTableView1: TcxGridDBTableView
          PopupMenu = PopupMenu1
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Visible = True
          OnCellDblClick = cxGrid1DBTableView1CellDblClick
          DataController.DataSource = dsSolicitacaoItem
          DataController.Options = [dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1SIT_CODIGO: TcxGridDBColumn
            Caption = 'Chave Prim'#225'ria'
            DataBinding.FieldName = 'SIT_CODIGO'
            Width = 78
          end
          object cxGrid1DBTableView1SCO_CODIGO: TcxGridDBColumn
            Caption = 'C'#243'd. Solicita'#231#227'o '
            DataBinding.FieldName = 'SCO_CODIGO'
            Width = 82
          end
          object cxGrid1DBTableView1FOR_CODIGO: TcxGridDBColumn
            Caption = 'C'#243'd. Fornecedor'
            DataBinding.FieldName = 'FOR_CODIGO'
            Width = 94
          end
          object cxGrid1DBTableView1FOR_RAZAO: TcxGridDBColumn
            Caption = 'Raz'#227'o Social Fornecedor'
            DataBinding.FieldName = 'FOR_RAZAO'
          end
          object cxGrid1DBTableView1FOR_FONE: TcxGridDBColumn
            Caption = 'Telefone Forn.'
            DataBinding.FieldName = 'FOR_FONE'
          end
          object cxGrid1DBTableView1FOR_EMAIL: TcxGridDBColumn
            Caption = 'e-mail Fornecedor'
            DataBinding.FieldName = 'FOR_EMAIL'
          end
          object cxGrid1DBTableView1FOR_CGC: TcxGridDBColumn
            DataBinding.FieldName = 'FOR_CGC'
          end
          object cxGrid1DBTableView1SIT_COTACAO_APROVADA: TcxGridDBColumn
            Caption = 'Cota'#231#227'o Aprovada'
            DataBinding.FieldName = 'SIT_COTACAO_APROVADA'
            OnGetDataText = cxGrid1DBTableView1SIT_COTACAO_APROVADAGetDataText
            Width = 97
          end
          object cxGrid1DBTableView1SIT_PEDIDO_COMPRA: TcxGridDBColumn
            Caption = 'Pedido de Compra'
            DataBinding.FieldName = 'SIT_PEDIDO_COMPRA'
            OnGetDataText = cxGrid1DBTableView1SIT_PEDIDO_COMPRAGetDataText
            Width = 92
          end
          object cxGrid1DBTableView1SIT_DATA_COTACAO: TcxGridDBColumn
            Caption = 'Data da Cota'#231#227'o'
            DataBinding.FieldName = 'SIT_DATA_COTACAO'
          end
          object cxGrid1DBTableView1SIT_PRECO_COTACAO: TcxGridDBColumn
            Caption = 'Pre'#231'o'
            DataBinding.FieldName = 'SIT_PRECO_COTACAO'
          end
          object cxGrid1DBTableView1SIT_PRAZO_ENTREGA: TcxGridDBColumn
            Caption = 'Prazo de Entrega'
            DataBinding.FieldName = 'SIT_PRAZO_ENTREGA'
          end
          object cxGrid1DBTableView1SIT_TIPO_FRETE: TcxGridDBColumn
            Caption = 'Tipo do Frete'
            DataBinding.FieldName = 'SIT_TIPO_FRETE'
            OnGetDataText = cxGrid1DBTableView1SIT_TIPO_FRETEGetDataText
          end
          object cxGrid1DBTableView1SIT_NRO_PEDIDO_COMPRA: TcxGridDBColumn
            Caption = 'N'#186' Pedido Compra'
            DataBinding.FieldName = 'SIT_NRO_PEDIDO_COMPRA'
          end
          object cxGrid1DBTableView1SIT_PRAZO_PAGAMENTO: TcxGridDBColumn
            Caption = 'Prazo de Pagamento'
            DataBinding.FieldName = 'SIT_PRAZO_PAGAMENTO'
          end
          object cxGrid1DBTableView1SIT_DATA_FINALIZACAO_COTACAO: TcxGridDBColumn
            Caption = 'Data Finaliza'#231#227'o da Cota'#231#227'o'
            DataBinding.FieldName = 'SIT_DATA_FINALIZACAO_COTACAO'
          end
          object cxGrid1DBTableView1SIT_DATA_AUTORIZACAO_COMPRA: TcxGridDBColumn
            Caption = 'Data da Autoriza'#231#227'o de Compra'
            DataBinding.FieldName = 'SIT_DATA_AUTORIZACAO_COMPRA'
          end
          object cxGrid1DBTableView1SIT_CONCLUIDA: TcxGridDBColumn
            Caption = 'Conclu'#237'da'
            DataBinding.FieldName = 'SIT_CONCLUIDA'
          end
          object cxGrid1DBTableView1SIT_STATUS_COMPRA: TcxGridDBColumn
            Caption = 'Status da Compra'
            DataBinding.FieldName = 'SIT_STATUS_COMPRA'
            OnGetDataText = cxGrid1DBTableView1SIT_STATUS_COMPRAGetDataText
          end
          object cxGrid1DBTableView1SIT_STATUS_COMPRA_OBS: TcxGridDBColumn
            Caption = 'Obs. do Status da Compra'
            DataBinding.FieldName = 'SIT_STATUS_COMPRA_OBS'
          end
          object cxGrid1DBTableView1SIT_STAT_COMPRA_RESP: TcxGridDBColumn
            Caption = 'Respons'#225'vel pelo Status da Compra'
            DataBinding.FieldName = 'SIT_STAT_COMPRA_RESP'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object gbAutorizaCotacao: TGroupBox
        Left = 1
        Top = 198
        Width = 946
        Height = 76
        Align = alBottom
        Caption = 'Autoriza'#231#227'o'
        TabOrder = 4
        DesignSize = (
          946
          76)
        object Label22: TLabel
          Left = 7
          Top = 24
          Width = 102
          Height = 13
          Hint = 'Data da Autoriza'#231#227'o da Cota'#231#227'o'
          Caption = 'Data da Autoriza'#231#227'o:'
          ParentShowHint = False
          ShowHint = True
        end
        object Label29: TLabel
          Left = 260
          Top = 24
          Width = 65
          Height = 13
          Hint = 'Respons'#225'vel'
          Caption = 'Respons'#225'vel:'
          ParentShowHint = False
          ShowHint = True
        end
        object Label25: TLabel
          Left = 264
          Top = 52
          Width = 62
          Height = 13
          Caption = 'Observa'#231#227'o:'
        end
        object Label21: TLabel
          Left = 21
          Top = 50
          Width = 88
          Height = 13
          Caption = 'Status Solicita'#231#227'o:'
        end
        object dtScoDataAutorizacaoCotacao: TJvDateEdit
          Left = 110
          Top = 21
          Width = 113
          Height = 21
          DateFormat = 'YYYY'
          ShowNullDate = False
          YearDigits = dyFour
          TabOrder = 0
          OnExit = dtScoDataAutorizacaoCotacaoExit
        end
        object edScoStatSolicitResp: TDBEdit
          Left = 327
          Top = 22
          Width = 121
          Height = 21
          DataField = 'SCO_STAT_SOLICIT_RESP'
          DataSource = dsSolicitacaoCompra
          Enabled = False
          TabOrder = 1
        end
        object edScoObservacaoAprovacao: TDBEdit
          Left = 327
          Top = 49
          Width = 328
          Height = 21
          Hint = 'Observa'#231#227'o da Aprova'#231#227'o da Cota'#231#227'o'
          DataField = 'SCO_OBSERVACAO_APROVACAO'
          DataSource = dsSolicitacaoCompra
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object cbScoStatusSolicitacao: TComboBox
          Left = 110
          Top = 48
          Width = 145
          Height = 21
          TabOrder = 2
          OnChange = cbScoStatusSolicitacaoChange
          Items.Strings = (
            'N'#227'o Definido'
            'Aberta'
            'Rejeitada'
            'Autoriza'#231#227'o de Cota'#231#227'o'
            'Cota'#231#227'o Finalizada'
            'Autoriza'#231#227'o de Compra'
            'Conclu'#237'da'
            'Cancelada')
        end
        object btAtualizarAutorizacao: TButton
          Left = 818
          Top = 49
          Width = 125
          Height = 21
          Anchors = [akTop, akRight]
          Caption = 'Gravar &Autoriza'#231#227'o'
          TabOrder = 4
          OnClick = btGravarSolicitacaoClick
        end
      end
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 456
    Top = 544
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 488
    Top = 544
  end
  inherited qAux: TFDQuery
    SQL.Strings = (
      'SELECT * FROM setor')
    Left = 595
    Top = 549
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 288
    Top = 552
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 320
    Top = 552
  end
  inherited FDTransac: TFDTransaction
    Left = 528
    Top = 544
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 256
    Top = 552
  end
  inherited qAux2: TFDQuery
    SQL.Strings = (
      'SELECT * FROM SETOR')
    Left = 627
    Top = 548
  end
  inherited qAux3: TFDQuery
    Left = 659
    Top = 548
  end
  inherited qAux4: TFDQuery
    Left = 691
    Top = 548
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\exemplo\exemplo.fdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    Left = 563
    Top = 549
  end
  inherited FDStoredProc1: TFDStoredProc
    Left = 224
    Top = 552
  end
  inherited JvValidators1: TJvValidators
    Left = 353
    Top = 554
  end
  inherited JvErrorIndicator1: TJvErrorIndicator
    Left = 441
    Top = 626
  end
  inherited JvValidationSummary1: TJvValidationSummary
    Left = 360
    Top = 600
  end
  object tbSolicitacaoCompra: TFDTable
    CachedUpdates = True
    IndexFieldNames = 'SCO_CODIGO'
    Connection = DBInicio.FDACConn
    UpdateOptions.UpdateTableName = 'SOLICITACAO_COMPRA'
    TableName = 'SOLICITACAO_COMPRA'
    Left = 64
    Top = 560
    object tbSolicitacaoCompraSCO_CODIGO: TIntegerField
      FieldName = 'SCO_CODIGO'
      Origin = 'SCO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbSolicitacaoCompraSET_CODIGO: TIntegerField
      FieldName = 'SET_CODIGO'
      Origin = 'SET_CODIGO'
    end
    object tbSolicitacaoCompraSCO_OBSERVACAO: TStringField
      FieldName = 'SCO_OBSERVACAO'
      Origin = 'SCO_OBSERVACAO'
      Size = 70
    end
    object tbSolicitacaoCompraSCO_DATA_SOLICITACAO: TDateField
      FieldName = 'SCO_DATA_SOLICITACAO'
      Origin = 'SCO_DATA_SOLICITACAO'
    end
    object tbSolicitacaoCompraSCO_SOLICITANTE: TStringField
      FieldName = 'SCO_SOLICITANTE'
      Origin = 'SCO_SOLICITANTE'
      Size = 30
    end
    object tbSolicitacaoCompraPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object tbSolicitacaoCompraSCO_DESCRICAO_PRODUTO: TStringField
      FieldName = 'SCO_DESCRICAO_PRODUTO'
      Origin = 'SCO_DESCRICAO_PRODUTO'
      Size = 100
    end
    object tbSolicitacaoCompraUND_SIGLA: TStringField
      FieldName = 'UND_SIGLA'
      Origin = 'UND_SIGLA'
      Size = 3
    end
    object tbSolicitacaoCompraSCO_QTDE_MIN: TFMTBCDField
      FieldName = 'SCO_QTDE_MIN'
      Origin = 'SCO_QTDE_MIN'
      Precision = 18
      Size = 5
    end
    object tbSolicitacaoCompraSCO_QTDE_MAX: TFMTBCDField
      FieldName = 'SCO_QTDE_MAX'
      Origin = 'SCO_QTDE_MAX'
      Precision = 18
      Size = 5
    end
    object tbSolicitacaoCompraSCO_STATUS_SOLICITACAO: TIntegerField
      FieldName = 'SCO_STATUS_SOLICITACAO'
      Origin = 'SCO_STATUS_SOLICITACAO'
    end
    object tbSolicitacaoCompraSCO_STAT_SOLICIT_RESP: TStringField
      FieldName = 'SCO_STAT_SOLICIT_RESP'
      Origin = 'SCO_STAT_SOLICIT_RESP'
      Size = 40
    end
    object tbSolicitacaoCompraSCO_DATA_ENTREGA: TDateField
      FieldName = 'SCO_DATA_ENTREGA'
      Origin = 'SCO_DATA_ENTREGA'
    end
    object tbSolicitacaoCompraSCO_DATA_AUTORIZACAO_COTACAO: TDateField
      FieldName = 'SCO_DATA_AUTORIZACAO_COTACAO'
      Origin = 'SCO_DATA_AUTORIZACAO_COTACAO'
    end
    object tbSolicitacaoCompraSCO_OBSERVACAO_APROVACAO: TStringField
      FieldName = 'SCO_OBSERVACAO_APROVACAO'
      Origin = 'SCO_OBSERVACAO_APROVACAO'
      Size = 100
    end
    object tbSolicitacaoCompraSCO_NRO_PEDIDO_VENDA: TStringField
      FieldName = 'SCO_NRO_PEDIDO_VENDA'
      Origin = 'SCO_NRO_PEDIDO_VENDA'
      Size = 30
    end
  end
  object dsSolicitacaoCompra: TDataSource
    DataSet = tbSolicitacaoCompra
    Left = 64
    Top = 608
  end
  object tbSolicitacaoItem: TFDTable
    AfterScroll = tbSolicitacaoItemAfterScroll
    Filtered = True
    CachedUpdates = True
    IndexFieldNames = 'SIT_CODIGO'
    Connection = DBInicio.FDACConn
    UpdateOptions.UpdateTableName = 'SOLICITACAO_ITEM'
    TableName = 'SOLICITACAO_ITEM'
    Left = 168
    Top = 560
    object tbSolicitacaoItemSIT_CODIGO: TIntegerField
      FieldName = 'SIT_CODIGO'
      Origin = 'SIT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbSolicitacaoItemSCO_CODIGO: TIntegerField
      FieldName = 'SCO_CODIGO'
      Origin = 'SCO_CODIGO'
    end
    object tbSolicitacaoItemFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Origin = 'FOR_CODIGO'
      Size = 4
    end
    object tbSolicitacaoItemFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Origin = 'FOR_RAZAO'
      Size = 70
    end
    object tbSolicitacaoItemFOR_FONE: TStringField
      FieldName = 'FOR_FONE'
      Origin = 'FOR_FONE'
      Size = 11
    end
    object tbSolicitacaoItemFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      Origin = 'FOR_EMAIL'
      Size = 70
    end
    object tbSolicitacaoItemSIT_COTACAO_APROVADA: TStringField
      FieldName = 'SIT_COTACAO_APROVADA'
      Origin = 'SIT_COTACAO_APROVADA'
      FixedChar = True
      Size = 1
    end
    object tbSolicitacaoItemSIT_PEDIDO_COMPRA: TStringField
      FieldName = 'SIT_PEDIDO_COMPRA'
      Origin = 'SIT_PEDIDO_COMPRA'
      FixedChar = True
      Size = 1
    end
    object tbSolicitacaoItemSIT_DATA_COTACAO: TDateField
      FieldName = 'SIT_DATA_COTACAO'
      Origin = 'SIT_DATA_COTACAO'
    end
    object tbSolicitacaoItemSIT_PRECO_COTACAO: TFMTBCDField
      FieldName = 'SIT_PRECO_COTACAO'
      Origin = 'SIT_PRECO_COTACAO'
      DisplayFormat = '###,###,###.00'
      Precision = 18
      Size = 5
    end
    object tbSolicitacaoItemSIT_TIPO_FRETE: TStringField
      FieldName = 'SIT_TIPO_FRETE'
      Origin = 'SIT_TIPO_FRETE'
      Size = 3
    end
    object tbSolicitacaoItemSIT_DATA_FINALIZACAO_COTACAO: TDateField
      FieldName = 'SIT_DATA_FINALIZACAO_COTACAO'
      Origin = 'SIT_DATA_FINALIZACAO_COTACAO'
    end
    object tbSolicitacaoItemSIT_DATA_AUTORIZACAO_COMPRA: TDateField
      FieldName = 'SIT_DATA_AUTORIZACAO_COMPRA'
      Origin = 'SIT_DATA_AUTORIZACAO_COMPRA'
    end
    object tbSolicitacaoItemSIT_CONCLUIDA: TStringField
      FieldName = 'SIT_CONCLUIDA'
      Origin = 'SIT_CONCLUIDA'
      Size = 100
    end
    object tbSolicitacaoItemSIT_STATUS_COMPRA: TIntegerField
      FieldName = 'SIT_STATUS_COMPRA'
      Origin = 'SIT_STATUS_COMPRA'
    end
    object tbSolicitacaoItemSIT_STATUS_COMPRA_OBS: TStringField
      FieldName = 'SIT_STATUS_COMPRA_OBS'
      Origin = 'SIT_STATUS_COMPRA_OBS'
      Size = 100
    end
    object tbSolicitacaoItemSIT_STAT_COMPRA_RESP: TStringField
      FieldName = 'SIT_STAT_COMPRA_RESP'
      Origin = 'SIT_STAT_COMPRA_RESP'
      Size = 40
    end
    object tbSolicitacaoItemSIT_PRAZO_ENTREGA: TDateField
      FieldName = 'SIT_PRAZO_ENTREGA'
      Origin = 'SIT_PRAZO_ENTREGA'
    end
    object tbSolicitacaoItemSIT_PRAZO_PAGAMENTO: TStringField
      FieldName = 'SIT_PRAZO_PAGAMENTO'
      Origin = 'SIT_PRAZO_PAGAMENTO'
      Size = 30
    end
    object tbSolicitacaoItemSIT_NRO_PEDIDO_COMPRA: TStringField
      FieldName = 'SIT_NRO_PEDIDO_COMPRA'
      Origin = 'SIT_NRO_PEDIDO_COMPRA'
      Size = 30
    end
    object tbSolicitacaoItemFOR_CGC: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'FOR_CGC'
      Origin = 'FOR_CGC'
      Size = 70
    end
  end
  object dsSolicitacaoItem: TDataSource
    DataSet = tbSolicitacaoItem
    Left = 168
    Top = 608
  end
  object tbUndMedida: TFDTable
    CachedUpdates = True
    IndexFieldNames = 'UND_SIGLA'
    Connection = DBInicio.FDACConn
    UpdateOptions.UpdateTableName = 'UND_MEDIDA'
    TableName = 'UND_MEDIDA'
    Left = 240
    Top = 600
  end
  object dsUndMedida: TDataSource
    DataSet = tbUndMedida
    Left = 288
    Top = 600
  end
  object PopupMenu1: TPopupMenu
    Left = 562
    Top = 185
  end
end
