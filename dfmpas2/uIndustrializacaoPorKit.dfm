inherited FrmIndustrializacaoPorKit: TFrmIndustrializacaoPorKit
  Left = 242
  Top = 72
  Caption = 'Industrializa'#231#227'o por Kit'
  ClientHeight = 532
  ClientWidth = 1135
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  Position = poMainFormCenter
  ExplicitWidth = 1151
  ExplicitHeight = 571
  PixelsPerInch = 96
  TextHeight = 14
  object Label3: TLabel [0]
    Left = 8
    Top = 500
    Width = 164
    Height = 14
    Caption = 'N'#250'mero de Itens da ficha T'#233'cnica:'
  end
  object lbNItensFichaTecnica: TLabel [1]
    Left = 178
    Top = 500
    Width = 6
    Height = 14
    Caption = '0'
  end
  object Label4: TLabel [2]
    Left = 248
    Top = 500
    Width = 215
    Height = 14
    Caption = 'N'#250'mero de Itens Selecionados para Retorno:'
  end
  object lbNItensSelecionados: TLabel [3]
    Left = 466
    Top = 500
    Width = 6
    Height = 14
    Caption = '0'
  end
  object GroupBox1: TGroupBox [4]
    Left = 0
    Top = 67
    Width = 1135
    Height = 427
    Align = alTop
    Caption = 'Industrializa'#231#245'es Solicitadas e Dispon'#237'veis'
    TabOrder = 0
    object dbgrdNotasDisponveis: TDBGrid
      Left = 2
      Top = 16
      Width = 1131
      Height = 409
      Align = alClient
      Color = clWhite
      DataSource = dsNotaDisponivel
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
      PopupMenu = pmSelecao
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnCellClick = dbgrdNotasDisponveisCellClick
      OnDrawColumnCell = dbgrdNotasDisponveisDrawColumnCell
      OnDblClick = dbgrdNotasDisponveisDblClick
      OnKeyPress = dbgrdNotasDisponveisKeyPress
      OnTitleClick = dbgrdNotasDisponveisTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Selecao'
          PopupMenu = pmSelecao
          Title.Alignment = taCenter
          Title.Caption = '*'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_NOTANUMBER'
          Title.Alignment = taCenter
          Title.Caption = 'Nota Fiscal'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_IT_DET_NITEM'
          Title.Caption = 'Seq.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_EMISSAO'
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_CFOP'
          Title.Alignment = taCenter
          Title.Caption = 'CFOP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_CFOP_RETORNO'
          Title.Caption = 'CFOP Retorno'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_REFER_PAI'
          Title.Caption = 'Ref. Pai'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_REFER'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 209
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtdSolicitada'
          Title.Caption = 'Qtde. Solicitada'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_QTDE'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RETORNADO'
          Title.Alignment = taCenter
          Title.Caption = 'Retornado'
          Width = 65
          Visible = True
        end
        item
          Color = 8454143
          Expanded = False
          FieldName = 'QuantidadeTmp'
          Title.Alignment = taCenter
          Title.Caption = 'Retornar'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Saldo'
          Visible = True
        end>
    end
  end
  object BitConfirmar: TBitBtn [5]
    Left = 769
    Top = 500
    Width = 100
    Height = 25
    Caption = '&Confirmar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 1
    OnClick = BitConfirmarClick
  end
  object BitCancelar: TBitBtn [6]
    Left = 874
    Top = 500
    Width = 100
    Height = 25
    Caption = 'Cancela&r'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
    OnClick = BitCancelarClick
  end
  object grpFiltro: TGroupBox [7]
    Left = 0
    Top = 0
    Width = 1135
    Height = 67
    Align = alTop
    Caption = 'Filtro'
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 37
      Height = 14
      Caption = 'Produto'
    end
    object Label2: TLabel
      Left = 646
      Top = 24
      Width = 55
      Height = 14
      Caption = 'Quantidade'
    end
    object prdRefer: TEdit
      Left = 59
      Top = 21
      Width = 94
      Height = 22
      TabOrder = 0
      OnExit = prdReferExit
    end
    object CurQuantidade: TCurrencyEdit
      Left = 707
      Top = 21
      Width = 46
      Height = 21
      AutoSize = False
      DecimalPlaces = 5
      DisplayFormat = '###,###,###.#####'
      TabOrder = 1
      OnExit = CurQuantidadeExit
    end
    object prdDescricao: TEdit
      Left = 159
      Top = 21
      Width = 378
      Height = 22
      TabOrder = 2
    end
    object Bit_Lista: TBitBtn
      Left = 551
      Top = 20
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Caption = 'C&onsulta'
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
      TabOrder = 3
      TabStop = False
      OnClick = Bit_ListaClick
    end
    object cbNotaFiscal: TComboBox
      Left = 769
      Top = 21
      Width = 145
      Height = 22
      ItemIndex = 0
      TabOrder = 4
      Text = 'Seleciona Nota Fiscal'
      OnChange = cbNotaFiscalChange
      Items.Strings = (
        'Seleciona Nota Fiscal')
    end
    object cbSelecionados: TCheckBox
      Left = 59
      Top = 46
      Width = 166
      Height = 17
      Caption = 'Motrar Apenas Selecionados'
      TabOrder = 5
      OnClick = cbSelecionadosClick
    end
  end
  object BitBtn1: TBitBtn [8]
    Left = 664
    Top = 500
    Width = 100
    Height = 25
    Caption = 'Imprimir'
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
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  inherited coCalcula: TACBrCalculadora
    Left = 56
    Top = 104
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 96
    Top = 104
  end
  inherited DBConn: TSQLConnection
    Left = 16
    Top = 105
  end
  inherited qAux: TSQLQuery
    Left = 154
    Top = 101
  end
  inherited qAux2: TSQLQuery
    Left = 194
    Top = 108
  end
  inherited qAux3: TSQLQuery
    Left = 242
    Top = 108
  end
  inherited qAuxEstorna: TSQLQuery
    Left = 322
    Top = 112
  end
  inherited qAuxEstornaItem: TSQLQuery
    Left = 410
    Top = 112
  end
  object SqlCdsNotasDisponiveis: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSqlCdsNotasDisponiveis'
    OnCalcFields = SqlCdsNotasDisponiveisCalcFields
    Left = 192
    Top = 281
    object SqlCdsNotasDisponiveisSelecao: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'Selecao'
    end
    object SqlCdsNotasDisponiveisENF_NOTANUMBER: TStringField
      FieldName = 'ENF_NOTANUMBER'
      Size = 10
    end
    object SqlCdsNotasDisponiveisENF_EMISSAO: TDateField
      FieldName = 'ENF_EMISSAO'
    end
    object SqlCdsNotasDisponiveisENF_CFOP: TStringField
      FieldName = 'ENF_CFOP'
      Size = 4
    end
    object SqlCdsNotasDisponiveisPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object SqlCdsNotasDisponiveisPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 80
    end
    object SqlCdsNotasDisponiveisENF_QTDE: TFMTBCDField
      FieldName = 'ENF_QTDE'
      Precision = 20
      Size = 5
    end
    object SqlCdsNotasDisponiveisENF_QUANTIDADE_IND_RETORNO: TFMTBCDField
      FieldName = 'ENF_QUANTIDADE_IND_RETORNO'
      Precision = 20
      Size = 5
    end
    object SqlCdsNotasDisponiveisENF_PRECO: TFMTBCDField
      FieldName = 'ENF_PRECO'
      DisplayFormat = '###,###,##0.00'
      Precision = 20
      Size = 5
    end
    object SqlCdsNotasDisponiveisAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 4
    end
    object SqlCdsNotasDisponiveisENF_REGISTRO: TIntegerField
      FieldName = 'ENF_REGISTRO'
    end
    object SqlCdsNotasDisponiveisPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 6
    end
    object SqlCdsNotasDisponiveisENF_IPIALIQ: TFMTBCDField
      FieldName = 'ENF_IPIALIQ'
      Precision = 20
      Size = 5
    end
    object SqlCdsNotasDisponiveisENF_VLSUBST: TFMTBCDField
      FieldName = 'ENF_VLSUBST'
      Precision = 20
      Size = 5
    end
    object SqlCdsNotasDisponiveisQuantidadeTmp: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'QuantidadeTmp'
    end
    object SqlCdsNotasDisponiveisTipoIndustrializacaoCodigo: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'TipoIndustrializacaoCodigo'
    end
    object SqlCdsNotasDisponiveisTipoIndustrializacaoDescricao: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'TipoIndustrializacaoDescricao'
      Size = 255
    end
    object SqlCdsNotasDisponiveisQUANTIDADEFT: TFMTBCDField
      FieldName = 'QUANTIDADEFT'
      Precision = 18
      Size = 5
    end
    object SqlCdsNotasDisponiveisqtdSolicitada: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'qtdSolicitada'
    end
    object SqlCdsNotasDisponiveisRETORNADO: TFloatField
      FieldName = 'RETORNADO'
    end
    object SqlCdsNotasDisponiveisSaldo: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'Saldo'
    end
    object SqlCdsNotasDisponiveisOPE_CODIGO_RETORNO: TStringField
      FieldName = 'OPE_CODIGO_RETORNO'
      Size = 3
    end
    object SqlCdsNotasDisponiveisENF_CFOP_RETORNO: TStringField
      FieldName = 'ENF_CFOP_RETORNO'
      Size = 4
    end
    object SqlCdsNotasDisponiveisENF_IT_DET_NITEM: TIntegerField
      FieldName = 'ENF_IT_DET_NITEM'
    end
    object SqlCdsNotasDisponiveisENF_SERIE: TStringField
      FieldName = 'ENF_SERIE'
      Size = 3
    end
    object SqlCdsNotasDisponiveisENF_UCOM: TStringField
      FieldName = 'ENF_UCOM'
      Size = 5
    end
    object SqlCdsNotasDisponiveisPRD_REFER_PAI: TStringField
      FieldName = 'PRD_REFER_PAI'
    end
  end
  object dsNotaDisponivel: TDataSource
    DataSet = SqlCdsNotasDisponiveis
    Left = 192
    Top = 336
  end
  object SqlCdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspSqlCdsProduto'
    Left = 504
    Top = 112
    object SqlCdsProdutoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsProdutoPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
      Size = 5
    end
    object SqlCdsProdutoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsProdutoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object SqlCdsProdutoPRD_CODBARRA: TStringField
      FieldName = 'PRD_CODBARRA'
      Size = 13
    end
    object SqlCdsProdutoPRD_CODORIGINAL: TStringField
      FieldName = 'PRD_CODORIGINAL'
      Size = 50
    end
    object SqlCdsProdutoPRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      Precision = 15
      Size = 5
    end
    object SqlCdsProdutoPRD_PRODSERV: TStringField
      FieldName = 'PRD_PRODSERV'
      Size = 1
    end
    object SqlCdsProdutoPRD_CUSTOCOMIPI: TFMTBCDField
      FieldName = 'PRD_CUSTOCOMIPI'
      Precision = 15
      Size = 5
    end
    object SqlCdsProdutoPRD_MARGEMVENDA: TFMTBCDField
      FieldName = 'PRD_MARGEMVENDA'
      Precision = 15
      Size = 5
    end
    object SqlCdsProdutoLIN_DESCRI: TStringField
      FieldName = 'LIN_DESCRI'
      Size = 30
    end
    object SqlCdsProdutoPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsProdutoPRD_ORIGEM: TIntegerField
      FieldName = 'PRD_ORIGEM'
    end
    object SqlCdsProdutoPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
  end
  object qSqlCdsProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT t3.PTI_SIGLA, t2.lin_descri, t1.prd_margemvenda, T1.prd_c' +
        'odigo, T1.prd_und, t1.PRD_ORIGEM, T1.PRD_PCUSTO, t1.PRD_CUSTOCOM' +
        'IPI, T1.prd_refer, T1.prd_descri, T1.prd_codbarra, T1.prd_codori' +
        'ginal, t1.PRD_PVENDA,COALESCE(T1.PRD_PRODSERV,'#39'P'#39') as  PRD_PRODS' +
        'ERV'
      'FROM prd0000 T1'
      'left join prd_linha t2 on (t2.lin_codigo = t1.lin_codigo)'
      'left join PRD_TIPO t3 on (t3.PTI_CODIGO = t3.PTI_CODIGO)'
      'ORDER BY T1.prd_refer')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 296
    Top = 9
  end
  object qSqlCdsNotasDisponiveis: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT '
      '                ft.FTI_UC AS QuantidadeFT,'
      '               (SELECT SUM(pk.QTD_RETORNADO)'
      #9'FROM PED_IND_KIT pk'
      #9'WHERE pk.ENF_NOTANUMBER = ef.enf_notanumber'
      #9'AND PRD_REFER = ft.PRD_REFER_ITENS'
      ') AS retornado,'
      
        '                ei.prd_codigo, ei.ENF_REGISTRO, ei.enf_ipialiq, ' +
        'ei.enf_vlsubst,'
      #9'ef.enf_notanumber, ef.enf_emissao,'
      #9'ei.enf_cfop, ei.prd_refer, ei.prd_descri,'
      #9'ei.enf_qtde, ei.enf_quantidade_ind_retorno, ei.enf_preco,'
      
        #9'(SELECT OPE_NATUREZA  FROM OPE0000 op WHERE op.OPE_CODIGO = ei.' +
        'OPE_CODIGO_RETORNO) AS ENF_CFOP_RETORNO, '
      #9'ei.amx_codigo'
      'FROM enf_it01 ei'
      
        'JOIN enf0001 ef ON (ef.enf_notanumber = ei.enf_it_notanumber    ' +
        ' AND ef.for_codigo = ei.for_codigo     AND ef.enf_industrializac' +
        'ao = '#39'S'#39')'
      
        'JOIN FTC_IT01 ft ON (ft.PRD_REFER_ITENS = ei.PRD_REFER AND ft.EM' +
        'P_CODIGO = ei.EMP_CODIGO)'
      'JOIN for0000 fo ON (fo.for_codigo = ef.for_codigo )'
      
        'LEFT JOIN PED_IND_KIT pk ON (pk.ENF_NOTANUMBER = ei.ENF_IT_NOTAN' +
        'UMBER AND pk.PRD_REFER = ei.PRD_REFER)'
      'LEFT JOIN almox0000 al ON (al.amx_codigo = ei.amx_codigo)'
      'WHERE ei.enf_qtde > ei.enf_quantidade_ind_retorno'
      'ORDER BY ef.enf_emissao, ef.enf_notanumber DESC')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 192
    Top = 161
  end
  object DspSqlCdsProduto: TDataSetProvider
    DataSet = qSqlCdsProduto
    Left = 504
    Top = 41
  end
  object dspSqlCdsNotasDisponiveis: TDataSetProvider
    DataSet = qSqlCdsNotasDisponiveis
    Left = 192
    Top = 209
  end
  object qProdutos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 226
    Top = 12
  end
  object pmSelecao: TPopupMenu
    Left = 24
    Top = 161
    object InverteSeleo1: TMenuItem
      Caption = 'Inverte Sele'#231#227'o'
      OnClick = InverteSeleo1Click
    end
    object AlterarCFOPdeRetorno1: TMenuItem
      Caption = 'Alterar CFOP de Retorno'
      OnClick = AlterarCFOPdeRetorno1Click
    end
  end
  object frxNotasDisponiveis: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45190.568646840280000000
    ReportOptions.LastChange = 45190.568646840280000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeginDoc = frxNotasDisponiveisBeginDoc
    OnGetValue = frxNotasDisponiveisGetValue
    Left = 56
    Top = 280
    Datasets = <
      item
        DataSet = frxDBNotasDisponiveis
        DataSetName = 'frxDBNotasDisponiveis'
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
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 110.944960000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 48.692950000000000000
          Width = 555.590910000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[PRODUTO]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 812.598950000000000000
          Top = 48.692950000000000000
          Width = 222.992270000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade [QUANTIDADE]')
          ParentFont = False
        end
        object LogoEmpresa: TfrxPictureView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 177.637783070000000000
          Height = 60.472480000000000000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 26.456710000000000000
          Width = 298.582870000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Industrializa'#231#227'o por Kit')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Width = 831.496600000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[EMPRESA]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 86.929190000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sel.')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 86.929190000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nota Fiscal')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 86.929190000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Seq.')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 168.858380000000000000
          Top = 86.929190000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 86.929190000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ret.')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 86.929190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 86.929190000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 86.929190000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Solicitado')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 699.213050000000000000
          Top = 86.929190000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde.')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 789.362710000000000000
          Top = 86.929190000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Retornado')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 877.071430000000000000
          Top = 86.929190000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Retornar')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 968.221090000000000000
          Top = 86.929190000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 107.165430000000000000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 86.929190000000000000
          Width = 1043.150280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 20.236240000000000000
        Top = 188.976500000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBNotasDisponiveis
        DataSetName = 'frxDBNotasDisponiveis'
        RowCount = 0
        object frxDBNotasDisponiveisENF_NOTANUMBER: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 35.913420000000000000
          Top = 1.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ENF_NOTANUMBER'
          DataSet = frxDBNotasDisponiveis
          DataSetName = 'frxDBNotasDisponiveis'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBNotasDisponiveis."ENF_NOTANUMBER"]')
        end
        object frxDBNotasDisponiveisENF_IT_DET_NITEM: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 122.842610000000000000
          Top = 1.338590000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'ENF_IT_DET_NITEM'
          DataSet = frxDBNotasDisponiveis
          DataSetName = 'frxDBNotasDisponiveis'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBNotasDisponiveis."ENF_IT_DET_NITEM"]')
        end
        object frxDBNotasDisponiveisENF_CFOP: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 171.976500000000000000
          Top = 1.338590000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'ENF_CFOP'
          DataSet = frxDBNotasDisponiveis
          DataSetName = 'frxDBNotasDisponiveis'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBNotasDisponiveis."ENF_CFOP"]')
        end
        object frxDBNotasDisponiveisPRD_REFER: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 257.330860000000000000
          Top = 1.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDBNotasDisponiveis
          DataSetName = 'frxDBNotasDisponiveis'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBNotasDisponiveis."PRD_REFER"]')
        end
        object frxDBNotasDisponiveisPRD_DESCRI: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 359.378170000000000000
          Top = 1.338590000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBNotasDisponiveis
          DataSetName = 'frxDBNotasDisponiveis'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBNotasDisponiveis."PRD_DESCRI"]')
        end
        object frxDBNotasDisponiveisqtdSolicitada: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 614.488560000000000000
          Top = 1.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBNotasDisponiveis
          DataSetName = 'frxDBNotasDisponiveis'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBNotasDisponiveis."qtdSolicitada"]')
          ParentFont = False
        end
        object frxDBNotasDisponiveisENF_QTDE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 701.417750000000000000
          Top = 1.338590000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = frxDBNotasDisponiveis
          DataSetName = 'frxDBNotasDisponiveis'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBNotasDisponiveis."ENF_QTDE"]')
          ParentFont = False
        end
        object frxDBNotasDisponiveisRETORNADO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 784.567410000000000000
          Top = 1.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBNotasDisponiveis
          DataSetName = 'frxDBNotasDisponiveis'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBNotasDisponiveis."RETORNADO"]')
          ParentFont = False
        end
        object frxDBNotasDisponiveisENF_QUANTIDADE_IND_RETORNO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 875.276130000000000000
          Top = 1.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBNotasDisponiveis
          DataSetName = 'frxDBNotasDisponiveis'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBNotasDisponiveis."QuantidadeTmp"]')
          ParentFont = False
        end
        object frxDBNotasDisponiveisSaldo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 962.205320000000000000
          Top = 1.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBNotasDisponiveis
          DataSetName = 'frxDBNotasDisponiveis'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBNotasDisponiveis."Saldo"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 215.433210000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'ENF_CFOP_RETORNO'
          DataSet = frxDBNotasDisponiveis
          DataSetName = 'frxDBNotasDisponiveis'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBNotasDisponiveis."ENF_CFOP_RETORNO"]')
        end
        object CheckBox1: TfrxCheckBoxView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          CheckColor = clBlack
          CheckStyle = csCheck
          DataField = 'Selecao'
          DataSet = frxDBNotasDisponiveis
          DataSetName = 'frxDBNotasDisponiveis'
          Frame.Typ = []
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 268.346630000000000000
        Width = 1046.929810000000000000
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 34.015770000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#250'mero de Itens da ficha T'#233'cnica: [NITENS]')
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 34.015770000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#250'mero de Itens Selecionados para Retorno:[NITENSSEL]')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 797.480830000000000000
          Top = 34.015770000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Itens [COUNT(MasterData1)]')
        end
      end
    end
  end
  object frxDBNotasDisponiveis: TfrxDBDataset
    UserName = 'frxDBNotasDisponiveis'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Selecao=Selecao'
      'ENF_NOTANUMBER=ENF_NOTANUMBER'
      'ENF_EMISSAO=ENF_EMISSAO'
      'ENF_CFOP=ENF_CFOP'
      'PRD_REFER=PRD_REFER'
      'PRD_DESCRI=PRD_DESCRI'
      'ENF_QTDE=ENF_QTDE'
      'ENF_QUANTIDADE_IND_RETORNO=ENF_QUANTIDADE_IND_RETORNO'
      'ENF_PRECO=ENF_PRECO'
      'AMX_CODIGO=AMX_CODIGO'
      'ENF_REGISTRO=ENF_REGISTRO'
      'PRD_CODIGO=PRD_CODIGO'
      'ENF_IPIALIQ=ENF_IPIALIQ'
      'ENF_VLSUBST=ENF_VLSUBST'
      'QuantidadeTmp=QuantidadeTmp'
      'TipoIndustrializacaoCodigo=TipoIndustrializacaoCodigo'
      'TipoIndustrializacaoDescricao=TipoIndustrializacaoDescricao'
      'QUANTIDADEFT=QUANTIDADEFT'
      'qtdSolicitada=qtdSolicitada'
      'RETORNADO=RETORNADO'
      'Saldo=Saldo'
      'OPE_CODIGO_RETORNO=OPE_CODIGO_RETORNO'
      'ENF_CFOP_RETORNO=ENF_CFOP_RETORNO'
      'ENF_IT_DET_NITEM=ENF_IT_DET_NITEM')
    DataSet = SqlCdsNotasDisponiveis
    BCDToCurrency = False
    Left = 56
    Top = 339
  end
end
