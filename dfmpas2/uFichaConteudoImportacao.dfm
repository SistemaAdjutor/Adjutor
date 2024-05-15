inherited frmFichaConteudoImportacao: TfrmFichaConteudoImportacao
  Caption = 'Ficha de Conte'#250'do de Importa'#231#227'o'
  ClientHeight = 621
  ClientWidth = 1461
  OnKeyUp = FormKeyUp
  ExplicitWidth = 1477
  ExplicitHeight = 660
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc1: TPageControl
    Width = 1461
    Height = 544
    ExplicitWidth = 1461
    ExplicitHeight = 544
    inherited tsNotas: TTabSheet
      ExplicitWidth = 1453
      ExplicitHeight = 516
      inherited pnlControle: TPanel
        Width = 1453
        ExplicitWidth = 1453
        inherited pnlFiltro: TPanel
          Width = 1453
          ExplicitWidth = 1453
          inherited pnlpn1: TPanel
            Width = 1453
            ExplicitWidth = 1453
            DesignSize = (
              1453
              79)
            inherited btnPesquisa: TSpeedButton
              Left = 1360
              ExplicitLeft = 1023
            end
            inherited btnLimpar: TSpeedButton
              Left = 1360
              ExplicitLeft = 1023
            end
            object Label1: TLabel
              Left = 32
              Top = 24
              Width = 52
              Height = 13
              Caption = 'Refer'#234'ncia'
            end
            object Label2: TLabel
              Left = 230
              Top = 24
              Width = 46
              Height = 13
              Caption = 'Descri'#231#227'o'
            end
            object edReferencia: TEdit
              Left = 90
              Top = 21
              Width = 97
              Height = 21
              TabOrder = 0
              OnKeyPress = edReferenciaKeyPress
            end
            object edDescricao: TEdit
              Left = 282
              Top = 21
              Width = 207
              Height = 21
              TabOrder = 1
              OnKeyPress = edDescricaoKeyPress
            end
          end
        end
      end
      inherited cxgrd1: TcxGrid
        Width = 1453
        Height = 437
        ExplicitWidth = 1453
        ExplicitHeight = 437
        inherited cxgrd1DBTableView1: TcxGridDBTableView
          OptionsView.ShowEditButtons = gsebAlways
          OptionsView.GroupByBox = False
          object cxgrd1DBTableView1PRD_REFER: TcxGridDBColumn
            Caption = 'Refer'#234'ncia'
            DataBinding.FieldName = 'PRD_REFER'
            Options.Editing = False
            Width = 103
          end
          object cxgrd1DBTableView1PRD_DESCRI: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PRD_DESCRI'
            Options.Editing = False
            Width = 298
          end
          object cxgrd1DBTableView1PTI_SIGLA: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'PTI_SIGLA'
            Options.Editing = False
          end
          object cxgrd1DBTableView1NCM: TcxGridDBColumn
            DataBinding.FieldName = 'NCM'
            Options.Editing = False
          end
          object cxgrd1DBTableView1GTIN: TcxGridDBColumn
            DataBinding.FieldName = 'GTIN'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView1PRD_UND: TcxGridDBColumn
            Caption = 'Unidade'
            DataBinding.FieldName = 'PRD_UND'
            Options.Editing = False
            Width = 54
          end
          object cxgrd1DBTableView1PRD_ORIGEM: TcxGridDBColumn
            Caption = 'Origem da Mercadoria'
            DataBinding.FieldName = 'PRD_ORIGEM'
            Options.Editing = False
            Width = 124
          end
          object cxgrd1DBTableView1PRD_FCI_VALOR_PARCELA_IMPORTADA: TcxGridDBColumn
            Caption = 'Parcela Importada'
            DataBinding.FieldName = 'PRD_FCI_VALOR_PARCELA_IMPORTADA'
            Options.Editing = False
            Width = 166
          end
          object cxgrd1DBTableView1VALOR_TOTAL: TcxGridDBColumn
            Caption = 'Venda Total'
            DataBinding.FieldName = 'VALOR_TOTAL'
            Options.Editing = False
            Width = 86
          end
          object cxgrd1DBTableView1CONTEUDO_IMPORTACAO: TcxGridDBColumn
            Caption = 'CI %'
            DataBinding.FieldName = 'CI'
            Options.Editing = False
            Width = 56
          end
          object cxgrd1DBTableView1Botao: TcxGridDBColumn
            Caption = 'Gerar FCI'
            RepositoryItem = Botao
          end
          object cxgrd1DBTableView1FTC_BASEFORMULA: TcxGridDBColumn
            DataBinding.FieldName = 'FTC_BASEFORMULA'
            Visible = False
          end
        end
        object cxgrd1DBTableView2: TcxGridDBTableView [1]
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
          DataController.DataSource = dsBuscaDetalhes
          DataController.DetailKeyFieldNames = 'PRD_REFER'
          DataController.KeyFieldNames = 'PRD_REFER'
          DataController.MasterKeyFieldNames = 'PRD_REFER'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnDetailExpanded = cxgrd1DBTableView2DataControllerDetailExpanded
          OptionsView.GroupByBox = False
          Styles.OnGetContentStyle = cxgrd1DBTableView2StylesGetContentStyle
          object cxgrd1DBTableView2PRD_REFER: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_REFER'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
          end
          object cxgrd1DBTableView2PRD_REFER_ITENS: TcxGridDBColumn
            Caption = 'Refer'#234'ncia'
            DataBinding.FieldName = 'PRD_REFER_ITENS'
            Options.Editing = False
          end
          object cxgrd1DBTableView2PRD_DESCRI: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PRD_DESCRI'
            Options.Editing = False
            Width = 202
          end
          object cxgrd1DBTableView2PTI_SIGLA: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'PTI_SIGLA'
            Options.Editing = False
          end
          object cxgrd1DBTableView2FTI_UC: TcxGridDBColumn
            Caption = 'Consumo Unit'#225'rio'
            DataBinding.FieldName = 'FTI_UC'
            Options.Editing = False
            Width = 53
          end
          object cxgrd1DBTableView2CONSUMO_TOTAL: TcxGridDBColumn
            DataBinding.FieldName = 'CONSUMO_TOTAL'
          end
          object cxgrd1DBTableView2PRD_UND: TcxGridDBColumn
            Caption = 'Unidade'
            DataBinding.FieldName = 'PRD_UND'
            Options.Editing = False
            Width = 25
          end
          object cxgrd1DBTableView2PARCELA_IMPORTADA: TcxGridDBColumn
            Caption = 'Parcela Importada'
            DataBinding.FieldName = 'PARCELA_IMPORTADA'
            Options.Editing = False
            Width = 114
          end
          object cxgrd1DBTableView2PRECO_COMPRA_MEDIO: TcxGridDBColumn
            Caption = 'Custo M'#233'dio'
            DataBinding.FieldName = 'PRECO_COMPRA_MEDIO'
            Visible = False
            Options.Editing = False
            Width = 134
          end
          object cxgrd1DBTableView2PRECO_VENDA: TcxGridDBColumn
            DataBinding.FieldName = 'PRECO_VENDA'
            Visible = False
          end
          object cxgrd1DBTableView2PERCENTUAL_ORIGEM: TcxGridDBColumn
            DataBinding.FieldName = 'PERCENTUAL_ORIGEM'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Width = 127
          end
          object cxgrd1DBTableView2QUANTIDADE_COMPRADA: TcxGridDBColumn
            DataBinding.FieldName = 'QUANTIDADE_COMPRADA'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Width = 136
          end
          object cxgrd1DBTableView2VALOR_COMPRA: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_COMPRA'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Width = 93
          end
          object cxgrd1DBTableView2VALOR_UNITARIO: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_UNITARIO'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
            Width = 97
          end
          object cxgrd1DBTableView2VALOR_TOTAL_ITEM: TcxGridDBColumn
            Caption = 'Custo Total'
            DataBinding.FieldName = 'VALOR_TOTAL_ITEM'
            Visible = False
            Options.Editing = False
            Width = 110
          end
        end
        object cxgrd1DBTableView3: TcxGridDBTableView [2]
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
          DataController.DataSource = dsNivel3
          DataController.DetailKeyFieldNames = 'PRD_REFER'
          DataController.KeyFieldNames = 'PRD_REFER'
          DataController.MasterKeyFieldNames = 'PRD_REFER_ITENS'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnDetailExpanded = cxgrd1DBTableView3DataControllerDetailExpanded
          OptionsView.GroupByBox = False
          Styles.OnGetContentStyle = cxgrd1DBTableView2StylesGetContentStyle
          object cxgrd1DBTableView3PRD_REFER: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_REFER'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView3PRD_REFER_ITENS: TcxGridDBColumn
            Caption = 'Refer'#234'ncia'
            DataBinding.FieldName = 'PRD_REFER_ITENS'
            Options.Editing = False
          end
          object cxgrd1DBTableView3PRD_DESCRI: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PRD_DESCRI'
            Options.Editing = False
          end
          object cxgrd1DBTableView3PTI_SIGLA: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'PTI_SIGLA'
            Options.Editing = False
          end
          object cxgrd1DBTableView3FTI_UC: TcxGridDBColumn
            Caption = 'Consumo Unit'#225'rio'
            DataBinding.FieldName = 'FTI_UC'
            Options.Editing = False
          end
          object cxgrd1DBTableView3CONSUMO_TOTAL: TcxGridDBColumn
            DataBinding.FieldName = 'CONSUMO_TOTAL'
          end
          object cxgrd1DBTableView3PRD_UND: TcxGridDBColumn
            Caption = 'Unidade'
            DataBinding.FieldName = 'PRD_UND'
            Options.Editing = False
          end
          object cxgrd1DBTableView3PARCELA_IMPORTADA: TcxGridDBColumn
            Caption = 'Parcela Importada'
            DataBinding.FieldName = 'PARCELA_IMPORTADA'
            Options.Editing = False
          end
          object cxgrd1DBTableView3PRECO_COMPRA_MEDIO: TcxGridDBColumn
            DataBinding.FieldName = 'PRECO_COMPRA_MEDIO'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView3PRECO_VENDA: TcxGridDBColumn
            DataBinding.FieldName = 'PRECO_VENDA'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView3PERCENTUAL_ORIGEM: TcxGridDBColumn
            DataBinding.FieldName = 'PERCENTUAL_ORIGEM'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView3QUANTIDADE_COMPRADA: TcxGridDBColumn
            DataBinding.FieldName = 'QUANTIDADE_COMPRADA'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView3VALOR_COMPRA: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_COMPRA'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView3VALOR_UNITARIO: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_UNITARIO'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView3VALOR_TOTAL_ITEM: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_TOTAL_ITEM'
            Visible = False
            Options.Editing = False
          end
        end
        object cxgrd1DBTableView4: TcxGridDBTableView [3]
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
          DataController.DataSource = dsNivel4
          DataController.DetailKeyFieldNames = 'PRD_REFER'
          DataController.KeyFieldNames = 'PRD_REFER'
          DataController.MasterKeyFieldNames = 'PRD_REFER_ITENS'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnDetailExpanded = cxgrd1DBTableView4DataControllerDetailExpanded
          OptionsView.GroupByBox = False
          Styles.OnGetContentStyle = cxgrd1DBTableView2StylesGetContentStyle
          object cxgrd1DBTableView4PRD_REFER: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_REFER'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView4PRD_REFER_ITENS: TcxGridDBColumn
            Caption = 'Refer'#234'ncia'
            DataBinding.FieldName = 'PRD_REFER_ITENS'
            Options.Editing = False
          end
          object cxgrd1DBTableView4PRD_DESCRI: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PRD_DESCRI'
            Options.Editing = False
          end
          object cxgrd1DBTableView4PTI_SIGLA: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'PTI_SIGLA'
            Options.Editing = False
          end
          object cxgrd1DBTableView4FTI_UC: TcxGridDBColumn
            Caption = 'Consumo Unit'#225'rio'
            DataBinding.FieldName = 'FTI_UC'
            Options.Editing = False
          end
          object cxgrd1DBTableView4CONSUMO_TOTAL: TcxGridDBColumn
            DataBinding.FieldName = 'CONSUMO_TOTAL'
          end
          object cxgrd1DBTableView4PRD_UND: TcxGridDBColumn
            Caption = 'Unidade'
            DataBinding.FieldName = 'PRD_UND'
            Options.Editing = False
          end
          object cxgrd1DBTableView4PARCELA_IMPORTADA: TcxGridDBColumn
            Caption = 'Parcela Importada'
            DataBinding.FieldName = 'PARCELA_IMPORTADA'
            Options.Editing = False
          end
          object cxgrd1DBTableView4PRECO_COMPRA_MEDIO: TcxGridDBColumn
            DataBinding.FieldName = 'PRECO_COMPRA_MEDIO'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView4PRECO_VENDA: TcxGridDBColumn
            DataBinding.FieldName = 'PRECO_VENDA'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView4PERCENTUAL_ORIGEM: TcxGridDBColumn
            DataBinding.FieldName = 'PERCENTUAL_ORIGEM'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView4QUANTIDADE_COMPRADA: TcxGridDBColumn
            DataBinding.FieldName = 'QUANTIDADE_COMPRADA'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView4VALOR_COMPRA: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_COMPRA'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView4VALOR_UNITARIO: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_UNITARIO'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView4VALOR_TOTAL_ITEM: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_TOTAL_ITEM'
            Visible = False
            Options.Editing = False
          end
        end
        object cxgrd1DBTableView5: TcxGridDBTableView [4]
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
          DataController.DataSource = dsNivel5
          DataController.DetailKeyFieldNames = 'PRD_REFER'
          DataController.KeyFieldNames = 'PRD_REFER'
          DataController.MasterKeyFieldNames = 'PRD_REFER_ITENS'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnDetailExpanded = cxgrd1DBTableView5DataControllerDetailExpanded
          OptionsView.GroupByBox = False
          Styles.OnGetContentStyle = cxgrd1DBTableView2StylesGetContentStyle
          object cxgrd1DBTableView5PRD_REFER: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_REFER'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView5PRD_REFER_ITENS: TcxGridDBColumn
            Caption = 'Refer'#234'ncia'
            DataBinding.FieldName = 'PRD_REFER_ITENS'
            Options.Editing = False
          end
          object cxgrd1DBTableView5PRD_DESCRI: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PRD_DESCRI'
            Options.Editing = False
          end
          object cxgrd1DBTableView5PTI_SIGLA: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'PTI_SIGLA'
            Options.Editing = False
          end
          object cxgrd1DBTableView5FTI_UC: TcxGridDBColumn
            Caption = 'Consumo Unit'#225'rio'
            DataBinding.FieldName = 'FTI_UC'
            Options.Editing = False
          end
          object cxgrd1DBTableView5CONSUMO_TOTAL: TcxGridDBColumn
            DataBinding.FieldName = 'CONSUMO_TOTAL'
          end
          object cxgrd1DBTableView5PRD_UND: TcxGridDBColumn
            Caption = 'Unidade'
            DataBinding.FieldName = 'PRD_UND'
            Options.Editing = False
          end
          object cxgrd1DBTableView5PARCELA_IMPORTADA: TcxGridDBColumn
            Caption = 'Parcela Importada'
            DataBinding.FieldName = 'PARCELA_IMPORTADA'
            Options.Editing = False
          end
          object cxgrd1DBTableView5PRECO_COMPRA_MEDIO: TcxGridDBColumn
            DataBinding.FieldName = 'PRECO_COMPRA_MEDIO'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView5PRECO_VENDA: TcxGridDBColumn
            DataBinding.FieldName = 'PRECO_VENDA'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView5PERCENTUAL_ORIGEM: TcxGridDBColumn
            DataBinding.FieldName = 'PERCENTUAL_ORIGEM'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView5QUANTIDADE_COMPRADA: TcxGridDBColumn
            DataBinding.FieldName = 'QUANTIDADE_COMPRADA'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView5VALOR_COMPRA: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_COMPRA'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView5VALOR_UNITARIO: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_UNITARIO'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView5VALOR_TOTAL_ITEM: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_TOTAL_ITEM'
            Visible = False
            Options.Editing = False
          end
        end
        object cxgrd1DBTableView6: TcxGridDBTableView [5]
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
          DataController.DataSource = dsNivel6
          DataController.DetailKeyFieldNames = 'PRD_REFER'
          DataController.KeyFieldNames = 'PRD_REFER'
          DataController.MasterKeyFieldNames = 'PRD_REFER_ITENS'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnDetailExpanded = cxgrd1DBTableView6DataControllerDetailExpanded
          OptionsView.GroupByBox = False
          Styles.OnGetContentStyle = cxgrd1DBTableView2StylesGetContentStyle
          object cxgrd1DBTableView6PRD_REFER: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_REFER'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView6PRD_REFER_ITENS: TcxGridDBColumn
            Caption = 'Refer'#234'ncia'
            DataBinding.FieldName = 'PRD_REFER_ITENS'
            Options.Editing = False
          end
          object cxgrd1DBTableView6PRD_DESCRI: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PRD_DESCRI'
            Options.Editing = False
          end
          object cxgrd1DBTableView6PTI_SIGLA: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'PTI_SIGLA'
            Options.Editing = False
          end
          object cxgrd1DBTableView6FTI_UC: TcxGridDBColumn
            Caption = 'Consumo Unit'#225'rio'
            DataBinding.FieldName = 'FTI_UC'
            Options.Editing = False
          end
          object cxgrd1DBTableView6CONSUMO_TOTAL: TcxGridDBColumn
            DataBinding.FieldName = 'CONSUMO_TOTAL'
          end
          object cxgrd1DBTableView6PRD_UND: TcxGridDBColumn
            Caption = 'Unidade'
            DataBinding.FieldName = 'PRD_UND'
            Options.Editing = False
          end
          object cxgrd1DBTableView6PARCELA_IMPORTADA: TcxGridDBColumn
            Caption = 'Parcela Importada'
            DataBinding.FieldName = 'PARCELA_IMPORTADA'
            Options.Editing = False
          end
          object cxgrd1DBTableView6PRECO_COMPRA_MEDIO: TcxGridDBColumn
            DataBinding.FieldName = 'PRECO_COMPRA_MEDIO'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView6PRECO_VENDA: TcxGridDBColumn
            DataBinding.FieldName = 'PRECO_VENDA'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView6PERCENTUAL_ORIGEM: TcxGridDBColumn
            DataBinding.FieldName = 'PERCENTUAL_ORIGEM'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView6QUANTIDADE_COMPRADA: TcxGridDBColumn
            DataBinding.FieldName = 'QUANTIDADE_COMPRADA'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView6VALOR_COMPRA: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_COMPRA'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView6VALOR_UNITARIO: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_UNITARIO'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView6VALOR_TOTAL_ITEM: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_TOTAL_ITEM'
            Visible = False
            Options.Editing = False
          end
        end
        object cxgrd1DBTableView7: TcxGridDBTableView [6]
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
          DataController.DataSource = dsNivel7
          DataController.DetailKeyFieldNames = 'PRD_REFER'
          DataController.KeyFieldNames = 'PRD_REFER'
          DataController.MasterKeyFieldNames = 'PRD_REFER_ITENS'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnDetailExpanded = cxgrd1DBTableView7DataControllerDetailExpanded
          OptionsView.GroupByBox = False
          Styles.OnGetContentStyle = cxgrd1DBTableView2StylesGetContentStyle
          object cxgrd1DBTableView7PRD_REFER: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_REFER'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView7PRD_REFER_ITENS: TcxGridDBColumn
            Caption = 'Refer'#234'ncia'
            DataBinding.FieldName = 'PRD_REFER_ITENS'
            Options.Editing = False
          end
          object cxgrd1DBTableView7PRD_DESCRI: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PRD_DESCRI'
            Options.Editing = False
          end
          object cxgrd1DBTableView7PTI_SIGLA: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'PTI_SIGLA'
            Options.Editing = False
          end
          object cxgrd1DBTableView7FTI_UC: TcxGridDBColumn
            Caption = 'Consumo Unit'#225'rio'
            DataBinding.FieldName = 'FTI_UC'
            Options.Editing = False
          end
          object cxgrd1DBTableView7CONSUMO_TOTAL: TcxGridDBColumn
            DataBinding.FieldName = 'CONSUMO_TOTAL'
          end
          object cxgrd1DBTableView7PRD_UND: TcxGridDBColumn
            Caption = 'Unidade'
            DataBinding.FieldName = 'PRD_UND'
            Options.Editing = False
          end
          object cxgrd1DBTableView7PARCELA_IMPORTADA: TcxGridDBColumn
            Caption = 'Parcela Importada'
            DataBinding.FieldName = 'PARCELA_IMPORTADA'
            Options.Editing = False
          end
          object cxgrd1DBTableView7PRECO_COMPRA_MEDIO: TcxGridDBColumn
            DataBinding.FieldName = 'PRECO_COMPRA_MEDIO'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView7PRECO_VENDA: TcxGridDBColumn
            DataBinding.FieldName = 'PRECO_VENDA'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView7PERCENTUAL_ORIGEM: TcxGridDBColumn
            DataBinding.FieldName = 'PERCENTUAL_ORIGEM'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView7QUANTIDADE_COMPRADA: TcxGridDBColumn
            DataBinding.FieldName = 'QUANTIDADE_COMPRADA'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView7VALOR_COMPRA: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_COMPRA'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView7VALOR_UNITARIO: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_UNITARIO'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView7VALOR_TOTAL_ITEM: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_TOTAL_ITEM'
            Visible = False
            Options.Editing = False
          end
        end
        object cxgrd1DBTableView8: TcxGridDBTableView [7]
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
          DataController.DataSource = dsNivel8
          DataController.DetailKeyFieldNames = 'PRD_REFER'
          DataController.KeyFieldNames = 'PRD_REFER'
          DataController.MasterKeyFieldNames = 'PRD_REFER_ITENS'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnDetailExpanded = cxgrd1DBTableView8DataControllerDetailExpanded
          OptionsView.GroupByBox = False
          Styles.OnGetContentStyle = cxgrd1DBTableView2StylesGetContentStyle
          object cxgrd1DBTableView8PRD_REFER: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_REFER'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView8PRD_REFER_ITENS: TcxGridDBColumn
            Caption = 'Refer'#234'ncia'
            DataBinding.FieldName = 'PRD_REFER_ITENS'
            Options.Editing = False
          end
          object cxgrd1DBTableView8PRD_DESCRI: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PRD_DESCRI'
            Options.Editing = False
          end
          object cxgrd1DBTableView8PTI_SIGLA: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'PTI_SIGLA'
            Options.Editing = False
          end
          object cxgrd1DBTableView8FTI_UC: TcxGridDBColumn
            Caption = 'Consumo Unit'#225'rio'
            DataBinding.FieldName = 'FTI_UC'
            Options.Editing = False
          end
          object cxgrd1DBTableView8CONSUMO_TOTAL: TcxGridDBColumn
            DataBinding.FieldName = 'CONSUMO_TOTAL'
          end
          object cxgrd1DBTableView8PRD_UND: TcxGridDBColumn
            Caption = 'Unidade'
            DataBinding.FieldName = 'PRD_UND'
            Options.Editing = False
          end
          object cxgrd1DBTableView8PARCELA_IMPORTADA: TcxGridDBColumn
            Caption = 'Parcela Importada'
            DataBinding.FieldName = 'PARCELA_IMPORTADA'
            Options.Editing = False
          end
          object cxgrd1DBTableView8PRECO_COMPRA_MEDIO: TcxGridDBColumn
            DataBinding.FieldName = 'PRECO_COMPRA_MEDIO'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView8PRECO_VENDA: TcxGridDBColumn
            DataBinding.FieldName = 'PRECO_VENDA'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView8PERCENTUAL_ORIGEM: TcxGridDBColumn
            DataBinding.FieldName = 'PERCENTUAL_ORIGEM'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView8QUANTIDADE_COMPRADA: TcxGridDBColumn
            DataBinding.FieldName = 'QUANTIDADE_COMPRADA'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView8VALOR_COMPRA: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_COMPRA'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView8VALOR_UNITARIO: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_UNITARIO'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView8VALOR_TOTAL_ITEM: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_TOTAL_ITEM'
            Visible = False
            Options.Editing = False
          end
        end
        object cxgrd1DBTableView9: TcxGridDBTableView [8]
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
          DataController.DataSource = dsNivel9
          DataController.DetailKeyFieldNames = 'PRD_REFER'
          DataController.KeyFieldNames = 'PRD_REFER'
          DataController.MasterKeyFieldNames = 'PRD_REFER_ITENS'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          Styles.OnGetContentStyle = cxgrd1DBTableView2StylesGetContentStyle
          object cxgrd1DBTableView9PRD_REFER: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_REFER'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView9PRD_REFER_ITENS: TcxGridDBColumn
            Caption = 'Refer'#234'ncia'
            DataBinding.FieldName = 'PRD_REFER_ITENS'
            Options.Editing = False
          end
          object cxgrd1DBTableView9PRD_DESCRI: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'PRD_DESCRI'
            Options.Editing = False
          end
          object cxgrd1DBTableView9PTI_SIGLA: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'PTI_SIGLA'
            Options.Editing = False
          end
          object cxgrd1DBTableView9FTI_UC: TcxGridDBColumn
            Caption = ' '
            DataBinding.FieldName = 'FTI_UC'
            Options.Editing = False
          end
          object cxgrd1DBTableView9CONSUMO_TOTAL: TcxGridDBColumn
            DataBinding.FieldName = 'CONSUMO_TOTAL'
          end
          object cxgrd1DBTableView9PRD_UND: TcxGridDBColumn
            Caption = 'Unidade'
            DataBinding.FieldName = 'PRD_UND'
            Options.Editing = False
          end
          object cxgrd1DBTableView9PARCELA_IMPORTADA: TcxGridDBColumn
            Caption = 'Parcela Importada'
            DataBinding.FieldName = 'PARCELA_IMPORTADA'
            Options.Editing = False
          end
          object cxgrd1DBTableView9PRECO_COMPRA_MEDIO: TcxGridDBColumn
            DataBinding.FieldName = 'PRECO_COMPRA_MEDIO'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView9PRECO_VENDA: TcxGridDBColumn
            DataBinding.FieldName = 'PRECO_VENDA'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView9PERCENTUAL_ORIGEM: TcxGridDBColumn
            DataBinding.FieldName = 'PERCENTUAL_ORIGEM'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView9QUANTIDADE_COMPRADA: TcxGridDBColumn
            DataBinding.FieldName = 'QUANTIDADE_COMPRADA'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView9VALOR_COMPRA: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_COMPRA'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView9VALOR_UNITARIO: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_UNITARIO'
            Visible = False
            Options.Editing = False
          end
          object cxgrd1DBTableView9VALOR_TOTAL_ITEM: TcxGridDBColumn
            DataBinding.FieldName = 'VALOR_TOTAL_ITEM'
            Visible = False
            Options.Editing = False
          end
        end
        inherited cxgrdlvlGrid1Level1: TcxGridLevel
          object cxgrd1Level1: TcxGridLevel
            GridView = cxgrd1DBTableView2
            object cxgrd1Level2: TcxGridLevel
              GridView = cxgrd1DBTableView3
              object cxgrd1Level3: TcxGridLevel
                GridView = cxgrd1DBTableView4
                object cxgrd1Level4: TcxGridLevel
                  GridView = cxgrd1DBTableView5
                  object cxgrd1Level5: TcxGridLevel
                    GridView = cxgrd1DBTableView6
                    object cxgrd1Level6: TcxGridLevel
                      GridView = cxgrd1DBTableView7
                      object cxgrd1Level7: TcxGridLevel
                        GridView = cxgrd1DBTableView8
                        object cxgrd1Level8: TcxGridLevel
                          GridView = cxgrd1DBTableView9
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  inherited pnl1: TPanel
    Top = 585
    Width = 1461
    ExplicitTop = 585
    ExplicitWidth = 1461
    DesignSize = (
      1461
      36)
    inherited btnSelect: TSpeedButton
      Left = 1313
      ExplicitLeft = 976
    end
  end
  inherited pnlUtilTop: TPanel
    Width = 1461
    ExplicitWidth = 1461
    DesignSize = (
      1461
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
      Left = 1397
      ExplicitLeft = 1060
    end
    inherited btnMP_Expotar: TJvArrowButton
      Left = 1264
      Width = 129
      DropDown = nil
      Caption = '&Gerar Arquivo'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000B1B3B3000003
        000911000B13060E16040C14040C14040C14040C14040C14040C14040C14040C
        14040C14040C14040C14040C14040C14060F170A0C1405010A0C0C1310100FBE
        BEBE03081199BAF999B7F37497CF3D77AF528AC25189C05189C05189C05189C0
        5189C05189C05189C05189C05189C05189C05189C04F87BF5F98D0749DD53B56
        8F2825530A0A051414142B2A359089AB0F0400D0D3FF4078AB6C9FD2699CCF69
        9CCF699CCF699CCF699CCF699CCF699CCF699CCF699CCF699CCF699CCF679ACD
        74A9DC89C1F43C78AD251F490C0C071E1E1E29262CA3C0F4326EA7538BBE487B
        AE699CCF6699CC6699CC6699CC6699CC6699CC6699CC6699CC6699CC6699CC66
        99CC6699CC6297CA81A6D9AABCEF3874A9251F490000004545452F2C28EFFFFF
        71A7DD578ABD487BAE699CCF6699CC6699CC6699CC6699CC6699CC6699CC6699
        CC6699CC6699CC6699CC6699CC6297CA80A6D9A7BCEF3874A91E1842393934FF
        FFFF2E2B28E8FFFF6BA1D7578ABD487BAE699CCF6699CC6699CC6699CC6699CC
        6699CC6699CC6699CC6699CC6699CC6699CC6699CC6297CA80A6D9A7BCEF3874
        A917113B82827DFFFFFF2E2B28E8FFFF6BA1D7578ABD487BAE699CCF6699CC66
        99CC6699CC6699CC6699CC6699CC6699CC6699CC6699CC6699CC6699CC6297CA
        80A6D9A7BCEF3874A917113B7B7B76FFFFFF2E2B28E8FFFF6BA1D7578ABD487B
        AE699CCF6699CC6699CC6699CC6699CC6699CC6699CC6699CC6699CC6699CC66
        99CC6699CC6297CA80A6D9A7BCEF3874A917113B7B7B76FFFFFF2E2B28E8FFFF
        6BA1D7578ABD487BAE699CCF6699CC6699CC6699CC6699CC6699CC6699CC6699
        CC6699CC6699CC6699CC6699CC6297CA80A6D9A7BCEF3874A917113B7B7B76FF
        FFFF2E2B28E8FFFF6BA1D7578ABD487BAE699CCF6699CC6699CC6699CC6699CC
        6699CC6699CC6699CC6699CC6699CC6699CC6699CC6297CA80A6D9A7BCEF3874
        A917113B7B7B76FFFFFF2E2B28E8FFFF6BA1D75689BC4679AC6DA0D36A9DD06A
        9DD06A9DD06A9DD06A9DD06A9DD06A9DD06A9DD06A9DD06A9DD06A9DD0679CCF
        86AADDACBFF23874A917113B7B7B76FFFFFF2E2B28E8FFFF6AA0D66194C74073
        A634679A36699C36699C36699C36699C36699C36699C36699C36699C36699C36
        699C36699C34679A4475A87AA7DA3C77AB17113B7B7B76FFFFFF2E2B28E8FFFF
        699FD56598CB669BCE649ACD649ACD649ACD649ACD649ACD649ACD649ACD649A
        CD649ACD649ACD649ACD649ACD649ACD689CCF699CCF3E77AC17113B7B7B76FF
        FFFF2E2B28E8FFFF699FD56296C986AADDA5B8EBA2B7EAA4B9ECA7BCEFA7BCEF
        A7BCEFA7BCEFA7BCEFA7BCEFA7BCEFA7BCEFA5BCF2A2B8EC5F95C86A9DD03E77
        AC17113B7B7B76FFFFFF2E2B28E8FFFF6AA0D7588BBE5A87BA83A8DB83A9DC64
        8DC1456CA0496FA2476EA2476DA2476DA2476DA2476DA24770A557667DCEC1E9
        5C95C96A9DD03E77AC17113B7B7B76FFFFFF2E2B28E8FFFF6BA1D75689BC4679
        AC679CCF4D84B8829BC8B5DEFF9DD4FFADDAFFB5E9FFB3E8FFB4E8FFAEE3FFA5
        DAFF5793C8B4B9ED5E95C86A9DD03E77AC17113B7B7B76FFFFFF2E2B28E8FFFF
        6EA4DB578ABD487BAE6A9DD05285BB80B5C7ACE0FF92C7FFCDF2FF9DB0BD81B7
        CC7DB0C7C8FBF59BCEFF578FC2B6B9EC5E95C86A9DD03E77AC17113B7B7B76FF
        FFFF2E2B28EDFFFF457CB25C8FC2487BAE6A9DD05285BB7DB3C7A8DEFF94C7FF
        BFF9FF4A4C74245C941B4E89B3E6EA9DD0FF578FC2B6B9EC5E95C86A9DD03E77
        AC17113B7B7B76FFFFFF302C29DEF8FF356BA14E81B4497CAF6A9DD04F85BB9E
        B2C7CCE7FF8DC5FFC8F9FF55567C2D669A24578FB3E9EC9DD0FF578FC2B6B9EC
        5B93C66A9DD03E77AC17113B7B7B76FFFFFF312E2BCAE4FD245B915A8DC0487B
        AE6A9DD04F85BB97B0C7FBFFFF9CCDFFCAF6FF59567C2D6A9F225C94CDEAED9B
        D0FF578FC2B3B7EA75ADE0689BCE3E77AC17113B7B7B76FFFFFF2E2B28E8FFFF
        81B8F088BCF04275A8699CCF4E84BB99B1C9E3F4FFC9E4FFF9FFFF4C49721D23
        590F154FEBDFDF97D1FF5790C4B1B5E88DC6F96194C73B75A916103B777772FF
        FFFF262321F8FFFFBEE9FF9BC6F2437AB17EB5EB5E94CAA1B1C1CFF3FFF2FFFF
        E4F9FFDBFEFFC6F5FFC8F7FFB7E6FFB1DEFF5A8EBDB7BAECB0E0FF93CBFF5996
        CE0B04259A9A96FFFFFF55555564615F716B667D7E807793AF3B567024394C2A
        252075726E6B69676C69676E6B67716C67716C67756F674D506E0C18203B3749
        4F506B345069324F6BA09D96FFFFFFFFFFFFF7F7F7C3C3C3C5C5C5D7D7D6F7F4
        F0CBC8C5CFCCCACECECEC7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7CB
        CAC7D1CFCECDCDCACBCAC7CDCAC7C5C2BFFFFFFFFFFFFFFFFFFF}
      ExplicitLeft = 632
      ExplicitWidth = 129
    end
    inherited btnrelatorios: TJvArrowButton
      Left = 1120
      Width = 138
      DropDown = PopupMenu2
      Caption = 'Gerar Ficha (F6)'
      OnClick = btnrelatoriosClick
      ExplicitLeft = 1120
      ExplicitWidth = 138
    end
    object btImportar: TJvArrowButton
      Left = 984
      Top = 0
      Width = 129
      Height = 39
      Anchors = [akTop, akRight]
      Caption = '&Importar Arquivo'
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clWindowText
      FillFont.Height = -11
      FillFont.Name = 'Tahoma'
      FillFont.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000010000000200000000100
        04000000000000010000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF878888FFFFFFFFF8788
        7878FFFFFFF88777778FFFFFF7F8887778FFFFFF744F877777FFFFF4744F8667
        76FFFF4FF7FF868886FFF88FFFFF867776FFF8FFFFFF876667FFF8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF88888887FFFFFFFF88FFFFFFFFFFFFFF88F888888FF
        FFFFF88FFFFFF8FFFFFFF888888888FFFFFFFF88FFFFFFFFFFFFFF8FFFFFFFF8
        FFFFF447FF8877777FFF8747FF888887878FFF4FFFF78887778FFF4FFFFF8777
        78FFFF48FFF866667FFFFF84FFF8788677FFFFF847F8688677FFFFFFFFF86666
        77FFFFFFFFFF88888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = btImportarClick
    end
  end
  object PanelAguarde: TPanel [3]
    Left = 47
    Top = 180
    Width = 293
    Height = 56
    AutoSize = True
    Caption = 'PanelAguarde'
    Color = clWhite
    TabOrder = 3
    Visible = False
    object JvGIFAnimator1: TJvGIFAnimator
      Left = 1
      Top = 1
      Width = 291
      Height = 54
      AsyncDrawing = True
      Center = True
      Image.Data = {
        DD0E000047494638396123013600E60000EAEAEAFFFFFFB0B0B00000005576D5
        FFC60013275F3854A34866BD304A945475D34D6CC61A316F2037785374D15171
        CD415EB15070CC5575D4273F85415EB24D6DC72037792F49932740851327601A
        306F273F845373D10001020000016060600C183A5373D01B31704866BE09122D
        0409161022526C77980E1D473854A21F3678060D2012255A01020403060E0203
        085374D2415FB23954A302040903050D4766BD01020512255B6C77994C6CC50E
        1D48060D1F2740860409155171CE4867BED1D1D1112253070D21304A951A306E
        09132D5576D412255910215209122C4E6DC81F36773955A44C6BC50E1E480C18
        3B0101044765BC5474D25677D63853A2263F84FFFFFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000021FF0B4E45545343415045322E3003
        0100000021F904050A0056002C00000000230136000007FF8001828384858687
        88898A8B8C8D8E8F909192939495969798999A9B9C9D9E9FA0A1A2A3A4A5A6A7
        A8A9AAABACADAEAFA84002B3B4B5B6B7B8B9BABBBCBDBEBFC0C1C2C3C4C5C6C7
        C8B740870200CECFD0D1D2D3D4D5D6D7D8D9DADBDCDDDEDFE0E1E2E3D202CCE4
        E8E9EAEBECEDEEEFEDE686CDF0F5F6F7F8F9FAECF285F4FB00030A1C48105D3F
        42FF0A2A5CC8B0A1BE8383123A9C48B1A2C56C100549BCC8B1A3478519036CFC
        48B2A4C978E7AE0D58B9F2594B682C59C27CE952A6B398346BDE1CB07326CF9A
        2D71DA3C499462C891D15E2AFDA973DA5000347FE694B6B427D0A44CAD16DD3A
        F128B6AA50B38675CA33AAD8B1D5C09A45ABB52DD7B705FFBDAA944A176B4C9D
        66870A253B3667D0AC53A7C21D0C50AE359C4D13CF641BD6A660BB88F10216FB
        98B0657B86D39E0DBC792F56B7549732153A9AF2D9CBA8DF65A6269873E8A6A5
        41BF66BCD6ADDFBA8C53EBE6B69A2FE4BF77D9E62D1D7CF66DD84F8FA3ADBCBB
        39B5DECEA34B87077DBAF5EBE3AA63DFCE1D63CAEEE0C35BD32EBE3C77F2E6D3
        4F47FF8134CE0FD1DABB67091F9AFCF903EA3FBB3F5FBF33FEEEF9070080A409
        48A05006E2B752820A32889F83FDC5A7607E123658E183E37DC75A011C76E821
        871E2445C08824963862883099A8220128BAB4A2892DDEF46289314235238935
        7A30C58D2C8AC8638E3CF698E28F3EDE082491431A59E4FF8C3546835E071F46
        5940074B2A60A504574A406592586679E5962E7A292698328AD9259664DA78E6
        9A685669669A1D98B9269C729E49679D6D7229E79D6C66C9679F56FE69C49B19
        CEA392941FB6E0A6031C48D1A8038AEA19020C8C561A69989566FAE8A5654EAA
        A9A58B6ACAA99A8F525A2A0C36845AEAA82D7CEA29A8927E9A6AACA2AAEAE9AC
        989EBAAAAD8C8EEAA486D3CC80A8873324E5C303C8261BC1B2C8160BCD0CCA32
        1BED0BC64A6BEDB2D43E7BEDB5D9BA746CB4D63AFB0CB4E04E5B6DB9CC76EB0C
        B9DBA67B6EBB11A80B00BBF0CA4B6FBBF6A2AB6CBEFA625BA83FD7B8306C872E
        4443C3020857A070C20B17AC2DC30BE7D0B0C1114B5C71FF050E8F0BF1C61853
        CC71C43478FC31C219AF7BF1C5213F7C72C225CF3B32CB22AFBC40CA1ACB4C72
        CC2BB7EC82CD3757835E0F0373584234252060F4D148FF80C0D0D0F43082D24F
        276D34D3CF142D75D23D101DF5D6586B7D35D2543B63F5D74F67DD34D947870D
        C0D8649B5D35DA657B8DB6DA6C7F4D37DC4BCB5D83DDFF2274CD0A4117204434
        2B506038048723AEF80A8427AEF8E314300ECD0E90571E79E396272EF93385C7
        90B9E19B3BD3F9E710EC8039E9A1034039E931A43EBAE39E837E3AEC870F3E79
        EC9FBB8E7BE6BAD3FE78EABF1A6A0D098193100D09321CA07C0AC92F9FBCF1D0
        14E1FCF4CC1F00FD33C8533FFDF5CE64AFFDF2DC03E0FDFFF7D61F4F3EF8E69F
        5F7EF4EAAF8F7DFBE18FFF7DFCCD934FBFFA49A4CF84FD7D47740D0881034134
        4070810418B0800744A000A141C0042230810B7C46031FE8C00B44D01913A420
        040758C10A5E100019D4A0013F18421192B0830E7C020745F8C013A2F0802E7C
        610262F8421AA2F083C10398355010381444430713C0C0068418C4220ED187D0
        00E2108D48442122F1192858621379D0C4273AC3094CCCE20474F0432D4A7103
        56044014BD48451E84718C64046317BF98452E26718A6CC4C019E3F8C539A651
        8D6FA42311ED9846373E0758D23041E04C108D20A8C0020D4064221779484242
        C3048C8CA4221DF90C484A3292947486250F79C9066412FF009BECA4270BC949
        459A12919F0CE5292749CA52AE72948F14252B63294B15A4D29597BCE52B4BA9
        4B5C32F29339F49B355830C84232E098C8D44032357003632AF399CB64A633A3
        99CC663E129AD494E635B389CC234C939B2CF8A608A869CD4A8E939BDA34E739
        D709CD723AE306E854A637B7894E7782329E0C08273DD959CDFE69E41A38C880
        01062A508216F404D13841410DCA50844243A10C5DE8401DFA0C884AB4A1098D
        684429EA0C8B6A74A219FD2841711052911A80A30008A8494F5A5291A2D4A31F
        7DE94A59FAD099CA74A524F51920D5C3D3F5ECB4A740DD0D7A824A54B80CB5A8
        4825CA5193CAD48F2CB5A950B5C853A34AD5864CB5AA583125C855B3CAD57D84
        4416C908AB58C74AD6B29AF5AC682DEB3260C1D6B6BAF5AD708DAB5CE74AD7BA
        DAF5AE78CD6B5B03010021F904050A0056002C11001C001F000C000007748004
        8283848256878856058B8C8D8B12900A92919389888E98050E1C30219B9C9E9B
        9687998E0FA711A8A9A8A38AA58C154DB10BB4B3B4ADAF8C350823BCBEBFB8B9
        051410C4C5C6C7C1B907CCCDCECCCAAF09D317D4D609D1A513DBDC1B18DDD999
        0DE3E4E51616E1981AEBEC0C22EFEEE98E810021F904050A0056002C24001C00
        1F000C0000077380048283848256878856058B8C8D8B0A129190929289888E98
        050E9B9C9D9B9687998E0FA411A5A6A8A08AA28C0BAE15B0AFB1AAAC8C08B7B8
        B93F08B4B50514C010C1C2C4BDB53207C929C8CAC8C6AC1709D2D1D3D4CFA213
        181BDAD9DDDBD7992A160DE3E4E6E2E0980CEBEC1AED1AE98E810021F904050A
        0056002C37001C001F000C0000077780048283848256878856058B8C8D8B0A90
        1291929189888E9805210E9C309B9D9B9687998E0F3EA611A8A9A6A28AA48C15
        0BB2B1B3B4ADAF8C233F08BABCBEBCB7B80514C4C510C7C8C1B807CCCDCE2907
        CAAF1709D5D6D709D2A4181BDC133CDDDFDCDA990D4BE6E8E90DE498221AEEEF
        0CF2F0EC8E810021F904050A0056002C4A001C001F000C000007748004828384
        8256878856058B8C8D8B0A901292919389888E98050E1C9B9C219D9B9687998E
        11A60FA8A7A7A28AA48C15B00B39B1B2B0ACAE8C08BA51BBBD08B7B805103114
        C3C6C5C3C0B807CCCDCECCCAAE09D3D4D5D3D1A41B13DADB183CDEDED899160D
        E5E6E70DE2980CEC1AEDEF0CEA8E810021F904050A0056002C5D001C001F000C
        0000077480048283848256878856058B8C8D8B120A9190929389888E98051C0E
        219C9B9D9E9687998E11A6A7A80F0FA28AA48C0BB0B115B3B1ACAE8C2308BABB
        BC08B6B705141031C2C3C6C4BFB707CBCC54CD07C9AE09D317D4D5D4D1A413DB
        DC18DD13D9990DE3E4E5E3E1981A0C2244EBECEE1AE88E810021F904050A0056
        002C70001C001F000C0000077480048283848256878856058B8C8D8B46120A92
        91939189888E99050E1C30219C9D9F9C97879A8E3E0FA911AAABA9A48AA68C15
        0BB3B4B6B5AFB18C08BCBDBEBCB9BA051031C4C6C714C1BA07CCCDCECCCAB109
        D3D4D5D3D1A613DADB181BDDDDD89A160DE4E3E5E5E1991A0C22ECEEEBECE98E
        810021F904050A0056002C83001C001F000C0000077780530483848504568889
        56058C8D8E8C0A12929193948A898F99050E9C30219E1C9D3097889A8F110FA9
        A8AAABA48BA68D150BB3B2B4B5AEB08D233508BDBBBEBBB8B905311410C7C6C8
        C5C2B907CECFD0CECCB009D5D643D717D3A61B13DEDFE03CDB9A2A160DE6E5E7
        EAE3991AEE0CF0EF22EEEC8F810021F904050A0056002C96001C001F000C0000
        077380048283848256878856058B8C8D8B0A901291929189888E9805210E9C9D
        9E0E9687998E0FA511A7A8A8A18AA38C15AF39B00BB1AFABAD8C083FB9BBBC08
        B6B7053110C3C4C2C4BFB707CACBCCCAC8AD0917D1D2D4D4CFA318D91B13DADB
        D9D7992A0DE316E5E4E5E0980C1AEB22EDEFE98E810021F904050A0056002CA9
        001C001F000C0000077480048283848256878856058B8C8D8B0A901292919389
        888E98050E219B1C9D309D9687998E11A60FA8A7A7A28AA48C15B00B39B1B2B0
        ACAE8C08BABBBCBAB7B80510C2C314C431BFB807CACB2932CCC8AE09D2D317D4
        09D0A41BDA13DCDD18DCD8990D2AE3E5E4E5E19822EB1A0CECEDEEE98E810021
        F904050A0056002CBC001C001F000C0000077580048283848256878856058B8C
        8D8B120A9190929389888E98051C0E219C9E9F9687998E0F11A5A7A63EA6A18A
        A38C0BB0B115B3B1ACAE8C0835B9BBBC23B6B7051410C2C3C5C4BFB707CA32CB
        CD29C8AE0917D2D4D3D6D0A318131BDBDCDEDBD8990DE32A16E4E6E3E1980C22
        EDEEEC44ECEA8E810021F904050A0056002CCF001C001F000C00000770800482
        83848256878856058B8C8D8B12900A92919389888E98050E1C9B9D9E0E968799
        8E0FA511A6A7A9A18AA38C0BAF15B0B1B0ABAD8C0823B8B9BABAB5B6051014C1
        C2C3C4BEB607C9CACBC9C7AD09D0D1D2D0CEA31B1318D8D7DBD9D599160DE0E1
        E3E2DE980CE8E91A22EAE68E810021F904050A0056002CE2001C001F000C0000
        077380048283848256878856058B8C8D8B0A461290939489888E98050E9B9C9D
        300E9687998E110FA6A5A7A7A18AA38C0B15AFB0B1B2ABAD8C3F08B9BABB35B5
        B6053110C214C3C5BEB63207CACBCC07C7AD1709D2D1D3D3CFA313D9DA181BDD
        DCD7992A160DE4E5E6E0980CEAEB1AED22EAE88E810021F904050A0056002CF5
        001C001F000C0000077580048283848256878856058B8C8D8B0A901291929189
        888E9805210E301C9C9F9F9687998E0FA63E11A7AAA28AA48C150BB1B0B2B3AC
        AE8C0823B935BBBDB6B705311410C4C3C6C3BFB707CBCC32CECCC9AE1709D4D5
        D609D1A4181B13DDDBDFDBD99916E40DE5E716E2980C1AEC22EDEEEDEA8E8100
        3B}
    end
    object pinfo: TPanel
      Left = 8
      Top = 2
      Width = 281
      Height = 25
      Caption = 'Por favor, aguarde.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object ProgressBar1: TProgressBar [4]
    Left = 64
    Top = 43
    Width = 150
    Height = 16
    TabOrder = 4
    Visible = False
  end
  object pnBuscando: TPanel [5]
    Left = 221
    Top = 42
    Width = 227
    Height = 15
    Caption = 'Buscando'
    TabOrder = 5
    Visible = False
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 1336
    Top = 184
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 1384
    Top = 400
  end
  inherited qAux: TFDQuery
    Top = 112
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 1336
    Top = 296
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 1336
    Top = 344
  end
  inherited FDTransac: TFDTransaction
    Left = 1336
    Top = 240
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 1336
    Top = 128
  end
  inherited qAux2: TFDQuery
    Top = 111
  end
  inherited qAux3: TFDQuery
    Top = 95
  end
  inherited qAux4: TFDQuery
    Top = 103
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\DRIMEC1609.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    Left = 43
    Top = 104
  end
  inherited FDStoredProc1: TFDStoredProc
    Left = 1240
    Top = 184
  end
  inherited dsBusca: TDataSource
    Left = 116
    Top = 432
  end
  inherited cdsBusca: TFDQuery
    OnCalcFields = cdsBuscaCalcFields
    SQL.Strings = (
      
        'SELECT DISTINCT pr.PRD_REFER, pr.PRD_DESCRI, pt.PTI_SIGLA, IPI_C' +
        'ODIGO AS NCM, '
      '       pr.PRD_CODBARRA as GTIN, pr.PRD_UND, pr.PRD_ORIGEM,'
      '       pr.PRD_FCI_CONTEUDO_IMPORTACAO AS CI,'
      
        '       CAST(0 AS NUMERIC(18,5)) AS PRD_FCI_VALOR_PARCELA_IMPORTA' +
        'DA,'
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_TOTAL'
      '  FROM PRD0000 pr '
      '  JOIN FTC0000 ft ON (ft.PRD_REFER = pr.PRD_REFER )'
      '  JOIN FTC_IT01 fi ON (fi.PRD_REFER_ITENS  = pr.PRD_REFER)'
      '  JOIN PRD_TIPO pt ON pt.PTI_CODIGO = pr.PTI_CODIGO'
      '  WHERE fi.PRD_REFER = '#39#39' '
      'ORDER BY pr.PRD_REFER ')
    Left = 115
    Top = 360
    object cdsBuscaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object cdsBuscaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      Size = 100
    end
    object cdsBuscaPTI_SIGLA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PTI_SIGLA'
      Origin = 'PTI_SIGLA'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object cdsBuscaPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      Size = 6
    end
    object cdsBuscaVALOR_TOTAL: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'VALOR_TOTAL'
      Calculated = True
    end
    object cdsBuscaPRD_FCI_VALOR_PARCELA_IMPORTADA: TFMTBCDField
      FieldName = 'PRD_FCI_VALOR_PARCELA_IMPORTADA'
    end
    object cdsBuscaNCM: TStringField
      FieldName = 'NCM'
      Origin = 'IPI_CODIGO'
      Size = 8
    end
    object cdsBuscaGTIN: TStringField
      FieldName = 'GTIN'
      Origin = 'PRD_CODBARRA'
      Size = 13
    end
    object cdsBuscaPRD_ORIGEM: TIntegerField
      FieldName = 'PRD_ORIGEM'
      Origin = 'PRD_ORIGEM'
    end
    object cdsBuscaCI: TFMTBCDField
      FieldName = 'CI'
      Origin = 'PRD_FCI_CONTEUDO_IMPORTACAO'
      Precision = 18
      Size = 5
    end
    object cdsBuscaFTC_BASEFORMULA: TIntegerField
      FieldName = 'FTC_BASEFORMULA'
    end
  end
  inherited pmExportar: TPopupMenu
    Left = 856
  end
  inherited PopupMenu2: TPopupMenu
    Left = 744
    Top = 48
  end
  inherited frxPadrao: TfrxReport
    Left = 748
    Top = 97
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Text file|*.txt'
    Left = 1284
    Top = 41
  end
  inherited qUsuMenu: TFDQuery
    Left = 1235
    Top = 128
  end
  inherited cdsBuscaDetalhes: TFDQuery
    OnCalcFields = cdsBuscaDetalhesCalcFields
    CachedUpdates = True
    IndexesActive = False
    SQL.Strings = (
      
        'SELECT fi.PRD_REFER, fi.PRD_REFER_ITENS , pr.PRD_DESCRI, pt.PTI_' +
        'SIGLA, fi.FTI_UC, pr.PRD_UND,'
      '       pr.IPI_CODIGO AS NCM, pr.PRD_CODBARRA as GTIN,'
      '       CAST(0 AS NUMERIC(18,5)) AS PARCELA_IMPORTADA, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_TOTAL_ITEM, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_UNITARIO, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_COMPRA, '
      '       CAST(0 AS NUMERIC(18,5)) AS QUANTIDADE_COMPRADA, '
      '       CAST(0 AS NUMERIC(18,5)) AS PERCENTUAL_ORIGEM, '
      '       CAST(0 AS NUMERIC(18,5)) AS PRECO_VENDA, '
      '       CAST(0 AS NUMERIC(18,5)) AS PRECO_COMPRA_MEDIO '
      '  FROM FTC_IT01 fi '
      '  JOIN PRD0000 pr ON (pr.PRD_REFER = fi.PRD_REFER_ITENS)'
      '  JOIN PRD_TIPO pt ON (pt.PTI_CODIGO = pr.PTI_CODIGO)'
      '  WHERE fi.PRD_REFER = '#39#39' '
      'ORDER BY fi.PRD_REFER ')
    Left = 203
    Top = 360
    object cdsBuscaDetalhesPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object cdsBuscaDetalhesPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Origin = 'PRD_REFER_ITENS'
    end
    object cdsBuscaDetalhesPRD_DESCRI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object cdsBuscaDetalhesPTI_SIGLA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PTI_SIGLA'
      Origin = 'PTI_SIGLA'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object cdsBuscaDetalhesFTI_UC: TFloatField
      FieldName = 'FTI_UC'
      Origin = 'FTI_UC'
    end
    object cdsBuscaDetalhesCONSUMO_TOTAL: TFMTBCDField
      DisplayLabel = 'Consumo Total'
      FieldKind = fkCalculated
      FieldName = 'CONSUMO_TOTAL'
      Calculated = True
    end
    object cdsBuscaDetalhesPRD_UND: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object cdsBuscaDetalhesPRECO_COMPRA_MEDIO: TFMTBCDField
      FieldName = 'PRECO_COMPRA_MEDIO'
      DisplayFormat = '0.#####'
    end
    object cdsBuscaDetalhesPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
    end
    object cdsBuscaDetalhesPERCENTUAL_ORIGEM: TFMTBCDField
      FieldName = 'PERCENTUAL_ORIGEM'
      DisplayFormat = '0.#####'
      Size = 5
    end
    object cdsBuscaDetalhesQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE_COMPRADA'
      DisplayFormat = '0.#####'
    end
    object cdsBuscaDetalhesVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      DisplayFormat = '0.#####'
    end
    object cdsBuscaDetalhesVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      DisplayFormat = '0.#####'
    end
    object cdsBuscaDetalhesVALOR_TOTAL_ITEM: TFMTBCDField
      FieldName = 'VALOR_TOTAL_ITEM'
      DisplayFormat = '0.#####'
      Size = 0
    end
    object cdsBuscaDetalhesPARCELA_IMPORTADA: TFMTBCDField
      FieldName = 'PARCELA_IMPORTADA'
      DisplayFormat = '0.#####'
    end
    object cdsBuscaDetalhesNCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM'
      Origin = 'IPI_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object cdsBuscaDetalhesFTC_BASEFORMULA: TIntegerField
      FieldName = 'FTC_BASEFORMULA'
    end
    object cdsBuscaDetalhesGTIN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GTIN'
      Origin = 'PRD_CODBARRA'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
  end
  inherited dsBuscaDetalhes: TDataSource
    Left = 204
    Top = 432
  end
  inherited coCalcula: TACBrCalculadora
    Left = 916
    Top = 1
  end
  object cxEditRepository1: TcxEditRepository
    Left = 908
    Top = 193
    PixelsPerInch = 96
    object Botao: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ViewStyle = vsButtonsOnly
      Properties.OnButtonClick = BotaoPropertiesButtonClick
    end
  end
  object frxFCI: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44861.638258761600000000
    ReportOptions.LastChange = 44861.638258761600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      
        '  empresa, RECALCULA1, RECALCULA2, RECALCULA3, RECALCULA4, RECAL' +
        'CULA5: string;                                                  ' +
        '   '
      ''
      'begin'
      ''
      'end.')
    OnBeginDoc = frxFCIBeginDoc
    OnGetValue = frxFCIGetValue
    Left = 452
    Top = 305
    Datasets = <
      item
        DataSet = frxDBBusca
        DataSetName = 'frxDBBusca'
      end
      item
        DataSet = frxDBBuscaDetalhes
        DataSetName = 'frxDBBuscaDetalhes'
      end
      item
        DataSet = frxDBNivel3
        DataSetName = 'frxDBNivel3'
      end
      item
        DataSet = frxDBNivel4
        DataSetName = 'frxDBNivel4'
      end
      item
        DataSet = frxDBNivel5
        DataSetName = 'frxDBNivel5'
      end
      item
        DataSet = frxDBNivel6
        DataSetName = 'frxDBNivel6'
      end
      item
        DataSet = frxDBNivel7
        DataSetName = 'frxDBNivel7'
      end
      item
        DataSet = frxDBNivel8
        DataSetName = 'frxDBNivel8'
      end
      item
        DataSet = frxDBNivel9
        DataSetName = 'frxDBNivel9'
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
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 89.488250000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 944.882500000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
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
          Formats = <
            item
            end
            item
            end>
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 997.795920000000000000
          Top = 45.354360000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 869.512370000000000000
          Top = 45.354360000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Emitido em: [Date]')
          ParentFont = False
        end
        object LogoEmpresa: TfrxPictureView
          AllowVectorExport = True
          Width = 177.637783070000000000
          Height = 60.472480000000000000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object wFrxRazao: TfrxMemoView
          AllowVectorExport = True
          Left = 201.771800000000000000
          Top = 1.779530000000000000
          Width = 646.299630000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[EMPRESA]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 18.456710000000000000
          Width = 1043.150280000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Ficha de Conte'#250'do de Importa'#231#227'o')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Top = 68.031540000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 68.031540000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 89.488250000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 65.133890000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 869.291900000000000000
          Top = 68.031540000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Conte'#250'do de Importa'#231#227'o')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Top = 68.031540000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor da Parcela Importada')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Top = 68.031540000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'GTIN')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 454.866420000000000000
          Top = 68.031540000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'NCM')
          ParentFont = False
        end
      end
      object Nivel1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 46.031540000000000000
        Top = 170.078850000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBBusca
        DataSetName = 'frxDBBusca'
        RowCount = 0
        StartNewPage = True
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 23.574830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 23.574830000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 2.503710000000000000
          Top = 46.031540000000000000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 20.677180000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 768.197280000000000000
          Top = 24.456710000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quant.')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 835.906000000000000000
          Top = 24.456710000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vl. Compra')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 909.173780000000000000
          Top = 24.456710000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '% Orig.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 978.898270000000000000
          Top = 24.456710000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Parc. Imp.')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 728.386210000000000000
          Top = 24.456710000000000000
          Width = 26.456678270000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Un.')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Top = 24.456710000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataSet = frxDBBusca
          DataSetName = 'frxDBBusca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[RECALCULA1]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 687.370440000000000000
          Top = 24.456710000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 458.645950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'NCM'
          DataSet = frxDBBusca
          DataSetName = 'frxDBBusca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBBusca."NCM"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'GTIN'
          DataSet = frxDBBusca
          DataSetName = 'frxDBBusca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBBusca."GTIN"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDBBusca
          DataSetName = 'frxDBBusca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBBusca."PRD_REFER"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBBusca
          DataSetName = 'frxDBBusca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBBusca."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 937.323440000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBBusca."CI"] %')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 729.449290000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'R$ [frxDBBusca."PRD_FCI_VALOR_PARCELA_IMPORTADA"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 26.456710000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'NCM')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 26.456710000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'GTIN')
          ParentFont = False
        end
      end
      object Nivel2: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 238.110390000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBBuscaDetalhes
        DataSetName = 'frxDBBuscaDetalhes'
        Filter = '<frxDBBusca."PRD_REFER"> = <frxDBBuscaDetalhes."PRD_REFER">'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_REFER_ITENS'
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBBuscaDetalhes."PRD_REFER_ITENS"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 104.504020000000000000
          Width = 302.362194960630000000
          Height = 15.118120000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBBuscaDetalhes."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 762.417750000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBBuscaDetalhes."FTI_UC"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 831.906000000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'R$ [frxDBBuscaDetalhes."PRECO_COMPRA_MEDIO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 912.953310000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBBuscaDetalhes."PERCENTUAL_ORIGEM"] %')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 971.323440000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBBuscaDetalhes."PARCELA_IMPORTADA"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 725.606680000000000000
          Width = 34.015738270000000000
          Height = 15.118120000000000000
          DataField = 'PRD_UND'
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBBuscaDetalhes."PRD_UND"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBusca
          DataSetName = 'frxDBBusca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[RECALCULA2]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 688.590910000000000000
          Width = 34.015748030000000000
          Height = 15.118120000000000000
          DataField = 'PTI_SIGLA'
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBBuscaDetalhes."PTI_SIGLA"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Width = 98.267758030000000000
          Height = 15.118120000000000000
          DataField = 'NCM'
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBBuscaDetalhes."NCM"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Width = 98.267758030000000000
          Height = 15.118120000000000000
          DataField = 'GTIN'
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBBuscaDetalhes."GTIN"]')
          ParentFont = False
        end
      end
      object Nivel3: TfrxSubdetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 275.905690000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBNivel3
        DataSetName = 'frxDBNivel3'
        Filter = 
          '<frxDBBuscaDetalhes."PRD_REFER_ITENS"> = <frxDBNivel3."PRD_REFER' +
          '">'
        RowCount = 0
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 38.913420000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBNivel3."PRD_REFER_ITENS"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 117.181200000000000000
          Width = 302.362194960630000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBNivel3."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 762.417750000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBNivel3."FTI_UC"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 831.906000000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'R$ [frxDBNivel3."PRECO_COMPRA_MEDIO"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 912.953310000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBNivel3."PERCENTUAL_ORIGEM"] %')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 971.323440000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[IIF ( <frxDBBuscaDetalhes."PARCELA_IMPORTADA"> = 0, '#39'0,00'#39',  '#39' ' +
              '( '#39'  + FormatFloat('#39'0.00'#39', <frxDBNivel3."PARCELA_IMPORTADA"> ) +' +
              ' '#39' )'#39'  )]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 725.606680000000000000
          Width = 34.015738270000000000
          Height = 15.118120000000000000
          DataField = 'PRD_UND'
          DataSet = frxDBNivel3
          DataSetName = 'frxDBNivel3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBNivel3."PRD_UND"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBusca
          DataSetName = 'frxDBBusca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[RECALCULA3]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 688.590910000000000000
          Width = 34.015748030000000000
          Height = 15.118120000000000000
          DataField = 'PTI_SIGLA'
          DataSet = frxDBNivel3
          DataSetName = 'frxDBNivel3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBNivel3."PTI_SIGLA"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Width = 98.267758030000000000
          Height = 15.118120000000000000
          DataField = 'NCM'
          DataSet = frxDBNivel3
          DataSetName = 'frxDBNivel3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBNivel3."NCM"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Width = 98.267758030000000000
          Height = 15.118120000000000000
          DataField = 'GTIN'
          DataSet = frxDBNivel3
          DataSetName = 'frxDBNivel3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBNivel3."GTIN"]')
          ParentFont = False
        end
      end
      object Nivel4: TfrxDataBand4
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 313.700990000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBNivel4
        DataSetName = 'frxDBNivel4'
        Filter = '<frxDBNivel3."PRD_REFER_ITENS">=<frxDBNivel4."PRD_REFER">'
        RowCount = 0
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 49.252010000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBNivel4."PRD_REFER_ITENS"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 127.740260000000000000
          Width = 302.362194960630000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBNivel4."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 762.417750000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBNivel4."FTI_UC"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 831.906000000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'R$ [frxDBNivel4."PRECO_COMPRA_MEDIO"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 912.953310000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBNivel4."PERCENTUAL_ORIGEM"] %')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 971.323440000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[IIF ( <frxDBNivel3."PARCELA_IMPORTADA"> = 0, '#39'0,00'#39',  '#39' ( '#39'  + ' +
              'FormatFloat('#39'0.00'#39', <frxDBNivel4."PARCELA_IMPORTADA"> ) + '#39' )'#39'  ' +
              ')]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 725.606680000000000000
          Width = 34.015738270000000000
          Height = 15.118120000000000000
          DataSet = frxDBNivel3
          DataSetName = 'frxDBNivel3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBNivel4."PRD_UND"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBusca
          DataSetName = 'frxDBBusca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[RECALCULA4]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 688.590910000000000000
          Width = 34.015748030000000000
          Height = 15.118120000000000000
          DataField = 'PTI_SIGLA'
          DataSet = frxDBNivel4
          DataSetName = 'frxDBNivel4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBNivel4."PTI_SIGLA"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Width = 98.267758030000000000
          Height = 15.118120000000000000
          DataField = 'NCM'
          DataSet = frxDBNivel4
          DataSetName = 'frxDBNivel4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBNivel4."NCM"]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Width = 98.267758030000000000
          Height = 15.118120000000000000
          DataField = 'GTIN'
          DataSet = frxDBNivel4
          DataSetName = 'frxDBNivel4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBNivel4."GTIN"]')
          ParentFont = False
        end
      end
      object Nivel5: TfrxDataBand5
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 351.496290000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBNivel5
        DataSetName = 'frxDBNivel5'
        Filter = '<frxDBNivel4."PRD_REFER_ITENS">=<frxDBNivel5."PRD_REFER">'
        RowCount = 0
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 59.370130000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBNivel5."PRD_REFER_ITENS"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 137.858380000000000000
          Width = 302.362194960630000000
          Height = 15.118120000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBNivel5
          DataSetName = 'frxDBNivel5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBNivel5."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 762.417750000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBNivel5."FTI_UC"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 831.906000000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'R$ [frxDBNivel5."PRECO_COMPRA_MEDIO"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 912.953310000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBNivel5."PERCENTUAL_ORIGEM"] %')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 971.323440000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[IIF ( <frxDBNivel4."PARCELA_IMPORTADA"> = 0, '#39'0,00'#39',  '#39' ( '#39'  + ' +
              'FormatFloat('#39'0.00'#39', <frxDBNivel5."PARCELA_IMPORTADA"> ) + '#39' )'#39'  ' +
              ')]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 725.606680000000000000
          Width = 34.015738270000000000
          Height = 15.118120000000000000
          DataSet = frxDBNivel3
          DataSetName = 'frxDBNivel3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBNivel5."PRD_UND"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBusca
          DataSetName = 'frxDBBusca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[RECALCULA5]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 688.590910000000000000
          Width = 34.015748030000000000
          Height = 15.118120000000000000
          DataField = 'PTI_SIGLA'
          DataSet = frxDBNivel5
          DataSetName = 'frxDBNivel5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBNivel5."PTI_SIGLA"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 444.205010000000000000
          Width = 98.267758030000000000
          Height = 15.118120000000000000
          DataField = 'NCM'
          DataSet = frxDBNivel5
          DataSetName = 'frxDBNivel5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBNivel5."NCM"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 550.031850000000000000
          Width = 98.267758030000000000
          Height = 15.118120000000000000
          DataField = 'GTIN'
          DataSet = frxDBNivel5
          DataSetName = 'frxDBNivel5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBNivel5."GTIN"]')
          ParentFont = False
        end
      end
      object Nivel6: TfrxDataBand6
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 389.291590000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBNivel6
        DataSetName = 'frxDBNivel6'
        Filter = '<frxDBNivel5."PRD_REFER_ITENS">=<frxDBNivel6."PRD_REFER">'
        RowCount = 0
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 76.047310000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBNivel6."PRD_REFER_ITENS"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 155.315090000000000000
          Width = 302.362194960630000000
          Height = 15.118120000000000000
          DataSet = frxDBNivel5
          DataSetName = 'frxDBNivel5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBNivel6."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 762.417750000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBNivel6."FTI_UC"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 831.906000000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'R$ [frxDBNivel6."PRECO_COMPRA_MEDIO"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 912.953310000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBNivel6."PERCENTUAL_ORIGEM"] %')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 971.323440000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataSet = frxDBBuscaDetalhes
          DataSetName = 'frxDBBuscaDetalhes'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[IIF ( <frxDBNivel5."PARCELA_IMPORTADA"> = 0, '#39'0,00'#39',  '#39' ( '#39'  + ' +
              'FormatFloat('#39'0.00'#39', <frxDBNivel6."PARCELA_IMPORTADA"> ) + '#39' )'#39'  ' +
              ')]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 725.606680000000000000
          Width = 34.015738270000000000
          Height = 15.118120000000000000
          DataSet = frxDBNivel3
          DataSetName = 'frxDBNivel3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBNivel6."PRD_UND"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 688.590910000000000000
          Width = 34.015748030000000000
          Height = 15.118120000000000000
          DataField = 'PTI_SIGLA'
          DataSet = frxDBNivel6
          DataSetName = 'frxDBNivel6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBNivel6."PTI_SIGLA"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Width = 98.267758030000000000
          Height = 15.118120000000000000
          DataField = 'NCM'
          DataSet = frxDBNivel6
          DataSetName = 'frxDBNivel6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBNivel6."NCM"]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Width = 98.267758030000000000
          Height = 15.118120000000000000
          DataField = 'GTIN'
          DataSet = frxDBNivel6
          DataSetName = 'frxDBNivel6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBNivel6."GTIN"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBBusca: TfrxDBDataset
    UserName = 'frxDBBusca'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'PTI_SIGLA=PTI_SIGLA'
      'NCM=NCM'
      'GTIN=GTIN'
      'PRD_UND=PRD_UND'
      'PRD_ORIGEM=PRD_ORIGEM'
      'PRD_FCI_VALOR_PARCELA_IMPORTADA=PRD_FCI_VALOR_PARCELA_IMPORTADA'
      'VALOR_TOTAL=VALOR_TOTAL'
      'CI=CI')
    DataSet = cdsBusca
    BCDToCurrency = False
    Left = 116
    Top = 489
  end
  object frxDBBuscaDetalhes: TfrxDBDataset
    UserName = 'frxDBBuscaDetalhes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRD_REFER=PRD_REFER'
      'PRD_REFER_ITENS=PRD_REFER_ITENS'
      'PRD_DESCRI=PRD_DESCRI'
      'PTI_SIGLA=PTI_SIGLA'
      'FTI_UC=FTI_UC'
      'CONSUMO_TOTAL=CONSUMO_TOTAL'
      'PRD_UND=PRD_UND'
      'PRECO_COMPRA_MEDIO=PRECO_COMPRA_MEDIO'
      'PRECO_VENDA=PRECO_VENDA'
      'PERCENTUAL_ORIGEM=PERCENTUAL_ORIGEM'
      'QUANTIDADE_COMPRADA=QUANTIDADE_COMPRADA'
      'VALOR_COMPRA=VALOR_COMPRA'
      'VALOR_UNITARIO=VALOR_UNITARIO'
      'VALOR_TOTAL_ITEM=VALOR_TOTAL_ITEM'
      'PARCELA_IMPORTADA=PARCELA_IMPORTADA'
      'NCM=NCM'
      'GTIN=GTIN')
    DataSet = cdsBuscaDetalhes
    BCDToCurrency = False
    Left = 204
    Top = 489
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'txt'
    Filter = 'Text file|*.txt'
    Left = 1080
    Top = 48
  end
  object cdsNivel3: TFDQuery
    OnCalcFields = cdsNivel3CalcFields
    CachedUpdates = True
    Connection = dbConn
    Transaction = FDTransac
    SQL.Strings = (
      
        'SELECT fi.PRD_REFER, fi.PRD_REFER_ITENS , pr.PRD_DESCRI, pt.PTI_' +
        'SIGLA, fi.FTI_UC, pr.PRD_UND,'
      '       pr.IPI_CODIGO AS NCM, pr.PRD_CODBARRA as GTIN,'
      '       CAST(0 AS NUMERIC(18,5)) AS PARCELA_IMPORTADA, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_TOTAL_ITEM, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_UNITARIO, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_COMPRA, '
      '       CAST(0 AS NUMERIC(18,5)) AS QUANTIDADE_COMPRADA, '
      '       CAST(0 AS NUMERIC(18,5)) AS PERCENTUAL_ORIGEM, '
      '       CAST(0 AS NUMERIC(18,5)) AS PRECO_VENDA, '
      '       CAST(0 AS NUMERIC(18,5)) AS PRECO_COMPRA_MEDIO '
      '  FROM FTC_IT01 fi '
      '  JOIN PRD0000 pr ON (pr.PRD_REFER = fi.PRD_REFER_ITENS)'
      '  JOIN PRD_TIPO pt ON (pt.PTI_CODIGO = pr.PTI_CODIGO)'
      '  WHERE fi.PRD_REFER = '#39#39' '
      'ORDER BY fi.PRD_REFER ')
    Left = 299
    Top = 360
    object cdsNivel3PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object cdsNivel3PRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Origin = 'PRD_REFER_ITENS'
    end
    object cdsNivel3PRD_DESCRI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
    object cdsNivel3PTI_SIGLA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PTI_SIGLA'
      Origin = 'PTI_SIGLA'
      ProviderFlags = []
      Size = 2
    end
    object cdsNivel3FTI_UC: TFloatField
      FieldName = 'FTI_UC'
      Origin = 'FTI_UC'
    end
    object cdsNivel3CONSUMO_TOTAL: TFMTBCDField
      DisplayLabel = 'Consumo Total'
      FieldKind = fkCalculated
      FieldName = 'CONSUMO_TOTAL'
      Calculated = True
    end
    object cdsNivel3PRD_UND: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      ProviderFlags = []
      Size = 6
    end
    object cdsNivel3PARCELA_IMPORTADA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PARCELA_IMPORTADA'
      Origin = 'PARCELA_IMPORTADA'
      ProviderFlags = []
      Precision = 18
      Size = 5
    end
    object cdsNivel3VALOR_TOTAL_ITEM: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_TOTAL_ITEM'
      Origin = 'VALOR_TOTAL_ITEM'
      ProviderFlags = []
      Precision = 18
      Size = 5
    end
    object cdsNivel3VALOR_UNITARIO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
      ProviderFlags = []
      Precision = 18
      Size = 5
    end
    object cdsNivel3VALOR_COMPRA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
      ProviderFlags = []
      Precision = 18
      Size = 5
    end
    object cdsNivel3QUANTIDADE_COMPRADA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANTIDADE_COMPRADA'
      Origin = 'QUANTIDADE_COMPRADA'
      ProviderFlags = []
      Precision = 18
      Size = 5
    end
    object cdsNivel3PERCENTUAL_ORIGEM: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERCENTUAL_ORIGEM'
      Origin = 'PERCENTUAL_ORIGEM'
      ProviderFlags = []
      Precision = 18
      Size = 5
    end
    object cdsNivel3PRECO_VENDA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      ProviderFlags = []
      Precision = 18
      Size = 5
    end
    object cdsNivel3PRECO_COMPRA_MEDIO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_COMPRA_MEDIO'
      Origin = 'PRECO_COMPRA_MEDIO'
      ProviderFlags = []
      Precision = 18
      Size = 5
    end
    object cdsNivel3NCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM'
      Origin = 'IPI_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object cdsNivel3GTIN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GTIN'
      Origin = 'PRD_CODBARRA'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
  end
  object dsNivel3: TDataSource
    DataSet = cdsNivel3
    Left = 300
    Top = 432
  end
  object cdsNivel4: TFDQuery
    OnCalcFields = cdsNivel4CalcFields
    CachedUpdates = True
    Connection = dbConn
    Transaction = FDTransac
    SQL.Strings = (
      
        'SELECT fi.PRD_REFER, fi.PRD_REFER_ITENS , pr.PRD_DESCRI, pt.PTI_' +
        'SIGLA, fi.FTI_UC, pr.PRD_UND,'
      '       pr.IPI_CODIGO AS NCM, pr.PRD_CODBARRA as GTIN,'
      '       CAST(0 AS NUMERIC(18,5)) AS PARCELA_IMPORTADA, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_TOTAL_ITEM, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_UNITARIO, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_COMPRA, '
      '       CAST(0 AS NUMERIC(18,5)) AS QUANTIDADE_COMPRADA, '
      '       CAST(0 AS NUMERIC(18,5)) AS PERCENTUAL_ORIGEM, '
      '       CAST(0 AS NUMERIC(18,5)) AS PRECO_VENDA, '
      '       CAST(0 AS NUMERIC(18,5)) AS PRECO_COMPRA_MEDIO '
      '  FROM FTC_IT01 fi '
      '  JOIN PRD0000 pr ON (pr.PRD_REFER = fi.PRD_REFER_ITENS)'
      '  JOIN PRD_TIPO pt ON (pt.PTI_CODIGO = pr.PTI_CODIGO)'
      '  WHERE fi.PRD_REFER = '#39#39' '
      'ORDER BY fi.PRD_REFER ')
    Left = 379
    Top = 360
    object StringField6: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object StringField7: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Origin = 'PRD_REFER_ITENS'
    end
    object StringField8: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
    object StringField9: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PTI_SIGLA'
      Origin = 'PTI_SIGLA'
      ProviderFlags = []
      Size = 2
    end
    object cdsNivel4FTI_UC: TFloatField
      FieldName = 'FTI_UC'
      Origin = 'FTI_UC'
    end
    object cdsNivel4CONSUMO_TOTAL: TFMTBCDField
      DisplayLabel = 'Consumo Total'
      FieldKind = fkCalculated
      FieldName = 'CONSUMO_TOTAL'
      Calculated = True
    end
    object StringField10: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      ProviderFlags = []
      Size = 6
    end
    object FMTBCDField11: TFMTBCDField
      FieldName = 'PRECO_COMPRA_MEDIO'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField12: TFMTBCDField
      FieldName = 'PRECO_VENDA'
    end
    object FMTBCDField13: TFMTBCDField
      FieldName = 'PERCENTUAL_ORIGEM'
      DisplayFormat = '0.#####'
      Size = 5
    end
    object FMTBCDField14: TFMTBCDField
      FieldName = 'QUANTIDADE_COMPRADA'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField15: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField16: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField17: TFMTBCDField
      FieldName = 'VALOR_TOTAL_ITEM'
      DisplayFormat = '0.#####'
      Size = 0
    end
    object FMTBCDField18: TFMTBCDField
      FieldName = 'PARCELA_IMPORTADA'
      DisplayFormat = '0.#####'
    end
    object cdsNivel4NCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM'
      Origin = 'IPI_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object cdsNivel4GTIN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GTIN'
      Origin = 'PRD_CODBARRA'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
  end
  object dsNivel4: TDataSource
    DataSet = cdsNivel4
    Left = 380
    Top = 432
  end
  object cdsNivel5: TFDQuery
    OnCalcFields = cdsNivel5CalcFields
    CachedUpdates = True
    Connection = dbConn
    Transaction = FDTransac
    SQL.Strings = (
      
        'SELECT fi.PRD_REFER, fi.PRD_REFER_ITENS , pr.PRD_DESCRI, pt.PTI_' +
        'SIGLA, fi.FTI_UC, pr.PRD_UND,'
      '       pr.IPI_CODIGO AS NCM, pr.PRD_CODBARRA as GTIN,'
      '       CAST(0 AS NUMERIC(18,5)) AS PARCELA_IMPORTADA, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_TOTAL_ITEM, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_UNITARIO, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_COMPRA, '
      '       CAST(0 AS NUMERIC(18,5)) AS QUANTIDADE_COMPRADA, '
      '       CAST(0 AS NUMERIC(18,5)) AS PERCENTUAL_ORIGEM, '
      '       CAST(0 AS NUMERIC(18,5)) AS PRECO_VENDA, '
      '       CAST(0 AS NUMERIC(18,5)) AS PRECO_COMPRA_MEDIO '
      '  FROM FTC_IT01 fi '
      '  JOIN PRD0000 pr ON (pr.PRD_REFER = fi.PRD_REFER_ITENS)'
      '  JOIN PRD_TIPO pt ON (pt.PTI_CODIGO = pr.PTI_CODIGO)'
      '  WHERE fi.PRD_REFER = '#39#39' '
      'ORDER BY fi.PRD_REFER ')
    Left = 451
    Top = 360
    object StringField11: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object StringField12: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Origin = 'PRD_REFER_ITENS'
    end
    object StringField13: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
    object StringField14: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PTI_SIGLA'
      Origin = 'PTI_SIGLA'
      ProviderFlags = []
      Size = 2
    end
    object cdsNivel5FTI_UC: TFloatField
      FieldName = 'FTI_UC'
      Origin = 'FTI_UC'
    end
    object cdsNivel5CONSUMO_TOTAL: TFMTBCDField
      DisplayLabel = 'Consumo Total'
      FieldKind = fkCalculated
      FieldName = 'CONSUMO_TOTAL'
      Calculated = True
    end
    object StringField15: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      ProviderFlags = []
      Size = 6
    end
    object FMTBCDField20: TFMTBCDField
      FieldName = 'PRECO_COMPRA_MEDIO'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField21: TFMTBCDField
      FieldName = 'PRECO_VENDA'
    end
    object FMTBCDField22: TFMTBCDField
      FieldName = 'PERCENTUAL_ORIGEM'
      DisplayFormat = '0.#####'
      Size = 5
    end
    object FMTBCDField23: TFMTBCDField
      FieldName = 'QUANTIDADE_COMPRADA'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField24: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField25: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField26: TFMTBCDField
      FieldName = 'VALOR_TOTAL_ITEM'
      DisplayFormat = '0.#####'
      Size = 0
    end
    object FMTBCDField27: TFMTBCDField
      FieldName = 'PARCELA_IMPORTADA'
      DisplayFormat = '0.#####'
    end
    object cdsNivel5NCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM'
      Origin = 'IPI_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object cdsNivel5GTIN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GTIN'
      Origin = 'PRD_CODBARRA'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
  end
  object dsNivel5: TDataSource
    DataSet = cdsNivel5
    Left = 452
    Top = 432
  end
  object cdsNivel6: TFDQuery
    OnCalcFields = cdsNivel6CalcFields
    CachedUpdates = True
    Connection = dbConn
    Transaction = FDTransac
    SQL.Strings = (
      
        'SELECT fi.PRD_REFER, fi.PRD_REFER_ITENS , pr.PRD_DESCRI, pt.PTI_' +
        'SIGLA, fi.FTI_UC, pr.PRD_UND,'
      '       pr.IPI_CODIGO AS NCM, pr.PRD_CODBARRA as GTIN,'
      '       CAST(0 AS NUMERIC(18,5)) AS PARCELA_IMPORTADA, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_TOTAL_ITEM, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_UNITARIO, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_COMPRA, '
      '       CAST(0 AS NUMERIC(18,5)) AS QUANTIDADE_COMPRADA, '
      '       CAST(0 AS NUMERIC(18,5)) AS PERCENTUAL_ORIGEM, '
      '       CAST(0 AS NUMERIC(18,5)) AS PRECO_VENDA, '
      '       CAST(0 AS NUMERIC(18,5)) AS PRECO_COMPRA_MEDIO '
      '  FROM FTC_IT01 fi '
      '  JOIN PRD0000 pr ON (pr.PRD_REFER = fi.PRD_REFER_ITENS)'
      '  JOIN PRD_TIPO pt ON (pt.PTI_CODIGO = pr.PTI_CODIGO)'
      '  WHERE fi.PRD_REFER = '#39#39' '
      'ORDER BY fi.PRD_REFER ')
    Left = 523
    Top = 360
    object StringField16: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object StringField17: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Origin = 'PRD_REFER_ITENS'
    end
    object StringField18: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
    object StringField19: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PTI_SIGLA'
      Origin = 'PTI_SIGLA'
      ProviderFlags = []
      Size = 2
    end
    object cdsNivel6FTI_UC: TFloatField
      FieldName = 'FTI_UC'
      Origin = 'FTI_UC'
    end
    object cdsNivel6CONSUMO_TOTAL: TFMTBCDField
      DisplayLabel = 'Consumo Total'
      FieldKind = fkCalculated
      FieldName = 'CONSUMO_TOTAL'
      Calculated = True
    end
    object StringField20: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      ProviderFlags = []
      Size = 6
    end
    object FMTBCDField29: TFMTBCDField
      FieldName = 'PRECO_COMPRA_MEDIO'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField30: TFMTBCDField
      FieldName = 'PRECO_VENDA'
    end
    object FMTBCDField31: TFMTBCDField
      FieldName = 'PERCENTUAL_ORIGEM'
      DisplayFormat = '0.#####'
      Size = 5
    end
    object FMTBCDField32: TFMTBCDField
      FieldName = 'QUANTIDADE_COMPRADA'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField33: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField34: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField35: TFMTBCDField
      FieldName = 'VALOR_TOTAL_ITEM'
      DisplayFormat = '0.#####'
      Size = 0
    end
    object FMTBCDField36: TFMTBCDField
      FieldName = 'PARCELA_IMPORTADA'
      DisplayFormat = '0.#####'
    end
    object cdsNivel6NCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM'
      Origin = 'IPI_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object cdsNivel6GTIN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GTIN'
      Origin = 'PRD_CODBARRA'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
  end
  object dsNivel6: TDataSource
    DataSet = cdsNivel6
    Left = 524
    Top = 432
  end
  object cdsNivel7: TFDQuery
    OnCalcFields = cdsNivel7CalcFields
    CachedUpdates = True
    Connection = dbConn
    Transaction = FDTransac
    SQL.Strings = (
      
        'SELECT fi.PRD_REFER, fi.PRD_REFER_ITENS , pr.PRD_DESCRI, pt.PTI_' +
        'SIGLA, fi.FTI_UC, pr.PRD_UND,'
      '       pr.IPI_CODIGO AS NCM, pr.PRD_CODBARRA as GTIN,'
      '       CAST(0 AS NUMERIC(18,5)) AS PARCELA_IMPORTADA, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_TOTAL_ITEM, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_UNITARIO, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_COMPRA, '
      '       CAST(0 AS NUMERIC(18,5)) AS QUANTIDADE_COMPRADA, '
      '       CAST(0 AS NUMERIC(18,5)) AS PERCENTUAL_ORIGEM, '
      '       CAST(0 AS NUMERIC(18,5)) AS PRECO_VENDA, '
      '       CAST(0 AS NUMERIC(18,5)) AS PRECO_COMPRA_MEDIO '
      '  FROM FTC_IT01 fi '
      '  JOIN PRD0000 pr ON (pr.PRD_REFER = fi.PRD_REFER_ITENS)'
      '  JOIN PRD_TIPO pt ON (pt.PTI_CODIGO = pr.PTI_CODIGO)'
      '  WHERE fi.PRD_REFER = '#39#39' '
      'ORDER BY fi.PRD_REFER ')
    Left = 603
    Top = 360
    object StringField21: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object StringField22: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Origin = 'PRD_REFER_ITENS'
    end
    object StringField23: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
    object StringField24: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PTI_SIGLA'
      Origin = 'PTI_SIGLA'
      ProviderFlags = []
      Size = 2
    end
    object cdsNivel7FTI_UC: TFloatField
      FieldName = 'FTI_UC'
      Origin = 'FTI_UC'
    end
    object cdsNivel7CONSUMO_TOTAL: TFMTBCDField
      DisplayLabel = 'Consumo Total'
      FieldKind = fkCalculated
      FieldName = 'CONSUMO_TOTAL'
      Calculated = True
    end
    object StringField25: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      ProviderFlags = []
      Size = 6
    end
    object FMTBCDField38: TFMTBCDField
      FieldName = 'PRECO_COMPRA_MEDIO'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField39: TFMTBCDField
      FieldName = 'PRECO_VENDA'
    end
    object FMTBCDField40: TFMTBCDField
      FieldName = 'PERCENTUAL_ORIGEM'
      DisplayFormat = '0.#####'
      Size = 5
    end
    object FMTBCDField41: TFMTBCDField
      FieldName = 'QUANTIDADE_COMPRADA'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField42: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField43: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField44: TFMTBCDField
      FieldName = 'VALOR_TOTAL_ITEM'
      DisplayFormat = '0.#####'
      Size = 0
    end
    object FMTBCDField45: TFMTBCDField
      FieldName = 'PARCELA_IMPORTADA'
      DisplayFormat = '0.#####'
    end
    object cdsNivel7NCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM'
      Origin = 'IPI_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object cdsNivel7GTIN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GTIN'
      Origin = 'PRD_CODBARRA'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
  end
  object dsNivel7: TDataSource
    DataSet = cdsNivel7
    Left = 604
    Top = 432
  end
  object cdsNivel8: TFDQuery
    OnCalcFields = cdsNivel8CalcFields
    CachedUpdates = True
    Connection = dbConn
    Transaction = FDTransac
    SQL.Strings = (
      
        'SELECT fi.PRD_REFER, fi.PRD_REFER_ITENS , pr.PRD_DESCRI, pt.PTI_' +
        'SIGLA, fi.FTI_UC, pr.PRD_UND,'
      '       pr.IPI_CODIGO AS NCM, pr.PRD_CODBARRA as GTIN,'
      '       CAST(0 AS NUMERIC(18,5)) AS PARCELA_IMPORTADA, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_TOTAL_ITEM, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_UNITARIO, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_COMPRA, '
      '       CAST(0 AS NUMERIC(18,5)) AS QUANTIDADE_COMPRADA, '
      '       CAST(0 AS NUMERIC(18,5)) AS PERCENTUAL_ORIGEM, '
      '       CAST(0 AS NUMERIC(18,5)) AS PRECO_VENDA, '
      '       CAST(0 AS NUMERIC(18,5)) AS PRECO_COMPRA_MEDIO '
      '  FROM FTC_IT01 fi '
      '  JOIN PRD0000 pr ON (pr.PRD_REFER = fi.PRD_REFER_ITENS)'
      '  JOIN PRD_TIPO pt ON (pt.PTI_CODIGO = pr.PTI_CODIGO)'
      '  WHERE fi.PRD_REFER = '#39#39' '
      'ORDER BY fi.PRD_REFER ')
    Left = 675
    Top = 360
    object StringField26: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object StringField27: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Origin = 'PRD_REFER_ITENS'
    end
    object StringField28: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
    object StringField29: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PTI_SIGLA'
      Origin = 'PTI_SIGLA'
      ProviderFlags = []
      Size = 2
    end
    object cdsNivel8FTI_UC: TFloatField
      FieldName = 'FTI_UC'
      Origin = 'FTI_UC'
    end
    object cdsNivel8CONSUMO_TOTAL: TFMTBCDField
      DisplayLabel = 'Consumo Total'
      FieldKind = fkCalculated
      FieldName = 'CONSUMO_TOTAL'
      Calculated = True
    end
    object StringField30: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      ProviderFlags = []
      Size = 6
    end
    object FMTBCDField47: TFMTBCDField
      FieldName = 'PRECO_COMPRA_MEDIO'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField48: TFMTBCDField
      FieldName = 'PRECO_VENDA'
    end
    object FMTBCDField49: TFMTBCDField
      FieldName = 'PERCENTUAL_ORIGEM'
      DisplayFormat = '0.#####'
      Size = 5
    end
    object FMTBCDField50: TFMTBCDField
      FieldName = 'QUANTIDADE_COMPRADA'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField51: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField52: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField53: TFMTBCDField
      FieldName = 'VALOR_TOTAL_ITEM'
      DisplayFormat = '0.#####'
      Size = 0
    end
    object FMTBCDField54: TFMTBCDField
      FieldName = 'PARCELA_IMPORTADA'
      DisplayFormat = '0.#####'
    end
    object cdsNivel8NCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM'
      Origin = 'IPI_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object cdsNivel8GTIN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GTIN'
      Origin = 'PRD_CODBARRA'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
  end
  object dsNivel8: TDataSource
    DataSet = cdsNivel8
    Left = 676
    Top = 432
  end
  object cdsNivel9: TFDQuery
    OnCalcFields = cdsNivel9CalcFields
    CachedUpdates = True
    Connection = dbConn
    Transaction = FDTransac
    SQL.Strings = (
      
        'SELECT fi.PRD_REFER, fi.PRD_REFER_ITENS , pr.PRD_DESCRI, pt.PTI_' +
        'SIGLA, fi.FTI_UC, pr.PRD_UND,'
      '       pr.IPI_CODIGO AS NCM, pr.PRD_CODBARRA as GTIN,'
      '       CAST(0 AS NUMERIC(18,5)) AS PARCELA_IMPORTADA, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_TOTAL_ITEM, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_UNITARIO, '
      '       CAST(0 AS NUMERIC(18,5)) AS VALOR_COMPRA, '
      '       CAST(0 AS NUMERIC(18,5)) AS QUANTIDADE_COMPRADA, '
      '       CAST(0 AS NUMERIC(18,5)) AS PERCENTUAL_ORIGEM, '
      '       CAST(0 AS NUMERIC(18,5)) AS PRECO_VENDA, '
      '       CAST(0 AS NUMERIC(18,5)) AS PRECO_COMPRA_MEDIO '
      '  FROM FTC_IT01 fi '
      '  JOIN PRD0000 pr ON (pr.PRD_REFER = fi.PRD_REFER_ITENS)'
      '  JOIN PRD_TIPO pt ON (pt.PTI_CODIGO = pr.PTI_CODIGO)'
      '  WHERE fi.PRD_REFER = '#39#39' '
      'ORDER BY fi.PRD_REFER ')
    Left = 755
    Top = 360
    object StringField31: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object StringField32: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Origin = 'PRD_REFER_ITENS'
    end
    object StringField33: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
    object StringField34: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PTI_SIGLA'
      Origin = 'PTI_SIGLA'
      ProviderFlags = []
      Size = 2
    end
    object cdsNivel9FTI_UC: TFloatField
      FieldName = 'FTI_UC'
      Origin = 'FTI_UC'
    end
    object cdsNivel9CONSUMO_TOTAL: TFMTBCDField
      DisplayLabel = 'Consumo Total'
      FieldKind = fkCalculated
      FieldName = 'CONSUMO_TOTAL'
      Calculated = True
    end
    object StringField35: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      ProviderFlags = []
      Size = 6
    end
    object FMTBCDField56: TFMTBCDField
      FieldName = 'PRECO_COMPRA_MEDIO'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField57: TFMTBCDField
      FieldName = 'PRECO_VENDA'
    end
    object FMTBCDField58: TFMTBCDField
      FieldName = 'PERCENTUAL_ORIGEM'
      DisplayFormat = '0.#####'
      Size = 5
    end
    object FMTBCDField59: TFMTBCDField
      FieldName = 'QUANTIDADE_COMPRADA'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField60: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField61: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      DisplayFormat = '0.#####'
    end
    object FMTBCDField62: TFMTBCDField
      FieldName = 'VALOR_TOTAL_ITEM'
      DisplayFormat = '0.#####'
      Size = 0
    end
    object FMTBCDField63: TFMTBCDField
      FieldName = 'PARCELA_IMPORTADA'
      DisplayFormat = '0.#####'
    end
    object cdsNivel9NCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM'
      Origin = 'IPI_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object cdsNivel9GTIN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GTIN'
      Origin = 'PRD_CODBARRA'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
  end
  object dsNivel9: TDataSource
    DataSet = cdsNivel9
    Left = 756
    Top = 432
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 796
    Top = 193
    PixelsPerInch = 96
    object cxStyleBold: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object frxDBNivel9: TfrxDBDataset
    UserName = 'frxDBNivel9'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRD_REFER=PRD_REFER'
      'PRD_REFER_ITENS=PRD_REFER_ITENS'
      'PRD_DESCRI=PRD_DESCRI'
      'PTI_SIGLA=PTI_SIGLA'
      'FTI_UC=FTI_UC'
      'CONSUMO_TOTAL=CONSUMO_TOTAL'
      'PRD_UND=PRD_UND'
      'PRECO_COMPRA_MEDIO=PRECO_COMPRA_MEDIO'
      'PRECO_VENDA=PRECO_VENDA'
      'PERCENTUAL_ORIGEM=PERCENTUAL_ORIGEM'
      'QUANTIDADE_COMPRADA=QUANTIDADE_COMPRADA'
      'VALOR_COMPRA=VALOR_COMPRA'
      'VALOR_UNITARIO=VALOR_UNITARIO'
      'VALOR_TOTAL_ITEM=VALOR_TOTAL_ITEM'
      'PARCELA_IMPORTADA=PARCELA_IMPORTADA'
      'NCM=NCM'
      'GTIN=GTIN')
    DataSet = cdsNivel9
    BCDToCurrency = False
    Left = 756
    Top = 489
  end
  object frxDBNivel8: TfrxDBDataset
    UserName = 'frxDBNivel8'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRD_REFER=PRD_REFER'
      'PRD_REFER_ITENS=PRD_REFER_ITENS'
      'PRD_DESCRI=PRD_DESCRI'
      'PTI_SIGLA=PTI_SIGLA'
      'FTI_UC=FTI_UC'
      'CONSUMO_TOTAL=CONSUMO_TOTAL'
      'PRD_UND=PRD_UND'
      'PRECO_COMPRA_MEDIO=PRECO_COMPRA_MEDIO'
      'PRECO_VENDA=PRECO_VENDA'
      'PERCENTUAL_ORIGEM=PERCENTUAL_ORIGEM'
      'QUANTIDADE_COMPRADA=QUANTIDADE_COMPRADA'
      'VALOR_COMPRA=VALOR_COMPRA'
      'VALOR_UNITARIO=VALOR_UNITARIO'
      'VALOR_TOTAL_ITEM=VALOR_TOTAL_ITEM'
      'PARCELA_IMPORTADA=PARCELA_IMPORTADA'
      'NCM=NCM'
      'GTIN=GTIN')
    DataSet = cdsNivel8
    BCDToCurrency = False
    Left = 676
    Top = 489
  end
  object frxDBNivel7: TfrxDBDataset
    UserName = 'frxDBNivel7'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRD_REFER=PRD_REFER'
      'PRD_REFER_ITENS=PRD_REFER_ITENS'
      'PRD_DESCRI=PRD_DESCRI'
      'PTI_SIGLA=PTI_SIGLA'
      'FTI_UC=FTI_UC'
      'CONSUMO_TOTAL=CONSUMO_TOTAL'
      'PRD_UND=PRD_UND'
      'PRECO_COMPRA_MEDIO=PRECO_COMPRA_MEDIO'
      'PRECO_VENDA=PRECO_VENDA'
      'PERCENTUAL_ORIGEM=PERCENTUAL_ORIGEM'
      'QUANTIDADE_COMPRADA=QUANTIDADE_COMPRADA'
      'VALOR_COMPRA=VALOR_COMPRA'
      'VALOR_UNITARIO=VALOR_UNITARIO'
      'VALOR_TOTAL_ITEM=VALOR_TOTAL_ITEM'
      'PARCELA_IMPORTADA=PARCELA_IMPORTADA'
      'NCM=NCM'
      'GTIN=GTIN')
    DataSet = cdsNivel7
    BCDToCurrency = False
    Left = 604
    Top = 489
  end
  object frxDBNivel6: TfrxDBDataset
    UserName = 'frxDBNivel6'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRD_REFER=PRD_REFER'
      'PRD_REFER_ITENS=PRD_REFER_ITENS'
      'PRD_DESCRI=PRD_DESCRI'
      'PTI_SIGLA=PTI_SIGLA'
      'FTI_UC=FTI_UC'
      'CONSUMO_TOTAL=CONSUMO_TOTAL'
      'PRD_UND=PRD_UND'
      'PRECO_COMPRA_MEDIO=PRECO_COMPRA_MEDIO'
      'PRECO_VENDA=PRECO_VENDA'
      'PERCENTUAL_ORIGEM=PERCENTUAL_ORIGEM'
      'QUANTIDADE_COMPRADA=QUANTIDADE_COMPRADA'
      'VALOR_COMPRA=VALOR_COMPRA'
      'VALOR_UNITARIO=VALOR_UNITARIO'
      'VALOR_TOTAL_ITEM=VALOR_TOTAL_ITEM'
      'PARCELA_IMPORTADA=PARCELA_IMPORTADA'
      'NCM=NCM'
      'GTIN=GTIN')
    DataSet = cdsNivel6
    BCDToCurrency = False
    Left = 524
    Top = 489
  end
  object frxDBNivel5: TfrxDBDataset
    UserName = 'frxDBNivel5'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRD_REFER=PRD_REFER'
      'PRD_REFER_ITENS=PRD_REFER_ITENS'
      'PRD_DESCRI=PRD_DESCRI'
      'PTI_SIGLA=PTI_SIGLA'
      'FTI_UC=FTI_UC'
      'CONSUMO_TOTAL=CONSUMO_TOTAL'
      'PRD_UND=PRD_UND'
      'PRECO_COMPRA_MEDIO=PRECO_COMPRA_MEDIO'
      'PRECO_VENDA=PRECO_VENDA'
      'PERCENTUAL_ORIGEM=PERCENTUAL_ORIGEM'
      'QUANTIDADE_COMPRADA=QUANTIDADE_COMPRADA'
      'VALOR_COMPRA=VALOR_COMPRA'
      'VALOR_UNITARIO=VALOR_UNITARIO'
      'VALOR_TOTAL_ITEM=VALOR_TOTAL_ITEM'
      'PARCELA_IMPORTADA=PARCELA_IMPORTADA'
      'NCM=NCM'
      'GTIN=GTIN')
    DataSet = cdsNivel5
    BCDToCurrency = False
    Left = 452
    Top = 489
  end
  object frxDBNivel4: TfrxDBDataset
    UserName = 'frxDBNivel4'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRD_REFER=PRD_REFER'
      'PRD_REFER_ITENS=PRD_REFER_ITENS'
      'PRD_DESCRI=PRD_DESCRI'
      'PTI_SIGLA=PTI_SIGLA'
      'FTI_UC=FTI_UC'
      'CONSUMO_TOTAL=CONSUMO_TOTAL'
      'PRD_UND=PRD_UND'
      'PRECO_COMPRA_MEDIO=PRECO_COMPRA_MEDIO'
      'PRECO_VENDA=PRECO_VENDA'
      'PERCENTUAL_ORIGEM=PERCENTUAL_ORIGEM'
      'QUANTIDADE_COMPRADA=QUANTIDADE_COMPRADA'
      'VALOR_COMPRA=VALOR_COMPRA'
      'VALOR_UNITARIO=VALOR_UNITARIO'
      'VALOR_TOTAL_ITEM=VALOR_TOTAL_ITEM'
      'PARCELA_IMPORTADA=PARCELA_IMPORTADA'
      'NCM=NCM'
      'GTIN=GTIN')
    DataSet = cdsNivel4
    BCDToCurrency = False
    Left = 380
    Top = 489
  end
  object frxDBNivel3: TfrxDBDataset
    UserName = 'frxDBNivel3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRD_REFER=PRD_REFER'
      'PRD_REFER_ITENS=PRD_REFER_ITENS'
      'PRD_DESCRI=PRD_DESCRI'
      'PTI_SIGLA=PTI_SIGLA'
      'FTI_UC=FTI_UC'
      'CONSUMO_TOTAL=CONSUMO_TOTAL'
      'PRD_UND=PRD_UND'
      'PARCELA_IMPORTADA=PARCELA_IMPORTADA'
      'VALOR_TOTAL_ITEM=VALOR_TOTAL_ITEM'
      'VALOR_UNITARIO=VALOR_UNITARIO'
      'VALOR_COMPRA=VALOR_COMPRA'
      'QUANTIDADE_COMPRADA=QUANTIDADE_COMPRADA'
      'PERCENTUAL_ORIGEM=PERCENTUAL_ORIGEM'
      'PRECO_VENDA=PRECO_VENDA'
      'PRECO_COMPRA_MEDIO=PRECO_COMPRA_MEDIO'
      'NCM=NCM'
      'GTIN=GTIN')
    DataSet = cdsNivel3
    BCDToCurrency = False
    Left = 300
    Top = 489
  end
  object mtGrid: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 860
    Top = 361
    object mtGridPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object mtGridPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Origin = 'PRD_REFER_ITENS'
    end
    object mtGridPRD_DESCRI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
    object mtGridPTI_SIGLA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PTI_SIGLA'
      Origin = 'PTI_SIGLA'
      ProviderFlags = []
      Size = 2
    end
    object mtGridPRD_UND: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      ProviderFlags = []
      Size = 6
    end
    object mtGridNCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM'
      Origin = 'IPI_CODIGO'
      ProviderFlags = []
      Size = 8
    end
    object mtGridGTIN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GTIN'
      Origin = 'PRD_CODBARRA'
      ProviderFlags = []
      Size = 13
    end
    object mtGridFTI_UC: TFloatField
      FieldName = 'FTI_UC'
      Origin = 'FTI_UC'
    end
    object mtGridCONSUMO_TOTAL: TFMTBCDField
      DisplayLabel = 'Consumo Total'
      FieldKind = fkCalculated
      FieldName = 'CONSUMO_TOTAL'
      Calculated = True
    end
    object mtGridPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
    end
    object mtGridQUANTIDADE_COMPRADA: TFMTBCDField
      FieldName = 'QUANTIDADE_COMPRADA'
      DisplayFormat = '0.#####'
    end
    object mtGridVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      DisplayFormat = '0.#####'
    end
    object mtGridVALOR_TOTAL_ITEM: TFMTBCDField
      FieldName = 'VALOR_TOTAL_ITEM'
      DisplayFormat = '0.#####'
      Size = 0
    end
    object mtGridPERCENTUAL_ORIGEM: TFMTBCDField
      FieldName = 'PERCENTUAL_ORIGEM'
      DisplayFormat = '0.#####'
      Size = 5
    end
    object mtGridPRECO_COMPRA_MEDIO: TFMTBCDField
      FieldName = 'PRECO_COMPRA_MEDIO'
      DisplayFormat = '0.#####'
    end
    object mtGridVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      DisplayFormat = '0.#####'
    end
    object mtGridPARCELA_IMPORTADA: TFMTBCDField
      FieldName = 'PARCELA_IMPORTADA'
      DisplayFormat = '0.#####'
    end
  end
  object SalvarFicha: TSaveDialog
    DefaultExt = 'html'
    Filter = 'Text files (*.html)|*.html|All files (*.*)|*.*'
    Left = 860
    Top = 433
  end
end
