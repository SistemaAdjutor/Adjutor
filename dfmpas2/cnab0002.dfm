object FrmRetornoCNAB: TFrmRetornoCNAB
  Left = 210
  Top = 111
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Retorno arquivo CNAB'
  ClientHeight = 493
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object NbookPages: TNotebook
    Left = -3
    Top = 3
    Width = 959
    Height = 453
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'SelecionaBanco'
      object GbConsulta: TGroupBox
        Left = 10
        Top = 4
        Width = 951
        Height = 449
        Caption = 'Infor&me o Banco'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 0
        object Label2: TLabel
          Left = 797
          Top = 427
          Width = 54
          Height = 14
          Alignment = taRightJustify
          Caption = 'Total Geral:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 58
          Top = 360
          Width = 35
          Height = 14
          Caption = 'Cliente:'
        end
        object Label12: TLabel
          Left = 566
          Top = 359
          Width = 44
          Height = 14
          Alignment = taRightJustify
          Caption = 'Rejei'#231#227'o:'
        end
        object Label13: TLabel
          Left = 22
          Top = 384
          Width = 71
          Height = 14
          Alignment = taRightJustify
          Caption = 'Total Entradas:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 13
          Top = 405
          Width = 80
          Height = 14
          Alignment = taRightJustify
          Caption = 'Total Liquidadas:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 21
          Top = 427
          Width = 72
          Height = 14
          Alignment = taRightJustify
          Caption = 'Total Cartorios:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 288
          Top = 384
          Width = 75
          Height = 14
          Alignment = taRightJustify
          Caption = 'Total Rejei'#231#245'es:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 302
          Top = 405
          Width = 61
          Height = 14
          Alignment = taRightJustify
          Caption = 'Total Baixas:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 289
          Top = 427
          Width = 74
          Height = 14
          Alignment = taRightJustify
          Caption = 'Total Protestos:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 551
          Top = 384
          Width = 61
          Height = 14
          Alignment = taRightJustify
          Caption = 'Total Outros:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 557
          Top = 405
          Width = 55
          Height = 14
          Alignment = taRightJustify
          Caption = 'Total Juros:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 551
          Top = 427
          Width = 61
          Height = 14
          Alignment = taRightJustify
          Caption = 'Total Tarifas:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 797
          Top = 384
          Width = 54
          Height = 14
          Alignment = taRightJustify
          Caption = 'Sub - Total:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 795
          Top = 405
          Width = 56
          Height = 14
          Alignment = taRightJustify
          Caption = 'Total Desc.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object ldataInicial: TLabel
          Left = 11
          Top = 45
          Width = 30
          Height = 13
          Caption = 'Inicial:'
          FocusControl = DataInicial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lDataFinal: TLabel
          Left = 165
          Top = 45
          Width = 25
          Height = 13
          Caption = 'Final:'
          FocusControl = DataFinal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object GroupBox1: TGroupBox
          Left = 5
          Top = 66
          Width = 943
          Height = 115
          Caption = 'Arquivo(s) de Retorno'
          TabOrder = 6
          object DBGridRetorno: TDBGrid
            Left = 2
            Top = 16
            Width = 939
            Height = 97
            Align = alClient
            Color = 16776176
            DataSource = DataCadastros1.DSArquivoCNAB
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            PopupMenu = PopMenu
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = []
            OnCellClick = DBGridRetornoCellClick
            OnDblClick = DBGridRetornoDblClick
            OnKeyPress = DBGridRetornoKeyPress
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CNAB_DATA'
                Title.Alignment = taCenter
                Title.Caption = 'Data'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 68
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CNAB_HORA'
                Title.Alignment = taCenter
                Title.Caption = 'Hora'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CNAB_NOME_ARQUIVO'
                Title.Alignment = taCenter
                Title.Caption = 'Arquivo'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 162
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CNAB_LITERAL_ARQUIVO'
                Title.Alignment = taCenter
                Title.Caption = 'Literal Arquivo'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 143
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CNAB_AGENCIA'
                Title.Alignment = taCenter
                Title.Caption = 'Agencia'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 50
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CNAB_AGENCIA_DV'
                Title.Alignment = taCenter
                Title.Caption = 'Dig.'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 34
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CNAB_CONTA'
                Title.Alignment = taCenter
                Title.Caption = 'Conta'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 91
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CNAB_CONTA_DV'
                Title.Alignment = taCenter
                Title.Caption = 'Dig.'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 36
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CNAB_QTDE_DUPLICATA'
                Title.Alignment = taCenter
                Title.Caption = 'Titulos'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 93
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CC_STATUS_BAIXA'
                Title.Alignment = taCenter
                Title.Caption = 'Baixa'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 77
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CNAB_DATA_BAIXA'
                Title.Alignment = taCenter
                Title.Caption = 'Data'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 85
                Visible = True
              end>
          end
        end
        object BitCancelarB: TBitBtn
          Left = 849
          Top = 14
          Width = 93
          Height = 24
          Caption = 'Cancela&r'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
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
          TabOrder = 5
          Visible = False
          OnClick = BitCancelarBClick
        end
        object CCodigoBco: TCurrencyEdit
          Left = 7
          Top = 14
          Width = 42
          Height = 22
          Alignment = taCenter
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0000'
          TabOrder = 0
          ZeroEmpty = False
          OnClick = CCodigoBcoClick
          OnEnter = CCodigoBcoClick
          OnKeyPress = CCodigoBcoKeyPress
        end
        object RadCNAB400p: TRadioButton
          Left = 535
          Top = 17
          Width = 84
          Height = 16
          Caption = 'CNAB - 400'
          Checked = True
          TabOrder = 2
          TabStop = True
        end
        object RadCNAB240p: TRadioButton
          Left = 637
          Top = 17
          Width = 84
          Height = 16
          Caption = 'CNAB - 240'
          TabOrder = 3
        end
        object GroupBox4: TGroupBox
          Left = 3
          Top = 184
          Width = 942
          Height = 153
          Caption = 'Titulos (Duplicatas)'
          TabOrder = 7
          object DBGridTitulos: TDBGrid
            Left = 2
            Top = 16
            Width = 938
            Height = 135
            Align = alClient
            Color = 16776176
            DataSource = DSDupliCNAB
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'FAT_CODIGO'
                Title.Alignment = taCenter
                Title.Caption = 'Fatura'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = []
                Width = 84
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FPC_NUMER'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = []
                Width = 20
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FPC_COBNUM'
                Title.Alignment = taCenter
                Title.Caption = 'Nosso N'#250'mero'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = []
                Width = 173
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FPC_VENCTO'
                Title.Alignment = taCenter
                Title.Caption = 'Vencimento'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = []
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FPC_VLPARC'
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = []
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FPC_VLPAGO'
                Title.Alignment = taCenter
                Title.Caption = 'Valor Pago'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = []
                Width = 69
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DCN_DATA_OCORRENCIA'
                Title.Alignment = taCenter
                Title.Caption = 'Data Ocor.'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = []
                Width = 71
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DCN_COD_OCORRENCIA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = []
                Width = 49
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OCR_DESCRICAO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Title.Alignment = taCenter
                Title.Caption = 'Ocorr'#234'ncia'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clBlack
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = []
                Width = 278
                Visible = True
              end>
          end
        end
        object CTotalTitulos: TCurrencyEdit
          Left = 852
          Top = 424
          Width = 90
          Height = 20
          TabStop = False
          AutoSize = False
          Color = 14145495
          DisplayFormat = '###,###,##0.00;-###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit3: TDBEdit
          Left = 93
          Top = 358
          Width = 39
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'CLI_CODIGO'
          DataSource = DSDupliCNAB
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit4: TDBEdit
          Left = 133
          Top = 358
          Width = 324
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'CLI_RAZAO'
          DataSource = DSDupliCNAB
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit1: TDBEdit
          Left = 612
          Top = 357
          Width = 28
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'DCN_COD_REJEICAO'
          DataSource = DSDupliCNAB
          ReadOnly = True
          TabOrder = 11
        end
        object DBEdit2: TDBEdit
          Left = 641
          Top = 357
          Width = 301
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'REJ_DESCRICAO'
          DataSource = DSDupliCNAB
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object CEntradas: TCurrencyEdit
          Left = 93
          Top = 382
          Width = 90
          Height = 19
          TabStop = False
          AutoSize = False
          Color = 14145495
          DisplayFormat = '###,###,##0.00;-###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
        object CLiquidacoes: TCurrencyEdit
          Left = 93
          Top = 403
          Width = 90
          Height = 20
          TabStop = False
          AutoSize = False
          Color = 14145495
          DisplayFormat = '###,###,##0.00;-###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
        end
        object CCartorio: TCurrencyEdit
          Left = 93
          Top = 424
          Width = 90
          Height = 20
          TabStop = False
          AutoSize = False
          Color = 14145495
          DisplayFormat = '###,###,##0.00;-###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
        end
        object CRejeicao: TCurrencyEdit
          Left = 368
          Top = 382
          Width = 90
          Height = 19
          TabStop = False
          AutoSize = False
          Color = 14145495
          DisplayFormat = '###,###,##0.00;-###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
        end
        object CBaixas: TCurrencyEdit
          Left = 368
          Top = 403
          Width = 90
          Height = 20
          TabStop = False
          AutoSize = False
          Color = 14145495
          DisplayFormat = '###,###,##0.00;-###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
        end
        object CProtesto: TCurrencyEdit
          Left = 368
          Top = 424
          Width = 90
          Height = 20
          TabStop = False
          AutoSize = False
          Color = 14145495
          DisplayFormat = '###,###,##0.00;-###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 18
        end
        object CTarifas: TCurrencyEdit
          Left = 612
          Top = 424
          Width = 90
          Height = 20
          TabStop = False
          AutoSize = False
          Color = 14145495
          DisplayFormat = '###,###,##0.00;-###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 19
        end
        object CJuros: TCurrencyEdit
          Left = 612
          Top = 403
          Width = 90
          Height = 20
          TabStop = False
          AutoSize = False
          Color = 14145495
          DisplayFormat = '###,###,##0.00;-###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 20
        end
        object COutros: TCurrencyEdit
          Left = 612
          Top = 382
          Width = 90
          Height = 19
          TabStop = False
          AutoSize = False
          Color = 14145495
          DisplayFormat = '###,###,##0.00;-###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 21
        end
        object CSubTotal: TCurrencyEdit
          Left = 852
          Top = 382
          Width = 90
          Height = 19
          TabStop = False
          AutoSize = False
          Color = 14145495
          DisplayFormat = '###,###,##0.00;-###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 22
        end
        object CDesconto: TCurrencyEdit
          Left = 852
          Top = 403
          Width = 90
          Height = 20
          TabStop = False
          AutoSize = False
          Color = 14145495
          DisplayFormat = '###,###,##0.00;-###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 23
        end
        object GroupBox2: TGroupBox
          Left = 712
          Top = 2
          Width = 131
          Height = 39
          Caption = 'Filtro'
          TabOrder = 4
          object CbFiltro: TComboBox
            Left = 7
            Top = 14
            Width = 121
            Height = 22
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 0
            Text = 'TODOS'
            OnClick = CbFiltroClick
            Items.Strings = (
              'TODOS'
              'REMESSAS'
              'RETORNOS'
              'ESTORNO REMESSA'
              'ESTORNO RETORNO'
              'TODOS ESTORNOS')
          end
        end
        object CbBancos: TComboBox
          Left = 50
          Top = 14
          Width = 471
          Height = 22
          CharCase = ecUpperCase
          TabOrder = 1
          OnClick = CbBancosClick
        end
        object BitPesquisar: TBitBtn
          Left = 849
          Top = 15
          Width = 93
          Height = 24
          Cursor = crHandPoint
          Caption = 'Cons&ultar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            F2010000424DF201000000000000760000002800000024000000130000000100
            0400000000007C01000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
            3333333333388F3333333333000033334224333333333333338338F333333333
            0000333422224333333333333833338F33333333000033422222243333333333
            83333338F3333333000034222A22224333333338F33F33338F33333300003222
            A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
            38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
            2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
            0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
            333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
            33333A2224A2233333333338F338F83300003333333333A2224A333333333333
            8F338F33000033333333333A222433333333333338F338F30000333333333333
            A224333333333333338F38F300003333333333333A223333333333333338F8F3
            000033333333333333A3333333333333333383330000}
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 24
          OnClick = BitPesquisarClick
        end
        object DataInicial: TJvDateEdit
          Left = 44
          Top = 41
          Width = 108
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageKind = ikDatePicker
          ParentFont = False
          PopupColor = clBtnFace
          ShowNullDate = False
          YearDigits = dyFour
          TabOrder = 25
        end
        object DataFinal: TJvDateEdit
          Left = 196
          Top = 41
          Width = 111
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageKind = ikDatePicker
          ParentFont = False
          PopupColor = clBtnFace
          ShowNullDate = False
          YearDigits = dyFour
          TabOrder = 26
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'GerarArquivoCNAB'
      object GbRetorno: TGroupBox
        Left = 2
        Top = 8
        Width = 951
        Height = 445
        Caption = 'Importar retorno arquivo CNAB'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 0
        object Label18: TLabel
          Left = 12
          Top = 44
          Width = 203
          Height = 14
          Alignment = taRightJustify
          Caption = 'Caminho para importar retorno do arquivo:'
        end
        object LblSataus: TLabel
          Left = 7
          Top = 367
          Width = 133
          Height = 14
          Caption = 'Importando arquivo CNAB...'
        end
        object Label4: TLabel
          Left = 133
          Top = 22
          Width = 82
          Height = 14
          Alignment = taRightJustify
          Caption = 'Informe o Banco:'
        end
        object Label7: TLabel
          Left = 172
          Top = 66
          Width = 43
          Height = 14
          Alignment = taRightJustify
          Caption = 'Ag'#234'ncia:'
        end
        object Label10: TLabel
          Left = 144
          Top = 87
          Width = 71
          Height = 14
          Alignment = taRightJustify
          Caption = 'D'#237'gito Ag'#234'ncia:'
        end
        object Label8: TLabel
          Left = 139
          Top = 109
          Width = 76
          Height = 14
          Alignment = taRightJustify
          Caption = 'Conta Corrente:'
        end
        object Label9: TLabel
          Left = 110
          Top = 131
          Width = 105
          Height = 14
          Alignment = taRightJustify
          Caption = 'D'#237'gito Conta Corrente:'
        end
        object Label5: TLabel
          Left = 138
          Top = 151
          Width = 77
          Height = 14
          Alignment = taRightJustify
          Caption = 'C'#243'digo Carteira:'
        end
        object Label6: TLabel
          Left = 125
          Top = 195
          Width = 90
          Height = 14
          Alignment = taRightJustify
          Caption = 'Contas '#224' Receber:'
        end
        object Label16: TLabel
          Left = 86
          Top = 173
          Width = 129
          Height = 14
          Alignment = taRightJustify
          Caption = 'Ind. da Empresa no Banco:'
        end
        object Label1: TLabel
          Left = 111
          Top = 215
          Width = 104
          Height = 14
          Alignment = taRightJustify
          Caption = 'Forma de Pagamento:'
        end
        object Sb_FormaPagamento: TSpeedButton
          Left = 516
          Top = 211
          Width = 21
          Height = 19
          Hint = 'Cadastro de Forma de Pagamento'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
            FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
            00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
            F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
            00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
            F033777777777337F73309999990FFF0033377777777FFF77333099999000000
            3333777777777777333333399033333333333337773333333333333903333333
            3333333773333333333333303333333333333337333333333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = Sb_FormaPagamentoClick
        end
        object FileArqImportar: TFilenameEdit
          Left = 217
          Top = 41
          Width = 328
          Height = 22
          OnAfterDialog = FileArqImportarAfterDialog
          DefaultExt = '*.*'
          Filter = 
            'Todos Arquivos (*.*)|*.*|Arquivos de retorno (*.ret)|*.ret|Arqui' +
            'vos de texto (*.txt)|*.txt'
          Enabled = False
          ButtonWidth = 20
          NumGlyphs = 1
          TabOrder = 2
          Text = ''
        end
        object GroupBox9: TGroupBox
          Left = 6
          Top = 267
          Width = 939
          Height = 93
          TabOrder = 5
          object Label20: TLabel
            Left = 7
            Top = 12
            Width = 44
            Height = 14
            Caption = 'Duplicata'
          end
          object Label23: TLabel
            Left = 120
            Top = 12
            Width = 51
            Height = 14
            Caption = 'Movimento'
          end
          object Label24: TLabel
            Left = 205
            Top = 12
            Width = 56
            Height = 14
            Caption = 'Vencimento'
          end
          object Label25: TLabel
            Left = 294
            Top = 12
            Width = 25
            Height = 14
            Caption = 'Valor'
          end
          object Label26: TLabel
            Left = 592
            Top = 12
            Width = 31
            Height = 14
            Caption = 'Banco'
          end
          object Label28: TLabel
            Left = 7
            Top = 49
            Width = 86
            Height = 14
            Caption = 'Total de Registros'
          end
          object Label29: TLabel
            Left = 828
            Top = 49
            Width = 50
            Height = 14
            Caption = 'Valor Total'
          end
          object Label11: TLabel
            Left = 391
            Top = 12
            Width = 120
            Height = 14
            Caption = 'Nosso N'#250'mero - (Banco)'
          end
          object PDisplayDup: TPanel
            Left = 7
            Top = 26
            Width = 106
            Height = 20
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderStyle = bsSingle
            Color = 14145495
            TabOrder = 0
          end
          object PDisplayEmiss: TPanel
            Left = 120
            Top = 26
            Width = 81
            Height = 20
            BevelOuter = bvNone
            BorderStyle = bsSingle
            Caption = '  /  /    '
            Color = 14145495
            TabOrder = 1
          end
          object PDisplayVenc: TPanel
            Left = 205
            Top = 26
            Width = 84
            Height = 20
            BevelOuter = bvNone
            BorderStyle = bsSingle
            Caption = '  /  /    '
            Color = 14145495
            TabOrder = 2
          end
          object PDisplayBanco: TPanel
            Left = 594
            Top = 26
            Width = 335
            Height = 20
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderStyle = bsSingle
            Color = 14145495
            TabOrder = 3
          end
          object CRegistro: TCurrencyEdit
            Left = 7
            Top = 63
            Width = 89
            Height = 20
            TabStop = False
            Alignment = taCenter
            AutoSize = False
            Color = 14145495
            DecimalPlaces = 0
            DisplayFormat = '000000'
            ReadOnly = True
            TabOrder = 4
            ZeroEmpty = False
          end
          object CValorTotal: TCurrencyEdit
            Left = 828
            Top = 63
            Width = 101
            Height = 20
            TabStop = False
            AutoSize = False
            Color = 14145495
            DisplayFormat = '###,###,##0.00;-###,###,##0.00'
            ReadOnly = True
            TabOrder = 5
            ZeroEmpty = False
          end
          object CDisplayValor: TCurrencyEdit
            Left = 294
            Top = 26
            Width = 91
            Height = 20
            TabStop = False
            AutoSize = False
            Color = 14145495
            DisplayFormat = '###,###,##0.00;-###,###,##0.00'
            ReadOnly = True
            TabOrder = 6
            ZeroEmpty = False
          end
          object PanNossoNumero: TPanel
            Left = 391
            Top = 26
            Width = 194
            Height = 20
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderStyle = bsSingle
            Color = 14145495
            TabOrder = 7
          end
        end
        object Panel10: TPanel
          Left = 5
          Top = 381
          Width = 717
          Height = 19
          BevelOuter = bvLowered
          TabOrder = 7
          object Gauge: TGauge
            Left = 1
            Top = 1
            Width = 715
            Height = 17
            Align = alClient
            ForeColor = clNavy
            Progress = 0
          end
        end
        object BitProcessar: TBitBtn
          Left = 747
          Top = 412
          Width = 99
          Height = 24
          Caption = 'Impor&tar CNAB'
          Enabled = False
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
            33333333333F8888883F33330000324334222222443333388F3833333388F333
            000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
            F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
            223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
            3338888300003AAAAAAA33333333333888888833333333330000333333333333
            333333333333333333FFFFFF000033333333333344444433FFFF333333888888
            00003A444333333A22222438888F333338F3333800003A2243333333A2222438
            F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
            22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
            33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
            3333333333338888883333330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          TabOrder = 6
          OnClick = BitProcessarClick
        end
        object BitCancelarPro: TBitBtn
          Left = 847
          Top = 412
          Width = 93
          Height = 24
          Caption = 'Cancela&r'
          Enabled = False
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
          TabOrder = 8
        end
        object RadCNAB400: TRadioButton
          Left = 715
          Top = 21
          Width = 110
          Height = 16
          Caption = 'CNAB - 400'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          TabStop = True
        end
        object RadCNAB240: TRadioButton
          Left = 846
          Top = 21
          Width = 84
          Height = 16
          Caption = 'CNAB - 240'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object BitVisualizar: TBitBtn
          Left = 11
          Top = 412
          Width = 94
          Height = 24
          Caption = '&Visualizar CNAB'
          Enabled = False
          TabOrder = 9
          Visible = False
          OnClick = BitVisualizarClick
        end
        object BitImprimir: TBitBtn
          Left = 637
          Top = 412
          Width = 93
          Height = 24
          Caption = '&Imprimir'
          Enabled = False
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            888F8800000000000888808888888880808800000000000008080888888BBB88
            0008088888877788080800000000000008800888888888808080800000000008
            0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
            088888880FFFFFFFF08888888000000000888888888888888888}
          TabOrder = 10
          TabStop = False
          OnClick = BitImprimirClick
        end
        object CCodigoBco1: TCurrencyEdit
          Left = 217
          Top = 20
          Width = 42
          Height = 19
          Alignment = taCenter
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0000'
          TabOrder = 0
          ZeroEmpty = False
          OnClick = CCodigoBco1Click
          OnEnter = CCodigoBco1Click
          OnKeyPress = CCodigoBco1KeyPress
        end
        object CbBancos1: TComboBox
          Left = 260
          Top = 20
          Width = 284
          Height = 22
          CharCase = ecUpperCase
          TabOrder = 1
          OnClick = CbBancos1Click
        end
        object CDigitoC: TCurrencyEdit
          Left = 217
          Top = 126
          Width = 42
          Height = 20
          TabStop = False
          Alignment = taCenter
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '00'
          ReadOnly = True
          TabOrder = 11
          ZeroEmpty = False
        end
        object CDigitoAge: TCurrencyEdit
          Left = 217
          Top = 84
          Width = 42
          Height = 19
          TabStop = False
          Alignment = taCenter
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '00'
          ReadOnly = True
          TabOrder = 13
          ZeroEmpty = False
        end
        object PanAgencia: TPanel
          Left = 217
          Top = 62
          Width = 105
          Height = 20
          Alignment = taLeftJustify
          BevelOuter = bvNone
          BorderStyle = bsSingle
          Color = 14145495
          TabOrder = 14
        end
        object PanContaCorr: TPanel
          Left = 217
          Top = 105
          Width = 105
          Height = 19
          Alignment = taLeftJustify
          BevelOuter = bvNone
          BorderStyle = bsSingle
          Color = 14145495
          TabOrder = 15
        end
        object ChkBaixaTitulos: TCheckBox
          Left = 217
          Top = 195
          Width = 175
          Height = 16
          Caption = 'Baixa Autom'#225'tica dos Titulos'
          Checked = True
          State = cbChecked
          TabOrder = 16
        end
        object PanCodEmpresa: TPanel
          Left = 217
          Top = 169
          Width = 171
          Height = 20
          Alignment = taLeftJustify
          BevelOuter = bvNone
          BorderStyle = bsSingle
          Color = 14145495
          TabOrder = 17
        end
        object CCodCarteira: TEdit
          Left = 217
          Top = 148
          Width = 42
          Height = 22
          TabStop = False
          Color = 14145495
          ReadOnly = True
          TabOrder = 12
        end
        object BitTipoImpressao1: TBitBtn
          Left = 728
          Top = 412
          Width = 15
          Height = 24
          Hint = 'Ordem para Imprenss'#227'o do Relat'#243'rio'
          Enabled = False
          Glyph.Data = {
            76020000424D760200000000000036000000280000000C0000000C0000000100
            2000000000004002000000000000000000000000000000000000C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D40000000000C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400000000000000
            000000000000C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D4000000000000000000000000000000000000000000C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D4000000000000000000000000000000
            0000000000000000000000000000C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
            D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 18
          OnClick = BitTipoImpressao1Click
        end
        object EdFormaPagamento: TEdit
          Left = 217
          Top = 212
          Width = 42
          Height = 22
          CharCase = ecUpperCase
          Color = clWhite
          MaxLength = 5
          TabOrder = 19
          OnExit = EdFormaPagamentoExit
        end
        object CBFormaPagamento: TComboBoxRw
          Left = 261
          Top = 212
          Width = 209
          Height = 22
          TabOrder = 20
          OnExit = CBFormaPagamentoExit
          OnChange = CBFormaPagamentoChange
          CharCase = ecUpperCase
          LookupSelect = 'FPG_DESCRICAO'
          LookupOrderBy = 'FPG_DESCRICAO'
          LookupTable = 'FORMA_PAGAMENTO'
          GridAutoSize = False
          LookupSource = CBFormaPagamento.InternalSource
          LookupKeyField = 'FPG_REGISTRO'
          ShowButton = True
          LookupTableShare = 'TABELAS'
          AutoF8WinTitulo = 'Formas de Pagamento'
          AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
          GridLeft = 0
          GridWidth = 0
          GridHeight = 100
          GridTop = 0
          GridShowWhenEnter = False
          SelectWithDoubleClick = False
          LimparCampoAoSair = True
          Tabela = 'FORMA_PAGAMENTO'
          CamposCarregar = 'FPG_DESCRICAO'
          CamposRetornar = 'FPG_REGISTRO'
          CamposOrdernar = 'FPG_DESCRICAO'
          ConexaoBanco = DataCadastros.SQLConnection1
          Compartilhar = 'TABELAS'
          Localizado = False
          CodigoEmpresa = 0
          ResetaCampos = False
          MultiEmpresa = False
          Localizar = False
          CarregarCombo = False
          itemindex = 0
          style = csDropDown
        end
      end
    end
  end
  object BitBtnSair: TBitBtn
    Left = 859
    Top = 462
    Width = 92
    Height = 23
    Cursor = crHandPoint
    Caption = '&Sair'
    TabOrder = 1
    OnClick = BitBtnSairClick
  end
  object BitBaixaTitulos: TBitBtn
    Left = 12
    Top = 462
    Width = 94
    Height = 23
    Cursor = crHandPoint
    Caption = '&Baixa Titulos'
    Enabled = False
    TabOrder = 2
    OnClick = BitBaixaTitulosClick
  end
  object BitImprimir1: TBitBtn
    Left = 208
    Top = 462
    Width = 93
    Height = 23
    Caption = '&Imprimir'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      888F8800000000000888808888888880808800000000000008080888888BBB88
      0008088888877788080800000000000008800888888888808080800000000008
      0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
      088888880FFFFFFFF08888888000000000888888888888888888}
    TabOrder = 4
    TabStop = False
    OnClick = BitImprimir1Click
  end
  object BitEstornoRemessa: TBitBtn
    Left = 108
    Top = 462
    Width = 94
    Height = 23
    Cursor = crHandPoint
    Caption = '&Estorno Remessa'
    Enabled = False
    TabOrder = 3
    OnClick = BitEstornoRemessaClick
  end
  object PanProcessando: TPanel
    Left = 500
    Top = 180
    Width = 375
    Height = 90
    BevelInner = bvLowered
    BevelWidth = 2
    TabOrder = 5
    Visible = False
    object LblProcesso: TLabel
      Left = 9
      Top = 53
      Width = 73
      Height = 14
      Caption = 'Processando...'
    end
    object LblMensagem1: TLabel
      Left = 9
      Top = 23
      Width = 58
      Height = 14
      Caption = 'Mensagem1'
    end
    object LblMensagem2: TLabel
      Left = 9
      Top = 38
      Width = 58
      Height = 14
      Caption = 'Mensagem1'
    end
    object Panel1: TPanel
      Left = 4
      Top = 4
      Width = 367
      Height = 16
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Aguarde o processamento.'
      Color = 8404992
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Button1: TButton
        Left = 686
        Top = 3
        Width = 15
        Height = 13
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = ButFechaClick
      end
    end
    object ProgressBar: TProgressBar
      Left = 7
      Top = 66
      Width = 360
      Height = 19
      TabOrder = 1
    end
  end
  object PanVisualizar: TPanel
    Left = 7
    Top = 494
    Width = 714
    Height = 438
    BevelInner = bvLowered
    BevelWidth = 2
    BorderStyle = bsSingle
    TabOrder = 6
    Visible = False
    object Bevel4: TBevel
      Left = 7
      Top = 398
      Width = 695
      Height = 6
      Shape = bsTopLine
    end
    object PanCaptionV: TPanel
      Left = 4
      Top = 4
      Width = 702
      Height = 16
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Gerado Arquivo Remessa'
      Color = 8404992
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object ButFecha: TButton
        Left = 686
        Top = 3
        Width = 15
        Height = 13
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = ButFechaClick
      end
    end
    object BitFechaVisual: TBitBtn
      Left = 604
      Top = 405
      Width = 92
      Height = 23
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 1
      OnClick = BitFechaVisualClick
    end
    object Status: TStatusBar
      Left = 6
      Top = 378
      Width = 754
      Height = 20
      Align = alNone
      Panels = <
        item
          Width = 60
        end>
    end
    object TVisualizar: TRxRichEdit
      Left = 5
      Top = 21
      Width = 701
      Height = 357
      DrawEndPage = False
      AutoURLDetect = False
      TabOrder = 3
      UndoLimit = 300
      WordWrap = False
    end
  end
  object BitTipoImpressao: TBitBtn
    Left = 298
    Top = 462
    Width = 15
    Height = 23
    Hint = 'Ordem para Imprenss'#227'o do Relat'#243'rio'
    Glyph.Data = {
      76020000424D760200000000000036000000280000000C0000000C0000000100
      2000000000004002000000000000000000000000000000000000C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D40000000000C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400000000000000
      000000000000C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D4000000000000000000000000000000000000000000C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D4000000000000000000000000000000
      0000000000000000000000000000C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
      D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = BitTipoImpressaoClick
  end
  object PanTipo: TPanel
    Left = 515
    Top = 59
    Width = 332
    Height = 148
    BevelInner = bvLowered
    BevelWidth = 2
    TabOrder = 8
    Visible = False
    object GroupBox3: TGroupBox
      Left = 5
      Top = 62
      Width = 321
      Height = 54
      Caption = 'Ordem Impress'#227'o'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 0
      object RadNumFatura: TRadioButton
        Left = 13
        Top = 15
        Width = 100
        Height = 16
        Caption = '&N'#250'mero Fatura'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RadCodCliente: TRadioButton
        Left = 13
        Top = 33
        Width = 111
        Height = 15
        Caption = 'C'#243'digo Cl&iente'
        TabOrder = 1
      end
      object RadRazao: TRadioButton
        Left = 186
        Top = 15
        Width = 111
        Height = 16
        Caption = '&Raz'#227'o Cliente'
        TabOrder = 2
      end
      object RADdatavencimento: TRadioButton
        Left = 187
        Top = 32
        Width = 113
        Height = 17
        Caption = 'Data de Vencimento'
        TabOrder = 3
      end
    end
    object GroupBox6: TGroupBox
      Left = 5
      Top = 22
      Width = 321
      Height = 40
      Caption = 'Dispositivo de sa'#237'da'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 1
      object RadVideo: TRadioButton
        Left = 13
        Top = 18
        Width = 68
        Height = 15
        Caption = '&Video'
        TabOrder = 0
      end
      object RadImpressora: TRadioButton
        Left = 187
        Top = 18
        Width = 79
        Height = 15
        Caption = '&Impressora'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object Panel2: TPanel
      Left = 4
      Top = 4
      Width = 324
      Height = 16
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Impress'#227'o'
      Color = 8404992
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object Button2: TButton
      Left = 247
      Top = 119
      Width = 75
      Height = 21
      Caption = 'Fechar'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object SQLDupliCNAB: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    BeforeOpen = SQLDupliCNABBeforeOpen
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 248
    Top = 288
    object SQLDupliCNABDCN_REGISTRO: TIntegerField
      FieldName = 'DCN_REGISTRO'
      Required = True
    end
    object SQLDupliCNABDCN_COD_REMESSA: TIntegerField
      FieldName = 'DCN_COD_REMESSA'
    end
    object SQLDupliCNABDCN_DUPLICATA: TStringField
      FieldName = 'DCN_DUPLICATA'
      Size = 10
    end
    object SQLDupliCNABDCN_DUP_PARCELA: TStringField
      Alignment = taCenter
      FieldName = 'DCN_DUP_PARCELA'
      FixedChar = True
      Size = 2
    end
    object SQLDupliCNABDCN_COD_OCORRENCIA: TStringField
      Alignment = taCenter
      FieldName = 'DCN_COD_OCORRENCIA'
      Size = 3
    end
    object SQLDupliCNABDCN_DATA_OCORRENCIA: TDateField
      Alignment = taCenter
      FieldName = 'DCN_DATA_OCORRENCIA'
    end
    object SQLDupliCNABDCN_INSTRUCAO1: TStringField
      FieldName = 'DCN_INSTRUCAO1'
      Size = 3
    end
    object SQLDupliCNABDCN_INSTRUCAO2: TStringField
      FieldName = 'DCN_INSTRUCAO2'
      Size = 3
    end
    object SQLDupliCNABDCN_COD_REJEICAO: TStringField
      FieldName = 'DCN_COD_REJEICAO'
      Size = 3
    end
    object SQLDupliCNABDCN_INDIC_CREDITO: TStringField
      FieldName = 'DCN_INDIC_CREDITO'
      Size = 3
    end
    object SQLDupliCNABDCN_NOSSO_NUMERO: TStringField
      FieldName = 'DCN_NOSSO_NUMERO'
      Size = 15
    end
    object SQLDupliCNABDCN_TARIFA: TFMTBCDField
      FieldName = 'DCN_TARIFA'
      EditFormat = '###,###,##0.00'
      Precision = 15
    end
    object SQLDupliCNABDCN_VALOR_ABATIMENTO: TFMTBCDField
      FieldName = 'DCN_VALOR_ABATIMENTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
    end
    object SQLDupliCNABDCN_VALOR_DESCONTO: TFMTBCDField
      FieldName = 'DCN_VALOR_DESCONTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
    end
    object SQLDupliCNABDCN_VALOR_PAGO: TFMTBCDField
      FieldName = 'DCN_VALOR_PAGO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
    end
    object SQLDupliCNABDCN_JUROS_MORA: TFMTBCDField
      FieldName = 'DCN_JUROS_MORA'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
    end
    object SQLDupliCNABDCN_VALOR_MULTA: TFMTBCDField
      FieldName = 'DCN_VALOR_MULTA'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
    end
    object SQLDupliCNABDCN_STATUS_BAIXA: TStringField
      FieldName = 'DCN_STATUS_BAIXA'
      FixedChar = True
      Size = 1
    end
    object SQLDupliCNABDCN_IDENTIFICA_TITULO: TStringField
      FieldName = 'DCN_IDENTIFICA_TITULO'
    end
    object SQLDupliCNABDCN_PROTESTAR: TStringField
      FieldName = 'DCN_PROTESTAR'
      FixedChar = True
      Size = 1
    end
    object SQLDupliCNABDCN_DIAS_PROT: TIntegerField
      FieldName = 'DCN_DIAS_PROT'
    end
    object SQLDupliCNABFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object SQLDupliCNABFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object SQLDupliCNABFPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Size = 13
    end
    object SQLDupliCNABFPC_VENCTO: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'FPC_VENCTO'
    end
    object SQLDupliCNABFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
    end
    object SQLDupliCNABFPC_VLPAGO: TFMTBCDField
      FieldName = 'FPC_VLPAGO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
    end
    object SQLDupliCNABCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SQLDupliCNABCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 50
    end
    object SQLDupliCNABOCR_DESCRICAO: TStringField
      FieldName = 'OCR_DESCRICAO'
      Size = 80
    end
    object SQLDupliCNABREJ_DESCRICAO: TStringField
      FieldName = 'REJ_DESCRICAO'
      Size = 100
    end
    object SQLDupliCNABEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SQLDupliCNABFPC_PAGTO: TSQLTimeStampField
      FieldName = 'FPC_PAGTO'
      ProviderFlags = []
    end
    object SQLDupliCNABFPC_JUROS: TFMTBCDField
      FieldName = 'FPC_JUROS'
      ProviderFlags = []
      Precision = 15
    end
    object SQLDupliCNABFAT_REGISTRO: TIntegerField
      FieldName = 'FAT_REGISTRO'
      Required = True
    end
    object SQLDupliCNABFPC_CODIGO_REGISTRO_RETORNO: TStringField
      FieldName = 'FPC_CODIGO_REGISTRO_RETORNO'
      Size = 100
    end
  end
  object DSDupliCNAB: TDataSource
    DataSet = SQLDupliCNAB
    Left = 336
    Top = 288
  end
  object PopMenu: TPopupMenu
    Left = 96
    Top = 80
    object BaixaTitulosrefretorno1: TMenuItem
      Caption = 'Baixa Titulos ref. retorno'
    end
  end
  object SQLConsultaArquivo: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 128
    Top = 80
  end
  object SQLContaBanco: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 248
    Top = 136
  end
  object SQLConsultaCRC: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 64
    Top = 80
  end
  object SQLConsulta: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 32
    Top = 80
  end
  object SQLRelatorio: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 153
    Top = 118
  end
  object SQLDetalhe: TSqlClientDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 181
    Top = 118
  end
  object RDProtRetornoCNAB: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.MostrarSETUP = True
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Relat'#243'rio Protocolo Retorno Arquivo CNAB 400'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    OpcoesPreview.BotaoPDF = Ativo
    OpcoesPreview.BotaoEMAIL = Ativo
    OpcoesPreview.ExtraBtnStatus = Invisivel
    OpcoesPreview.ExtraBtnWidth = 80
    OpcoesPreview.ExtraBtnCaption = 'Extra Btn'
    OpcoesPreview.PreviewMode = vPrinter
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'DELTRESS SISTEMAS S/S LTDA'
    RegistroUsuario.SerieProduto = 'DEMONSTRA'#199#195'O'
    RegistroUsuario.AutorizacaoKey = '*** SEM REGISTRO ***'
    About = 'RDprint 8.2 - TRIAL'
    Acentuacao = SemAcento
    CaptionSetup = 'Relat'#243'rio Protocolo Retorno Arquivo CNAB 400'
    TitulodoRelatorio = 'Relat'#243'rio Protocolo Retorno Arquivo CNAB 400'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERIC=EPSON'
      'TEXT=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    PortaComunicacao = 'LPT1'
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 137
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S17cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    FonteGrafica = sCourierNew
    ReduzParaCaber = True
    OnNewPage = RDProtRetornoCNABNewPage
    OnBeforeNewPage = RDProtRetornoCNABBeforeNewPage
    Left = 427
    Top = 206
  end
  object CDSRecebimentos: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'    t1.FRE_REGISTRO,'#13#10'    T1.FRE_DATA_RECEBIMENTO,'#13#10'    ' +
      'T1.FRE_VALOR,'#13#10'    T1.FRE_DESCONTO,'#13#10'    T1.FRE_JUROS,'#13#10'    T1.F' +
      'RE_MULTA,'#13#10'    T1.FRE_RECEBIDO,'#13#10'    T1.BAN_CODIGO,'#13#10'    T2.BAN_' +
      'RAZAO,'#13#10'    T1.FPG_REGISTRO,'#13#10'    T3.FPG_DESCRICAO,'#13#10'    T1.USU_' +
      'CODIGO,'#13#10'   t4.USU_NOME'#13#10'FROM'#13#10'FAT_RECEBIMENTO T1'#13#10'JOIN BAN0000 ' +
      'T2 ON (T2.BAN_CODIGO = T1.BAN_CODIGO)'#13#10'JOIN FORMA_PAGAMENTO T3 O' +
      'N (T3.FPG_REGISTRO = T1.FPG_REGISTRO)'#13#10'JOIN USUARIO T4 ON (T4.US' +
      'U_CODIGO = T1.USU_CODIGO)'#13#10'WHERE T1.FAT_REGISTRO = 0'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'    t1.FRE_REGISTRO,'#13#10'    T1.FRE_DATA_RECEBIMENTO,'#13#10'    ' +
      'T1.FRE_VALOR,'#13#10'    T1.FRE_DESCONTO,'#13#10'    T1.FRE_JUROS,'#13#10'    T1.F' +
      'RE_MULTA,'#13#10'    T1.FRE_RECEBIDO,'#13#10'    T1.BAN_CODIGO,'#13#10'    T2.BAN_' +
      'RAZAO,'#13#10'    T1.FPG_REGISTRO,'#13#10'    T3.FPG_DESCRICAO,'#13#10'    T1.USU_' +
      'CODIGO,'#13#10'   t4.USU_NOME'#13#10'FROM'#13#10'FAT_RECEBIMENTO T1'#13#10'JOIN BAN0000 ' +
      'T2 ON (T2.BAN_CODIGO = T1.BAN_CODIGO)'#13#10'JOIN FORMA_PAGAMENTO T3 O' +
      'N (T3.FPG_REGISTRO = T1.FPG_REGISTRO)'#13#10'JOIN USUARIO T4 ON (T4.US' +
      'U_CODIGO = T1.USU_CODIGO)'#13#10'WHERE T1.FAT_REGISTRO = 0'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 577
    Top = 453
    object CDSRecebimentosFRE_DATA_RECEBIMENTO: TDateField
      FieldName = 'FRE_DATA_RECEBIMENTO'
    end
    object CDSRecebimentosFRE_VALOR: TFMTBCDField
      FieldName = 'FRE_VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CDSRecebimentosFRE_DESCONTO: TFMTBCDField
      FieldName = 'FRE_DESCONTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CDSRecebimentosFRE_JUROS: TFMTBCDField
      FieldName = 'FRE_JUROS'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CDSRecebimentosFRE_MULTA: TFMTBCDField
      FieldName = 'FRE_MULTA'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CDSRecebimentosFRE_RECEBIDO: TFMTBCDField
      FieldName = 'FRE_RECEBIDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CDSRecebimentosBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object CDSRecebimentosBAN_RAZAO: TStringField
      FieldName = 'BAN_RAZAO'
      Size = 45
    end
    object CDSRecebimentosFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
    end
    object CDSRecebimentosFPG_DESCRICAO: TStringField
      FieldName = 'FPG_DESCRICAO'
      Size = 100
    end
    object CDSRecebimentosUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object CDSRecebimentosUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Size = 40
    end
    object CDSRecebimentosFRE_REGISTRO: TIntegerField
      FieldName = 'FRE_REGISTRO'
      Required = True
    end
  end
  object RDProtCNAB: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.MostrarSETUP = True
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Relat'#243'rio Protocolo remessa arquivo CNAB 400'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    OpcoesPreview.BotaoPDF = Ativo
    OpcoesPreview.BotaoEMAIL = Ativo
    OpcoesPreview.ExtraBtnStatus = Invisivel
    OpcoesPreview.ExtraBtnWidth = 80
    OpcoesPreview.ExtraBtnCaption = 'Extra Btn'
    OpcoesPreview.PreviewMode = vPrinter
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'DELTRESS SISTEMAS S/S LTDA'
    RegistroUsuario.SerieProduto = 'DEMONSTRA'#199#195'O'
    RegistroUsuario.AutorizacaoKey = '*** SEM REGISTRO ***'
    About = 'RDprint 8.2 - TRIAL'
    Acentuacao = SemAcento
    CaptionSetup = 'Relat'#243'rio Protocolo remessa arquivo CNAB 400'
    TitulodoRelatorio = 'Relat'#243'rio Protocolo remessa arquivo CNAB 400'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERIC=EPSON'
      'TEXT=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    PortaComunicacao = 'LPT1'
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 137
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S17cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    FonteGrafica = sCourierNew
    ReduzParaCaber = True
    OnNewPage = RDProtCNABNewPage
    OnBeforeNewPage = RDProtCNABBeforeNewPage
    Left = 429
    Top = 134
  end
  object bl1: TACBrBoleto
    Banco.Numero = 104
    Banco.TamanhoMaximoNossoNum = 15
    Banco.TipoCobranca = cobCaixaEconomica
    Banco.OrientacoesBanco.Strings = (
      
        'SAC CAIXA: 0800 726 0101 (informa'#231#245'es, reclama'#231#245'es, sugest'#245'es e ' +
        'elogios) '
      'Para pessoas com defici'#234'ncia auditiva ou de fala: 0800 726 2492 '
      
        'Ouvidoria: 0800 725 7474 (reclama'#231#245'es n'#227'o solucionadas e den'#250'nci' +
        'as) '
      'caixa.gov.br ')
    Banco.LayoutVersaoArquivo = 0
    Banco.LayoutVersaoLote = 0
    Banco.CasasDecimaisMoraJuros = 2
    Cedente.TipoInscricao = pJuridica
    Cedente.IdentDistribuicao = tbBancoDistribui
    Cedente.PIX.TipoChavePIX = tchNenhuma
    NumeroArquivo = 0
    Configuracoes.Arquivos.LogRegistro = False
    Configuracoes.WebService.SSLHttpLib = httpOpenSSL
    Configuracoes.WebService.StoreName = 'My'
    Configuracoes.WebService.Ambiente = taHomologacao
    Configuracoes.WebService.Operacao = tpInclui
    Configuracoes.WebService.VersaoDF = '1.2'
    Left = 520
    Top = 416
  end
end
