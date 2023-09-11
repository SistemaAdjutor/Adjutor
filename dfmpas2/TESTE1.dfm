object Form1: TForm1
  Left = 13
  Top = 14
  Width = 742
  Height = 553
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 5
    Top = 26
    Width = 713
    Height = 153
    DataSource = DsQTeste2
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 6
    Top = 348
    Width = 714
    Height = 153
    DataSource = DsQFatura
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BitBtn1: TBitBtn
    Left = 408
    Top = 0
    Width = 75
    Height = 25
    Caption = 'Testar'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object DBGrid3: TDBGrid
    Left = 5
    Top = 205
    Width = 713
    Height = 131
    DataSource = DsQTeste
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid3CellClick
  end
  object Edit1: TEdit
    Left = 592
    Top = 183
    Width = 100
    Height = 21
    TabOrder = 4
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 592
    Top = 503
    Width = 100
    Height = 21
    TabOrder = 5
    Text = 'Edit2'
  end
  object TQTeste: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT REP_CODIGO, REP_SUPERVISAO, REP_RAZAO, REP_NOME, REP_QUOT' +
        'A, REP_FUNCAO'
      'FROM REP0000 Rep0000')
    Left = 16
  end
  object TQFatura: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT FAT_CODIGO, REP_CODIGO, FAT_QTDITEM, FAT_VL_LIQ, FAT_VLFA' +
        'T, FAT_DTEMIS'
      'FROM FAT0000 Fat0000')
    Left = 80
  end
  object DsQTeste: TDataSource
    DataSet = TQTeste
    Left = 48
  end
  object DsQFatura: TDataSource
    DataSet = TQFatura
    Left = 112
  end
  object TQTeste2: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT REP.*,FAT.* FROM REP0000 REP LEFT OUTER JOIN FAT0000 FAT ' +
        'ON Fat.REP_CODIGO=Rep.REP_CODIGO'
      'Order by FAT.REP_CODIGO')
    Left = 168
    object TQTeste2REPREP_CODIGO: TStringField
      FieldName = 'REP.REP_CODIGO'
      Origin = 'RWDBADM.REP0000.REP_CODIGO'
      Size = 3
    end
    object TQTeste2REP_GRUPO: TStringField
      FieldName = 'REP_GRUPO'
      Origin = 'RWDBADM.REP0000.REP_GRUPO'
      Size = 2
    end
    object TQTeste2REG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      Origin = 'RWDBADM.REP0000.REG_CODIGO'
      Size = 3
    end
    object TQTeste2REP_FUNCAO: TStringField
      FieldName = 'REP_FUNCAO'
      Origin = 'RWDBADM.REP0000.REP_FUNCAO'
      Size = 1
    end
    object TQTeste2REP_SUPERVISAO: TStringField
      FieldName = 'REP_SUPERVISAO'
      Origin = 'RWDBADM.REP0000.REP_SUPERVISAO'
      Size = 3
    end
    object TQTeste2REP_RAZAO: TStringField
      FieldName = 'REP_RAZAO'
      Origin = 'RWDBADM.REP0000.REP_RAZAO'
      Size = 40
    end
    object TQTeste2REP_NOME: TStringField
      FieldName = 'REP_NOME'
      Origin = 'RWDBADM.REP0000.REP_NOME'
      Size = 35
    end
    object TQTeste2REP_ENDERE: TStringField
      FieldName = 'REP_ENDERE'
      Origin = 'RWDBADM.REP0000.REP_ENDERE'
      Size = 40
    end
    object TQTeste2REP_CIDADE: TStringField
      FieldName = 'REP_CIDADE'
      Origin = 'RWDBADM.REP0000.REP_CIDADE'
      Size = 30
    end
    object TQTeste2REP_UF: TStringField
      FieldName = 'REP_UF'
      Origin = 'RWDBADM.REP0000.REP_UF'
      Size = 2
    end
    object TQTeste2REP_CEP: TStringField
      FieldName = 'REP_CEP'
      Origin = 'RWDBADM.REP0000.REP_CEP'
      Size = 8
    end
    object TQTeste2REP_FONE: TStringField
      FieldName = 'REP_FONE'
      Origin = 'RWDBADM.REP0000.REP_FONE'
      Size = 11
    end
    object TQTeste2REP_FAX: TStringField
      FieldName = 'REP_FAX'
      Origin = 'RWDBADM.REP0000.REP_FAX'
      Size = 11
    end
    object TQTeste2REP_EMAIL: TStringField
      FieldName = 'REP_EMAIL'
      Origin = 'RWDBADM.REP0000.REP_EMAIL'
      Size = 35
    end
    object TQTeste2REP_TIPO: TStringField
      FieldName = 'REP_TIPO'
      Origin = 'RWDBADM.REP0000.REP_TIPO'
      Size = 1
    end
    object TQTeste2REP_SITUACAO: TStringField
      FieldName = 'REP_SITUACAO'
      Origin = 'RWDBADM.REP0000.REP_SITUACAO'
      Size = 1
    end
    object TQTeste2REP_OBS: TMemoField
      FieldName = 'REP_OBS'
      Origin = 'RWDBADM.REP0000.REP_OBS'
      BlobType = ftMemo
    end
    object TQTeste2REP_QUOTA: TFloatField
      FieldName = 'REP_QUOTA'
      Origin = 'RWDBADM.REP0000.REP_QUOTA'
    end
    object TQTeste2REP_NDEPEND: TSmallintField
      FieldName = 'REP_NDEPEND'
      Origin = 'RWDBADM.REP0000.REP_NDEPEND'
    end
    object TQTeste2REP_DTNASC: TDateTimeField
      FieldName = 'REP_DTNASC'
      Origin = 'RWDBADM.REP0000.REP_DTNASC'
    end
    object TQTeste2REP_INSC: TStringField
      FieldName = 'REP_INSC'
      Origin = 'RWDBADM.REP0000.REP_INSC'
      Size = 14
    end
    object TQTeste2REP_CGC: TStringField
      FieldName = 'REP_CGC'
      Origin = 'RWDBADM.REP0000.REP_CGC'
      Size = 14
    end
    object TQTeste2REPEMP_CODIGO: TStringField
      FieldName = 'REP.EMP_CODIGO'
      Origin = 'RWDBADM.REP0000.EMP_CODIGO'
      Size = 3
    end
    object TQTeste2REP_CELULAR: TStringField
      FieldName = 'REP_CELULAR'
      Origin = 'RWDBADM.REP0000.REP_CELULAR'
      Size = 11
    end
    object TQTeste2REP_CONTA: TStringField
      FieldName = 'REP_CONTA'
      Origin = 'RWDBADM.REP0000.REP_CONTA'
      Size = 12
    end
    object TQTeste2REP_AGENCIA: TStringField
      FieldName = 'REP_AGENCIA'
      Origin = 'RWDBADM.REP0000.REP_AGENCIA'
      Size = 6
    end
    object TQTeste2REP_BANCO: TStringField
      FieldName = 'REP_BANCO'
      Origin = 'RWDBADM.REP0000.REP_BANCO'
      Size = 25
    end
    object TQTeste2REP_BANCOFAVOR: TStringField
      FieldName = 'REP_BANCOFAVOR'
      Origin = 'RWDBADM.REP0000.REP_BANCOFAVOR'
      Size = 30
    end
    object TQTeste2FAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Origin = 'RWDBADM.FAT0000.FAT_CODIGO'
      Size = 6
    end
    object TQTeste2FAT_NPARCELAS: TSmallintField
      FieldName = 'FAT_NPARCELAS'
      Origin = 'RWDBADM.FAT0000.FAT_NPARCELAS'
    end
    object TQTeste2PCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Origin = 'RWDBADM.FAT0000.PCL_CODIGO'
      Size = 2
    end
    object TQTeste2CLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Origin = 'RWDBADM.FAT0000.CLI_CODIGO'
      Size = 5
    end
    object TQTeste2FATREP_CODIGO: TStringField
      FieldName = 'FAT.REP_CODIGO'
      Origin = 'RWDBADM.FAT0000.REP_CODIGO'
      Size = 3
    end
    object TQTeste2CCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Origin = 'RWDBADM.FAT0000.CCT_CODIGO'
      Size = 3
    end
    object TQTeste2PCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Origin = 'RWDBADM.FAT0000.PCX_CODIGO'
      Size = 3
    end
    object TQTeste2FAT_PREVISAO: TBooleanField
      FieldName = 'FAT_PREVISAO'
      Origin = 'RWDBADM.FAT0000.FAT_PREVISAO'
    end
    object TQTeste2PED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'RWDBADM.FAT0000.PED_CODIGO'
      Size = 6
    end
    object TQTeste2FAT_QTDITEM: TFloatField
      FieldName = 'FAT_QTDITEM'
      Origin = 'RWDBADM.FAT0000.FAT_QTDITEM'
    end
    object TQTeste2FAT_VL_LIQ: TFloatField
      FieldName = 'FAT_VL_LIQ'
      Origin = 'RWDBADM.FAT0000.FAT_VL_LIQ'
    end
    object TQTeste2FAT_VLFAT: TFloatField
      FieldName = 'FAT_VLFAT'
      Origin = 'RWDBADM.FAT0000.FAT_VLFAT'
    end
    object TQTeste2FAT_VLNCOMIS: TFloatField
      FieldName = 'FAT_VLNCOMIS'
      Origin = 'RWDBADM.FAT0000.FAT_VLNCOMIS'
    end
    object TQTeste2FAT_DTEMIS: TDateTimeField
      FieldName = 'FAT_DTEMIS'
      Origin = 'RWDBADM.FAT0000.FAT_DTEMIS'
    end
    object TQTeste2FAT_COMIS1: TFloatField
      FieldName = 'FAT_COMIS1'
      Origin = 'RWDBADM.FAT0000.FAT_COMIS1'
    end
    object TQTeste2FAT_COMIS2: TFloatField
      FieldName = 'FAT_COMIS2'
      Origin = 'RWDBADM.FAT0000.FAT_COMIS2'
    end
    object TQTeste2FAT_COMIS3: TFloatField
      FieldName = 'FAT_COMIS3'
      Origin = 'RWDBADM.FAT0000.FAT_COMIS3'
    end
    object TQTeste2FAT_OBS: TStringField
      FieldName = 'FAT_OBS'
      Origin = 'RWDBADM.FAT0000.FAT_OBS'
      Size = 50
    end
    object TQTeste2FAT_OPERACAO: TStringField
      FieldName = 'FAT_OPERACAO'
      Origin = 'RWDBADM.FAT0000.FAT_OPERACAO'
      Size = 3
    end
    object TQTeste2FAT_BASEICMS: TFloatField
      FieldName = 'FAT_BASEICMS'
      Origin = 'RWDBADM.FAT0000.FAT_BASEICMS'
    end
    object TQTeste2FAT_ALIQUOTA: TFloatField
      FieldName = 'FAT_ALIQUOTA'
      Origin = 'RWDBADM.FAT0000.FAT_ALIQUOTA'
    end
    object TQTeste2FAT_VL_IPI: TFloatField
      FieldName = 'FAT_VL_IPI'
      Origin = 'RWDBADM.FAT0000.FAT_VL_IPI'
    end
    object TQTeste2FAT_CANCELADA: TBooleanField
      FieldName = 'FAT_CANCELADA'
      Origin = 'RWDBADM.FAT0000.FAT_CANCELADA'
    end
    object TQTeste2FAT_BASESUB: TFloatField
      FieldName = 'FAT_BASESUB'
      Origin = 'RWDBADM.FAT0000.FAT_BASESUB'
    end
    object TQTeste2FAT_ICMSRET: TFloatField
      FieldName = 'FAT_ICMSRET'
      Origin = 'RWDBADM.FAT0000.FAT_ICMSRET'
    end
    object TQTeste2FAT_DESP_ACES: TFloatField
      FieldName = 'FAT_DESP_ACES'
      Origin = 'RWDBADM.FAT0000.FAT_DESP_ACES'
    end
    object TQTeste2FAT_OBSLIVRO: TStringField
      FieldName = 'FAT_OBSLIVRO'
      Origin = 'RWDBADM.FAT0000.FAT_OBSLIVRO'
      Size = 35
    end
    object TQTeste2FAT_OPERUF: TStringField
      FieldName = 'FAT_OPERUF'
      Origin = 'RWDBADM.FAT0000.FAT_OPERUF'
      Size = 2
    end
    object TQTeste2FAT_LIVRO: TBooleanField
      FieldName = 'FAT_LIVRO'
      Origin = 'RWDBADM.FAT0000.FAT_LIVRO'
    end
    object TQTeste2FATEMP_CODIGO: TStringField
      FieldName = 'FAT.EMP_CODIGO'
      Origin = 'RWDBADM.FAT0000.EMP_CODIGO'
      Size = 3
    end
  end
  object DsQTeste2: TDataSource
    DataSet = TQTeste2
    Left = 200
  end
end
