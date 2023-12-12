inherited frmEstruturaFicha: TfrmEstruturaFicha
  Caption = 'Estrutura ficha t'#233'cnica'
  ClientHeight = 419
  ClientWidth = 1017
  ExplicitWidth = 1033
  ExplicitHeight = 458
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 1017
    Height = 81
    Align = alTop
    TabOrder = 0
    Visible = False
  end
  object cxTreeList1: TcxTreeList [1]
    Left = 0
    Top = 81
    Width = 1017
    Height = 338
    Align = alClient
    Bands = <
      item
      end>
    Navigator.Buttons.CustomButtons = <>
    PopupMenus.ColumnHeaderMenu.Items = [tlchmiSortAscending, tlchmiSortDescending, tlchmiFooter, tlchmiGroupFooters, tlchmiRemoveThisColumn, tlchmiFieldChooser, tlchmiHorzAlignment, tlchmiVertAlignment, tlchmiBestFit, tlchmiBestFitAllColumns]
    TabOrder = 1
    object cxPRD_REFER: TcxTreeListColumn
      Caption.Text = 'Refer'#234'ncia'
      DataBinding.ValueType = 'String'
      Width = 131
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxPRD_DESCRI: TcxTreeListColumn
      Caption.Text = 'Descri'#231#227'o'
      DataBinding.ValueType = 'String'
      Width = 257
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxTreeListSigla: TcxTreeListColumn
      Caption.Text = '*'
      DataBinding.ValueType = 'String'
      Width = 41
      Position.ColIndex = 2
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxTreeListUnd: TcxTreeListColumn
      Caption.Text = 'UND'
      DataBinding.ValueType = 'String'
      Width = 54
      Position.ColIndex = 3
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxTreeListConsumo: TcxTreeListColumn
      Caption.Text = 'Consumo'
      DataBinding.ValueType = 'String'
      Width = 100
      Position.ColIndex = 4
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxTreeListCustoUnit: TcxTreeListColumn
      Caption.Text = 'Custo Unit'#225'rio'
      DataBinding.ValueType = 'String'
      Width = 100
      Position.ColIndex = 5
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxTreeListCustoTotal: TcxTreeListColumn
      Caption.Text = 'Custo total'
      DataBinding.ValueType = 'String'
      Width = 100
      Position.ColIndex = 6
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxTreeListPrecoVenda: TcxTreeListColumn
      Caption.Text = 'Pre'#231'o venda'
      DataBinding.ValueType = 'String'
      Width = 100
      Position.ColIndex = 7
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 80
    Top = 0
  end
  inherited FDTransac: TFDTransaction
    Left = 448
    Top = 16
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 368
    Top = 16
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\exemplo\EXEMPLO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    Left = 163
    Top = 8
  end
  inherited FDStoredProc1: TFDStoredProc
    Left = 320
    Top = 8
  end
  object cdsBusca: TFDQuery
    Filtered = True
    Connection = dbConn
    Transaction = FDTransac
    SQL.Strings = (
      'SELECT pr.prd_codigo parent , pr1.PRD_CODIGO KEYFIELD , '
      '        pr.PRD_DESCRI parent_descri, pr1.PRD_DESCRI ,'
      '        pr.prd_refer parent_refer, pr1.prd_Refer , '
      '        pr1.PRD_UND, pr1.prd_pvenda, fti_uc,'
      '  cast( '
      'case '
      '  WHEN PRMT.pmt_calcularpv = '#39'0'#39' THEN '
      #9'  pr1.PRD_PCUSTO '
      '  WHEN PRMT.pmt_calcularpv = '#39'1'#39' THEN '
      #9'  pr1.prd_custocomipi '
      '  WHEN PRMT.pmt_calcularpv = '#39'2'#39' THEN '
      #9'  pr1.PRD_PMEDIO '
      'END as numeric(15,4)) AS PRD_PCUSTO, '
      'cast( '
      '(case '
      '  WHEN PRMT.pmt_calcularpv = '#39'0'#39' THEN '
      #9'  pr1.PRD_PCUSTO '
      '  WHEN PRMT.pmt_calcularpv = '#39'1'#39' THEN '
      #9'  pr1.prd_custocomipi '
      '  WHEN PRMT.pmt_calcularpv = '#39'2'#39' THEN '
      #9'  pr1.PRD_PMEDIO '
      
        'END  * Ft.fti_uc) as DOUBLE PRECISION) AS TotalItem, tipo.PTI_SI' +
        'GLA             '
      '   FROM FTC_IT01 ft '
      '   JOIN PRD0000 pr ON pr.PRD_REFER = ft.PRD_REFER'
      '   JOIN PRD0000 pr1 ON pr1.prd_refer = ft.PRD_REFER_ITENS  '
      '   join PRD_TIPO tipo ON Pr1.pti_codigo = tipo.PTI_CODIGO '
      '   left JOIN prmt0001 PRMT ON PRMT.emp_codigo = Pr1.emp_codigo'
      '   WHERE FT.PRD_REFER ='#39'A00037'#39' '
      
        '   OR FT.PRD_REFER IN (SELECT IT.PRD_REFER_ITENS FROM FTC_IT01 I' +
        'T WHERE IT.PRD_REFER  = FT.PRD_REFER_ITENS )'
      'order by pr1.prd_Refer')
    Left = 363
    Top = 208
    object cdsBuscaKEYFIELD: TStringField
      FieldName = 'KEYFIELD'
      Origin = 'KEYFIELD'
      Required = True
      Size = 5
    end
    object cdsBuscaPARENT: TStringField
      FieldName = 'PARENT'
      Origin = 'PARENT'
      Required = True
      Size = 5
    end
    object cdsBuscaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      Size = 100
    end
    object cdsBuscaPARENT_DESCRI: TStringField
      FieldName = 'PARENT_DESCRI'
      Origin = 'PARENT_DESCRI'
      Size = 100
    end
    object cdsBuscaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object cdsBuscaPARENT_REFER: TStringField
      FieldName = 'PARENT_REFER'
      Origin = 'PARENT_REFER'
    end
    object cdsBuscaPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      Size = 6
    end
    object cdsBuscaPRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      Origin = 'PRD_PVENDA'
      Precision = 18
      Size = 5
    end
    object cdsBuscaFTI_UC: TFMTBCDField
      FieldName = 'FTI_UC'
      Origin = 'FTI_UC'
      Precision = 18
      Size = 6
    end
    object cdsBuscaPRD_PCUSTO: TBCDField
      FieldName = 'PRD_PCUSTO'
      Origin = 'PRD_PCUSTO'
      Precision = 18
    end
    object cdsBuscaTOTALITEM: TBCDField
      FieldName = 'TOTALITEM'
      Origin = 'TOTALITEM'
      Precision = 18
    end
    object cdsBuscaPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Origin = 'PTI_SIGLA'
      Size = 2
    end
  end
  object dsbusca: TDataSource
    DataSet = cdsBusca
    Left = 416
    Top = 216
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 512
    Top = 32
  end
end
