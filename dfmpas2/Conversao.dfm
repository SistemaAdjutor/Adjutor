object FormConverte: TFormConverte
  Left = 200
  Top = 108
  Width = 544
  Height = 375
  Caption = 'FormConverte'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 392
    Top = 120
    Width = 48
    Height = 20
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 16
    Width = 119
    Height = 13
    Caption = 'Convers'#227'o de Dados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Converte: TButton
    Left = 152
    Top = 16
    Width = 177
    Height = 49
    Caption = 'Converte Cadastro de Cliente'
    TabOrder = 0
    OnClick = ConverteClick
  end
  object Button1: TButton
    Left = 152
    Top = 72
    Width = 169
    Height = 41
    Caption = 'Cadastro de Repres.'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 144
    Top = 128
    Width = 185
    Height = 41
    Caption = 'Cadastro de Transportadora'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 144
    Top = 192
    Width = 169
    Height = 49
    Caption = 'Cadastro de Fornecedor'
    TabOrder = 3
    OnClick = Button3Click
  end
  object TbCliante: TTable
    DatabaseName = 'Adjutor'
    TableName = 'cliente'
    Left = 472
    Top = 8
    object TbClianteCL_CODIGO: TStringField
      FieldName = 'CL_CODIGO'
      Size = 5
    end
    object TbClianteCL_RAZSOC: TStringField
      FieldName = 'CL_RAZSOC'
      Size = 40
    end
    object TbClianteCL_ULTCOMP: TDateTimeField
      FieldName = 'CL_ULTCOMP'
    end
    object TbClianteCL_REGIAO: TStringField
      FieldName = 'CL_REGIAO'
      Size = 3
    end
    object TbClianteCL_TIPO: TStringField
      FieldName = 'CL_TIPO'
      Size = 1
    end
    object TbClianteCL_ENDERE: TStringField
      FieldName = 'CL_ENDERE'
      Size = 35
    end
    object TbClianteCL_BAIRRO: TStringField
      FieldName = 'CL_BAIRRO'
    end
    object TbClianteCL_CIDADE: TStringField
      FieldName = 'CL_CIDADE'
    end
    object TbClianteCL_UF: TStringField
      FieldName = 'CL_UF'
      Size = 2
    end
    object TbClianteCL_CEP: TStringField
      FieldName = 'CL_CEP'
      Size = 8
    end
    object TbClianteCL_CXPOST: TStringField
      FieldName = 'CL_CXPOST'
      Size = 6
    end
    object TbClianteCL_FONE: TStringField
      FieldName = 'CL_FONE'
      Size = 10
    end
    object TbClianteCL_FAX: TStringField
      FieldName = 'CL_FAX'
      Size = 10
    end
    object TbClianteTP_CODIGO: TStringField
      FieldName = 'TP_CODIGO'
      Size = 3
    end
    object TbClianteCL_INSEST: TStringField
      FieldName = 'CL_INSEST'
      Size = 14
    end
    object TbClianteCL_INSCGC: TStringField
      FieldName = 'CL_INSCGC'
      Size = 14
    end
    object TbClianteCL_CONTAT: TStringField
      FieldName = 'CL_CONTAT'
    end
    object TbClianteCL_FUNCAO: TStringField
      FieldName = 'CL_FUNCAO'
    end
    object TbClianteCL_CODREP: TStringField
      FieldName = 'CL_CODREP'
      Size = 4
    end
    object TbClianteCL_DATACP: TDateTimeField
      FieldName = 'CL_DATACP'
    end
    object TbClianteCL_ENDENT: TStringField
      FieldName = 'CL_ENDENT'
      Size = 35
    end
    object TbClianteCL_BAIENT: TStringField
      FieldName = 'CL_BAIENT'
    end
    object TbClianteCL_CIDENT: TStringField
      FieldName = 'CL_CIDENT'
    end
    object TbClianteCL_UFENT: TStringField
      FieldName = 'CL_UFENT'
      Size = 2
    end
    object TbClianteCL_CEPENT: TStringField
      FieldName = 'CL_CEPENT'
      Size = 8
    end
    object TbClianteCL_ENDFAT: TStringField
      FieldName = 'CL_ENDFAT'
      Size = 35
    end
    object TbClianteCL_BAIFAT: TStringField
      FieldName = 'CL_BAIFAT'
    end
    object TbClianteCL_CIDFAT: TStringField
      FieldName = 'CL_CIDFAT'
    end
    object TbClianteCL_UFFAT: TStringField
      FieldName = 'CL_UFFAT'
      Size = 2
    end
    object TbClianteCL_CEPFAT: TStringField
      FieldName = 'CL_CEPFAT'
      Size = 8
    end
  end
  object DataSource1: TDataSource
    DataSet = TbCliante
    Left = 504
    Top = 8
  end
  object TRepres: TTable
    DatabaseName = 'Adjutor'
    TableName = 'REPRES'
    Left = 472
    Top = 48
    object TRepresRP_CODIGO: TStringField
      FieldName = 'RP_CODIGO'
      Size = 3
    end
    object TRepresRP_CODGRP: TStringField
      FieldName = 'RP_CODGRP'
      Size = 1
    end
    object TRepresRP_FUNCAO: TStringField
      FieldName = 'RP_FUNCAO'
      Size = 1
    end
    object TRepresRP_SUPERV: TStringField
      FieldName = 'RP_SUPERV'
      Size = 3
    end
    object TRepresRP_NOME: TStringField
      FieldName = 'RP_NOME'
      Size = 35
    end
    object TRepresRP_RAZSOC: TStringField
      FieldName = 'RP_RAZSOC'
      Size = 35
    end
    object TRepresRP_ENDERE: TStringField
      FieldName = 'RP_ENDERE'
      Size = 30
    end
    object TRepresBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object TRepresRP_BAIRRO: TStringField
      FieldName = 'RP_BAIRRO'
    end
    object TRepresRP_CIDADE: TStringField
      FieldName = 'RP_CIDADE'
    end
    object TRepresRP_UF: TStringField
      FieldName = 'RP_UF'
      Size = 2
    end
    object TRepresRP_CEP: TFloatField
      FieldName = 'RP_CEP'
    end
    object TRepresRP_FONE: TStringField
      FieldName = 'RP_FONE'
      Size = 10
    end
    object TRepresRP_FAX: TStringField
      FieldName = 'RP_FAX'
      Size = 10
    end
    object TRepresRP_TIPIRF: TStringField
      FieldName = 'RP_TIPIRF'
      Size = 1
    end
    object TRepresRP_CONTA: TStringField
      FieldName = 'RP_CONTA'
      Size = 14
    end
    object TRepresRP_BCO: TStringField
      FieldName = 'RP_BCO'
      Size = 4
    end
    object TRepresRP_AGE: TStringField
      FieldName = 'RP_AGE'
      Size = 4
    end
    object TRepresRP_BANCO: TStringField
      FieldName = 'RP_BANCO'
      Size = 25
    end
    object TRepresRP_ATIVO: TStringField
      FieldName = 'RP_ATIVO'
      Size = 1
    end
    object TRepresRP_COTA: TFloatField
      FieldName = 'RP_COTA'
    end
    object TRepresRP_VENDEU: TFloatField
      FieldName = 'RP_VENDEU'
    end
    object TRepresRP_VENLIT: TFloatField
      FieldName = 'RP_VENLIT'
    end
    object TRepresRP_LIT01: TFloatField
      FieldName = 'RP_LIT01'
    end
    object TRepresRP_VAL01: TFloatField
      FieldName = 'RP_VAL01'
    end
    object TRepresRP_LIT02: TFloatField
      FieldName = 'RP_LIT02'
    end
    object TRepresRP_VAL02: TFloatField
      FieldName = 'RP_VAL02'
    end
    object TRepresRP_LIT03: TFloatField
      FieldName = 'RP_LIT03'
    end
    object TRepresRP_VAL03: TFloatField
      FieldName = 'RP_VAL03'
    end
    object TRepresRP_LIT04: TFloatField
      FieldName = 'RP_LIT04'
    end
    object TRepresRP_VAL04: TFloatField
      FieldName = 'RP_VAL04'
    end
    object TRepresRP_LIT05: TFloatField
      FieldName = 'RP_LIT05'
    end
    object TRepresRP_VAL05: TFloatField
      FieldName = 'RP_VAL05'
    end
    object TRepresRP_LIT06: TFloatField
      FieldName = 'RP_LIT06'
    end
    object TRepresRP_VAL06: TFloatField
      FieldName = 'RP_VAL06'
    end
    object TRepresRP_LIT07: TFloatField
      FieldName = 'RP_LIT07'
    end
    object TRepresRP_VAL07: TFloatField
      FieldName = 'RP_VAL07'
    end
    object TRepresRP_LIT08: TFloatField
      FieldName = 'RP_LIT08'
    end
    object TRepresRP_VAL08: TFloatField
      FieldName = 'RP_VAL08'
    end
    object TRepresRP_LIT09: TFloatField
      FieldName = 'RP_LIT09'
    end
    object TRepresRP_VAL09: TFloatField
      FieldName = 'RP_VAL09'
    end
    object TRepresRP_LIT10: TFloatField
      FieldName = 'RP_LIT10'
    end
    object TRepresRP_VAL10: TFloatField
      FieldName = 'RP_VAL10'
    end
    object TRepresRP_LIT11: TFloatField
      FieldName = 'RP_LIT11'
    end
    object TRepresRP_VAL11: TFloatField
      FieldName = 'RP_VAL11'
    end
    object TRepresRP_LIT12: TFloatField
      FieldName = 'RP_LIT12'
    end
    object TRepresRP_VAL12: TFloatField
      FieldName = 'RP_VAL12'
    end
  end
  object DataSource2: TDataSource
    DataSet = TRepres
    Left = 504
    Top = 48
  end
  object Ttransp: TTable
    DatabaseName = 'Adjutor'
    TableName = 'TRANSPO'
    Left = 472
    Top = 88
    object TtranspTP_CODIGO: TStringField
      FieldName = 'TP_CODIGO'
      Size = 3
    end
    object TtranspTP_NOME: TStringField
      FieldName = 'TP_NOME'
      Size = 40
    end
    object TtranspTP_ENDE: TStringField
      FieldName = 'TP_ENDE'
      Size = 40
    end
    object TtranspTP_CIDADE: TStringField
      FieldName = 'TP_CIDADE'
      Size = 25
    end
    object TtranspTP_UF: TStringField
      FieldName = 'TP_UF'
      Size = 2
    end
    object TtranspTP_CEP: TStringField
      FieldName = 'TP_CEP'
      Size = 8
    end
    object TtranspTP_CGC: TStringField
      FieldName = 'TP_CGC'
      Size = 14
    end
    object TtranspTP_INSCR: TStringField
      FieldName = 'TP_INSCR'
      Size = 16
    end
    object TtranspTP_FONE: TStringField
      FieldName = 'TP_FONE'
      Size = 10
    end
    object TtranspTP_FAX: TStringField
      FieldName = 'TP_FAX'
      Size = 10
    end
    object TtranspTP_CONTATO: TStringField
      FieldName = 'TP_CONTATO'
      Size = 15
    end
  end
  object DataSource3: TDataSource
    DataSet = Ttransp
    Left = 504
    Top = 96
  end
  object Tforn: TTable
    DatabaseName = 'Adjutor'
    TableName = 'IFORNEC'
    Left = 472
    Top = 144
    object TfornCODFOR: TStringField
      FieldName = 'CODFOR'
      Size = 3
    end
    object TfornNOMFOR: TStringField
      FieldName = 'NOMFOR'
      Size = 35
    end
    object TfornENDFOR: TStringField
      FieldName = 'ENDFOR'
      Size = 35
    end
    object TfornCIDFOR: TStringField
      FieldName = 'CIDFOR'
    end
    object TfornESTFOR: TStringField
      FieldName = 'ESTFOR'
      Size = 2
    end
    object TfornCEPFOR: TStringField
      FieldName = 'CEPFOR'
      Size = 8
    end
    object TfornCGCFOR: TStringField
      FieldName = 'CGCFOR'
      Size = 14
    end
    object TfornINSFOR: TStringField
      FieldName = 'INSFOR'
      Size = 15
    end
    object TfornFONFOR: TStringField
      FieldName = 'FONFOR'
      Size = 10
    end
    object TfornFAXFOR: TStringField
      FieldName = 'FAXFOR'
      Size = 10
    end
    object TfornCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 12
    end
  end
  object DataSource4: TDataSource
    DataSet = Tforn
    Left = 504
    Top = 144
  end
end
