inherited frmRentabilidadeOS: TfrmRentabilidadeOS
  Caption = 'Rentabilidade das Ordens de Servi'#231'o'
  ClientHeight = 240
  ClientWidth = 497
  ExplicitWidth = 505
  ExplicitHeight = 267
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 55
    Top = 10
    Width = 37
    Height = 13
    Caption = 'Cliente:'
  end
  object Label2: TLabel [1]
    Left = 7
    Top = 37
    Width = 85
    Height = 13
    Caption = 'Tipo Servi'#231'o Ind.:'
  end
  object Label3: TLabel [2]
    Left = 50
    Top = 64
    Width = 42
    Height = 13
    Caption = 'Produto:'
  end
  object Label4: TLabel [3]
    Left = 7
    Top = 167
    Width = 85
    Height = 13
    Caption = 'Ordem de Servi'#231'o'
  end
  object Label5: TLabel [4]
    Left = 279
    Top = 167
    Width = 29
    Height = 13
    Caption = 'Carga'
  end
  object gbPeriodo: TGroupBox [5]
    Left = 98
    Top = 88
    Width = 337
    Height = 57
    Caption = 'Per'#237'odo'
    TabOrder = 6
    object lblInicio: TLabel
      Left = 6
      Top = 24
      Width = 54
      Height = 13
      Caption = #224' Partir de:'
    end
    object lblFim: TLabel
      Left = 188
      Top = 24
      Width = 21
      Height = 13
      Caption = 'At'#233':'
    end
    object dtInicial: TJvDateEdit
      Left = 64
      Top = 21
      Width = 113
      Height = 21
      DateFormat = 'YYYY'
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 0
    end
    object dtFinal: TJvDateEdit
      Left = 215
      Top = 21
      Width = 113
      Height = 21
      DateFormat = 'YYYY'
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 1
    end
  end
  object btImprimir: TBitBtn [6]
    Left = 264
    Top = 205
    Width = 106
    Height = 25
    Caption = '&Imprimir'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    TabOrder = 8
    OnClick = btImprimirClick
  end
  object brFechar: TBitBtn [7]
    Left = 376
    Top = 205
    Width = 106
    Height = 25
    Caption = '&Fechar'
    Glyph.Data = {
      26050000424D26050000000000003604000028000000100000000F0000000100
      080000000000F0000000C40E0000C40E00000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A6000020400000206000002080000020A0000020C0000020E000004000000040
      20000040400000406000004080000040A0000040C0000040E000006000000060
      20000060400000606000006080000060A0000060C0000060E000008000000080
      20000080400000806000008080000080A0000080C0000080E00000A0000000A0
      200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
      200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
      200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
      20004000400040006000400080004000A0004000C0004000E000402000004020
      20004020400040206000402080004020A0004020C0004020E000404000004040
      20004040400040406000404080004040A0004040C0004040E000406000004060
      20004060400040606000406080004060A0004060C0004060E000408000004080
      20004080400040806000408080004080A0004080C0004080E00040A0000040A0
      200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
      200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
      200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
      20008000400080006000800080008000A0008000C0008000E000802000008020
      20008020400080206000802080008020A0008020C0008020E000804000008040
      20008040400080406000804080008040A0008040C0008040E000806000008060
      20008060400080606000806080008060A0008060C0008060E000808000008080
      20008080400080806000808080008080A0008080C0008080E00080A0000080A0
      200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
      200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
      200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
      2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
      2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
      2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
      2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
      2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
      2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
      2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00A4
      FFFFFFA4A4FFFFFFFFFFFFFFFF0101A4A4FFF900A4A4FFFFFFFFFFFFFF010100
      A4A4010100A4FFFFFFFFFFFFFFF901010001010101FFFFFFFFFFFFFFFFFFF901
      01010101FFFFFFFFFFFFFFFFFFFFFFF9010101A4A4FFFFFFFFFFFFFFFFFFFFF9
      01010100A4A4FFFFFFFFFFFFFFFFFF0101F9010100A4A4FFFFFFFFFFFFA4F901
      00A4F9010100A4FFFFFFFFFFFFFF0101A4FFFFF9010100FFFFFFFFFFFFFFF9FF
      FFFFFFFFF90107FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF}
    TabOrder = 9
    OnClick = brFecharClick
  end
  object edServicoCodigo: TEdit [8]
    Left = 98
    Top = 34
    Width = 43
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    MaxLength = 5
    TabOrder = 2
    OnExit = edServicoCodigoExit
  end
  object chkPDF: TCheckBox [9]
    Left = 8
    Top = 209
    Width = 109
    Height = 17
    Caption = 'Exportar para PDF'
    TabOrder = 10
    OnClick = chkPDFClick
  end
  object edServico: TSgDbSearchCombo [10]
    Left = 147
    Top = 34
    Width = 310
    Height = 21
    TabOrder = 3
    CharCase = ecUpperCase
    LookupSelect = 'SRV_CODIGO, SRV_NOME'
    LookupOrderBy = 'SRV_NOME'
    LookupTable = 'SERVICO'
    LookupDispl = 'SRV_NOME'
    OnSelect = edServicoSelect
    GridAutoSize = False
    LookupSource = qServico
    LookupKeyField = 'SRV_CODIGO'
    ShowButton = True
    AutoF8WinTitulo = 'Servi'#231'os'
    AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
  end
  object edProdutoRefer: TEdit [11]
    Left = 98
    Top = 61
    Width = 43
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    MaxLength = 5
    TabOrder = 4
    OnExit = edProdutoReferExit
  end
  object edProduto: TSgDbSearchCombo [12]
    Left = 147
    Top = 61
    Width = 310
    Height = 21
    TabOrder = 5
    CharCase = ecUpperCase
    LookupSelect = 'PRD_REFER, PRD_DESCRI'
    LookupOrderBy = 'PRD_DESCRI'
    LookupTable = 'PRD0000'
    LookupDispl = 'PRD_DESCRI'
    OnSelect = edProdutoSelect
    GridAutoSize = False
    LookupSource = qProduto
    LookupKeyField = 'PRD_REFER'
    ShowButton = True
    AutoF8WinTitulo = 'Produtos'
    AutoF8ColumnsTitulo = 'Refer'#234'ncia, Nome'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
  end
  object edCarga: TEdit [13]
    Left = 314
    Top = 164
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object EdClienteCodigo: TEdit [14]
    Left = 98
    Top = 7
    Width = 43
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    MaxLength = 5
    TabOrder = 0
    OnExit = EdClienteCodigoExit
  end
  object edOS: TEdit [15]
    Left = 98
    Top = 164
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object chkExcel: TCheckBox [16]
    Left = 136
    Top = 209
    Width = 122
    Height = 17
    Caption = 'Exportar para Excel'
    TabOrder = 11
    OnClick = chkExcelClick
  end
  object edCliente: TSgDbSearchCombo [17]
    Left = 147
    Top = 7
    Width = 310
    Height = 21
    TabOrder = 1
    CharCase = ecUpperCase
    LookupSelect = 'CLI_CODIGO, CLI_RAZAO'
    LookupOrderBy = 'CLI_RAZAO'
    LookupTable = 'CLI0000'
    LookupDispl = 'CLI_RAZAO'
    OnSelect = edClienteSelect
    GridAutoSize = False
    LookupSource = qCliente
    LookupKeyField = 'CLI_CODIGO'
    ShowButton = True
    AutoF8WinTitulo = 'Clientes'
    AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
    GridLeft = 0
    GridWidth = 0
    GridHeight = 100
    GridShowWhenEnter = False
    SelectWithDoubleClick = False
  end
  inherited coCalcula: TACBrCalculadora
    Left = 448
    Top = 8
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 448
    Top = 56
  end
  inherited DBConn: TSQLConnection
    Params.Strings = (
      'DriverName=Firebird'
      'Database=C:\Jobdados\exemplo\EXEMPLO.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=True')
    Left = 8
    Top = 9
  end
  inherited qAux: TSQLQuery
    BeforeScroll = qAuxBeforeScroll
    SQL.Strings = (
      'SELECT DISTINCT  '#39#39' as car_codigo,'
      '     ( SELECT  '
      
        '         sum( (ci.CIO_PV * ((CAST(datediff(MINUTE from pp.PCP_DA' +
        'TAINI to pp.PCP_DATAFIM) AS float)/60) )) / '
      '                 ('
      '                    SELECT '
      
        '                         SUM(iop3.IOP_PESO * pi.PRF_QTDE_ENV_PRO' +
        'DUCAO) '
      '                    from item_ordemproducao iop3  '
      
        '                        join ordemproducao op on (op.opr_codigo ' +
        '= iop3.opr_codigo)       '
      
        '                        join PROCESSOS_PRODUCAO pp on (iop3.iop_' +
        'codigo = pp.iop_codigo)  '
      
        '                        join carga ca2 on (ca2.car_codigo = pp.c' +
        'ar_codigo)                '
      
        '                        join operacoes ope on (ope.ope_codigo = ' +
        'pp.ope_codigo)          '
      
        '                        JOIN PED_IT01 pi ON (pi.PED_CODIGO = op.' +
        'PED_CODIGO AND IOP3.PRF_REGISTRO = pi.PRF_REGISTRO)'
      '                    WHERE ca2.car_codigo = ca.CAR_CODIGO     '
      '                 )'
      '             )  AS CustoInt     '
      '        from item_ordemproducao iop2  '
      
        '            join ordemproducao op on (op.opr_codigo = iop2.opr_c' +
        'odigo)       '
      
        '            join PROCESSOS_PRODUCAO pp on (iop2.iop_codigo = pp.' +
        'iop_codigo)  '
      
        '            join carga ca on (ca.car_codigo = pp.car_codigo)    ' +
        '            '
      
        '            join EQUIPAMENTO eq ON (eq.EQP_CODIGO = ca.EQP_CODIG' +
        'O)  '
      
        '            JOIN CUSTOINDUST ci ON (ci.SET_CODIGO = eq.SET_CODIG' +
        'O AND ci.CIO_MES = EXTRACT(MONTH FROM pp.PCP_DATAINI) AND ci.CIO' +
        '_ANO = EXTRACT(YEAR FROM pp.PCP_DATAINI))'
      '            WHERE iop2.IOP_NORDEM = iop.IOP_NORDEM '
      '     )  AS Custo,'
      '     iop.IOP_PESO * pi.PRF_QTDE_ENV_PRODUCAO PesoTotal,'
      '     pr.PRD_UND, iop.IOP_QUANTIDADE * iop.IOP_PRECO AS Total,'
      '     pe.PED_CODIGO, iop.IOP_NORDEM, pr.PRD_REFER, '
      '     pi.PRF_PRDDESCRI, cl.cli_razao, sv.srv_nome,  '
      '     iop.IOP_QUANTIDADE, iop.IOP_PESO ,pi.PRF_QTDE_ENV_PRODUCAO,'
      '     iop.IOP_PRECO,       '
      '      iop.IOP_PRECO * iop.IOP_QUANTIDADE ValorVenda      '
      'from item_ordemproducao iop  '
      'join ordemproducao op on (op.opr_codigo = iop.opr_codigo)       '
      'join ped0000 pe on (pe.ped_codigo = op.ped_codigo)              '
      'join cli0000 cl on (cl.cli_codigo = op.cli_codigo)              '
      'join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)             '
      'join PROCESSOS_PRODUCAO pp on (iop.iop_codigo = pp.iop_codigo)  '
      'join carga ca on (ca.car_codigo = pp.car_codigo)                '
      'join operacoes ope on (ope.ope_codigo = pp.ope_codigo)          '
      'join EQUIPAMENTO eq ON (eq.EQP_CODIGO = ca.EQP_CODIGO)  '
      'join SETOR se ON (se.SET_CODIGO = eq.SET_CODIGO)  '
      'join processos po ON (po.PRO_CODIGO = iop.PRO_CODIGO)'
      'join servico sv on (sv.srv_codigo = po.srv_codigo)'
      
        'JOIN PED_IT01 pi ON (pi.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_R' +
        'EGISTRO = pi.PRF_REGISTRO)'
      'JOIN CUSTOINDUST ci ON (ci.SET_CODIGO = eq.SET_CODIGO )'
      'WHERE iop.IOP_NORDEM = '#39'208542-01'#39)
    Left = 162
    Top = 141
    object qAuxCAR_CODIGO: TStringField
      DisplayLabel = 'Carga'
      FieldName = 'CAR_CODIGO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qAuxCUSTO: TFloatField
      DisplayLabel = 'Custo'
      FieldName = 'CUSTO'
    end
    object qAuxPESOTOTAL: TFMTBCDField
      DisplayLabel = 'Peso Total'
      FieldName = 'PESOTOTAL'
      Precision = 18
      Size = 10
    end
    object qAuxPRD_UND: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'PRD_UND'
      Size = 6
    end
    object qAuxTOTAL: TFMTBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Precision = 18
      Size = 10
    end
    object qAuxPED_CODIGO: TStringField
      DisplayLabel = 'Pedido N'#186
      FieldName = 'PED_CODIGO'
      Required = True
      Size = 7
    end
    object qAuxIOP_NORDEM: TStringField
      DisplayLabel = 'N'#186' da Ordem'
      FieldName = 'IOP_NORDEM'
    end
    object qAuxPRD_REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRD_REFER'
    end
    object qAuxPRF_PRDDESCRI: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRF_PRDDESCRI'
      Size = 100
    end
    object qAuxCLI_RAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CLI_RAZAO'
      Size = 70
    end
    object qAuxSRV_NOME: TStringField
      DisplayLabel = 'Tipo do Servi'#231'o'
      FieldName = 'SRV_NOME'
      Size = 60
    end
    object qAuxIOP_QUANTIDADE: TFMTBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'IOP_QUANTIDADE'
      Precision = 18
      Size = 5
    end
    object qAuxIOP_PESO: TFMTBCDField
      DisplayLabel = 'Peso'
      FieldName = 'IOP_PESO'
      Precision = 18
      Size = 5
    end
    object qAuxPRF_QTDE_ENV_PRODUCAO: TFMTBCDField
      DisplayLabel = 'Enviado '#224' Produ'#231#227'o'
      FieldName = 'PRF_QTDE_ENV_PRODUCAO'
      Precision = 18
      Size = 5
    end
    object qAuxIOP_PRECO: TFMTBCDField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'IOP_PRECO'
      Precision = 18
      Size = 5
    end
    object qAuxVALORVENDA: TFMTBCDField
      DisplayLabel = 'Valor de Venda'
      FieldName = 'VALORVENDA'
      Precision = 18
      Size = 10
    end
  end
  inherited qAux2: TSQLQuery
    Left = 394
    Top = 52
  end
  inherited qAux3: TSQLQuery
    Left = 394
    Top = 100
  end
  object qCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT CLI_CODIGO, CLI_RAZAO '
      'FROM CLI0000 '
      'ORDER BY CLI_RAZAO')
    SQLConnection = DBConn
    Left = 344
    Top = 8
  end
  object qServico: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT SRV_CODIGO, SRV_NOME '
      'FROM SERVICO'
      'ORDER BY SRV_NOME')
    SQLConnection = DBConn
    Left = 344
    Top = 59
  end
  object qProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT PRD_REFER, PRD_DESCRI'
      'FROM PRD0000'
      'ORDER BY PRD_DESCRI')
    SQLConnection = DBConn
    Left = 344
    Top = 110
  end
  object frxOS: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44383.615105243100000000
    ReportOptions.LastChange = 44389.669017199100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var EMPRESA, datai, dataf: string;'
      
        '    contCliente, contPedido: integer;                           ' +
        '                                                    '
      'procedure HeaderClienteOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '  contCliente := contCliente + 1;                               ' +
        '                                                     '
      'end;'
      ''
      'procedure HeaderPedidoOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '  contPedido := contPedido + 1;                                 ' +
        '                                   '
      'end;'
      ''
      'begin'
      '  contCliente := 0;'
      '  contPedido := 0;                                        '
      'end.')
    OnBeginDoc = frxOSBeginDoc
    OnGetValue = frxOSGetValue
    Left = 32
    Top = 144
    Datasets = <
      item
        DataSet = frxDBOS
        DataSetName = 'frxDBOS'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 63.047310000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo7: TfrxMemoView
          Left = 948.662030000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo8: TfrxMemoView
          Left = 1001.575450000000000000
          Top = 18.897650000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 63.047310000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          Left = 873.291900000000000000
          Top = 18.897650000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Emitido em: [Date]')
          ParentFont = False
        end
        object LogoEmpresa: TfrxPictureView
          Left = 3.779530000000000000
          Width = 177.637783070000000000
          Height = 60.472480000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object wFrxRazao: TfrxMemoView
          Left = 190.433210000000000000
          Top = 1.779530000000000000
          Width = 744.567410000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[EMPRESA]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 466.661720000000000000
          Top = 18.456710000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Rentabilidade de Clientes')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 755.906000000000000000
          Top = 41.574830000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Per'#237'odo de: [DATAI] at'#233' [DATAF]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 13.228346460000000000
        Top = 253.228510000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBOS
        DataSetName = 'frxDBOS'
        RowCount = 0
        object Memo18: TfrxMemoView
          Width = 56.692950000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOS."IOP_NORDEM"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 61.590600000000000000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOS."PRD_REFER"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 102.047310000000000000
          Width = 241.889920000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOS."PRF_PRDDESCRI"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 350.496290000000000000
          Width = 124.724490000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOS."SRV_NOME"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 480.779840000000000000
          Width = 49.133890000000000000
          Height = 13.228346460000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBOS."IOP_QUANTIDADE"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 533.472790000000000000
          Width = 45.354360000000000000
          Height = 13.228346460000000000
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBOS."IOP_PESO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 579.386210000000000000
          Width = 75.590600000000000000
          Height = 13.228346460000000000
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBOS."PESOTOTAL"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 665.535870000000000000
          Width = 60.472480000000000000
          Height = 13.228346460000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBOS."IOP_PRECO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 754.346940000000000000
          Width = 71.811070000000000000
          Height = 13.228346460000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBOS."TOTAL"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 902.307670000000000000
          Width = 75.590600000000000000
          Height = 13.228346460000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<frxDBOS."TOTAL"> - (<frxDBOS."CUSTO"> *  iif(<frxDBOS."PRF_QTD' +
              'E_ENV_PRODUCAO"> > 0   , <frxDBOS."IOP_QUANTIDADE">, <frxDBOS."I' +
              'OP_QUANTIDADE"> * <frxDBOS."IOP_PESO">) ) ]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 989.236860000000000000
          Width = 52.913420000000000000
          Height = 13.228346460000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[(<frxDBOS."TOTAL"> - (<frxDBOS."CUSTO"> *  iif(<frxDBOS."PRF_QT' +
              'DE_ENV_PRODUCAO"> > 0   , <frxDBOS."IOP_QUANTIDADE">, <frxDBOS."' +
              'IOP_QUANTIDADE"> * <frxDBOS."IOP_PESO">) ) ) / <frxDBOS."TOTAL">' +
              ' * 100]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 830.496600000000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<frxDBOS."CUSTO"> *  iif(<frxDBOS."PRF_QTDE_ENV_PRODUCAO"> > 0 ' +
              '  , <frxDBOS."IOP_QUANTIDADE">, <frxDBOS."IOP_QUANTIDADE"> * <fr' +
              'xDBOS."IOP_PESO">)  ]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 729.449290000000000000
          Width = 22.677180000000000000
          Height = 13.228346460000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBOS."PRD_UND"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.015770000000000000
        Top = 105.826840000000000000
        Width = 1046.929810000000000000
        object Memo14: TfrxMemoView
          Top = 3.118120000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'OS')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 350.362204724409000000
          Top = 3.118120000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Tipo Servi'#231'o')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 65.370130000000000000
          Top = 3.118120000000000000
          Width = 22.677035980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Ref.')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 477.220780000000000000
          Top = 3.118120000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 2.779530000000000000
          Top = 16.897650000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          Left = 102.047244094488000000
          Top = 3.000000000000000000
          Width = 52.913275980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 532.252320000000000000
          Top = 3.000000000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Peso')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 597.063390000000000000
          Top = 3.000000000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Peso Total')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 673.653990000000000000
          Top = 3.000000000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 761.465060000000000000
          Top = 3.000000000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 833.276130000000000000
          Top = 3.000000000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Custo')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 916.425790000000000000
          Top = 3.000000000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Lucro')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 977.898270000000000000
          Top = 3.000000000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Perc. %')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 724.228820000000000000
          Top = 3.779530000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
      end
      object HeaderCliente: TfrxGroupHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 188.976500000000000000
        Width = 1046.929810000000000000
        OnAfterPrint = 'HeaderClienteOnAfterPrint'
        Condition = 'frxDBOS."CLI_RAZAO"'
        object Memo3: TfrxMemoView
          Left = 64.252010000000000000
          Width = 763.465060000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBOS."CLI_RAZAO"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clWhite
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 2.779530000000000000
          Top = 18.897650000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object FooterCliente: TfrxGroupFooter
        FillType = ftBrush
        Height = 20.677180000000000000
        Top = 332.598640000000000000
        Width = 1046.929810000000000000
        object Memo35: TfrxMemoView
          Left = 580.945270000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBOS."PESOTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 467.441250000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBOS."IOP_QUANTIDADE">,MasterData1)]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 38.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total Cliente')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Width = 1050.709340000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo30: TfrxMemoView
          Left = 750.614173228347000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBOS."TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 827.717070000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBOS."CUSTO"> *  iif(<frxDBOS."PRF_QTDE_ENV_PRODUCAO"> ' +
              '> 0   , <frxDBOS."IOP_QUANTIDADE">, <frxDBOS."IOP_QUANTIDADE"> *' +
              ' <frxDBOS."IOP_PESO">)  ,MasterData1)]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 903.307670000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBOS."TOTAL"> - (<frxDBOS."CUSTO"> *  iif(<frxDBOS."PRF' +
              '_QTDE_ENV_PRODUCAO"> > 0   , <frxDBOS."IOP_QUANTIDADE">, <frxDBO' +
              'S."IOP_QUANTIDADE"> * <frxDBOS."IOP_PESO">) ),MasterData1)]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.897650000000000000
        Top = 377.953000000000000000
        Width = 1046.929810000000000000
        object Memo42: TfrxMemoView
          Left = 8.559060000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total de Clientes')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 580.945270000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBOS."PESOTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 467.441250000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBOS."IOP_QUANTIDADE">,MasterData1)]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 750.614173230000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBOS."TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 114.385900000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[contCliente]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 174.858380000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total de Pedidos')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 284.464750000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[contPedido]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 827.717070000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBOS."CUSTO"> *  iif(<frxDBOS."PRF_QTDE_ENV_PRODUCAO"> ' +
              '> 0   , <frxDBOS."IOP_QUANTIDADE">, <frxDBOS."IOP_QUANTIDADE"> *' +
              ' <frxDBOS."IOP_PESO">)  ,MasterData1)]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 903.307670000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBOS."TOTAL"> - (<frxDBOS."CUSTO"> *  iif(<frxDBOS."PRF' +
              '_QTDE_ENV_PRODUCAO"> > 0   , <frxDBOS."IOP_QUANTIDADE">, <frxDBO' +
              'S."IOP_QUANTIDADE"> * <frxDBOS."IOP_PESO">) ),MasterData1)]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 393.071120000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total Geral')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 986.457330000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[(SUM(<frxDBOS."TOTAL"> - (<frxDBOS."CUSTO"> *  iif(<frxDBOS."PR' +
              'F_QTDE_ENV_PRODUCAO"> > 0   , <frxDBOS."IOP_QUANTIDADE">, <frxDB' +
              'OS."IOP_QUANTIDADE"> * <frxDBOS."IOP_PESO">) ),MasterData1) / SU' +
              'M(<frxDBOS."TOTAL">,MasterData1)) *100] %')
          ParentFont = False
        end
      end
      object HeaderPedido: TfrxGroupHeader
        FillType = ftBrush
        Top = 230.551330000000000000
        Width = 1046.929810000000000000
        OnAfterPrint = 'HeaderPedidoOnAfterPrint'
        Condition = 'frxDBOS."PED_CODIGO"'
      end
      object FooterPedido: TfrxGroupFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 291.023810000000000000
        Width = 1046.929810000000000000
        object Memo31: TfrxMemoView
          Left = 466.882190000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBOS."IOP_QUANTIDADE">,MasterData1)]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 333.598640000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total Pedido')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 579.268090000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBOS."PESOTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 750.614173228347000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBOS."TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 827.717070000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBOS."CUSTO"> *  iif(<frxDBOS."PRF_QTDE_ENV_PRODUCAO"> ' +
              '> 0   , <frxDBOS."IOP_QUANTIDADE">, <frxDBOS."IOP_QUANTIDADE"> *' +
              ' <frxDBOS."IOP_PESO">)  ,MasterData1)]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 903.307670000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBOS."TOTAL"> - (<frxDBOS."CUSTO"> *  iif(<frxDBOS."PRF' +
              '_QTDE_ENV_PRODUCAO"> > 0   , <frxDBOS."IOP_QUANTIDADE">, <frxDBO' +
              'S."IOP_QUANTIDADE"> * <frxDBOS."IOP_PESO">) ),MasterData1)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 332.598640000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object frxDBOS: TfrxDBDataset
    UserName = 'frxDBOS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CAR_CODIGO=CAR_CODIGO'
      'CUSTO=CUSTO'
      'PESOTOTAL=PESOTOTAL'
      'PRD_UND=PRD_UND'
      'TOTAL=TOTAL'
      'PED_CODIGO=PED_CODIGO'
      'IOP_NORDEM=IOP_NORDEM'
      'PRD_REFER=PRD_REFER'
      'PRF_PRDDESCRI=PRF_PRDDESCRI'
      'CLI_RAZAO=CLI_RAZAO'
      'SRV_NOME=SRV_NOME'
      'IOP_QUANTIDADE=IOP_QUANTIDADE'
      'IOP_PESO=IOP_PESO'
      'PRF_QTDE_ENV_PRODUCAO=PRF_QTDE_ENV_PRODUCAO'
      'IOP_PRECO=IOP_PRECO'
      'VALORVENDA=VALORVENDA')
    DataSet = qAux
    BCDToCurrency = False
    Left = 96
    Top = 136
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 445
    Top = 156
  end
  object dsAux: TDataSource
    DataSet = qAux
    Left = 218
    Top = 144
  end
end
