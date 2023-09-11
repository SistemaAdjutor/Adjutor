object FormPedDetalhes: TFormPedDetalhes
  Left = 146
  Top = 160
  BorderIcons = [biSystemMenu]
  Caption = 'Pedido : detalhes da consulta'
  ClientHeight = 240
  ClientWidth = 568
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label11: TLabel
    Left = 316
    Top = 105
    Width = 164
    Height = 13
    Caption = 'Data Limite p/  Atendimento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 5
    Top = 55
    Width = 95
    Height = 13
    Caption = 'Valor do Pedido:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 5
    Top = 81
    Width = 88
    Height = 13
    Caption = 'Valor Faturado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 5
    Top = 105
    Width = 90
    Height = 13
    Caption = 'NF'#39's Faturadas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 5
    Top = 8
    Width = 44
    Height = 13
    Caption = 'Pedido:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 5
    Top = 32
    Width = 44
    Height = 13
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 494
    Top = 2
    Width = 75
    Height = 22
    Caption = '<Esc> Sair'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object Label3: TLabel
    Left = 403
    Top = 32
    Width = 36
    Height = 13
    Caption = 'CNPJ:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBePed_codigo: TDBEdit
    Tag = 1
    Left = 100
    Top = 4
    Width = 58
    Height = 21
    Color = 14079702
    DataField = 'PED_CODIGO'
    DataSource = DsPed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object DBDPed_Dtlim_Atd: TDBDateEdit
    Tag = 10
    Left = 482
    Top = 102
    Width = 90
    Height = 21
    DataField = 'PED_DTLIM_ATD'
    DataSource = DsPed
    ReadOnly = True
    Color = 14145495
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    GlyphKind = gkEllipsis
    NumGlyphs = 1
    ParentFont = False
    TabOrder = 5
  end
  object DbePED_VLTOTAL: TDBEdit
    Tag = 9
    Left = 100
    Top = 52
    Width = 130
    Height = 21
    Color = 14145495
    DataField = 'PED_VLTOTAL'
    DataSource = DsPed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 13
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object DbePED_VLFATURADO: TDBEdit
    Tag = 13
    Left = 100
    Top = 77
    Width = 130
    Height = 21
    Color = 14145495
    DataField = 'PED_VLFATURADO'
    DataSource = DsPed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 13
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object DbePED_FATURAS: TDBEdit
    Tag = 14
    Left = 100
    Top = 101
    Width = 190
    Height = 21
    Color = 14145495
    DataField = 'PED_FATURAS'
    DataSource = DsPed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object Panel1: TPanel
    Left = 1
    Top = 127
    Width = 573
    Height = 122
    BevelInner = bvLowered
    BevelWidth = 2
    Color = clSilver
    TabOrder = 7
    object Label16: TLabel
      Left = 9
      Top = 11
      Width = 73
      Height = 13
      Caption = 'Obs na N.F.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 9
      Top = 44
      Width = 88
      Height = 13
      Caption = 'Obs do Pedido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DbePED_OBSNOTA: TDBEdit
      Tag = 28
      Left = 84
      Top = 8
      Width = 483
      Height = 21
      Color = 14145495
      DataField = 'PED_OBSNOTA'
      DataSource = DsPed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBMemo1: TDBMemo
      Left = 7
      Top = 58
      Width = 560
      Height = 57
      Color = 14079702
      DataField = 'PED_OBSGERAL'
      DataSource = DsPed
      ReadOnly = True
      TabOrder = 1
    end
  end
  object DBEdit1: TDBEdit
    Tag = 1
    Left = 100
    Top = 28
    Width = 299
    Height = 21
    Color = 14079702
    DataField = 'CLI_RAZAO'
    DataSource = DsPed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object DbeCGC: TDBEdit
    Tag = 9
    Left = 443
    Top = 28
    Width = 126
    Height = 21
    Color = 14079702
    DataField = 'CLI_CGC'
    DataSource = DsPed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 13
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object CdsPed: TSqlClientDataSet
    Active = True
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select PED_CODIGO, PED_OBSNOTA, PED_VLTOTAL_BRUTO,PED_VLFATURADO' +
      ',PED_DTLIM_ATD , CLI_RAZAO, CLI_CGC,PED_OBSGERAL'#13#10'from PED0000 ,' +
      'CLI0000 WHERE PED0000.CLI_CODIGO = CLI0000.CLI_CODIGO'
    DataSet.MaxBlobSize = 1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select PED_CODIGO, PED_OBSNOTA, PED_VLTOTAL_BRUTO,PED_VLFATURADO' +
      ',PED_DTLIM_ATD , CLI_RAZAO, CLI_CGC,PED_OBSGERAL'#13#10'from PED0000 ,' +
      'CLI0000 WHERE PED0000.CLI_CODIGO = CLI0000.CLI_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 168
    object CdsPedPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object CdsPedPED_OBSNOTA: TStringField
      FieldName = 'PED_OBSNOTA'
      Size = 60
    end
    object CdsPedPED_VLFATURADO: TFMTBCDField
      FieldName = 'PED_VLFATURADO'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
      Precision = 15
    end
    object CdsPedPED_DTLIM_ATD: TSQLTimeStampField
      FieldName = 'PED_DTLIM_ATD'
    end
    object CdsPedCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 49
    end
    object CdsPedCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object CdsPedPED_OBSGERAL: TMemoField
      FieldName = 'PED_OBSGERAL'
      BlobType = ftMemo
      Size = 1
    end
  end
  object DsPed: TDataSource
    DataSet = CdsPed
    Left = 224
  end
end
