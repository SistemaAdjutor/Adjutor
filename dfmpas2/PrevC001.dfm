inherited FormPrevConsumo: TFormPrevConsumo
  Left = 416
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Simula'#231#227'o de consumo para produ'#231#227'o e compras'
  ClientHeight = 530
  ClientWidth = 777
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  Position = poDesktopCenter
  Visible = True
  OnCloseQuery = FormCloseQuery
  ExplicitTop = -246
  ExplicitWidth = 783
  ExplicitHeight = 558
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel [0]
    Left = 0
    Top = 373
    Width = 767
    Height = 149
    TabOrder = 0
    object Panel4: TPanel
      Left = 6
      Top = 107
      Width = 570
      Height = 38
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Caption = 'Panel3'
      Color = 10841658
      TabOrder = 0
      object BitIncluir: TSpeedButton
        Left = 10
        Top = 6
        Width = 110
        Height = 25
        Cursor = crHandPoint
        Caption = '&Incluir Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          E6000000424DE60000000000000076000000280000000E0000000E0000000100
          0400000000007000000000000000000000001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3300333333333333330033333333333333003333300033333300333330F03333
          3300333330F033333300330000F000033300330FFFFFFF033300330000F00003
          3300333330F033333300333330F0333333003333300033333300333333333333
          33003333333333333300}
        ParentFont = False
        OnClick = BitIncluirClick
      end
      object BitExcluir: TSpeedButton
        Left = 120
        Top = 6
        Width = 110
        Height = 25
        Cursor = crHandPoint
        Caption = 'E&xcluir Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          E6000000424DE60000000000000076000000280000000E0000000E0000000100
          0400000000007000000000000000000000001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3300333333333333330033333333333333003333333333333300333333333333
          330033333333333333003300000000003300330FFFFFFFF03300330000000000
          3300333333333333330033333333333333003333333333333300333333333333
          33003333333333333300}
        ParentFont = False
        OnClick = BitExcluirClick
      end
      object Bit_Sair: TBitBtn
        Left = 450
        Top = 6
        Width = 110
        Height = 25
        Cursor = crHandPoint
        Caption = '&Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000C40E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333330
          0000333333333333777711111111000BB030377777777777337F1EEEEEEE0BBB
          B030373333333733337F1EEEEEEE0BBBB03037F333333733337F1EEEEEEE0BBB
          B03037F333333733337F1EEEEEEE0BBBB03037F333333733337F1EEEEEEE0BBB
          B03037F3333337F3337F1EEEEEEE0BBB003037F3333337F3377F1EEEEEEE0BBB
          B03037F3333337F3337F1EEEEEEE0BBBB03037F3333337F3337F1EEEEEEE0BBB
          B03037F3333337F3337F1EEEEEEE0BBBB03037F3333337F3337F1EEEEEEE0BBB
          B03037FFFFFF37FF337F11111111000BB030377777777777337F333333333330
          0000333333333333777733333333333333333333333333333333}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 2
        TabStop = False
        OnClick = Bit_SairClick
      end
      object BitGravar: TBitBtn
        Left = 230
        Top = 6
        Width = 110
        Height = 25
        Cursor = crHandPoint
        Hint = '|Grava registro...'
        Caption = '&Gravar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000CE0E0000D80E00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555555555555555555555555555555555555555FF55555555555550055555
          55555555577FF5555555555500005555555555557777F5555555555500005555
          555555557777FF5555555550000005555555555777777F555555550000000555
          5555557777777FF5555557000500005555555777757777F55555700555500055
          55557775555777FF5555555555500005555555555557777F5555555555550005
          555555555555777FF5555555555550005555555555555777FF55555555555570
          05555555555555777FF5555555555557005555555555555777FF555555555555
          5000555555555555577755555555555555555555555555555555}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabStop = False
        OnClick = BitGravarClick
      end
      object BitCancelar: TBitBtn
        Left = 340
        Top = 6
        Width = 110
        Height = 25
        Cursor = crHandPoint
        Hint = '|Cancela registro atual...'
        Caption = '&Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          04000000000068010000CE0E0000D80E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033333333333333333333333F333333333333
          0000333333333333333333333388F333333F3333000033300333333300033333
          38F38F333F88F33300003330003333300033333338F338F3F8338F3300003333
          000333000333333338F3338F833338F3000033333000300033333333338F3338
          3333F8330000333333000003333333333338F333333F83330000333333300033
          3333333333338F3333383333000033333300000333333333333338F333833333
          00003333300030003333333333333833338F3333000033330003330003333333
          33338333338F333300003330003333300033333333383338F338F33300003330
          0333333300033333338333838F338F3300003333333333333003333333833833
          38F338F300003333333333333333333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TabStop = False
        OnClick = BitCancelarClick
      end
    end
    object BitLimpar: TBitBtn
      Left = 587
      Top = 61
      Width = 160
      Height = 29
      Cursor = crHandPoint
      Hint = 'Item agregado ao produto'
      Caption = '&Limpar Simula'#231#227'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = BitLimparClick
    end
    object BitPrevisao: TBitBtn
      Left = 587
      Top = 24
      Width = 160
      Height = 29
      Cursor = crHandPoint
      Hint = 'Item agregado ao produto'
      Caption = '&Gerar Simula'#231#227'o'
      Glyph.Data = {
        96010000424D9601000000000000760000002800000018000000180000000100
        0400000000002001000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333338888888888888833333333000000000000000883333330BB
        BBBBBBBBBBBBB083333330B0000000000000B083333330B0F9FFFFFFFFF0B083
        333330B04444444444F0B033333330B0F9FFFFFFFFF0B393333330B0F9FFFFFF
        FFF0B399333330B044444444FFFFF399933330B0F9FFFFFFF9999999993330B0
        F9FFFFFFF9999999999330B044444444F9999999993330B0F9FFFFFFFFFFF399
        933330B0F9FFFFFFFFF0B399333330B04444444444F0B393333330B0F9FFFFFF
        FFF0B033333330B0F9FFFFFFFFF0B083333330B0F90000000FF0B083333330B0
        0007F7770000B083333330BBBBB07F70BBBBB033333333000000070000000333
        333333333330F770333333333333333333300000333333333333}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = BitPrevisaoClick
    end
    object GroupBox1: TGroupBox
      Left = 7
      Top = 4
      Width = 569
      Height = 96
      Caption = 'Digitar produtos para simular'
      TabOrder = 3
      object Label1: TLabel
        Left = 19
        Top = 32
        Width = 56
        Height = 14
        Caption = 'Refer'#234'ncia:'
      end
      object BtProduto: TSpeedButton
        Left = 202
        Top = 28
        Width = 22
        Height = 22
        Hint = 'Buscar produto'
        Enabled = False
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
          DDDDDDDDDDDDDDDDDDDDDDD7DDDDDDDDDDDDDD777DDDDDDDDDDDDDB377DDDDDD
          DDDDDDDB377DDDDDDDDDDDDDB37D777DDDDDDDDDDB778FF77DDDDDDDDD8FFFFF
          77DDDDDDDD8FFFFFF7DDDDDDDDF8FFFFF7DDDDDDDDFF8FFFF7DDDDDDDD8FFF8F
          8DDDDDDDDDD8FFF8DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD}
        ParentShowHint = False
        ShowHint = True
        OnClick = BtProdutoClick
      end
      object Label3: TLabel
        Left = 374
        Top = 33
        Width = 61
        Height = 14
        Caption = 'Quantidade :'
      end
      object Label2: TLabel
        Left = 34
        Top = 63
        Width = 40
        Height = 14
        Caption = 'Produto:'
      end
      object EdtRefer: TEdit
        Left = 76
        Top = 28
        Width = 125
        Height = 22
        CharCase = ecUpperCase
        MaxLength = 11
        TabOrder = 0
        OnExit = EdtReferExit
      end
      object CurrVar1: TCurrencyEdit
        Left = 438
        Top = 28
        Width = 114
        Height = 22
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = ',0;-,0'
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        TabOrder = 1
        ZeroEmpty = False
      end
      object EdtProduto: TEdit
        Left = 76
        Top = 56
        Width = 476
        Height = 22
        TabStop = False
        Color = 14145495
        TabOrder = 2
      end
    end
  end
  object DBGridSimula: TDBGrid [1]
    Left = 8
    Top = 8
    Width = 760
    Height = 363
    Color = clWhite
    DataSource = DsConsumo
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PRD_REFER'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_DESCRI'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o do produto'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 494
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PSV_QUANT1'
        Title.Alignment = taCenter
        Title.Caption = 'QTDE'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 102
        Visible = True
      end>
  end
  inherited coCalcula: TACBrCalculadora
    Top = 48
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 144
    Top = 40
  end
  inherited qAux: TSQLQuery
    Left = 274
    Top = 53
  end
  inherited qAux2: TSQLQuery
    Left = 338
    Top = 60
  end
  inherited qAux3: TSQLQuery
    Left = 386
    Top = 60
  end
  object SqlCdsBuscaFicha: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'F1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_PCUSTO,'#13#10'P1.PRD_UN' +
      'D,'#13#10'P2.PTI_SIGLA,'#13#10'P1.PRD_DCVAR1,'#13#10'P1.PRD_DCVAR2,'#13#10'P1.PRD_DCVAR3' +
      ','#13#10'P1.PRD_DCVAR4,'#13#10'P1.PRD_DCVAR5,'#13#10'P1.PRD_DCVAR6,'#13#10'P1.PRD_DCVAR7' +
      ','#13#10'P1.PRD_DCVAR8'#13#10'from ftc0000 F1'#13#10'JOIN prd0000 P1 ON F1.PRD_REF' +
      'ER = P1.PRD_REFER'#13#10'JOIN PRD_TIPO P2 ON (P1.pti_codigo = P2.pti_c' +
      'odigo)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select'#13#10'F1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_PCUSTO,'#13#10'P1.PRD_UN' +
      'D,'#13#10'P2.PTI_SIGLA,'#13#10'P1.PRD_DCVAR1,'#13#10'P1.PRD_DCVAR2,'#13#10'P1.PRD_DCVAR3' +
      ','#13#10'P1.PRD_DCVAR4,'#13#10'P1.PRD_DCVAR5,'#13#10'P1.PRD_DCVAR6,'#13#10'P1.PRD_DCVAR7' +
      ','#13#10'P1.PRD_DCVAR8'#13#10'from ftc0000 F1'#13#10'JOIN prd0000 P1 ON F1.PRD_REF' +
      'ER = P1.PRD_REFER'#13#10'JOIN PRD_TIPO P2 ON (P1.pti_codigo = P2.pti_c' +
      'odigo)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 265
    Top = 307
    object SqlCdsBuscaFichaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Required = True
      Size = 11
    end
    object SqlCdsBuscaFichaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsBuscaFichaPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
    end
    object SqlCdsBuscaFichaPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsBuscaFichaPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object SqlCdsBuscaFichaPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object SqlCdsBuscaFichaPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object SqlCdsBuscaFichaPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object SqlCdsBuscaFichaPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object SqlCdsBuscaFichaPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object SqlCdsBuscaFichaPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object SqlCdsBuscaFichaPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
    object SqlCdsBuscaFichaPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
  end
  object SqlCdsItensFicha: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'I1.PRD_REFER,'#13#10'I1.PRD_REFER_ITENS,'#13#10'P1.PRD_DESCRI,'#13#10'P1.P' +
      'RD_PCUSTO,'#13#10'P1.PRD_ESTOQUE,'#13#10'P1.PRD_ENTRADA,'#13#10'P1.PRD_SAIDA,'#13#10'P1.' +
      'PRD_PENDENTE,'#13#10'P1.PRD_UND,'#13#10'P2.PTI_SIGLA,'#13#10'I1.FTI_MODE1,'#13#10'I1.FTI' +
      '_MODE2,'#13#10'I1.FTI_MODE3,'#13#10'I1.FTI_MODE4,'#13#10'I1.FTI_MODE5,'#13#10'I1.FTI_MOD' +
      'E6,'#13#10'I1.FTI_MODE7,'#13#10'I1.FTI_MODE8,'#13#10'I1.FTI_UC'#13#10'from FTC_IT01 I1'#13#10 +
      'JOIN PRD0000 P1 ON (I1.prd_refer_itens = P1.PRD_REFER)'#13#10'JOIN PRD' +
      '_TIPO P2 ON (P1.pti_codigo = P2.pti_codigo)'#13#10'order by I1.PRD_REF' +
      'ER,I1.prd_refer_itens'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select'#13#10'I1.PRD_REFER,'#13#10'I1.PRD_REFER_ITENS,'#13#10'P1.PRD_DESCRI,'#13#10'P1.P' +
      'RD_PCUSTO,'#13#10'P1.PRD_ESTOQUE,'#13#10'P1.PRD_ENTRADA,'#13#10'P1.PRD_SAIDA,'#13#10'P1.' +
      'PRD_PENDENTE,'#13#10'P1.PRD_UND,'#13#10'P2.PTI_SIGLA,'#13#10'I1.FTI_MODE1,'#13#10'I1.FTI' +
      '_MODE2,'#13#10'I1.FTI_MODE3,'#13#10'I1.FTI_MODE4,'#13#10'I1.FTI_MODE5,'#13#10'I1.FTI_MOD' +
      'E6,'#13#10'I1.FTI_MODE7,'#13#10'I1.FTI_MODE8,'#13#10'I1.FTI_UC'#13#10'from FTC_IT01 I1'#13#10 +
      'JOIN PRD0000 P1 ON (I1.prd_refer_itens = P1.PRD_REFER)'#13#10'JOIN PRD' +
      '_TIPO P2 ON (P1.pti_codigo = P2.pti_codigo)'#13#10'order by I1.PRD_REF' +
      'ER,I1.prd_refer_itens'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 297
    Top = 307
    object SqlCdsItensFichaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItensFichaPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsItensFichaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsItensFichaPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
    end
    object SqlCdsItensFichaPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      Precision = 15
    end
    object SqlCdsItensFichaPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      Precision = 15
    end
    object SqlCdsItensFichaPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      Precision = 15
    end
    object SqlCdsItensFichaPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      Precision = 15
    end
    object SqlCdsItensFichaPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsItensFichaPRD_GRADE: TStringField
      FieldName = 'PRD_GRADE'
      Size = 1
    end
    object SqlCdsItensFichaFTI_UC: TFMTBCDField
      FieldName = 'FTI_UC'
      Precision = 15
    end
    object SqlCdsItensFichaFTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE2: TStringField
      FieldName = 'FTI_MODE2'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE3: TStringField
      FieldName = 'FTI_MODE3'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE4: TStringField
      FieldName = 'FTI_MODE4'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE5: TStringField
      FieldName = 'FTI_MODE5'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE6: TStringField
      FieldName = 'FTI_MODE6'
      Size = 1
    end
    object SqlCdsItensFichaFTI_MODE7: TStringField
      FieldName = 'FTI_MODE7'
      Size = 12
    end
    object SqlCdsItensFichaFTI_MODE8: TStringField
      FieldName = 'FTI_MODE8'
      Size = 12
    end
    object SqlCdsItensFichaPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
  end
  object SqlCdsConsumo: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT T2.*,P1.PRD_ESTOQUE,P1.PRD_ENTRADA,P1.PRD_SAIDA,P1.PRD_PE' +
      'NDENTE,P1.PRD_RESERVA FROM PSV0000 T2 LEFT JOIN PRD0000 P1 ON (T' +
      '2.PRD_REFER = P1.PRD_REFER) LEFT JOIN PRD_TIPO P2 ON (P1.PTI_COD' +
      'IGO = P2.PTI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    BeforeOpen = SqlCdsConsumoBeforeOpen
    AfterScroll = SqlCdsConsumoAfterScroll
    CommandText = 
      'SELECT T2.*,P1.PRD_ESTOQUE,P1.PRD_ENTRADA,P1.PRD_SAIDA,P1.PRD_PE' +
      'NDENTE,P1.PRD_RESERVA FROM PSV0000 T2 LEFT JOIN PRD0000 P1 ON (T' +
      '2.PRD_REFER = P1.PRD_REFER) LEFT JOIN PRD_TIPO P2 ON (P1.PTI_COD' +
      'IGO = P2.PTI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 232
    Top = 96
    object SqlCdsConsumoPSV_REGISTRO: TIntegerField
      FieldName = 'PSV_REGISTRO'
      Required = True
    end
    object SqlCdsConsumoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsConsumoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsConsumoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 40
    end
    object SqlCdsConsumoPSV_QUANT1: TFMTBCDField
      FieldName = 'PSV_QUANT1'
      Precision = 15
    end
    object SqlCdsConsumoPSV_QUANT2: TFMTBCDField
      FieldName = 'PSV_QUANT2'
      Precision = 15
    end
    object SqlCdsConsumoPSV_QUANT3: TFMTBCDField
      FieldName = 'PSV_QUANT3'
      Precision = 15
    end
    object SqlCdsConsumoPSV_QUANT4: TFMTBCDField
      FieldName = 'PSV_QUANT4'
      Precision = 15
    end
    object SqlCdsConsumoPSV_QUANT5: TFMTBCDField
      FieldName = 'PSV_QUANT5'
      Precision = 15
    end
    object SqlCdsConsumoPSV_QUANT6: TFMTBCDField
      FieldName = 'PSV_QUANT6'
      Precision = 15
    end
    object SqlCdsConsumoPSV_QUANT7: TFMTBCDField
      FieldName = 'PSV_QUANT7'
      Precision = 15
    end
    object SqlCdsConsumoPSV_QUANT8: TFMTBCDField
      FieldName = 'PSV_QUANT8'
      Precision = 15
    end
    object SqlCdsConsumoPSV_MODE1: TStringField
      FieldName = 'PSV_MODE1'
      Size = 12
    end
    object SqlCdsConsumoPSV_MODE2: TStringField
      FieldName = 'PSV_MODE2'
      Size = 12
    end
    object SqlCdsConsumoPSV_MODE3: TStringField
      FieldName = 'PSV_MODE3'
      Size = 12
    end
    object SqlCdsConsumoPSV_MODE4: TStringField
      FieldName = 'PSV_MODE4'
      Size = 12
    end
    object SqlCdsConsumoPSV_MODE5: TStringField
      FieldName = 'PSV_MODE5'
      Size = 12
    end
    object SqlCdsConsumoPSV_MODE6: TStringField
      FieldName = 'PSV_MODE6'
      Size = 12
    end
    object SqlCdsConsumoPSV_MODE7: TStringField
      FieldName = 'PSV_MODE7'
      Size = 12
    end
    object SqlCdsConsumoPSV_MODE8: TStringField
      FieldName = 'PSV_MODE8'
      Size = 12
    end
    object SqlCdsConsumoPSV_QUALMOD: TStringField
      FieldName = 'PSV_QUALMOD'
      Size = 1
    end
    object SqlCdsConsumoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsConsumoPSV_FLAG: TStringField
      FieldName = 'PSV_FLAG'
      Size = 1
    end
    object SqlCdsConsumoPSV_CUSTO: TFMTBCDField
      FieldName = 'PSV_CUSTO'
      Precision = 15
    end
    object SqlCdsConsumoPSV_ESTFISICO: TFMTBCDField
      FieldName = 'PSV_ESTFISICO'
      Precision = 15
    end
    object SqlCdsConsumoPSV_ESTANTEC: TFMTBCDField
      FieldName = 'PSV_ESTANTEC'
      Precision = 15
    end
    object SqlCdsConsumoPSV_UND: TStringField
      FieldName = 'PSV_UND'
      Size = 3
    end
    object SqlCdsConsumoPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object SqlCdsConsumoPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      Precision = 15
    end
    object SqlCdsConsumoPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      Precision = 15
    end
    object SqlCdsConsumoPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      Precision = 15
    end
    object SqlCdsConsumoPRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      Precision = 15
    end
    object SqlCdsConsumoPRD_RESERVA: TFMTBCDField
      FieldName = 'PRD_RESERVA'
      Precision = 15
    end
    object SqlCdsConsumoPSV_REQ_COMPRA: TStringField
      FieldName = 'PSV_REQ_COMPRA'
      Size = 1
    end
  end
  object DsConsumo: TDataSource
    DataSet = SqlCdsConsumo
    Left = 357
    Top = 96
  end
  object SqlCdsItensGrade: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'I1.PRD_REFER,'#13#10'I1.PRD_REFER_ITENS,'#13#10'P1.PRD_DESCRI,'#13#10'P1.P' +
      'RD_PCUSTO,'#13#10'P1.PRD_ESTOQUE,'#13#10'P1.PRD_ENTRADA,'#13#10'P1.PRD_SAIDA,'#13#10'P1.' +
      'PRD_PENDENTE,'#13#10'P1.PRD_UND,'#13#10'P2.PTI_SIGLA,'#13#10'I1.FTI_MODE1,'#13#10'I1.FTI' +
      '_MODE2,'#13#10'I1.FTI_MODE3,'#13#10'I1.FTI_MODE4,'#13#10'I1.FTI_MODE5,'#13#10'I1.FTI_MOD' +
      'E6,'#13#10'I1.FTI_MODE7,'#13#10'I1.FTI_MODE8,'#13#10'I1.FTI_UC'#13#10'from FTC_IT01 I1'#13#10 +
      'JOIN PRD0000 P1 ON (I1.prd_refer_itens = P1.PRD_REFER)'#13#10'JOIN PRD' +
      '_TIPO P2 ON (P1.pti_codigo = P2.pti_codigo)'#13#10'order by I1.PRD_REF' +
      'ER,I1.prd_refer_itens'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select'#13#10'I1.PRD_REFER,'#13#10'I1.PRD_REFER_ITENS,'#13#10'P1.PRD_DESCRI,'#13#10'P1.P' +
      'RD_PCUSTO,'#13#10'P1.PRD_ESTOQUE,'#13#10'P1.PRD_ENTRADA,'#13#10'P1.PRD_SAIDA,'#13#10'P1.' +
      'PRD_PENDENTE,'#13#10'P1.PRD_UND,'#13#10'P2.PTI_SIGLA,'#13#10'I1.FTI_MODE1,'#13#10'I1.FTI' +
      '_MODE2,'#13#10'I1.FTI_MODE3,'#13#10'I1.FTI_MODE4,'#13#10'I1.FTI_MODE5,'#13#10'I1.FTI_MOD' +
      'E6,'#13#10'I1.FTI_MODE7,'#13#10'I1.FTI_MODE8,'#13#10'I1.FTI_UC'#13#10'from FTC_IT01 I1'#13#10 +
      'JOIN PRD0000 P1 ON (I1.prd_refer_itens = P1.PRD_REFER)'#13#10'JOIN PRD' +
      '_TIPO P2 ON (P1.pti_codigo = P2.pti_codigo)'#13#10'order by I1.PRD_REF' +
      'ER,I1.prd_refer_itens'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 328
    Top = 308
    object SqlCdsItensGradePRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsItensGradePRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsItensGradePRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsItensGradePRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
    end
    object SqlCdsItensGradePRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      Precision = 15
    end
    object SqlCdsItensGradePRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      Precision = 15
    end
    object SqlCdsItensGradePRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      Precision = 15
    end
    object SqlCdsItensGradePRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      Precision = 15
    end
    object SqlCdsItensGradePRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsItensGradePRD_GRADE: TStringField
      FieldName = 'PRD_GRADE'
      Size = 1
    end
    object SqlCdsItensGradeFTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      Size = 1
    end
    object SqlCdsItensGradeFTI_MODE2: TStringField
      FieldName = 'FTI_MODE2'
      Size = 1
    end
    object SqlCdsItensGradeFTI_MODE3: TStringField
      FieldName = 'FTI_MODE3'
      Size = 1
    end
    object SqlCdsItensGradeFTI_MODE4: TStringField
      FieldName = 'FTI_MODE4'
      Size = 1
    end
    object SqlCdsItensGradeFTI_MODE5: TStringField
      FieldName = 'FTI_MODE5'
      Size = 1
    end
    object SqlCdsItensGradeFTI_MODE6: TStringField
      FieldName = 'FTI_MODE6'
      Size = 1
    end
    object SqlCdsItensGradeFTI_MODE7: TStringField
      FieldName = 'FTI_MODE7'
      Size = 12
    end
    object SqlCdsItensGradeFTI_MODE8: TStringField
      FieldName = 'FTI_MODE8'
      Size = 12
    end
    object SqlCdsItensGradeFTI_UC: TFMTBCDField
      FieldName = 'FTI_UC'
      Precision = 15
    end
    object SqlCdsItensGradePTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
  end
  object SqlCdsN1: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'I1.PRD_REFER,'#13#10'I1.PRD_REFER_ITENS,'#13#10'P1.PRD_DESCRI,'#13#10'P1.P' +
      'RD_PCUSTO,'#13#10'P1.PRD_ESTOQUE,'#13#10'P1.PRD_ENTRADA,'#13#10'P1.PRD_SAIDA,'#13#10'P1.' +
      'PRD_PENDENTE,'#13#10'P1.PRD_RESERVA,'#13#10'P1.PRD_UND,'#13#10'P2.PTI_SIGLA,'#13#10'I1.F' +
      'TI_MODE1,'#13#10'I1.FTI_MODE2,'#13#10'I1.FTI_MODE3,'#13#10'I1.FTI_MODE4,'#13#10'I1.FTI_M' +
      'ODE5,'#13#10'I1.FTI_MODE6,'#13#10'I1.FTI_MODE7,'#13#10'I1.FTI_MODE8,'#13#10'I1.FTI_UC '#13#10 +
      'FROM FTC_IT01 I1'#13#10'JOIN PRD0000 P1 ON (I1.PRD_REFER_ITENS = P1.PR' +
      'D_REFER)'#13#10'JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Filter = 'PTI_SIGLA = '#39'PA'#39'  AND PTI_SIGLA = '#39'PI'#39
    Params = <>
    CommandText = 
      'SELECT'#13#10'I1.PRD_REFER,'#13#10'I1.PRD_REFER_ITENS,'#13#10'P1.PRD_DESCRI,'#13#10'P1.P' +
      'RD_PCUSTO,'#13#10'P1.PRD_ESTOQUE,'#13#10'P1.PRD_ENTRADA,'#13#10'P1.PRD_SAIDA,'#13#10'P1.' +
      'PRD_PENDENTE,'#13#10'P1.PRD_RESERVA,'#13#10'P1.PRD_UND,'#13#10'P2.PTI_SIGLA,'#13#10'I1.F' +
      'TI_MODE1,'#13#10'I1.FTI_MODE2,'#13#10'I1.FTI_MODE3,'#13#10'I1.FTI_MODE4,'#13#10'I1.FTI_M' +
      'ODE5,'#13#10'I1.FTI_MODE6,'#13#10'I1.FTI_MODE7,'#13#10'I1.FTI_MODE8,'#13#10'I1.FTI_UC '#13#10 +
      'FROM FTC_IT01 I1'#13#10'JOIN PRD0000 P1 ON (I1.PRD_REFER_ITENS = P1.PR' +
      'D_REFER)'#13#10'JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 72
    Top = 96
    object SqlCdsN1PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsN1PRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsN1PRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsN1PRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      Precision = 15
    end
    object SqlCdsN1PRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      Precision = 15
    end
    object SqlCdsN1PRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      Precision = 15
    end
    object SqlCdsN1PRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      Precision = 15
    end
    object SqlCdsN1PRD_PENDENTE: TFMTBCDField
      FieldName = 'PRD_PENDENTE'
      Precision = 15
    end
    object SqlCdsN1PRD_RESERVA: TFMTBCDField
      FieldName = 'PRD_RESERVA'
      Precision = 15
    end
    object SqlCdsN1PRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsN1PTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object SqlCdsN1FTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      Size = 1
    end
    object SqlCdsN1FTI_MODE2: TStringField
      FieldName = 'FTI_MODE2'
      Size = 1
    end
    object SqlCdsN1FTI_MODE3: TStringField
      FieldName = 'FTI_MODE3'
      Size = 1
    end
    object SqlCdsN1FTI_MODE4: TStringField
      FieldName = 'FTI_MODE4'
      Size = 1
    end
    object SqlCdsN1FTI_MODE5: TStringField
      FieldName = 'FTI_MODE5'
      Size = 1
    end
    object SqlCdsN1FTI_MODE6: TStringField
      FieldName = 'FTI_MODE6'
      Size = 1
    end
    object SqlCdsN1FTI_MODE7: TStringField
      FieldName = 'FTI_MODE7'
      Size = 12
    end
    object SqlCdsN1FTI_MODE8: TStringField
      FieldName = 'FTI_MODE8'
      Size = 12
    end
    object SqlCdsN1FTI_UC: TFMTBCDField
      FieldName = 'FTI_UC'
      Precision = 15
    end
  end
end
