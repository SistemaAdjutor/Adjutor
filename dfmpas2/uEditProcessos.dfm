inherited frmEditProcessos: TfrmEditProcessos
  Caption = ''
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 903
    Height = 65
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 16
      Top = 39
      Width = 47
      Height = 13
      Caption = 'Processo:'
    end
    object Tipo: TLabel
      Left = 367
      Top = 39
      Width = 24
      Height = 13
      Caption = 'Tipo:'
    end
    object edProcesso: TDBEdit
      Left = 67
      Top = 35
      Width = 278
      Height = 21
      DataField = 'PRO_DESCRICAO'
      DataSource = dsEdits
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 67
      Top = 8
      Width = 121
      Height = 21
      DataField = 'PRO_CODIGO'
      DataSource = dsEdits
      TabOrder = 0
    end
    object cbTipo: TcxDBLookupComboBox
      Left = 400
      Top = 35
      DataBinding.DataField = 'SRV_CODIGO'
      DataBinding.DataSource = dsEdits
      Properties.KeyFieldNames = 'SRV_CODIGO'
      Properties.ListColumns = <
        item
          Caption = 'Servi'#231'o'
          FieldName = 'SRV_NOME'
        end>
      Properties.ListSource = dstipo
      TabOrder = 2
      Width = 234
    end
  end
  object cxGrid1: TcxGrid [2]
    Left = 0
    Top = 65
    Width = 721
    Height = 354
    Align = alLeft
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Filter.Enabled = False
      Navigator.Visible = True
      DataController.DataSource = dsEditDetail
      DataController.MultiThreadedOptions.Filtering = bFalse
      DataController.MultiThreadedOptions.Sorting = bTrue
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1OPE_CODIGO: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'OPE_CODIGO'
        Width = 106
      end
      object cxGrid1DBTableView1OPE_DESCRICAO: TcxGridDBColumn
        Caption = 'Opera'#231#227'o'
        DataBinding.FieldName = 'OPE_CODIGO'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'OPE_CODIGO'
        Properties.ListColumns = <
          item
            FieldName = 'OPE_DESCRICAO'
          end>
        Properties.ListSource = dsoperacoes
        Width = 238
      end
      object cxGrid1DBTableView1POP_SEQ: TcxGridDBColumn
        Caption = 'sequ'#234'ncia'
        DataBinding.FieldName = 'POP_SEQ'
        Width = 101
      end
      object cxGrid1DBTableViewPop_tempoestimado: TcxGridDBColumn
        Caption = 'Tempo estimado'
        DataBinding.FieldName = 'POP_TEMPOESTIMADO'
        Width = 94
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 176
    Top = 65528
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 720
    Top = 32
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\exemplo\EXEMPLO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=FB')
  end
  inherited cdsEdit: TFDQuery
    SQL.Strings = (
      
        'select pro_codigo, pro_descricao, emp_codigo, srv_codigo from MO' +
        'DL_PROCESSOS'
      'WHERE PRO_CODIGO = :ID')
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cdsEditPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'PRO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEditPRO_DESCRICAO: TStringField
      FieldName = 'PRO_DESCRICAO'
      Origin = 'PRO_DESCRICAO'
      Size = 100
    end
    object cdsEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsEditSRV_CODIGO: TIntegerField
      FieldName = 'SRV_CODIGO'
      Origin = 'SRV_CODIGO'
    end
  end
  inherited cdsEditDetail: TFDQuery
    BeforePost = cdsEditDetailBeforePost
    OnNewRecord = cdsEditDetailNewRecord
    SQL.Strings = (
      
        'select POP_CODIGO, po.pro_codigo, po.ope_codigo, op.ope_descrica' +
        'o, po.pop_seq,  pop_tempoestimado'
      
        ' from MODL_PROCESSOS_OPERACOES  po join operacoes op on (op.ope_' +
        'codigo = po.ope_codigo)'
      'where pro_codigo = :id       '
      ' order by  po.pop_seq')
    object cdsEditDetailPOP_CODIGO: TIntegerField
      FieldName = 'POP_CODIGO'
      Origin = 'POP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEditDetailPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'PRO_CODIGO'
      ProviderFlags = [pfInUpdate, pfInKey]
      Required = True
    end
    object cdsEditDetailOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
      Origin = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object cdsEditDetailOPE_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPE_DESCRICAO'
      Origin = 'OPE_DESCRICAO'
      ProviderFlags = []
      Size = 60
    end
    object cdsEditDetailPOP_SEQ: TIntegerField
      FieldName = 'POP_SEQ'
      Origin = 'POP_SEQ'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditDetailPOP_TEMPOESTIMADO: TTimeField
      FieldName = 'POP_TEMPOESTIMADO'
      Origin = 'POP_TEMPOESTIMADO'
      DisplayFormat = 'hh:nn'
    end
  end
  inherited JvValidators1: TJvValidators
    object ValidarProcesso: TJvCustomValidator
      ErrorControl = edProcesso
      ControlToValidate = edProcesso
      ErrorMessage = 'Processo deve ser preenchido'
      OnValidate = ValidarProcessoValidate
    end
    object ValidarTipo: TJvCustomValidator
      ErrorControl = cbTipo
      ControlToValidate = cbTipo
      ErrorMessage = 'Tipo obrigat'#243'rio'
      OnValidate = ValidarTipoValidate
    end
  end
  object fdOperacoes: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'select ope_codigo,ope_nome, ope_Descricao from operacoes')
    Left = 496
    Top = 136
    object fdOperacoesOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
      Origin = 'OPE_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdOperacoesOPE_NOME: TStringField
      FieldName = 'OPE_NOME'
      Origin = 'OPE_NOME'
      Size = 15
    end
    object fdOperacoesOPE_DESCRICAO: TStringField
      DisplayLabel = 'Opera'#231#245'es'
      FieldName = 'OPE_DESCRICAO'
      Origin = 'OPE_DESCRICAO'
      Size = 60
    end
  end
  object dsoperacoes: TDataSource
    AutoEdit = False
    DataSet = fdOperacoes
    Left = 576
    Top = 144
  end
  object fdtipo: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'select * from SERVICO')
    Left = 672
    Top = 136
    object fdtipoSRV_CODIGO: TIntegerField
      FieldName = 'SRV_CODIGO'
      Origin = 'SRV_CODIGO'
      Required = True
    end
    object fdtipoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMP_CODIGO'
      Size = 3
    end
    object fdtipoSRV_NOME: TStringField
      FieldName = 'SRV_NOME'
      Origin = 'SRV_NOME'
      Size = 60
    end
    object fdtipoSET_CODIGO: TIntegerField
      FieldName = 'SET_CODIGO'
      Origin = 'SET_CODIGO'
    end
  end
  object dstipo: TDataSource
    AutoEdit = False
    DataSet = fdtipo
    Left = 672
    Top = 192
  end
end
