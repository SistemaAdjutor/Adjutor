object FormRecalculaPMedio: TFormRecalculaPMedio
  Left = 408
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Recalcula Pre'#231'o M'#233'dio dos Produtos'
  ClientHeight = 190
  ClientWidth = 345
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object LabCustoAtivo: TLabel
    Left = 0
    Top = 139
    Width = 72
    Height = 14
    Alignment = taCenter
    Caption = 'Tipo de c'#225'lculo'
  end
  object RadGroup: TRadioGroup
    Left = 0
    Top = 0
    Width = 345
    Height = 64
    Align = alTop
    Caption = 'Sele'#231#227'o'
    ItemIndex = 0
    Items.Strings = (
      'Tudo (todas as entradas registradas no sistema)'
      'Per'#237'odo definido (entradas a partir de determinada data)')
    TabOrder = 0
    OnClick = RadGroupClick
  end
  object PossBar: TProgressBar
    Left = 0
    Top = 116
    Width = 345
    Height = 20
    Align = alTop
    Max = 0
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
  end
  object Grp01: TGroupBox
    Left = 0
    Top = 64
    Width = 345
    Height = 52
    Align = alTop
    Caption = 'Per'#237'odo de datas para c'#225'lculo'
    Enabled = False
    TabOrder = 1
    object Label3: TLabel
      Left = 31
      Top = 25
      Width = 25
      Height = 14
      Caption = 'Data:'
    end
    object Label4: TLabel
      Left = 168
      Top = 25
      Width = 20
      Height = 14
      Caption = 'At'#233':'
    end
    object EditDataI: TJvDateEdit
      Left = 59
      Top = 21
      Width = 100
      Height = 22
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      ImageKind = ikCustom
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 0
      OnExit = EditDataIExit
    end
    object EditDataF: TJvDateEdit
      Left = 195
      Top = 21
      Width = 100
      Height = 22
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000F000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFFE00009CE600009CE60000FFFE0000}
      ImageKind = ikCustom
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 1
      OnExit = EditDataFExit
    end
  end
  object BitConfirmar: TBitBtn
    Left = 21
    Top = 163
    Width = 100
    Height = 25
    Caption = '&Confirmar'
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
    TabOrder = 3
    OnClick = BitConfirmarClick
  end
  object BitCancelar: TBitBtn
    Left = 236
    Top = 163
    Width = 100
    Height = 25
    Caption = '&Sair'
    Glyph.Data = {
      CA010000424DCA01000000000000760000002800000026000000110000000100
      0400000000005401000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888FFFFFFFFFFFFFFFFFFF008888888888880000078FFFFFFFFFFFFFFFFF
      FF00833333333000BB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
      FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
      00000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFF
      FFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBB
      B003008FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFF
      FF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
      FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
      00000BBBBB03078FFFFFFFFFFFFFFFFFFF00833333333000BB03078FFFFFFFFF
      FFFFFFFFFF008888888888880000088FFFFFFFFFFFFFFFFFFF00888888888888
      8888888FFFFFFFFFFFFFFFFFFF00}
    NumGlyphs = 2
    TabOrder = 4
    OnClick = BitCancelarClick
  end
  object SqlCdsMedia: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'    T1.prd_refer,'#13#10'    sum( T1.enf_qtde ) as enf_qtde,'#13#10 +
      '    sum( T1.enf_preco ) as enf_preco,'#13#10'    sum( (cast(T1.enf_qtd' +
      'e * T1.enf_preco AS numeric(18,4) )))  AS CUSTO,'#13#10'    (cast(sum(' +
      ' (cast(T1.enf_qtde * T1.enf_preco AS numeric(18,4) ))) / sum( T1' +
      '.enf_qtde ) AS numeric(18,4) ))  AS CUSTO_MEDIO,'#13#10'    (sum( (cas' +
      't(T1.enf_qtde * T1.enf_preco AS numeric(18,4) ))) - sum( (coales' +
      'ce(T1.enf_it_valfrete,0) + coalesce(T1.enf_it_vldesp_aces,0) + c' +
      'oalesce(T1.enf_it_vlseguro,0) + coalesce(T1.enf_it_vlipi,0) + co' +
      'alesce(T1.enf_it_vlsubtrib,0) ) ) )  AS CUSTO_SEM_IMPOSTOS,'#13#10'   ' +
      ' (sum( (cast(T1.enf_qtde * T1.enf_preco AS numeric(18,4) ))) + s' +
      'um( (coalesce(T1.enf_it_valfrete,0) + coalesce(T1.enf_it_vldesp_' +
      'aces,0) + coalesce(T1.enf_it_vlseguro,0) + coalesce(T1.enf_it_vl' +
      'ipi,0) + coalesce(T1.enf_it_vlsubtrib,0) ) ) )  AS CUSTO_agregad' +
      'o'#13#10#13#10'FROM'#13#10'enf_it01 T1'#13#10'join enf0001 T2 ON T2.enf_notanumber = T' +
      '1.enf_it_notanumber AND T2.for_codigo = T1.for_codigo AND T2.enf' +
      '_entrada between '#39'01.01.2013'#39' AND '#39'01.06.2013'#39#13#10'WHERE T1.enf_atu' +
      'aliza_preco = '#39'S'#39#13#10'group by T1.prd_refer'#13#10'ORDER BY T1.prd_refer'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'    T1.prd_refer,'#13#10'    sum( T1.enf_qtde ) as enf_qtde,'#13#10 +
      '    sum( T1.enf_preco ) as enf_preco,'#13#10'    sum( (cast(T1.enf_qtd' +
      'e * T1.enf_preco AS numeric(18,4) )))  AS CUSTO,'#13#10'    (cast(sum(' +
      ' (cast(T1.enf_qtde * T1.enf_preco AS numeric(18,4) ))) / sum( T1' +
      '.enf_qtde ) AS numeric(18,4) ))  AS CUSTO_MEDIO,'#13#10'    (sum( (cas' +
      't(T1.enf_qtde * T1.enf_preco AS numeric(18,4) ))) - sum( (coales' +
      'ce(T1.enf_it_valfrete,0) + coalesce(T1.enf_it_vldesp_aces,0) + c' +
      'oalesce(T1.enf_it_vlseguro,0) + coalesce(T1.enf_it_vlipi,0) + co' +
      'alesce(T1.enf_it_vlsubtrib,0) ) ) )  AS CUSTO_SEM_IMPOSTOS,'#13#10'   ' +
      ' (sum( (cast(T1.enf_qtde * T1.enf_preco AS numeric(18,4) ))) + s' +
      'um( (coalesce(T1.enf_it_valfrete,0) + coalesce(T1.enf_it_vldesp_' +
      'aces,0) + coalesce(T1.enf_it_vlseguro,0) + coalesce(T1.enf_it_vl' +
      'ipi,0) + coalesce(T1.enf_it_vlsubtrib,0) ) ) )  AS CUSTO_agregad' +
      'o'#13#10#13#10'FROM'#13#10'enf_it01 T1'#13#10'join enf0001 T2 ON T2.enf_notanumber = T' +
      '1.enf_it_notanumber AND T2.for_codigo = T1.for_codigo AND T2.enf' +
      '_entrada between '#39'01.01.2013'#39' AND '#39'01.06.2013'#39#13#10'WHERE T1.enf_atu' +
      'aliza_preco = '#39'S'#39#13#10'group by T1.prd_refer'#13#10'ORDER BY T1.prd_refer'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 456
    Top = 37
    object SqlCdsMediaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsMediaENF_QTDE: TFMTBCDField
      FieldName = 'ENF_QTDE'
      Precision = 15
      Size = 5
    end
    object SqlCdsMediaENF_PRECO: TFMTBCDField
      FieldName = 'ENF_PRECO'
      Precision = 15
      Size = 5
    end
    object SqlCdsMediaCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      Precision = 15
      Size = 4
    end
    object SqlCdsMediaCUSTO_MEDIO: TFMTBCDField
      FieldName = 'CUSTO_MEDIO'
      Precision = 15
      Size = 4
    end
    object SqlCdsMediaCUSTO_SEM_IMPOSTOS: TFMTBCDField
      FieldName = 'CUSTO_SEM_IMPOSTOS'
      Precision = 15
      Size = 5
    end
    object SqlCdsMediaCUSTO_AGREGADO: TFMTBCDField
      FieldName = 'CUSTO_AGREGADO'
      Precision = 15
      Size = 5
    end
  end
end
