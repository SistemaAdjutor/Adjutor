object FrmPlanoContasCentroCustoColaboradorSelecao: TFrmPlanoContasCentroCustoColaboradorSelecao
  Left = 779
  Top = 247
  Caption = 'Rateio de Colaboradores por Centro de Custo - Sele'#231#227'o'
  ClientHeight = 599
  ClientWidth = 649
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object grpTotal: TGroupBox
    Left = 0
    Top = 501
    Width = 649
    Height = 56
    Align = alTop
    Caption = 'Total de Colaboradores'
    Enabled = False
    TabOrder = 0
    object CurTotalColaborador: TCurrencyEdit
      Left = 528
      Top = 16
      Width = 81
      Height = 21
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '###,###,###.#####'
      TabOrder = 0
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 141
    Width = 649
    Height = 360
    Align = alTop
    Caption = 'Centro de Custos e Rateio de Colaboradores - Selecione'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 16
      Width = 645
      Height = 342
      Align = alClient
      Color = 16776176
      DataSource = dsIndices
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'IC_Selecao'
          Title.Alignment = taCenter
          Title.Caption = '*'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nivel'
          Title.Alignment = taCenter
          Title.Caption = 'N'#237'vel'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CentroCusto'
          Title.Alignment = taCenter
          Title.Caption = 'Centro de Custo'
          Width = 408
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Title.Alignment = taCenter
          Width = 68
          Visible = True
        end>
    end
  end
  object Bit_Gravar: TBitBtn
    Left = 439
    Top = 566
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Hint = '|Grava registro...'
    Caption = '&Gravar'
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
    TabOrder = 2
    OnClick = Bit_GravarClick
  end
  object Bit_Cancelar: TBitBtn
    Left = 541
    Top = 566
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Hint = '|Cancela registro atual...'
    Cancel = True
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      04000000000068010000CE0E0000D80E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033333333333333333333333F333333333333
      0000333333333333333333333388F333333F3333000033300333333300033333
      38F38F333F88F33300003330003333300033333338F338F3F8338F3300003333
      000333000333333338F3338F833338F3000033333000300033333333338F3338
      3333F8330000333333000003333333333338F333333F83330000333333300033
      3333333333338F3333383333000033333300000333333333333338F333833333
      00003333300030003333333333333833338F3333000033330003330003333333
      33338333338F333300003330003333300033333333383338F338F33300003330
      0333333300033333338333838F338F3300003333333333333003333333833833
      38F338F300003333333333333333333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = Bit_CancelarClick
  end
  object grpDuplicata: TGroupBox
    Left = 0
    Top = 0
    Width = 649
    Height = 68
    Align = alTop
    Caption = 'Informa'#231#245'es da Fatura'
    TabOrder = 4
    object Label4: TLabel
      Left = 8
      Top = 24
      Width = 31
      Height = 14
      Caption = 'Fatura'
    end
    object Label5: TLabel
      Left = 168
      Top = 24
      Width = 25
      Height = 14
      Caption = 'Valor'
    end
    object Label6: TLabel
      Left = 270
      Top = 24
      Width = 97
      Height = 14
      Caption = 'Cliente / Fornecedor'
    end
    object edtFatura: TEdit
      Left = 8
      Top = 40
      Width = 153
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 0
      Text = 'edtConta'
    end
    object edtValor: TEdit
      Left = 168
      Top = 40
      Width = 97
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 1
      Text = 'edtConta'
    end
    object edtClienteFornecedor: TEdit
      Left = 269
      Top = 40
      Width = 372
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 2
      Text = 'edtConta'
    end
  end
  object grpConta: TGroupBox
    Left = 0
    Top = 68
    Width = 649
    Height = 73
    Align = alTop
    Caption = 'Conta Financeira'
    TabOrder = 5
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 23
      Height = 14
      Caption = 'N'#237'vel'
    end
    object Label2: TLabel
      Left = 168
      Top = 24
      Width = 49
      Height = 14
      Caption = 'Descri'#231#227'o'
    end
    object Label3: TLabel
      Left = 584
      Top = 24
      Width = 45
      Height = 14
      Caption = 'Reduzido'
    end
    object edtConta: TEdit
      Left = 8
      Top = 40
      Width = 153
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 0
      Text = 'edtConta'
    end
    object edtDescricao: TEdit
      Left = 168
      Top = 40
      Width = 409
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 1
      Text = 'edtConta'
    end
    object edtReduzido: TEdit
      Left = 584
      Top = 40
      Width = 57
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 2
      Text = 'edtConta'
    end
  end
  object CdsIndices: TClientDataSet
    PersistDataPacket.Data = {
      A60000009619E0BD010000001800000006000000000003000000A600054E6976
      656C0100490000000100055749445448020002000F000B43656E74726F437573
      746F010049000000010005574944544802000200280008526564757A69646F01
      0049000000010005574944544802000200030006496E64696365080004000000
      00000A496E646963655265616C08000400000000000A5175616E746964616465
      08000400000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Nivel'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CentroCusto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Reduzido'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Indice'
        DataType = ftFloat
      end
      item
        Name = 'IndiceReal'
        DataType = ftFloat
      end
      item
        Name = 'Quantidade'
        DataType = ftFloat
      end
      item
        Name = 'IC_Selecao'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    IndexFieldNames = 'Nivel'
    Params = <>
    StoreDefs = True
    Left = 24
    Top = 185
    object CdsIndicesNivel: TStringField
      FieldName = 'Nivel'
      Size = 15
    end
    object CdsIndicesCentroCusto: TStringField
      FieldName = 'CentroCusto'
      Size = 40
    end
    object CdsIndicesReduzido: TStringField
      FieldName = 'Reduzido'
      Size = 3
    end
    object CdsIndicesIndice: TFloatField
      FieldName = 'Indice'
      DisplayFormat = '##0.00%'
      currency = True
    end
    object CdsIndicesIndiceReal: TFloatField
      FieldName = 'IndiceReal'
    end
    object CdsIndicesQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object CdsIndicesIC_Selecao: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'IC_Selecao'
    end
  end
  object dsIndices: TDataSource
    DataSet = CdsIndices
    Left = 64
    Top = 185
  end
  object CdsClone: TClientDataSet
    PersistDataPacket.Data = {
      A60000009619E0BD010000001800000006000000000003000000A600054E6976
      656C0100490000000100055749445448020002000F0006696E64696365080004
      000000000008526564757A69646F010049000000010005574944544802000200
      03000A496E646963655265616C08000400000000000B43656E74726F43757374
      6F01004900000001000557494454480200020028000A5175616E746964616465
      08000400000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Nivel'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'indice'
        DataType = ftFloat
      end
      item
        Name = 'Reduzido'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'IndiceReal'
        DataType = ftFloat
      end
      item
        Name = 'CentroCusto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Quantidade'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'Nivel'
    Params = <>
    StoreDefs = True
    Left = 224
    Top = 153
    object CdsCloneNivel: TStringField
      FieldName = 'Nivel'
      Size = 15
    end
    object CdsCloneindice: TFloatField
      FieldName = 'indice'
    end
    object CdsCloneReduzido: TStringField
      FieldName = 'Reduzido'
      Size = 3
    end
    object CdsCloneIndiceReal: TFloatField
      FieldName = 'IndiceReal'
    end
    object CdsCloneCentroCusto: TStringField
      FieldName = 'CentroCusto'
      Size = 40
    end
    object CdsCloneQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
  end
  object CdsPercentes: TClientDataSet
    PersistDataPacket.Data = {
      660000009619E0BD0100000018000000040000000000030000006600054E6976
      656C040001000000000004736F6D610800040000000000095265666572656E74
      6501004900000001000557494454480200020032000A496E646963655265616C
      08000400000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 256
    Top = 153
    object CdsPercentesNivel: TIntegerField
      FieldName = 'Nivel'
    end
    object CdsPercentessoma: TFloatField
      FieldName = 'soma'
    end
    object CdsPercentesReferente: TStringField
      FieldName = 'Referente'
      Size = 50
    end
    object CdsPercentesIndiceReal: TFloatField
      FieldName = 'IndiceReal'
    end
  end
  object CdsPlanoCentro: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'    T1.FAT_REGISTRO AS REGISTRO,'#13#10'    T1.FAT_CODIGO AS F' +
      'ATURA,'#13#10'    T1.FPC_NUMER AS NUMERO,'#13#10'    T2.CLI_RAZAO AS RAZAO,'#13 +
      #10'    T1.FPC_VLPARC AS VALOR,'#13#10't3.CCT_CODIGO, t3.CCT_NIVEL, t3.CC' +
      'T_DESCRI'#13#10'FROM FAT_PC01 T1'#13#10'JOIN CLI0000 T2 ON (T2.CLI_CODIGO = ' +
      'T1.CLI_CODIGO)'#13#10'left JOIN CCT_0000 t3 on (t3.CCT_CODIGO = t1.CCT' +
      '_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'    T1.FAT_REGISTRO AS REGISTRO,'#13#10'    T1.FAT_CODIGO AS F' +
      'ATURA,'#13#10'    T1.FPC_NUMER AS NUMERO,'#13#10'    T2.CLI_RAZAO AS RAZAO,'#13 +
      #10'    T1.FPC_VLPARC AS VALOR,'#13#10't3.CCT_CODIGO, t3.CCT_NIVEL, t3.CC' +
      'T_DESCRI'#13#10'FROM FAT_PC01 T1'#13#10'JOIN CLI0000 T2 ON (T2.CLI_CODIGO = ' +
      'T1.CLI_CODIGO)'#13#10'left JOIN CCT_0000 t3 on (t3.CCT_CODIGO = t1.CCT' +
      '_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 392
    Top = 169
    object CdsPlanoCentroREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
    end
    object CdsPlanoCentroFATURA: TStringField
      FieldName = 'FATURA'
      Size = 15
    end
    object CdsPlanoCentroNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 2
    end
    object CdsPlanoCentroRAZAO: TStringField
      FieldName = 'RAZAO'
      Size = 55
    end
    object CdsPlanoCentroVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 20
      Size = 5
    end
    object CdsPlanoCentroCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object CdsPlanoCentroCCT_NIVEL: TStringField
      FieldName = 'CCT_NIVEL'
      Size = 19
    end
    object CdsPlanoCentroCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      Size = 82
    end
  end
  object CdsColaboradorCentroCusto: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10' t2.PCX_CODIGO,'#13#10' T2.PCX_NIVEL,'#13#10' T2.PCX_DESCRI,'#13#10't1.PPC' +
      '_QUANTIDADE_TOTAL_PERFIL,'#13#10' T1.PPC_QUANTIDADE,'#13#10't1.PPC_TIPO'#13#10'FRO' +
      'M'#13#10'PCX0000_PERFIL_COLABORADOR T1'#13#10'JOIN PCX0000 T2 ON (T2.PCX_COD' +
      'IGO = T1.PCX_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10' t2.PCX_CODIGO,'#13#10' T2.PCX_NIVEL,'#13#10' T2.PCX_DESCRI,'#13#10't1.PPC' +
      '_QUANTIDADE_TOTAL_PERFIL,'#13#10' T1.PPC_QUANTIDADE,'#13#10't1.PPC_TIPO'#13#10'FRO' +
      'M'#13#10'PCX0000_PERFIL_COLABORADOR T1'#13#10'JOIN PCX0000 T2 ON (T2.PCX_COD' +
      'IGO = T1.PCX_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 424
    Top = 241
    object CdsColaboradorCentroCustoPCX_NIVEL: TStringField
      FieldName = 'PCX_NIVEL'
      Size = 15
    end
    object CdsColaboradorCentroCustoPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object CdsColaboradorCentroCustoPPC_QUANTIDADE: TFMTBCDField
      FieldName = 'PPC_QUANTIDADE'
      Precision = 20
      Size = 5
    end
    object CdsColaboradorCentroCustoPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object CdsColaboradorCentroCustoPPC_QUANTIDADE_TOTAL_PERFIL: TFMTBCDField
      FieldName = 'PPC_QUANTIDADE_TOTAL_PERFIL'
      Precision = 20
      Size = 5
    end
    object CdsColaboradorCentroCustoPPC_TIPO: TStringField
      FieldName = 'PPC_TIPO'
      Size = 1
    end
  end
end
