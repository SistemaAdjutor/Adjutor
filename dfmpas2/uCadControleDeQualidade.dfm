inherited frmCadControleDeQualidade: TfrmCadControleDeQualidade
  Caption = 'Controle de Qualidade'
  ClientWidth = 776
  ExplicitWidth = 792
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 424
    Width = 776
    Height = 44
    ExplicitTop = 424
    ExplicitWidth = 776
    ExplicitHeight = 44
    inherited btnConfirmar: TButton
      Left = 549
      Top = 10
      Caption = 'Finalizar'
      ExplicitLeft = 549
      ExplicitTop = 10
    end
    inherited btnCancelar: TButton
      Left = 658
      Top = 10
      Caption = 'Sair'
      ExplicitLeft = 658
      ExplicitTop = 10
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 5
      Width = 360
      Height = 36
      Hint = 
        'Primeiro Registro'#13#10'Registro Anterior'#13#10'Pr'#243'ximo Registro'#13#10#218'ltimo R' +
        'egistro'#13#10'Adiciona Registro'#13#10'Exclui Registro'#13#10'Edita Registro'#13#10'Con' +
        'firma Edi'#231#227'o do Registro'#13#10'Cancela Edi'#231#227'o do Registro'#13#10'Atualiza R' +
        'egistro'
      DataSource = DataSource1
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Pr'#243'ximo Registro'
        #218'litmo Registro'
        'Inserir Registro'
        'Apagar Registro'
        'Editar Registro'
        'Gravar Registro'
        'Cancelar Edi'#231#227'o de Registro'
        'Atualiza Dados'
        'Aplicar altera'#231#245'es'
        'Cancelar Atualiza'#231#245'es')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = DBNavigator1Click
    end
  end
  inherited pprincipal: TPanel
    Width = 776
    Height = 424
    ExplicitWidth = 776
    ExplicitHeight = 424
    object Label2: TLabel
      Left = 65
      Top = 35
      Width = 25
      Height = 13
      Caption = 'Lote:'
      FocusControl = CQUA_PRDL_LOTE
    end
    object Label3: TLabel
      Left = 24
      Top = 59
      Width = 66
      Height = 13
      Caption = 'N'#186' da Ordem:'
      FocusControl = CQUA_IOP_NORDEM
    end
    object Label4: TLabel
      Left = 22
      Top = 84
      Width = 68
      Height = 13
      Caption = 'Especifica'#231#227'o:'
      FocusControl = CQUA_PAR_CODIGO
    end
    object Label5: TLabel
      Left = 38
      Top = 130
      Width = 52
      Height = 13
      Caption = 'Resultado:'
      FocusControl = CQUA_RESULTADO
    end
    object Label1: TLabel
      Left = 240
      Top = 106
      Width = 36
      Height = 13
      Caption = 'M'#237'nimo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 406
      Top = 106
      Width = 40
      Height = 13
      Caption = 'M'#225'ximo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 23
      Top = 152
      Width = 67
      Height = 13
      Caption = 'Observa'#231#245'es:'
      FocusControl = db_CQUA_OBSERVACAO
    end
    object Label8: TLabel
      Left = 215
      Top = 35
      Width = 61
      Height = 13
      Caption = 'Inicializa'#231#227'o:'
    end
    object Label9: TLabel
      Left = 223
      Top = 59
      Width = 53
      Height = 13
      Caption = 'Conclus'#227'o:'
    end
    object labelReferencia: TLabel
      Left = 51
      Top = 7
      Width = 119
      Height = 18
      Alignment = taRightJustify
      Caption = 'labelReferencia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbDescricao: TLabel
      Left = 185
      Top = 7
      Width = 88
      Height = 18
      Caption = 'lbDescricao'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 41
      Top = 106
      Width = 49
      Height = 13
      Caption = 'Esperado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 23
      Top = 7
      Width = 64
      Height = 18
      Alignment = taRightJustify
      Caption = 'Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 174
      Top = 7
      Width = 6
      Height = 18
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CQUA_CODIGO: TcxDBSpinEdit
      Left = 559
      Top = 35
      DataBinding.DataField = 'CQUA_CODIGO'
      DataBinding.DataSource = DataSource1
      Enabled = False
      TabOrder = 3
      Visible = False
      Width = 98
    end
    object CQUA_PRDL_LOTE: TcxDBTextEdit
      Left = 453
      Top = 35
      DataBinding.DataField = 'CQUA_PRDL_LOTE'
      DataBinding.DataSource = DataSource1
      Enabled = False
      TabOrder = 4
      Visible = False
      Width = 100
    end
    object CQUA_IOP_NORDEM: TcxDBTextEdit
      Left = 453
      Top = 56
      DataBinding.DataField = 'CQUA_IOP_NORDEM'
      DataBinding.DataSource = DataSource1
      Enabled = False
      TabOrder = 5
      Visible = False
      Width = 120
    end
    object CQUA_PAR_CODIGO: TcxDBSpinEdit
      Left = 269
      Top = 80
      DataBinding.DataField = 'CQUA_PAR_CODIGO'
      DataBinding.DataSource = DataSource1
      Enabled = False
      TabOrder = 6
      Visible = False
      Width = 127
    end
    object CQUA_RESULTADO: TcxDBTextEdit
      Left = 93
      Top = 126
      DataBinding.DataField = 'CQUA_RESULTADO'
      DataBinding.DataSource = DataSource1
      Enabled = False
      TabOrder = 1
      Width = 121
    end
    object lkCQUA_PAR_CODIGO: TDBLookupComboBox
      Left = 93
      Top = 80
      Width = 170
      Height = 21
      Enabled = False
      KeyField = 'PAR_CODIGO'
      ListField = 'PAR_DESCRICAO'
      ListSource = dsqAux
      TabOrder = 0
      OnClick = lkCQUA_PAR_CODIGOClick
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 176
      Width = 774
      Height = 247
      Align = alBottom
      DataSource = DataSource2
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CQUA_PRDL_LOTE'
          Title.Caption = 'Lote'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CQUA_IOP_NORDEM'
          Title.Caption = 'n'#186' Ordem'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PAR_DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 216
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CQUA_RESULTADO'
          Title.Caption = 'Resultado'
          Width = 157
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CQUA_CODIGO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CQUA_PAR_CODIGO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CQUA_OBSERVACAO'
          Title.Caption = 'Observa'#231#245'es'
          Visible = True
        end>
    end
    object ed_CQUA_PRDL_LOTE: TEdit
      Left = 93
      Top = 32
      Width = 90
      Height = 21
      Enabled = False
      TabOrder = 8
      Text = 'ed_CQUA_PRDL_LOTE'
    end
    object ed_CQUA_IOP_NORDEM: TEdit
      Left = 93
      Top = 56
      Width = 90
      Height = 21
      Enabled = False
      TabOrder = 9
      Text = 'ed_CQUA_IOP_NORDEM'
    end
    object minimo: TEdit
      Left = 278
      Top = 104
      Width = 121
      Height = 19
      Color = clGradientActiveCaption
      Ctl3D = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
      Text = 'minimo'
    end
    object maximo: TEdit
      Left = 446
      Top = 104
      Width = 121
      Height = 19
      Color = clGradientActiveCaption
      Ctl3D = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
      Text = 'maximo'
    end
    object db_CQUA_OBSERVACAO: TcxDBTextEdit
      Left = 93
      Top = 149
      DataBinding.DataField = 'CQUA_OBSERVACAO'
      DataBinding.DataSource = DataSource1
      Enabled = False
      TabOrder = 2
      Width = 564
    end
    object db_CQUA_DATA_INICIALIZACAO: TDBEdit
      Left = 278
      Top = 32
      Width = 139
      Height = 21
      DataField = 'CQUA_DATA_INICIALIZACAO'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 12
    end
    object db_CQUA_DATA_CONCLUSAO: TDBEdit
      Left = 278
      Top = 56
      Width = 139
      Height = 21
      DataField = 'CQUA_DATA_CONCLUSAO'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 13
    end
    object esperado: TEdit
      Left = 93
      Top = 104
      Width = 121
      Height = 19
      Color = clGradientActiveCaption
      Ctl3D = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
      Text = 'esperado'
    end
    object PRD_REFER: TcxDBTextEdit
      Left = 453
      Top = 77
      DataBinding.DataField = 'PRD_REFER'
      DataBinding.DataSource = DataSource1
      Enabled = False
      TabOrder = 15
      Visible = False
      Width = 120
    end
    object ed_PRD_REFER: TEdit
      Left = 453
      Top = 8
      Width = 90
      Height = 21
      Enabled = False
      TabOrder = 16
      Text = 'ed_PRD_REFER'
      Visible = False
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 624
    Top = 80
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 624
    Top = 128
  end
  inherited qAux: TFDQuery
    SQL.Strings = (
      'SELECT * FROM PARAMETROS_DA_QUALIDADE ORDER BY PAR_DESCRICAO')
    Left = 139
    Top = 192
    object qAuxPAR_CODIGO: TIntegerField
      FieldName = 'PAR_CODIGO'
      Origin = 'PAR_CODIGO'
    end
    object qAuxPAR_DESCRICAO: TStringField
      FieldName = 'PAR_DESCRICAO'
      Origin = 'PAR_DESCRICAO'
      Size = 255
    end
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 496
    Top = 264
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 728
    Top = 80
  end
  inherited FDTransac: TFDTransaction
    Left = 712
    Top = 24
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 624
    Top = 304
  end
  inherited qAux2: TFDQuery
    Left = 267
    Top = 127
    object qAux2PAR_CODIGO: TIntegerField
      FieldName = 'PAR_CODIGO'
      Origin = 'PAR_CODIGO'
    end
    object qAux2PAR_DESCRICAO: TStringField
      FieldName = 'PAR_DESCRICAO'
      Origin = 'PAR_DESCRICAO'
      Size = 255
    end
  end
  inherited qAux3: TFDQuery
    Left = 267
    Top = 191
  end
  inherited qAux4: TFDQuery
    Left = 627
    Top = 247
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=/servidor/Jobdados/inquibra/Inquibra19042021.FDB'
      'User_Name=sysdba'
      'Password=novirw#'
      'CharacterSet=ISO8859_1'
      'Protocol=TCPIP'
      'Server=192.168.0.250'
      'DriverID=FB')
    Left = 139
    Top = 136
  end
  inherited FDStoredProc1: TFDStoredProc
    Left = 624
    Top = 192
  end
  inherited JvValidators1: TJvValidators
    Left = 441
    Top = 138
  end
  inherited JvErrorIndicator1: TJvErrorIndicator
    Left = 681
    Top = 194
  end
  inherited JvValidationSummary1: TJvValidationSummary
    Left = 504
    Top = 144
  end
  object FDTable1: TFDTable
    AfterInsert = FDTable1AfterInsert
    IndexFieldNames = 'CQUA_CODIGO'
    Connection = dbConn
    UpdateOptions.UpdateTableName = 'CONTROLE_DE_QUALIDADE'
    TableName = 'CONTROLE_DE_QUALIDADE'
    Left = 400
    Top = 264
    object FDTable1CQUA_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CQUA_CODIGO'
      Origin = 'CQUA_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTable1CQUA_PRDL_LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'CQUA_PRDL_LOTE'
      Origin = 'CQUA_PRDL_LOTE'
      Size = 30
    end
    object FDTable1CQUA_IOP_NORDEM: TStringField
      DisplayLabel = 'N'#186' Ordem'
      FieldName = 'CQUA_IOP_NORDEM'
      Origin = 'CQUA_IOP_NORDEM'
    end
    object FDTable1CQUA_PAR_CODIGO: TIntegerField
      DisplayLabel = 'Par'#226'metro'
      FieldName = 'CQUA_PAR_CODIGO'
      Origin = 'CQUA_PAR_CODIGO'
    end
    object FDTable1CQUA_RESULTADO: TStringField
      DisplayLabel = 'Resultado'
      FieldName = 'CQUA_RESULTADO'
      Origin = 'CQUA_RESULTADO'
      Size = 60
    end
    object FDTable1CQUA_OBSERVACAO: TStringField
      FieldName = 'CQUA_OBSERVACAO'
      Origin = 'CQUA_OBSERVACAO'
      Size = 100
    end
    object FDTable1CQUA_DATA_INICIALIZACAO: TSQLTimeStampField
      FieldName = 'CQUA_DATA_INICIALIZACAO'
      Origin = 'CQUA_DATA_INICIALIZACAO'
      DisplayFormat = 'dd/mm/yyyy hh:mm:ss'
    end
    object FDTable1CQUA_DATA_CONCLUSAO: TSQLTimeStampField
      FieldName = 'CQUA_DATA_CONCLUSAO'
      Origin = 'CQUA_DATA_CONCLUSAO'
    end
    object FDTable1PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 400
    Top = 312
  end
  object dsqAux: TDataSource
    DataSet = qAux
    Left = 192
    Top = 192
  end
  object dsqAux3: TDataSource
    DataSet = qAux3
    Left = 312
    Top = 192
  end
  object FDQuery1: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT * FROM CONTROLE_DE_QUALIDADE CQ'
      
        'INNER JOIN PARAMETROS_DA_QUALIDADE PQ ON (CQ.CQUA_PAR_CODIGO = P' +
        'Q.PAR_CODIGO)')
    Left = 296
    Top = 272
    object FDQuery1CQUA_CODIGO: TIntegerField
      FieldName = 'CQUA_CODIGO'
      Origin = 'CQUA_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1CQUA_PRDL_LOTE: TStringField
      FieldName = 'CQUA_PRDL_LOTE'
      Origin = 'CQUA_PRDL_LOTE'
      Size = 30
    end
    object FDQuery1CQUA_IOP_NORDEM: TStringField
      FieldName = 'CQUA_IOP_NORDEM'
      Origin = 'CQUA_IOP_NORDEM'
    end
    object FDQuery1CQUA_PAR_CODIGO: TIntegerField
      FieldName = 'CQUA_PAR_CODIGO'
      Origin = 'CQUA_PAR_CODIGO'
    end
    object FDQuery1CQUA_RESULTADO: TStringField
      FieldName = 'CQUA_RESULTADO'
      Origin = 'CQUA_RESULTADO'
      Size = 60
    end
    object FDQuery1PAR_CODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PAR_CODIGO'
      Origin = 'PAR_CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1PAR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAR_DESCRICAO'
      Origin = 'PAR_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
    object FDQuery1CQUA_OBSERVACAO: TStringField
      FieldName = 'CQUA_OBSERVACAO'
      Origin = 'CQUA_OBSERVACAO'
      Size = 100
    end
    object FDQuery1CQUA_DATA_INICIALIZACAO: TSQLTimeStampField
      FieldName = 'CQUA_DATA_INICIALIZACAO'
      Origin = 'CQUA_DATA_INICIALIZACAO'
    end
    object FDQuery1CQUA_DATA_CONCLUSAO: TSQLTimeStampField
      FieldName = 'CQUA_DATA_CONCLUSAO'
      Origin = 'CQUA_DATA_CONCLUSAO'
    end
  end
  object DataSource2: TDataSource
    DataSet = FDQuery1
    OnDataChange = DataSource2DataChange
    Left = 296
    Top = 320
  end
end
