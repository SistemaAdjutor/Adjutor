inherited frmCustoMesAno: TfrmCustoMesAno
  Caption = ''
  ClientHeight = 419
  ClientWidth = 1063
  ExplicitWidth = 1071
  ExplicitHeight = 446
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtil: TPanel
    Top = 387
    Width = 1063
    ExplicitTop = 387
    ExplicitWidth = 1063
    inherited btnOk: TSpeedButton
      Left = 815
      ExplicitLeft = 730
    end
    inherited btnCancelar: TSpeedButton
      Left = 940
      ExplicitLeft = 855
    end
    object Label1: TLabel
      Left = 48
      Top = 8
      Width = 46
      Height = 13
      Caption = 'M'#234's/Ano:'
    end
    object edMesAno: TEdit
      Left = 103
      Top = 6
      Width = 121
      Height = 21
      Color = clActiveBorder
      Enabled = False
      ReadOnly = True
      TabOrder = 0
      Text = 'edMesAno'
    end
  end
  object cxgrd1: TcxGrid [1]
    Left = 0
    Top = 0
    Width = 1063
    Height = 387
    Align = alClient
    TabOrder = 1
    object cxgrd1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataModeController.GridMode = True
      DataController.DataModeController.SmartRefresh = True
      DataController.MultiThreadedOptions.Sorting = bFalse
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
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
    object cxgrd1DBTableView2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsEdits
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxgrd1DBTableView2SRV_CODIGO: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'SET_CODIGO'
      end
      object cxgrd1DBTableView2SRV_NOME: TcxGridDBColumn
        Caption = 'Setor'
        DataBinding.FieldName = 'SET_DESCRICAO'
        Width = 174
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
        Caption = 'Mkp de Custo'
        DataBinding.FieldName = 'CIO_MKP'
      end
      object cxgrd1DBTableView2CIO_REPORTE: TcxGridDBColumn
        Caption = 'Reporte'
        DataBinding.FieldName = 'CIO_REPORTE'
      end
      object cxgrd1DBTableView2CIO_PV: TcxGridDBColumn
        Caption = 'PV'
        DataBinding.FieldName = 'CIO_PV'
        Options.Editing = False
        Width = 99
      end
      object cxgrd1DBTableView2CIO_TOTAL: TcxGridDBColumn
        Caption = 'Ponto de equil'#237'brio'
        DataBinding.FieldName = 'CIO_TOTAL'
        Width = 111
      end
    end
    object cxgrdlvlGrid1Level1: TcxGridLevel
      GridView = cxgrd1DBTableView2
    end
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 360
    Top = 72
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 256
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
  inherited dsEdits: TDataSource
    Left = 613
    Top = 31
  end
  inherited cdsEdit: TFDQuery
    OnCalcFields = cdsEditCalcFields
    SQL.Strings = (
      
        'SELECT set_descricao, cast(cio_ano as varchar(4))|| cast(lpad (c' +
        'io_mes,2,'#39'0'#39')  as varchar(2)) as mesano ,'
      '    ci.*  '
      
        'FROM CUSTOINDUST ci JOIN SETOR se on se.set_codigo = ci.set_CODI' +
        'GO'
      
        'where cast(cio_ano as varchar(4))|| cast(lpad (cio_mes,2,'#39'0'#39')  a' +
        's varchar(2)) = :id')
    Left = 555
    Top = 32
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object cdsEditMESANO: TStringField
      FieldName = 'MESANO'
      Origin = 'MESANO'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object cdsEditCIO_CODIGO: TIntegerField
      FieldName = 'CIO_CODIGO'
      Origin = 'CIO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsEditCIO_MES: TIntegerField
      FieldName = 'CIO_MES'
      Origin = 'CIO_MES'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsEditCIO_ANO: TIntegerField
      FieldName = 'CIO_ANO'
      Origin = 'CIO_ANO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsEditSRV_CODIGO: TIntegerField
      FieldName = 'SRV_CODIGO'
      Origin = 'SRV_CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditCIO_IMPOSTOS: TBCDField
      FieldName = 'CIO_IMPOSTOS'
      Origin = 'CIO_IMPOSTOS'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsEditCIO_CUSTOSChange
      Precision = 18
      Size = 2
    end
    object cdsEditCIO_MKP: TBCDField
      FieldName = 'CIO_MKP'
      Origin = 'CIO_MKP'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsEditCIO_CUSTOSChange
      Precision = 18
      Size = 2
    end
    object cdsEditCIO_REPORTE: TBCDField
      FieldName = 'CIO_REPORTE'
      Origin = 'CIO_REPORTE'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsEditCIO_CUSTOSChange
      Precision = 18
      Size = 2
    end
    object cdsEditCIO_PV: TBCDField
      FieldName = 'CIO_PV'
      Origin = 'CIO_PV'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###.###,####'
      Precision = 18
    end
    object cdsEditCIO_TOTAL: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'CIO_TOTAL'
      Size = 0
      Calculated = True
    end
    object cdsEditSET_DESCRICAO: TStringField
      FieldName = 'SET_DESCRICAO'
      Origin = 'SET_DESCRICAO'
      Size = 60
    end
    object cdsEditSET_CODIGO: TIntegerField
      FieldName = 'SET_CODIGO'
      Origin = 'SET_CODIGO'
    end
    object cdsEditCIO_CUSTOS: TBCDField
      FieldName = 'CIO_CUSTOS'
      Origin = 'CIO_CUSTOS'
      OnChange = cdsEditCIO_CUSTOSChange
      Precision = 18
      Size = 3
    end
    object cdsEditCIO_DESPESAS: TBCDField
      FieldName = 'CIO_DESPESAS'
      Origin = 'CIO_DESPESAS'
      OnChange = cdsEditCIO_CUSTOSChange
      Precision = 18
      Size = 3
    end
  end
  inherited cdsEditDetail: TFDQuery
    Left = 555
    Top = 104
  end
  inherited dsEditDetail: TDataSource
    Left = 621
    Top = 103
  end
  inherited JvValidators1: TJvValidators
    Left = 273
    Top = 234
  end
  inherited JvValidationSummary1: TJvValidationSummary
    Left = 200
    Top = 232
  end
  inherited JvErrorIndicator1: TJvErrorIndicator
    Left = 329
    Top = 234
  end
end
