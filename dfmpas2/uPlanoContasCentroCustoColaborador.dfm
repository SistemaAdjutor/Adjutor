object FrmPlanoContasCentroCustoColaborador: TFrmPlanoContasCentroCustoColaborador
  Left = 564
  Top = 117
  Caption = 'Rateio de Colaboradores por Centro de Custo'
  ClientHeight = 585
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object grpPerfil: TGroupBox
    Left = 0
    Top = 0
    Width = 582
    Height = 57
    Align = alTop
    Caption = 'Perfil'
    Enabled = False
    TabOrder = 0
    object Label3: TLabel
      Left = 42
      Top = 27
      Width = 27
      Height = 14
      Caption = 'In'#237'cio:'
    end
    object Label4: TLabel
      Left = 188
      Top = 27
      Width = 41
      Height = 14
      Caption = 'T'#233'rmino:'
    end
    object RxDataInicial: TDateEdit
      Left = 72
      Top = 24
      Width = 89
      Height = 22
      Color = 14145495
      NumGlyphs = 2
      TabOrder = 0
      Text = '01/02/2000'
    end
    object RxDataFinal: TDateEdit
      Left = 232
      Top = 24
      Width = 89
      Height = 22
      Color = 14145495
      NumGlyphs = 2
      TabOrder = 1
      Text = '01/02/2000'
    end
  end
  object grpTotal: TGroupBox
    Left = 0
    Top = 130
    Width = 582
    Height = 56
    Align = alTop
    Caption = 'Total de Colaboradores'
    TabOrder = 1
    object CurTotalColaborador: TCurrencyEdit
      Left = 8
      Top = 24
      Width = 121
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 186
    Width = 582
    Height = 360
    Align = alTop
    Caption = 'Centro de Custos e Rateio de Colaboradores'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 16
      Width = 578
      Height = 342
      Align = alClient
      Color = 16776176
      DataSource = dsIndices
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Nivel'
          Title.Alignment = taCenter
          Title.Caption = 'N'#237'vel'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CentroCusto'
          Title.Alignment = taCenter
          Title.Caption = 'Centro de Custo'
          Width = 399
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Title.Alignment = taCenter
          Width = 68
          Visible = True
        end>
    end
  end
  object Bit_Gravar: TBitBtn
    Left = 375
    Top = 550
    Width = 100
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
    TabOrder = 3
    OnClick = Bit_GravarClick
  end
  object Bit_Cancelar: TBitBtn
    Left = 477
    Top = 550
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Hint = '|Cancela registro atual...'
    Cancel = True
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
    TabOrder = 4
    OnClick = Bit_CancelarClick
  end
  object grpConta: TGroupBox
    Left = 0
    Top = 57
    Width = 582
    Height = 73
    Align = alTop
    Caption = 'Conta Financeira'
    Enabled = False
    TabOrder = 5
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 23
      Height = 14
      Caption = 'N'#237'vel'
    end
    object Label2: TLabel
      Left = 168
      Top = 24
      Width = 49
      Height = 14
      Caption = 'Descri'#231#227'o'
    end
    object Label5: TLabel
      Left = 520
      Top = 24
      Width = 45
      Height = 14
      Caption = 'Reduzido'
    end
    object edtConta: TEdit
      Left = 8
      Top = 40
      Width = 153
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 0
      Text = 'edtConta'
    end
    object edtDescricao: TEdit
      Left = 168
      Top = 40
      Width = 345
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 1
      Text = 'edtConta'
    end
    object edtReduzido: TEdit
      Left = 520
      Top = 40
      Width = 57
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 2
      Text = 'edtConta'
    end
  end
  object CdsIndices: TClientDataSet
    PersistDataPacket.Data = {
      A60000009619E0BD010000001800000006000000000003000000A600054E6976
      656C0100490000000100055749445448020002000F000B43656E74726F437573
      746F010049000000010005574944544802000200280008526564757A69646F01
      0049000000010005574944544802000200030006496E64696365080004000000
      00000A496E646963655265616C08000400000000000A5175616E746964616465
      08000400000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Nivel'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CentroCusto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Reduzido'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Indice'
        DataType = ftFloat
      end
      item
        Name = 'IndiceReal'
        DataType = ftFloat
      end
      item
        Name = 'Quantidade'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'Nivel'
    Params = <>
    StoreDefs = True
    Left = 32
    Top = 281
    object CdsIndicesNivel: TStringField
      FieldName = 'Nivel'
      Size = 15
    end
    object CdsIndicesCentroCusto: TStringField
      FieldName = 'CentroCusto'
      Size = 40
    end
    object CdsIndicesReduzido: TStringField
      FieldName = 'Reduzido'
      Size = 3
    end
    object CdsIndicesIndice: TFloatField
      FieldName = 'Indice'
      DisplayFormat = '##0.00%'
      currency = True
    end
    object CdsIndicesIndiceReal: TFloatField
      FieldName = 'IndiceReal'
    end
    object CdsIndicesQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
  end
  object dsIndices: TDataSource
    DataSet = CdsIndices
    Left = 80
    Top = 257
  end
  object CdsClone: TClientDataSet
    PersistDataPacket.Data = {
      A60000009619E0BD010000001800000006000000000003000000A600054E6976
      656C0100490000000100055749445448020002000F0006696E64696365080004
      000000000008526564757A69646F010049000000010005574944544802000200
      03000A496E646963655265616C08000400000000000B43656E74726F43757374
      6F01004900000001000557494454480200020028000A5175616E746964616465
      08000400000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Nivel'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'indice'
        DataType = ftFloat
      end
      item
        Name = 'Reduzido'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'IndiceReal'
        DataType = ftFloat
      end
      item
        Name = 'CentroCusto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Quantidade'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'Nivel'
    Params = <>
    StoreDefs = True
    Left = 232
    Top = 241
    object CdsCloneNivel: TStringField
      FieldName = 'Nivel'
      Size = 15
    end
    object CdsCloneindice: TFloatField
      FieldName = 'indice'
    end
    object CdsCloneReduzido: TStringField
      FieldName = 'Reduzido'
      Size = 3
    end
    object CdsCloneIndiceReal: TFloatField
      FieldName = 'IndiceReal'
    end
    object CdsCloneCentroCusto: TStringField
      FieldName = 'CentroCusto'
      Size = 40
    end
    object CdsCloneQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
  end
  object CdsPercentes: TClientDataSet
    PersistDataPacket.Data = {
      660000009619E0BD0100000018000000040000000000030000006600054E6976
      656C040001000000000004736F6D610800040000000000095265666572656E74
      6501004900000001000557494454480200020032000A496E646963655265616C
      08000400000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 257
    object CdsPercentesNivel: TIntegerField
      FieldName = 'Nivel'
    end
    object CdsPercentessoma: TFloatField
      FieldName = 'soma'
    end
    object CdsPercentesReferente: TStringField
      FieldName = 'Referente'
      Size = 50
    end
    object CdsPercentesIndiceReal: TFloatField
      FieldName = 'IndiceReal'
    end
  end
end
