object FrmFat0000_Romaneio: TFrmFat0000_Romaneio
  Left = 0
  Top = 0
  Caption = 'FrmFat0000_Romaneio'
  ClientHeight = 301
  ClientWidth = 654
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object CdsImpNota: TSimpleDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select n1.NF_REGISTRO, n1.NF_NOTANUMBER, n1.NF_EMISSAO, n1.NF_SA' +
      'IDA, n1.NF_VLFRETE, n1.NF_VLSEGURO, n1.NF_DESP_ACES, n1.NF_ALIQ_' +
      'ICMS,'#13#10'       n1.NF_BASEICMS, n1.NF_VL_ICMS, n1.NF_VLBASESUBTRIB' +
      ', n1.NF_VL_SUBTRIB, n1.NF_TOT_CSUB, n1.NF_TOT_PROD, n1.NF_TOT_NO' +
      'TA, n1.NF_VL_IPI,'#13#10'       n1.NF_BASE_IPI, n1.NF_VL_DESCTO, n1.NF' +
      '_PLACAVE, n1.NF_QTDE, n1.NF_PESOBRU, n1.NF_PESOLIQ, n1.NF_ESPECI' +
      'E, n1.NF_MARCA, n1.NF_NUMERO,'#13#10'       n1.NF_INTERNO, n1.NF_CANCE' +
      'LADA, n1.PCL_CODIGO, n1.NF_AGRUPADO, n1.EMP_CODIGO, c1.CLI_BAIRR' +
      'O, c1.CLI_CEP, c1.CLI_CGC, c1.CLI_CEPFAT,'#13#10'       c1.CLI_CIDADE,' +
      ' c1.CLI_CEPENTR, c1.CLI_CIDENTR, c1.CLI_CIDFAT, c1.CLI_ENDENTR, ' +
      'c1.CLI_ENDERE, c1.CLI_ENDFAT, c1.CLI_INSC, c1.CLI_UF,'#13#10'       c1' +
      '.CLI_UFENTR, c1.CLI_UFFAT, c1.CLI_RAZAO, c1.CLI_FONE, PED_OBSNOT' +
      'A, PED_FRETE, PED_FRETE2, P1.TRP_CODIGO, P1.TRP_REDESP, R1.REP_N' +
      'OME,'#13#10'       n1.NF_OBS_OPER, n1.NF_OBS_PEDI, n1.AMX_CODIGO, o1.O' +
      'PE_DESCRINATUREZA, n1.NF_OBSG1, n1.NF_OBSG2, n1.NF_OBSG3, n1.NF_' +
      'OBSG4, n1.NF_OBSG5,'#13#10'       n1.NF_OBSG6, c1.CLI_PESSOA, n1.NF_TP' +
      '_DESCTO, n1.NF_PC_DESCTO1, n1.NF_PC_DESCTO2, n1.NF_BASE_ISS, n1.' +
      'NF_VALOR_ISS, o1.OPE_REDU_ICM,'#13#10'       n1.NF_OBS_OPER_AVISO2, n1' +
      '.OPV_CODIGO, o1.OPE_NOTA_COMPLEMENTAR, n1.NF_OBSERVACAO, p1.PED_' +
      'OBSERVACAO,'#13#10'       N1.NF_CONDPAGTO, O1.OPE_CODIGO, O1.OPE_NATUR' +
      'EZA, O1.OPE_AGRUPADO, P1.PED_CODIGO, P1.REP_CODIGO, N1.NF_ENTR_S' +
      'AID,'#13#10'       N1.NF_IMPRESS, C1.CLI_CODIGO'#13#10#13#10'from NF0001 N1'#13#10'joi' +
      'n OPE0000 O1 on O1.OPE_CODIGO = N1.OPE_CODIGO'#13#10'join PED0000 P1 o' +
      'n P1.PED_CODIGO = N1.PED_CODIGO'#13#10'join CLI0000 C1 on C1.CLI_CODIG' +
      'O = N1.CLI_CODIGO'#13#10'left join REP0000 R1 on R1.REP_CODIGO = P1.RE' +
      'P_CODIGO'#13#10'left join TRP0000 T1 on T1.TRP_CODIGO = P1.TRP_CODIGO'#13 +
      #10'left join TRP0000 T2 on T2.TRP_CODIGO = P1.TRP_REDESP'#13#10'where N1' +
      '.NF_NOTANUMBER = '#39'001175'#39' and'#13#10'      N1.NF_CANCELADA = '#39'N'#39' and'#13#10 +
      '      P1.EMP_CODIGO = '#39'001'#39' and'#13#10'      T1.EMP_CODIGO = '#39'001'#39#13#10'or' +
      'der by N1.NF_NOTANUMBER'
    DataSet.MaxBlobSize = 1
    DataSet.Params = <>
    Params = <>
    Left = 103
    Top = 39
    object CdsImpNotaNF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
      Required = True
    end
    object CdsImpNotaNF_NOTANUMBER: TStringField
      FieldName = 'NF_NOTANUMBER'
      Required = True
      Size = 6
    end
    object CdsImpNotaNF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
    end
    object CdsImpNotaNF_SAIDA: TDateField
      FieldName = 'NF_SAIDA'
    end
    object CdsImpNotaNF_CONDPAGTO: TStringField
      FieldName = 'NF_CONDPAGTO'
      Size = 35
    end
    object CdsImpNotaOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      Size = 3
    end
    object CdsImpNotaOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object CdsImpNotaOPE_AGRUPADO: TStringField
      FieldName = 'OPE_AGRUPADO'
      Size = 4
    end
    object CdsImpNotaPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object CdsImpNotaREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object CdsImpNotaNF_ENTR_SAID: TStringField
      FieldName = 'NF_ENTR_SAID'
      Size = 1
    end
    object CdsImpNotaNF_IMPRESS: TStringField
      FieldName = 'NF_IMPRESS'
      Size = 1
    end
    object CdsImpNotaCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object CdsImpNotaNF_VLFRETE: TFMTBCDField
      FieldName = 'NF_VLFRETE'
      Precision = 15
    end
    object CdsImpNotaNF_VLSEGURO: TFMTBCDField
      FieldName = 'NF_VLSEGURO'
      Precision = 15
    end
    object CdsImpNotaNF_DESP_ACES: TFMTBCDField
      FieldName = 'NF_DESP_ACES'
      Precision = 15
    end
    object CdsImpNotaNF_ALIQ_ICMS: TFMTBCDField
      FieldName = 'NF_ALIQ_ICMS'
      Precision = 15
    end
    object CdsImpNotaNF_BASEICMS: TFMTBCDField
      FieldName = 'NF_BASEICMS'
      Precision = 15
    end
    object CdsImpNotaNF_VL_ICMS: TFMTBCDField
      FieldName = 'NF_VL_ICMS'
      Precision = 15
    end
    object CdsImpNotaNF_VLBASESUBTRIB: TFMTBCDField
      FieldName = 'NF_VLBASESUBTRIB'
      Precision = 15
    end
    object CdsImpNotaNF_VL_SUBTRIB: TFMTBCDField
      FieldName = 'NF_VL_SUBTRIB'
      Precision = 15
    end
    object CdsImpNotaNF_TOT_CSUB: TFMTBCDField
      FieldName = 'NF_TOT_CSUB'
      Precision = 15
    end
    object CdsImpNotaNF_TOT_PROD: TFMTBCDField
      FieldName = 'NF_TOT_PROD'
      Precision = 15
    end
    object CdsImpNotaNF_TOT_NOTA: TFMTBCDField
      FieldName = 'NF_TOT_NOTA'
      Precision = 15
    end
    object CdsImpNotaNF_VL_IPI: TFMTBCDField
      FieldName = 'NF_VL_IPI'
      Precision = 15
    end
    object CdsImpNotaNF_BASE_IPI: TFMTBCDField
      FieldName = 'NF_BASE_IPI'
      Precision = 15
    end
    object CdsImpNotaNF_VL_DESCTO: TFMTBCDField
      FieldName = 'NF_VL_DESCTO'
      Precision = 15
    end
    object CdsImpNotaNF_PLACAVE: TStringField
      FieldName = 'NF_PLACAVE'
      Size = 8
    end
    object CdsImpNotaNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      Precision = 15
    end
    object CdsImpNotaNF_PESOBRU: TFMTBCDField
      FieldName = 'NF_PESOBRU'
      Precision = 15
    end
    object CdsImpNotaNF_PESOLIQ: TFMTBCDField
      FieldName = 'NF_PESOLIQ'
      Precision = 15
    end
    object CdsImpNotaNF_ESPECIE: TStringField
      FieldName = 'NF_ESPECIE'
      Size = 60
    end
    object CdsImpNotaNF_MARCA: TStringField
      FieldName = 'NF_MARCA'
      Size = 60
    end
    object CdsImpNotaNF_NUMERO: TStringField
      FieldName = 'NF_NUMERO'
      Size = 10
    end
    object CdsImpNotaNF_INTERNO: TStringField
      FieldName = 'NF_INTERNO'
      Size = 1
    end
    object CdsImpNotaNF_CANCELADA: TStringField
      FieldName = 'NF_CANCELADA'
      Size = 1
    end
    object CdsImpNotaPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 3
    end
    object CdsImpNotaNF_AGRUPADO: TStringField
      FieldName = 'NF_AGRUPADO'
      FixedChar = True
      Size = 1
    end
    object CdsImpNotaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsImpNotaCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object CdsImpNotaCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 8
    end
    object CdsImpNotaCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object CdsImpNotaCLI_CEPFAT: TStringField
      FieldName = 'CLI_CEPFAT'
      Size = 8
    end
    object CdsImpNotaCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object CdsImpNotaCLI_CEPENTR: TStringField
      FieldName = 'CLI_CEPENTR'
      Size = 8
    end
    object CdsImpNotaCLI_CIDENTR: TStringField
      FieldName = 'CLI_CIDENTR'
      Size = 30
    end
    object CdsImpNotaCLI_CIDFAT: TStringField
      FieldName = 'CLI_CIDFAT'
      Size = 30
    end
    object CdsImpNotaCLI_ENDENTR: TStringField
      FieldName = 'CLI_ENDENTR'
      Size = 50
    end
    object CdsImpNotaCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 50
    end
    object CdsImpNotaCLI_ENDFAT: TStringField
      FieldName = 'CLI_ENDFAT'
      Size = 50
    end
    object CdsImpNotaCLI_INSC: TStringField
      FieldName = 'CLI_INSC'
      Size = 18
    end
    object CdsImpNotaCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object CdsImpNotaCLI_UFENTR: TStringField
      FieldName = 'CLI_UFENTR'
      Size = 2
    end
    object CdsImpNotaCLI_UFFAT: TStringField
      FieldName = 'CLI_UFFAT'
      Size = 2
    end
    object CdsImpNotaCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object CdsImpNotaCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object CdsImpNotaPED_OBSNOTA: TStringField
      FieldName = 'PED_OBSNOTA'
      Size = 60
    end
    object CdsImpNotaPED_FRETE: TStringField
      FieldName = 'PED_FRETE'
      Size = 1
    end
    object CdsImpNotaPED_FRETE2: TStringField
      FieldName = 'PED_FRETE2'
      Size = 1
    end
    object CdsImpNotaTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object CdsImpNotaTRP_REDESP: TStringField
      FieldName = 'TRP_REDESP'
      Size = 3
    end
    object CdsImpNotaREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object CdsImpNotaNF_OBS_OPER: TStringField
      FieldName = 'NF_OBS_OPER'
      Size = 1000
    end
    object CdsImpNotaNF_OBS_PEDI: TStringField
      FieldName = 'NF_OBS_PEDI'
      Size = 60
    end
    object CdsImpNotaAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      Size = 3
    end
    object CdsImpNotaOPE_DESCRINATUREZA: TStringField
      FieldName = 'OPE_DESCRINATUREZA'
      Size = 25
    end
    object CdsImpNotaNF_OBSG1: TStringField
      FieldName = 'NF_OBSG1'
      Size = 80
    end
    object CdsImpNotaNF_OBSG2: TStringField
      FieldName = 'NF_OBSG2'
      Size = 80
    end
    object CdsImpNotaNF_OBSG3: TStringField
      FieldName = 'NF_OBSG3'
      Size = 80
    end
    object CdsImpNotaNF_OBSG4: TStringField
      FieldName = 'NF_OBSG4'
      Size = 80
    end
    object CdsImpNotaNF_OBSG5: TStringField
      FieldName = 'NF_OBSG5'
      Size = 80
    end
    object CdsImpNotaNF_OBSG6: TStringField
      FieldName = 'NF_OBSG6'
      Size = 80
    end
    object CdsImpNotaCLI_PESSOA: TStringField
      FieldName = 'CLI_PESSOA'
      Size = 1
    end
    object CdsImpNotaNF_TP_DESCTO: TStringField
      FieldName = 'NF_TP_DESCTO'
      Size = 1
    end
    object CdsImpNotaNF_PC_DESCTO1: TFMTBCDField
      FieldName = 'NF_PC_DESCTO1'
      Precision = 15
    end
    object CdsImpNotaNF_PC_DESCTO2: TFMTBCDField
      FieldName = 'NF_PC_DESCTO2'
      Precision = 15
    end
    object CdsImpNotaNF_BASE_ISS: TFMTBCDField
      FieldName = 'NF_BASE_ISS'
      Precision = 15
    end
    object CdsImpNotaNF_VALOR_ISS: TFMTBCDField
      FieldName = 'NF_VALOR_ISS'
      Precision = 15
    end
    object CdsImpNotaOPE_REDU_ICM: TFMTBCDField
      FieldName = 'OPE_REDU_ICM'
      Precision = 15
    end
    object CdsImpNotaNF_OBS_OPER_AVISO2: TStringField
      FieldName = 'NF_OBS_OPER_AVISO2'
      Size = 1000
    end
    object CdsImpNotaOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
    end
    object CdsImpNotaOPE_NOTA_COMPLEMENTAR: TStringField
      FieldName = 'OPE_NOTA_COMPLEMENTAR'
      Size = 1
    end
    object CdsImpNotaNF_OBSERVACAO: TBlobField
      FieldName = 'NF_OBSERVACAO'
    end
    object CdsImpNotaPED_OBSERVACAO: TBlobField
      FieldName = 'PED_OBSERVACAO'
    end
  end
  object RdPrintRecibo: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    OpcoesPreview.BotaoPDF = Ativo
    OpcoesPreview.BotaoEMAIL = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'POINT INFORMATICA LTDA'
    RegistroUsuario.SerieProduto = 'SINGLE-0615/01649'
    RegistroUsuario.AutorizacaoKey = '5E33-1QQQ-385V-ASCD-RRJM'
    About = 'RDprint 5.0 - Registrado'
    Acentuacao = SemAcento
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Gerado por RDprint'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERIC=EPSON'
      'TEXT=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    PortaComunicacao = 'LPT1'
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 150
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S17cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 247
    Top = 63
  end
  object SqlCdsParcelas: TSimpleDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select FAT.*,'#13#10'BAN_APELIDO  '#13#10'from FAT_PC01  FAT '#13#10'left join BAN' +
      '0000 on FAT_PC01.BAN_CODIGO = BAN0000.BAN_CODAGE'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 407
    Top = 47
    object SqlCdsParcelasFAT_REGISTRO: TIntegerField
      FieldName = 'FAT_REGISTRO'
      Required = True
    end
    object SqlCdsParcelasFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsParcelasFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object SqlCdsParcelasREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SqlCdsParcelasBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object SqlCdsParcelasCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object SqlCdsParcelasPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object SqlCdsParcelasFPC_DTEMIS: TSQLTimeStampField
      FieldName = 'FPC_DTEMIS'
    end
    object SqlCdsParcelasFPC_NPARCELAS: TSmallintField
      FieldName = 'FPC_NPARCELAS'
    end
    object SqlCdsParcelasFPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Size = 13
    end
    object SqlCdsParcelasFPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      Size = 2
    end
    object SqlCdsParcelasFPC_TIPODOC: TStringField
      FieldName = 'FPC_TIPODOC'
      Size = 2
    end
    object SqlCdsParcelasFPC_SITPAG: TStringField
      FieldName = 'FPC_SITPAG'
      Size = 1
    end
    object SqlCdsParcelasFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object SqlCdsParcelasFPC_DESCTO: TFMTBCDField
      FieldName = 'FPC_DESCTO'
      Precision = 15
    end
    object SqlCdsParcelasFPC_DTDESC: TSQLTimeStampField
      FieldName = 'FPC_DTDESC'
    end
    object SqlCdsParcelasFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object SqlCdsParcelasFPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
    end
    object SqlCdsParcelasFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      Precision = 15
    end
    object SqlCdsParcelasFPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      Precision = 15
    end
    object SqlCdsParcelasFPC_OBS: TStringField
      FieldName = 'FPC_OBS'
      Size = 50
    end
    object SqlCdsParcelasCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsParcelasFPC_IMPDUP: TStringField
      FieldName = 'FPC_IMPDUP'
      Size = 1
    end
    object SqlCdsParcelasFPC_JUROS: TFMTBCDField
      FieldName = 'FPC_JUROS'
      Precision = 15
    end
    object SqlCdsParcelasFPC_MULTA: TFMTBCDField
      FieldName = 'FPC_MULTA'
      Precision = 15
    end
    object SqlCdsParcelasFPC_VL_RET: TFMTBCDField
      FieldName = 'FPC_VL_RET'
      Precision = 15
    end
    object SqlCdsParcelasEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsParcelasCCT_NOVO: TStringField
      FieldName = 'CCT_NOVO'
      Size = 3
    end
    object SqlCdsParcelasFPC_PREVISAO: TStringField
      FieldName = 'FPC_PREVISAO'
      Size = 1
    end
    object SqlCdsParcelasBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 14
    end
    object SqlCdsParcelasFPC_STATUS_REMESSA: TStringField
      FieldName = 'FPC_STATUS_REMESSA'
      FixedChar = True
      Size = 1
    end
    object SqlCdsParcelasFPC_DATA_REMESSA: TDateField
      FieldName = 'FPC_DATA_REMESSA'
    end
    object SqlCdsParcelasBAN_COD_APELIDO: TIntegerField
      FieldName = 'BAN_COD_APELIDO'
    end
    object SqlCdsParcelasFPC_STATUS_BAIXA: TStringField
      FieldName = 'FPC_STATUS_BAIXA'
      FixedChar = True
      Size = 1
    end
  end
  object RdPrintNotaFiscal: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    OpcoesPreview.BotaoPDF = Ativo
    OpcoesPreview.BotaoEMAIL = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'POINT INFORMATICA LTDA'
    RegistroUsuario.SerieProduto = 'SINGLE-0615/01649'
    RegistroUsuario.AutorizacaoKey = '5E33-1QQQ-385V-ASCD-RRJM'
    About = 'RDprint 5.0 - Registrado'
    Acentuacao = SemAcento
    CaptionSetup = 'Nota Fiscal'
    TitulodoRelatorio = 'Nota Fiscal'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERIC=EPSON'
      'TEXT=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    PortaComunicacao = 'LPT1'
    MostrarProgresso = True
    TamanhoQteLinhas = 100
    TamanhoQteColunas = 150
    TamanhoQteLPP = Oito
    NumerodeCopias = 1
    FonteTamanhoPadrao = S17cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 247
    Top = 159
  end
  object CdsItemNota: TSimpleDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'NF.*,'#13#10'CL.CLI_CODIGO,'#13#10'PD.PRD_UND,'#13#10'PD.PRD_COMPL,'#13#10'PD.PR' +
      'D_DCVAR1,'#13#10'PD.PRD_DCVAR2,'#13#10'PD.PRD_DCVAR3,'#13#10'PD.PRD_DCVAR4,'#13#10'PD.PR' +
      'D_DCVAR5,'#13#10'PD.PRD_DCVAR6,'#13#10'PD.PRD_DCVAR7,'#13#10'PD.PRD_DCVAR8,'#13#10'PD.PR' +
      'D_ORIGEM,'#13#10'PQ.PRD_REFER_EQUIV'#13#10'from NF_IT01 NF'#13#10'LEFT JOIN NF0001' +
      ' CL ON (NF.nf_it_notanumer = CL.nf_notanumber) AND (NF.EMP_CODIG' +
      'O = CL.EMP_CODIGO)'#13#10'LEFT JOIN PRD0000 PD ON (PD.PRD_REFER = NF.P' +
      'RD_REFER)'#13#10'LEFT JOIN PRD_EQUIV PQ ON (PD.prd_refer = PQ.prd_refe' +
      'r) AND (CL.CLI_CODIGO = PQ.CLI_CODIGO);'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 71
    Top = 119
    object CdsItemNotaNF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
      Required = True
    end
    object CdsItemNotaNF_IT_NOTANUMER: TStringField
      FieldName = 'NF_IT_NOTANUMER'
      Required = True
      Size = 6
    end
    object CdsItemNotaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object CdsItemNotaPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object CdsItemNotaNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      Precision = 15
    end
    object CdsItemNotaNF_PRECO: TFMTBCDField
      FieldName = 'NF_PRECO'
      DisplayFormat = '#,##0.00000'
      Precision = 15
      Size = 6
    end
    object CdsItemNotaNF_IPIALIQ: TFMTBCDField
      FieldName = 'NF_IPIALIQ'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsItemNotaIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object CdsItemNotaNF_VLSUBST: TFMTBCDField
      FieldName = 'NF_VLSUBST'
      Precision = 15
    end
    object CdsItemNotaNF_IDESCTO1: TFMTBCDField
      FieldName = 'NF_IDESCTO1'
      Precision = 15
    end
    object CdsItemNotaNF_IDESCTO2: TFMTBCDField
      FieldName = 'NF_IDESCTO2'
      Precision = 15
    end
    object CdsItemNotaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsItemNotaNF_ICMSALIQ: TFMTBCDField
      FieldName = 'NF_ICMSALIQ'
      Precision = 15
    end
    object CdsItemNotaNF_PMATPRIMA: TFMTBCDField
      FieldName = 'NF_PMATPRIMA'
      Precision = 15
    end
    object CdsItemNotaCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object CdsItemNotaPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object CdsItemNotaPRD_REFER_EQUIV: TStringField
      FieldName = 'PRD_REFER_EQUIV'
      Size = 11
    end
    object CdsItemNotaNF_TOTAL_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'NF_TOTAL_CC'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.0000'
      currency = False
      Calculated = True
    end
    object CdsItemNotaNF_TOTAL_IPI_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'NF_TOTAL_IPI_CC'
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      Calculated = True
    end
    object CdsItemNotaIC_IMPRESSO: TStringField
      FieldKind = fkCalculated
      FieldName = 'IC_IMPRESSO'
      Calculated = True
    end
    object CdsItemNotaNF_COMISSAO: TFMTBCDField
      FieldName = 'NF_COMISSAO'
      Precision = 15
    end
    object CdsItemNotaNF_QTDE_VAR1: TFMTBCDField
      FieldName = 'NF_QTDE_VAR1'
      Precision = 15
    end
    object CdsItemNotaNF_QTDE_VAR2: TFMTBCDField
      FieldName = 'NF_QTDE_VAR2'
      Precision = 15
    end
    object CdsItemNotaNF_QTDE_VAR3: TFMTBCDField
      FieldName = 'NF_QTDE_VAR3'
      Precision = 15
    end
    object CdsItemNotaNF_QTDE_VAR4: TFMTBCDField
      FieldName = 'NF_QTDE_VAR4'
      Precision = 15
    end
    object CdsItemNotaNF_QTDE_VAR5: TFMTBCDField
      FieldName = 'NF_QTDE_VAR5'
      Precision = 15
    end
    object CdsItemNotaNF_QTDE_VAR6: TFMTBCDField
      FieldName = 'NF_QTDE_VAR6'
      Precision = 15
    end
    object CdsItemNotaNF_QTDE_VAR7: TFMTBCDField
      FieldName = 'NF_QTDE_VAR7'
      Precision = 15
    end
    object CdsItemNotaNF_QTDE_VAR8: TFMTBCDField
      FieldName = 'NF_QTDE_VAR8'
      Precision = 15
    end
    object CdsItemNotaPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object CdsItemNotaPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object CdsItemNotaPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object CdsItemNotaPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object CdsItemNotaPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object CdsItemNotaPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object CdsItemNotaPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object CdsItemNotaPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
    object CdsItemNotaCC_ID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CC_ID'
      DisplayFormat = '00'
      EditFormat = '00'
      Calculated = True
    end
    object CdsItemNotaNF_FLAG_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'NF_FLAG_ATUALIZA_ESTOQUE'
      Size = 1
    end
    object CdsItemNotaNF_PRODUTO_AGREGADO: TStringField
      FieldName = 'NF_PRODUTO_AGREGADO'
      Size = 1
    end
    object CdsItemNotaPRD_ORIGEM: TIntegerField
      FieldName = 'PRD_ORIGEM'
    end
    object CdsItemNotaPRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      Size = 150
    end
    object CdsItemNotaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object CdsItemNotaPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
    end
    object CdsItemNotaNF_IPIVALOR: TFMTBCDField
      FieldName = 'NF_IPIVALOR'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_ICMSVALOR: TFMTBCDField
      FieldName = 'NF_ICMSVALOR'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_HORA: TTimeField
      FieldName = 'NF_HORA'
    end
    object CdsItemNotaNTP_CFOP: TIntegerField
      Alignment = taCenter
      FieldName = 'NTP_CFOP'
    end
    object CdsItemNotaNF_IPIBASE: TFMTBCDField
      FieldName = 'NF_IPIBASE'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_ICMSBASE: TFMTBCDField
      FieldName = 'NF_ICMSBASE'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_SUBTRIBASE: TFMTBCDField
      FieldName = 'NF_SUBTRIBASE'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_ALIQSUBTRIB: TFMTBCDField
      FieldName = 'NF_ALIQSUBTRIB'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_MVAPERC: TFMTBCDField
      FieldName = 'NF_MVAPERC'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_ICMSREDUCAOPERC: TFMTBCDField
      FieldName = 'NF_ICMSREDUCAOPERC'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_ALIQDOSIMPLES: TFMTBCDField
      FieldName = 'NF_ALIQDOSIMPLES'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_CREDICMSDOSIMPLES: TFMTBCDField
      FieldName = 'NF_CREDICMSDOSIMPLES'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_IFRETE: TFMTBCDField
      FieldName = 'NF_IFRETE'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_ISEGURO: TFMTBCDField
      FieldName = 'NF_ISEGURO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_IDESP_ACES: TFMTBCDField
      FieldName = 'NF_IDESP_ACES'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_IBASEISSQN: TFMTBCDField
      FieldName = 'NF_IBASEISSQN'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_IALIQISSQN: TFMTBCDField
      FieldName = 'NF_IALIQISSQN'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_IVLISSQN: TFMTBCDField
      FieldName = 'NF_IVLISSQN'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_CST_PIS: TFMTBCDField
      FieldName = 'NF_CST_PIS'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_BASE_PIS: TFMTBCDField
      FieldName = 'NF_BASE_PIS'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_ALIQPIS: TFMTBCDField
      FieldName = 'NF_ALIQPIS'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_VLPIS: TFMTBCDField
      FieldName = 'NF_VLPIS'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_CST_COFINS: TFMTBCDField
      FieldName = 'NF_CST_COFINS'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_BASE_COFINS: TFMTBCDField
      FieldName = 'NF_BASE_COFINS'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_ALIQCOFINS: TFMTBCDField
      FieldName = 'NF_ALIQCOFINS'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaNF_VLCOFINS: TFMTBCDField
      FieldName = 'NF_VLCOFINS'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsItemNotaOPE_CODIGO: TStringField
      FieldName = 'OPE_CODIGO'
      Size = 3
    end
    object CdsItemNotaAMX_CODIGO_DESTINO: TStringField
      FieldName = 'AMX_CODIGO_DESTINO'
      Size = 4
    end
    object CdsItemNotaAMX_CODIGO_ORIGEM: TStringField
      FieldName = 'AMX_CODIGO_ORIGEM'
      Size = 4
    end
    object CdsItemNotaUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object CdsItemNotaPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 6
    end
    object CdsItemNotaPRD_COMPL_DESCRI: TStringField
      FieldName = 'PRD_COMPL_DESCRI'
      Size = 150
    end
    object CdsItemNotaSTB_TRIBUTACAO: TStringField
      Alignment = taCenter
      FieldName = 'STB_TRIBUTACAO'
      Size = 3
    end
    object CdsItemNotaPRDCO_CODIGO_ORIGINAL: TStringField
      FieldName = 'PRDCO_CODIGO_ORIGINAL'
      Size = 60
    end
    object CdsItemNotaPRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
    end
    object CdsItemNotaNF_TOTAL_PROD_AG: TAggregateField
      FieldName = 'NF_TOTAL_PROD_AG'
      DisplayName = ''
      DisplayFormat = '###,###,##0.00'
    end
  end
  object qAux: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBInicio.MainDB
    Left = 400
    Top = 144
  end
end
