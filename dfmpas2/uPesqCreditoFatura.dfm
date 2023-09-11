inherited frmPesqcreditoFatura: TfrmPesqcreditoFatura
  Caption = 'Pesquisa de cr'#233'ditos'
  ClientWidth = 491
  ExplicitWidth = 499
  ExplicitHeight = 482
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 491
    ExplicitWidth = 491
    DesignSize = (
      491
      41)
    inherited btnExclui: TSpeedButton
      Left = 95
      Top = -4
      Visible = False
      ExplicitLeft = 95
      ExplicitTop = -4
    end
    inherited btnNovo: TSpeedButton
      Left = 95
      Top = -4
      Visible = False
      ExplicitLeft = 95
      ExplicitTop = -4
    end
    inherited btnConsulta: TSpeedButton
      Left = 108
      Top = -4
      ExplicitLeft = 108
      ExplicitTop = -4
    end
    inherited btnEdita: TSpeedButton
      Left = 124
      Top = -4
      Visible = False
      ExplicitLeft = 124
      ExplicitTop = -4
    end
    inherited btnFechar: TSpeedButton
      Left = 427
      ExplicitLeft = 444
    end
    inherited btnImprime: TSpeedButton
      Left = 264
      ExplicitLeft = 315
    end
    inherited btnExtra: TSpeedButton
      Left = 95
      Top = -4
      ExplicitLeft = 95
      ExplicitTop = -4
    end
    inherited btnExcel: TSpeedButton
      Left = 346
      ExplicitLeft = 397
    end
  end
  inherited PageControl1: TPageControl
    Width = 491
    ExplicitWidth = 491
    inherited tsNotas: TTabSheet
      ExplicitWidth = 483
      inherited pnControle: TPanel
        Width = 483
        ExplicitWidth = 483
        inherited pnFiltro: TPanel
          Width = 483
          Height = 79
          Align = alClient
          ExplicitWidth = 483
          ExplicitHeight = 79
          inherited pn1: TPanel
            Top = 0
            Width = 483
            Height = 79
            Align = alClient
            ExplicitTop = 0
            ExplicitWidth = 483
            ExplicitHeight = 79
            inherited btnPesquisa: TSpeedButton
              Left = 386
              ExplicitLeft = 386
            end
            inherited btnLimpar: TSpeedButton
              Left = 386
              ExplicitLeft = 386
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Left = 19
        Top = 3
        Width = 89
        Height = 64
        Align = alNone
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgTitleClick, dgTitleHotTrack]
        ReadOnly = False
        Visible = False
        Columns = <
          item
            Expanded = False
            FieldName = 'selecionado'
            ReadOnly = True
            Title.Caption = '*'
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Documento'
            ReadOnly = True
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data'
            ReadOnly = True
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'credito'
            ReadOnly = True
            Title.Caption = 'Cr'#233'dito'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'usado'
            Title.Caption = 'Utilizar'
            Visible = True
          end>
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 79
        Width = 483
        Height = 271
        Align = alClient
        TabOrder = 2
        object cxGrid1DBTableView1: TcxGridDBTableView
          PopupMenu = mnuGridPesquisa
          OnDblClick = cxGrid1DBTableView1DblClick
          OnKeyDown = cxGrid1DBTableView1KeyDown
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
          DataController.DataSource = dsBusca
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1selecionado: TcxGridDBColumn
            Caption = '*'
            DataBinding.FieldName = 'selecionado'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.OnChange = cxGrid1DBTableView1selecionadoPropertiesChange
            HeaderAlignmentHorz = taCenter
            Width = 31
          end
          object cxGrid1DBTableView1Codigo: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo'
            Visible = False
          end
          object cxGrid1DBTableView1Documento: TcxGridDBColumn
            DataBinding.FieldName = 'Documento'
            Options.Editing = False
            Width = 115
          end
          object cxGrid1DBTableView1Data: TcxGridDBColumn
            DataBinding.FieldName = 'Data'
            Options.Editing = False
            Width = 94
          end
          object cxGrid1DBTableView1credito: TcxGridDBColumn
            Caption = 'Cr'#233'dito'
            DataBinding.FieldName = 'credito'
            Options.Editing = False
            Width = 110
          end
          object cxGrid1DBTableView1usado: TcxGridDBColumn
            Caption = 'Utilizar'
            DataBinding.FieldName = 'usado'
            Width = 118
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  inherited Panel2: TPanel
    Width = 491
    ExplicitWidth = 491
    DesignSize = (
      491
      36)
    inherited btCalc: TSpeedButton
      Width = 13
      Visible = False
      ExplicitWidth = 13
    end
    inherited btnSelect: TSpeedButton
      Left = 291
      Top = 5
      Width = 94
      Caption = 'Confirmar'
      Visible = True
      ExplicitLeft = 298
      ExplicitTop = 5
      ExplicitWidth = 94
    end
    inherited lbCntRegistros: TLabel
      Left = 23
      Top = 11
      ExplicitLeft = 23
      ExplicitTop = 11
    end
    object Label1: TLabel
      Left = 108
      Top = 11
      Width = 65
      Height = 13
      Caption = 'Total utilizar :'
    end
    object DBText1: TDBText
      Left = 176
      Top = 11
      Width = 65
      Height = 16
      DataField = 'totalusado'
      DataSource = dsBusca
    end
    object btnCancelar: TBitBtn
      Left = 391
      Top = 5
      Width = 91
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&Abandonar'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      ModalResult = 2
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnCancelarClick
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 232
    Top = 256
  end
  inherited qAux: TSQLQuery
    Left = 322
    Top = 253
  end
  inherited qAux2: TSQLQuery
    Left = 274
    Top = 252
  end
  inherited qAux3: TSQLQuery
    Left = 298
    Top = 252
  end
  inherited qBusco: TSQLQuery
    object strngfldBuscoCodigo: TStringField
      FieldName = 'Codigo'
      Size = 5
    end
    object qBuscoDocumento: TStringField
      FieldName = 'Documento'
    end
    object qBuscoData: TSQLTimeStampField
      FieldName = 'Data'
    end
    object qBuscocredito: TFMTBCDField
      FieldName = 'credito'
      Precision = 15
    end
    object qBuscousado: TFMTBCDField
      FieldName = 'usado'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
  end
  inherited cdsBusco: TClientDataSet
    AggregatesActive = True
    OnNewRecord = cdsBuscoNewRecord
    object cdsBuscoselecionado: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'selecionado'
      OnChange = cdsBuscoselecionadoChange
      OnGetText = cdsBuscoselecionadoGetText
    end
    object cdsBuscoCodigo: TStringField
      FieldName = 'Codigo'
      Size = 5
    end
    object cdsBuscoDocumento: TStringField
      FieldName = 'Documento'
    end
    object cdsBuscoData: TSQLTimeStampField
      FieldName = 'Data'
    end
    object cdsBuscocredito: TFMTBCDField
      FieldName = 'credito'
      Precision = 15
    end
    object cdsBuscousado: TFMTBCDField
      FieldName = 'usado'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsBuscousadoChange
      OnValidate = cdsBuscousadoValidate
      Precision = 15
    end
    object cdsBuscototalusado: TAggregateField
      FieldName = 'totalusado'
      Active = True
      currency = True
      DisplayName = 'Total'
      Expression = 'sum(usado)'
    end
  end
  inherited mnuGridPesquisa: TPopupMenu
    Left = 204
    Top = 312
  end
end
