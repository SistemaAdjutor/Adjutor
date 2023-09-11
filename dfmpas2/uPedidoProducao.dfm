object FrmPedidoProducao: TFrmPedidoProducao
  Left = 502
  Top = 280
  Caption = 'Pedido de Produ'#231#227'o'
  ClientHeight = 602
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 964
    Height = 81
    Align = alTop
    Caption = 'Filtros'
    TabOrder = 0
    object RbPedido: TRadioButton
      Left = 8
      Top = 16
      Width = 113
      Height = 17
      Caption = '&Pedido'
      TabOrder = 0
      OnEnter = RbPedidoEnter
    end
    object RBEmissao: TRadioButton
      Left = 128
      Top = 16
      Width = 113
      Height = 17
      Caption = '&Emiss'#227'o'
      TabOrder = 1
      OnEnter = RBEmissaoEnter
    end
    object RbPrevista: TRadioButton
      Left = 248
      Top = 16
      Width = 113
      Height = 17
      Caption = 'P&revista'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnEnter = RbPrevistaEnter
    end
    object RBProgramada: TRadioButton
      Left = 368
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Pr&ogramada'
      TabOrder = 3
      OnEnter = RBProgramadaEnter
    end
    object RBConclusao: TRadioButton
      Left = 488
      Top = 16
      Width = 113
      Height = 17
      Caption = '% Conc&lus'#227'o'
      TabOrder = 4
      OnEnter = RBConclusaoEnter
    end
    object RbCliente: TRadioButton
      Left = 616
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Cl&iente'
      TabOrder = 5
      OnEnter = RbClienteEnter
    end
    object GbPesquisa: TGroupBox
      Left = 2
      Top = 31
      Width = 960
      Height = 48
      Align = alBottom
      Caption = 'Pesquisa'
      TabOrder = 6
      object spCliente: TSpeedButton
        Left = 860
        Top = 16
        Width = 100
        Height = 22
        Hint = 'Busca Cliente'
        Caption = 'F2 - Pesquisar'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF314B62
          AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
          106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
          00FF9C6B65AF887BAF887EAA8075FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF3BABFFA1CAE7AD8679A98373E0CFB1FFFFDAFFFFDDFCF8CFCCB2
          9FA1746BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC0917DFC
          E9ACFFFFCCFFFFCFFFFFD0FFFFDEFFFFFAE3D3D1996965FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFB08978FAD192FEF4C2FFFFD0FFFFDAFFFFF6FFFF
          FCFFFFFCB69384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB08978FEDA97ED
          B478FBEEBBFFFFD3FFFFDCFFFFF4FFFFF4FFFFE2E9DDBCA67B73FF00FFFF00FF
          FF00FFFF00FFFF00FFB18A78FFDE99E9A167F4D199FEFCCCFFFFD5FFFFDAFFFF
          DCFFFFD7EFE6C5A97E75FF00FFFF00FFFF00FFFF00FFFF00FFAA7F73FAE0A4F0
          B778EEBA7BF6DDA6FEFBCCFFFFD3FFFFD1FFFFD7D9C5A7A3756CFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFCEB293FFFEDDF4D1A5EEBA7BF2C78FF8E1ABFCF0
          BAFCFACAA3776FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1746BE1
          D4D3FFFEEEF7CC8CF0B473F7C788FCE3A5C2A088A5776CFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF986865BA9587EAD7A4EAD59EE0C097A577
          6CA5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFA77E70A98073A4786EFF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        OnClick = spClienteClick
      end
      object LblEntreDatas: TLabel
        Left = 141
        Top = 19
        Width = 16
        Height = 13
        Caption = 'At'#233
      end
      object Label1: TLabel
        Left = 632
        Top = 20
        Width = 45
        Height = 13
        Caption = 'Situa'#231#227'o:'
      end
      object EdPedido: TEdit
        Left = 16
        Top = 16
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
      object DataInicial: TDateEdit
        Left = 16
        Top = 16
        Width = 121
        Height = 21
        NumGlyphs = 2
        YearDigits = dyFour
        TabOrder = 1
      end
      object EdClienteCodigo: TEdit
        Left = 16
        Top = 16
        Width = 43
        Height = 21
        CharCase = ecUpperCase
        Color = clWhite
        MaxLength = 5
        TabOrder = 5
        OnExit = EdClienteCodigoExit
      end
      object CbConclusao: TComboBox
        Left = 16
        Top = 16
        Width = 89
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 0
        TabOrder = 3
        Text = 'MAIOR QUE '
        Items.Strings = (
          'MAIOR QUE '
          'MENOR QUE'
          'IGUAL')
      end
      object DataFinal: TDateEdit
        Left = 164
        Top = 16
        Width = 121
        Height = 21
        NumGlyphs = 2
        YearDigits = dyFour
        TabOrder = 2
      end
      object CurrConclusao: TCurrencyEdit
        Left = 104
        Top = 16
        Width = 73
        Height = 20
        AutoSize = False
        DisplayFormat = '##0.00%'
        MaxValue = 100.000000000000000000
        TabOrder = 4
      end
      object CbCliente: TComboBoxRw
        Left = 65
        Top = 15
        Width = 385
        Height = 21
        TabOrder = 6
        OnExit = CbClienteExit
        OnChange = CbClienteChange
        CharCase = ecUpperCase
        LookupSelect = 'CLI_RAZAO'
        LookupOrderBy = 'CLI_RAZAO'
        LookupTable = 'cli0000'
        GridAutoSize = False
        LookupSource = CbCliente.InternalSource
        LookupKeyField = 'CLI_CODIGO'
        ShowButton = True
        LookupTableShare = 'CLIENTES'
        AutoF8WinTitulo = 'Clientes'
        AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
        Tabela = 'cli0000'
        CamposCarregar = 'CLI_RAZAO'
        CamposRetornar = 'CLI_CODIGO'
        CamposOrdernar = 'CLI_RAZAO'
        ConexaoBanco = DataCadastros.SQLConnection1
        Compartilhar = 'CLIENTES'
        Localizado = False
        
        
        CodigoEmpresa = 0
        
        
        ResetaCampos = False
        
        MultiEmpresa = False
        Localizar = False
        CarregarCombo = False
        itemindex = 0
        style = csDropDown
      end
      object CbSituacao: TComboBox
        Left = 680
        Top = 16
        Width = 174
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 5
        Sorted = True
        TabOrder = 7
        Text = 'TODOS'
        OnKeyPress = CbSituacaoKeyPress
        Items.Strings = (
          'CONCLU'#205'DO'
          'DISPONIBILIZADO'
          'EM PRODU'#199#195'O'
          'ENVIADO'
          'PENDENTE'
          'TODOS')
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 81
    Width = 964
    Height = 237
    Align = alTop
    Caption = 'Pedidos'
    TabOrder = 1
    object DbGradePedido: TDBGrid
      Left = 2
      Top = 15
      Width = 960
      Height = 220
      Align = alClient
      Color = 16776176
      DataSource = DsPedido
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DbGradePedidoDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'PED_STATUS_ANALISE_PRODUCAO'
          Title.Alignment = taCenter
          Title.Caption = 'AP'
          Width = 23
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PED_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'Pedido'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PED_DTENTRADA'
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PED_DTSAIDA'
          Title.Alignment = taCenter
          Title.Caption = 'Prevista'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PED_PCP_DATA_PROGRAMADA'
          Title.Alignment = taCenter
          Title.Caption = 'Programada'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CCSITUACAO'
          Title.Alignment = taCenter
          Title.Caption = 'Situa'#231#227'o'
          Width = 115
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONCLUSAO'
          Title.Alignment = taCenter
          Title.Caption = '% Conclus'#227'o'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_RAZAO'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Width = 405
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 318
    Width = 964
    Height = 147
    Align = alTop
    Caption = 'Itens do Pedido'
    TabOrder = 2
    object DbGradeItemPedido: TDBGrid
      Left = 2
      Top = 15
      Width = 960
      Height = 130
      Align = alClient
      Color = 16776176
      DataSource = DsPedidoItem
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DbGradeItemPedidoDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'PRD_REFER'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRF_PRDDESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 383
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_UND'
          Title.Caption = 'Unidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRF_QTDE'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde Solicitada'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRF_PCP_QTDE_ATENDIDA'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde Atendida'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRF_PCP_QTDE_ESTOQUE'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde Estoque'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FALTA_LIBERAR'
          Title.Alignment = taCenter
          Title.Caption = 'Falta Liberar'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONCLUSAO'
          Title.Alignment = taCenter
          Title.Caption = '% Conclus'#227'o'
          Width = 66
          Visible = True
        end>
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 465
    Width = 865
    Height = 137
    Align = alLeft
    Caption = 'Observa'#231#227'o'
    Enabled = False
    TabOrder = 3
    object ScrollBox1: TScrollBox
      Left = 2
      Top = 15
      Width = 861
      Height = 120
      Align = alClient
      TabOrder = 0
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 857
        Height = 116
        Align = alClient
        Color = 16776176
        DataField = 'PED_OBSERVACAO'
        DataSource = DsPedido
        TabOrder = 0
      end
    end
  end
  object BtnGravar: TBitBtn
    Left = 879
    Top = 473
    Width = 85
    Height = 25
    Cursor = crHandPoint
    Hint = '|Grava registro...'
    Caption = '&Liberar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000CE0E0000D80E00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555550055555
      55555555577FF5555555555500005555555555557777F5555555555500005555
      555555557777FF5555555550000005555555555777777F555555550000000555
      5555557777777FF5555557000500005555555777757777F55555700555500055
      55557775555777FF5555555555500005555555555557777F5555555555550005
      555555555555777FF5555555555550005555555555555777FF55555555555570
      05555555555555777FF5555555555557005555555555555777FF555555555555
      5000555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    TabStop = False
    OnClick = BtnGravarClick
  end
  object BtnConsultar: TBitBtn
    Left = 880
    Top = 505
    Width = 85
    Height = 25
    Cursor = crHandPoint
    Caption = 'En&viar'
    Glyph.Data = {
      CA010000424DCA01000000000000760000002800000027000000110000000100
      04000000000054010000CE0E0000D80E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888888888888888888888880887777777777777777888888888888888888
      8880800000000000000007888888888888888888888080888888888888880788
      8888888888888888888080FF8FF8FF8FF8FF0788888888888888888888808088
      88888888888807888888888888888888888080FF8FF8FF8FF8FF078888888888
      888888888880808888888888888807888888888888888888888080FF8FF8FF8F
      F8FF078888888888888888888880808888888888888807888888888888888888
      888080FF8FF8FF8FF8FF07888888888888888888888080000000000000000788
      8888888888888888888080FF7FF7FF7FF7FF0788888888888888888888808000
      0000000000000788888888888888888888808080CCCCCCCCCCCC078888888888
      8888888888808000000000000000088888888888888888888880888888888888
      8888888888888888888888888880}
    NumGlyphs = 2
    TabOrder = 5
    TabStop = False
    OnClick = BtnConsultarClick
  end
  object BitBtn1: TBitBtn
    Left = 879
    Top = 537
    Width = 85
    Height = 25
    Cursor = crHandPoint
    Hint = '|Grava registro...'
    Caption = '&Sincronizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000CE0E0000D80E00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555550055555
      55555555577FF5555555555500005555555555557777F5555555555500005555
      555555557777FF5555555550000005555555555777777F555555550000000555
      5555557777777FF5555557000500005555555777757777F55555700555500055
      55557775555777FF5555555555500005555555555557777F5555555555550005
      555555555555777FF5555555555550005555555555555777FF55555555555570
      05555555555555777FF5555555555557005555555555555777FF555555555555
      5000555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    TabStop = False
    OnClick = BitBtn1Click
  end
  object Memo: TMemo
    Left = 568
    Top = 232
    Width = 313
    Height = 89
    Lines.Strings = (
      'Memo')
    TabOrder = 7
  end
  object DsPedido: TDataSource
    DataSet = CdsPedido
    OnDataChange = DsPedidoDataChange
    Left = 880
    Top = 232
  end
  object DsPedidoItem: TDataSource
    DataSet = CdsPedidoItem
    Left = 912
    Top = 232
  end
  object CdsPedido: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10' t1.emp_codigo,'#13#10' t1.ped_status_analise_producao,'#13#10' t1.p' +
      'ed_codigo,'#13#10' t1.ped_observacao,'#13#10' t1.ped_dtentrada,'#13#10' t1.ped_dts' +
      'aida,'#13#10' T1.ped_pcp_data_programada,'#13#10' T1.ped_pcp_sit_producao,'#13#10 +
      ' T1.cli_codigo,'#13#10' T2.cli_razao,'#13#10' cast(coalesce(((select sum(coa' +
      'lesce(t3.prf_pcp_qtde_estoque,0)) from ped_it01 t3 where t3.ped_' +
      'codigo = t1.ped_codigo and t3.emp_codigo = t1.emp_codigo) * 100)' +
      '/(select sum(coalesce(t3.prf_qtde,0)) from ped_it01 t3 where t3.' +
      'ped_codigo = t1.ped_codigo and t3.emp_codigo = t1.emp_codigo),0)' +
      ' as numeric(15,2)) as conclusao'#13#10'from'#13#10'ped0000 t1'#13#10'LEFT JOIN cli' +
      '0000 T2 ON (T2.cli_codigo = T1.cli_codigo)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    PacketRecords = 15
    Params = <>
    OnCalcFields = CdsPedidoCalcFields
    CommandText = 
      'select'#13#10' t1.emp_codigo,'#13#10' t1.ped_status_analise_producao,'#13#10' t1.p' +
      'ed_codigo,'#13#10' t1.ped_observacao,'#13#10' t1.ped_dtentrada,'#13#10' t1.ped_dts' +
      'aida,'#13#10' T1.ped_pcp_data_programada,'#13#10' T1.ped_pcp_sit_producao,'#13#10 +
      ' T1.cli_codigo,'#13#10' T2.cli_razao,'#13#10' cast(coalesce(((select sum(coa' +
      'lesce(t3.prf_pcp_qtde_estoque,0)) from ped_it01 t3 where t3.ped_' +
      'codigo = t1.ped_codigo and t3.emp_codigo = t1.emp_codigo) * 100)' +
      '/(select sum(coalesce(t3.prf_qtde,0)) from ped_it01 t3 where t3.' +
      'ped_codigo = t1.ped_codigo and t3.emp_codigo = t1.emp_codigo),0)' +
      ' as numeric(15,2)) as conclusao'#13#10'from'#13#10'ped0000 t1'#13#10'LEFT JOIN cli' +
      '0000 T2 ON (T2.cli_codigo = T1.cli_codigo)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 880
    Top = 200
    object CdsPedidoPED_STATUS_ANALISE_PRODUCAO: TStringField
      FieldName = 'PED_STATUS_ANALISE_PRODUCAO'
      Size = 1
    end
    object CdsPedidoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Required = True
      Size = 7
    end
    object CdsPedidoPED_DTENTRADA: TSQLTimeStampField
      FieldName = 'PED_DTENTRADA'
    end
    object CdsPedidoPED_DTSAIDA: TSQLTimeStampField
      FieldName = 'PED_DTSAIDA'
    end
    object CdsPedidoPED_PCP_DATA_PROGRAMADA: TSQLTimeStampField
      FieldName = 'PED_PCP_DATA_PROGRAMADA'
    end
    object CdsPedidoPED_PCP_SIT_PRODUCAO: TStringField
      FieldName = 'PED_PCP_SIT_PRODUCAO'
      Size = 1
    end
    object CdsPedidoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object CdsPedidoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object CdsPedidoCONCLUSAO: TFMTBCDField
      FieldName = 'CONCLUSAO'
      DisplayFormat = '##0.00%'
      Precision = 15
      Size = 2
    end
    object CdsPedidoCCSITUACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CCSITUACAO'
      Calculated = True
    end
    object CdsPedidoPED_OBSERVACAO: TBlobField
      FieldName = 'PED_OBSERVACAO'
      Size = 1
    end
    object CdsPedidoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object CdsPedidoItem: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'    t1.PRF_REGISTRO,'#13#10'    t3.PRG_DESCRICAO,'#13#10'    T1.prd_' +
      'refer,'#13#10'    T1.prf_prddescri,'#13#10'    T2.prd_und,'#13#10'    t4.PTI_SIGLA' +
      ','#13#10'    T1.prf_qtde,'#13#10'    T1.prf_pcp_qtde_atendida,'#13#10'    T1.prf_p' +
      'cp_qtde_estoque,'#13#10'    (T1.prf_pcp_qtde_atendida - T1.prf_pcp_qtd' +
      'e_estoque) AS FALTA_LIBERAR,'#13#10'    case'#13#10'        when (T1.prf_pcp' +
      '_qtde_estoque > 0 and T1.prf_qtde > 0) then'#13#10'            CAST(((' +
      'coalesce(T1.prf_pcp_qtde_estoque,0) * 100) / COALESCE(T1.prf_qtd' +
      'e,0))  AS numeric(15,2))'#13#10'        else'#13#10'            0'#13#10'    end a' +
      's CONCLUSAO'#13#10'FROM'#13#10'ped_it01 T1'#13#10'left join prd0000 T2 ON (T2.prd_' +
      'refer = T1.prd_refer)'#13#10'left join PRD_GRADE t3 on (t3.PRG_REGISTR' +
      'O = t1.PRG_REGISTRO)'#13#10'left join PRD_TIPO t4 on (t4.PTI_CODIGO = ' +
      't2.PTI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'    t1.PRF_REGISTRO,'#13#10'    t3.PRG_DESCRICAO,'#13#10'    T1.prd_' +
      'refer,'#13#10'    T1.prf_prddescri,'#13#10'    T2.prd_und,'#13#10'    t4.PTI_SIGLA' +
      ','#13#10'    T1.prf_qtde,'#13#10'    T1.prf_pcp_qtde_atendida,'#13#10'    T1.prf_p' +
      'cp_qtde_estoque,'#13#10'    (T1.prf_pcp_qtde_atendida - T1.prf_pcp_qtd' +
      'e_estoque) AS FALTA_LIBERAR,'#13#10'    case'#13#10'        when (T1.prf_pcp' +
      '_qtde_estoque > 0 and T1.prf_qtde > 0) then'#13#10'            CAST(((' +
      'coalesce(T1.prf_pcp_qtde_estoque,0) * 100) / COALESCE(T1.prf_qtd' +
      'e,0))  AS numeric(15,2))'#13#10'        else'#13#10'            0'#13#10'    end a' +
      's CONCLUSAO'#13#10'FROM'#13#10'ped_it01 T1'#13#10'left join prd0000 T2 ON (T2.prd_' +
      'refer = T1.prd_refer)'#13#10'left join PRD_GRADE t3 on (t3.PRG_REGISTR' +
      'O = t1.PRG_REGISTRO)'#13#10'left join PRD_TIPO t4 on (t4.PTI_CODIGO = ' +
      't2.PTI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 912
    Top = 200
    object CdsPedidoItemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object CdsPedidoItemPRF_PRDDESCRI: TStringField
      FieldName = 'PRF_PRDDESCRI'
      Size = 100
    end
    object CdsPedidoItemPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object CdsPedidoItemPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      DisplayFormat = '###,###,###,##0.000'
      Precision = 15
      Size = 4
    end
    object CdsPedidoItemPRF_PCP_QTDE_ATENDIDA: TFMTBCDField
      FieldName = 'PRF_PCP_QTDE_ATENDIDA'
      DisplayFormat = '###,###,###,##0.000'
      Precision = 15
      Size = 4
    end
    object CdsPedidoItemPRF_PCP_QTDE_ESTOQUE: TFMTBCDField
      FieldName = 'PRF_PCP_QTDE_ESTOQUE'
      DisplayFormat = '###,###,###,##0.000'
      Precision = 15
      Size = 4
    end
    object CdsPedidoItemFALTA_LIBERAR: TFMTBCDField
      FieldName = 'FALTA_LIBERAR'
      DisplayFormat = '###,###,###,##0.000'
      Precision = 15
      Size = 4
    end
    object CdsPedidoItemCONCLUSAO: TFMTBCDField
      FieldName = 'CONCLUSAO'
      DisplayFormat = '##0.00%'
      Precision = 15
      Size = 2
    end
    object CdsPedidoItemPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      Required = True
    end
    object CdsPedidoItemPRG_DESCRICAO: TStringField
      FieldName = 'PRG_DESCRICAO'
      Size = 100
    end
    object CdsPedidoItemPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 760
    Top = 81
  end
end
