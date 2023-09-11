inherited frmControleNFIndustrializacao: TfrmControleNFIndustrializacao
  Caption = 'Controle N.F. Industrializa'#231#227'o'
  ClientHeight = 264
  ClientWidth = 793
  ExplicitWidth = 801
  ExplicitHeight = 291
  PixelsPerInch = 96
  TextHeight = 13
  object btYes: TBitBtn [0]
    Left = 448
    Top = 231
    Width = 75
    Height = 25
    Caption = '&Confirma'
    Kind = bkYes
    NumGlyphs = 2
    TabOrder = 1
  end
  object grdControleNFIndustrializacao: TDBGrid [1]
    Left = 0
    Top = 0
    Width = 793
    Height = 264
    Hint = 'Duplo clique para selecionar'
    Align = alClient
    DataSource = dsqAux
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = grdControleNFIndustrializacaoDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'NF_NOTANUMBER'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_RAZAO'
        Width = 236
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NF_SAIDA'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NF_HORASAIDA'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPE_NATUREZA'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_CODIGO'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NF_TOT_NOTA'
        Visible = True
      end>
  end
  inherited DBConn: TSQLConnection
    Params.Strings = (
      'DriverName=Firebird'
      'Database=C:\JOBDADOS\EXEMPLO\EXEMPLO.FDB'
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
  end
  inherited qAux: TSQLQuery
    SQL.Strings = (
      
        'SELECT nf.NF_NOTANUMBER, cl.CLI_RAZAO, nf.NF_SAIDA, nf.NF_HORASA' +
        'IDA, '
      '       nf.OPE_NATUREZA, nf.PED_CODIGO, nf.NF_TOT_NOTA '
      'FROM NF0001 nf '
      ' JOIN CLI0000 cl ON (cl.CLI_CODIGO  = nf.CLI_CODIGO) ')
  end
  object dspqAux: TDataSetProvider
    DataSet = qAux
    Left = 264
    Top = 72
  end
  object cdsqAux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspqAux'
    Left = 264
    Top = 128
    object cdsqAuxNF_NOTANUMBER: TStringField
      DisplayLabel = 'N'#186' da Nota Fiscal'
      FieldName = 'NF_NOTANUMBER'
      Required = True
      Size = 6
    end
    object cdsqAuxCLI_RAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social do Cliente'
      FieldName = 'CLI_RAZAO'
      Size = 70
    end
    object cdsqAuxNF_SAIDA: TDateField
      DisplayLabel = 'Data da Sa'#237'da'
      FieldName = 'NF_SAIDA'
    end
    object cdsqAuxNF_HORASAIDA: TTimeField
      DisplayLabel = 'Hora da Sa'#237'da'
      FieldName = 'NF_HORASAIDA'
    end
    object cdsqAuxOPE_NATUREZA: TStringField
      DisplayLabel = 'Natureza da Opera'#231#227'o'
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object cdsqAuxPED_CODIGO: TStringField
      DisplayLabel = 'N'#186' Pedido'
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object cdsqAuxNF_TOT_NOTA: TFMTBCDField
      DisplayLabel = 'Valor Total da Nota'
      FieldName = 'NF_TOT_NOTA'
      Precision = 18
      Size = 5
    end
  end
  object dsqAux: TDataSource
    DataSet = cdsqAux
    Left = 264
    Top = 184
  end
end
