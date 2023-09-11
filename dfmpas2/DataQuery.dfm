object DataModQry: TDataModQry
  OldCreateOrder = False
  Left = 109
  Top = 246
  Height = 261
  Width = 410
  object DTBAdjutor: TDatabase
    AliasName = 'Adjutor'
    DatabaseName = 'RwDbAdm'
    KeepConnection = False
    LoginPrompt = False
    SessionName = 'Default'
    OnLogin = DTBAdjutorLogin
    Left = 299
    Top = 153
  end
  object TQCliente: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT CLI_RAZAO, CLI_CODIGO, CLI_CGC, TRP_CODIGO, REP_CODIGO, C' +
        'LI_UF, CLI_INATIVO, CLI_DTINATIVO, CLI_MOTIVO, CLI_ENDERE, CLI_C' +
        'IDADE'
      'FROM Cli0000'
      'ORDER BY CLI_RAZAO')
    Left = 16
    Top = 8
    object TQClienteCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Origin = 'CLI0000.CLI_RAZAO'
      Size = 45
    end
    object TQClienteCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI0000.CLI_CODIGO'
      Size = 5
    end
    object TQClienteCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Origin = 'CLI0000.CLI_CGC'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object TQClienteTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Origin = 'CLI0000.TRP_CODIGO'
      Size = 3
    end
    object TQClienteREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Origin = 'CLI0000.REP_CODIGO'
      Size = 3
    end
    object TQClienteCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Origin = 'CLI0000.CLI_UF'
      Size = 2
    end
    object TQClienteCLI_INATIVO: TStringField
      FieldName = 'CLI_INATIVO'
      Origin = 'CLI0000.CLI_INATIVO'
      Size = 1
    end
    object TQClienteCLI_DTINATIVO: TDateTimeField
      FieldName = 'CLI_DTINATIVO'
      Origin = 'CLI0000.CLI_DTINATIVO'
    end
    object TQClienteCLI_MOTIVO: TStringField
      FieldName = 'CLI_MOTIVO'
      Origin = 'CLI0000.CLI_MOTIVO'
      Size = 35
    end
    object TQClienteCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Origin = 'CLI0000.CLI_ENDERE'
      Size = 45
    end
    object TQClienteCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Origin = 'CLI0000.CLI_CIDADE'
      Size = 30
    end
  end
  object DsQCliente: TDataSource
    DataSet = TQCliente
    Left = 16
    Top = 56
  end
  object TQRepres: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      'SELECT REP_NOME, REP_CODIGO'
      'FROM Rep0000'
      'ORDER BY REP_NOME')
    Left = 80
    Top = 8
    object TQRepresREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Origin = 'REP0000.REP_NOME'
      Size = 35
    end
    object TQRepresREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Origin = 'REP0000.REP_CODIGO'
      Size = 3
    end
  end
  object DsQRepres: TDataSource
    DataSet = TQRepres
    Left = 80
    Top = 56
  end
  object TQReceber: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      'Select * FROM Fat0000')
    Left = 144
    Top = 8
    object TQReceberFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Origin = 'FAT0000.FAT_CODIGO'
      Size = 6
    end
    object TQReceberPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Origin = 'FAT0000.PCL_CODIGO'
      Size = 2
    end
    object TQReceberCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Origin = 'FAT0000.CLI_CODIGO'
      Size = 5
    end
    object TQReceberREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Origin = 'FAT0000.REP_CODIGO'
      Size = 3
    end
    object TQReceberPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'FAT0000.PED_CODIGO'
      Size = 6
    end
    object TQReceberFAT_QTDITEM: TFloatField
      FieldName = 'FAT_QTDITEM'
      Origin = 'FAT0000.FAT_QTDITEM'
    end
    object TQReceberFAT_VL_LIQ: TFloatField
      FieldName = 'FAT_VL_LIQ'
      Origin = 'FAT0000.FAT_VL_LIQ'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TQReceberFAT_VLFAT: TFloatField
      FieldName = 'FAT_VLFAT'
      Origin = 'FAT0000.FAT_VLFAT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TQReceberFAT_VLNCOMIS: TFloatField
      FieldName = 'FAT_VLNCOMIS'
      Origin = 'FAT0000.FAT_VLNCOMIS'
    end
    object TQReceberFAT_DTEMIS: TDateTimeField
      FieldName = 'FAT_DTEMIS'
      Origin = 'FAT0000.FAT_DTEMIS'
    end
    object TQReceberFAT_COMIS1: TFloatField
      FieldName = 'FAT_COMIS1'
      Origin = 'FAT0000.FAT_COMIS1'
    end
    object TQReceberFAT_COMIS2: TFloatField
      FieldName = 'FAT_COMIS2'
      Origin = 'FAT0000.FAT_COMIS2'
    end
    object TQReceberFAT_COMIS3: TFloatField
      FieldName = 'FAT_COMIS3'
      Origin = 'FAT0000.FAT_COMIS3'
    end
    object TQReceberFAT_OBS: TStringField
      FieldName = 'FAT_OBS'
      Origin = 'FAT0000.FAT_OBS'
      Size = 100
    end
    object TQReceberFAT_OPERACAO: TStringField
      FieldName = 'FAT_OPERACAO'
      Origin = 'FAT0000.FAT_OPERACAO'
      Size = 3
    end
    object TQReceberFAT_BASEICMS: TFloatField
      FieldName = 'FAT_BASEICMS'
      Origin = 'FAT0000.FAT_BASEICMS'
    end
    object TQReceberFAT_ALIQUOTA: TFloatField
      FieldName = 'FAT_ALIQUOTA'
      Origin = 'FAT0000.FAT_ALIQUOTA'
    end
    object TQReceberFAT_OBSLIVRO: TStringField
      FieldName = 'FAT_OBSLIVRO'
      Origin = 'FAT0000.FAT_OBSLIVRO'
      Size = 35
    end
    object TQReceberFAT_OPERUF: TStringField
      FieldName = 'FAT_OPERUF'
      Origin = 'FAT0000.FAT_OPERUF'
      Size = 2
    end
    object TQReceberFAT_LIVRO: TBooleanField
      FieldName = 'FAT_LIVRO'
      Origin = 'FAT0000.FAT_LIVRO'
    end
    object TQReceberEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'FAT0000.EMP_CODIGO'
      Size = 3
    end
  end
  object DsQReceber: TDataSource
    DataSet = TQReceber
    Left = 144
    Top = 56
  end
  object TQReceParc: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT FAT_CODIGO, FPC_NUMER, BAN_CODIGO, REP_CODIGO, FPC_DTEMIS' +
        ', FPC_COBNUM, FPC_COBTIPO, FPC_STATUS, FPC_DESCTO, FPC_DTDESC, F' +
        'PC_VENCTO, FPC_PAGTO, FPC_VLPARC, FPC_VLPAGO, FPC_OBS, FPC_SITPA' +
        'G, EMP_CODIGO, CLI_CODIGO'
      'FROM fat_pc01'
      'ORDER BY FPC_DTEMIS')
    Left = 216
    Top = 8
    object TQReceParcFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Origin = 'RWDBADM.FAT_PC01.FAT_CODIGO'
      Size = 6
    end
    object TQReceParcFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Origin = 'RWDBADM.FAT_PC01.FPC_NUMER'
      Size = 2
    end
    object TQReceParcBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Origin = 'RWDBADM.FAT_PC01.BAN_CODIGO'
      Size = 4
    end
    object TQReceParcREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Origin = 'RWDBADM.FAT_PC01.REP_CODIGO'
      Size = 3
    end
    object TQReceParcFPC_DTEMIS: TDateTimeField
      FieldName = 'FPC_DTEMIS'
      Origin = 'RWDBADM.FAT_PC01.FPC_DTEMIS'
    end
    object TQReceParcFPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Origin = 'RWDBADM.FAT_PC01.FPC_COBNUM'
      Size = 13
    end
    object TQReceParcFPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      Origin = 'RWDBADM.FAT_PC01.FPC_COBTIPO'
      Size = 2
    end
    object TQReceParcFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Origin = 'RWDBADM.FAT_PC01.FPC_STATUS'
      Size = 12
    end
    object TQReceParcFPC_DESCTO: TFloatField
      FieldName = 'FPC_DESCTO'
      Origin = 'RWDBADM.FAT_PC01.FPC_DESCTO'
    end
    object TQReceParcFPC_DTDESC: TDateTimeField
      FieldName = 'FPC_DTDESC'
      Origin = 'RWDBADM.FAT_PC01.FPC_DTDESC'
    end
    object TQReceParcFPC_VENCTO: TDateTimeField
      FieldName = 'FPC_VENCTO'
      Origin = 'RWDBADM.FAT_PC01.FPC_VENCTO'
    end
    object TQReceParcFPC_PAGTO: TDateTimeField
      FieldName = 'FPC_PAGTO'
      Origin = 'RWDBADM.FAT_PC01.FPC_PAGTO'
    end
    object TQReceParcFPC_VLPARC: TFloatField
      FieldName = 'FPC_VLPARC'
      Origin = 'RWDBADM.FAT_PC01.FPC_VLPARC'
    end
    object TQReceParcFPC_VLPAGO: TFloatField
      FieldName = 'FPC_VLPAGO'
      Origin = 'RWDBADM.FAT_PC01.FPC_VLPAGO'
    end
    object TQReceParcFPC_OBS: TStringField
      FieldName = 'FPC_OBS'
      Origin = 'RWDBADM.FAT_PC01.FPC_OBS'
      Size = 50
    end
    object TQReceParcFPC_SITPAG: TBooleanField
      FieldName = 'FPC_SITPAG'
      Origin = 'RWDBADM.FAT_PC01.FPC_SITPAG'
    end
    object TQReceParcEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'RWDBADM.FAT_PC01.EMP_CODIGO'
      Size = 3
    end
    object TQReceParcCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Origin = 'RWDBADM.FAT_PC01.CLI_CODIGO'
      Size = 5
    end
  end
  object DsQReceParc: TDataSource
    DataSet = TQReceParc
    Left = 216
    Top = 56
  end
  object TQTransport: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      'SELECT TRP_CODIGO, TRP_RAZAO, TRP_FONE'
      'FROM TRP0000'
      'ORDER BY TRP_RAZAO')
    Left = 288
    Top = 8
    object TQTransportTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Origin = 'TRP0000.TRP_CODIGO'
      Size = 3
    end
    object TQTransportTRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      Origin = 'TRP0000.TRP_RAZAO'
      Size = 45
    end
    object TQTransportTRP_FONE: TStringField
      FieldName = 'TRP_FONE'
      Origin = 'TRP0000.TRP_FONE'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
  end
  object DsQTransport: TDataSource
    DataSet = TQTransport
    Left = 288
    Top = 56
  end
  object TQItemRec: TQuery
    OnCalcFields = TQItemRecCalcFields
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT FAT_IT02.FAT_CODIGO, FAT_IT02.PRD_CODIGO, FAT_IT02.PRD_RE' +
        'FER, FAT_IT02.FIT_QTDE, FAT_IT02.FIT_IPIALIQ, FAT_IT02.FIT_PRECO' +
        ', FAT_IT02.EMP_CODIGO, PRD0000.PRD_DESCRI, PRD0000.PRD_REFER, FA' +
        'T_IT02.FIT_COMIS, FAT_IT02.FIT_DESCTO, FAT_IT02.FIT_SUBSTIT'
      'FROM FAT_IT02'
      '   LEFT OUTER JOIN PRD0000'
      '   ON  (FAT_IT02.PRD_REFER = PRD0000.PRD_REFER)  ')
    Left = 24
    Top = 104
    object TQItemRecFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Origin = 'FAT_IT02.FAT_CODIGO'
      Size = 6
    end
    object TQItemRecPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'FAT_IT02.PRD_CODIGO'
      Size = 4
    end
    object TQItemRecFat_it02PRD_REFER: TStringField
      FieldName = 'Fat_it02.PRD_REFER'
      Origin = 'FAT_IT02.PRD_REFER'
      Size = 11
    end
    object TQItemRecFIT_QTDE: TFloatField
      FieldName = 'FIT_QTDE'
      Origin = 'FAT_IT02.FIT_QTDE'
    end
    object TQItemRecFIT_IPIALIQ: TFloatField
      FieldName = 'FIT_IPIALIQ'
      Origin = 'FAT_IT02.FIT_IPIALIQ'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TQItemRecFIT_PRECO: TFloatField
      FieldName = 'FIT_PRECO'
      Origin = 'FAT_IT02.FIT_PRECO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object TQItemRecEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'FAT_IT02.EMP_CODIGO'
      Size = 3
    end
    object TQItemRecPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD0000.PRD_DESCRI'
      Size = 40
    end
    object TQItemRecPrd0000PRD_REFER: TStringField
      FieldName = 'Prd0000.PRD_REFER'
      Origin = 'PRD0000.PRD_REFER'
      Size = 11
    end
    object TQItemRecFIT_TOTAL_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FIT_TOTAL_CC'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
    object TQItemRecFIT_COMIS: TFloatField
      FieldName = 'FIT_COMIS'
      Origin = 'FAT_IT02.FIT_COMIS'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TQItemRecFIT_DESCTO: TFloatField
      FieldName = 'FIT_DESCTO'
      Origin = 'FAT_IT02.FIT_DESCTO'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object TQItemRecFIT_SUBSTIT: TFloatField
      FieldName = 'FIT_SUBSTIT'
      Origin = 'FAT_IT02.FIT_SUBSTIT'
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
  end
  object DsQItemRec: TDataSource
    DataSet = TQItemRec
    Left = 24
    Top = 152
  end
  object TQPagParc: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT Pag_pc01.PAG_CODIGO, Pag_pc01.PPC_NUMER, Pag_pc01.PPC_BAN' +
        'CO, Pag_pc01.PPC_VENCTO, Pag_pc01.PPC_PAGTO, Pag_pc01.PPC_VLPARC' +
        ', Pag_pc01.PPC_VLPAGO, Pag_pc01.PPC_OBS, Pag_pc01.PPC_SITPAG, Pa' +
        'g_pc01.EMP_CODIGO, Pag_pc01.FOR_CODIGO, Pag_pc01.CCT_CODIGO, Pag' +
        '0000.PAG_CODIGO, Pag0000.PAG_NUMDOC, Pag0000.PAG_DTEMIS, Pag0000' +
        '.PAG_FAVORECIDO'
      'FROM PAG_PC01 Pag_pc01, PAG0000 Pag0000'
      'WHERE  (Pag0000.PAG_CODIGO = Pag_pc01.PAG_CODIGO)  '
      'ORDER BY Pag0000.PAG_DTEMIS')
    Left = 88
    Top = 104
    object TQPagParcPag_pc01PAG_CODIGO: TStringField
      FieldName = 'Pag_pc01.PAG_CODIGO'
      Origin = 'PAG_PC01.PAG_CODIGO'
      Size = 5
    end
    object TQPagParcPPC_NUMER: TStringField
      FieldName = 'PPC_NUMER'
      Origin = 'PAG_PC01.PPC_NUMER'
      Size = 2
    end
    object TQPagParcPPC_BANCO: TStringField
      FieldName = 'PPC_BANCO'
      Origin = 'PAG_PC01.PPC_BANCO'
      Size = 12
    end
    object TQPagParcPPC_VENCTO: TDateTimeField
      FieldName = 'PPC_VENCTO'
      Origin = 'PAG_PC01.PPC_VENCTO'
    end
    object TQPagParcPPC_PAGTO: TDateTimeField
      FieldName = 'PPC_PAGTO'
      Origin = 'PAG_PC01.PPC_PAGTO'
    end
    object TQPagParcPPC_VLPARC: TFloatField
      FieldName = 'PPC_VLPARC'
      Origin = 'PAG_PC01.PPC_VLPARC'
    end
    object TQPagParcPPC_VLPAGO: TFloatField
      FieldName = 'PPC_VLPAGO'
      Origin = 'PAG_PC01.PPC_VLPAGO'
    end
    object TQPagParcPPC_OBS: TStringField
      FieldName = 'PPC_OBS'
      Origin = 'PAG_PC01.PPC_OBS'
      Size = 15
    end
    object TQPagParcPPC_SITPAG: TBooleanField
      FieldName = 'PPC_SITPAG'
      Origin = 'PAG_PC01.PPC_SITPAG'
    end
    object TQPagParcEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'PAG_PC01.EMP_CODIGO'
      Size = 3
    end
    object TQPagParcFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Origin = 'PAG_PC01.FOR_CODIGO'
      Size = 4
    end
    object TQPagParcCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Origin = 'PAG_PC01.CCT_CODIGO'
      Size = 3
    end
    object TQPagParcPag0000PAG_CODIGO: TStringField
      FieldName = 'Pag0000.PAG_CODIGO'
      Origin = 'PAG0000.PAG_CODIGO'
      Size = 5
    end
    object TQPagParcPAG_NUMDOC: TStringField
      FieldName = 'PAG_NUMDOC'
      Origin = 'PAG0000.PAG_NUMDOC'
      Size = 9
    end
    object TQPagParcPAG_DTEMIS: TDateTimeField
      FieldName = 'PAG_DTEMIS'
      Origin = 'PAG0000.PAG_DTEMIS'
    end
    object TQPagParcPAG_FAVORECIDO: TStringField
      FieldName = 'PAG_FAVORECIDO'
      Origin = 'PAG0000.PAG_FAVORECIDO'
      Size = 40
    end
  end
  object DsQPagParc: TDataSource
    DataSet = TQPagParc
    Left = 88
    Top = 152
  end
  object DsQProduto: TDataSource
    DataSet = TQProduto
    Left = 152
    Top = 152
  end
  object TQProduto: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      'SELECT PRD_DESCRI, PRD_REFER, PRD_CODIGO'
      'FROM PRD0000'
      'ORDER BY PRD_REFER')
    Left = 152
    Top = 104
    object TQProdutoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD0000.PRD_DESCRI'
      Size = 40
    end
    object TQProdutoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD0000.PRD_REFER'
      Size = 11
    end
    object TQProdutoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD0000.PRD_CODIGO'
      Size = 4
    end
  end
  object TQFornec: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT FOR_CODIGO, FOR_RAZAO, FOR_ENDERE, FOR_CIDADE, FOR_UF, FO' +
        'R_CEP, FOR_CONTATO, FOR_FONE, FOR_FAX, FOR_EMAIL, FOR_FONCONT, F' +
        'OR_FAXCONT, FOR_OBS, EMP_CODIGO, FOR_CGC, FOR_INSC, FOR_HOME, FO' +
        'R_EMAILCONT, CCT_CODIGO, FOR_PRAZOVENDAS'
      'FROM FOR0000'
      'ORDER BY FOR_RAZAO')
    Left = 216
    Top = 104
    object TQFornecFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Origin = 'FOR0000.FOR_CODIGO'
      Size = 4
    end
    object TQFornecFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Origin = 'FOR0000.FOR_RAZAO'
      Size = 40
    end
    object TQFornecFOR_ENDERE: TStringField
      FieldName = 'FOR_ENDERE'
      Origin = 'FOR0000.FOR_ENDERE'
      Size = 40
    end
    object TQFornecFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      Origin = 'FOR0000.FOR_CIDADE'
      Size = 30
    end
    object TQFornecFOR_UF: TStringField
      FieldName = 'FOR_UF'
      Origin = 'FOR0000.FOR_UF'
      Size = 2
    end
    object TQFornecFOR_CEP: TStringField
      FieldName = 'FOR_CEP'
      Origin = 'FOR0000.FOR_CEP'
      Size = 8
    end
    object TQFornecFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
      Origin = 'FOR0000.FOR_CONTATO'
    end
    object TQFornecFOR_FONE: TStringField
      FieldName = 'FOR_FONE'
      Origin = 'FOR0000.FOR_FONE'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object TQFornecFOR_FAX: TStringField
      FieldName = 'FOR_FAX'
      Origin = 'FOR0000.FOR_FAX'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object TQFornecFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      Origin = 'FOR0000.FOR_EMAIL'
      Size = 35
    end
    object TQFornecFOR_FONCONT: TStringField
      FieldName = 'FOR_FONCONT'
      Origin = 'FOR0000.FOR_FONCONT'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object TQFornecFOR_FAXCONT: TStringField
      FieldName = 'FOR_FAXCONT'
      Origin = 'FOR0000.FOR_FAXCONT'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object TQFornecFOR_OBS: TStringField
      FieldName = 'FOR_OBS'
      Origin = 'FOR0000.FOR_OBS'
      Size = 200
    end
    object TQFornecEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'FOR0000.EMP_CODIGO'
      Size = 3
    end
    object TQFornecFOR_CGC: TStringField
      FieldName = 'FOR_CGC'
      Origin = 'FOR0000.FOR_CGC'
      Size = 14
    end
    object TQFornecFOR_INSC: TStringField
      FieldName = 'FOR_INSC'
      Origin = 'FOR0000.FOR_INSC'
      Size = 14
    end
    object TQFornecFOR_HOME: TStringField
      FieldName = 'FOR_HOME'
      Origin = 'FOR0000.FOR_HOME'
      Size = 35
    end
    object TQFornecFOR_EMAILCONT: TStringField
      FieldName = 'FOR_EMAILCONT'
      Origin = 'FOR0000.FOR_EMAILCONT'
      Size = 35
    end
    object TQFornecCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Origin = 'FOR0000.CCT_CODIGO'
      Size = 3
    end
    object TQFornecFOR_PRAZOVENDAS: TStringField
      FieldName = 'FOR_PRAZOVENDAS'
      Origin = 'FOR0000.FOR_PRAZOVENDAS'
      Size = 30
    end
  end
  object DsQFornec: TDataSource
    DataSet = TQFornec
    Left = 216
    Top = 152
  end
end
