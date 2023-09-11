object FormPedFatura: TFormPedFatura
  Left = 45
  Top = 111
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Duplicatas/Faturas'
  ClientHeight = 352
  ClientWidth = 677
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitSairFat: TBitBtn
    Left = 565
    Top = 322
    Width = 100
    Height = 25
    Caption = '&Voltar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BitSairFatClick
  end
  object DBGrid1: TDBGrid
    Left = 6
    Top = 6
    Width = 663
    Height = 311
    Color = 16776176
    DataSource = DsDupFat
    FixedColor = 12681984
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clAqua
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FPC_NUMER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'N'#186
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAT_CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Fatura'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPC_VLPARC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPC_VENCTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Vencto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPC_VLPAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Vl. Pago'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPC_PAGTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Pagto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPC_STATUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAN_APELIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Banco'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 130
        Visible = True
      end>
  end
  object SqlCdsDupFat: TSQLClientDataSet
    CommandText = 
      'select f1.fat_codigo,f1.fpc_numer,f1.fpc_vlparc,f1.fpc_vencto,f1' +
      '.fpc_vlPago,f1.fpc_pagto,fpc_status,b1.ban_apelido from fat_pc01' +
      ' f1'#13#10'left join ban0000 b1 on b1.ban_codigo = f1.ban_codigo'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = DataCadastros.SQLConnection1
    Left = 88
    Top = 272
    object SqlCdsDupFatFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object SqlCdsDupFatFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object SqlCdsDupFatFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 8
    end
    object SqlCdsDupFatFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
    end
    object SqlCdsDupFatFPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 8
    end
    object SqlCdsDupFatFPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
    end
    object SqlCdsDupFatFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object SqlCdsDupFatBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 14
    end
  end
  object DsDupFat: TDataSource
    DataSet = SqlCdsDupFat
    Left = 120
    Top = 272
  end
end
