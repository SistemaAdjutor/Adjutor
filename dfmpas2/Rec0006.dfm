object FrmAtualizaLimite: TFrmAtualizaLimite
  Left = 236
  Top = 264
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Atualizar o Limite.'
  ClientHeight = 93
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 337
    Height = 57
    Caption = 'Atualizando'
    TabOrder = 0
    object ProgressBar1: TProgressBar
      Left = 14
      Top = 22
      Width = 309
      Height = 22
      TabOrder = 0
    end
  end
  object BitImprimeEtiq: TBitBtn
    Left = 84
    Top = 64
    Width = 80
    Height = 25
    Caption = '&Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    TabStop = False
    OnClick = BitImprimeEtiqClick
  end
  object BitFechar: TBitBtn
    Left = 165
    Top = 64
    Width = 80
    Height = 25
    Caption = 'Cancel&ar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    TabStop = False
    OnClick = BitFecharClick
  end
  object SqlCdsBaixaAuto: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'F1.FAT_REGISTRO,'#13#10'B1.BAN_CODIGO,'#13#10'F1.FPC_COBTIPO,'#13#10'sum(F' +
      '1.fpc_vlparc)as wBaixar_Limite'#13#10'FROM fat_pc01 F1'#13#10'LEFT JOIN BAN0' +
      '000 B1 ON (F1.BAN_CODIGO = B1.BAN_CODIGO)'#13#10'WHERE'#13#10'(F1.FPC_VENCTO' +
      ' < '#39'30.01.2006'#39' AND'#13#10'F1.EMP_CODIGO = '#39'001'#39' AND'#13#10'F1.BAN_CODIGO = ' +
      #39'0006'#39' AND'#13#10'F1.FPC_DESCONTADO = '#39'S'#39' AND'#13#10'F1.FPC_CONFIRMADESCTO =' +
      ' '#39'N'#39' and'#13#10'F1.FPC_CONFIRMADEVOLUCAO = '#39'N'#39')'#13#10'Group by'#13#10'F1.FAT_REGI' +
      'STRO,'#13#10'B1.BAN_CODIGO,'#13#10'F1.FPC_COBTIPO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select'#13#10'F1.FAT_REGISTRO,'#13#10'B1.BAN_CODIGO,'#13#10'F1.FPC_COBTIPO,'#13#10'sum(F' +
      '1.fpc_vlparc)as wBaixar_Limite'#13#10'FROM fat_pc01 F1'#13#10'LEFT JOIN BAN0' +
      '000 B1 ON (F1.BAN_CODIGO = B1.BAN_CODIGO)'#13#10'WHERE'#13#10'(F1.FPC_VENCTO' +
      ' < '#39'30.01.2006'#39' AND'#13#10'F1.EMP_CODIGO = '#39'001'#39' AND'#13#10'F1.BAN_CODIGO = ' +
      #39'0006'#39' AND'#13#10'F1.FPC_DESCONTADO = '#39'S'#39' AND'#13#10'F1.FPC_CONFIRMADESCTO =' +
      ' '#39'N'#39' and'#13#10'F1.FPC_CONFIRMADEVOLUCAO = '#39'N'#39')'#13#10'Group by'#13#10'F1.FAT_REGI' +
      'STRO,'#13#10'B1.BAN_CODIGO,'#13#10'F1.FPC_COBTIPO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 26
    Top = 60
    object SqlCdsBaixaAutoFAT_REGISTRO: TIntegerField
      FieldName = 'FAT_REGISTRO'
      Required = True
    end
    object SqlCdsBaixaAutoBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object SqlCdsBaixaAutoFPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      Size = 2
    end
    object SqlCdsBaixaAutoWBAIXAR_LIMITE: TFMTBCDField
      FieldName = 'WBAIXAR_LIMITE'
      Precision = 15
    end
  end
end
