inherited frmPesqProcessos: TfrmPesqProcessos
  Caption = 'Pesquisa de processos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc1: TPageControl
    inherited tsNotas: TTabSheet
      inherited pnlControle: TPanel
        inherited pnlFiltro: TPanel
          inherited pnlpn1: TPanel
            object campolivre: TLabeledEdit
              Left = 16
              Top = 24
              Width = 409
              Height = 21
              EditLabel.Width = 46
              EditLabel.Height = 13
              EditLabel.Caption = 'Descri'#231#227'o'
              TabOrder = 0
              OnChange = campolivreChange
            end
          end
        end
      end
      inherited cxgrd1: TcxGrid
        inherited cxgrd1DBTableView1: TcxGridDBTableView
          OnDblClick = cxgrd1DBTableView1DblClick
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys]
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxgrd1DBTableView1PRO_CODIGO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'PRO_CODIGO'
          end
          object cxgrd1DBTableView1PRO_DESCRICAO: TcxGridDBColumn
            Caption = 'Processos'
            DataBinding.FieldName = 'PRO_DESCRICAO'
            Width = 532
          end
          object cxgrd1DBTableView1SRV_NOME: TcxGridDBColumn
            Caption = 'Tipo processo'
            DataBinding.FieldName = 'SRV_NOME'
            Visible = False
            GroupIndex = 0
          end
        end
        object cxgrd1TableView1: TcxGridTableView [1]
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object cxgrd1DBTableView2: TcxGridDBTableView [2]
          OnDblClick = cxgrd1DBTableView2DblClick
          Navigator.Buttons.CustomButtons = <>
          OnCellClick = cxgrd1DBTableView2CellClick
          DataController.DataSource = dsBuscaDetalhes
          DataController.DetailKeyFieldNames = 'PRO_CODIGO'
          DataController.KeyFieldNames = 'PRO_CODIGO'
          DataController.MasterKeyFieldNames = 'PRO_CODIGO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ShowEditButtons = gsebAlways
          OptionsView.GroupByBox = False
          object cxgrd1DBTableView2OPE_CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'OPE_CODIGO'
          end
          object cxgrd1DBTableView2OPE_DESCRICAO: TcxGridDBColumn
            Caption = 'Opera'#231#245'es'
            DataBinding.FieldName = 'OPE_DESCRICAO'
          end
          object cxgrd1DBTableView2POP_SEQ: TcxGridDBColumn
            Caption = 'Sequ'#234'ncias'
            DataBinding.FieldName = 'POP_SEQ'
          end
          object cxgrd1DBTableView2Column1: TcxGridDBColumn
            Caption = 'Estimado'
            DataBinding.FieldName = 'POP_TEMPOESTIMADO'
            Options.ShowEditButtons = isebNever
          end
          object cxgrd1DBTableView2Column2: TcxGridDBColumn
            Caption = 'Valores de qualidade'
            RepositoryItem = cxEditRepository1ButtonItem1
            MinWidth = 100
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 120
          end
        end
        object cxgrd1DBCardView1: TcxGridDBCardView [3]
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsBuscaDetalhes
          DataController.DetailKeyFieldNames = 'PRO_CODIGO'
          DataController.KeyFieldNames = 'PRO_CODIGO'
          DataController.MasterKeyFieldNames = 'PRO_CODIGO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CardIndent = 7
          object cxgrd1DBCardView1OPE_DESCRICAO: TcxGridDBCardViewRow
            DataBinding.FieldName = 'OPE_DESCRICAO'
            Position.BeginsLayer = True
          end
          object cxgrd1DBCardView1POP_SEQ: TcxGridDBCardViewRow
            DataBinding.FieldName = 'POP_SEQ'
            Position.BeginsLayer = True
          end
        end
        object cxgrd1DBLayoutView1: TcxGridDBLayoutView [4]
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsBuscaDetalhes
          DataController.DetailKeyFieldNames = 'PRO_CODIGO'
          DataController.KeyFieldNames = 'PRO_CODIGO'
          DataController.MasterKeyFieldNames = 'PRO_CODIGO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxgrd1DBLayoutView1OPE_DESCRICAO: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'OPE_DESCRICAO'
            LayoutItem = cxgrd1DBLayoutView1LayoutItem2
          end
          object cxgrd1DBLayoutView1Group_Root: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object cxgrd1DBLayoutView1LayoutItem2: TcxGridLayoutItem
            Parent = cxgrd1DBLayoutView1Group_Root
            Index = 0
          end
        end
        inherited cxgrdlvlGrid1Level1: TcxGridLevel
          object cxgrd1Level1: TcxGridLevel
            GridView = cxgrd1DBTableView2
          end
        end
      end
    end
  end
  inherited pnlUtilTop: TPanel
    inherited btnExclui: TSpeedButton
      OnClick = btnNovoClick
    end
    inherited btnConsulta: TSpeedButton
      Left = 438
      Top = 2
      Hint = 'Incluir valores aos parametros'
      Caption = ''
      Glyph.Data = {00000000}
      ExplicitLeft = 438
      ExplicitTop = 2
    end
    inherited btnEdita: TSpeedButton
      OnClick = btnNovoClick
    end
    inherited btnExtra: TSpeedButton
      Left = 272
      Width = 98
      Enabled = True
      ExplicitLeft = 272
      ExplicitWidth = 98
    end
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\exemplo\EXEMPLO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=FB')
  end
  inherited cdsBusca: TFDQuery
    SQL.Strings = (
      'select pro_codigo, pro_descricao, srv_nome'
      ' from processos p '
      'left join servico se on (se.srv_codigo = p.srv_CODIGO)')
    object cdsBuscaPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'PRO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBuscaPRO_DESCRICAO: TStringField
      FieldName = 'PRO_DESCRICAO'
      Origin = 'PRO_DESCRICAO'
      Size = 100
    end
    object cdsBuscaSRV_NOME: TStringField
      FieldName = 'SRV_NOME'
      Origin = 'SRV_NOME'
      Size = 60
    end
  end
  inherited frxPadrao: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited cdsBuscaDetalhes: TFDQuery
    Transaction = nil
    SQL.Strings = (
      
        'select po.pro_codigo, op.ope_descricao, po.pop_seq, pop_tempoest' +
        'imado, op.ope_codigo'
      
        ' from processos_operacoes  po join operacoes op on (op.ope_codig' +
        'o = po.ope_codigo)'
      ' order by po.pro_codigo,po.pop_seq')
    object cdsBuscaDetalhesPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'PRO_CODIGO'
      Required = True
    end
    object cdsBuscaDetalhesOPE_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo'
      FieldName = 'OPE_CODIGO'
      Origin = 'OPE_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsBuscaDetalhesOPE_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPE_DESCRICAO'
      Origin = 'OPE_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object cdsBuscaDetalhesPOP_SEQ: TIntegerField
      FieldName = 'POP_SEQ'
      Origin = 'POP_SEQ'
    end
    object cdsBuscaDetalhesPOP_TEMPOESTIMADO: TTimeField
      FieldName = 'POP_TEMPOESTIMADO'
      Origin = 'POP_TEMPOESTIMADO'
      DisplayFormat = 'hh:nn'
    end
  end
  object cxEditRepository1: TcxEditRepository
    Left = 260
    Top = 289
    object cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Caption = 'Incluir qualidade'
          Default = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFA09893A09893A09893A09893A09893A09893A0
            9893A09893A09893A09893A09893A09893A09893A09893FF00FFA09893FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFA09893A09893FFFFFF878A89878A89878A89878A89878A89FF
            FFFFFFFFFF878A89878A89878A89878A89878A89FFFFFFA09893A09893FFFFFF
            878A89526A554260583C47A4878A89FFFFFFFFFFFF878A895B66444D90894EB4
            B3878A89FFFFFFA09893A09893FFFFFF878A893E5B7A2B3ECF51738C878A89FF
            FFFFFFFFFF878A8955C5C36FBDB5727D5B878A89FFFFFFA09893A09893FFFFFF
            878A89878A89878A89878A89878A89FFFFFFFFFFFF878A89878A89878A89878A
            89878A89FFFFFFA09893A09893FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA09893A09893FFFFFF
            878A89878A89878A89878A89878A89FFFFFFFFFFFF878A89878A89878A89878A
            89878A89FFFFFFA09893A09893FFFFFF878A894F5D4348572F075DB4878A89FF
            FFFFFFFFFF878A89344B2B7B867AC0C8C4878A89FFFFFFA09893A09893FFFFFF
            878A894978721F83C24B8B96878A89FFFFFFFFFFFF878A89A1B7AFA9BAB3778D
            77878A89FFFFFFA09893A09893FFFFFF878A89878A89878A89878A89878A89FF
            FFFFFFFFFF878A89878A89878A89878A89878A89FFFFFFA09893A09893FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFA09893A09893C6BCB4C6BCB4C6BCB4C6BCB4C6BCB4C6BCB4C6
            BCB4C6BCB4C6BCB4C6BCB4C6BCB4C6BCB4C6BCB4C6BCB4A09893FF00FFA09893
            A09893A09893A09893A09893A09893A09893A09893A09893A09893A09893A098
            93A09893A09893FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Hint = 'incluir registro de qualidade'
          Kind = bkGlyph
        end>
      Properties.ViewStyle = vsButtonsOnly
    end
  end
end
