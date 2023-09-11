inherited frmSimularPrecoServicos: TfrmSimularPrecoServicos
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Simula'#231#227'o do pre'#231'o'
  ClientHeight = 546
  ClientWidth = 1089
  ExplicitLeft = -68
  ExplicitTop = -121
  ExplicitWidth = 1097
  ExplicitHeight = 573
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 222
    Width = 1089
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 321
    ExplicitWidth = 225
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 225
    Width = 1089
    Height = 280
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object cxgrd1: TcxGrid
      Left = 1
      Top = 1
      Width = 1087
      Height = 278
      Align = alClient
      TabOrder = 0
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
        DataController.DataSource = dsServicos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'CIO_CUSTOS'
            Column = cxgrd1DBTableView2CIO_CUSTOS
          end
          item
            Kind = skSum
            FieldName = 'CIO_DESPESAS'
            Column = cxgrd1DBTableView2CIO_DESPESAS
          end
          item
            Kind = skSum
            FieldName = 'CIO_IMPOSTOS'
            Column = cxgrd1DBTableView2CIO_IMPOSTOS
          end
          item
            Format = '###,###,##0.00 hrs'
            Kind = skSum
            FieldName = 'CIO_REPORTE'
            Column = cxgrd1DBTableView2CIO_REPORTE
          end
          item
            Format = '###.###,####'
            Kind = skSum
            FieldName = 'CIO_PV'
            Column = cxgrd1DBTableView2CIO_PV
          end
          item
            Format = '###,###,##0.00 '
            Kind = skSum
            FieldName = 'PE'
            Column = cxgrd1DBTableView2PontoEquilibrio
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        object cxgrd1DBTableView2SRV_CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'SET_CODIGO'
          HeaderAlignmentHorz = taCenter
        end
        object cxgrd1DBTableView2SRV_NOME: TcxGridDBColumn
          Caption = 'Setor'
          DataBinding.FieldName = 'SET_DESCRICAO'
          HeaderAlignmentHorz = taCenter
          Width = 174
        end
        object cxgrd1DBTableView2CIO_CUSTOS: TcxGridDBColumn
          Caption = 'Custos'
          DataBinding.FieldName = 'CIO_CUSTOS'
          HeaderAlignmentHorz = taCenter
        end
        object cxgrd1DBTableView2CIO_DESPESAS: TcxGridDBColumn
          Caption = 'Despesas'
          DataBinding.FieldName = 'CIO_DESPESAS'
          HeaderAlignmentHorz = taCenter
        end
        object cxgrd1DBTableView2CIO_IMPOSTOS: TcxGridDBColumn
          Caption = 'Impostos'
          DataBinding.FieldName = 'CIO_IMPOSTOS'
          HeaderAlignmentHorz = taCenter
        end
        object cxgrd1DBTableView2CIO_MKP: TcxGridDBColumn
          Caption = 'Mkp'
          DataBinding.FieldName = 'CIO_MKP'
          HeaderAlignmentHorz = taCenter
        end
        object cxgrd1DBTableView2CIO_REPORTE: TcxGridDBColumn
          Caption = 'Horas Reporte'
          DataBinding.FieldName = 'CIO_REPORTE'
          HeaderAlignmentHorz = taCenter
        end
        object cxgrd1DBTableView2CIO_PV: TcxGridDBColumn
          Caption = 'PV'
          DataBinding.FieldName = 'CIO_PV'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 99
        end
        object cxgrd1DBTableView2PontoEquilibrio: TcxGridDBColumn
          Caption = 'Ponto equil'#237'brio'
          DataBinding.FieldName = 'PE'
          HeaderGlyphAlignmentHorz = taCenter
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxgrd1DBTableView2
      end
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 0
    Width = 1089
    Height = 222
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 0
      Width = 744
      Height = 220
      DataSource = dsServicos
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'SET_DESCRICAO'
          ReadOnly = True
          Title.Caption = 'Descri'#231#227'o'
          Width = 206
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HorasTrabalhadas'
          Title.Caption = 'Horas'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Peso'
          Title.Caption = 'Qt Peso'
          Width = 154
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalServ'
          ReadOnly = True
          Title.Caption = 'Vlr total'
          Width = 140
          Visible = True
        end>
    end
    object GroupBox2: TGroupBox
      Left = 751
      Top = 7
      Width = 274
      Height = 99
      Caption = 'Praticado'
      TabOrder = 1
      object Label4: TLabel
        Left = 8
        Top = 20
        Width = 31
        Height = 13
        Caption = 'Pre'#231'o:'
      end
      object Label5: TLabel
        Left = 8
        Top = 71
        Width = 44
        Height = 13
        Caption = '% Lucro:'
      end
      object Label6: TLabel
        Left = 8
        Top = 47
        Width = 35
        Height = 13
        Caption = 'Custo :'
      end
      object edCusto: TDBEdit
        Left = 56
        Top = 44
        Width = 121
        Height = 21
        DataField = 'Total'
        DataSource = dsServicos
        ReadOnly = True
        TabOrder = 0
      end
      object EdPrecoPraticao: TcxCurrencyEdit
        Left = 56
        Top = 17
        TabOrder = 1
        OnExit = EdPrecoPraticaoExit
        Width = 121
      end
      object edLucro: TcxCurrencyEdit
        Left = 56
        Top = 68
        EditValue = 0.000000000000000000
        Properties.DisplayFormat = ',0.00 %;- ,0.00 %'
        TabOrder = 2
        OnExit = edLucroExit
        Width = 121
      end
    end
  end
  object pGravar: TPanel [3]
    Left = 0
    Top = 505
    Width = 1089
    Height = 41
    Align = alBottom
    TabOrder = 2
  end
  object FlowPanel1: TFlowPanel [4]
    Left = 59
    Top = 481
    Width = 180
    Height = 19
    Anchors = [akLeft, akBottom]
    Caption = 'Totais :'
    TabOrder = 3
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = False
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 384
    Top = 104
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 472
    Top = 96
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\exemplo\EXEMPLO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
  end
  object qSetor: TFDQuery
    OnCalcFields = qSetorCalcFields
    AggregatesActive = True
    Connection = dbConn
    SQL.Strings = (
      
        'SELECT set_descricao, COALESCE(cio_reporte,0) * COALESCE(cio_pv,' +
        '0) AS pe , ci.*  '
      
        'FROM CUSTOINDUST ci JOIN setor se on se.set_codigo = ci.set_CODI' +
        'GO'
      'where cio_ano = :ano'
      'and cio_mes = :mes')
    Left = 251
    Top = 224
    ParamData = <
      item
        Name = 'ANO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'MES'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qSetorCIO_ANO: TIntegerField
      FieldName = 'CIO_ANO'
      Origin = 'CIO_ANO'
      Required = True
    end
    object qSetorCIO_MES: TIntegerField
      FieldName = 'CIO_MES'
      Origin = 'CIO_MES'
      Required = True
    end
    object qSetorCIO_CODIGO: TIntegerField
      FieldName = 'CIO_CODIGO'
      Origin = 'CIO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qSetorEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMP_CODIGO'
      Size = 3
    end
    object qSetorSRV_CODIGO: TIntegerField
      FieldName = 'SRV_CODIGO'
      Origin = 'SRV_CODIGO'
    end
    object qSetorCIO_IMPOSTOS: TBCDField
      FieldName = 'CIO_IMPOSTOS'
      Origin = 'CIO_IMPOSTOS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qSetorCIO_MKP: TBCDField
      FieldName = 'CIO_MKP'
      Origin = 'CIO_MKP'
      DisplayFormat = '###,###,##0.00 %'
      Precision = 18
      Size = 2
    end
    object qSetorCIO_REPORTE: TBCDField
      FieldName = 'CIO_REPORTE'
      Origin = 'CIO_REPORTE'
      DisplayFormat = '###,###,##0.00 hrs'
      Precision = 18
      Size = 2
    end
    object qSetorCIO_PV: TBCDField
      FieldName = 'CIO_PV'
      Origin = 'CIO_PV'
      DisplayFormat = '###.###,####'
      Precision = 18
    end
    object qSetorHorasTrabalhadas: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'HorasTrabalhadas'
      OnChange = qSetorHorasTrabalhadasChange
      EditMask = '!90:00;1;_'
    end
    object qSetorTotalServ: TFMTBCDField
      FieldKind = fkInternalCalc
      FieldName = 'TotalServ'
      DisplayFormat = 'R$ ####,###,##0.000'
      Precision = 15
    end
    object qSetorPeso: TFMTBCDField
      FieldKind = fkInternalCalc
      FieldName = 'Peso'
      OnChange = qSetorHorasTrabalhadasChange
      DisplayFormat = '###,###,##0.00'
      Precision = 15
    end
    object qSetorCustoTotal: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'CustoTotal'
      Precision = 15
      Calculated = True
    end
    object qSetorCustoPeso: TFMTBCDField
      FieldKind = fkInternalCalc
      FieldName = 'CustoPeso'
      Size = 0
    end
    object qSetorSET_DESCRICAO: TStringField
      FieldName = 'SET_DESCRICAO'
      Origin = 'SET_DESCRICAO'
      Size = 60
    end
    object qSetorPE: TFMTBCDField
      FieldName = 'PE'
      Origin = 'PE'
      Precision = 18
    end
    object qSetorSET_CODIGO: TIntegerField
      FieldName = 'SET_CODIGO'
      Origin = 'SET_CODIGO'
    end
    object qSetorCIO_CUSTOS: TBCDField
      FieldName = 'CIO_CUSTOS'
      Origin = 'CIO_CUSTOS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 3
    end
    object qSetorCIO_DESPESAS: TBCDField
      FieldName = 'CIO_DESPESAS'
      Origin = 'CIO_DESPESAS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 3
    end
    object qSetorTotal: TAggregateField
      FieldName = 'Total'
      Active = True
      currency = True
      DisplayName = ''
      DisplayFormat = '###,###,##0.00'
      Expression = 'sum(totalserv)'
    end
  end
  object dsServicos: TDataSource
    DataSet = qSetor
    Left = 344
    Top = 224
  end
  object qsimulado: TFDQuery
    OnCalcFields = qSetorCalcFields
    AggregatesActive = True
    Connection = dbConn
    SQL.Strings = (
      'SELECT * FROM SIMULACAO_ITORC'
      'where oip_codigo = :oip_codigo')
    Left = 259
    Top = 280
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
