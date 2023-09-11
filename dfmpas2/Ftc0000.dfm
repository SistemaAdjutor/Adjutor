object FormFichaTecnica01: TFormFichaTecnica01
  Left = 196
  Top = 96
  Width = 615
  Height = 396
  Caption = 'FormFichaTecnica01'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 7
    Top = 8
    Width = 55
    Height = 13
    Caption = 'Referência:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 12
    Top = 50
    Width = 51
    Height = 13
    Caption = 'Descrição:'
  end
  object Label3: TLabel
    Left = 20
    Top = 74
    Width = 43
    Height = 13
    Caption = 'Modelos:'
  end
  object Label4: TLabel
    Left = 501
    Top = 49
    Width = 22
    Height = 13
    Caption = 'Tup:'
  end
  object EditPrd_Refer: TEdit
    Left = 64
    Top = 5
    Width = 93
    Height = 21
    MaxLength = 11
    TabOrder = 0
    OnExit = EditPrd_ReferExit
  end
  object Panel1: TPanel
    Left = 7
    Top = 35
    Width = 595
    Height = 4
    Color = clHighlight
    TabOrder = 13
  end
  object DbeFTP_TUP: TDBEdit
    Left = 527
    Top = 45
    Width = 74
    Height = 21
    DataField = 'FTC_TUP'
    DataSource = DataModulo.DsFichaTec
    MaxLength = 8
    TabOrder = 3
  end
  object DbeFTP_DCMODE1: TDBEdit
    Left = 64
    Top = 70
    Width = 105
    Height = 21
    DataField = 'FTC_DCMODE1'
    DataSource = DataModulo.DsFichaTec
    TabOrder = 4
  end
  object DbeFTP_DCMODE2: TDBEdit
    Left = 172
    Top = 70
    Width = 105
    Height = 21
    DataField = 'FTC_DCMODE2'
    DataSource = DataModulo.DsFichaTec
    TabOrder = 5
  end
  object DbeFTP_DCMODE3: TDBEdit
    Left = 280
    Top = 70
    Width = 105
    Height = 21
    DataField = 'FTC_DCMODE3'
    DataSource = DataModulo.DsFichaTec
    TabOrder = 6
  end
  object DbeFTP_DCMODE4: TDBEdit
    Left = 388
    Top = 70
    Width = 105
    Height = 21
    DataField = 'FTC_DCMODE4'
    DataSource = DataModulo.DsFichaTec
    TabOrder = 7
  end
  object DbeFTP_DCMODE5: TDBEdit
    Left = 497
    Top = 70
    Width = 105
    Height = 21
    DataField = 'FTC_DCMODE5'
    DataSource = DataModulo.DsFichaTec
    TabOrder = 8
  end
  object DBGridfichaTecIten: TDBGrid
    Left = 4
    Top = 95
    Width = 599
    Height = 150
    Color = clAqua
    DataSource = DataModulo.DsFichaTecIten
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnColEnter = DBGridfichaTecItenColEnter
    OnColExit = DBGridfichaTecItenColExit
    OnEnter = DBGridfichaTecItenEnter
    OnExit = DBGridfichaTecItenExit
    Columns = <
      item
        Expanded = False
        FieldName = 'PRD_REFER_ITENS'
        Title.Caption = 'Código'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRD_DESCRI_LK'
        Title.Caption = 'Descrição'
        Width = 235
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FTI_UC'
        Title.Caption = 'UC'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FTI_MODE1'
        Title.Caption = 'Mod1'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FTI_MODE2'
        Title.Caption = 'Mod2'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FTI_MODE3'
        Title.Caption = 'Mod3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FTI_MODE4'
        Title.Caption = 'Mod4'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FTI_MODE5'
        Title.Caption = 'Mod5'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 506
    Top = 5
    Width = 94
    Height = 25
    Caption = '&Filtro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
  object Panel2: TPanel
    Left = 6
    Top = 332
    Width = 240
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = clTeal
    TabOrder = 11
    object Bit_Lista: TBitBtn
      Left = 4
      Top = 4
      Width = 116
      Height = 25
      Caption = '&Lista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Glyph.Data = {
        42010000424D4201000000000000760000002800000013000000110000000100
        040000000000CC00000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        88888885AA0F88777777777777777785AA0F80000000000000000785AE1B8088
        8888888888880785AA5F80FF8FF8FF8FF8FF0785AA5F80888888888888880785
        AA5F80FF8FF8FF8FF8FF0785AA5F80888888888888880785AA0A80FF8FF8FF8F
        F8FF0785AA0A80888888888888880785AA0A80FF8FF8FF8FF8FF0785AA0A8000
        0000000000000785AA0B80FF7FF7FF7FF7FF0785A84E8000000000000000078E
        01C18080CCCCCCCCCCCC078C23018000000000000000088431C3888888888888
        8888888D2617}
    end
    object Bit_Relatorio: TBitBtn
      Left = 120
      Top = 4
      Width = 116
      Height = 25
      Caption = '&Relatório'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
  object Panel3: TPanel
    Left = 247
    Top = 332
    Width = 357
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = clTeal
    TabOrder = 10
    object Bit_Cancelar: TBitBtn
      Left = 236
      Top = 4
      Width = 116
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 3
      OnClick = Bit_CancelarClick
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
    end
    object Bit_Sair: TBitBtn
      Left = 236
      Top = 4
      Width = 116
      Height = 25
      Caption = '&Sair'
      TabOrder = 2
      OnClick = Bit_SairClick
      Glyph.Data = {
        CA010000424DCA01000000000000760000002800000026000000110000000100
        04000000000054010000CE0E0000D80E00001000000000000000000000000000
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
    end
    object Bit_Excluir: TBitBtn
      Left = 4
      Top = 4
      Width = 116
      Height = 25
      Caption = '&Excluir'
      TabOrder = 1
      OnClick = Bit_ExcluirClick
    end
    object Bit_Gravar: TBitBtn
      Left = 120
      Top = 4
      Width = 116
      Height = 25
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = Bit_GravarClick
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
    end
  end
  object DBLkupPRD_DESCRI: TDBLookupComboBox
    Left = 64
    Top = 45
    Width = 330
    Height = 21
    KeyField = 'PRD_REFER'
    ListField = 'PRD_DESCRI'
    ListSource = DsProduAux
    TabOrder = 2
    OnClick = DBLkupPRD_DESCRIClick
  end
  object DbePRD_DESCRI: TDBEdit
    Left = 64
    Top = 45
    Width = 312
    Height = 21
    DataField = 'PRD_DESCRI'
    DataSource = DsProduAux
    TabOrder = 1
  end
  object DbePrd_Refer: TDBEdit
    Left = 368
    Top = 8
    Width = 121
    Height = 21
    DataField = 'PRD_REFER'
    DataSource = DataModulo.DsFichaTecIten
    TabOrder = 14
  end
  object DsProduAux: TDataSource
    DataSet = TbProduAux
    Left = 208
    Top = 3
  end
  object TbProduAux: TTable
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'PRD_REFER'
    TableName = 'PRD0000'
    Left = 236
    Top = 3
    object TbProduAuxPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 4
    end
    object TbProduAuxPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 40
    end
    object TbProduAuxPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object TbProduAuxPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object TbProduAuxPRD_EMBALA: TStringField
      FieldName = 'PRD_EMBALA'
      Size = 10
    end
    object TbProduAuxPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
    object TbProduAuxPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object TbProduAuxIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object TbProduAuxPRD_ALIQICM: TFloatField
      FieldName = 'PRD_ALIQICM'
    end
    object TbProduAuxLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      Size = 2
    end
    object TbProduAuxPRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      Size = 15
    end
    object TbProduAuxPRD_CARACT: TMemoField
      FieldName = 'PRD_CARACT'
      BlobType = ftMemo
    end
    object TbProduAuxPRD_MINIMO: TFloatField
      FieldName = 'PRD_MINIMO'
    end
    object TbProduAuxPRD_PCUSTO: TFloatField
      FieldName = 'PRD_PCUSTO'
    end
    object TbProduAuxPRD_PVENDA: TFloatField
      FieldName = 'PRD_PVENDA'
    end
    object TbProduAuxPRD_PMEDIO: TFloatField
      FieldName = 'PRD_PMEDIO'
    end
    object TbProduAuxPRD_ESTOQUE: TFloatField
      FieldName = 'PRD_ESTOQUE'
    end
    object TbProduAuxPRD_SAIDA: TFloatField
      FieldName = 'PRD_SAIDA'
    end
    object TbProduAuxPRD_PENDENTE: TFloatField
      FieldName = 'PRD_PENDENTE'
    end
    object TbProduAuxFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object TbProduAuxPRD_ENTRADA: TFloatField
      FieldName = 'PRD_ENTRADA'
    end
    object TbProduAuxPRD_MAXIMO: TFloatField
      FieldName = 'PRD_MAXIMO'
    end
    object TbProduAuxPRD_ICMSUBS: TFloatField
      FieldName = 'PRD_ICMSUBS'
    end
    object TbProduAuxPRD_UTILCONV: TBooleanField
      FieldName = 'PRD_UTILCONV'
    end
    object TbProduAuxPRD_UNDCOMP: TStringField
      FieldName = 'PRD_UNDCOMP'
      Size = 3
    end
    object TbProduAuxPRD_PESOKg: TFloatField
      FieldName = 'PRD_PESOKg'
    end
    object TbProduAuxPRD_FATORC: TFloatField
      FieldName = 'PRD_FATORC'
    end
    object TbProduAuxPRD_DIVMULT: TStringField
      FieldName = 'PRD_DIVMULT'
      Size = 1
    end
    object TbProduAuxEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbProduAuxPRD_DTPCUSTO: TDateTimeField
      FieldName = 'PRD_DTPCUSTO'
    end
  end
end
