inherited FormAlmoxarifado: TFormAlmoxarifado
  Left = 306
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Almoxarifado'
  ClientHeight = 500
  ClientWidth = 781
  Font.Name = 'MS Sans Serif'
  FormStyle = fsMDIChild
  KeyPreview = True
  Position = poDesktopCenter
  Visible = True
  OnResize = FormResize
  ExplicitWidth = 797
  ExplicitHeight = 539
  PixelsPerInch = 96
  TextHeight = 13
  object Notebook1: TNotebook [0]
    Left = 0
    Top = 66
    Width = 781
    Height = 385
    Align = alTop
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'Default'
      object DBGrid1: TDBGrid
        Left = 106
        Top = 83
        Width = 678
        Height = 331
        DataSource = DmProducao.DsAlmoxTemp
        FixedColor = 12681984
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'AMX_DATA'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AMX_NUM_OP'
            Title.Alignment = taCenter
            Title.Caption = 'O.P'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AMX_REFER'
            Title.Alignment = taCenter
            Title.Caption = 'Referencia'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_DESCRI'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 264
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AMX_QTDE'
            Title.Alignment = taCenter
            Title.Caption = 'Qtde'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CC_TIPO'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 85
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 10
        Top = 145
        Width = 85
        Height = 183
        BevelOuter = bvNone
        Color = clTeal
        TabOrder = 1
      end
      object GroupBox2: TGroupBox
        Left = 105
        Top = 4
        Width = 677
        Height = 72
        Caption = 'Localizar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object RadOp: TRadioButton
          Left = 16
          Top = 18
          Width = 217
          Height = 17
          Caption = '&N'#250'mero da ordem de produ'#231#227'o'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = RadOpClick
        end
        object RadRefer: TRadioButton
          Left = 294
          Top = 16
          Width = 183
          Height = 17
          Caption = '&Refer'#234'ncia do produto '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = RadReferClick
        end
        object EdLocalizar: TEdit
          Left = 16
          Top = 40
          Width = 80
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object BitBtn1: TBitBtn
          Left = 341
          Top = 38
          Width = 100
          Height = 25
          Caption = 'Localizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = BitBtn1Click
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Page2'
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GpMp: TGroupBox
        Left = 0
        Top = 47
        Width = 789
        Height = 292
        Caption = 'Material para separa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object DBGridMp: TDBGrid
          Left = 2
          Top = 15
          Width = 785
          Height = 275
          Hint = 'Para alterar a quantidade empenhada de duplo clique no produto'
          Align = alClient
          DataSource = DsMP
          FixedColor = 12681984
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridMpDrawColumnCell
          OnDblClick = DBGridMpDblClick
          OnKeyPress = DBGridMpKeyPress
          OnTitleClick = DBGridMpTitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'PRD_REFER_ITENS'
              Title.Alignment = taCenter
              Title.Caption = 'Referencia'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_DESCRI'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 241
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CC_SALDO_ESTOQUE'
              Title.Alignment = taCenter
              Title.Caption = 'Saldo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PTI_SIGLA'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CC_QTDE_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Qtde Total'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OSI_EMPENHO'
              Title.Alignment = taCenter
              Title.Caption = 'Consumido'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OSI_EMP_PENDENTE'
              Title.Alignment = taCenter
              Title.Caption = 'Pendente Compra'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 107
              Visible = True
            end
            item
              Color = 14079702
              Expanded = False
              FieldName = 'IC_EMPENHA'
              Title.Alignment = taCenter
              Title.Caption = 'Empenhar'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 70
              Visible = True
            end>
        end
      end
      object GroupBox1: TGroupBox
        Left = -1
        Top = 0
        Width = 790
        Height = 46
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label3: TLabel
          Left = 453
          Top = 20
          Width = 29
          Height = 13
          Caption = 'Qtde :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 577
          Top = 20
          Width = 86
          Height = 13
          Caption = 'Ordem Produ'#231#227'o :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 666
          Top = 16
          Width = 121
          Height = 21
          TabStop = False
          Color = 15724527
          DataField = 'AMX_NUM_OP'
          DataSource = DmProducao.DsAlmoxTemp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit2: TDBEdit
          Left = 6
          Top = 16
          Width = 136
          Height = 21
          TabStop = False
          Color = 15724527
          DataField = 'AMX_REFER'
          DataSource = DmProducao.DsAlmoxTemp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 485
          Top = 16
          Width = 76
          Height = 21
          TabStop = False
          Color = 15724527
          DataField = 'AMX_QTDE'
          DataSource = DmProducao.DsAlmoxTemp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 144
          Top = 16
          Width = 298
          Height = 21
          TabStop = False
          Color = 15724527
          DataField = 'PRD_DESCRI'
          DataSource = DmProducao.DsAlmoxTemp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 343
        Width = 788
        Height = 82
        BevelOuter = bvNone
        TabOrder = 2
        object Label2: TLabel
          Left = 10
          Top = 33
          Width = 79
          Height = 13
          Caption = 'Qtde empenhar :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LblDiferenca: TLabel
          Left = 494
          Top = 33
          Width = 37
          Height = 13
          Caption = 'Falta :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 178
          Top = 32
          Width = 74
          Height = 13
          Caption = 'Saldo estoque :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 331
          Top = 32
          Width = 73
          Height = 13
          Caption = 'Total consumo:'
        end
        object Bitconfirmar: TBitBtn
          Left = 584
          Top = 56
          Width = 100
          Height = 25
          Caption = '&Confirmar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 5
          TabStop = False
          OnClick = BitconfirmarClick
        end
        object BitCancelar: TBitBtn
          Left = 686
          Top = 56
          Width = 100
          Height = 25
          Cancel = True
          Caption = 'Cancelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333000033338833333333333333333F333333333333
            0000333911833333983333333388F333333F3333000033391118333911833333
            38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
            911118111118333338F3338F833338F3000033333911111111833333338F3338
            3333F8330000333333911111183333333338F333333F83330000333333311111
            8333333333338F3333383333000033333339111183333333333338F333833333
            00003333339111118333333333333833338F3333000033333911181118333333
            33338333338F333300003333911183911183333333383338F338F33300003333
            9118333911183333338F33838F338F33000033333913333391113333338FF833
            38F338F300003333333333333919333333388333338FFF830000333333333333
            3333333333333333333888330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 6
          TabStop = False
          OnClick = BitCancelarClick
        end
        object DBEdit5: TDBEdit
          Left = 4
          Top = 5
          Width = 157
          Height = 21
          Color = 15724527
          DataField = 'PRD_REFER_ITENS'
          DataSource = DsMP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit6: TDBEdit
          Left = 163
          Top = 5
          Width = 442
          Height = 21
          TabStop = False
          Color = 15724527
          DataField = 'PRD_DESCRI'
          DataSource = DsMP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object Cqtde1: TCurrencyEdit
          Left = 90
          Top = 29
          Width = 70
          Height = 21
          AutoSize = False
          DecimalPlaces = 3
          DisplayFormat = ',0.00;-,0.00'
          TabOrder = 2
          ZeroEmpty = False
          OnExit = Cqtde1Exit
        end
        object ChkPendente: TCheckBox
          Left = 612
          Top = 30
          Width = 168
          Height = 17
          Caption = 'Solicitar diferen'#231'a para compra'
          Checked = True
          State = cbChecked
          TabOrder = 4
          OnKeyPress = ChkPendenteKeyPress
        end
        object CqtdeDiferenca: TCurrencyEdit
          Left = 534
          Top = 29
          Width = 70
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14540253
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          ZeroEmpty = False
        end
        object DBEdit7: TDBEdit
          Left = 255
          Top = 29
          Width = 70
          Height = 21
          Color = 14540253
          DataField = 'CC_SALDO_ESTOQUE'
          DataSource = DsMP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object CtotalEmpenhado: TCurrencyEdit
          Left = 411
          Top = 29
          Width = 70
          Height = 21
          AutoSize = False
          Color = 14540253
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          ZeroEmpty = False
        end
      end
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 781
    Height = 66
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 0
      Width = 123
      Height = 24
      Caption = 'Almoxarifado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblTexto: TLabel
      Left = 82
      Top = 29
      Width = 400
      Height = 16
      Caption = 'Selecione a(s) orden(s) de produ'#231#227'o e clique em avan'#231'ar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel4: TPanel [2]
    Left = 240
    Top = 461
    Width = 211
    Height = 34
    BevelOuter = bvLowered
    Color = 10841658
    TabOrder = 2
    object BitAvancar: TBitBtn
      Left = 105
      Top = 6
      Width = 100
      Height = 25
      Caption = 'Avan'#231'ar >'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitAvancarClick
    end
    object Bitconcluir: TBitBtn
      Left = 107
      Top = 6
      Width = 97
      Height = 25
      Caption = 'Concluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = False
      Visible = False
      OnClick = BitconcluirClick
    end
    object BitVoltar: TBitBtn
      Left = 5
      Top = 6
      Width = 100
      Height = 25
      Caption = '< Voltar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = BitVoltarClick
    end
  end
  object Panel5: TPanel [3]
    Left = 674
    Top = 462
    Width = 106
    Height = 32
    BevelOuter = bvLowered
    Color = 10841658
    TabOrder = 3
    object BitSair: TBitBtn
      Left = 5
      Top = 4
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = BitSairClick
    end
  end
  object SqlCdsMP: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'O2.OSV_CODIGO,'#13#10'O2.PRD_REFER_ITENS,'#13#10'O2.OSI_UC,'#13#10'O2.OSI_' +
      'QTDE1,'#13#10'O2.OSI_QTDE2,'#13#10'O2.OSI_QTDE3,'#13#10'O2.OSI_QTDE4,'#13#10'O2.OSI_QTDE' +
      '5,'#13#10'O2.OSI_QTDE6,'#13#10'O2.OSI_QTDE7,'#13#10'O2.OSI_QTDE8,'#13#10'O2.OSI_RESERVAD' +
      'O,'#13#10'O2.OSI_EMPENHO,'#13#10'O2.OSI_APONTADO,'#13#10'P2.PRD_DESCRI,'#13#10'P2.PRD_UN' +
      'D,'#13#10'P3.PTI_SIGLA,'#13#10'O2.OSI_STATUSEMPENHO,'#13#10'case O2.OSI_STATUSEMPE' +
      'NHO'#13#10'  when '#39'N'#39' then '#39'Pendente'#39#13#10'  when '#39'P'#39' then '#39'Parcial'#39#13#10'  wh' +
      'en '#39'S'#39' then '#39'Conclu'#237'do'#39#13#10'end as wStatusEmpenho'#13#10'from OSV_IT02 O2' +
      #13#10'left join PRD0000 P2 on (O2.PRD_REFER_ITENS = P2.PRD_REFER)'#13#10'l' +
      'eft join PRD_TIPO P3 on (P3.PTI_CODIGO = P2.PTI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select'#13#10'O2.OSV_CODIGO,'#13#10'O2.PRD_REFER_ITENS,'#13#10'O2.OSI_UC,'#13#10'O2.OSI_' +
      'QTDE1,'#13#10'O2.OSI_QTDE2,'#13#10'O2.OSI_QTDE3,'#13#10'O2.OSI_QTDE4,'#13#10'O2.OSI_QTDE' +
      '5,'#13#10'O2.OSI_QTDE6,'#13#10'O2.OSI_QTDE7,'#13#10'O2.OSI_QTDE8,'#13#10'O2.OSI_RESERVAD' +
      'O,'#13#10'O2.OSI_EMPENHO,'#13#10'O2.OSI_APONTADO,'#13#10'P2.PRD_DESCRI,'#13#10'P2.PRD_UN' +
      'D,'#13#10'P3.PTI_SIGLA,'#13#10'O2.OSI_STATUSEMPENHO,'#13#10'case O2.OSI_STATUSEMPE' +
      'NHO'#13#10'  when '#39'N'#39' then '#39'Pendente'#39#13#10'  when '#39'P'#39' then '#39'Parcial'#39#13#10'  wh' +
      'en '#39'S'#39' then '#39'Conclu'#237'do'#39#13#10'end as wStatusEmpenho'#13#10'from OSV_IT02 O2' +
      #13#10'left join PRD0000 P2 on (O2.PRD_REFER_ITENS = P2.PRD_REFER)'#13#10'l' +
      'eft join PRD_TIPO P3 on (P3.PTI_CODIGO = P2.PTI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 352
    Top = 160
  end
  object CdsMP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMP'
    AfterScroll = CdsMPAfterScroll
    OnCalcFields = CdsMPCalcFields
    Left = 376
    Top = 214
    object CdsMPOSI_REGISTRO: TIntegerField
      FieldName = 'OSI_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsMPOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object CdsMPPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object CdsMPOSI_UC: TFloatField
      FieldName = 'OSI_UC'
      ProviderFlags = [pfInUpdate]
    end
    object CdsMPOSI_QTDE2: TFMTBCDField
      FieldName = 'OSI_QTDE2'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.000'
      Precision = 15
    end
    object CdsMPOSI_QTDE1: TFMTBCDField
      FieldName = 'OSI_QTDE1'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.000'
      Precision = 15
    end
    object CdsMPOSI_QTDE3: TFMTBCDField
      FieldName = 'OSI_QTDE3'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.000'
      Precision = 15
    end
    object CdsMPOSI_QTDE4: TFMTBCDField
      FieldName = 'OSI_QTDE4'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.000'
      Precision = 15
    end
    object CdsMPOSI_QTDE5: TFMTBCDField
      FieldName = 'OSI_QTDE5'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.000'
      Precision = 15
    end
    object CdsMPOSI_QTDE6: TFMTBCDField
      FieldName = 'OSI_QTDE6'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.000'
      Precision = 15
    end
    object CdsMPOSI_QTDE7: TFMTBCDField
      FieldName = 'OSI_QTDE7'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.000'
      Precision = 15
    end
    object CdsMPOSI_QTDE8: TFMTBCDField
      FieldName = 'OSI_QTDE8'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.000'
      Precision = 15
    end
    object CdsMPOSI_RESERVADO: TFMTBCDField
      FieldName = 'OSI_RESERVADO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.000'
      Precision = 15
    end
    object CdsMPOSI_EMPENHO: TFMTBCDField
      FieldName = 'OSI_EMPENHO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.000'
      Precision = 15
    end
    object CdsMPOSI_APONTADO: TFMTBCDField
      FieldName = 'OSI_APONTADO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.000'
      Precision = 15
    end
    object CdsMPPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object CdsMPPRD_UND: TStringField
      FieldName = 'PRD_UND'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsMPPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsMPPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsMPPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsMPPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsMPPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsMPPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsMPPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsMPPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object CdsMPPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsMPOSI_STATUSEMPENHO: TStringField
      FieldName = 'OSI_STATUSEMPENHO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsMPCC_QTDE_TOTAL: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CC_QTDE_TOTAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.000'
      currency = False
      Calculated = True
    end
    object CdsMPCC_VARIACAO: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'CC_VARIACAO'
      ProviderFlags = [pfInUpdate]
      Calculated = True
    end
    object CdsMPCC_PENDENTE: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CC_PENDENTE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.000'
      currency = False
      Calculated = True
    end
    object CdsMPPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.000'
      Precision = 15
    end
    object CdsMPPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.000'
      Precision = 15
    end
    object CdsMPCC_SALDO_ESTOQUE: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CC_SALDO_ESTOQUE'
      DisplayFormat = '#0.000'
      currency = False
      Calculated = True
    end
    object CdsMPPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.000'
      Precision = 15
    end
    object CdsMPPRD_EMPENHO: TFMTBCDField
      FieldName = 'PRD_EMPENHO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.000'
      Precision = 15
    end
    object CdsMPOSI_EMP_PENDENTE: TFMTBCDField
      FieldName = 'OSI_EMP_PENDENTE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.000'
      Precision = 15
    end
    object CdsMPIC_EMPENHA: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'IC_EMPENHA'
      currency = False
      Calculated = True
    end
  end
  object DspMP: TDataSetProvider
    DataSet = SqlMP
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 324
    Top = 216
  end
  object SqlMP: TSQLDataSet
    CommandText = 
      'select'#13#10'O2.OSV_CODIGO,'#13#10'O2.PRD_REFER_ITENS,'#13#10'O2.OSI_REGISTRO,'#13#10'O' +
      '2.OSI_UC,'#13#10'O2.OSI_QTDE1,'#13#10'O2.OSI_QTDE2,'#13#10'O2.OSI_QTDE3,'#13#10'O2.OSI_Q' +
      'TDE4,'#13#10'O2.OSI_QTDE5,'#13#10'O2.OSI_QTDE6,'#13#10'O2.OSI_QTDE7,'#13#10'O2.OSI_QTDE8' +
      ','#13#10'O2.OSI_RESERVADO,'#13#10'O2.OSI_EMPENHO,'#13#10'O2.OSI_APONTADO,'#13#10'O2.OSI_' +
      'EMP_PENDENTE,'#13#10'P2.PRD_DESCRI,'#13#10'P2.PRD_UND,'#13#10'P2.PRD_ESTOQUE,'#13#10'P2.' +
      'PRD_ENTRADA,'#13#10'P2.PRD_SAIDA,'#13#10'P2.PRD_EMPENHO,'#13#10'P2.PRD_DCVAR1, P2.' +
      'PRD_DCVAR2, P2.PRD_DCVAR3, P2.PRD_DCVAR4, P2.PRD_DCVAR5, P2.PRD_' +
      'DCVAR6, P2.PRD_DCVAR7, P2.PRD_DCVAR8,'#13#10'P3.PTI_SIGLA,'#13#10'O2.OSI_STA' +
      'TUSEMPENHO'#13#10'from OSV_IT02 O2'#13#10'left join PRD0000 P2 on (O2.PRD_RE' +
      'FER_ITENS = P2.PRD_REFER)'#13#10'left join PRD_TIPO P3 on (P3.PTI_CODI' +
      'GO = P2.PTI_CODIGO)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 266
    Top = 210
    object SqlMPOSI_REGISTRO: TIntegerField
      FieldName = 'OSI_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlMPOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SqlMPPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object SqlMPOSI_UC: TFloatField
      FieldName = 'OSI_UC'
      ProviderFlags = [pfInUpdate]
    end
    object SqlMPOSI_QTDE1: TFMTBCDField
      FieldName = 'OSI_QTDE1'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMPOSI_QTDE2: TFMTBCDField
      FieldName = 'OSI_QTDE2'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMPOSI_QTDE3: TFMTBCDField
      FieldName = 'OSI_QTDE3'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMPOSI_QTDE4: TFMTBCDField
      FieldName = 'OSI_QTDE4'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMPOSI_QTDE5: TFMTBCDField
      FieldName = 'OSI_QTDE5'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMPOSI_QTDE6: TFMTBCDField
      FieldName = 'OSI_QTDE6'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMPOSI_QTDE7: TFMTBCDField
      FieldName = 'OSI_QTDE7'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMPOSI_QTDE8: TFMTBCDField
      FieldName = 'OSI_QTDE8'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMPOSI_RESERVADO: TFMTBCDField
      FieldName = 'OSI_RESERVADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMPOSI_EMPENHO: TFMTBCDField
      FieldName = 'OSI_EMPENHO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMPOSI_APONTADO: TFMTBCDField
      FieldName = 'OSI_APONTADO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMPPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object SqlMPPRD_UND: TStringField
      FieldName = 'PRD_UND'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object SqlMPPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlMPPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlMPPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlMPPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlMPPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlMPPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlMPPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlMPPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object SqlMPPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object SqlMPOSI_STATUSEMPENHO: TStringField
      FieldName = 'OSI_STATUSEMPENHO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SqlMPPRD_ESTOQUE: TFMTBCDField
      FieldName = 'PRD_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMPPRD_ENTRADA: TFMTBCDField
      FieldName = 'PRD_ENTRADA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMPPRD_SAIDA: TFMTBCDField
      FieldName = 'PRD_SAIDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMPPRD_EMPENHO: TFMTBCDField
      FieldName = 'PRD_EMPENHO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlMPOSI_EMP_PENDENTE: TFMTBCDField
      FieldName = 'OSI_EMP_PENDENTE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
  end
  object DsMP: TDataSource
    DataSet = CdsMP
    Left = 424
    Top = 216
  end
  object Timer1: TTimer
    Interval = 9999
    OnTimer = Timer1Timer
    Left = 64
    Top = 32
  end
end
