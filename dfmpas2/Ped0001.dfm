object FormPedidos: TFormPedidos
  Left = 32
  Top = 15
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pedidos de Vendas e Or'#231'amentos'
  ClientHeight = 679
  ClientWidth = 980
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControlPed: TPageControl
    Left = 3
    Top = 3
    Width = 974
    Height = 676
    ActivePage = TabSheeVendas
    TabOrder = 0
    object TabSheeVendas: TTabSheet
      Caption = 'Pedidos'
      object Pn_dados: TPanel
        Left = -6
        Top = 20
        Width = 1071
        Height = 632
        BevelInner = bvRaised
        BevelOuter = bvNone
        TabOrder = 0
        object Label62: TLabel
          Left = 735
          Top = 30
          Width = 33
          Height = 13
          Caption = 'Prazo :'
        end
        object Label1: TLabel
          Left = 20
          Top = 9
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
        object Label18: TLabel
          Left = 169
          Top = 7
          Width = 30
          Height = 13
          Caption = 'Tipo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 30
          Top = 30
          Width = 35
          Height = 13
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 14
          Top = 55
          Width = 49
          Height = 13
          Caption = 'Vendedor:'
        end
        object Label38: TLabel
          Left = 17
          Top = 76
          Width = 48
          Height = 13
          Caption = 'Transport.'
        end
        object Label39: TLabel
          Left = 22
          Top = 100
          Width = 43
          Height = 13
          Caption = 'Redesp.:'
        end
        object Label23: TLabel
          Left = 554
          Top = 7
          Width = 80
          Height = 13
          Caption = 'Data Entrada:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label31: TLabel
          Left = 777
          Top = 7
          Width = 80
          Height = 13
          Caption = 'Data Entrega:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblCnpj: TLabel
          Left = 555
          Top = 30
          Width = 30
          Height = 13
          Caption = 'CNPJ:'
        end
        object spCliente: TSpeedButton
          Left = 511
          Top = 29
          Width = 30
          Height = 20
          Hint = 'Busca Cliente'
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF314B62
            AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
            106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
            00FF9C6B65AF887BAF887EAA8075FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF3BABFFA1CAE7AD8679A98373E0CFB1FFFFDAFFFFDDFCF8CFCCB2
            9FA1746BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC0917DFC
            E9ACFFFFCCFFFFCFFFFFD0FFFFDEFFFFFAE3D3D1996965FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFB08978FAD192FEF4C2FFFFD0FFFFDAFFFFF6FFFF
            FCFFFFFCB69384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB08978FEDA97ED
            B478FBEEBBFFFFD3FFFFDCFFFFF4FFFFF4FFFFE2E9DDBCA67B73FF00FFFF00FF
            FF00FFFF00FFFF00FFB18A78FFDE99E9A167F4D199FEFCCCFFFFD5FFFFDAFFFF
            DCFFFFD7EFE6C5A97E75FF00FFFF00FFFF00FFFF00FFFF00FFAA7F73FAE0A4F0
            B778EEBA7BF6DDA6FEFBCCFFFFD3FFFFD1FFFFD7D9C5A7A3756CFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFCEB293FFFEDDF4D1A5EEBA7BF2C78FF8E1ABFCF0
            BAFCFACAA3776FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1746BE1
            D4D3FFFEEEF7CC8CF0B473F7C788FCE3A5C2A088A5776CFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF986865BA9587EAD7A4EAD59EE0C097A577
            6CA5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFA77E70A98073A4786EFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          OnClick = spClienteClick
        end
        object SpeedTipo: TSpeedButton
          Left = 511
          Top = 3
          Width = 30
          Height = 24
          Hint = 'mudar tipo'
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF652814672913672913672913672913672913FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF682913672913BC4B00BC4B00BC
            4B00BC4B00BC4B00BC4B00672913672913FF00FFFF00FFFF00FFFF00FFFF00FF
            83350BB54701BB4A00BB4A00BB4A00BB4A00BB4A00BC4B00BC4B00BC4B00B548
            01672913FF00FFFF00FFFF00FF81340CB44700B84800B64600B64600B64600B6
            4600B84800BA4900BC4B00BC4B00BC4B00B54801672913FF00FFFF00FFA94202
            B64700B44500B14300AD4100C06928CA7D40CC7F41CA7632C25C10BC4B00BC4B
            00BC4B00682913FF00FF923A07BA4C02B74D03B54D03B14B03B04901E0B289FE
            FEFEFEFEFEFEFEFEFEFEFED0813DBC4B00BC4B00BC4B00652814973D06BF5609
            BB570BB8570CB7560CB5540AB5540BB6560DB4530CB5520FDCA474FEFEFEBB4A
            00BC4B00BC4B00682913963E07C76A1FC1651ABF6419BF651BBD6318E3BD97B6
            550CB14D04AD4501B64E09FEFEFEBB4A00BC4B00BC4B00682913973F09D48B49
            CB7A34C67229C7742CE6C19DFEFEFEBC6017B6550CB24C04CB8042FEFEFEBB4A
            00BC4B00BC4B00682913953D07DEA068DA9D62CF803AF0D7BDFEFEFEFEFEFEF6
            E9DAEFD8C1EED5BDFEFEFEDDA574BB4A00BC4B00BC4B00682913953B05E09E63
            EBC6A1DD9C5EF2D8BDFEFEFEFEFEFEF0D9C2E5BC96E2B78ED08745B74801BB4A
            00BC4B00BC4B00652814FF00FF9A4711EFCEADF0CEACE3A972EECCABFEFEFEC9
            752DC2681DBF5C10BC5407BB4B01BB4A00BC4B00682913FF00FFFF00FF953B05
            E2A468F6E0C9F3D5B8E2A972EAC199CB762DC66A1EC25F11C1590ABC4D03BC4B
            00B54801632815FF00FFFF00FFFF00FF963C06E5A66CF3D7BBF4DEC7EBC49DE1
            A670DA9556D58945CE762CC05607B54801762F0FFF00FFFF00FFFF00FFFF00FF
            FF00FF973D069F4C16E6AA72EBBC90E9BB8EE3AA75D88B48C764169C41096F2D
            11FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993F079C420A9E
            460E9D450C9C410984360CFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedTipoClick
        end
        object DBEOpv_codigo: TDBEdit
          Left = 258
          Top = 4
          Width = 29
          Height = 21
          TabStop = False
          DataField = 'OPV_CODIGO'
          DataSource = DataMovimento.DsPedidos
          MaxLength = 3
          TabOrder = 1
          OnKeyPress = DBeCli_codigoKeyPress
        end
        object CbTipo1: TComboBoxRw
          Left = 201
          Top = 4
          Width = 306
          Height = 21
          TabOrder = 2
          OnExit = CbTipo1Exit
          OnChange = CbTipo1Change
          CharCase = ecUpperCase
          Enabled = False
          LookupSelect = 'OPV_DESCRICAO'
          LookupOrderBy = 'OPV_DESCRICAO'
          LookupTable = 'OPV0000'
          GridAutoSize = False
          LookupSource = CbTipo1.InternalSource
          LookupKeyField = 'OPV_CODIGO'
          FiltroTabela = 'OPV_TIPO = '#39'S'#39
          ShowButton = True
          LookupTableShare = 'TABELAS'
          Tabela = 'OPV0000'
          CamposCarregar = 'OPV_DESCRICAO'
          CamposRetornar = 'OPV_CODIGO'
          Condicao = 'OPV_TIPO = '#39'S'#39
          CamposOrdernar = 'OPV_DESCRICAO'
          ConexaoBanco = DataCadastros.SQLConnection1
          Compartilhar = 'TABELAS'
          Localizado = False
          About = 'Novi Sistemas'
          CodigoDefalut = 'Novi Sistemas'
           
          UniaoTabelas = 'Novi Sistemas'
          Apelido = 'Novi Sistemas'
           
           
           
           
           
        end
        object EdtPed_codigo: TEdit
          Left = 65
          Top = 4
          Width = 52
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 7
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnChange = EdtPed_codigoChange
          OnClick = EdtPed_codigoClick
          OnEnter = EdtPed_codigoClick
          OnExit = EdtPed_codigoExit
        end
        object PanVendaH: TPanel
          Left = 902
          Top = 283
          Width = 801
          Height = 300
          BorderStyle = bsSingle
          TabOrder = 32
          Visible = False
          OnExit = PanVendaHExit
          object Label90: TLabel
            Left = 11
            Top = 34
            Width = 40
            Height = 13
            Caption = 'Produto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Panel5: TPanel
            Left = 1
            Top = 1
            Width = 795
            Height = 21
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = ' Hist'#243'rico de vendas anteriores do Produto ao Cliente'
            Color = clNavy
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object SpXhistorico: TSpeedButton
              Left = 773
              Top = -1
              Width = 23
              Height = 22
              Caption = 'X'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpXhistoricoClick
            end
          end
          object DBGrid2: TDBGrid
            Left = 9
            Top = 60
            Width = 782
            Height = 202
            DataSource = DsClientProd
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlue
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'PRD_REFER'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Refer'#234'ncia'
                Title.Color = 12681984
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWhite
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PED_CODIGO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Pedido'
                Title.Color = 12681984
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWhite
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRD_DESCRI'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Descri'#231#227'o'
                Title.Color = 12681984
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWhite
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 258
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NF_EMISSAO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'DT.Fatura'
                Title.Color = 12681984
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWhite
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NF_QTDE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Qtde'
                Title.Color = 12681984
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWhite
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NF_PRECO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'P.Unit.'
                Title.Color = 12681984
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
                FieldName = 'CC_TOTAL'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'P.Total'
                Title.Color = 12681984
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWhite
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NF_IDESCTO1'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Descto'
                Title.Color = 12681984
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWhite
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 67
                Visible = True
              end>
          end
          object EditProdutoVendas: TEdit
            Left = 54
            Top = 31
            Width = 538
            Height = 21
            CharCase = ecUpperCase
            Color = 14145495
            MaxLength = 50
            TabOrder = 2
          end
          object BitSairHistoricoProd: TBitBtn
            Left = 682
            Top = 265
            Width = 95
            Height = 25
            Cursor = crHandPoint
            Caption = '&Sair'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            TabOrder = 3
            TabStop = False
            OnClick = BitSairHistoricoProdClick
          end
        end
        object PanVariacao: TPanel
          Left = 868
          Top = 37
          Width = 438
          Height = 374
          TabOrder = 29
          Visible = False
          object GroupBox1: TGroupBox
            Left = 1
            Top = 22
            Width = 436
            Height = 311
            Align = alTop
            TabOrder = 2
            object Bevel3: TBevel
              Left = 149
              Top = 82
              Width = 2
              Height = 230
            end
            object Label54: TLabel
              Left = 4
              Top = 14
              Width = 55
              Height = 13
              Caption = 'Refer'#234'ncia:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Bevel1: TBevel
              Left = 1
              Top = 80
              Width = 429
              Height = 2
            end
            object Label56: TLabel
              Left = 8
              Top = 37
              Width = 51
              Height = 13
              Caption = 'Descri'#231#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label55: TLabel
              Left = 215
              Top = 60
              Width = 119
              Height = 13
              Alignment = taRightJustify
              Caption = 'Qtde solicitada total:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Bevel2: TBevel
              Left = 1
              Top = 100
              Width = 429
              Height = 2
            end
            object Label57: TLabel
              Left = 5
              Top = 84
              Width = 142
              Height = 13
              Caption = 'Descri'#231#227'o das Varia'#231#245'es'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label58: TLabel
              Left = 344
              Top = 85
              Width = 66
              Height = 13
              Caption = 'Quantidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Bevel4: TBevel
              Left = 1
              Top = 282
              Width = 429
              Height = 2
            end
            object Label59: TLabel
              Left = 12
              Top = 292
              Width = 129
              Height = 13
              Caption = 'Total das Varia'#231#245'es ->'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Bevel5: TBevel
              Left = 241
              Top = 82
              Width = 2
              Height = 230
            end
            object Label65: TLabel
              Left = 245
              Top = 85
              Width = 83
              Height = 13
              Caption = 'Saldo Estoque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Bevel6: TBevel
              Left = 332
              Top = 81
              Width = 2
              Height = 230
            end
            object Label66: TLabel
              Left = 157
              Top = 85
              Width = 74
              Height = 13
              Caption = 'Reserva Est.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EdtRef: TEdit
              Left = 59
              Top = 10
              Width = 121
              Height = 21
              TabStop = False
              Color = 14145495
              ReadOnly = True
              TabOrder = 0
            end
            object EdtDescricaoVar: TEdit
              Left = 59
              Top = 33
              Width = 366
              Height = 21
              TabStop = False
              Color = 14145495
              ReadOnly = True
              TabOrder = 1
            end
            object CurrQtdeProd: TCurrencyEdit
              Left = 337
              Top = 56
              Width = 88
              Height = 21
              TabStop = False
              AutoSize = False
              Color = 14145495
              DecimalPlaces = 4
              DisplayFormat = '#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
              ZeroEmpty = False
            end
            object DBEdtPRD_DCVAR1: TDBEdit
              Left = 3
              Top = 104
              Width = 145
              Height = 21
              TabStop = False
              Color = 16579817
              Ctl3D = True
              DataField = 'PRD_DCVAR1'
              DataSource = DataMovimento.DsPedItem
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 3
            end
            object DBEdtPRD_DCVAR2: TDBEdit
              Left = 3
              Top = 126
              Width = 145
              Height = 21
              TabStop = False
              Color = 16579817
              Ctl3D = True
              DataField = 'PRD_DCVAR2'
              DataSource = DataMovimento.DsPedItem
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 4
            end
            object DBEdtPRD_DCVAR3: TDBEdit
              Left = 3
              Top = 148
              Width = 145
              Height = 21
              TabStop = False
              Color = 16579817
              Ctl3D = True
              DataField = 'PRD_DCVAR3'
              DataSource = DataMovimento.DsPedItem
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 5
            end
            object DBEdtPRD_DCVAR4: TDBEdit
              Left = 3
              Top = 170
              Width = 145
              Height = 21
              TabStop = False
              Color = 16579817
              Ctl3D = True
              DataField = 'PRD_DCVAR4'
              DataSource = DataMovimento.DsPedItem
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 6
            end
            object DBEdtPRD_DCVAR5: TDBEdit
              Left = 3
              Top = 192
              Width = 145
              Height = 21
              TabStop = False
              Color = 16579817
              Ctl3D = True
              DataField = 'PRD_DCVAR5'
              DataSource = DataMovimento.DsPedItem
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 7
            end
            object DBEdtPRD_DCVAR6: TDBEdit
              Left = 3
              Top = 214
              Width = 145
              Height = 21
              TabStop = False
              Color = 16579817
              Ctl3D = True
              DataField = 'PRD_DCVAR6'
              DataSource = DataMovimento.DsPedItem
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 8
            end
            object DBEdtPRD_DCVAR7: TDBEdit
              Left = 4
              Top = 236
              Width = 145
              Height = 21
              TabStop = False
              Color = 16579817
              Ctl3D = True
              DataField = 'PRD_DCVAR7'
              DataSource = DataMovimento.DsPedItem
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 9
            end
            object DBEdtPRD_DCVAR8: TDBEdit
              Left = 4
              Top = 258
              Width = 145
              Height = 21
              TabStop = False
              Color = 16579817
              Ctl3D = True
              DataField = 'PRD_DCVAR8'
              DataSource = DataMovimento.DsPedItem
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 10
            end
            object CurrTotVar: TCurrencyEdit
              Left = 336
              Top = 288
              Width = 90
              Height = 21
              TabStop = False
              AutoSize = False
              Color = 14145495
              DecimalPlaces = 4
              DisplayFormat = '#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 19
              ZeroEmpty = False
            end
            object CurrVar1: TCurrencyEdit
              Left = 336
              Top = 104
              Width = 90
              Height = 21
              AutoSize = False
              DecimalPlaces = 0
              DisplayFormat = '#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 11
              ZeroEmpty = False
              OnClick = CurrVar1Click
              OnEnter = CurrVar1Enter
              OnExit = CurrVar1Exit
            end
            object CurrVar2: TCurrencyEdit
              Left = 336
              Top = 126
              Width = 90
              Height = 21
              AutoSize = False
              DecimalPlaces = 0
              DisplayFormat = '#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 12
              ZeroEmpty = False
              OnClick = CurrVar2Click
              OnEnter = CurrVar2Enter
              OnExit = CurrVar2Exit
            end
            object CurrVar3: TCurrencyEdit
              Left = 336
              Top = 148
              Width = 90
              Height = 21
              AutoSize = False
              DecimalPlaces = 0
              DisplayFormat = '#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 13
              ZeroEmpty = False
              OnClick = CurrVar3Click
              OnEnter = CurrVar3Enter
              OnExit = CurrVar3Exit
            end
            object CurrVar4: TCurrencyEdit
              Left = 336
              Top = 170
              Width = 90
              Height = 21
              AutoSize = False
              DecimalPlaces = 0
              DisplayFormat = '#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 14
              ZeroEmpty = False
              OnClick = CurrVar4Click
              OnEnter = CurrVar4Enter
              OnExit = CurrVar4Exit
            end
            object CurrVar5: TCurrencyEdit
              Left = 336
              Top = 192
              Width = 90
              Height = 21
              AutoSize = False
              DecimalPlaces = 0
              DisplayFormat = '#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 15
              ZeroEmpty = False
              OnClick = CurrVar5Click
              OnEnter = CurrVar5Enter
              OnExit = CurrVar5Exit
            end
            object CurrVar6: TCurrencyEdit
              Left = 336
              Top = 214
              Width = 90
              Height = 21
              AutoSize = False
              DecimalPlaces = 0
              DisplayFormat = '#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 16
              ZeroEmpty = False
              OnClick = CurrVar6Click
              OnEnter = CurrVar6Enter
              OnExit = CurrVar6Exit
            end
            object CurrVar7: TCurrencyEdit
              Left = 336
              Top = 236
              Width = 90
              Height = 21
              AutoSize = False
              DecimalPlaces = 0
              DisplayFormat = '#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 17
              ZeroEmpty = False
              OnClick = CurrVar7Click
              OnEnter = CurrVar7Enter
              OnExit = CurrVar7Exit
            end
            object CurrVar8: TCurrencyEdit
              Left = 336
              Top = 258
              Width = 90
              Height = 21
              AutoSize = False
              DecimalPlaces = 0
              DisplayFormat = '#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 18
              ZeroEmpty = False
              OnClick = CurrVar8Click
              OnEnter = CurrVar8Enter
              OnExit = CurrVar8Exit
            end
            object DBEdit2: TDBEdit
              Left = 244
              Top = 104
              Width = 86
              Height = 21
              TabStop = False
              Color = 14150655
              Ctl3D = True
              DataField = 'PRD_VAR1'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 20
            end
            object DBEdit3: TDBEdit
              Left = 244
              Top = 126
              Width = 86
              Height = 21
              TabStop = False
              Color = 14150655
              Ctl3D = True
              DataField = 'PRD_VAR2'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 21
            end
            object DBEdit4: TDBEdit
              Left = 244
              Top = 148
              Width = 86
              Height = 21
              TabStop = False
              Color = 14150655
              Ctl3D = True
              DataField = 'PRD_VAR3'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 22
            end
            object DBEdit5: TDBEdit
              Left = 244
              Top = 170
              Width = 86
              Height = 21
              TabStop = False
              Color = 14150655
              Ctl3D = True
              DataField = 'PRD_VAR4'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 23
            end
            object DBEdit6: TDBEdit
              Left = 244
              Top = 192
              Width = 86
              Height = 21
              TabStop = False
              Color = 14150655
              Ctl3D = True
              DataField = 'PRD_VAR5'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 24
            end
            object DBEdit7: TDBEdit
              Left = 244
              Top = 214
              Width = 86
              Height = 21
              TabStop = False
              Color = 14150655
              Ctl3D = True
              DataField = 'PRD_VAR6'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 25
            end
            object DBEdit8: TDBEdit
              Left = 244
              Top = 236
              Width = 86
              Height = 21
              TabStop = False
              Color = 14150655
              Ctl3D = True
              DataField = 'PRD_VAR7'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 26
            end
            object DBEdit9: TDBEdit
              Left = 244
              Top = 258
              Width = 86
              Height = 21
              TabStop = False
              Color = 14150655
              Ctl3D = True
              DataField = 'PRD_VAR8'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 27
            end
            object DBEdit10: TDBEdit
              Left = 155
              Top = 104
              Width = 86
              Height = 21
              TabStop = False
              Color = 15925222
              Ctl3D = True
              DataField = 'PRD_RESERVA_VAR1'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 28
            end
            object DBEdit11: TDBEdit
              Left = 155
              Top = 126
              Width = 86
              Height = 21
              TabStop = False
              Color = 15925222
              Ctl3D = True
              DataField = 'PRD_RESERVA_VAR2'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 29
            end
            object DBEdit12: TDBEdit
              Left = 155
              Top = 148
              Width = 86
              Height = 21
              TabStop = False
              Color = 15925222
              Ctl3D = True
              DataField = 'PRD_RESERVA_VAR3'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 30
            end
            object DBEdit13: TDBEdit
              Left = 155
              Top = 170
              Width = 86
              Height = 21
              TabStop = False
              Color = 15925222
              Ctl3D = True
              DataField = 'PRD_RESERVA_VAR4'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 31
            end
            object DBEdit14: TDBEdit
              Left = 155
              Top = 192
              Width = 86
              Height = 21
              TabStop = False
              Color = 15925222
              Ctl3D = True
              DataField = 'PRD_RESERVA_VAR5'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 32
            end
            object DBEdit15: TDBEdit
              Left = 155
              Top = 214
              Width = 86
              Height = 21
              TabStop = False
              Color = 15925222
              Ctl3D = True
              DataField = 'PRD_RESERVA_VAR6'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 33
            end
            object DBEdit16: TDBEdit
              Left = 155
              Top = 236
              Width = 86
              Height = 21
              TabStop = False
              Color = 15925222
              Ctl3D = True
              DataField = 'PRD_RESERVA_VAR7'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 34
            end
            object DBEdit17: TDBEdit
              Left = 155
              Top = 258
              Width = 86
              Height = 21
              TabStop = False
              Color = 15925222
              Ctl3D = True
              DataField = 'PRD_RESERVA_VAR8'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 35
            end
          end
          object BitConfirmar: TBitBtn
            Left = 145
            Top = 343
            Width = 100
            Height = 25
            Caption = 'Co&nfirmar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -12
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
            TabOrder = 0
            OnClick = BitConfirmarClick
          end
          object BitCancelItem: TBitBtn
            Left = 245
            Top = 343
            Width = 100
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
            OnClick = BitCancelItemClick
          end
          object Panel2: TPanel
            Left = 1
            Top = 1
            Width = 436
            Height = 21
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = ' Informe as varia'#231#245'es'
            Color = clNavy
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
        end
        object GrpDesconto: TGroupBox
          Left = 546
          Top = 81
          Width = 159
          Height = 44
          Caption = 'Desconto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
          OnExit = GrpDescontoExit
          object ChkDescto: TDBCheckBox
            Left = 6
            Top = 19
            Width = 140
            Height = 16
            Caption = '&Aplicar desconto na Nota'
            DataField = 'PED_DESCTONF'
            DataSource = DataMovimento.DsPedidos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = ChkDesctoClick
            OnEnter = ChkDesctoEnter
            OnExit = ChkDesctoExit
          end
        end
        object DBePcl_codigo: TDBEdit
          Left = 771
          Top = 27
          Width = 28
          Height = 21
          TabStop = False
          DataField = 'PCL_CODIGO'
          DataSource = DataMovimento.DsPedidos
          TabOrder = 24
          Visible = False
          OnKeyPress = DBeCli_codigoKeyPress
        end
        object CbxPcl1: TComboBoxRw
          Left = 770
          Top = 28
          Width = 180
          Height = 21
          TabOrder = 8
          OnExit = CbxPcl1Exit
          OnChange = CbxPcl1Change
          CharCase = ecUpperCase
          LookupSelect = 'PCL_NOME'
          LookupOrderBy = 'PCL_NOME'
          LookupTable = 'PCL0000'
          GridAutoSize = False
          LookupSource = CbxPcl1.InternalSource
          LookupKeyField = 'PCL_CODIGO'
          ShowButton = True
          LookupTableShare = 'TABELAS'
          Tabela = 'PCL0000'
          CamposCarregar = 'PCL_NOME'
          CamposRetornar = 'PCL_CODIGO'
          CamposOrdernar = 'PCL_NOME'
          ConexaoBanco = DataCadastros.SQLConnection1
          Compartilhar = 'TABELAS'
          Localizado = False
            
          
           
           
             
            
           
           
           
           
           
        end
        object GrpDescto2: TGroupBox
          Left = 708
          Top = 81
          Width = 241
          Height = 44
          TabOrder = 20
          object PanDescV: TPanel
            Left = 142
            Top = 18
            Width = 84
            Height = 24
            BevelOuter = bvNone
            BorderStyle = bsSingle
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Visible = False
            object CurrDesctoVl: TCurrencyEdit
              Left = 5
              Top = 1
              Width = 72
              Height = 20
              AutoSize = False
              DecimalPlaces = 4
              DisplayFormat = '###,###,##0.000'
              Enabled = False
              MaxLength = 15
              TabOrder = 0
              ZeroEmpty = False
              OnClick = CurrDesctoVlClick
              OnEnter = CurrDesctoVlEnter
              OnExit = CurrDesctoVlExit
            end
          end
          object RadDescPorc: TRadioButton
            Left = 6
            Top = 7
            Width = 91
            Height = 15
            Caption = '(%) &Percentual'
            Checked = True
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
            OnClick = RadDescPorcClick
            OnEnter = RadDescPorcEnter
          end
          object RadDescValor: TRadioButton
            Left = 138
            Top = 7
            Width = 72
            Height = 15
            Caption = '(R$) &Valor'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TabStop = True
            OnClick = RadDescValorClick
            OnEnter = RadDescValorEnter
          end
          object PanDescP: TPanel
            Left = 9
            Top = 21
            Width = 206
            Height = 21
            BevelOuter = bvNone
            BorderStyle = bsSingle
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object Label15: TLabel
              Left = 121
              Top = 1
              Width = 6
              Height = 20
              Caption = ' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label49: TLabel
              Left = 187
              Top = 4
              Width = 14
              Height = 16
              Caption = '%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label32: TLabel
              Left = 60
              Top = 0
              Width = 11
              Height = 20
              Caption = '+'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object CurrDesctoIndice: TCurrencyEdit
              Left = 135
              Top = 0
              Width = 55
              Height = 20
              TabStop = False
              AutoSize = False
              Color = 14145495
              DecimalPlaces = 4
              DisplayFormat = '###,###,##0.0000'
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 15
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
              ZeroEmpty = False
              OnExit = CurrDesctoIndiceExit
            end
            object CurrDesctoPc1: TCurrencyEdit
              Left = 2
              Top = -1
              Width = 55
              Height = 20
              AutoSize = False
              DecimalPlaces = 4
              DisplayFormat = '##0.0000'
              Enabled = False
              MaxLength = 15
              TabOrder = 0
              ZeroEmpty = False
              OnClick = CurrDesctoPc1Click
              OnEnter = CurrDesctoPc1Enter
              OnExit = CurrDesctoPc1Exit
            end
            object CurrDesctoPc2: TCurrencyEdit
              Left = 72
              Top = -1
              Width = 55
              Height = 20
              AutoSize = False
              DecimalPlaces = 4
              DisplayFormat = '##0.0000'
              Enabled = False
              MaxLength = 15
              TabOrder = 1
              ZeroEmpty = False
              OnClick = CurrDesctoPc1Click
              OnEnter = CurrDesctoPc2Enter
              OnExit = CurrDesctoPc2Exit
            end
          end
        end
        object DBeCli_codigo: TDBEdit
          Left = 65
          Top = 27
          Width = 40
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_CODIGO'
          DataSource = DataMovimento.DsPedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnChange = DBeCli_codigoChange
          OnClick = DBeCli_codigoClick
          OnEnter = DBeCli_codigoEnter
          OnExit = DBeCli_codigoExit
          OnKeyPress = DBeCli_codigoKeyPress
        end
        object DBeRep_codigo: TDBEdit
          Left = 65
          Top = 50
          Width = 40
          Height = 21
          DataField = 'REP_CODIGO'
          DataSource = DataMovimento.DsPedidos
          TabOrder = 9
          OnExit = DBeRep_codigoExit
          OnKeyPress = DBeCli_codigoKeyPress
        end
        object DbeTRP_CODIGO: TDBEdit
          Tag = 22
          Left = 65
          Top = 73
          Width = 40
          Height = 21
          DataField = 'TRP_CODIGO'
          DataSource = DataMovimento.DsPedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          OnEnter = DbeTRP_CODIGOEnter
          OnExit = DbeTRP_CODIGOExit
          OnKeyPress = DBeCli_codigoKeyPress
        end
        object CbFreteT: TComboBox
          Left = 453
          Top = 73
          Width = 85
          Height = 21
          Hint = 'CIF = Pago  -  FOB = '#224' Pagar'
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
          OnChange = CbFreteTChange
          OnClick = CbTipo1Click
          OnExit = CbFreteTExit
          Items.Strings = (
            ''
            'PAGO'
            #193' PAGAR')
        end
        object CbFreteR: TComboBox
          Left = 453
          Top = 96
          Width = 85
          Height = 21
          Hint = 'CIF = Pago  -  FOB = '#224' Pagar'
          Style = csDropDownList
          CharCase = ecUpperCase
          ItemIndex = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
          OnChange = CbFreteRChange
          OnClick = CbTipo1Click
          OnExit = CbFreteRExit
          Items.Strings = (
            ''
            'PAGO'
            #193' PAGAR')
        end
        object DbeTrp_Redesp: TDBEdit
          Tag = 25
          Left = 65
          Top = 96
          Width = 40
          Height = 21
          DataField = 'TRP_REDESP'
          DataSource = DataMovimento.DsPedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          OnEnter = DbeTrp_RedespEnter
          OnExit = DbeTrp_RedespExit
          OnKeyPress = DBeCli_codigoKeyPress
        end
        object DtEntrada: TDateEdit
          Left = 635
          Top = 4
          Width = 92
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          GlyphKind = gkEllipsis
          NumGlyphs = 1
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 3
          OnButtonClick = DtEntradaButtonClick
          OnEnter = DtEntradaEnter
          OnExit = DtEntradaExit
          OnKeyPress = DtEntradaKeyPress
        end
        object DtEntrega: TDateEdit
          Left = 858
          Top = 4
          Width = 92
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          GlyphKind = gkEllipsis
          NumGlyphs = 1
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 4
          OnButtonClick = DtEntradaButtonClick
          OnEnter = DtEntregaEnter
          OnExit = DtEntregaExit
          OnKeyPress = DtEntregaKeyPress
        end
        object GbComissao: TGroupBox
          Left = 546
          Top = 47
          Width = 402
          Height = 35
          Caption = 'Co&miss'#227'o do Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
          object Lbl_Rep: TLabel
            Left = 23
            Top = 17
            Width = 49
            Height = 13
            Caption = 'Vendedor:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Lbl_Sup: TLabel
            Left = 151
            Top = 17
            Width = 53
            Height = 13
            Caption = 'Supervisor:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Lbl_Ger: TLabel
            Left = 281
            Top = 17
            Width = 41
            Height = 13
            Caption = 'Gerente:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label102: TLabel
            Left = 128
            Top = 15
            Width = 12
            Height = 16
            Caption = '%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label103: TLabel
            Left = 261
            Top = 15
            Width = 12
            Height = 16
            Caption = '%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label104: TLabel
            Left = 378
            Top = 15
            Width = 12
            Height = 16
            Caption = '%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBeComis1: TDBEdit
            Left = 74
            Top = 12
            Width = 52
            Height = 21
            DataField = 'PED_COMIS1'
            DataSource = DataMovimento.DsPedidos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBeComis2: TDBEdit
            Left = 207
            Top = 12
            Width = 52
            Height = 21
            DataField = 'PED_COMIS2'
            DataSource = DataMovimento.DsPedidos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DBeComis3: TDBEdit
            Left = 324
            Top = 12
            Width = 52
            Height = 21
            DataField = 'PED_COMIS3'
            DataSource = DataMovimento.DsPedidos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
        object MskCnpj: TMaskEdit
          Left = 585
          Top = 27
          Width = 141
          Height = 21
          TabStop = False
          Color = 14145495
          ReadOnly = True
          TabOrder = 7
          Text = ''
        end
        object Pn_Botoes: TPanel
          Left = 595
          Top = 594
          Width = 370
          Height = 33
          Cursor = crHandPoint
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Pn_Botoes'
          Color = 12681984
          TabOrder = 21
          object Bit_Sair: TBitBtn
            Left = 275
            Top = 4
            Width = 90
            Height = 25
            Cursor = crHandPoint
            Caption = '&Sair'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            TabOrder = 4
            TabStop = False
            OnClick = Bit_SairClick
          end
          object Bit_Cancelar: TBitBtn
            Left = 274
            Top = 4
            Width = 90
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
            TabOrder = 3
            TabStop = False
            OnClick = Bit_CancelarClick
          end
          object Bit_Gravar: TBitBtn
            Left = 184
            Top = 4
            Width = 90
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
            TabOrder = 2
            TabStop = False
            OnClick = Bit_GravarClick
          end
          object Bit_Excluir: TBitBtn
            Left = 94
            Top = 4
            Width = 90
            Height = 25
            Cursor = crHandPoint
            Hint = '|Exclui registro atual..'
            Caption = '&Excluir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000E0000000E0000000100
              04000000000070000000CE0E0000D80E00001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3300333333333333330033333333333333003333333333333300333333333333
              3300333333333333330033000000000033003300000000003300330000000000
              3300333333333333330033333333333333003333333333333300333333333333
              33003333333333333300}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TabStop = False
            OnClick = Bit_ExcluirClick
          end
          object Bit_novo: TBitBtn
            Left = 4
            Top = 4
            Width = 90
            Height = 25
            Cursor = crHandPoint
            Caption = '&Novo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000E0000000E0000000100
              04000000000070000000CE0E0000D80E00001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3300333333333333330033333333333333003333300033333300333330003333
              3300333330003333330033000000000333003300000000033300330000000003
              3300333330003333330033333000333333003333300033333300333333333333
              33003333333333333300}
            ParentFont = False
            TabOrder = 0
            TabStop = False
            OnClick = Bit_novoClick
          end
        end
        object PanDuplicar: TPanel
          Left = 494
          Top = 594
          Width = 94
          Height = 33
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Color = 12681984
          TabOrder = 22
          object BTN_DUPLICAR: TBitBtn
            Left = 4
            Top = 4
            Width = 85
            Height = 25
            Cursor = crHandPoint
            Hint = 'Duplicar Pedido'
            Caption = '&Duplicar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888888888888888844444444488888884FFFFFFF488888884F0000
              0F480000004FFFFFFF480FFFFF4F00000F480F00004FFFFFFF480FFFFF4F00F4
              44480F00004FFFF4F4880FFFFF4FFFF448880F00F044444488880FFFF0F08888
              88880FFFF0088888888800000088888888888888888888888888}
            Margin = 5
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Spacing = 6
            TabOrder = 0
            TabStop = False
            OnClick = BTN_DUPLICARClick
          end
        end
        object Pn_Relatorio: TPanel
          Left = 8
          Top = 594
          Width = 187
          Height = 33
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Color = 12681984
          TabOrder = 23
          object Bit_Lista: TBitBtn
            Left = 4
            Top = 4
            Width = 89
            Height = 25
            Cursor = crHandPoint
            Caption = '&Consulta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Glyph.Data = {
              CA010000424DCA01000000000000760000002800000027000000110000000100
              04000000000054010000CE0E0000D80E00001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888888888888888880887777777777777777888888888888888888
              8880800000000000000007888888888888888888888080888888888888880788
              8888888888888888888080FF8FF8FF8FF8FF0788888888888888888888808088
              88888888888807888888888888888888888080FF8FF8FF8FF8FF078888888888
              888888888880808888888888888807888888888888888888888080FF8FF8FF8F
              F8FF078888888888888888888880808888888888888807888888888888888888
              888080FF8FF8FF8FF8FF07888888888888888888888080000000000000000788
              8888888888888888888080FF7FF7FF7FF7FF0788888888888888888888808000
              0000000000000788888888888888888888808080CCCCCCCCCCCC078888888888
              8888888888808000000000000000088888888888888888888880888888888888
              8888888888888888888888888880}
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 0
            TabStop = False
            OnClick = Bit_ListaClick
          end
          object Bit_Relatorio: TBitBtn
            Left = 93
            Top = 4
            Width = 90
            Height = 25
            Cursor = crHandPoint
            Caption = 'Rela&t'#243'rios'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
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
            ParentFont = False
            TabOrder = 1
            TabStop = False
            OnClick = Bit_RelatorioClick
          end
        end
        object CbClientes1: TComboBoxRw
          Left = 114
          Top = 27
          Width = 343
          Height = 21
          OnEnter = CbClientes1Enter
          TabOrder = 6
          OnExit = CbClientes1Click
          OnChange = CbClientes1Change
          CharCase = ecUpperCase
          Visible = False
          Enabled = False
          LookupSelect = 'CLI_RAZAO'
          LookupOrderBy = 'CLI_RAZAO'
          LookupTable = 'CLI0000'
          GridAutoSize = False
          LookupSource = CbClientes1.InternalSource
          LookupKeyField = 'CLI_CODIGO'
          ShowButton = True
          LookupTableShare = 'CLIENTES'
          Tabela = 'CLI0000'
          CamposCarregar = 'CLI_RAZAO'
          CamposRetornar = 'CLI_CODIGO'
          CamposOrdernar = 'CLI_RAZAO'
          ConexaoBanco = DataCadastros.SQLConnection1
          Compartilhar = 'CLIENTES'
          Localizado = False
          About = 'Novi Sistemas'
          ItensRetorno.Strings = (
            '00523'
            '00179'
            '00290'
            '00257'
            '00229'
            '00311'
            '00418'
            '00472'
            '00199'
            '00186'
            '00386'
            '00543'
            '00149'
            '00177'
            '00532'
            '00549'
            '00327'
            '00097'
            '00174'
            '00018'
            '00238'
            '00189'
            '00388'
            '00255'
            '00046'
            '00013'
            '00130'
            '00212'
            '00390'
            '00141'
            '00213'
            '00086'
            '00076'
            '00424'
            '00250'
            '00522'
            '00280'
            '00209'
            '00101'
            '00461'
            '00089'
            '00337'
            '00489'
            '00262'
            '00204'
            '00020'
            '00099'
            '00463'
            '00236'
            '00508'
            '00554'
            '00207'
            '00085'
            '00544'
            '00254'
            '00316'
            '00556'
            '00370'
            '00001'
            '00103'
            '00410'
            '00119'
            '00156'
            '00281'
            '00170'
            '00394'
            '00291'
            '00468'
            '00496'
            '00474'
            '00350'
            '00088'
            '00061'
            '00460'
            '00542'
            '00430'
            '00104'
            '00249'
            '00379'
            '00497'
            '00400'
            '00263'
            '00117'
            '00317'
            '00527'
            '00031'
            '00144'
            '00419'
            '00342'
            '00279'
            '00272'
            '00417'
            '00079'
            '00223'
            '00244'
            '00069'
            '00202'
            '00246'
            '00092'
            '00040'
            '00392'
            '00349'
            '00158'
            '00470'
            '00505'
            '00078'
            '00501'
            '00028'
            '00429'
            '00008'
            '00075'
            '00413'
            '00108'
            '00515'
            '00509'
            '00304'
            '00125'
            '00511'
            '00267'
            '00265'
            '00344'
            '00435'
            '00181'
            '00355'
            '00081'
            '00082'
            '00096'
            '00183'
            '00420'
            '00276'
            '00510'
            '00064'
            '00206'
            '00348'
            '00151'
            '00268'
            '00286'
            '00009'
            '00421'
            '00198'
            '00054'
            '00333'
            '00231'
            '00010'
            '00547'
            '00266'
            '00247'
            '00210'
            '00035'
            '00440'
            '00203'
            '00160'
            '00403'
            '00270'
            '00205'
            '00114'
            '00029'
            '00359'
            '00428'
            '00072'
            '00449'
            '00237'
            '00220'
            '00482'
            '00234'
            '00215'
            '00434'
            '00339'
            '00284'
            '00518'
            '00447'
            '00478'
            '00525'
            '00321'
            '00405'
            '00453'
            '00245'
            '00271'
            '00465'
            '00433'
            '00211'
            '00521'
            '00111'
            '00423'
            '00502'
            '00401'
            '00361'
            '00259'
            '00017'
            '00475'
            '00113'
            '00147'
            '00520'
            '00506'
            '00371'
            '00214'
            '00451'
            '00365'
            '00150'
            '00173'
            '00287'
            '00015'
            '00128'
            '00222'
            '00134'
            '00427'
            '00109'
            '00340'
            '00251'
            '00456'
            '00059'
            '00483'
            '00385'
            '00477'
            '00366'
            '00479'
            '00328'
            '00404'
            '00548'
            '00034'
            '00129'
            '00499'
            '00364'
            '00332'
            '00159'
            '00248'
            '00168'
            '00519'
            '00320'
            '00110'
            '00432'
            '00384'
            '00367'
            '00437'
            '00298'
            '00319'
            '00030'
            '00495'
            '00039'
            '00414'
            '00503'
            '00095'
            '00389'
            '00442'
            '00184'
            '00398'
            '00387'
            '00533'
            '00393'
            '00331'
            '00380'
            '00277'
            '00491'
            '00377'
            '00269'
            '00166'
            '00226'
            '00123'
            '00055'
            '00077'
            '00383'
            '00346'
            '00235'
            '00256'
            '00402'
            '00155'
            '00038'
            '00157'
            '00372'
            '00425'
            '00469'
            '00448'
            '00445'
            '00358'
            '00195'
            '00338'
            '00492'
            '00490'
            '00102'
            '00513'
            '00299'
            '00060'
            '00171'
            '00003'
            '00334'
            '00188'
            '00243'
            '00314'
            '00407'
            '00260'
            '00473'
            '00545'
            '00137'
            '00443'
            '00026'
            '00127'
            '00258'
            '00118'
            '00225'
            '00126'
            '00295'
            '00324'
            '00480'
            '00541'
            '00135'
            '00004'
            '00161'
            '00275'
            '00191'
            '00368'
            '00300'
            '00080'
            '00165'
            '00557'
            '00002'
            '00493'
            '00142'
            '00415'
            '00382'
            '00310'
            '00154'
            '00045'
            '00306'
            '00048'
            '00196'
            '00016'
            '00037'
            '00153'
            '00172'
            '00462'
            '00408'
            '00217'
            '00395'
            '00516'
            '00391'
            '00024'
            '00376'
            '00426'
            '00438'
            '00012'
            '00233'
            '00450'
            '00066'
            '00330'
            '00014'
            '00074'
            '00120'
            '00216'
            '00201'
            '00293'
            '00043'
            '00537'
            '00322'
            '00416'
            '00175'
            '00558'
            '00190'
            '00369'
            '00283'
            '00261'
            '00140'
            '00343'
            '00093'
            '00056'
            '00529'
            '00242'
            '00185'
            '00431'
            '00531'
            '00399'
            '00124'
            '00083'
            '00459'
            '00176'
            '00467'
            '00352'
            '00139'
            '00538'
            '00047'
            '00512'
            '00487'
            '00464'
            '00347'
            '00116'
            '00098'
            '00406'
            '00062'
            '00264'
            '00288'
            '00486'
            '00354'
            '00052'
            '00289'
            '00303'
            '00412'
            '00063'
            '00005'
            '00351'
            '00121'
            '00065'
            '00011'
            '00007'
            '00375'
            '00357'
            '00100'
            '00282'
            '00309'
            '00051'
            '00253'
            '00230'
            '00227'
            '00353'
            '00498'
            '00068'
            '00106'
            '00397'
            '00305'
            '00457'
            '00091'
            '00530'
            '00278'
            '00312'
            '00439'
            '00494'
            '00540'
            '00329'
            '00194'
            '00094'
            '00485'
            '00535'
            '00325'
            '00536'
            '00241'
            '00169'
            '00122'
            '00302'
            '00021'
            '00559'
            '00534'
            '00036'
            '00297'
            '00273'
            '00219'
            '00133'
            '00292'
            '00341'
            '00187'
            '00444'
            '00152'
            '00136'
            '00553'
            '00360'
            '00163'
            '00488'
            '00049'
            '00335'
            '00326'
            '00131'
            '00224'
            '00032'
            '00053'
            '00362'
            '00252'
            '00454'
            '00180'
            '00084'
            '00441'
            '00067'
            '00373'
            '00313'
            '00301'
            '00218'
            '00524'
            '00044'
            '00294'
            '00115'
            '00539'
            '00193'
            '00500'
            '00138'
            '00240'
            '00285'
            '00146'
            '00476'
            '00504'
            '00167'
            '00200'
            '00025'
            '00378'
            '00182'
            '00274'
            '00560'
            '00107'
            '00192'
            '00336'
            '00555'
            '00090'
            '00381'
            '00546'
            '00396'
            '00164'
            '00221'
            '00019'
            '00208'
            '00315'
            '00481'
            '00105'
            '00507'
            '00526'
            '00517'
            '00514'
            '00006'
            '00528'
            '00363'
            '00050'
            '00550'
            '00145'
            '00551'
            '00296'
            '00042'
            '00022'
            '00552'
            '00112'
            '00232'
            '00057'
            '00484'
            '00374'
            '00073'
            '00178'
            '00071'
            '00455'
            '00041'
            '00143'
            '00436'
            '00239'
            '00228'
            '00058'
            '00307'
            '00446'
            '00411'
            '00023'
            '00356'
            '00323'
            '00308'
            '00033'
            '00148'
            '00345'
            '00027'
            '00466'
            '00132')
          CodigoDefalut = 'Novi Sistemas'
           
          UniaoTabelas = 'Novi Sistemas'
          Apelido = 'Novi Sistemas'
           
           
           
           
           
        end
        object CbRepresentantes1: TComboBoxRw
          Left = 106
          Top = 50
          Width = 432
          Height = 21
          TabOrder = 10
          OnExit = CbRepresentantes1Exit
          OnChange = CbRepresentantes1Change
          CharCase = ecUpperCase
          LookupSelect = 'REP_NOME'
          LookupOrderBy = 'REP_NOME'
          LookupTable = 'REP0000'
          GridAutoSize = False
          LookupSource = CbRepresentantes1.InternalSource
          LookupKeyField = 'REP_CODIGO'
          ShowButton = True
          LookupTableShare = 'REPRESENTANTES'
          Tabela = 'REP0000'
          CamposCarregar = 'REP_NOME'
          CamposRetornar = 'REP_CODIGO'
          CamposOrdernar = 'REP_NOME'
          ConexaoBanco = DataCadastros.SQLConnection1
          Compartilhar = 'REPRESENTANTES'
          Localizado = False
          About = 'Novi Sistemas'
          ItensRetorno.Strings = (
            '006'
            '014'
            '004'
            '010'
            '005'
            '009'
            '013'
            '008'
            '012'
            '002'
            '011'
            '001'
            '007'
            '003')
          CodigoDefalut = 'Novi Sistemas'
           
          UniaoTabelas = 'Novi Sistemas'
          Apelido = 'Novi Sistemas'
           
           
           
           
           
        end
        object CbTransp1: TComboBoxRw
          Left = 106
          Top = 73
          Width = 345
          Height = 21
          OnEnter = CbTransp1Enter
          TabOrder = 12
          OnExit = CbTransp1Exit
          OnChange = CbTransp1Change
          CharCase = ecUpperCase
          LookupSelect = 'TRP_RAZAO'
          LookupOrderBy = 'TRP_RAZAO'
          LookupTable = 'TRP0000'
          GridAutoSize = False
          LookupSource = CbTransp1.InternalSource
          LookupKeyField = 'TRP_CODIGO'
          ShowButton = True
          LookupTableShare = 'TRANSPORTADORAS'
          Tabela = 'TRP0000'
          CamposCarregar = 'TRP_RAZAO'
          CamposRetornar = 'TRP_CODIGO'
          CamposOrdernar = 'TRP_RAZAO'
          ConexaoBanco = DataCadastros.SQLConnection1
          Compartilhar = 'TRANSPORTADORAS'
          Localizado = False
          About = 'Novi Sistemas'
          CodigoDefalut = 'Novi Sistemas'
           
          UniaoTabelas = 'Novi Sistemas'
          Apelido = 'Novi Sistemas'
           
           
           
           
           
        end
        object CbRedesp1: TComboBoxRw
          Left = 106
          Top = 96
          Width = 345
          Height = 21
          OnEnter = CbRedesp1Enter
          TabOrder = 15
          OnExit = CbRedesp1Exit
          OnChange = CbRedesp1Change
          CharCase = ecUpperCase
          LookupSelect = 'TRP_RAZAO'
          LookupOrderBy = 'TRP_RAZAO'
          LookupTable = 'TRP0000'
          GridAutoSize = False
          LookupSource = CbRedesp1.InternalSource
          LookupKeyField = 'TRP_CODIGO'
          ShowButton = True
          LookupTableShare = 'TRANSPORTADORAS'
          Tabela = 'TRP0000'
          CamposCarregar = 'TRP_RAZAO'
          CamposRetornar = 'TRP_CODIGO'
          CamposOrdernar = 'TRP_RAZAO'
          ConexaoBanco = DataCadastros.SQLConnection1
          Compartilhar = 'TRANSPORTADORAS'
          Localizado = False
          About = 'Novi Sistemas'
          CodigoDefalut = 'Novi Sistemas'
           
          UniaoTabelas = 'Novi Sistemas'
          Apelido = 'Novi Sistemas'
           
           
           
           
           
        end
        object EdtClienteRazao: TEdit
          Left = 107
          Top = 27
          Width = 400
          Height = 21
          CharCase = ecUpperCase
          Color = 14145495
          MaxLength = 50
          TabOrder = 25
        end
        object PanKardex: TPanel
          Left = 305
          Top = 594
          Width = 94
          Height = 33
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Color = 12681984
          TabOrder = 26
          object Bit_Kardex: TBitBtn
            Left = 4
            Top = 4
            Width = 85
            Height = 25
            Cursor = crHandPoint
            Hint = 'Mostra Lista de Produtos'
            Caption = '&Kardex'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E
              8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8EFF00FF8E8E8E
              FFFFFFFFFFFFFAFAFAF2F2F2E9E9E9E0E0E0D9D9D9D4D4D4D4D4D4D4D4D4D4D4
              D4D4D4D4D4D4D48E8E8EFF00FF8E8E8EFFFFFFFFFFFFFFFFFFFAFAFAF2F2F2E9
              E9E9E1E1E1D9D9D9D4D4D4D4D4D4D4D4D4D4D4D4D4D4D48E8E8EFF00FF8E8E8E
              FFFFFF9F9F9F9F9F9F9F9F9FFAFAFA7D7D7D7D7D7D7D7D7DD9D9D96969696969
              69696969D4D4D48E8E8EFF00FF8E8E8EFFFFFF9F9F9F9F9F9F9F9F9FFFFFFF7D
              7D7D7D7D7D7D7D7DE1E1E1696969696969696969D4D4D48E8E8EFF00FF8E8E8E
              FFFFFF9F9F9F9F9F9F9F9F9FFFFFFF7D7D7D7D7D7D7D7D7DEAEAEA6969696969
              69696969D4D4D48E8E8EFF00FF8E8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFF9F9F9F2F2F2E9E9E9E1E1E1D9D9D9D4D4D48E8E8EFF00FF8E8E8E
              FFFFFFB2B2B2B2B2B2B2B2B2FFFFFF727272727272727272F9F9F97676767676
              76767676D9D9D98E8E8EFF00FF8E8E8EFFFFFFB2B2B2B2B2B2B2B2B2FFFFFF72
              7272727272727272FFFFFF767676767676767676E1E1E18E8E8EFF00FF8E8E8E
              FFFFFFB2B2B2B2B2B2B2B2B2FFFFFF727272727272727272FFFFFF7676767676
              76767676EAEAEA8E8E8EFF00FF8E8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF2F2F28E8E8EFF00FF8E8E8E
              8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E
              8E8E8E8E8E8E8E8E8E8EFF00FFFF00FF8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E
              8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8EFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            Margin = 5
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Spacing = 6
            TabOrder = 0
            TabStop = False
            OnClick = Bit_KardexClick
          end
          object Bit_Estoque: TBitBtn
            Left = 5
            Top = 4
            Width = 85
            Height = 25
            Hint = 'Consulta de Produtos'
            Caption = 'Es&toque'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E
              8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8EFF00FF8E8E8E
              FFFFFFFFFFFFFAFAFAF2F2F2E9E9E9E0E0E0D9D9D9D4D4D4D4D4D4D4D4D4D4D4
              D4D4D4D4D4D4D48E8E8EFF00FF8E8E8EFFFFFFFFFFFFFFFFFFFAFAFAF2F2F2E9
              E9E9E1E1E1D9D9D9D4D4D4D4D4D4D4D4D4D4D4D4D4D4D48E8E8EFF00FF8E8E8E
              FFFFFF9F9F9F9F9F9F9F9F9FFAFAFA7D7D7D7D7D7D7D7D7DD9D9D96969696969
              69696969D4D4D48E8E8EFF00FF8E8E8EFFFFFF9F9F9F9F9F9F9F9F9FFFFFFF7D
              7D7D7D7D7D7D7D7DE1E1E1696969696969696969D4D4D48E8E8EFF00FF8E8E8E
              FFFFFF9F9F9F9F9F9F9F9F9FFFFFFF7D7D7D7D7D7D7D7D7DEAEAEA6969696969
              69696969D4D4D48E8E8EFF00FF8E8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFF9F9F9F2F2F2E9E9E9E1E1E1D9D9D9D4D4D48E8E8EFF00FF8E8E8E
              FFFFFFB2B2B2B2B2B2B2B2B2FFFFFF727272727272727272F9F9F97676767676
              76767676D9D9D98E8E8EFF00FF8E8E8EFFFFFFB2B2B2B2B2B2B2B2B2FFFFFF72
              7272727272727272FFFFFF767676767676767676E1E1E18E8E8EFF00FF8E8E8E
              FFFFFFB2B2B2B2B2B2B2B2B2FFFFFF727272727272727272FFFFFF7676767676
              76767676EAEAEA8E8E8EFF00FF8E8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAF2F2F28E8E8EFF00FF8E8E8E
              8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E
              8E8E8E8E8E8E8E8E8E8EFF00FFFF00FF8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E
              8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8EFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TabStop = False
            OnClick = Bit_EstoqueClick
          end
        end
        object PageControl1: TPageControl
          Left = 8
          Top = 161
          Width = 973
          Height = 430
          ActivePage = TabSheet1
          MultiLine = True
          TabOrder = 27
          TabPosition = tpLeft
          OnChange = PageControl1Change
          object TabSheet1: TTabSheet
            Caption = 'Produtos'
            object Grb_Var: TGroupBox
              Left = 0
              Top = 118
              Width = 941
              Height = 51
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 0
              object Label52: TLabel
                Left = 10
                Top = 10
                Width = 146
                Height = 13
                Caption = 'Descri'#231#227'o das Varia'#231#245'es:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label53: TLabel
                Left = 3
                Top = 31
                Width = 154
                Height = 13
                Caption = 'Quantidade das Varia'#231#245'es:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEDcVar1: TDBEdit
                Left = 157
                Top = 8
                Width = 83
                Height = 21
                TabStop = False
                Color = 14145495
                Ctl3D = True
                DataField = 'PRD_DCVAR1'
                DataSource = DataMovimento.DsPedItem
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -7
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = False
                TabOrder = 0
              end
              object DBEDcVar2: TDBEdit
                Left = 239
                Top = 8
                Width = 83
                Height = 21
                TabStop = False
                Color = 14145495
                Ctl3D = True
                DataField = 'PRD_DCVAR2'
                DataSource = DataMovimento.DsPedItem
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -7
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = False
                TabOrder = 1
              end
              object DBEDcVar3: TDBEdit
                Left = 322
                Top = 8
                Width = 83
                Height = 21
                TabStop = False
                Color = 14145495
                Ctl3D = True
                DataField = 'PRD_DCVAR3'
                DataSource = DataMovimento.DsPedItem
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -7
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = False
                TabOrder = 2
              end
              object DBEDcVar4: TDBEdit
                Left = 405
                Top = 8
                Width = 83
                Height = 21
                TabStop = False
                Color = 14145495
                Ctl3D = True
                DataField = 'PRD_DCVAR4'
                DataSource = DataMovimento.DsPedItem
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -7
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = False
                TabOrder = 3
              end
              object DBEDcVar5: TDBEdit
                Left = 489
                Top = 8
                Width = 83
                Height = 21
                TabStop = False
                Color = 14145495
                Ctl3D = True
                DataField = 'PRD_DCVAR5'
                DataSource = DataMovimento.DsPedItem
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -7
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = False
                TabOrder = 4
              end
              object DBEDcVar6: TDBEdit
                Left = 572
                Top = 8
                Width = 83
                Height = 21
                TabStop = False
                Color = 14145495
                Ctl3D = True
                DataField = 'PRD_DCVAR6'
                DataSource = DataMovimento.DsPedItem
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -7
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = False
                TabOrder = 5
              end
              object DBEDcVar7: TDBEdit
                Left = 655
                Top = 8
                Width = 83
                Height = 21
                TabStop = False
                Color = 14145495
                Ctl3D = True
                DataField = 'PRD_DCVAR7'
                DataSource = DataMovimento.DsPedItem
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -7
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = False
                TabOrder = 6
              end
              object DBEDcVar8: TDBEdit
                Left = 738
                Top = 8
                Width = 83
                Height = 21
                TabStop = False
                Color = 14145495
                Ctl3D = True
                DataField = 'PRD_DCVAR8'
                DataSource = DataMovimento.DsPedItem
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -7
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = False
                TabOrder = 7
              end
              object CurrQtde1: TCurrencyEdit
                Left = 157
                Top = 27
                Width = 83
                Height = 19
                TabStop = False
                AutoSize = False
                Color = 14145495
                DecimalPlaces = 0
                DisplayFormat = '#0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 8
                ZeroEmpty = False
              end
              object CurrQtde2: TCurrencyEdit
                Left = 239
                Top = 27
                Width = 83
                Height = 19
                TabStop = False
                AutoSize = False
                Color = 14145495
                DecimalPlaces = 0
                DisplayFormat = '#0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 9
                ZeroEmpty = False
              end
              object CurrQtde3: TCurrencyEdit
                Left = 322
                Top = 27
                Width = 83
                Height = 19
                TabStop = False
                AutoSize = False
                Color = 14145495
                DecimalPlaces = 0
                DisplayFormat = '#0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 10
                ZeroEmpty = False
              end
              object CurrQtde4: TCurrencyEdit
                Left = 405
                Top = 27
                Width = 83
                Height = 19
                TabStop = False
                AutoSize = False
                Color = 14145495
                DecimalPlaces = 0
                DisplayFormat = '#0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 11
                ZeroEmpty = False
              end
              object CurrQtde5: TCurrencyEdit
                Left = 489
                Top = 27
                Width = 83
                Height = 19
                TabStop = False
                AutoSize = False
                Color = 14145495
                DecimalPlaces = 0
                DisplayFormat = '#0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 12
                ZeroEmpty = False
              end
              object CurrQtde6: TCurrencyEdit
                Left = 572
                Top = 27
                Width = 83
                Height = 19
                TabStop = False
                AutoSize = False
                Color = 14145495
                DecimalPlaces = 0
                DisplayFormat = '#0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 13
                ZeroEmpty = False
              end
              object CurrQtde7: TCurrencyEdit
                Left = 655
                Top = 27
                Width = 83
                Height = 19
                TabStop = False
                AutoSize = False
                Color = 14145495
                DecimalPlaces = 0
                DisplayFormat = '#0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 14
                ZeroEmpty = False
              end
              object CurrQtde8: TCurrencyEdit
                Left = 738
                Top = 27
                Width = 83
                Height = 19
                TabStop = False
                AutoSize = False
                Color = 14145495
                DecimalPlaces = 0
                DisplayFormat = '#0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 15
                ZeroEmpty = False
              end
            end
            object Panel3: TPanel
              Left = 0
              Top = 167
              Width = 941
              Height = 30
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = clSilver
              TabOrder = 1
              object Label24: TLabel
                Left = 610
                Top = 9
                Width = 47
                Height = 13
                Caption = 'T.Liquido:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label26: TLabel
                Left = 472
                Top = 9
                Width = 31
                Height = 13
                Caption = 'IPI(+) :'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label10: TLabel
                Left = 318
                Top = 9
                Width = 61
                Height = 13
                Caption = 'Desconto (-):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label28: TLabel
                Left = 758
                Top = 10
                Width = 78
                Height = 13
                Caption = 'Total do Pedido:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label33: TLabel
                Left = 5
                Top = 8
                Width = 26
                Height = 13
                Caption = 'Itens:'
              end
              object Label27: TLabel
                Left = 177
                Top = 8
                Width = 26
                Height = 13
                Caption = 'Qtde:'
              end
              object Label67: TLabel
                Left = 78
                Top = 8
                Width = 27
                Height = 13
                Caption = 'Peso:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object CurrTotal: TCurrencyEdit
                Left = 838
                Top = 5
                Width = 85
                Height = 21
                TabStop = False
                AutoSize = False
                Color = 14145495
                DisplayFormat = '###,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 5
                ZeroEmpty = False
              end
              object CurrTotIpi: TCurrencyEdit
                Left = 506
                Top = 5
                Width = 75
                Height = 21
                TabStop = False
                AutoSize = False
                Color = 14145495
                DisplayFormat = '###,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 4
                ZeroEmpty = False
              end
              object CurrDesconto: TCurrencyEdit
                Left = 380
                Top = 5
                Width = 75
                Height = 21
                TabStop = False
                AutoSize = False
                Color = 14145495
                DisplayFormat = '###,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 3
                ZeroEmpty = False
              end
              object CurrSubTotal: TCurrencyEdit
                Left = 658
                Top = 5
                Width = 85
                Height = 21
                TabStop = False
                AutoSize = False
                Color = 14145495
                DisplayFormat = '###,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 2
                ZeroEmpty = False
              end
              object DBedtItensPedidos: TDBEdit
                Left = 34
                Top = 5
                Width = 32
                Height = 21
                TabStop = False
                Color = 14145495
                DataField = 'PRF_QTDE_ITENS'
                DataSource = DataMovimento.DsPedItem
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
              end
              object CurrTotalQtde: TCurrencyEdit
                Left = 207
                Top = 5
                Width = 76
                Height = 21
                TabStop = False
                AutoSize = False
                Color = 14145495
                DisplayFormat = '###,###,###0.000'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
              end
              object CurrTotalPeso: TCurrencyEdit
                Left = 107
                Top = 5
                Width = 57
                Height = 21
                TabStop = False
                AutoSize = False
                Color = 14145495
                DisplayFormat = '###,###,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 6
                ZeroEmpty = False
              end
            end
            object GbAviso: TGroupBox
              Left = 228
              Top = 375
              Width = 710
              Height = 43
              Caption = 'Mensagem Adicional - Nota Fiscal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              TabStop = True
              object DBEdit26: TDBEdit
                Left = 13
                Top = 16
                Width = 673
                Height = 21
                CharCase = ecUpperCase
                DataField = 'PED_OBSNOTA'
                DataSource = DataMovimento.DsPedidos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnKeyPress = DBEdit26KeyPress
              end
            end
            object GbObs: TGroupBox
              Left = 227
              Top = 283
              Width = 712
              Height = 89
              Caption = 'Observa'#231#245'es do Pedido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              TabStop = True
              object ScrollBox1: TScrollBox
                Left = 4
                Top = 14
                Width = 693
                Height = 70
                TabOrder = 0
                OnEnter = ScrollBox1Enter
                object DbePedObs1: TDBEdit
                  Left = 3
                  Top = 1
                  Width = 665
                  Height = 13
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  DataField = 'PED_OBSG1'
                  DataSource = DataMovimento.DsPedidos
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DbePedObs2: TDBEdit
                  Left = 3
                  Top = 14
                  Width = 665
                  Height = 13
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  DataField = 'PED_OBSG2'
                  DataSource = DataMovimento.DsPedidos
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object DbePedObs3: TDBEdit
                  Left = 3
                  Top = 26
                  Width = 665
                  Height = 14
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  DataField = 'PED_OBSG3'
                  DataSource = DataMovimento.DsPedidos
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
                object DbePedObs4: TDBEdit
                  Left = 3
                  Top = 40
                  Width = 665
                  Height = 13
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  DataField = 'PED_OBSG4'
                  DataSource = DataMovimento.DsPedidos
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                end
                object DbePedObs5: TDBEdit
                  Left = 3
                  Top = 53
                  Width = 665
                  Height = 13
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  DataField = 'PED_OBSG5'
                  DataSource = DataMovimento.DsPedidos
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 4
                end
                object DbePedObs6: TDBEdit
                  Left = 4
                  Top = 66
                  Width = 665
                  Height = 26
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  DataField = 'PED_OBSG6'
                  DataSource = DataMovimento.DsPedidos
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 5
                end
                object DbePedObs7: TDBEdit
                  Left = 4
                  Top = 78
                  Width = 665
                  Height = 15
                  BorderStyle = bsNone
                  CharCase = ecUpperCase
                  DataField = 'PED_OBSG7'
                  DataSource = DataMovimento.DsPedidos
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 6
                  OnKeyPress = DbePedObs7KeyPress
                end
              end
            end
            object DBGridItensPed: TDBGrid
              Left = 0
              Top = 0
              Width = 940
              Height = 121
              Hint = 'Duplo clique p/ Alterar ou Bot'#227'o dir. Mouse p/ Excluir'
              TabStop = False
              Color = 16776176
              DataSource = DataMovimento.DsPedItem
              FixedColor = 12681984
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              ParentFont = False
              ParentShowHint = False
              PopupMenu = PopupMenu1
              ReadOnly = True
              ShowHint = True
              TabOrder = 4
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDrawColumnCell = DBGridItensPedDrawColumnCell
              OnDblClick = DBGridItensPedDblClick
              OnKeyDown = DBGridItensPedKeyDown
              OnKeyPress = DBGridItensPedKeyPress
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CC_RECNO'
                  Title.Alignment = taCenter
                  Title.Caption = 'id'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 20
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRD_REFER'
                  ReadOnly = False
                  Title.Alignment = taCenter
                  Title.Caption = 'Refer'#234'ncia'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRF_PRDDESCRI'
                  ReadOnly = False
                  Title.Alignment = taCenter
                  Title.Caption = 'Descri'#231#227'o'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 400
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRF_QTDE'
                  ReadOnly = False
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtde'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 78
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRF_QTDEFAT'
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtde Fat.'
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
                  FieldName = 'PRF_PRECO'
                  ReadOnly = False
                  Title.Alignment = taCenter
                  Title.Caption = 'Pre'#231'o'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 72
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRF_TOTAL_CC'
                  ReadOnly = False
                  Title.Alignment = taCenter
                  Title.Caption = 'Total'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 81
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRF_IPIALIQ'
                  ReadOnly = False
                  Title.Alignment = taCenter
                  Title.Caption = 'IPI'
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
                  FieldName = 'PRF_ORIGEM_ITEM'
                  Title.Alignment = taCenter
                  Title.Caption = '*'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 14
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRF_ITEMCOMIS'
                  Title.Alignment = taCenter
                  Title.Caption = 'Com'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 45
                  Visible = True
                end>
            end
            object Panel7: TPanel
              Left = 6
              Top = 287
              Width = 203
              Height = 136
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Caption = 'Panel7'
              TabOrder = 5
              object ImgProduto: TImage
                Left = 10
                Top = 5
                Width = 180
                Height = 125
                Picture.Data = {
                  0A544A504547496D61676503060000FFD8FFE000104A46494600010101012C01
                  2C0000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
                  0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
                  3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
                  3232323232323232323232323232323232323232323232323232323232323232
                  32323232323232323232323232FFC00011080099009C03012200021101031101
                  FFC4001F0000010501010101010100000000000000000102030405060708090A
                  0BFFC400B5100002010303020403050504040000017D01020300041105122131
                  410613516107227114328191A1082342B1C11552D1F02433627282090A161718
                  191A25262728292A3435363738393A434445464748494A535455565758595A63
                  6465666768696A737475767778797A838485868788898A92939495969798999A
                  A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
                  D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
                  01010101010101010000000000000102030405060708090A0BFFC400B5110002
                  0102040403040705040400010277000102031104052131061241510761711322
                  328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
                  292A35363738393A434445464748494A535455565758595A636465666768696A
                  737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
                  A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
                  E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
                  28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
                  28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
                  28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
                  28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
                  28ACBD6B5092CA08D613B64909C3633803AFF31FAD006A5158FA3417C08B8B99
                  D9E2923F951A42C4648C1F4E9FCEB62800A28A8AE6430DACD2A8059119867A64
                  0A00968ACBD1F529B50F3BCD58D766DC6C0475CFBFB56A500145145001451450
                  01451450014514500145145001451450015CD788A174B98E56999964CED43D13
                  00671F5AE96B03C4DFF2EBFF0003FE9401774981EDACC4B2DD33A3C6AC03F023
                  18CFAFBFE95423BABDD66EDE38666B78132772820E3B6707AFB671C5692A97D0
                  02A8258DAE00039276D677865806B95C8DC429033CE39FF114003DD5E68D78B1
                  CF33DCDBB8CE5873EF827B8F4CF7F7ABDAB40F7366658AE991123662139120C6
                  7D7DBF5AA3E26605AD9723700C48CF38E3FC0D68B294D00AB02185AE08239076
                  D00636856D24F33BA5C3C4B1B21655CE1C73C1E7DBF5AD4D67526B18D1212BE7
                  3E7A8CED1EBF9FF23553C33FF2F5FF0000FEB50789148BE89B0769880071C672
                  7FC450058FB0EA7F65FB57DBA5F3B1E679383F5C63FA63DAADE91A99BE88A4B8
                  1346393FDE1EB8FE75A3E62797E66F5D98DDBB3C63D735CDF86D49BE95B07688
                  88271C6723FC0D0074D4514500145145001451450014514500145145001597AC
                  69B36A1E4F94D1AECDD9DE48EB8F6F6AD4A28022B68CC36B0C4C416445538E99
                  02B326D1E58AE8DCE9D32C2C7AA11F2FBFAFB718AD8A28031E1D1E596E85CEA3
                  32CCC3A201F2FB7A7BF18AD6911658DA3719560548F5069D450060C1A25CDADF
                  ACB04EA210E09F98862B90483815A97D6315FC1E5C9C30E51C755356A8A00C3F
                  ECCD53C9FB2FDB63FB37DDFF006B6FE5FA67DAB4AC6C62B083CB8F963CBB9EAC
                  6AD5140051451400514514005145140051451400514514005145140051451400
                  5145140051451400514514005145140051451400514514005145140051451400
                  5145140051451400514514005145140051451400514514005145140051451400
                  5145140051451400514514005145140051451400514514005145140051451400
                  5145140051451400514514005145140051451400514514005145140051451400
                  51451400514514005145140051451401FFD9}
                Stretch = True
              end
            end
            object PageControl2: TPageControl
              Left = -1
              Top = 195
              Width = 941
              Height = 89
              ActivePage = TabSheet4
              MultiLine = True
              TabOrder = 6
              TabPosition = tpLeft
              object TabSheet4: TTabSheet
                Caption = 'Item'
                OnShow = TabSheet4Show
                object GbItem: TGroupBox
                  Left = 2
                  Top = 0
                  Width = 913
                  Height = 76
                  TabOrder = 0
                  TabStop = True
                  object Label5: TLabel
                    Left = 11
                    Top = 16
                    Width = 52
                    Height = 13
                    Caption = '&Refer'#234'ncia'
                    FocusControl = CbRef
                  end
                  object Label11: TLabel
                    Left = 331
                    Top = 52
                    Width = 26
                    Height = 13
                    Caption = 'Qtde '
                  end
                  object Label30: TLabel
                    Left = 713
                    Top = 53
                    Width = 51
                    Height = 13
                    Caption = 'Pre'#231'o Liq. '
                  end
                  object Label35: TLabel
                    Left = 845
                    Top = 53
                    Width = 27
                    Height = 13
                    Caption = 'IPI % '
                  end
                  object Label9: TLabel
                    Left = 436
                    Top = 53
                    Width = 56
                    Height = 13
                    Caption = 'Pre'#231'o Bruto'
                  end
                  object Label14: TLabel
                    Left = 172
                    Top = 16
                    Width = 51
                    Height = 13
                    Caption = 'Descri'#231#227'o '
                  end
                  object Label37: TLabel
                    Left = 798
                    Top = 17
                    Width = 27
                    Height = 13
                    Caption = 'Saldo'
                  end
                  object SpPesquisa: TSpeedButton
                    Left = 713
                    Top = 13
                    Width = 24
                    Height = 21
                    Hint = 'Busca Produto'
                    Flat = True
                    Glyph.Data = {
                      36030000424D3603000000000000360000002800000010000000100000000100
                      18000000000000030000120B0000120B00000000000000000000FF00FF314B62
                      AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                      FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
                      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
                      106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                      FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
                      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                      37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
                      00FF9C6B65AF887BAF887EAA8075FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                      FF00FFFF00FF3BABFFA1CAE7AD8679A98373E0CFB1FFFFDAFFFFDDFCF8CFCCB2
                      9FA1746BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC0917DFC
                      E9ACFFFFCCFFFFCFFFFFD0FFFFDEFFFFFAE3D3D1996965FF00FFFF00FFFF00FF
                      FF00FFFF00FFFF00FFFF00FFB08978FAD192FEF4C2FFFFD0FFFFDAFFFFF6FFFF
                      FCFFFFFCB69384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB08978FEDA97ED
                      B478FBEEBBFFFFD3FFFFDCFFFFF4FFFFF4FFFFE2E9DDBCA67B73FF00FFFF00FF
                      FF00FFFF00FFFF00FFB18A78FFDE99E9A167F4D199FEFCCCFFFFD5FFFFDAFFFF
                      DCFFFFD7EFE6C5A97E75FF00FFFF00FFFF00FFFF00FFFF00FFAA7F73FAE0A4F0
                      B778EEBA7BF6DDA6FEFBCCFFFFD3FFFFD1FFFFD7D9C5A7A3756CFF00FFFF00FF
                      FF00FFFF00FFFF00FFFF00FFCEB293FFFEDDF4D1A5EEBA7BF2C78FF8E1ABFCF0
                      BAFCFACAA3776FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1746BE1
                      D4D3FFFEEEF7CC8CF0B473F7C788FCE3A5C2A088A5776CFF00FFFF00FFFF00FF
                      FF00FFFF00FFFF00FFFF00FFFF00FF986865BA9587EAD7A4EAD59EE0C097A577
                      6CA5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                      00FFFF00FFA77E70A98073A4786EFF00FFFF00FFFF00FFFF00FF}
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpPesquisaClick
                  end
                  object Label34: TLabel
                    Left = 572
                    Top = 53
                    Width = 37
                    Height = 13
                    Caption = 'Descto '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                  end
                  object LblAlmox: TLabel
                    Left = 4
                    Top = 53
                    Width = 60
                    Height = 13
                    Caption = 'Almoxarifado'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label100: TLabel
                    Left = 658
                    Top = 51
                    Width = 9
                    Height = 20
                    Caption = '+'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                  end
                  object CurrIPI: TCurrencyEdit
                    Left = 873
                    Top = 49
                    Width = 35
                    Height = 21
                    AutoSize = False
                    DisplayFormat = '###,###,##0.00'
                    MaxLength = 2
                    TabOrder = 11
                    ZeroEmpty = False
                    OnExit = CurrIPIExit
                  end
                  object EdDescricao: TEdit
                    Left = 224
                    Top = 13
                    Width = 486
                    Height = 21
                    CharCase = ecUpperCase
                    Color = 14145495
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -8
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    MaxLength = 100
                    ParentFont = False
                    TabOrder = 1
                    OnExit = EdDescricaoExit
                  end
                  object CurrQtde: TCurrencyEdit
                    Left = 358
                    Top = 49
                    Width = 75
                    Height = 21
                    AutoSize = False
                    DecimalPlaces = 3
                    DisplayFormat = ',0.000;-,0.000'
                    TabOrder = 6
                    ZeroEmpty = False
                    OnEnter = CurrQtdeEnter
                    OnExit = CurrQtdeExit
                  end
                  object CurrPreco: TCurrencyEdit
                    Left = 762
                    Top = 49
                    Width = 80
                    Height = 21
                    TabStop = False
                    AutoSize = False
                    DecimalPlaces = 4
                    DisplayFormat = '###,###,##0.0000'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlue
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 10
                    ZeroEmpty = False
                  end
                  object CurrPrecoBruto: TCurrencyEdit
                    Left = 494
                    Top = 49
                    Width = 75
                    Height = 21
                    AutoSize = False
                    DecimalPlaces = 4
                    DisplayFormat = '###,###,##0.0000'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 7
                    ZeroEmpty = False
                    OnExit = CurrPrecoBrutoExit
                  end
                  object CurrSaldo: TCurrencyEdit
                    Left = 828
                    Top = 13
                    Width = 80
                    Height = 21
                    TabStop = False
                    AutoSize = False
                    Color = clSilver
                    DisplayFormat = ',0.000;-,0.000'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlue
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 5
                    ZeroEmpty = False
                  end
                  object CurrDesc1: TCurrencyEdit
                    Left = 610
                    Top = 49
                    Width = 45
                    Height = 21
                    AutoSize = False
                    DisplayFormat = '#,0.00%'
                    MaxLength = 10
                    TabOrder = 8
                    ZeroEmpty = False
                  end
                  object CurrDesc2: TCurrencyEdit
                    Left = 668
                    Top = 49
                    Width = 42
                    Height = 21
                    AutoSize = False
                    DisplayFormat = '#,0.00%'
                    MaxLength = 10
                    TabOrder = 9
                    ZeroEmpty = False
                    OnExit = CurrDesc2Exit
                  end
                  object CbRef: TComboBox
                    Left = 66
                    Top = 13
                    Width = 100
                    Height = 21
                    CharCase = ecUpperCase
                    MaxLength = 11
                    TabOrder = 0
                    OnChange = CbRefChange
                    OnExit = CbRefExit
                  end
                  object Chk_Agregado: TCheckBox
                    Left = 740
                    Top = 15
                    Width = 37
                    Height = 18
                    Hint = 'Produto Agregado (Sim/N'#227'o)'
                    Caption = 'Sim'
                    Enabled = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 2
                    OnClick = Chk_AgregadoClick
                  end
                  object DBeAlmox: TDBEdit
                    Tag = 25
                    Left = 66
                    Top = 49
                    Width = 40
                    Height = 21
                    DataField = 'AMX_CODIGO'
                    DataSource = DataMovimento.DsPedidos
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 3
                    OnEnter = DBeAlmoxEnter
                    OnExit = DBeAlmoxExit
                    OnKeyPress = DBeCli_codigoKeyPress
                  end
                  object CbAlmox1: TComboBoxRw
                    Left = 106
                    Top = 49
                    Width = 222
                    Height = 21
                    OnEnter = CbAlmox1Enter
                    TabOrder = 4
                    OnExit = CbAlmox1Exit
                    OnChange = CbAlmox1Change
                    CharCase = ecUpperCase
                    LookupSelect = 'AMX_DESCRI'
                    LookupOrderBy = 'AMX_DESCRI'
                    LookupTable = 'ALMOX0000'
                    GridAutoSize = False
                    LookupSource = CbAlmox1.InternalSource
                    LookupKeyField = 'AMX_CODIGO'
                    ShowButton = True
                    LookupTableShare = 'TABELAS'
                    Tabela = 'ALMOX0000'
                    CamposCarregar = 'AMX_DESCRI'
                    CamposRetornar = 'AMX_CODIGO'
                    CamposOrdernar = 'AMX_DESCRI'
                    ConexaoBanco = DataCadastros.SQLConnection1
                    Compartilhar = 'TABELAS'
                    Localizado = False
                    About = 'Novi Sistemas'
                    CodigoDefalut = 'Novi Sistemas'
                     
                    UniaoTabelas = 'Novi Sistemas'
                    Apelido = 'Novi Sistemas'
                     
                     
                     
                     
                     
                  end
                end
              end
              object TabSheet5: TTabSheet
                Caption = 'CD'
                ImageIndex = 1
                OnShow = TabSheet5Show
                ExplicitLeft = 0
                ExplicitTop = 0
                ExplicitWidth = 0
                ExplicitHeight = 0
                object GroupBox15: TGroupBox
                  Left = 10
                  Top = 5
                  Width = 903
                  Height = 70
                  Caption = 'Complemento da descri'#231#227'o do item'
                  TabOrder = 0
                  object Label19: TLabel
                    Left = 21
                    Top = 24
                    Width = 51
                    Height = 13
                    Caption = 'Descri'#231#227'o '
                  end
                  object Label101: TLabel
                    Left = 7
                    Top = 50
                    Width = 64
                    Height = 13
                    Caption = 'Complemento'
                  end
                  object EdDescricaoClone: TEdit
                    Left = 74
                    Top = 21
                    Width = 650
                    Height = 21
                    CharCase = ecUpperCase
                    Color = 14145495
                    Enabled = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -8
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    MaxLength = 100
                    ParentFont = False
                    TabOrder = 0
                  end
                  object EdComplemento: TEdit
                    Left = 74
                    Top = 45
                    Width = 823
                    Height = 21
                    CharCase = ecUpperCase
                    Color = clWhite
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -8
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    MaxLength = 150
                    ParentFont = False
                    TabOrder = 1
                  end
                end
              end
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'Notas Fiscais'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label6: TLabel
              Left = 8
              Top = 99
              Width = 55
              Height = 13
              Caption = 'Base Icms :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 8
              Top = 122
              Width = 55
              Height = 13
              Caption = 'Valor Icms :'
            end
            object Label8: TLabel
              Left = 208
              Top = 99
              Width = 44
              Height = 13
              Caption = 'Base Ipi :'
            end
            object Label12: TLabel
              Left = 208
              Top = 122
              Width = 44
              Height = 13
              Caption = 'Valor Ipi :'
            end
            object Label13: TLabel
              Left = 421
              Top = 99
              Width = 85
              Height = 13
              Caption = 'Base Icms Subst :'
            end
            object Label16: TLabel
              Left = 421
              Top = 123
              Width = 85
              Height = 13
              Caption = 'Valor Icms Subst :'
            end
            object Label21: TLabel
              Left = 653
              Top = 100
              Width = 46
              Height = 13
              Caption = 'Base Iss :'
            end
            object Label22: TLabel
              Left = 652
              Top = 122
              Width = 46
              Height = 13
              Caption = 'Valor Iss :'
            end
            object Label40: TLabel
              Left = 7
              Top = 143
              Width = 72
              Height = 13
              Caption = 'Valor do Frete :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label41: TLabel
              Left = 170
              Top = 142
              Width = 82
              Height = 13
              Caption = 'Valor do Seguro :'
            end
            object Label42: TLabel
              Left = 420
              Top = 144
              Width = 85
              Height = 13
              Caption = 'Desp Acess'#243'rias :'
            end
            object DBGrid1: TDBGrid
              Left = 0
              Top = 0
              Width = 946
              Height = 93
              TabStop = False
              Align = alTop
              Color = 16776176
              DataSource = DataMovimento.DsNotaFiscal
              FixedColor = 12681984
              Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'NF_NUM_NFE'
                  Title.Alignment = taCenter
                  Title.Caption = 'NFE'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 52
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NF_NOTANUMBER'
                  Title.Alignment = taCenter
                  Title.Caption = 'Fatura'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 61
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'NF_EMISSAO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Emiss'#227'o'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 76
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'NF_SAIDA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Saida'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 70
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'NF_HORASAIDA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Hora Saida'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 68
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'OPE_NATUREZA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Opera'#231#227'o'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 61
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NF_TOT_PROD'
                  Title.Alignment = taCenter
                  Title.Caption = 'Total Produtos'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 89
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NF_TOT_NOTA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Total Nota'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 92
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NF_ALIQ_ICMS'
                  Title.Alignment = taCenter
                  Title.Caption = 'Aliq. ICMS'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 63
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NF_TIPO_CC'
                  Title.Alignment = taCenter
                  Title.Caption = 'Tipo'
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
                  FieldName = 'NF_STATUS_CC'
                  Title.Alignment = taCenter
                  Title.Caption = 'Cancel.'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 59
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NF_SERIE'
                  Title.Caption = 'S'#233'rie'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NF_MODELO_NF'
                  Title.Caption = 'Modelo'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 64
                  Visible = True
                end>
            end
            object DBEdtNF_BASEICMS: TDBEdit
              Left = 80
              Top = 95
              Width = 80
              Height = 21
              TabStop = False
              Color = 14145495
              DataField = 'NF_BASEICMS'
              DataSource = DataMovimento.DsNotaFiscal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdtNF_VL_ICMS: TDBEdit
              Left = 80
              Top = 117
              Width = 80
              Height = 21
              TabStop = False
              Color = 14145495
              DataField = 'NF_VL_ICMS'
              DataSource = DataMovimento.DsNotaFiscal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object DBEdtNF_BASE_IPI: TDBEdit
              Left = 256
              Top = 95
              Width = 80
              Height = 21
              TabStop = False
              Color = 14145495
              DataField = 'NF_BASE_IPI'
              DataSource = DataMovimento.DsNotaFiscal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdtNF_VL_IPI: TDBEdit
              Left = 256
              Top = 117
              Width = 80
              Height = 21
              TabStop = False
              Color = 14145495
              DataField = 'NF_VL_IPI'
              DataSource = DataMovimento.DsNotaFiscal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
            end
            object DBEdtNF_VLBASESUBTRIB: TDBEdit
              Left = 508
              Top = 95
              Width = 80
              Height = 21
              TabStop = False
              Color = 14145495
              DataField = 'NF_VLBASESUBTRIB'
              DataSource = DataMovimento.DsNotaFiscal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 7
            end
            object DBEdtNF_VL_SUBTRIB: TDBEdit
              Left = 508
              Top = 117
              Width = 80
              Height = 21
              TabStop = False
              Color = 14145495
              DataField = 'NF_VL_SUBTRIB'
              DataSource = DataMovimento.DsNotaFiscal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 8
            end
            object DBEdtNF_BASE_ISS: TDBEdit
              Left = 701
              Top = 95
              Width = 80
              Height = 21
              TabStop = False
              Color = 14145495
              DataField = 'NF_BASE_ISS'
              DataSource = DataMovimento.DsNotaFiscal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 10
            end
            object DBEdtNF_VALOR_ISS: TDBEdit
              Left = 701
              Top = 117
              Width = 80
              Height = 21
              TabStop = False
              Color = 14145495
              DataField = 'NF_VALOR_ISS'
              DataSource = DataMovimento.DsNotaFiscal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 11
            end
            object DBEdtNF_VLFRETE: TDBEdit
              Left = 80
              Top = 139
              Width = 80
              Height = 21
              TabStop = False
              Color = 14145495
              DataField = 'NF_VLFRETE'
              DataSource = DataMovimento.DsNotaFiscal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdtNF_VLSEGURO: TDBEdit
              Left = 256
              Top = 139
              Width = 80
              Height = 21
              TabStop = False
              Color = 14145495
              DataField = 'NF_VLSEGURO'
              DataSource = DataMovimento.DsNotaFiscal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 6
            end
            object DBEdtNF_DESP_ACES: TDBEdit
              Left = 508
              Top = 139
              Width = 80
              Height = 21
              TabStop = False
              Color = 14145495
              DataField = 'NF_DESP_ACES'
              DataSource = DataMovimento.DsNotaFiscal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 9
            end
            object GroupBox3: TGroupBox
              Left = 0
              Top = 292
              Width = 809
              Height = 39
              Caption = 'Transporte'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
              object Label43: TLabel
                Left = 6
                Top = 18
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
              object Label44: TLabel
                Left = 89
                Top = 18
                Width = 44
                Height = 13
                Caption = 'Especie :'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label45: TLabel
                Left = 242
                Top = 18
                Width = 36
                Height = 13
                Caption = 'Marca :'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label46: TLabel
                Left = 383
                Top = 18
                Width = 43
                Height = 13
                Caption = 'N'#250'mero :'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label47: TLabel
                Left = 536
                Top = 18
                Width = 58
                Height = 13
                Caption = 'Peso Bruto :'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label48: TLabel
                Left = 664
                Top = 18
                Width = 70
                Height = 13
                Caption = 'Peso Liquido  :'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit20: TDBEdit
                Left = 40
                Top = 14
                Width = 43
                Height = 21
                Color = 14145495
                DataField = 'NF_QTDE'
                DataSource = DataMovimento.DsNotaFiscal
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
              end
              object DBEdit21: TDBEdit
                Left = 136
                Top = 14
                Width = 83
                Height = 21
                Color = 14145495
                DataField = 'NF_ESPECIE'
                DataSource = DataMovimento.DsNotaFiscal
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
              end
              object DBEdit22: TDBEdit
                Left = 280
                Top = 14
                Width = 99
                Height = 21
                Color = 14145495
                DataField = 'NF_MARCA'
                DataSource = DataMovimento.DsNotaFiscal
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 2
              end
              object DBEdit23: TDBEdit
                Left = 430
                Top = 14
                Width = 88
                Height = 21
                Color = 14145495
                DataField = 'NF_NUMERO'
                DataSource = DataMovimento.DsNotaFiscal
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 3
              end
              object DBEdit24: TDBEdit
                Left = 598
                Top = 14
                Width = 60
                Height = 21
                Color = 14145495
                DataField = 'NF_PESOBRU'
                DataSource = DataMovimento.DsNotaFiscal
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 4
              end
              object DBEdit25: TDBEdit
                Left = 736
                Top = 14
                Width = 60
                Height = 21
                Color = 14145495
                DataField = 'NF_PESOLIQ'
                DataSource = DataMovimento.DsNotaFiscal
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 5
              end
            end
            object DBGrid3: TDBGrid
              Left = 0
              Top = 162
              Width = 809
              Height = 130
              TabStop = False
              Color = 16776176
              DataSource = DataMovimento.DsItemNota
              FixedColor = 12681984
              Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ReadOnly = True
              TabOrder = 13
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'PRD_REFER'
                  Title.Alignment = taCenter
                  Title.Caption = 'Referencia'
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
                  FieldName = 'PRD_DESCRI'
                  Title.Alignment = taCenter
                  Title.Caption = 'Descri'#231#227'o'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 347
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NF_QTDE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Qtde'
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
                  FieldName = 'NF_PRECO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Pre'#231'o Un.'
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
                  FieldName = 'NF_TOTAL_CC'
                  Title.Alignment = taCenter
                  Title.Caption = 'Pre'#231'o Total'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 77
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NF_IPIALIQ'
                  Title.Alignment = taCenter
                  Title.Caption = 'IPI'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 52
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NF_TOTAL_IPI_CC'
                  Title.Caption = 'Total C/IPI'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWhite
                  Title.Font.Height = -11
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 77
                  Visible = True
                end>
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'Importa'#231#227'o'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object GroupBox13: TGroupBox
              Left = 0
              Top = 0
              Width = 946
              Height = 193
              Align = alTop
              Caption = 'Documento de Importa'#231#227'o'
              TabOrder = 0
              object Label91: TLabel
                Left = 8
                Top = 24
                Width = 118
                Height = 13
                Caption = 'Documento (DI/DSI/DA)'
              end
              object Label92: TLabel
                Left = 136
                Top = 24
                Width = 102
                Height = 13
                Caption = 'Registro (DI/DSI/DA)'
              end
              object Label93: TLabel
                Left = 248
                Top = 24
                Width = 95
                Height = 13
                Caption = 'Local Desembara'#231'o'
              end
              object Label94: TLabel
                Left = 520
                Top = 24
                Width = 89
                Height = 13
                Caption = 'UF (Desembara'#231'o)'
              end
              object Label95: TLabel
                Left = 616
                Top = 24
                Width = 95
                Height = 13
                Caption = 'Desembara'#231'ado em'
              end
              object Label96: TLabel
                Left = 728
                Top = 24
                Width = 87
                Height = 13
                Caption = 'C'#243'digo Exportador'
              end
              object DBGrid6: TDBGrid
                Left = 2
                Top = 104
                Width = 942
                Height = 87
                Align = alBottom
                DataSource = DSPedidoDI
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'PID_NUMERO_DI'
                    Title.Caption = 'Documento'
                    Width = 95
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PID_DATA_DI'
                    Title.Caption = 'Registro'
                    Width = 91
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PID_LOCAL_DESEMBARACO'
                    Title.Caption = 'Local Desembara'#231'o'
                    Width = 405
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PID_UF_DESEMBARACO'
                    Title.Caption = 'UF'
                    Width = 23
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PID_DATA_DESEMBARACO'
                    Title.Caption = 'Data Desembara'#231'o'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PID_CODIGO_EXPORTADOR'
                    Title.Caption = 'C'#243'digo Exportador'
                    Width = 186
                    Visible = True
                  end>
              end
              object DBNavigator1: TDBNavigator
                Left = 8
                Top = 72
                Width = 230
                Height = 25
                DataSource = DSPedidoDI
                VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
                TabOrder = 1
              end
              object DBEdit1: TDBEdit
                Left = 8
                Top = 40
                Width = 121
                Height = 21
                DataField = 'PID_NUMERO_DI'
                DataSource = DSPedidoDI
                TabOrder = 2
              end
              object DBEdit19: TDBEdit
                Left = 136
                Top = 40
                Width = 105
                Height = 21
                DataField = 'PID_DATA_DI'
                DataSource = DSPedidoDI
                TabOrder = 3
              end
              object DBEdit29: TDBEdit
                Left = 248
                Top = 40
                Width = 265
                Height = 21
                CharCase = ecUpperCase
                DataField = 'PID_LOCAL_DESEMBARACO'
                DataSource = DSPedidoDI
                TabOrder = 4
              end
              object DBEdit30: TDBEdit
                Left = 520
                Top = 40
                Width = 25
                Height = 21
                CharCase = ecUpperCase
                DataField = 'PID_UF_DESEMBARACO'
                DataSource = DSPedidoDI
                TabOrder = 5
              end
              object DBEdit31: TDBEdit
                Left = 616
                Top = 40
                Width = 105
                Height = 21
                DataField = 'PID_DATA_DESEMBARACO'
                DataSource = DSPedidoDI
                TabOrder = 6
              end
              object DBEdit32: TDBEdit
                Left = 728
                Top = 40
                Width = 105
                Height = 21
                CharCase = ecUpperCase
                DataField = 'PID_CODIGO_EXPORTADOR'
                DataSource = DSPedidoDI
                TabOrder = 7
              end
            end
            object GroupBox14: TGroupBox
              Left = 0
              Top = 193
              Width = 946
              Height = 229
              Align = alClient
              Caption = 'Adi'#231#245'es'
              TabOrder = 1
              object Label97: TLabel
                Left = 8
                Top = 24
                Width = 88
                Height = 13
                Caption = 'N'#250'mero da Adi'#231#227'o'
              end
              object Label98: TLabel
                Left = 136
                Top = 24
                Width = 102
                Height = 13
                Caption = 'Sequencia da Adi'#231#227'o'
              end
              object Label99: TLabel
                Left = 264
                Top = 24
                Width = 101
                Height = 13
                Caption = 'C'#243'digo do Fabricante'
              end
              object DBGrid7: TDBGrid
                Left = 2
                Top = 92
                Width = 942
                Height = 135
                Align = alBottom
                DataSource = DSPedidoDIAdicao
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'PDA_ADICAO'
                    Title.Caption = 'Adi'#231#227'o'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PDA_SEQ_ADICAO'
                    Title.Caption = 'Sequencia'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PDA_CODIGO_FABRICANTE'
                    Title.Caption = 'C'#243'digo Fabricante'
                    Visible = True
                  end>
              end
              object DBNavigator2: TDBNavigator
                Left = 528
                Top = 38
                Width = 230
                Height = 25
                DataSource = DSPedidoDIAdicao
                VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
                TabOrder = 1
              end
              object DBEdit33: TDBEdit
                Left = 8
                Top = 40
                Width = 121
                Height = 21
                DataField = 'PDA_ADICAO'
                DataSource = DSPedidoDIAdicao
                TabOrder = 2
              end
              object DBEdit34: TDBEdit
                Left = 136
                Top = 40
                Width = 121
                Height = 21
                DataField = 'PDA_SEQ_ADICAO'
                DataSource = DSPedidoDIAdicao
                TabOrder = 3
              end
              object DBEdit35: TDBEdit
                Left = 264
                Top = 40
                Width = 121
                Height = 21
                CharCase = ecUpperCase
                DataField = 'PDA_CODIGO_FABRICANTE'
                DataSource = DSPedidoDIAdicao
                TabOrder = 4
              end
            end
          end
        end
        object GbTups: TGroupBox
          Left = 554
          Top = 528
          Width = 400
          Height = 44
          Caption = 'Tup'#39's do Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 28
          object Label51: TLabel
            Left = 25
            Top = 21
            Width = 122
            Height = 13
            Caption = 'Total de Tup'#39's do Pedido:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label60: TLabel
            Left = 265
            Top = 20
            Width = 51
            Height = 13
            Caption = 'Valor/Tup:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object CurrTotups: TCurrencyEdit
            Left = 149
            Top = 15
            Width = 84
            Height = 21
            TabStop = False
            AutoSize = False
            Color = 14145495
            DecimalPlaces = 4
            DisplayFormat = '###,###,##0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 15
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            ZeroEmpty = False
            OnClick = CurrDesctoPc1Click
            OnExit = CurrDesctoPc1Exit
          end
          object CurrVlTups: TCurrencyEdit
            Left = 317
            Top = 15
            Width = 55
            Height = 21
            TabStop = False
            AutoSize = False
            Color = 14145495
            DecimalPlaces = 4
            DisplayFormat = '#,##0.0000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 15
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            ZeroEmpty = False
            OnClick = CurrDesctoPc1Click
            OnExit = CurrDesctoPc1Exit
          end
        end
        object GbSitucao: TGroupBox
          Left = 545
          Top = 124
          Width = 204
          Height = 37
          Caption = 'Situa'#231#227'o:'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 30
          object PanSituacao: TPanel
            Left = 7
            Top = 13
            Width = 190
            Height = 20
            BevelOuter = bvLowered
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object GroupBox4: TGroupBox
          Left = 7
          Top = 117
          Width = 530
          Height = 42
          Caption = 'Outros Valores'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
          object Label61: TLabel
            Left = 10
            Top = 19
            Width = 54
            Height = 13
            Caption = 'Valor Frete:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label63: TLabel
            Left = 142
            Top = 19
            Width = 65
            Height = 13
            Caption = 'D.Acess'#243'rias:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label64: TLabel
            Left = 282
            Top = 19
            Width = 37
            Height = 13
            Caption = 'Seguro:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label68: TLabel
            Left = 391
            Top = 19
            Width = 67
            Height = 13
            Hint = 'Valor somente para calculos'#13#10'de IPI de importa'#231#227'o'
            Caption = 'D.Importa'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object DBEVLFRETE: TDBEdit
            Left = 65
            Top = 14
            Width = 65
            Height = 21
            DataField = 'PED_VLFRETE'
            DataSource = DataMovimento.DsPedidos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnExit = DBEVLFRETEExit
          end
          object DBEVLDESP: TDBEdit
            Left = 208
            Top = 14
            Width = 65
            Height = 21
            DataField = 'PED_DESP_ACES'
            DataSource = DataMovimento.DsPedidos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnExit = DBEVLDESPExit
          end
          object DBEVLSEGURO: TDBEdit
            Left = 319
            Top = 14
            Width = 65
            Height = 21
            DataField = 'PED_VLSEGURO'
            DataSource = DataMovimento.DsPedidos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnExit = DBEVLSEGUROExit
          end
          object DBEVLDESPImport: TDBEdit
            Left = 459
            Top = 14
            Width = 65
            Height = 21
            Hint = 'Valor somente para calculos'#13#10'de IPI de importa'#231#227'o'
            DataField = 'PED_DESP_IMPOR'
            DataSource = DataMovimento.DsPedidos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnExit = DBEVLSEGUROExit
          end
        end
        object Panel4: TPanel
          Left = 400
          Top = 594
          Width = 94
          Height = 33
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Color = 12681984
          TabOrder = 31
          object BitVendaHistorico: TBitBtn
            Left = 5
            Top = 4
            Width = 85
            Height = 25
            Cursor = crHandPoint
            Hint = 'Hist'#243'rico de venda produto X Cliente'
            Caption = 'Venda &H'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Glyph.Data = {
              CA020000424DCA02000000000000CA0100002800000010000000100000000100
              08000000000000010000120B0000120B00006500000065000000DCDBEE00FF00
              FF00EDE4E600875958008B5C5B008C5D5C00815655009C6E6C00A4787400AD80
              7800A87C7500B4817600B2807400AF7E7200B3817500B17F7400B2807500B486
              7A00BC8D7C00BA8B7B00BA8D7D00B9897600CF9B8600C2958100CA9B8300FEFC
              FB00D79D7900D29E7D00DCA88700D1A28600EBD2C200F1DCCF00F8ECE500D9A1
              7D00D8A98A00FEFBF900DFB08D00FEFAF700E8B89000E4B58E00F9F3EE00E8B9
              9000FFD1A200FFD4A800FFD8B100FED9B300FFDCB800FFDEBC00FFDFBE00FEDE
              BD00FEE8D200FEEDDC00FEEEDE00FEF0E200FEF1E400FEF4EA00FEF5EC00FFF9
              F300FEF8F200FEFAF600FEFBF800FCF9F600FEFCFA00FEFDFC00FFD4A600FED5
              A900FED6AC00FFD9B100FEDAB400FFE2C400FEE1C300FEE2C500FFE4C800F8DF
              C400FEE5CB00FFE7CE00FEE7CE00FEE8D000E9D5BF00D4C2AE00FEE9D200FEEA
              D500FEEBD700CABBAB00FEEDDB00FEEEDD00FEEFDF00FEF3E700FEF6ED00FEF1
              E200FEF8F100FEF6EC00FEFBF700FEF9F200FFE5AF00FFF9DC00FEFEFD000000
              9A00FFFFFF00FEFEFE0000000000010101010808010101010101010101010101
              0101082A07070101010101010101010101010808080808080808080808050101
              010A0A4C4A472F2C2B2A2A2A2A050101010A0A324A45302E4342402A2A050101
              010A0952614B0E0E0E0E0E0E2A050101155F1133555555555046444141050101
              1502143561560E0E0E0E0E0E2D050101150017575B5B5B5B595148313005011B
              1E62185861390E0E100C0D0E4904011B20621D5D23233E3B37544D4D4E030126
              19632225603E3B5A383634534F060126626224196363195C3A3C0B0B0B0F2926
              1F28276363636363633C135E5E1601011A2127636363633F3C3D125E16010101
              0101261C1C1C1C1C1C1C12160101}
            Margin = 5
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Spacing = 6
            TabOrder = 0
            TabStop = False
            OnClick = BitVendaHistoricoClick
          end
        end
        object Panel6: TPanel
          Left = 197
          Top = 594
          Width = 106
          Height = 33
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Color = 12681984
          TabOrder = 33
          object BiImprimeEnvia: TBitBtn
            Left = 5
            Top = 4
            Width = 97
            Height = 25
            Hint = 'Imprime e/ou envia email'
            Caption = 'En&viar Ped.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FF013002014103025104025104014303013302FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF014503014503037808039C0B03
              9F0C039F0C039D0C027E09014D04014D04FF00FFFF00FFFF00FFFF00FFFF00FF
              034F0903650904A30D03A60C03A00B029E0A039F0C03A00C03A50C03A60C0269
              06013402FF00FFFF00FFFF00FF044F09066B110AAB1F07A415049E0D029D0A03
              9D0A039E0C039E0C039E0C03A00C03A70C026A06024C04FF00FFFF00FF044F09
              10AC300DAB2809A41C039E0F16AA20D5F2D8E9F8EA48C052039E0C039E0C039F
              0C03A70C024C04FF00FF0357060D822317B6410EA92D05A013049F0D07A01182
              D589FFFFFFF4FCF640BC4A039E0C039E0C03A50C037B0801420303570617A341
              18B54A11AB3406A011039E0C049F0D039E0C74D07DFCFEFCF3FBF43EBC48039E
              0C03A10C03960A01420306680D21B1511EB751BFEDCFBAEAC6B7E9C2B8EAC5B5
              E9C2B7E9C1F6FCF7FFFFFFEEFAEF54C55E03A00C039F0C014A040874123EBD69
              2ABA5CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFCFFFFFFFFFFFFAAE3
              B003A00C039F0C02520506780E54C57A44C67452C77D57CA8156CA8057CA8149
              C57379D592FAFEFAFFFFFF97DDA51AAD3307A518039D0C01460306780E4CBD69
              83DDA722B6551CB24E22B55422B55455CA7FE1F6E9FFFFFF88D99D10AB2F0CA6
              2706A716038C0A014603FF00FF139923AAE7C568D08E16AF481BB14C39BF68F4
              FCF7FFFFFF84D99E11AA320EA7290BA42009AF1C036B0AFF00FFFF00FF139923
              56C573C5F0D866CF8C20B45223B554AAE6C096DEB119B14813AC3C12AA340FB0
              2D0A991F036B0AFF00FFFF00FFFF00FF1399236ACC88D0F4E39AE1B650C77A38
              BD672CBA5D30BB602FBC5D23BC4F11A33006620FFF00FFFF00FFFF00FFFF00FF
              FF00FF13992313992398E1B5BDEED4A7E7C490E0B178D99F49C7791B9D3D1B9D
              3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1DA43513992313
              9923139923139923138C2AFF00FFFF00FFFF00FFFF00FFFF00FF}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TabStop = False
            OnClick = BiImprimeEnviaClick
          end
        end
      end
      object CBOrdemServico: TDBCheckBox
        Left = 7
        Top = 1
        Width = 161
        Height = 17
        Hint = 'Consulta produtos'
        Caption = 'Ordem de Servi'#231'o'
        DataField = 'PED_OS'
        DataSource = DataMovimento.DsPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object PanTipo: TPanel
        Left = 207
        Top = 0
        Width = 250
        Height = 18
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 'informa baixa ou nao do estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Visible = False
      end
    end
    object TabSheetClientes: TTabSheet
      Caption = 'Cliente-Vendas'
      ImageIndex = 1
      OnExit = TabSheetClientesExit
      OnShow = TabSheetClientesShow
      object GroupBox5: TGroupBox
        Left = 5
        Top = 49
        Width = 929
        Height = 262
        Caption = 'Dados do Cliente'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object Label4: TLabel
          Left = 8
          Top = 43
          Width = 66
          Height = 13
          Caption = 'Raz'#227'o Social:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 25
          Top = 91
          Width = 49
          Height = 13
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 38
          Top = 138
          Width = 36
          Height = 13
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 597
          Top = 20
          Width = 27
          Height = 13
          Caption = 'Fone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 284
          Top = 18
          Width = 70
          Height = 13
          Caption = 'Data cadastro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label50: TLabel
          Left = 364
          Top = 115
          Width = 24
          Height = 13
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label69: TLabel
          Left = 800
          Top = 18
          Width = 20
          Height = 13
          Caption = 'Fax:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label72: TLabel
          Left = 44
          Top = 115
          Width = 30
          Height = 13
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label73: TLabel
          Left = 587
          Top = 119
          Width = 48
          Height = 13
          Caption = 'Email NFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label74: TLabel
          Left = 31
          Top = 66
          Width = 43
          Height = 13
          Caption = 'Fantasia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label75: TLabel
          Left = 388
          Top = 138
          Width = 36
          Height = 13
          Caption = 'Estado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label70: TLabel
          Left = 585
          Top = 42
          Width = 40
          Height = 13
          Caption = 'Contato:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label79: TLabel
          Left = 585
          Top = 64
          Width = 39
          Height = 13
          Caption = 'Fun'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label81: TLabel
          Left = 585
          Top = 84
          Width = 65
          Height = 13
          Caption = 'Email Contato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label71: TLabel
          Left = 17
          Top = 18
          Width = 55
          Height = 13
          Caption = 'CNPJ/CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label89: TLabel
          Left = 483
          Top = 18
          Width = 36
          Height = 13
          Caption = 'C'#243'digo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DbeCli_razao: TDBEdit
          Left = 75
          Top = 38
          Width = 380
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_RAZAO'
          DataSource = DataCadastros.DsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DbeCli_endere: TDBEdit
          Left = 75
          Top = 86
          Width = 380
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_ENDERE'
          DataSource = DataCadastros.DsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DbeCli_cidade: TDBEdit
          Left = 75
          Top = 133
          Width = 240
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'CLI_CIDADE'
          DataSource = DataCadastros.DsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DbeCli_fone: TDBEdit
          Left = 626
          Top = 14
          Width = 95
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_FONE'
          DataSource = DataCadastros.DsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DbeCli_fax: TDBEdit
          Left = 821
          Top = 14
          Width = 95
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_FAX'
          DataSource = DataCadastros.DsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DbeCli_dtinicio: TDBDateEdit
          Left = 356
          Top = 13
          Width = 100
          Height = 21
          DataField = 'CLI_DTINICIO'
          DataSource = DataCadastros.DsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          GlyphKind = gkEllipsis
          NumGlyphs = 1
          ParentFont = False
          TabOrder = 6
          YearDigits = dyFour
        end
        object DbeCLI_BAIRRO: TDBEdit
          Left = 75
          Top = 110
          Width = 240
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_BAIRRO'
          DataSource = DataCadastros.DsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object DbeCli_emailNfe: TDBEdit
          Left = 585
          Top = 133
          Width = 332
          Height = 21
          DataField = 'CLI_EMAIL'
          DataSource = DataCadastros.DsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
        end
        object DbeCli_Fantasia: TDBEdit
          Left = 75
          Top = 62
          Width = 380
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_FANTASIA'
          DataSource = DataCadastros.DsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object GroupBox7: TGroupBox
          Left = 462
          Top = 36
          Width = 106
          Height = 116
          Caption = 'Porte da Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          object RadPequena: TRadioButton
            Left = 18
            Top = 21
            Width = 65
            Height = 17
            Caption = 'Peq&uena'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
          end
          object RadMedia: TRadioButton
            Left = 19
            Top = 52
            Width = 51
            Height = 17
            Caption = '&M'#233'dia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object RadGrande: TRadioButton
            Left = 19
            Top = 90
            Width = 57
            Height = 17
            Caption = 'Gran&de'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
        object DBECLIUF: TDBEdit
          Left = 425
          Top = 133
          Width = 29
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'CLI_UF'
          DataSource = DataCadastros.DsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object DbeCliCep: TDBEdit
          Left = 388
          Top = 110
          Width = 67
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_CEP'
          DataSource = DataCadastros.DsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object DbeCli_contato: TDBEdit
          Left = 626
          Top = 37
          Width = 290
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_CONTATO'
          DataSource = DataCadastros.DsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object DbeCli_funcont: TDBEdit
          Left = 627
          Top = 60
          Width = 290
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_FUNCONT'
          DataSource = DataCadastros.DsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object DBEEmail_contato: TDBEdit
          Left = 585
          Top = 97
          Width = 332
          Height = 21
          CharCase = ecLowerCase
          DataField = 'CLI_EMAIL_ALTERNATIVO'
          DataSource = DataCadastros.DsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
        end
        object Panel1: TPanel
          Left = 573
          Top = 8
          Width = 2
          Height = 246
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object Grp_Credito: TGroupBox
          Left = 583
          Top = 157
          Width = 336
          Height = 95
          Caption = 'Cr'#233'ditos '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
          object Label76: TLabel
            Left = 19
            Top = 17
            Width = 77
            Height = 13
            Caption = 'Limite de cr'#233'dito'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label77: TLabel
            Left = 19
            Top = 56
            Width = 68
            Height = 13
            Caption = 'Limite utilizado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label78: TLabel
            Left = 126
            Top = 17
            Width = 88
            Height = 13
            Caption = 'Pedidos em aberto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label80: TLabel
            Left = 127
            Top = 56
            Width = 92
            Height = 13
            Caption = 'Valor '#250'ltima compra'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label82: TLabel
            Left = 232
            Top = 56
            Width = 78
            Height = 13
            Caption = 'Data ult. compra'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DbeLimiteCred: TDBEdit
            Left = 18
            Top = 30
            Width = 95
            Height = 21
            Color = clWhite
            DataField = 'CLI_LIMITECRED'
            DataSource = DataCadastros.DsCliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 13
            ParentFont = False
            TabOrder = 0
          end
          object DbeLimiteUtiliz: TDBEdit
            Left = 18
            Top = 69
            Width = 95
            Height = 21
            Color = clWhite
            DataField = 'CLI_LIMITEUTILIZ'
            DataSource = DataCadastros.DsCliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 13
            ParentFont = False
            TabOrder = 1
          end
          object DbePediAbertos: TDBEdit
            Left = 125
            Top = 30
            Width = 95
            Height = 21
            Color = clWhite
            DataField = 'CLI_PEDABERTO'
            DataSource = DataCadastros.DsCliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 13
            ParentFont = False
            TabOrder = 2
          end
          object DbeValorUltimaCompra: TDBEdit
            Left = 125
            Top = 69
            Width = 95
            Height = 21
            DataField = 'CLI_VL_ULTCOMP'
            DataSource = DataCadastros.DsCliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 13
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object DBeUltCompra: TDBDateEdit
            Left = 230
            Top = 69
            Width = 100
            Height = 21
            DataField = 'CLI_DTULTCOM'
            DataSource = DataCadastros.DsCliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            GlyphKind = gkEllipsis
            NumGlyphs = 1
            ParentFont = False
            TabOrder = 4
            YearDigits = dyFour
          end
        end
        object GroupBox6: TGroupBox
          Left = 8
          Top = 157
          Width = 560
          Height = 96
          Caption = 'Endere'#231'o de Entrega'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
          object Label83: TLabel
            Left = 17
            Top = 21
            Width = 49
            Height = 13
            Caption = 'Endere'#231'o:'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label84: TLabel
            Left = 30
            Top = 45
            Width = 36
            Height = 13
            Caption = 'Cidade:'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label85: TLabel
            Left = 435
            Top = 44
            Width = 17
            Height = 13
            Caption = 'UF:'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label86: TLabel
            Left = 428
            Top = 70
            Width = 24
            Height = 13
            Caption = 'CEP:'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label87: TLabel
            Left = 425
            Top = 21
            Width = 27
            Height = 13
            Caption = 'Fone:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label88: TLabel
            Left = 33
            Top = 70
            Width = 33
            Height = 13
            Caption = 'Bairro :'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object DbeCli_Endentr: TDBEdit
            Left = 68
            Top = 17
            Width = 330
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'CLI_ENDENTR'
            DataSource = DataCadastros.DsCliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DbeCli_cidentr: TDBEdit
            Left = 68
            Top = 40
            Width = 250
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'CLI_CIDENTR'
            DataSource = DataCadastros.DsCliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DbeCli_ufentr: TDBEdit
            Left = 454
            Top = 40
            Width = 25
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'CLI_UFENTR'
            DataSource = DataCadastros.DsCliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object DbeCli_cepentr: TDBEdit
            Left = 454
            Top = 65
            Width = 60
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'CLI_CEPENTR'
            DataSource = DataCadastros.DsCliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit18: TDBEdit
            Left = 454
            Top = 17
            Width = 95
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CLI_FONENTR'
            DataSource = DataCadastros.DsCliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object DBEdit27: TDBEdit
            Left = 68
            Top = 65
            Width = 250
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'CLI_BAIENTR'
            DataSource = DataCadastros.DsCliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
        end
        object DBECLI_CGC: TDBEdit
          Left = 75
          Top = 13
          Width = 140
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'CLI_CGC'
          DataSource = DataCadastros.DsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit28: TDBEdit
          Left = 521
          Top = 13
          Width = 45
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_CODIGO'
          DataSource = DataCadastros.DsCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
        end
      end
      object GroupBox8: TGroupBox
        Left = 4
        Top = 314
        Width = 929
        Height = 319
        Caption = 'Produtos Vendidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object DBGridClientesProd: TDBGrid
          Left = 14
          Top = 16
          Width = 904
          Height = 292
          DataSource = DsClientProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PRD_REFER'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Refer'#234'ncia'
              Title.Color = 12681984
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PED_CODIGO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Pedido'
              Title.Color = 12681984
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 57
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_DESCRI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Title.Color = 12681984
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_EMISSAO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'DT.Fatura'
              Title.Color = 12681984
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_QTDE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Qtde'
              Title.Color = 12681984
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
              FieldName = 'NF_PRECO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'P.Unit.'
              Title.Color = 12681984
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
              FieldName = 'CC_TOTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'P.Total'
              Title.Color = 12681984
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_IPIVALOR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'IPI'
              Title.Color = 12681984
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_VLSUBST'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Sub.Trib.'
              Title.Color = 12681984
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF_IDESCTO1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Descto'
              Title.Color = 12681984
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
      end
      object BitPesquisa: TBitBtn
        Left = 817
        Top = 7
        Width = 110
        Height = 25
        Caption = '&Pesquisar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = BitPesquisaClick
      end
      object GroupBox9: TGroupBox
        Left = 5
        Top = 0
        Width = 463
        Height = 43
        Caption = 'Op'#231#227'o de pesquisa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        object RadRazao: TRadioButton
          Left = 6
          Top = 20
          Width = 52
          Height = 17
          Caption = '&Raz'#227'o'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = RadRazaoClick
        end
        object RadCodigo: TRadioButton
          Left = 108
          Top = 20
          Width = 63
          Height = 17
          Caption = 'C'#243'&digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = RadCodigoClick
        end
        object RadCgc: TRadioButton
          Left = 299
          Top = 20
          Width = 51
          Height = 17
          Caption = 'C&NPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = RadCgcClick
        end
        object RadCPF: TRadioButton
          Left = 383
          Top = 20
          Width = 58
          Height = 17
          Caption = 'CP&F'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = RadCPFClick
        end
        object RadFantasia: TRadioButton
          Left = 200
          Top = 20
          Width = 62
          Height = 17
          Caption = 'Fan&tasia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = RadFantasiaClick
        end
      end
      object GbLista: TGroupBox
        Left = 469
        Top = 0
        Width = 130
        Height = 43
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Msk_busca: TMaskEdit
          Left = 4
          Top = 16
          Width = 117
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = ''
          OnEnter = Msk_buscaEnter
          OnExit = Msk_buscaExit
          OnKeyPress = Msk_buscaKeyPress
        end
      end
    end
    object TabSheetReserva: TTabSheet
      Caption = 'Vendas '#224' Faturar'
      ImageIndex = 2
      OnExit = TabSheetReservaExit
      OnShow = TabSheetReservaShow
      object GroupBox10: TGroupBox
        Left = 5
        Top = 3
        Width = 924
        Height = 422
        Caption = 'Lista de Produtos em Pedidos '#224' Faturar(em aberto)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object DBGrid4: TDBGrid
          Left = 12
          Top = 17
          Width = 773
          Height = 400
          DataSource = DsReservaProd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PRD_REFER'
              Title.Alignment = taCenter
              Title.Caption = 'Refer'#234'ncia'
              Title.Color = 12681984
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
              FieldName = 'PRF_PRDDESCRI'
              Title.Alignment = taCenter
              Title.Caption = 'Produto'
              Title.Color = 12681984
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 536
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SQTDE'
              Title.Alignment = taCenter
              Title.Caption = 'Qtde Reserva'
              Title.Color = 12681984
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
        object BitPesqReservaProd: TBitBtn
          Left = 799
          Top = 19
          Width = 110
          Height = 25
          Caption = '&Pesquisar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = BitPesqReservaProdClick
        end
        object BitCancelaReservaProd: TBitBtn
          Left = 799
          Top = 50
          Width = 110
          Height = 25
          Caption = 'Ca&ncelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = BitCancelaReservaProdClick
        end
        object GroupBox12: TGroupBox
          Left = 790
          Top = 85
          Width = 123
          Height = 51
          Caption = 'Refer'#234'ncia'
          TabOrder = 1
          object EditProdReserva: TEdit
            Left = 7
            Top = 20
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 11
            TabOrder = 0
          end
        end
      end
      object GroupBox11: TGroupBox
        Left = 4
        Top = 428
        Width = 925
        Height = 224
        Caption = 'Lista dos Pedidos em Aberto de cada Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object DBGrid5: TDBGrid
          Left = 13
          Top = 16
          Width = 777
          Height = 201
          DataSource = DsReservaPed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PED_CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'Pedido'
              Title.Color = 12681984
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PED_DTENTRADA'
              Title.Alignment = taCenter
              Title.Caption = 'Emiss'#227'o'
              Title.Color = 12681984
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
              FieldName = 'CLI_RAZAO'
              Title.Alignment = taCenter
              Title.Caption = 'Cliente'
              Title.Color = 12681984
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 332
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SQTDEFATURAR'
              Title.Alignment = taCenter
              Title.Caption = 'Qtde'
              Title.Color = 12681984
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REP_CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'Rep'
              Title.Color = 12681984
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 29
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REP_NOME'
              Title.Alignment = taCenter
              Title.Caption = 'Representante'
              Title.Color = 12681984
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 186
              Visible = True
            end>
        end
      end
    end
  end
  object PanComissao: TPanel
    Left = 305
    Top = 295
    Width = 368
    Height = 73
    BevelInner = bvRaised
    Color = 14079702
    TabOrder = 1
    Visible = False
    object GroupBox2: TGroupBox
      Left = 7
      Top = 8
      Width = 354
      Height = 62
      Caption = 'Altera'#231#227'o da comiss'#227'o do item'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object Label29: TLabel
        Left = 8
        Top = 24
        Width = 51
        Height = 13
        Caption = 'Comiss'#227'o :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEditNovacomissao: TDBEdit
        Left = 62
        Top = 20
        Width = 72
        Height = 21
        DataField = 'PRF_ITEMCOMIS'
        DataSource = DataMovimento.DsPedItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = DBEditNovacomissaoKeyPress
      end
      object BtnComissCAncela: TButton
        Left = 260
        Top = 18
        Width = 90
        Height = 25
        Caption = 'Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        TabStop = False
        OnClick = BtnComissCAncelaClick
      end
      object BtnComissConfirma: TButton
        Left = 168
        Top = 18
        Width = 90
        Height = 25
        Caption = 'Confirmar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BtnComissConfirmaClick
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 200
    Top = 224
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir1Click
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      OnClick = Alterar1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Alterarcomisso1: TMenuItem
      Caption = 'Alterar comiss'#227'o'
      OnClick = Alterarcomisso1Click
    end
  end
  object SqlSaldo: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'P1.PRD_VAR1,'#13#10'P1.PRD_VAR2,'#13#10'P1.PRD_VAR3,'#13#10'P1.PRD_VAR4,'#13#10 +
      'P1.PRD_VAR5,'#13#10'P1.PRD_VAR6,'#13#10'P1.PRD_VAR7,'#13#10'P1.PRD_VAR8,'#13#10'PRD_RESE' +
      'RVA_VAR1,'#13#10'PRD_RESERVA_VAR2,'#13#10'PRD_RESERVA_VAR3,'#13#10'PRD_RESERVA_VAR' +
      '4,'#13#10'PRD_RESERVA_VAR5,'#13#10'PRD_RESERVA_VAR6,'#13#10'PRD_RESERVA_VAR7,'#13#10'PRD' +
      '_RESERVA_VAR8'#13#10'from PRD0000 P1'#13#10'Order by P1.PRD_REFER'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select'#13#10'P1.PRD_VAR1,'#13#10'P1.PRD_VAR2,'#13#10'P1.PRD_VAR3,'#13#10'P1.PRD_VAR4,'#13#10 +
      'P1.PRD_VAR5,'#13#10'P1.PRD_VAR6,'#13#10'P1.PRD_VAR7,'#13#10'P1.PRD_VAR8,'#13#10'PRD_RESE' +
      'RVA_VAR1,'#13#10'PRD_RESERVA_VAR2,'#13#10'PRD_RESERVA_VAR3,'#13#10'PRD_RESERVA_VAR' +
      '4,'#13#10'PRD_RESERVA_VAR5,'#13#10'PRD_RESERVA_VAR6,'#13#10'PRD_RESERVA_VAR7,'#13#10'PRD' +
      '_RESERVA_VAR8'#13#10'from PRD0000 P1'#13#10'Order by P1.PRD_REFER'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 67
    Top = 493
    object SqlSaldoPRD_VAR1: TFMTBCDField
      FieldName = 'PRD_VAR1'
      DisplayFormat = '#,##0.000'
      Precision = 15
    end
    object SqlSaldoPRD_VAR2: TFMTBCDField
      FieldName = 'PRD_VAR2'
      DisplayFormat = '#,##0.000'
      Precision = 15
    end
    object SqlSaldoPRD_VAR3: TFMTBCDField
      FieldName = 'PRD_VAR3'
      DisplayFormat = '#,##0.000'
      Precision = 15
    end
    object SqlSaldoPRD_VAR4: TFMTBCDField
      FieldName = 'PRD_VAR4'
      DisplayFormat = '#,##0.000'
      Precision = 15
    end
    object SqlSaldoPRD_VAR5: TFMTBCDField
      FieldName = 'PRD_VAR5'
      DisplayFormat = '#,##0.000'
      Precision = 15
    end
    object SqlSaldoPRD_VAR6: TFMTBCDField
      FieldName = 'PRD_VAR6'
      DisplayFormat = '#,##0.000'
      Precision = 15
    end
    object SqlSaldoPRD_VAR7: TFMTBCDField
      FieldName = 'PRD_VAR7'
      DisplayFormat = '#,##0.000'
      Precision = 15
    end
    object SqlSaldoPRD_VAR8: TFMTBCDField
      FieldName = 'PRD_VAR8'
      DisplayFormat = '#,##0.000'
      Precision = 15
    end
    object SqlSaldoPRD_RESERVA_VAR1: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR1'
      DisplayFormat = '#,##0.000'
      Precision = 15
    end
    object SqlSaldoPRD_RESERVA_VAR2: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR2'
      DisplayFormat = '#,##0.000'
      Precision = 15
    end
    object SqlSaldoPRD_RESERVA_VAR3: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR3'
      DisplayFormat = '#,##0.000'
      Precision = 15
    end
    object SqlSaldoPRD_RESERVA_VAR4: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR4'
      DisplayFormat = '#,##0.000'
      Precision = 15
    end
    object SqlSaldoPRD_RESERVA_VAR5: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR5'
      DisplayFormat = '#,##0.000'
      Precision = 15
    end
    object SqlSaldoPRD_RESERVA_VAR6: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR6'
      DisplayFormat = '#,##0.000'
      Precision = 15
    end
    object SqlSaldoPRD_RESERVA_VAR7: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR7'
      DisplayFormat = '#,##0.000'
      Precision = 15
    end
    object SqlSaldoPRD_RESERVA_VAR8: TFMTBCDField
      FieldName = 'PRD_RESERVA_VAR8'
      DisplayFormat = '#,##0.000'
      Precision = 15
    end
  end
  object DsSaldo: TDataSource
    DataSet = SqlSaldo
    Left = 96
    Top = 493
  end
  object SqlAtEstoque: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'P2.pti_atualizar_estoque,'#13#10'P1.PGR_CODIGO,'#13#10'P3.pgr_atuali' +
      'za_estoque'#13#10'From PRD0000 P1'#13#10'LEFT JOIN PRD_TIPO P2 ON (P1.pti_co' +
      'digo = P2.PTI_CODIGO)'#13#10'LEFT JOIN PRD_GRUPO P3 ON (P1.pgr_codigo ' +
      '= P3.pgr_codigo)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select'#13#10'P2.pti_atualizar_estoque,'#13#10'P1.PGR_CODIGO,'#13#10'P3.pgr_atuali' +
      'za_estoque'#13#10'From PRD0000 P1'#13#10'LEFT JOIN PRD_TIPO P2 ON (P1.pti_co' +
      'digo = P2.PTI_CODIGO)'#13#10'LEFT JOIN PRD_GRUPO P3 ON (P1.pgr_codigo ' +
      '= P3.pgr_codigo)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 141
    Top = 493
    object SqlAtEstoquePTI_ATUALIZAR_ESTOQUE: TStringField
      FieldName = 'PTI_ATUALIZAR_ESTOQUE'
      Size = 1
    end
    object SqlAtEstoquePGR_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'PGR_ATUALIZA_ESTOQUE'
      Size = 1
    end
    object SqlAtEstoquePGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
  end
  object CdsConsultaEstoque: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'P1.PRD_CODIGO,'#13#10'P1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_CO' +
      'MPL,'#13#10'P2.PTI_SIGLA,'#13#10'P2.PTI_ATUALIZAR_ESTOQUE,'#13#10'P3.PGR_ATUALIZA_' +
      'ESTOQUE,'#13#10'P1.PRD_PVENDA,'#13#10'P1.PRD_DCVAR1,'#13#10'P1.PRD_DCVAR2,'#13#10'P1.PRD' +
      '_DCVAR3,'#13#10'P1.PRD_DCVAR4,'#13#10'P1.PRD_DCVAR5,'#13#10'P1.PRD_DCVAR6,'#13#10'P1.PRD' +
      '_DCVAR7,'#13#10'P1.PRD_DCVAR8,'#13#10'P1.PRD_PVENDA2,'#13#10'P1.PRD_PVENDA3,'#13#10'P1.P' +
      'RD_PVENDA4,'#13#10'P1.PRD_PVENDA5,'#13#10'P1.PRD_PVENDA6,'#13#10'P1.PGR_CODIGO,'#13#10'I' +
      '1.IPI_ALIQ,'#13#10'((P1.PRD_ESTOQUE + P1.PRD_ENTRADA) -( P1.PRD_SAIDA+' +
      'P1.PRD_RESERVA+P1.PRD_EMPENHO)) as PRD_QDTE'#13#10'from PRD0000 P1'#13#10'LE' +
      'FT JOIN IPI0000 I1 ON (P1.IPI_CODIGO = I1.IPI_CODIGO)'#13#10'LEFT JOIN' +
      ' PRD_TIPO P2 ON (P2.PTI_CODIGO = P1.PTI_CODIGO)'#13#10'LEFT JOIN PRD_G' +
      'RUPO P3 ON (P1.PGR_CODIGO = P3.PGR_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select'#13#10'P1.PRD_CODIGO,'#13#10'P1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_CO' +
      'MPL,'#13#10'P2.PTI_SIGLA,'#13#10'P2.PTI_ATUALIZAR_ESTOQUE,'#13#10'P3.PGR_ATUALIZA_' +
      'ESTOQUE,'#13#10'P1.PRD_PVENDA,'#13#10'P1.PRD_DCVAR1,'#13#10'P1.PRD_DCVAR2,'#13#10'P1.PRD' +
      '_DCVAR3,'#13#10'P1.PRD_DCVAR4,'#13#10'P1.PRD_DCVAR5,'#13#10'P1.PRD_DCVAR6,'#13#10'P1.PRD' +
      '_DCVAR7,'#13#10'P1.PRD_DCVAR8,'#13#10'P1.PRD_PVENDA2,'#13#10'P1.PRD_PVENDA3,'#13#10'P1.P' +
      'RD_PVENDA4,'#13#10'P1.PRD_PVENDA5,'#13#10'P1.PRD_PVENDA6,'#13#10'P1.PGR_CODIGO,'#13#10'I' +
      '1.IPI_ALIQ,'#13#10'((P1.PRD_ESTOQUE + P1.PRD_ENTRADA) -( P1.PRD_SAIDA+' +
      'P1.PRD_RESERVA+P1.PRD_EMPENHO)) as PRD_QDTE'#13#10'from PRD0000 P1'#13#10'LE' +
      'FT JOIN IPI0000 I1 ON (P1.IPI_CODIGO = I1.IPI_CODIGO)'#13#10'LEFT JOIN' +
      ' PRD_TIPO P2 ON (P2.PTI_CODIGO = P1.PTI_CODIGO)'#13#10'LEFT JOIN PRD_G' +
      'RUPO P3 ON (P1.PGR_CODIGO = P3.PGR_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 32
    Top = 550
    object CdsConsultaEstoquePRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 4
    end
    object CdsConsultaEstoquePRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object CdsConsultaEstoquePTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object CdsConsultaEstoquePRD_PVENDA: TFMTBCDField
      FieldName = 'PRD_PVENDA'
      Precision = 15
    end
    object CdsConsultaEstoquePRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object CdsConsultaEstoquePRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object CdsConsultaEstoquePRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object CdsConsultaEstoquePRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object CdsConsultaEstoquePRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object CdsConsultaEstoquePRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object CdsConsultaEstoquePRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object CdsConsultaEstoquePRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
    object CdsConsultaEstoquePGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
    object CdsConsultaEstoqueIPI_ALIQ: TFMTBCDField
      FieldName = 'IPI_ALIQ'
      Precision = 15
    end
    object CdsConsultaEstoquePRD_QDTE: TFMTBCDField
      FieldName = 'PRD_QDTE'
      Precision = 15
    end
    object CdsConsultaEstoquePTI_ATUALIZAR_ESTOQUE: TStringField
      FieldName = 'PTI_ATUALIZAR_ESTOQUE'
      Size = 1
    end
    object CdsConsultaEstoquePGR_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'PGR_ATUALIZA_ESTOQUE'
      Size = 1
    end
    object CdsConsultaEstoquePRD_PVENDA2: TFMTBCDField
      FieldName = 'PRD_PVENDA2'
      Precision = 15
    end
    object CdsConsultaEstoquePRD_PVENDA3: TFMTBCDField
      FieldName = 'PRD_PVENDA3'
      Precision = 15
    end
    object CdsConsultaEstoquePRD_PVENDA4: TFMTBCDField
      FieldName = 'PRD_PVENDA4'
      Precision = 15
    end
    object CdsConsultaEstoquePRD_PVENDA5: TFMTBCDField
      FieldName = 'PRD_PVENDA5'
      Precision = 15
    end
    object CdsConsultaEstoquePRD_PVENDA6: TFMTBCDField
      FieldName = 'PRD_PVENDA6'
      Precision = 15
    end
    object CdsConsultaEstoquePRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object CdsConsultaEstoquePRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      Size = 150
    end
  end
  object CdsTipo: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select * from OPV0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from OPV0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 82
    Top = 550
    object CdsTipoOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      Required = True
    end
    object CdsTipoOPV_DESCRICAO: TStringField
      FieldName = 'OPV_DESCRICAO'
      Size = 30
    end
    object CdsTipoOPV_ATESTOQUE: TStringField
      FieldName = 'OPV_ATESTOQUE'
      FixedChar = True
      Size = 1
    end
    object CdsTipoOPV_TIPO: TStringField
      FieldName = 'OPV_TIPO'
      Size = 1
    end
    object CdsTipoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsTipoAMX_DESTINO: TStringField
      FieldName = 'AMX_DESTINO'
      Size = 4
    end
    object CdsTipoAMX_ORIGEM: TStringField
      FieldName = 'AMX_ORIGEM'
      Size = 4
    end
  end
  object SqlCdsPcl: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select PCL_CODIGO, PCL_NOME, PCL_DISPONIVEL, EMP_CODIGO from PCL' +
      '0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select PCL_CODIGO, PCL_NOME, PCL_DISPONIVEL, EMP_CODIGO from PCL' +
      '0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 118
    Top = 550
    object SqlCdsPclPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Required = True
      Size = 3
    end
    object SqlCdsPclPCL_NOME: TStringField
      FieldName = 'PCL_NOME'
      Size = 35
    end
    object SqlCdsPclPCL_DISPONIVEL: TStringField
      FieldName = 'PCL_DISPONIVEL'
      Size = 1
    end
    object SqlCdsPclEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SQLClienteProd: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT T1.PRD_REFER,T1.PED_CODIGO,t1.PRD_DESCRI,t1.NF_QTDE,t1.NF' +
      '_PRECO,t1.NF_IPIVALOR,t1.NF_VLSUBST,t1.NF_IDESCTO1,t2.NF_NUM_NFE' +
      ',t2.NF_EMISSAO FROM NF_IT01 t1'#13#10'join NF0001 t2 on (t1.NF_IT_NOTA' +
      'NUMER = t2.NF_NOTANUMBER);'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SQLClienteProdCalcFields
    CommandText = 
      'SELECT T1.PRD_REFER,T1.PED_CODIGO,t1.PRD_DESCRI,t1.NF_QTDE,t1.NF' +
      '_PRECO,t1.NF_IPIVALOR,t1.NF_VLSUBST,t1.NF_IDESCTO1,t2.NF_NUM_NFE' +
      ',t2.NF_EMISSAO FROM NF_IT01 t1'#13#10'join NF0001 t2 on (t1.NF_IT_NOTA' +
      'NUMER = t2.NF_NOTANUMBER);'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 603
    Top = 381
    object SQLClienteProdPRD_REFER: TStringField
      DisplayWidth = 14
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SQLClienteProdPED_CODIGO: TStringField
      DisplayWidth = 14
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SQLClienteProdPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 80
    end
    object SQLClienteProdNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      Precision = 15
    end
    object SQLClienteProdNF_PRECO: TFMTBCDField
      FieldName = 'NF_PRECO'
      DisplayFormat = '###,##0.00'
      Precision = 15
      Size = 5
    end
    object SQLClienteProdNF_IPIVALOR: TFMTBCDField
      FieldName = 'NF_IPIVALOR'
      DisplayFormat = '###,##0.00'
      Precision = 15
    end
    object SQLClienteProdNF_VLSUBST: TFMTBCDField
      FieldName = 'NF_VLSUBST'
      DisplayFormat = '###,##0.00'
      Precision = 15
    end
    object SQLClienteProdNF_IDESCTO1: TFMTBCDField
      FieldName = 'NF_IDESCTO1'
      DisplayFormat = '###,##0.00'
      Precision = 15
    end
    object SQLClienteProdNF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object SQLClienteProdNF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
    end
    object SQLClienteProdCC_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CC_TOTAL'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
  end
  object DsClientProd: TDataSource
    DataSet = SQLClienteProd
    Left = 632
    Top = 377
  end
  object SQLReservaProd: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT T1.PRD_REFER,T1.PRF_PRDDESCRI,SUM(T1.PRF_QTDE) AS SQTDE F' +
      'ROM PED_IT01 T1'#13#10'WHERE T1.PRF_SITUACAO <> '#39'T'#39' AND T1.PRF_FLAG_AT' +
      'UALIZA_ESTOQUE = '#39'S'#39#13#10'GROUP BY T1.PRD_REFER,T1.PRF_PRDDESCRI'#13#10'OR' +
      'DER BY T1.PRD_REFER'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    AfterScroll = SQLReservaProdAfterScroll
    OnCalcFields = SQLClienteProdCalcFields
    CommandText = 
      'SELECT T1.PRD_REFER,T1.PRF_PRDDESCRI,SUM(T1.PRF_QTDE) AS SQTDE F' +
      'ROM PED_IT01 T1'#13#10'WHERE T1.PRF_SITUACAO <> '#39'T'#39' AND T1.PRF_FLAG_AT' +
      'UALIZA_ESTOQUE = '#39'S'#39#13#10'GROUP BY T1.PRD_REFER,T1.PRF_PRDDESCRI'#13#10'OR' +
      'DER BY T1.PRD_REFER'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 755
    Top = 102
    object SQLReservaProdPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SQLReservaProdPRF_PRDDESCRI: TStringField
      FieldName = 'PRF_PRDDESCRI'
      Size = 80
    end
    object SQLReservaProdSQTDE: TFMTBCDField
      FieldName = 'SQTDE'
      Precision = 15
    end
  end
  object DsReservaProd: TDataSource
    DataSet = SQLReservaProd
    Left = 768
    Top = 98
  end
  object SQLReservaPed: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT T1.PED_CODIGO,T1.PRD_REFER,T2.PED_DTENTRADA,T2.CLI_CODIGO' +
      ',T3.CLI_RAZAO,T2.REP_CODIGO,T4.REP_NOME,(T1.PRF_QTDE-T1.PRF_QTDE' +
      'FAT) AS SQTDEFATURAR FROM PED_IT01 T1'#13#10'JOIN PED0000 T2 ON (T1.PE' +
      'D_CODIGO = T2.PED_CODIGO) JOIN CLI0000 T3 ON (T2.CLI_CODIGO = T3' +
      '.CLI_CODIGO) JOIN REP0000 T4 ON (T2.REP_CODIGO = T4.REP_CODIGO)'#13 +
      #10'WHERE T1.PRF_SITUACAO <> '#39'T'#39' AND T1.PRF_FLAG_ATUALIZA_ESTOQUE =' +
      ' '#39'S'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SQLClienteProdCalcFields
    CommandText = 
      'SELECT T1.PED_CODIGO,T1.PRD_REFER,T2.PED_DTENTRADA,T2.CLI_CODIGO' +
      ',T3.CLI_RAZAO,T2.REP_CODIGO,T4.REP_NOME,(T1.PRF_QTDE-T1.PRF_QTDE' +
      'FAT) AS SQTDEFATURAR FROM PED_IT01 T1'#13#10'JOIN PED0000 T2 ON (T1.PE' +
      'D_CODIGO = T2.PED_CODIGO) JOIN CLI0000 T3 ON (T2.CLI_CODIGO = T3' +
      '.CLI_CODIGO) JOIN REP0000 T4 ON (T2.REP_CODIGO = T4.REP_CODIGO)'#13 +
      #10'WHERE T1.PRF_SITUACAO <> '#39'T'#39' AND T1.PRF_FLAG_ATUALIZA_ESTOQUE =' +
      ' '#39'S'#39
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 755
    Top = 165
    object SQLReservaPedPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SQLReservaPedPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SQLReservaPedPED_DTENTRADA: TSQLTimeStampField
      FieldName = 'PED_DTENTRADA'
    end
    object SQLReservaPedCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SQLReservaPedCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object SQLReservaPedREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SQLReservaPedREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object SQLReservaPedSQTDEFATURAR: TFMTBCDField
      FieldName = 'SQTDEFATURAR'
      Precision = 15
    end
  end
  object DsReservaPed: TDataSource
    DataSet = SQLReservaPed
    Left = 784
    Top = 161
  end
  object SQLPedidosFast: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'PED.PED_CODIGO,'#13#10'PED.PED_DTENTRADA,'#13#10'PED.PED_DTSAIDA,'#13#10'P' +
      'ED.PED_EXPEDICAO,'#13#10'PED.PED_COMIS1,'#13#10'PED.PED_COMIS2,'#13#10'PED.PED_COM' +
      'IS3,'#13#10'PED.PED_FRETE,'#13#10'PED.PED_FRETE2,'#13#10'PED.PED_SITCRED,'#13#10'PED.PED' +
      '_PRIORIDADE,'#13#10'PED.PED_DESCTONF,'#13#10'PED.PED_DESCTOPC1,'#13#10'PED.PED_DES' +
      'CTOPC2,'#13#10'PED.PED_DESCTOVL,'#13#10'PED.PED_TOTUPS,'#13#10'PED.PED_VLTUPS,'#13#10'PE' +
      'D.PED_VLTOTAL_LIQ,'#13#10'PED.PED_VLTOTAL_IPI,'#13#10'PED.PED_VLTOTAL_BRUTO,' +
      #13#10'PED.PED_OBSNOTA,'#13#10'PED.PED_OBSG1,'#13#10'PED.PED_OBSG2,'#13#10'PED.PED_OBSG' +
      '3,'#13#10'PED.PED_OBSG4,'#13#10'PED.PED_OBSG5,'#13#10'PED.PED_OBSG6,'#13#10'PED.PED_OBSG' +
      '7,'#13#10'PED.CLI_CODIGO,'#13#10'CLI.CLI_RAZAO,'#13#10'CLI.CLI_FANTASIA,'#13#10'CLI.CLI_' +
      'ENDERE,'#13#10'CLI.CLI_BAIRRO,'#13#10'CLI.CLI_CIDADE,'#13#10'CLI.CLI_UF,'#13#10'CLI.CLI_' +
      'CEP,'#13#10'CLI.CLI_PESSOA,'#13#10'CLI.CLI_CGC,'#13#10'CLI.CLI_INSC,'#13#10'CLI.CLI_CONT' +
      'ATO,'#13#10'CLI.CLI_FONE,'#13#10'CLI.CLI_FAX,'#13#10'CLI.CLI_ENDENTR,'#13#10'CLI.CLI_CID' +
      'ENTR,'#13#10'CLI.CLI_UFENTR,'#13#10'CLI.CLI_CEPENTR,'#13#10'CLI.CLI_ENDFAT,'#13#10'CLI.C' +
      'LI_CIDFAT,'#13#10'CLI.CLI_UFFAT,'#13#10'CLI.CLI_CEPFAT,'#13#10'CLI.CLI_EMAIL,'#13#10'CLI' +
      '.CLI_EMAIL_ALTERNATIVO,'#13#10'PED.REP_CODIGO,'#13#10'REP.REP_NOME,'#13#10'PED.PCL' +
      '_CODIGO,'#13#10'PCL.PCL_NOME,'#13#10'PED.TRP_CODIGO,'#13#10'TRP.TRP_RAZAO,'#13#10'TRP.TR' +
      'P_FONE,'#13#10'PED.TRP_REDESP,'#13#10'TRR.TRP_RAZAO,'#13#10'TRR.TRP_FONE,'#13#10'PED.OPV' +
      '_CODIGO,'#13#10'OPV.OPV_DESCRICAO'#13#10'from ped0000 PED'#13#10'LEFT JOIN CLI0000' +
      ' CLI on PED.cli_codigo = CLI.cli_codigo'#13#10'LEFT JOIN REP0000 REP o' +
      'n PED.rep_codigo = REP.rep_codigo'#13#10'LEFT JOIN PCL0000 PCL on PED.' +
      'pcl_codigo = PCL.pcl_codigo'#13#10'LEFT JOIN TRP0000 TRP on PED.trp_co' +
      'digo = TRP.trp_codigo'#13#10'LEFT JOIN TRP0000 TRR ON PED.trp_redesp =' +
      ' TRR.trp_codigo'#13#10'LEFT JOIN OPV0000 OPV ON (OPV.OPV_CODIGO = PED.' +
      'OPV_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'Select'#13#10'PED.PED_CODIGO,'#13#10'PED.PED_DTENTRADA,'#13#10'PED.PED_DTSAIDA,'#13#10'P' +
      'ED.PED_EXPEDICAO,'#13#10'PED.PED_COMIS1,'#13#10'PED.PED_COMIS2,'#13#10'PED.PED_COM' +
      'IS3,'#13#10'PED.PED_FRETE,'#13#10'PED.PED_FRETE2,'#13#10'PED.PED_SITCRED,'#13#10'PED.PED' +
      '_PRIORIDADE,'#13#10'PED.PED_DESCTONF,'#13#10'PED.PED_DESCTOPC1,'#13#10'PED.PED_DES' +
      'CTOPC2,'#13#10'PED.PED_DESCTOVL,'#13#10'PED.PED_TOTUPS,'#13#10'PED.PED_VLTUPS,'#13#10'PE' +
      'D.PED_VLTOTAL_LIQ,'#13#10'PED.PED_VLTOTAL_IPI,'#13#10'PED.PED_VLTOTAL_BRUTO,' +
      #13#10'PED.PED_OBSNOTA,'#13#10'PED.PED_OBSG1,'#13#10'PED.PED_OBSG2,'#13#10'PED.PED_OBSG' +
      '3,'#13#10'PED.PED_OBSG4,'#13#10'PED.PED_OBSG5,'#13#10'PED.PED_OBSG6,'#13#10'PED.PED_OBSG' +
      '7,'#13#10'PED.CLI_CODIGO,'#13#10'CLI.CLI_RAZAO,'#13#10'CLI.CLI_FANTASIA,'#13#10'CLI.CLI_' +
      'ENDERE,'#13#10'CLI.CLI_BAIRRO,'#13#10'CLI.CLI_CIDADE,'#13#10'CLI.CLI_UF,'#13#10'CLI.CLI_' +
      'CEP,'#13#10'CLI.CLI_PESSOA,'#13#10'CLI.CLI_CGC,'#13#10'CLI.CLI_INSC,'#13#10'CLI.CLI_CONT' +
      'ATO,'#13#10'CLI.CLI_FONE,'#13#10'CLI.CLI_FAX,'#13#10'CLI.CLI_ENDENTR,'#13#10'CLI.CLI_CID' +
      'ENTR,'#13#10'CLI.CLI_UFENTR,'#13#10'CLI.CLI_CEPENTR,'#13#10'CLI.CLI_ENDFAT,'#13#10'CLI.C' +
      'LI_CIDFAT,'#13#10'CLI.CLI_UFFAT,'#13#10'CLI.CLI_CEPFAT,'#13#10'CLI.CLI_EMAIL,'#13#10'CLI' +
      '.CLI_EMAIL_ALTERNATIVO,'#13#10'PED.REP_CODIGO,'#13#10'REP.REP_NOME,'#13#10'PED.PCL' +
      '_CODIGO,'#13#10'PCL.PCL_NOME,'#13#10'PED.TRP_CODIGO,'#13#10'TRP.TRP_RAZAO,'#13#10'TRP.TR' +
      'P_FONE,'#13#10'PED.TRP_REDESP,'#13#10'TRR.TRP_RAZAO,'#13#10'TRR.TRP_FONE,'#13#10'PED.OPV' +
      '_CODIGO,'#13#10'OPV.OPV_DESCRICAO'#13#10'from ped0000 PED'#13#10'LEFT JOIN CLI0000' +
      ' CLI on PED.cli_codigo = CLI.cli_codigo'#13#10'LEFT JOIN REP0000 REP o' +
      'n PED.rep_codigo = REP.rep_codigo'#13#10'LEFT JOIN PCL0000 PCL on PED.' +
      'pcl_codigo = PCL.pcl_codigo'#13#10'LEFT JOIN TRP0000 TRP on PED.trp_co' +
      'digo = TRP.trp_codigo'#13#10'LEFT JOIN TRP0000 TRR ON PED.trp_redesp =' +
      ' TRR.trp_codigo'#13#10'LEFT JOIN OPV0000 OPV ON (OPV.OPV_CODIGO = PED.' +
      'OPV_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 648
    object SQLPedidosFastPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Required = True
      Size = 7
    end
    object SQLPedidosFastPED_DTENTRADA: TSQLTimeStampField
      FieldName = 'PED_DTENTRADA'
    end
    object SQLPedidosFastPED_DTSAIDA: TSQLTimeStampField
      FieldName = 'PED_DTSAIDA'
    end
    object SQLPedidosFastPED_EXPEDICAO: TStringField
      FieldName = 'PED_EXPEDICAO'
      Size = 7
    end
    object SQLPedidosFastPED_COMIS1: TFMTBCDField
      FieldName = 'PED_COMIS1'
      Precision = 15
    end
    object SQLPedidosFastPED_COMIS2: TFMTBCDField
      FieldName = 'PED_COMIS2'
      Precision = 15
    end
    object SQLPedidosFastPED_COMIS3: TFMTBCDField
      FieldName = 'PED_COMIS3'
      Precision = 15
    end
    object SQLPedidosFastPED_FRETE: TStringField
      FieldName = 'PED_FRETE'
      Size = 1
    end
    object SQLPedidosFastPED_FRETE2: TStringField
      FieldName = 'PED_FRETE2'
      Size = 1
    end
    object SQLPedidosFastPED_SITCRED: TStringField
      FieldName = 'PED_SITCRED'
      Size = 10
    end
    object SQLPedidosFastPED_PRIORIDADE: TStringField
      FieldName = 'PED_PRIORIDADE'
      Size = 10
    end
    object SQLPedidosFastPED_DESCTONF: TStringField
      FieldName = 'PED_DESCTONF'
      FixedChar = True
      Size = 1
    end
    object SQLPedidosFastPED_DESCTOPC1: TFMTBCDField
      FieldName = 'PED_DESCTOPC1'
      Precision = 15
    end
    object SQLPedidosFastPED_DESCTOPC2: TFMTBCDField
      FieldName = 'PED_DESCTOPC2'
      Precision = 15
    end
    object SQLPedidosFastPED_DESCTOVL: TFMTBCDField
      FieldName = 'PED_DESCTOVL'
      Precision = 15
    end
    object SQLPedidosFastPED_TOTUPS: TFMTBCDField
      FieldName = 'PED_TOTUPS'
      Precision = 15
    end
    object SQLPedidosFastPED_VLTUPS: TFMTBCDField
      FieldName = 'PED_VLTUPS'
      Precision = 15
    end
    object SQLPedidosFastPED_VLTOTAL_LIQ: TFMTBCDField
      FieldName = 'PED_VLTOTAL_LIQ'
      Precision = 15
    end
    object SQLPedidosFastPED_VLTOTAL_IPI: TFMTBCDField
      FieldName = 'PED_VLTOTAL_IPI'
      Precision = 15
    end
    object SQLPedidosFastPED_VLTOTAL_BRUTO: TFMTBCDField
      FieldName = 'PED_VLTOTAL_BRUTO'
      Precision = 15
    end
    object SQLPedidosFastPED_OBSNOTA: TStringField
      FieldName = 'PED_OBSNOTA'
      Size = 60
    end
    object SQLPedidosFastPED_OBSG1: TStringField
      FieldName = 'PED_OBSG1'
      Size = 100
    end
    object SQLPedidosFastPED_OBSG2: TStringField
      FieldName = 'PED_OBSG2'
      Size = 100
    end
    object SQLPedidosFastPED_OBSG3: TStringField
      FieldName = 'PED_OBSG3'
      Size = 100
    end
    object SQLPedidosFastPED_OBSG4: TStringField
      FieldName = 'PED_OBSG4'
      Size = 100
    end
    object SQLPedidosFastPED_OBSG5: TStringField
      FieldName = 'PED_OBSG5'
      Size = 100
    end
    object SQLPedidosFastPED_OBSG6: TStringField
      FieldName = 'PED_OBSG6'
      Size = 100
    end
    object SQLPedidosFastPED_OBSG7: TStringField
      FieldName = 'PED_OBSG7'
      Size = 100
    end
    object SQLPedidosFastCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SQLPedidosFastCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object SQLPedidosFastCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Size = 55
    end
    object SQLPedidosFastCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 50
    end
    object SQLPedidosFastCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object SQLPedidosFastCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object SQLPedidosFastCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object SQLPedidosFastCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 8
    end
    object SQLPedidosFastCLI_PESSOA: TStringField
      FieldName = 'CLI_PESSOA'
      Size = 1
    end
    object SQLPedidosFastCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object SQLPedidosFastCLI_INSC: TStringField
      FieldName = 'CLI_INSC'
      Size = 18
    end
    object SQLPedidosFastCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 25
    end
    object SQLPedidosFastCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object SQLPedidosFastCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 11
    end
    object SQLPedidosFastCLI_ENDENTR: TStringField
      FieldName = 'CLI_ENDENTR'
      Size = 50
    end
    object SQLPedidosFastCLI_CIDENTR: TStringField
      FieldName = 'CLI_CIDENTR'
      Size = 30
    end
    object SQLPedidosFastCLI_UFENTR: TStringField
      FieldName = 'CLI_UFENTR'
      Size = 2
    end
    object SQLPedidosFastCLI_CEPENTR: TStringField
      FieldName = 'CLI_CEPENTR'
      Size = 8
    end
    object SQLPedidosFastCLI_ENDFAT: TStringField
      FieldName = 'CLI_ENDFAT'
      Size = 50
    end
    object SQLPedidosFastCLI_CIDFAT: TStringField
      FieldName = 'CLI_CIDFAT'
      Size = 30
    end
    object SQLPedidosFastCLI_UFFAT: TStringField
      FieldName = 'CLI_UFFAT'
      Size = 2
    end
    object SQLPedidosFastCLI_CEPFAT: TStringField
      FieldName = 'CLI_CEPFAT'
      Size = 8
    end
    object SQLPedidosFastCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 50
    end
    object SQLPedidosFastREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SQLPedidosFastREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object SQLPedidosFastPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 3
    end
    object SQLPedidosFastPCL_NOME: TStringField
      FieldName = 'PCL_NOME'
      Size = 35
    end
    object SQLPedidosFastTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object SQLPedidosFastTRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      Size = 45
    end
    object SQLPedidosFastTRP_FONE: TStringField
      FieldName = 'TRP_FONE'
      Size = 11
    end
    object SQLPedidosFastTRP_REDESP: TStringField
      FieldName = 'TRP_REDESP'
      Size = 3
    end
    object SQLPedidosFastTRP_RAZAO_1: TStringField
      FieldName = 'TRP_RAZAO_1'
      Size = 45
    end
    object SQLPedidosFastTRP_FONE_1: TStringField
      FieldName = 'TRP_FONE_1'
      Size = 11
    end
    object SQLPedidosFastOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
    end
    object SQLPedidosFastOPV_DESCRICAO: TStringField
      FieldName = 'OPV_DESCRICAO'
      Size = 30
    end
    object SQLPedidosFastCLI_EMAIL_ALTERNATIVO: TStringField
      FieldName = 'CLI_EMAIL_ALTERNATIVO'
      Size = 50
    end
  end
  object DSPedidoFast: TDataSource
    DataSet = SQLPedidosFast
    Left = 676
  end
  object frxDataPedido: TfrxDBDataset
    UserName = 'frxDataPedido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PED_CODIGO=PED_CODIGO'
      'PED_DTENTRADA=PED_DTENTRADA'
      'PED_DTSAIDA=PED_DTSAIDA'
      'PED_EXPEDICAO=PED_EXPEDICAO'
      'PED_COMIS1=PED_COMIS1'
      'PED_COMIS2=PED_COMIS2'
      'PED_COMIS3=PED_COMIS3'
      'PED_FRETE=PED_FRETE'
      'PED_FRETE2=PED_FRETE2'
      'PED_SITCRED=PED_SITCRED'
      'PED_PRIORIDADE=PED_PRIORIDADE'
      'PED_DESCTONF=PED_DESCTONF'
      'PED_DESCTOPC1=PED_DESCTOPC1'
      'PED_DESCTOPC2=PED_DESCTOPC2'
      'PED_DESCTOVL=PED_DESCTOVL'
      'PED_TOTUPS=PED_TOTUPS'
      'PED_VLTUPS=PED_VLTUPS'
      'PED_VLTOTAL_LIQ=PED_VLTOTAL_LIQ'
      'PED_VLTOTAL_IPI=PED_VLTOTAL_IPI'
      'PED_VLTOTAL_BRUTO=PED_VLTOTAL_BRUTO'
      'PED_OBSNOTA=PED_OBSNOTA'
      'PED_OBSG1=PED_OBSG1'
      'PED_OBSG2=PED_OBSG2'
      'PED_OBSG3=PED_OBSG3'
      'PED_OBSG4=PED_OBSG4'
      'PED_OBSG5=PED_OBSG5'
      'PED_OBSG6=PED_OBSG6'
      'PED_OBSG7=PED_OBSG7'
      'CLI_CODIGO=CLI_CODIGO'
      'CLI_RAZAO=CLI_RAZAO'
      'CLI_FANTASIA=CLI_FANTASIA'
      'CLI_ENDERE=CLI_ENDERE'
      'CLI_BAIRRO=CLI_BAIRRO'
      'CLI_CIDADE=CLI_CIDADE'
      'CLI_UF=CLI_UF'
      'CLI_CEP=CLI_CEP'
      'CLI_PESSOA=CLI_PESSOA'
      'CLI_CGC=CLI_CGC'
      'CLI_INSC=CLI_INSC'
      'CLI_CONTATO=CLI_CONTATO'
      'CLI_FONE=CLI_FONE'
      'CLI_FAX=CLI_FAX'
      'CLI_ENDENTR=CLI_ENDENTR'
      'CLI_CIDENTR=CLI_CIDENTR'
      'CLI_UFENTR=CLI_UFENTR'
      'CLI_CEPENTR=CLI_CEPENTR'
      'CLI_ENDFAT=CLI_ENDFAT'
      'CLI_CIDFAT=CLI_CIDFAT'
      'CLI_UFFAT=CLI_UFFAT'
      'CLI_CEPFAT=CLI_CEPFAT'
      'CLI_EMAIL=CLI_EMAIL'
      'REP_CODIGO=REP_CODIGO'
      'REP_NOME=REP_NOME'
      'PCL_CODIGO=PCL_CODIGO'
      'PCL_NOME=PCL_NOME'
      'TRP_CODIGO=TRP_CODIGO'
      'TRP_RAZAO=TRP_RAZAO'
      'TRP_FONE=TRP_FONE'
      'TRP_REDESP=TRP_REDESP'
      'TRP_RAZAO_1=TRP_RAZAO_1'
      'TRP_FONE_1=TRP_FONE_1'
      'OPV_CODIGO=OPV_CODIGO'
      'OPV_DESCRICAO=OPV_DESCRICAO'
      'CLI_EMAIL_ALTERNATIVO=CLI_EMAIL_ALTERNATIVO')
    DataSource = DSPedidoFast
    BCDToCurrency = False
    Left = 704
  end
  object frxPedido: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40812.858008344900000000
    ReportOptions.LastChange = 40998.578917280090000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      'poi:string;                        '
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      'poi:= '#39'12'#39';                   '
      'end;'
      ''
      'procedure Page1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '           '
      'end;'
      ''
      'procedure ReportTitle1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   poi:= '#39'12'#39';  '
      'end;'
      ''
      'procedure ReportTitle1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                         '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxPedidoGetValue
    Left = 734
    Datasets = <
      item
        DataSet = frxDataItensPedido
        DataSetName = 'frxDataItensPedido'
      end
      item
        DataSet = frxDataPedido
        DataSetName = 'frxDataPedido'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      DataSet = frxDataPedido
      DataSetName = 'frxDataPedido'
      OnAfterPrint = 'Page1OnAfterPrint'
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 283.464750000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'ReportTitle1OnAfterPrint'
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
        object LogoEmpresa: TfrxPictureView
          Left = 3.779530000000000000
          Top = 2.779530000000001000
          Width = 120.944960000000000000
          Height = 68.031539999999990000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo4: TfrxMemoView
          Align = baRight
          Left = 574.181510000000000000
          Top = 18.795300000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PEDIDO]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 653.551640000000000000
          Top = 18.795300000000000000
          Width = 52.913420000000010000
          Height = 15.118120000000000000
          DataField = 'PED_CODIGO'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDataPedido."PED_CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 81.929190000000010000
          Width = 90.708720000000060000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data de ENTRADA:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 101.519790000000000000
          Top = 81.929190000000010000
          Width = 86.929133859999990000
          Height = 15.118120000000000000
          DataField = 'PED_DTENTRADA'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataPedido."PED_DTENTRADA"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 105.165430000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Raz'#227'o Social')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 98.267780000000000000
          Top = 105.165430000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          DataField = 'CLI_RAZAO'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDataPedido."CLI_RAZAO"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 75.370130000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Top = 102.606370000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 122.842610000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 98.267780000000000000
          Top = 122.842610000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          DataField = 'CLI_ENDERE'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataPedido."CLI_ENDERE"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Top = 141.519790000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 98.267780000000000000
          Top = 141.519790000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          DataField = 'CLI_CIDADE'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataPedido."CLI_CIDADE"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 3.779530000000000000
          Top = 160.196970000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ/CNPF')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 179.874150000000000000
          Width = 68.031540000000010000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Contato')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 98.267780000000000000
          Top = 179.874150000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          DataField = 'CLI_CONTATO'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataPedido."CLI_CONTATO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 199.551330000000000000
          Width = 75.590599999999990000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Representante')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 136.063080000000000000
          Top = 199.551330000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          DataField = 'REP_NOME'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataPedido."REP_NOME"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 3.779530000000000000
          Top = 219.228510000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Transportadora')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 98.267780000000000000
          Top = 219.228510000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataField = 'TRP_CODIGO'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataPedido."TRP_CODIGO"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 98.267780000000000000
          Top = 199.551330000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataField = 'REP_CODIGO'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataPedido."REP_CODIGO"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 136.063080000000000000
          Top = 219.228510000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          DataField = 'TRP_RAZAO'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataPedido."TRP_RAZAO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 3.779530000000000000
          Top = 238.700990000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cond. de Pagto')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 83.149660000000000000
          Top = 238.700990000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 83.149660000000000000
          Top = 219.228510000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 83.149660000000000000
          Top = 199.551330000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 83.149660000000000000
          Top = 179.874150000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 83.149660000000000000
          Top = 160.196970000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 83.149660000000000000
          Top = 141.519790000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 83.149660000000000000
          Top = 122.842610000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 83.149660000000000000
          Top = 105.165430000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = -22.133890000000000000
          Top = 258.378170000000000000
          Width = 740.787416220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo35: TfrxMemoView
          Left = 375.149970000000000000
          Top = 238.700990000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Email')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 375.149970000000000000
          Top = 105.165430000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fantasia')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 375.149970000000000000
          Top = 122.842610000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Bairro')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 375.149970000000000000
          Top = 141.519790000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Estado')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 375.149970000000000000
          Top = 160.196970000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Insc. Est')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 375.149970000000000000
          Top = 179.874150000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fone')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 375.149970000000000000
          Top = 219.228510000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Frete:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 446.961040000000000000
          Top = 105.165430000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 446.961040000000000000
          Top = 122.842610000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 446.961040000000000000
          Top = 141.519790000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 446.961040000000000000
          Top = 160.196970000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 446.961040000000000000
          Top = 179.874150000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 446.961040000000000000
          Top = 219.228510000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 446.961040000000000000
          Top = 238.700990000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 458.299630000000000000
          Top = 105.165430000000000000
          Width = 502.677490000000000000
          Height = 15.118120000000000000
          DataField = 'CLI_FANTASIA'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataPedido."CLI_FANTASIA"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 458.299630000000000000
          Top = 122.842610000000000000
          Width = 253.228510000000000000
          Height = 15.118120000000000000
          DataField = 'CLI_BAIRRO'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataPedido."CLI_BAIRRO"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 458.299630000000000000
          Top = 141.519790000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'CLI_UF'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataPedido."CLI_UF"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 458.299630000000000000
          Top = 160.196970000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          DataField = 'CLI_INSC'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataPedido."CLI_INSC"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 458.299630000000000000
          Top = 179.874150000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CLI_FONE]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 564.126470000000000000
          Top = 141.519790000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cep:')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 598.142240000000000000
          Top = 141.519790000000000000
          Width = 94.488249999999990000
          Height = 15.118120000000000000
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CLI_CEP]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 574.126470000000000000
          Top = 179.874150000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fax:')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 609.480830000000000000
          Top = 179.874150000000000000
          Width = 94.488249999999990000
          Height = 15.118120000000000000
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CLI_FAX]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 246.071120000000000000
          Top = 81.929190000000010000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data de ENTREGA:')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 339.677490000000000000
          Top = 81.929190000000010000
          Width = 86.929190000000010000
          Height = 15.118120000000000000
          DataField = 'PED_DTSAIDA'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataPedido."PED_DTSAIDA"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 456.787880000000000000
          Top = 81.929190000000010000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tipo: ')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 3.779530000000000000
          Top = 261.937230000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'REFER'#202'NCIA')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 81.929190000000010000
          Top = 261.937230000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'QTDE')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 120.283550000000000000
          Top = 261.937230000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 280.834880000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo68: TfrxMemoView
          Left = 148.858380000000000000
          Top = 261.937230000000000000
          Width = 75.590599999999990000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 532.803649999999900000
          Top = 261.937230000000000000
          Width = 68.031540000000010000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'PRE'#199'O UNIT R$')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 629.189550000000100000
          Top = 261.937230000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'P. TOTAL R$')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 695.575450000000000000
          Top = 261.937230000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'IPI')
          ParentFont = False
        end
        object wFrxRazao: TfrxMemoView
          Left = 129.960730000000000000
          Top = 2.559059999999999000
          Width = 487.559370000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
        end
        object wFrxEndereco: TfrxMemoView
          Left = 129.976500000000000000
          Top = 19.779530000000000000
          Width = 438.425479999999800000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENDERECO]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 129.960730000000000000
          Top = 37.795300000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CEP]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 196.874150000000000000
          Top = 37.795300000000000000
          Width = 200.315090000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CIDADE]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 402.086890000000000000
          Top = 37.795300000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[UF]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 428.543600000000000000
          Top = 37.795300000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FONE]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 129.740260000000000000
          Top = 56.692950000000000000
          Width = 268.346630000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[EMAIL]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 695.386210000000000000
          Top = 2.000000000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PAGE#]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 667.283860000000000000
          Top = 2.000000000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Pag.:')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 487.338900000000000000
          Top = 81.929190000000010000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          DataField = 'OPV_DESCRICAO'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataPedido."OPV_DESCRICAO"]')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 97.063080000000000000
          Top = 238.346630000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          DataField = 'PCL_NOME'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataPedido."PCL_NOME"]')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 457.323130000000000000
          Top = 219.228510000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PED_FRETE]')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 457.323130000000000000
          Top = 237.905690000000000000
          Width = 253.228510000000000000
          Height = 15.118120000000000000
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataPedido."CLI_EMAIL_ALTERNATIVO"]')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 467.866420000000000000
          Top = 56.692950000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CNPJ]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 431.323130000000000000
          Top = 56.692950000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 98.267780000000000000
          Top = 159.740260000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CLICNPJ]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 584.929500000000000000
          Top = 56.913420000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Inscri'#231#227'o:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 631.724800000000000000
          Top = 56.692950000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[INSCR]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        DataSet = frxDataItensPedido
        DataSetName = 'frxDataItensPedido'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_REFER'
          DataSet = frxDataItensPedido
          DataSetName = 'frxDataItensPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataItensPedido."PRD_REFER"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 74.929190000000010000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataField = 'PRF_QTDE'
          DataSet = frxDataItensPedido
          DataSetName = 'frxDataItensPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataItensPedido."PRF_QTDE"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 116.283550000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'PRD_UND'
          DataSet = frxDataItensPedido
          DataSetName = 'frxDataItensPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataItensPedido."PRD_UND"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 147.858380000000000000
          Width = 385.512060000000100000
          Height = 15.118120000000000000
          DataField = 'PRF_PRDDESCRI'
          DataSet = frxDataItensPedido
          DataSetName = 'frxDataItensPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataItensPedido."PRF_PRDDESCRI"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 537.803649999999900000
          Width = 68.031540000000010000
          Height = 15.118120000000000000
          DataField = 'PRF_PRECO'
          DataSet = frxDataItensPedido
          DataSetName = 'frxDataItensPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataItensPedido."PRF_PRECO"]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 687.575450000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DataField = 'PRF_IPIALIQ'
          DataSet = frxDataItensPedido
          DataSetName = 'frxDataItensPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataItensPedido."PRF_IPIALIQ"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 609.622450000000000000
          Width = 75.590599999999990000
          Height = 15.118120000000000000
          DataField = 'CC_PRECO_TOT'
          DataSet = frxDataItensPedido
          DataSetName = 'frxDataItensPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataItensPedido."CC_PRECO_TOT"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 400.630180000000000000
        Width = 718.110700000000000000
        object Line5: TfrxLineView
          Left = 1.606370000000000000
          Top = 23.779530000000020000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Left = 1.606370000000000000
          Top = 2.779530000000022000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          Left = 75.590599999999990000
          Top = 6.559059999999988000
          Width = 30.236240000000000000
          Height = 11.338590000000000000
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataItensPedido."PRF_QTDE">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 613.299630000000000000
          Top = 6.779530000000022000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDataItensPedido."CC_PRECO_TOT">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 105.826840000000000000
        Top = 487.559370000000000000
        Width = 718.110700000000000000
        object Line7: TfrxLineView
          Left = 1.330860000000000000
          Top = 100.440939999999900000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo27: TfrxMemoView
          Left = 5.070810000000000000
          Top = 3.677180000000021000
          Width = 529.134200000000000000
          Height = 11.338590000000000000
          DataField = 'PED_OBSG1'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataPedido."PED_OBSG1"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 4.425170000000000000
          Top = 18.354359999999930000
          Width = 529.134200000000000000
          Height = 11.338590000000000000
          DataField = 'PED_OBSG2'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataPedido."PED_OBSG2"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 537.764069999999900000
          Top = 3.000000000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'VALOR DO IPI')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 537.543600000000000000
          Top = 18.118119999999980000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'DESCONTO')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 537.323130000000000000
          Top = 32.456709999999870000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'TOTAL DO PEDIDO')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 3.850340000000000000
          Top = 32.354359999999990000
          Width = 529.134200000000000000
          Height = 11.338590000000000000
          DataField = 'PED_OBSG3'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataPedido."PED_OBSG3"]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 3.425170000000000000
          Top = 45.692950000000050000
          Width = 529.134200000000000000
          Height = 11.338590000000000000
          DataField = 'PED_OBSG4'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataPedido."PED_OBSG4"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 3.000000000000000000
          Top = 59.692950000000050000
          Width = 529.134200000000000000
          Height = 11.338590000000000000
          DataField = 'PED_OBSG5'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataPedido."PED_OBSG5"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 3.204700000000000000
          Top = 73.472480000000080000
          Width = 529.134200000000000000
          Height = 11.338590000000000000
          DataField = 'PED_OBSG6'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataPedido."PED_OBSG6"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 3.440940000000000000
          Top = 86.149659999999970000
          Width = 529.134200000000000000
          Height = 11.338590000000000000
          DataField = 'PED_OBSG7'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDataPedido."PED_OBSG7"]')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 625.181583230000000000
          Top = 18.252010000000040000
          Width = 86.929116769999990000
          Height = 11.338590000000000000
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataPedido."PED_DESCTOVL"]')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 625.181583230000000000
          Top = 2.440940000000012000
          Width = 86.929116769999990000
          Height = 11.338590000000000000
          DataField = 'PED_VLTOTAL_IPI'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataPedido."PED_VLTOTAL_IPI"]')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 625.181583230000000000
          Top = 32.338590000000010000
          Width = 86.929116769999990000
          Height = 11.338590000000000000
          DataField = 'PED_VLTOTAL_BRUTO'
          DataSet = frxDataPedido
          DataSetName = 'frxDataPedido'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDataPedido."PED_VLTOTAL_BRUTO"]')
          ParentFont = False
        end
      end
    end
  end
  object SQLItensPedidoFast: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'PIT.*,'#13#10'PRD.PRD_UND,'#13#10'PRD.PRD_PESOKG,'#13#10'PRD.PRD_DCVAR1,'#13#10 +
      'PRD.PRD_DCVAR2,'#13#10'PRD.PRD_DCVAR3,'#13#10'PRD.PRD_DCVAR4,'#13#10'PRD.PRD_DCVAR' +
      '5,'#13#10'PRD.PRD_DCVAR6,'#13#10'PRD.PRD_DCVAR7,'#13#10'PRD.PRD_DCVAR8,'#13#10'PTI.PTI_S' +
      'IGLA'#13#10'from PED_IT01 PIT'#13#10'LEFT JOIN PRD0000 PRD ON (PIT.PRD_REFER' +
      ' = PRD.PRD_REFER)'#13#10'LEFT JOIN pRD_TIPO PTI ON (PRD.PTI_CODIGO = P' +
      'TI.PTI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SQLItensPedidoFastCalcFields
    CommandText = 
      'Select'#13#10'PIT.*,'#13#10'PRD.PRD_UND,'#13#10'PRD.PRD_PESOKG,'#13#10'PRD.PRD_DCVAR1,'#13#10 +
      'PRD.PRD_DCVAR2,'#13#10'PRD.PRD_DCVAR3,'#13#10'PRD.PRD_DCVAR4,'#13#10'PRD.PRD_DCVAR' +
      '5,'#13#10'PRD.PRD_DCVAR6,'#13#10'PRD.PRD_DCVAR7,'#13#10'PRD.PRD_DCVAR8,'#13#10'PTI.PTI_S' +
      'IGLA'#13#10'from PED_IT01 PIT'#13#10'LEFT JOIN PRD0000 PRD ON (PIT.PRD_REFER' +
      ' = PRD.PRD_REFER)'#13#10'LEFT JOIN pRD_TIPO PTI ON (PRD.PTI_CODIGO = P' +
      'TI.PTI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 648
    Top = 32
    object SQLItensPedidoFastPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      Required = True
    end
    object SQLItensPedidoFastPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SQLItensPedidoFastPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SQLItensPedidoFastPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      DisplayFormat = '#,##0'
      Precision = 15
    end
    object SQLItensPedidoFastPRF_QTDEFAT: TFMTBCDField
      FieldName = 'PRF_QTDEFAT'
      Precision = 15
    end
    object SQLItensPedidoFastPRF_PRECO: TFMTBCDField
      FieldName = 'PRF_PRECO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 5
    end
    object SQLItensPedidoFastPRF_SITUACAO: TStringField
      FieldName = 'PRF_SITUACAO'
      Size = 1
    end
    object SQLItensPedidoFastPRF_IDESCTO2: TFloatField
      FieldName = 'PRF_IDESCTO2'
      ProviderFlags = [pfInUpdate]
    end
    object SQLItensPedidoFastPRF_IDESCTO1: TFloatField
      FieldName = 'PRF_IDESCTO1'
      ProviderFlags = [pfInUpdate]
    end
    object SQLItensPedidoFastPRF_ITEMCOMIS: TFMTBCDField
      FieldName = 'PRF_ITEMCOMIS'
      Precision = 15
    end
    object SQLItensPedidoFastPRF_IPIALIQ: TFMTBCDField
      FieldName = 'PRF_IPIALIQ'
      Precision = 15
    end
    object SQLItensPedidoFastPRF_ICMSALIQ: TFMTBCDField
      FieldName = 'PRF_ICMSALIQ'
      Precision = 15
    end
    object SQLItensPedidoFastPRF_PRDDESCRI: TStringField
      FieldName = 'PRF_PRDDESCRI'
      Size = 80
    end
    object SQLItensPedidoFastPRF_VAR1: TFMTBCDField
      FieldName = 'PRF_VAR1'
      Precision = 15
    end
    object SQLItensPedidoFastPRF_VAR2: TFMTBCDField
      FieldName = 'PRF_VAR2'
      Precision = 15
    end
    object SQLItensPedidoFastPRF_VAR3: TFMTBCDField
      FieldName = 'PRF_VAR3'
      Precision = 15
    end
    object SQLItensPedidoFastPRF_VAR4: TFMTBCDField
      FieldName = 'PRF_VAR4'
      Precision = 15
    end
    object SQLItensPedidoFastPRF_VAR5: TFMTBCDField
      FieldName = 'PRF_VAR5'
      Precision = 15
    end
    object SQLItensPedidoFastPRF_VAR6: TFMTBCDField
      FieldName = 'PRF_VAR6'
      Precision = 15
    end
    object SQLItensPedidoFastPRF_VAR7: TFMTBCDField
      FieldName = 'PRF_VAR7'
      Precision = 15
    end
    object SQLItensPedidoFastPRF_VAR8: TFMTBCDField
      FieldName = 'PRF_VAR8'
      Precision = 15
    end
    object SQLItensPedidoFastEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SQLItensPedidoFastPRF_PRECO_BRUTO: TFMTBCDField
      FieldName = 'PRF_PRECO_BRUTO'
      Precision = 15
      Size = 5
    end
    object SQLItensPedidoFastPRF_OP: TStringField
      FieldName = 'PRF_OP'
      Size = 1
    end
    object SQLItensPedidoFastPRF_QTDE_FAT_VAR1: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR1'
      Precision = 15
    end
    object SQLItensPedidoFastPRF_QTDE_FAT_VAR2: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR2'
      Precision = 15
    end
    object SQLItensPedidoFastPRF_QTDE_FAT_VAR3: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR3'
      Precision = 15
    end
    object SQLItensPedidoFastPRF_QTDE_FAT_VAR4: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR4'
      Precision = 15
    end
    object SQLItensPedidoFastPRF_QTDE_FAT_VAR5: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR5'
      Precision = 15
    end
    object SQLItensPedidoFastPRF_QTDE_FAT_VAR6: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR6'
      Precision = 15
    end
    object SQLItensPedidoFastPRF_QTDE_FAT_VAR7: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR7'
      Precision = 15
    end
    object SQLItensPedidoFastPRF_QTDE_FAT_VAR8: TFMTBCDField
      FieldName = 'PRF_QTDE_FAT_VAR8'
      Precision = 15
    end
    object SQLItensPedidoFastPRF_FLAG_ATUALIZA_ESTOQUE: TStringField
      FieldName = 'PRF_FLAG_ATUALIZA_ESTOQUE'
      Size = 1
    end
    object SQLItensPedidoFastPRF_ORIGEM_ITEM: TStringField
      FieldName = 'PRF_ORIGEM_ITEM'
      Size = 1
    end
    object SQLItensPedidoFastPRF_PRODUTO_AGREGADO: TStringField
      FieldName = 'PRF_PRODUTO_AGREGADO'
      Size = 1
    end
    object SQLItensPedidoFastPRF_VALOR_ICMS: TFMTBCDField
      FieldName = 'PRF_VALOR_ICMS'
      Precision = 15
    end
    object SQLItensPedidoFastUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object SQLItensPedidoFastPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 6
    end
    object SQLItensPedidoFastAMX_CODIGO_DESTINO: TStringField
      FieldName = 'AMX_CODIGO_DESTINO'
      Size = 4
    end
    object SQLItensPedidoFastAMX_CODIGO_ORIGEM: TStringField
      FieldName = 'AMX_CODIGO_ORIGEM'
      Size = 4
    end
    object SQLItensPedidoFastPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SQLItensPedidoFastPRD_PESOKG: TFMTBCDField
      FieldName = 'PRD_PESOKG'
      Precision = 15
    end
    object SQLItensPedidoFastPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object SQLItensPedidoFastPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object SQLItensPedidoFastPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object SQLItensPedidoFastPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object SQLItensPedidoFastPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object SQLItensPedidoFastPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object SQLItensPedidoFastPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object SQLItensPedidoFastPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
    object SQLItensPedidoFastPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object SQLItensPedidoFastCC_PRECO_TOT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CC_PRECO_TOT'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
  end
  object DSItensPedidoFast: TDataSource
    DataSet = SQLItensPedidoFast
    Left = 676
    Top = 32
  end
  object frxDataItensPedido: TfrxDBDataset
    UserName = 'frxDataItensPedido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRF_REGISTRO=PRF_REGISTRO'
      'PED_CODIGO=PED_CODIGO'
      'PRD_REFER=PRD_REFER'
      'PRF_QTDE=PRF_QTDE'
      'PRF_QTDEFAT=PRF_QTDEFAT'
      'PRF_PRECO=PRF_PRECO'
      'PRF_IDESCTO1=PRF_IDESCTO1'
      'PRF_IDESCTO2=PRF_IDESCTO2'
      'PRF_SITUACAO=PRF_SITUACAO'
      'PRF_ITEMCOMIS=PRF_ITEMCOMIS'
      'PRF_IPIALIQ=PRF_IPIALIQ'
      'PRF_ICMSALIQ=PRF_ICMSALIQ'
      'PRF_PRDDESCRI=PRF_PRDDESCRI'
      'PRF_VAR1=PRF_VAR1'
      'PRF_VAR2=PRF_VAR2'
      'PRF_VAR3=PRF_VAR3'
      'PRF_VAR4=PRF_VAR4'
      'PRF_VAR5=PRF_VAR5'
      'PRF_VAR6=PRF_VAR6'
      'PRF_VAR7=PRF_VAR7'
      'PRF_VAR8=PRF_VAR8'
      'EMP_CODIGO=EMP_CODIGO'
      'PRF_PRECO_BRUTO=PRF_PRECO_BRUTO'
      'PRF_OP=PRF_OP'
      'PRF_QTDE_FAT_VAR1=PRF_QTDE_FAT_VAR1'
      'PRF_QTDE_FAT_VAR2=PRF_QTDE_FAT_VAR2'
      'PRF_QTDE_FAT_VAR3=PRF_QTDE_FAT_VAR3'
      'PRF_QTDE_FAT_VAR4=PRF_QTDE_FAT_VAR4'
      'PRF_QTDE_FAT_VAR5=PRF_QTDE_FAT_VAR5'
      'PRF_QTDE_FAT_VAR6=PRF_QTDE_FAT_VAR6'
      'PRF_QTDE_FAT_VAR7=PRF_QTDE_FAT_VAR7'
      'PRF_QTDE_FAT_VAR8=PRF_QTDE_FAT_VAR8'
      'PRF_FLAG_ATUALIZA_ESTOQUE=PRF_FLAG_ATUALIZA_ESTOQUE'
      'PRF_ORIGEM_ITEM=PRF_ORIGEM_ITEM'
      'PRF_PRODUTO_AGREGADO=PRF_PRODUTO_AGREGADO'
      'PRF_VALOR_ICMS=PRF_VALOR_ICMS'
      'USU_CODIGO=USU_CODIGO'
      'PRD_CODIGO=PRD_CODIGO'
      'AMX_CODIGO_DESTINO=AMX_CODIGO_DESTINO'
      'AMX_CODIGO_ORIGEM=AMX_CODIGO_ORIGEM'
      'PRD_UND=PRD_UND'
      'PRD_PESOKG=PRD_PESOKG'
      'PRD_DCVAR1=PRD_DCVAR1'
      'PRD_DCVAR2=PRD_DCVAR2'
      'PRD_DCVAR3=PRD_DCVAR3'
      'PRD_DCVAR4=PRD_DCVAR4'
      'PRD_DCVAR5=PRD_DCVAR5'
      'PRD_DCVAR6=PRD_DCVAR6'
      'PRD_DCVAR7=PRD_DCVAR7'
      'PRD_DCVAR8=PRD_DCVAR8'
      'PTI_SIGLA=PTI_SIGLA'
      'CC_PRECO_TOT=CC_PRECO_TOT')
    DataSource = DSItensPedidoFast
    BCDToCurrency = False
    Left = 704
    Top = 32
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 759
    Top = 3
  end
  object SqlPedidoDI: TSQLDataSet
    CommandText = 'SELECT T1.*  FROM PED_IT01_DI T1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 568
    Top = 304
    object SqlPedidoDIPID_REGISTRO: TIntegerField
      FieldName = 'PID_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlPedidoDIPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
    end
    object SqlPedidoDIPID_NUMERO_DI: TStringField
      FieldName = 'PID_NUMERO_DI'
      Size = 10
    end
    object SqlPedidoDIPID_DATA_DI: TDateField
      FieldName = 'PID_DATA_DI'
    end
    object SqlPedidoDIPID_LOCAL_DESEMBARACO: TStringField
      FieldName = 'PID_LOCAL_DESEMBARACO'
      Size = 60
    end
    object SqlPedidoDIPID_DATA_DESEMBARACO: TDateField
      FieldName = 'PID_DATA_DESEMBARACO'
    end
    object SqlPedidoDIPID_CODIGO_EXPORTADOR: TStringField
      FieldName = 'PID_CODIGO_EXPORTADOR'
      Size = 50
    end
    object SqlPedidoDIPID_UF_DESEMBARACO: TStringField
      FieldName = 'PID_UF_DESEMBARACO'
      Size = 2
    end
  end
  object CDSPedidoDI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPedidoDI'
    AfterInsert = CDSPedidoDIAfterInsert
    AfterPost = CDSPedidoDIAfterPost
    AfterDelete = CDSPedidoDIAfterPost
    Left = 792
    Top = 300
    object CDSPedidoDIPID_REGISTRO: TIntegerField
      FieldName = 'PID_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSPedidoDIPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
    end
    object CDSPedidoDIPID_NUMERO_DI: TStringField
      FieldName = 'PID_NUMERO_DI'
      EditMask = '9999999999;0; '
      Size = 10
    end
    object CDSPedidoDIPID_DATA_DI: TDateField
      FieldName = 'PID_DATA_DI'
      EditMask = '99/99/9999;1; '
    end
    object CDSPedidoDIPID_LOCAL_DESEMBARACO: TStringField
      FieldName = 'PID_LOCAL_DESEMBARACO'
      Size = 60
    end
    object CDSPedidoDIPID_DATA_DESEMBARACO: TDateField
      FieldName = 'PID_DATA_DESEMBARACO'
      EditMask = '99/99/9999;1; '
    end
    object CDSPedidoDIPID_CODIGO_EXPORTADOR: TStringField
      FieldName = 'PID_CODIGO_EXPORTADOR'
      Size = 50
    end
    object CDSPedidoDIPID_UF_DESEMBARACO: TStringField
      FieldName = 'PID_UF_DESEMBARACO'
      EditMask = 'AA;0; '
      Size = 2
    end
  end
  object DSPPedidoDI: TDataSetProvider
    DataSet = SqlPedidoDI
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 688
    Top = 300
  end
  object DSPedidoDI: TDataSource
    DataSet = CDSPedidoDI
    OnStateChange = DSPedidoDIStateChange
    OnDataChange = DSPedidoDIDataChange
    Left = 904
    Top = 300
  end
  object SQLPedidoDIAdicao: TSQLDataSet
    CommandText = 'SELECT T1.*  FROM PED_IT01_DI_ADICAO T1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DataCadastros.SQLConnection1
    Left = 664
    Top = 384
    object SQLPedidoDIAdicaoPDA_REGISTRO: TIntegerField
      FieldName = 'PDA_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SQLPedidoDIAdicaoPID_REGISTRO: TIntegerField
      FieldName = 'PID_REGISTRO'
    end
    object SQLPedidoDIAdicaoPDA_ADICAO: TIntegerField
      FieldName = 'PDA_ADICAO'
    end
    object SQLPedidoDIAdicaoPDA_SEQ_ADICAO: TIntegerField
      FieldName = 'PDA_SEQ_ADICAO'
    end
    object SQLPedidoDIAdicaoPDA_CODIGO_FABRICANTE: TStringField
      FieldName = 'PDA_CODIGO_FABRICANTE'
      Size = 60
    end
  end
  object DSPPedidoDIAdicao: TDataSetProvider
    DataSet = SQLPedidoDIAdicao
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 696
    Top = 388
  end
  object CDSPedidoDIAdicao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPedidoDIAdicao'
    AfterInsert = CDSPedidoDIAdicaoAfterInsert
    AfterPost = CDSPedidoDIAdicaoAfterPost
    AfterDelete = CDSPedidoDIAdicaoAfterPost
    Left = 776
    Top = 380
    object CDSPedidoDIAdicaoPDA_REGISTRO: TIntegerField
      FieldName = 'PDA_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSPedidoDIAdicaoPID_REGISTRO: TIntegerField
      FieldName = 'PID_REGISTRO'
    end
    object CDSPedidoDIAdicaoPDA_ADICAO: TIntegerField
      FieldName = 'PDA_ADICAO'
    end
    object CDSPedidoDIAdicaoPDA_SEQ_ADICAO: TIntegerField
      FieldName = 'PDA_SEQ_ADICAO'
    end
    object CDSPedidoDIAdicaoPDA_CODIGO_FABRICANTE: TStringField
      FieldName = 'PDA_CODIGO_FABRICANTE'
      Size = 60
    end
  end
  object DSPedidoDIAdicao: TDataSource
    DataSet = CDSPedidoDIAdicao
    Left = 824
    Top = 380
  end
  object DsPedItem: TDataSource
    DataSet = DataMovimento.CdsPedItem
    OnDataChange = DsPedItemDataChange
    Left = 281
    Top = 211
  end
end
