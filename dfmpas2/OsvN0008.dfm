object FormProdutosOPs: TFormProdutosOPs
  Left = 480
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Estoque em Falta na Produ'#231#227'o'
  ClientHeight = 554
  ClientWidth = 942
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitCancelar: TBitBtn
    Left = 532
    Top = 34
    Width = 100
    Height = 25
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitCancelarClick
  end
  object Grp_Pesquisa: TGroupBox
    Left = 0
    Top = 8
    Width = 187
    Height = 41
    Caption = 'Pesquisa'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Rd_Refer: TRadioButton
      Left = 12
      Top = 16
      Width = 76
      Height = 17
      Caption = '&Refer'#234'ncia'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = Rd_ReferClick
    end
    object Rd_Descricao: TRadioButton
      Left = 100
      Top = 15
      Width = 71
      Height = 18
      Caption = 'De&scri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Rd_ReferClick
    end
  end
  object Grp_filtra: TGroupBox
    Left = 193
    Top = 8
    Width = 329
    Height = 41
    Caption = 'Grp_filtra'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Edt_Nome: TEdit
      Left = 4
      Top = 15
      Width = 319
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object BitPesquisar: TBitBtn
    Left = 532
    Top = 6
    Width = 100
    Height = 25
    Caption = '&Pesquisar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitPesquisarClick
  end
  object GroupBox2: TGroupBox
    Left = 2
    Top = 61
    Width = 933
    Height = 327
    Caption = 'Material em Falta para Empenhar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 929
      Height = 310
      Hint = 'D'#234' duplo clique para fazer apontamento manual...'
      Align = alClient
      Color = 16776176
      DataSource = DsEstoque
      FixedColor = 12681984
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnTitleClick = DBGrid2TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'PRD_REFER_ITENS'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Title.Color = clWindow
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o da Mat'#233'ria-Prima'
          Title.Color = clWindow
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 329
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PTI_SIGLA'
          Title.Alignment = taCenter
          Title.Caption = '*'
          Title.Color = clWindow
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_MINIMO'
          Title.Alignment = taCenter
          Title.Caption = 'Estoque Minimo'
          Title.Color = clWindow
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Consumo'
          Title.Alignment = taCenter
          Title.Color = clWindow
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end
        item
          Color = 15132364
          Expanded = False
          FieldName = 'WSALDO'
          Title.Alignment = taCenter
          Title.Caption = 'Estoque Atual'
          Title.Color = clWindow
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 92
          Visible = True
        end
        item
          Color = 13494005
          Expanded = False
          FieldName = 'FALTA_EMPENHAR'
          Title.Alignment = taCenter
          Title.Caption = 'Comprar'
          Title.Color = clWindow
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_UND'
          Title.Alignment = taCenter
          Title.Caption = 'Und'
          Title.Color = clWindow
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 28
          Visible = True
        end>
    end
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 395
    Width = 825
    Height = 155
    Caption = 'Ordem de Produ'#231#227'o que Falta a Mat'#233'ria-Prima'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object DBGrid1: TDBGrid
      Left = 2
      Top = 16
      Width = 821
      Height = 137
      Align = alClient
      Color = 16776176
      DataSource = DsOps
      FixedColor = 12681984
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'OSV_CODIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'O.P.'
          Title.Color = clWindow
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_REFER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Title.Color = clWindow
          Width = 122
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o do Produto'
          Title.Color = clWindow
          Width = 420
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PTI_SIGLA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = '*'
          Title.Color = clWindow
          Width = 25
          Visible = True
        end
        item
          Color = 13494005
          Expanded = False
          FieldName = 'OSV_QTDE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Qtde'
          Title.Color = clWindow
          Width = 106
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_UND'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Und'
          Title.Color = clWindow
          Width = 36
          Visible = True
        end>
    end
  end
  object Bit_Imprimir: TBitBtn
    Left = 702
    Top = 7
    Width = 100
    Height = 25
    Caption = '&Relat'#243'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 6
    TabStop = False
    OnClick = Bit_ImprimirClick
  end
  object Bit_Sair: TBitBtn
    Left = 701
    Top = 34
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      CA010000424DCA01000000000000760000002800000026000000110000000100
      04000000000054010000CE0E0000D80E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888FFFFFFFFFFFFFFFFFFF008888888888880000078FFFFFFFFFFFFFFFFF
      FF00833333333000BB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
      FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
      00000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFF
      FFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBB
      B003008FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFF
      FF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
      FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
      00000BBBBB03078FFFFFFFFFFFFFFFFFFF00833333333000BB03078FFFFFFFFF
      FFFFFFFFFF008888888888880000088FFFFFFFFFFFFFFFFFFF00888888888888
      8888888FFFFFFFFFFFFFFFFFFF00}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 7
    TabStop = False
    OnClick = Bit_SairClick
  end
  object SqlCdsEstoque: TSqlClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    DataSet.CommandText = 
      'SELECT pr.PRD_REFER ,'#13#10' 0 AS consumo, O2.PRD_REFER_ITENS,'#13#10'P1.PR' +
      'D_DESCRI,'#13#10'P1.PRD_MINIMO,'#13#10'P1.PRD_UND,'#13#10'P2.PTI_SIGLA,'#13#10'((P1.PRD_' +
      'ESTOQUE+P1.PRD_ENTRADA)-(P1.PRD_SAIDA+P1.PRD_RESERVA+P1.PRD_EMPE' +
      'NHO)) AS WSALDO,'#13#10'SUM(CAST((((O2.osi_qtde1+O2.osi_qtde2+O2.osi_q' +
      'tde3+O2.osi_qtde4+O2.osi_qtde5+O2.osi_qtde6+O2.osi_qtde7+O2.osi_' +
      'qtde8))-(O2.osi_reservado + O2.osi_empenho)) AS NUMERIC(15,4))) ' +
      'AS FALTA_EMPENHAR'#13#10'FROM OSV0001 T1'#13#10'JOIN OSV_IT02 O2 ON (O2.OSV_' +
      'CODIGO = T1.OSV_CODIGO)'#13#10'LEFT JOIN PRD0000 P1 ON (O2.PRD_REFER_I' +
      'TENS = P1.PRD_REFER)'#13#10'LEFT JOIN PRD_TIPO P2 on (P1.PTI_CODIGO = ' +
      'P2.PTI_CODIGO)'#13#10#13#10'WHERE T1.OSV_STATUS = '#39'C'#39' AND O2.OSI_STATUSEMP' +
      'ENHO <>'#39'S'#39#13#10#13#10'GROUP BY'#13#10'O2.PRD_REFER_ITENS,'#13#10'P1.PRD_DESCRI,'#13#10'P1.' +
      'PRD_MINIMO,'#13#10'P1.PRD_UND,'#13#10'P2.PTI_SIGLA,'#13#10'P1.PRD_ESTOQUE,'#13#10'P1.PRD' +
      '_ENTRADA,'#13#10'P1.PRD_SAIDA,'#13#10'P1.PRD_RESERVA,'#13#10'P1.PRD_EMPENHO'#13#10'ORDER' +
      ' BY'#13#10'P1.PRD_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    AfterScroll = SqlCdsEstoqueAfterScroll
    CommandText = 
      'SELECT pr.PRD_REFER ,'#13#10' 0 AS consumo, O2.PRD_REFER_ITENS,'#13#10'P1.PR' +
      'D_DESCRI,'#13#10'P1.PRD_MINIMO,'#13#10'P1.PRD_UND,'#13#10'P2.PTI_SIGLA,'#13#10'((P1.PRD_' +
      'ESTOQUE+P1.PRD_ENTRADA)-(P1.PRD_SAIDA+P1.PRD_RESERVA+P1.PRD_EMPE' +
      'NHO)) AS WSALDO,'#13#10'SUM(CAST((((O2.osi_qtde1+O2.osi_qtde2+O2.osi_q' +
      'tde3+O2.osi_qtde4+O2.osi_qtde5+O2.osi_qtde6+O2.osi_qtde7+O2.osi_' +
      'qtde8))-(O2.osi_reservado + O2.osi_empenho)) AS NUMERIC(15,4))) ' +
      'AS FALTA_EMPENHAR'#13#10'FROM OSV0001 T1'#13#10'JOIN OSV_IT02 O2 ON (O2.OSV_' +
      'CODIGO = T1.OSV_CODIGO)'#13#10'LEFT JOIN PRD0000 P1 ON (O2.PRD_REFER_I' +
      'TENS = P1.PRD_REFER)'#13#10'LEFT JOIN PRD_TIPO P2 on (P1.PTI_CODIGO = ' +
      'P2.PTI_CODIGO)'#13#10#13#10'WHERE T1.OSV_STATUS = '#39'C'#39' AND O2.OSI_STATUSEMP' +
      'ENHO <>'#39'S'#39#13#10#13#10'GROUP BY'#13#10'O2.PRD_REFER_ITENS,'#13#10'P1.PRD_DESCRI,'#13#10'P1.' +
      'PRD_MINIMO,'#13#10'P1.PRD_UND,'#13#10'P2.PTI_SIGLA,'#13#10'P1.PRD_ESTOQUE,'#13#10'P1.PRD' +
      '_ENTRADA,'#13#10'P1.PRD_SAIDA,'#13#10'P1.PRD_RESERVA,'#13#10'P1.PRD_EMPENHO'#13#10'ORDER' +
      ' BY'#13#10'P1.PRD_DESCRI'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 384
    Top = 248
    object SqlCdsEstoquePRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsEstoquePRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsEstoquePRD_MINIMO: TFMTBCDField
      FieldName = 'PRD_MINIMO'
      DisplayFormat = '#,##0.0000'
      Precision = 15
      Size = 4
    end
    object SqlCdsEstoquePRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsEstoquePTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object SqlCdsEstoqueWSALDO: TFMTBCDField
      FieldName = 'WSALDO'
      DisplayFormat = '#,##0.0000'
      Precision = 15
      Size = 4
    end
    object SqlCdsEstoqueFALTA_EMPENHAR: TFMTBCDField
      FieldName = 'FALTA_EMPENHAR'
      DisplayFormat = '#,##0.0000'
      Precision = 15
      Size = 4
    end
    object SqlCdsEstoqueConsumo: TFMTBCDField
      FieldName = 'Consumo'
    end
    object SqlCdsEstoquePRD_REFER: TStringField
      DisplayWidth = 20
      FieldName = 'PRD_REFER'
    end
  end
  object DsEstoque: TDataSource
    DataSet = SqlCdsEstoque
    Left = 448
    Top = 248
  end
  object SqlCdsOps: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'T1.OSV_CODIGO,'#13#10'T1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UN' +
      'D,'#13#10'P2.PTI_SIGLA,'#13#10'T1.OSV_QTDE'#13#10'FROM OSV0001 T1'#13#10'LEFT JOIN OSV_I' +
      'T02 O2 ON (O2.OSV_CODIGO = T1.OSV_CODIGO)'#13#10'LEFT JOIN PRD0000 P1 ' +
      'ON (O2.PRD_REFER_ITENS = P1.PRD_REFER)'#13#10'LEFT JOIN PRD_TIPO P2 on' +
      ' (P1.PTI_CODIGO = P2.PTI_CODIGO)'#13#10'WHERE ((T1.OSV_STATUS <> '#39'C'#39')A' +
      'ND(T1.OSV_STATUS <> '#39'E'#39')) AND O2.OSI_STATUSEMPENHO <>'#39'S'#39' AND T1.' +
      'OSV_STATUS_SITUACAO = '#39'N'#39' AND O2.PRD_REFER_ITENS = '#39'582'#39#13#10'ORDER ' +
      'BY'#13#10'P1.PRD_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T1.OSV_CODIGO,'#13#10'T1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UN' +
      'D,'#13#10'P2.PTI_SIGLA,'#13#10'T1.OSV_QTDE'#13#10'FROM OSV0001 T1'#13#10'LEFT JOIN OSV_I' +
      'T02 O2 ON (O2.OSV_CODIGO = T1.OSV_CODIGO)'#13#10'LEFT JOIN PRD0000 P1 ' +
      'ON (O2.PRD_REFER_ITENS = P1.PRD_REFER)'#13#10'LEFT JOIN PRD_TIPO P2 on' +
      ' (P1.PTI_CODIGO = P2.PTI_CODIGO)'#13#10'WHERE ((T1.OSV_STATUS <> '#39'C'#39')A' +
      'ND(T1.OSV_STATUS <> '#39'E'#39')) AND O2.OSI_STATUSEMPENHO <>'#39'S'#39' AND T1.' +
      'OSV_STATUS_SITUACAO = '#39'N'#39' AND O2.PRD_REFER_ITENS = '#39'582'#39#13#10'ORDER ' +
      'BY'#13#10'P1.PRD_DESCRI'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 192
    Top = 155
    object SqlCdsOpsOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Required = True
      Size = 8
    end
    object SqlCdsOpsPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsOpsPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsOpsPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsOpsPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object SqlCdsOpsOSV_QTDE: TFMTBCDField
      FieldName = 'OSV_QTDE'
      Precision = 15
      Size = 4
    end
  end
  object DsOps: TDataSource
    DataSet = SqlCdsOps
    Left = 248
    Top = 155
  end
  object ppDBOps: TppDBPipeline
    DataSource = DsRelFalta
    UserName = 'DBOps'
    Left = 510
    Top = 187
    object ppDBOpsppField1: TppField
      FieldAlias = 'PRD_REFER'
      FieldName = 'PRD_REFER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBOpsppField2: TppField
      FieldAlias = 'PRD_DESCRI'
      FieldName = 'PRD_DESCRI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBOpsppField3: TppField
      FieldAlias = 'PRD_UND'
      FieldName = 'PRD_UND'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBOpsppField4: TppField
      FieldAlias = 'CQTDE'
      FieldName = 'CQTDE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
  end
  object ppRelFalta: TppReport
    AutoStop = False
    DataPipeline = ppDBOps
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 25000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 25000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'X:\developer\adjutor\fontesrelatorios\RELFALTAESTOQUE.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 572
    Top = 187
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBOps'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 19315
      mmPrintPosition = 0
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_00_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 794
        mmWidth = 159809
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_00_LTITULO1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_LTITULO1'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'RELA'#199#195'O DE MAT'#201'RIA-PRIMA EM FALTA NA PRODU'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 5292
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground1
      end
      object LBL_00_LTITULO2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_LTITULO2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TITULO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 9790
        mmWidth = 160073
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable23: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 162190
        mmTop = 529
        mmWidth = 32544
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable24: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 176477
        mmTop = 9260
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine66: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 14552
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 19050
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 15346
        mmWidth = 27781
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descri'#231#227'o do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 31485
        mmTop = 15346
        mmWidth = 74348
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 132027
        mmTop = 15346
        mmWidth = 27781
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Und'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 161925
        mmTop = 15346
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBOps
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBOps'
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 0
        mmWidth = 27781
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBOps
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBOps'
        mmHeight = 3704
        mmLeft = 31485
        mmTop = 0
        mmWidth = 74348
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CQTDE'
        DataPipeline = ppDBOps
        DisplayFormat = '#,##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBOps'
        mmHeight = 3704
        mmLeft = 132557
        mmTop = 0
        mmWidth = 27252
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_UND'
        DataPipeline = ppDBOps
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBOps'
        mmHeight = 3704
        mmLeft = 161925
        mmTop = 0
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        mmHeight = 3175
        mmLeft = 182827
        mmTop = 265
        mmWidth = 3440
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBEstoque'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 196000
        BandType = 7
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBEstoque
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 25000
          PrinterSetup.mmMarginLeft = 10000
          PrinterSetup.mmMarginRight = 10000
          PrinterSetup.mmMarginTop = 25000
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '16.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBEstoque'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 9525
            mmPrintPosition = 0
            object ppLabel7: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label7'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              Caption = 'Refer'#234'ncia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              FormField = False
              Transparent = True
              mmHeight = 3704
              mmLeft = 794
              mmTop = 4763
              mmWidth = 22225
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel8: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label8'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              Caption = 'Descri'#231#227'o da Mat'#233'ria-Prima'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              FormField = False
              Transparent = True
              mmHeight = 3704
              mmLeft = 27517
              mmTop = 4763
              mmWidth = 108215
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel9: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label9'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              Caption = 'Qtde '#224' Comprar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              FormField = False
              Transparent = True
              mmHeight = 3704
              mmLeft = 141023
              mmTop = 4498
              mmWidth = 22225
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel10: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label10'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              Caption = 'Und'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              FormField = False
              Transparent = True
              mmHeight = 3704
              mmLeft = 164571
              mmTop = 4498
              mmWidth = 5821
              BandType = 1
              LayerName = Foreground
            end
            object ppLine4: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line1'
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 0
              mmTop = 8995
              mmWidth = 194734
              BandType = 1
              LayerName = Foreground
            end
            object ppLine3: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line5'
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 0
              mmTop = 3969
              mmWidth = 196057
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel6: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label6'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              Caption = 'MATERIA-PRIMA '#192' COMPRAR (REFERENTA AS O.P'#39'S ACIMA)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              FormField = False
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 53669
              mmTop = 265
              mmWidth = 92287
              BandType = 1
              LayerName = Foreground
            end
            object ppLine2: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line3'
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 265
              mmTop = 0
              mmWidth = 196057
              BandType = 1
              LayerName = Foreground
            end
          end
          object ppDetailBand1: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 3969
            mmPrintPosition = 0
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText6'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_REFER_ITENS'
              DataPipeline = ppDBEstoque
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBEstoque'
              mmHeight = 3704
              mmLeft = 794
              mmTop = 265
              mmWidth = 22225
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText7'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_DESCRI'
              DataPipeline = ppDBEstoque
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBEstoque'
              mmHeight = 3704
              mmLeft = 27517
              mmTop = 265
              mmWidth = 107950
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText8: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText8'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'FALTA_EMPENHAR'
              DataPipeline = ppDBEstoque
              DisplayFormat = '#,##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBEstoque'
              mmHeight = 3704
              mmLeft = 141023
              mmTop = 265
              mmWidth = 22225
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText9: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText9'
              HyperlinkEnabled = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_UND'
              DataPipeline = ppDBEstoque
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBEstoque'
              mmHeight = 3704
              mmLeft = 164571
              mmTop = 265
              mmWidth = 8202
              BandType = 4
              LayerName = Foreground
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line6'
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 174625
              mmTop = 3175
              mmWidth = 18521
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Background.Brush.Style = bsClear
            mmBottomOffset = 0
            mmHeight = 529
            mmPrintPosition = 0
            object ppLine5: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line2'
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 0
              mmTop = 264
              mmWidth = 194734
              BandType = 7
              LayerName = Foreground
            end
          end
          object ppDesignLayers1: TppDesignLayers
            object ppDesignLayer1: TppDesignLayer
              UserName = 'Foreground'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBEstoque: TppDBPipeline
    DataSource = DsEstoque
    UserName = 'DBEstoque'
    Left = 510
    Top = 248
  end
  object SQLRelFalta: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'T1.PRD_REFER,'#13#10'T2.PRD_DESCRI,'#13#10'T2.PRD_UND,'#13#10'SUM(T1.OSV_Q' +
      'TDE) AS CQTDE'#13#10'FROM OSV0001 T1'#13#10'LEFT JOIN PRD0000 T2 ON (T2.PRD_' +
      'REFER = T1.PRD_REFER)'#13#10'WHERE ((T1.OSV_STATUS <> '#39'C'#39')AND(T1.OSV_S' +
      'TATUS <> '#39'E'#39')) AND T1.OSV_STATUS_SITUACAO = '#39'N'#39#13#10'GROUP BY'#13#10'T1.PR' +
      'D_REFER,'#13#10'T2.PRD_DESCRI,'#13#10'T2.PRD_UND'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T1.PRD_REFER,'#13#10'T2.PRD_DESCRI,'#13#10'T2.PRD_UND,'#13#10'SUM(T1.OSV_Q' +
      'TDE) AS CQTDE'#13#10'FROM OSV0001 T1'#13#10'LEFT JOIN PRD0000 T2 ON (T2.PRD_' +
      'REFER = T1.PRD_REFER)'#13#10'WHERE ((T1.OSV_STATUS <> '#39'C'#39')AND(T1.OSV_S' +
      'TATUS <> '#39'E'#39')) AND T1.OSV_STATUS_SITUACAO = '#39'N'#39#13#10'GROUP BY'#13#10'T1.PR' +
      'D_REFER,'#13#10'T2.PRD_DESCRI,'#13#10'T2.PRD_UND'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 384
    Top = 187
    object SQLRelFaltaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SQLRelFaltaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SQLRelFaltaPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SQLRelFaltaCQTDE: TFMTBCDField
      FieldName = 'CQTDE'
      Precision = 15
      Size = 4
    end
  end
  object DsRelFalta: TDataSource
    DataSet = SQLRelFalta
    Left = 448
    Top = 187
  end
  object SqlCdsIOP: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = []
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 378
    Top = 309
  end
  object dsIOP: TDataSource
    DataSet = SqlCdsIOP
    Left = 450
    Top = 309
  end
end
