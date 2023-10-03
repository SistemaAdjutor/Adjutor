inherited frmFormacaoPreco: TfrmFormacaoPreco
  Caption = 'Forma'#231#227'o pre'#231'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc1: TPageControl
    inherited tsNotas: TTabSheet
      inherited pnlControle: TPanel
        Visible = False
        inherited pnlFiltro: TPanel
          inherited pnlpn1: TPanel
            Visible = False
          end
        end
      end
      inherited cxgrd1: TcxGrid
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        inherited cxgrd1DBTableView1: TcxGridDBTableView
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.SyncMode = False
          DataController.MultiThreadedOptions.Sorting = bFalse
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxgrd1DBTableView1CIO_MES: TcxGridDBColumn
            Caption = 'M'#234's'
            DataBinding.FieldName = 'CIO_MES'
            Width = 81
          end
          object cxgrd1DBTableView1CIO_ANO: TcxGridDBColumn
            Caption = 'Ano'
            DataBinding.FieldName = 'CIO_ANO'
            Width = 103
          end
        end
        object cxgrd1DBTableView2: TcxGridDBTableView [1]
          Synchronization = False
          Navigator.Buttons.CustomButtons = <>
          DataController.DataModeController.SyncMode = False
          DataController.DataSource = dsBuscaDetalhes
          DataController.DetailKeyFieldNames = 'MESANO'
          DataController.KeyFieldNames = 'MESANO'
          DataController.MasterKeyFieldNames = 'MESANO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxgrd1DBTableView2SET_CODIGO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'SET_CODIGO'
          end
          object cxgrd1DBTableView2SET_DESCRICAO: TcxGridDBColumn
            Caption = 'Setor'
            DataBinding.FieldName = 'SET_DESCRICAO'
            Width = 300
          end
          object cxgrd1DBTableView2CIO_CUSTOS: TcxGridDBColumn
            Caption = 'Custos'
            DataBinding.FieldName = 'CIO_CUSTOS'
          end
          object cxgrd1DBTableView2CIO_DESPESAS: TcxGridDBColumn
            Caption = 'Despesas'
            DataBinding.FieldName = 'CIO_DESPESAS'
          end
          object cxgrd1DBTableView2CIO_IMPOSTOS: TcxGridDBColumn
            Caption = 'Impostos'
            DataBinding.FieldName = 'CIO_IMPOSTOS'
          end
          object cxgrd1DBTableView2CIO_MKP: TcxGridDBColumn
            Caption = 'Mkp de custo'
            DataBinding.FieldName = 'CIO_MKP'
          end
          object cxgrd1DBTableView2CIO_REPORTE: TcxGridDBColumn
            Caption = 'Reporte'
            DataBinding.FieldName = 'CIO_REPORTE'
          end
          object cxgrd1DBTableView2CIO_PV: TcxGridDBColumn
            Caption = 'PV'
            DataBinding.FieldName = 'CIO_PV'
          end
          object cxgrd1DBTableView2CIO_TOTAL: TcxGridDBColumn
            Caption = 'Ponto de equil'#237'brio'
            DataBinding.FieldName = 'CIO_TOTAL'
          end
        end
        object cxgrd1DBLayoutView1: TcxGridDBLayoutView [2]
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsBuscaDetalhes
          DataController.DetailKeyFieldNames = 'MESANO'
          DataController.KeyFieldNames = 'MESANO'
          DataController.MasterKeyFieldNames = 'MESANO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxgrd1DBLayoutView1CIO_CUSTOS: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'CIO_CUSTOS'
            LayoutItem = cxgrd1DBLayoutView1LayoutItem6
          end
          object cxgrd1DBLayoutView1CIO_DESPESAS: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'CIO_DESPESAS'
            LayoutItem = cxgrd1DBLayoutView1LayoutItem7
          end
          object cxgrd1DBLayoutView1CIO_IMPOSTOS: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'CIO_IMPOSTOS'
            LayoutItem = cxgrd1DBLayoutView1LayoutItem8
          end
          object cxgrd1DBLayoutView1CIO_MKP: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'CIO_MKP'
            LayoutItem = cxgrd1DBLayoutView1LayoutItem9
          end
          object cxgrd1DBLayoutView1CIO_REPORTE: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'CIO_REPORTE'
            LayoutItem = cxgrd1DBLayoutView1LayoutItem10
          end
          object cxgrd1DBLayoutView1CIO_PV: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'CIO_PV'
            LayoutItem = cxgrd1DBLayoutView1LayoutItem11
          end
          object cxgrd1DBLayoutView1SRV_NOME: TcxGridDBLayoutViewItem
            DataBinding.FieldName = 'SRV_NOME'
            LayoutItem = cxgrd1DBLayoutView1LayoutItem12
          end
          object cxgrd1DBLayoutView1Group_Root: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Left = 80
            Top = 64
            Index = -1
          end
          object cxgrd1DBLayoutView1LayoutItem6: TcxGridLayoutItem
            Parent = cxgrd1DBLayoutView1Group_Root
            Index = 0
          end
          object cxgrd1DBLayoutView1LayoutItem7: TcxGridLayoutItem
            Parent = cxgrd1DBLayoutView1Group_Root
            Index = 1
          end
          object cxgrd1DBLayoutView1LayoutItem8: TcxGridLayoutItem
            Parent = cxgrd1DBLayoutView1Group_Root
            Index = 2
          end
          object cxgrd1DBLayoutView1LayoutItem9: TcxGridLayoutItem
            Parent = cxgrd1DBLayoutView1Group_Root
            Index = 3
          end
          object cxgrd1DBLayoutView1LayoutItem10: TcxGridLayoutItem
            Parent = cxgrd1DBLayoutView1Group_Root
            Index = 4
          end
          object cxgrd1DBLayoutView1LayoutItem11: TcxGridLayoutItem
            Parent = cxgrd1DBLayoutView1Group_Root
            Index = 5
          end
          object cxgrd1DBLayoutView1LayoutItem12: TcxGridLayoutItem
            Parent = cxgrd1DBLayoutView1Group_Root
            Index = 6
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
      Visible = False
      OnClick = btnNovoClick
    end
    inherited btnConsulta: TSpeedButton
      OnClick = btnNovoClick
    end
    inherited btnEdita: TSpeedButton
      OnClick = btnNovoClick
    end
    inherited btnrelatorios: TJvArrowButton
      Visible = False
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 176
    Top = 48
  end
  inherited cxLocalizer1: TcxLocalizer
    Top = 112
  end
  inherited FDTransac: TFDTransaction
    Left = 400
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 488
    Top = 72
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
    Transaction = nil
    SQL.Strings = (
      
        'SELECT DISTINCT cio_mes,cio_ano,cast(cio_ano as varchar(4))|| ca' +
        'st(lpad (cio_mes,2,'#39'0'#39')  as varchar(2)) as mesano '
      'FROM CUSTOINDUST ci '
      'ORDER BY 3 DESC')
    object cdsBuscaCIO_MES: TIntegerField
      FieldName = 'CIO_MES'
      Origin = 'CIO_MES'
      Required = True
    end
    object cdsBuscaCIO_ANO: TIntegerField
      FieldName = 'CIO_ANO'
      Origin = 'CIO_ANO'
      Required = True
    end
    object cdsBuscaMESANO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MESANO'
      Origin = 'MESANO'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
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
      
        'SELECT SET_DESCRICAO, cast(cio_ano as varchar(4))|| cast(lpad (c' +
        'io_mes,2,'#39'0'#39')  as varchar(2)) as mesano ,'
      '    ci.*  , cio_pv * CIO_REPORTE as cio_total'
      
        'FROM CUSTOINDUST ci JOIN SETOR se on se.sET_codigo = ci.SET_CODI' +
        'GO')
    object cdsBuscaDetalhesCIO_CODIGO: TIntegerField
      FieldName = 'CIO_CODIGO'
      Origin = 'CIO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBuscaDetalhesEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMP_CODIGO'
      Size = 3
    end
    object cdsBuscaDetalhesCIO_MES: TIntegerField
      FieldName = 'CIO_MES'
      Origin = 'CIO_MES'
      Required = True
    end
    object cdsBuscaDetalhesCIO_ANO: TIntegerField
      FieldName = 'CIO_ANO'
      Origin = 'CIO_ANO'
      Required = True
    end
    object cdsBuscaDetalhesSRV_CODIGO: TIntegerField
      FieldName = 'SRV_CODIGO'
      Origin = 'SRV_CODIGO'
    end
    object cdsBuscaDetalhesCIO_IMPOSTOS: TBCDField
      FieldName = 'CIO_IMPOSTOS'
      Origin = 'CIO_IMPOSTOS'
      Precision = 18
      Size = 2
    end
    object cdsBuscaDetalhesCIO_MKP: TBCDField
      FieldName = 'CIO_MKP'
      Origin = 'CIO_MKP'
      DisplayFormat = '###,###,##0.00 %'
      Precision = 18
      Size = 2
    end
    object cdsBuscaDetalhesCIO_REPORTE: TBCDField
      FieldName = 'CIO_REPORTE'
      Origin = 'CIO_REPORTE'
      Precision = 18
      Size = 2
    end
    object cdsBuscaDetalhesCIO_PV: TBCDField
      FieldName = 'CIO_PV'
      Origin = 'CIO_PV'
      DisplayFormat = '###.###,####'
      Precision = 18
    end
    object cdsBuscaDetalhesMESANO: TStringField
      FieldName = 'MESANO'
      Origin = 'MESANO'
      Required = True
      Size = 6
    end
    object cdsBuscaDetalhesCIO_TOTAL: TFMTBCDField
      FieldName = 'CIO_TOTAL'
      Origin = 'CIO_TOTAL'
      Precision = 18
    end
    object cdsBuscaDetalhesSET_DESCRICAO: TStringField
      FieldName = 'SET_DESCRICAO'
      Origin = 'SET_DESCRICAO'
      Size = 60
    end
    object cdsBuscaDetalhesSET_CODIGO: TIntegerField
      FieldName = 'SET_CODIGO'
      Origin = 'SET_CODIGO'
    end
    object cdsBuscaDetalhesCIO_CUSTOS: TBCDField
      FieldName = 'CIO_CUSTOS'
      Origin = 'CIO_CUSTOS'
      Precision = 18
      Size = 3
    end
    object cdsBuscaDetalhesCIO_DESPESAS: TBCDField
      FieldName = 'CIO_DESPESAS'
      Origin = 'CIO_DESPESAS'
      Precision = 18
      Size = 3
    end
  end
  object pInserir: TPopupMenu
    Left = 116
    Top = 177
  end
end
