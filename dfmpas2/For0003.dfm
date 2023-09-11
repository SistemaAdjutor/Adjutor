object FormForXProd: TFormForXProd
  Left = 589
  Top = 243
  BorderIcons = [biSystemMenu]
  Caption = 'Produtos do Fornecedor'
  ClientHeight = 488
  ClientWidth = 639
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object DBGrForXProd: TDBGrid
    Left = 0
    Top = 29
    Width = 634
    Height = 454
    Color = 16776176
    DataSource = DsQForXProd
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FOR_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'Forn.'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_REFER'
        Title.Alignment = taCenter
        Title.Caption = 'Cod.Produto'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_DESCRI'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 282
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_UND'
        Title.Alignment = taCenter
        Title.Caption = 'Und.'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_PCUSTO'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o Atual'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_DTPCUSTO'
        Title.Alignment = taCenter
        Title.Caption = 'Atualizado'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 69
        Visible = True
      end>
  end
  object BitDesvincular: TBitBtn
    Left = 432
    Top = 0
    Width = 100
    Height = 25
    Caption = 'Tirar Vinculo'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    OnClick = BitDesvincularClick
  end
  object BitSair: TBitBtn
    Left = 536
    Top = 0
    Width = 100
    Height = 25
    Caption = '&Sair'
    TabOrder = 2
    OnClick = BitSairClick
  end
  object DsQForXProd: TDataSource
    DataSet = CdsForXProd
    Left = 253
    Top = 106
  end
  object CdsForXProd: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'    t1.FOR_CODIGO, t1.prdc_referencia, p1.PRD_DESCRI,  p' +
      '1.PRD_UND, p1.PRD_PCUSTO, p1.PRD_DTPCUSTO'#13#10'FROM prd0000_codigo t' +
      '1'#13#10'JOIN PRD0000 p1 ON  (p1.prd_codigo = t1.prd_codigo)'#13#10'ORDER BY' +
      ' p1.PRD_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'    t1.FOR_CODIGO, t1.prdc_referencia, p1.PRD_DESCRI,  p' +
      '1.PRD_UND, p1.PRD_PCUSTO, p1.PRD_DTPCUSTO'#13#10'FROM prd0000_codigo t' +
      '1'#13#10'JOIN PRD0000 p1 ON  (p1.prd_codigo = t1.prd_codigo)'#13#10'ORDER BY' +
      ' p1.PRD_DESCRI'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 223
    Top = 106
    object CdsForXProdFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 8
    end
    object CdsForXProdPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 15
    end
    object CdsForXProdPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 44
    end
    object CdsForXProdPRD_UND: TStringField
      Alignment = taCenter
      FieldName = 'PRD_UND'
      Size = 7
    end
    object CdsForXProdPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
    end
    object CdsForXProdPRD_DTPCUSTO: TSQLTimeStampField
      FieldName = 'PRD_DTPCUSTO'
    end
  end
end
