object FormEntraSai: TFormEntraSai
  Left = 88
  Top = 193
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 332
  ClientWidth = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GrpAlmox: TGroupBox
    Left = 0
    Top = 103
    Width = 591
    Height = 42
    Align = alTop
    TabOrder = 3
    object LblAlmox: TLabel
      Left = 28
      Top = 17
      Width = 124
      Height = 13
      Caption = 'Almoxarifado Destino:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CbAlmox: TComboBox
      Left = 181
      Top = 13
      Width = 397
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 45
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = CbAlmoxClick
      OnEnter = CbAlmoxEnter
      OnExit = CbAlmoxExit
    end
    object EdtAlmox: TEdit
      Left = 153
      Top = 13
      Width = 27
      Height = 21
      MaxLength = 3
      TabOrder = 0
      OnClick = EdtAlmoxClick
      OnEnter = EdtAlmoxClick
      OnExit = EdtAlmoxExit
      OnKeyPress = EdtAlmoxKeyPress
    end
  end
  object GrpVariacoes: TGroupBox
    Left = 0
    Top = 145
    Width = 591
    Height = 75
    Align = alTop
    Caption = 'Descrimina'#231#227'o das Varia'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object DbePes_Var1: TDBEdit
      Left = 12
      Top = 46
      Width = 70
      Height = 21
      DataField = 'PES_VAR1'
      DataSource = DataCadastros.DsPrdManut
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnEnter = DbePes_Var1Enter
    end
    object DbePes_var2: TDBEdit
      Left = 83
      Top = 46
      Width = 70
      Height = 21
      DataField = 'PES_VAR2'
      DataSource = DataCadastros.DsPrdManut
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnEnter = DbePes_var2Enter
    end
    object DbePes_var3: TDBEdit
      Left = 154
      Top = 46
      Width = 70
      Height = 21
      DataField = 'PES_VAR3'
      DataSource = DataCadastros.DsPrdManut
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnEnter = DbePes_var3Enter
    end
    object DbePes_Var4: TDBEdit
      Left = 225
      Top = 46
      Width = 70
      Height = 21
      DataField = 'PES_VAR4'
      DataSource = DataCadastros.DsPrdManut
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnEnter = DbePes_Var4Enter
    end
    object DbePes_Var5: TDBEdit
      Left = 296
      Top = 46
      Width = 70
      Height = 21
      DataField = 'PES_VAR5'
      DataSource = DataCadastros.DsPrdManut
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnEnter = DbePes_Var5Enter
    end
    object DbePes_var6: TDBEdit
      Left = 367
      Top = 46
      Width = 70
      Height = 21
      DataField = 'PES_VAR6'
      DataSource = DataCadastros.DsPrdManut
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnEnter = DbePes_var6Enter
    end
    object DbePes_var7: TDBEdit
      Left = 438
      Top = 46
      Width = 70
      Height = 21
      DataField = 'PES_VAR7'
      DataSource = DataCadastros.DsPrdManut
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnEnter = DbePes_var7Enter
    end
    object DbePes_Var8: TDBEdit
      Left = 509
      Top = 46
      Width = 70
      Height = 21
      DataField = 'PES_VAR8'
      DataSource = DataCadastros.DsPrdManut
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnEnter = DbePes_Var8Enter
    end
    object DBEdit2: TDBEdit
      Left = 12
      Top = 24
      Width = 70
      Height = 21
      TabStop = False
      Color = 16579817
      Ctl3D = True
      DataField = 'PRD_DCVAR1'
      DataSource = DataCadastros.DsProdutos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 8
    end
    object DBEdit3: TDBEdit
      Left = 83
      Top = 24
      Width = 70
      Height = 21
      TabStop = False
      Color = 16579817
      Ctl3D = True
      DataField = 'PRD_DCVAR2'
      DataSource = DataCadastros.DsProdutos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 9
    end
    object DBEdit4: TDBEdit
      Left = 154
      Top = 24
      Width = 70
      Height = 21
      TabStop = False
      Color = 16579817
      Ctl3D = True
      DataField = 'PRD_DCVAR3'
      DataSource = DataCadastros.DsProdutos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 10
    end
    object DBEdit5: TDBEdit
      Left = 225
      Top = 24
      Width = 70
      Height = 21
      TabStop = False
      Color = 16579817
      Ctl3D = True
      DataField = 'PRD_DCVAR4'
      DataSource = DataCadastros.DsProdutos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 11
    end
    object DBEdit6: TDBEdit
      Left = 296
      Top = 24
      Width = 70
      Height = 21
      TabStop = False
      Color = 16579817
      Ctl3D = True
      DataField = 'PRD_DCVAR5'
      DataSource = DataCadastros.DsProdutos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 12
    end
    object DBEdit1: TDBEdit
      Left = 367
      Top = 24
      Width = 70
      Height = 21
      TabStop = False
      Color = 16579817
      Ctl3D = True
      DataField = 'PRD_DCVAR6'
      DataSource = DataCadastros.DsProdutos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 13
    end
    object DBEdit9: TDBEdit
      Left = 438
      Top = 24
      Width = 70
      Height = 21
      TabStop = False
      Color = 16579817
      Ctl3D = True
      DataField = 'PRD_DCVAR7'
      DataSource = DataCadastros.DsProdutos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 14
    end
    object DBEdit10: TDBEdit
      Left = 509
      Top = 24
      Width = 70
      Height = 21
      TabStop = False
      Color = 16579817
      Ctl3D = True
      DataField = 'PRD_DCVAR8'
      DataSource = DataCadastros.DsProdutos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 15
    end
  end
  object Grp_Movimento: TGroupBox
    Left = 0
    Top = 0
    Width = 591
    Height = 103
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 4
      Top = 13
      Width = 578
      Height = 40
      TabOrder = 0
      object Label4: TLabel
        Left = 17
        Top = 16
        Width = 58
        Height = 13
        Caption = 'Quantidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 172
        Top = 16
        Width = 26
        Height = 13
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 350
        Top = 16
        Width = 47
        Height = 13
        Caption = 'Tipo Doc:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 442
        Top = 16
        Width = 38
        Height = 13
        Caption = 'N'#186' Doc:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DbePES_QTDE: TDBEdit
        Left = 77
        Top = 12
        Width = 80
        Height = 21
        DataField = 'PES_QTDE'
        DataSource = DataCadastros.DsPrdManut
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
        OnExit = DbePES_QTDEExit
      end
      object DbePes_Data: TDBDateEdit
        Left = 200
        Top = 12
        Width = 95
        Height = 21
        DataField = 'PES_DATA'
        DataSource = DataCadastros.DsPrdManut
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        GlyphKind = gkEllipsis
        NumGlyphs = 1
        ParentFont = False
        TabOrder = 1
        YearDigits = dyFour
        OnExit = DbePes_DataExit
      end
      object PES_QTDE: TDBEdit
        Left = 400
        Top = 12
        Width = 31
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PES_TIPDOC'
        DataSource = DataCadastros.DsPrdManut
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DbePES_NUMDOC: TDBEdit
        Left = 482
        Top = 12
        Width = 90
        Height = 21
        DataField = 'PES_NUMDOC'
        DataSource = DataCadastros.DsPrdManut
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
    object GroupBox2: TGroupBox
      Left = 4
      Top = 50
      Width = 578
      Height = 38
      TabOrder = 1
      object Label3: TLabel
        Left = 5
        Top = 15
        Width = 67
        Height = 13
        Caption = 'Custo Liquido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 264
        Top = 15
        Width = 82
        Height = 13
        Caption = 'Custo de Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 487
        Top = 15
        Width = 33
        Height = 13
        Caption = 'IPI (%):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DbePES_VALOR: TDBEdit
        Left = 76
        Top = 11
        Width = 80
        Height = 21
        DataField = 'PES_VALOR'
        DataSource = DataCadastros.DsPrdManut
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 0
      end
      object DBECustoAgregado: TDBEdit
        Left = 352
        Top = 10
        Width = 80
        Height = 21
        DataField = 'PES_CUSTO_AGREGADO'
        DataSource = DataCadastros.DsPrdManut
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 1
        OnExit = DBECustoAgregadoExit
      end
      object DbePes_IPI: TDBEdit
        Left = 522
        Top = 11
        Width = 50
        Height = 21
        Color = 14145495
        DataField = 'PES_IPI'
        DataSource = DataCadastros.DsPrdManut
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        OnExit = DbePes_IPIExit
      end
    end
  end
  object GrpDados: TGroupBox
    Left = 0
    Top = 220
    Width = 591
    Height = 68
    Align = alTop
    TabOrder = 2
    object Label9: TLabel
      Left = 10
      Top = 40
      Width = 61
      Height = 13
      Caption = 'Observa'#231#227'o:'
    end
    object Label10: TLabel
      Left = 12
      Top = 18
      Width = 60
      Height = 13
      Caption = 'Tipo Kardex:'
    end
    object DBEdit7: TDBEdit
      Left = 73
      Top = 37
      Width = 504
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PES_KARDEX_OBS'
      DataSource = DataCadastros.DsPrdManut
      TabOrder = 1
    end
    object CbKardexTipo: TComboBox
      Left = 73
      Top = 13
      Width = 107
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Items.Strings = (
        ''
        'DEVOLU'#199#195'O'
        'TROCA'
        'CONSERTO'
        'OUTROS')
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 288
    Width = 591
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object PanGravar: TPanel
      Left = 396
      Top = 0
      Width = 195
      Height = 35
      Align = alRight
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Caption = 'PanGravar'
      Color = 12681984
      TabOrder = 0
      object Bit_Cancelar: TBitBtn
        Left = 97
        Top = 5
        Width = 93
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
        OnClick = Bit_CancelarClick
      end
      object Bit_Gravar: TBitBtn
        Left = 4
        Top = 5
        Width = 93
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
        OnClick = Bit_GravarClick
      end
    end
  end
  object SqlCdsAlmox: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from ALMOX0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from ALMOX0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 256
    Top = 154
    object SqlCdsAlmoxAMX_CODIGO: TStringField
      FieldName = 'AMX_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCdsAlmoxAMX_DESCRI: TStringField
      FieldName = 'AMX_DESCRI'
      Required = True
      Size = 35
    end
    object SqlCdsAlmoxEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsAlmoxAMX_TIPO: TStringField
      FieldName = 'AMX_TIPO'
      Size = 35
    end
  end
end
