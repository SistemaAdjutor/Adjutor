inherited frmPesquisaClientes: TfrmPesquisaClientes
  Caption = 'frmPesquisaClientes'
  ClientHeight = 578
  ClientWidth = 1262
  Constraints.MinWidth = 1268
  WindowState = wsMaximized
  ExplicitWidth = 1278
  ExplicitHeight = 617
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 1262
    Height = 542
    ExplicitWidth = 1262
    ExplicitHeight = 542
    inherited tsNotas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1254
      ExplicitHeight = 514
      inherited pnControle: TPanel
        Width = 1254
        Height = 115
        ExplicitWidth = 1254
        ExplicitHeight = 115
        inherited pnFiltro: TPanel
          Width = 1254
          Height = 115
          Align = alClient
          ExplicitWidth = 1254
          ExplicitHeight = 115
          inherited pn1: TPanel
            Top = 0
            Width = 1254
            Height = 115
            Align = alClient
            ExplicitTop = 0
            ExplicitWidth = 1254
            ExplicitHeight = 115
            DesignSize = (
              1254
              115)
            inherited btnPesquisa: TSpeedButton
              Left = 945
              Top = 12
              ExplicitLeft = 945
              ExplicitTop = 12
            end
            inherited btnLimpar: TSpeedButton
              Left = 945
              Top = 31
              ExplicitLeft = 945
              ExplicitTop = 31
            end
            inherited btnImprime: TSpeedButton
              Left = 1031
              Top = 11
              OnClick = btnImprimeClick
              ExplicitLeft = 1031
              ExplicitTop = 11
            end
            inherited btnExcel: TSpeedButton
              Left = 1108
              Top = 11
              ExplicitLeft = 1108
              ExplicitTop = 11
            end
            inherited btnFechar: TSpeedButton
              Left = 1187
              Top = 11
              ExplicitLeft = 1187
              ExplicitTop = 11
            end
            object Label1: TLabel
              Left = 439
              Top = 3
              Width = 45
              Height = 13
              Caption = 'Situa'#231#227'o:'
            end
            object Label2: TLabel
              Left = 506
              Top = 75
              Width = 94
              Height = 13
              Caption = 'Ramo de Atividade:'
            end
            object Label5: TLabel
              Left = 743
              Top = 75
              Width = 50
              Height = 13
              Caption = 'Vendedor:'
            end
            object Label6: TLabel
              Left = 989
              Top = 72
              Width = 34
              Height = 13
              Caption = 'Origem'
            end
            object LabeledEdit1: TLabeledEdit
              Left = 9
              Top = 16
              Width = 281
              Height = 21
              EditLabel.Width = 193
              EditLabel.Height = 13
              EditLabel.Caption = 'C'#243'digo, Raz'#227'o Social ou Nome Fantasia:'
              LabelSpacing = 1
              TabOrder = 0
            end
            object LabeledEdit2: TLabeledEdit
              Left = 296
              Top = 16
              Width = 138
              Height = 21
              EditLabel.Width = 66
              EditLabel.Height = 13
              EditLabel.Caption = 'CNPJ ou CPF:'
              LabelSpacing = 1
              TabOrder = 1
            end
            object LabeledEdit3: TLabeledEdit
              Left = 9
              Top = 55
              Width = 203
              Height = 21
              EditLabel.Width = 60
              EditLabel.Height = 13
              EditLabel.Caption = 'Cidade / UF:'
              LabelSpacing = 1
              TabOrder = 4
            end
            object LabeledEdit4: TLabeledEdit
              Left = 218
              Top = 55
              Width = 121
              Height = 21
              EditLabel.Width = 32
              EditLabel.Height = 13
              EditLabel.Caption = 'Bairro:'
              LabelSpacing = 1
              TabOrder = 5
            end
            object ComboBox1: TComboBox
              Left = 439
              Top = 16
              Width = 135
              Height = 21
              TabOrder = 2
              Text = 'ComboBox1'
              Items.Strings = (
                'Ativos'
                'Inativos'
                'Em Recupera'#231#227'o'
                'Todos'
                '')
            end
            object cbAtividade: TSgDbSearchCombo
              Left = 507
              Top = 88
              Width = 207
              Height = 21
              TabOrder = 9
              LookupSelect = 'RCL_CODIGO, RCL_ATIVIDADE'
              LookupOrderBy = 'RCL_ATIVIDADE'
              LookupTable = 'CLI_ATV1'
              LookupDispl = 'RCL_ATIVIDADE'
              GridAutoSize = False
              LookupSource = qRamo
              LookupKeyField = 'RCL_CODIGO'
              ShowButton = True
              LookupTableShare = 'TABELAS'
              AutoF8WinTitulo = 'Ramos de Atividade'
              AutoF8ColumnsTitulo = 'C'#243'digo, Atividade'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridTop = 0
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
              LimparCampoAoSair = True
            end
            object GbPesquisaData: TGroupBox
              Left = 580
              Top = 1
              Width = 342
              Height = 66
              Caption = 'Informe o Per'#237'odo de cadastro'
              TabOrder = 3
              object Label3: TLabel
                Left = 6
                Top = 19
                Width = 60
                Height = 13
                Caption = 'Data Inicial :'
              end
              object Label4: TLabel
                Left = 174
                Top = 20
                Width = 55
                Height = 13
                Caption = 'Data Final :'
              end
              object RxDataInicial: TJvDateEdit
                Left = 72
                Top = 16
                Width = 88
                Height = 21
                Glyph.Data = {
                  76050000424D760500000000000036000000280000001C0000000C0000000100
                  2000000000004005000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF008080800080808000808080008080800080808000808080008080
                  800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
                  0000800000008000000000000000800000000000000000000000800000008080
                  8000FF00FF008080800080808000808080008080800080808000808080008080
                  80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
                  0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
                  80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
                  C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
                  0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
                  FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
                  8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
                  000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                  C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF008080800080808000808080008080800080808000808080008080
                  80008080800080808000808080008080800080808000FF00FF00}
                ImageKind = ikCustom
                NumGlyphs = 2
                ButtonWidth = 20
                PopupColor = clBtnFace
                ShowNullDate = False
                YearDigits = dyFour
                TabOrder = 0
              end
              object RxDataFinal: TJvDateEdit
                Left = 235
                Top = 16
                Width = 89
                Height = 21
                Glyph.Data = {
                  76050000424D760500000000000036000000280000001C0000000C0000000100
                  2000000000004005000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF008080800080808000808080008080800080808000808080008080
                  800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
                  0000800000008000000000000000800000000000000000000000800000008080
                  8000FF00FF008080800080808000808080008080800080808000808080008080
                  80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
                  0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
                  80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
                  C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
                  0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
                  FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
                  8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
                  000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
                  FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
                  FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
                  8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
                  FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                  C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF008080800080808000808080008080800080808000808080008080
                  80008080800080808000808080008080800080808000FF00FF00}
                ImageKind = ikCustom
                NumGlyphs = 2
                ButtonWidth = 20
                PopupColor = clBtnFace
                ShowNullDate = False
                YearDigits = dyFour
                TabOrder = 1
              end
              object chkUltCompra: TCheckBox
                Left = 8
                Top = 40
                Width = 201
                Height = 17
                Caption = 'Considerar tamb'#233'm '#250'ltima compra'
                TabOrder = 2
              end
            end
            object edEndereco: TLabeledEdit
              Left = 348
              Top = 55
              Width = 226
              Height = 21
              EditLabel.Width = 45
              EditLabel.Height = 13
              EditLabel.Caption = 'Endere'#231'o'
              TabOrder = 6
            end
            object rgTipoPessoa: TRadioGroup
              Left = 9
              Top = 76
              Width = 203
              Height = 32
              Caption = 'Tipo'
              Columns = 3
              Items.Strings = (
                'F'#237'sico'
                'Jur'#237'dico'
                'Todos')
              TabOrder = 7
              OnClick = rgTipoPessoaClick
            end
            object edUnidade: TLabeledEdit
              Left = 220
              Top = 89
              Width = 281
              Height = 21
              EditLabel.Width = 102
              EditLabel.Height = 13
              EditLabel.Caption = 'Unidade consumidora'
              LabelSpacing = 1
              TabOrder = 8
            end
            object cbVendedor: TSgDbSearchCombo
              Left = 743
              Top = 88
              Width = 207
              Height = 21
              TabOrder = 10
              LookupSelect = 'REP_CODIGO, REP_NOME'
              LookupOrderBy = 'REP_NOME'
              LookupTable = 'REP0000'
              LookupDispl = 'REP_NOME'
              GridAutoSize = False
              LookupSource = qVendedor
              LookupKeyField = 'REP_CODIGO'
              ShowButton = True
              LookupTableShare = 'TABELAS'
              AutoF8WinTitulo = 'Vendedores'
              AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridTop = 0
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
              LimparCampoAoSair = True
            end
            object cbOrigem: TSgDbSearchCombo
              Left = 988
              Top = 88
              Width = 189
              Height = 21
              TabOrder = 11
              CharCase = ecUpperCase
              LookupSelect = 'CORI_CODIGO,CORI_DESCRICAO'
              LookupOrderBy = 'CORI_DESCRICAO'
              LookupTable = 'CLIENTE_ORIGEM'
              LookupDispl = 'CORI_DESCRICAO'
              GridAutoSize = False
              LookupSource = qOrigem
              LookupKeyField = 'CORI_CODIGO'
              ShowButton = True
              AutoF8WinTitulo = 'Origem'
              AutoF8ColumnsTitulo = 'C'#243'digo, Origem'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridTop = 0
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
              LimparCampoAoSair = True
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Top = 115
        Width = 1254
        Height = 399
        Columns = <
          item
            Expanded = False
            FieldName = 'CLI_RAZAO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Raz'#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 375
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_FANTASIA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Fantasia'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 156
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CLI_CGC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ/CPF'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_FONE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Fone'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_CIDADE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_UF'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_INSC'
            Title.Caption = 'Inscri'#231#227'o Estadual'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_DTNASCIMENTO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_DTULTCOM'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Caption = 'Ult.Compra'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RCL_ATIVIDADE'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_FAX'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cli_celular'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_BAIRRO'
            Title.Alignment = taCenter
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_CEP'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_ENDERE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_EMAIL_ALTERNATIVO'
            Title.Caption = 'Email Contato'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 395
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_EMAIL'
            Title.Caption = 'Email NFe'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 395
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_CONTATO'
            Title.Caption = 'Nome Contato'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REP_NOME'
            Title.Caption = 'Vendedor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CORI_DESCRICAO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 216
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Top = 542
    Width = 1262
    ExplicitTop = 542
    ExplicitWidth = 1262
    DesignSize = (
      1262
      36)
    inherited btnSelect: TSpeedButton
      Left = 1107
      ExplicitLeft = 759
    end
    object sbCadastra: TSpeedButton
      Left = 957
      Top = 6
      Width = 144
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cadastra novo cliente'
      NumGlyphs = 2
      OnClick = sbCadastraClick
      ExplicitLeft = 863
    end
    object spEditar: TSpeedButton
      Left = 810
      Top = 6
      Width = 144
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Alterar dados cadastrais'
      NumGlyphs = 2
      OnClick = spEditarClick
      ExplicitLeft = 716
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 776
    Top = 224
  end
  inherited DBConn: TSQLConnection
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver220.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=22.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver220.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=22.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=c:\jobdados\exemplo\exemplo.fdb'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'TrimChar=False'
      'DriverName=Firebird'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
  end
  inherited qAux: TSQLQuery
    Left = 938
    Top = 197
  end
  inherited qAux2: TSQLQuery
    Left = 978
    Top = 196
  end
  inherited qAux3: TSQLQuery
    Left = 1018
    Top = 196
  end
  inherited qBusco: TSQLQuery
    SQL.Strings = (
      'select CL.CLI_CODIGO, '
      '       CL.CLI_RAZAO,  '
      '       CL.CLI_FANTASIA, '
      '       CL.CLI_CGC, '
      '       CL.CLI_FONE, '
      '       CL.CLI_DTULTCOM, '
      '       CL.CLI_CIDADE, '
      '       CL.CLI_UF, '
      '       CL.CLI_BAIRRO, '
      '       CL.CLI_ENDERE,'
      '       CL.CLI_CONTATO, CL.CLI_EMAIL_ALTERNATIVO, CL.CLI_EMAIL,'
      '       ATV.RCL_ATIVIDADE,'
      '       CL.CLI_INSC,'
      '      rp.REP_NOME'
      'FROM CLI0000 CL'
      '     LEFT JOIN CLI_ATV1 ATV ON ATV.RCL_CODIGO=CL.CLI_ATIVIDADE'
      '     LEFT JOIN REP0000 rp ON (rp.REP_CODIGO = cl.REP_CODIGO) '
      'where cl.cli_codigo=-1'
      '')
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoCLI_CODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object cdsBuscoCLI_RAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CLI_RAZAO'
      OnGetText = cdsBuscoCLI_RAZAOGetText
      Size = 70
    end
    object cdsBuscoCLI_FANTASIA: TStringField
      DisplayLabel = 'Nome de Fantasia'
      FieldName = 'CLI_FANTASIA'
      Size = 55
    end
    object cdsBuscoCLI_CGC: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'CLI_CGC'
      OnGetText = cdsBuscoCLI_CGCGetText
      Size = 14
    end
    object cdsBuscoCLI_FONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'CLI_FONE'
      OnGetText = cdsBuscoCLI_FONEGetText
      Size = 11
    end
    object cdsBuscoCLI_DTULTCOM: TSQLTimeStampField
      DisplayLabel = #218'ltima Parcela'
      FieldName = 'CLI_DTULTCOM'
    end
    object cdsBuscoCLI_CIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object cdsBuscoCLI_UF: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'CLI_UF'
      Size = 2
    end
    object cdsBuscoCLI_BAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object cdsBuscoCLI_ENDERE: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLI_ENDERE'
      Size = 50
    end
    object cdsBuscoCLI_CONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'CLI_CONTATO'
      Size = 25
    end
    object cdsBuscoCLI_EMAIL_ALTERNATIVO: TStringField
      DisplayLabel = 'E-mail Alternativo'
      FieldName = 'CLI_EMAIL_ALTERNATIVO'
      Size = 150
    end
    object cdsBuscoCLI_EMAIL: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'CLI_EMAIL'
      Size = 150
    end
    object cdsBuscoRCL_ATIVIDADE: TStringField
      DisplayLabel = 'Atividade'
      FieldName = 'RCL_ATIVIDADE'
    end
    object cdsBuscoCLI_INSC: TStringField
      DisplayLabel = 'I.E.'
      FieldName = 'CLI_INSC'
      Size = 18
    end
    object cdsBuscoCLI_CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'CLI_CEP'
      Size = 8
    end
    object cdsBuscocli_celular: TStringField
      DisplayLabel = 'Celular'
      DisplayWidth = 16
      FieldName = 'cli_celular'
      OnGetText = cdsBuscoCLI_FONEGetText
      Size = 11
    end
    object cdsBuscoCLI_FAX: TStringField
      DisplayLabel = 'Fax'
      DisplayWidth = 16
      FieldName = 'CLI_FAX'
      OnGetText = cdsBuscoCLI_FONEGetText
      Size = 11
    end
    object cdsBuscoCLI_UND_CONSUMIDORA: TIntegerField
      DisplayLabel = 'Unidade Consumidora'
      FieldName = 'CLI_UND_CONSUMIDORA'
    end
    object cdsBuscoREP_NOME: TStringField
      DisplayLabel = 'Representante'
      FieldName = 'REP_NOME'
      Size = 35
    end
    object cdsBuscoCORI_DESCRICAO: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'CORI_DESCRICAO'
      Size = 150
    end
    object cdsBuscoCLI_DTNASCIMENTO: TSQLTimeStampField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'CLI_DTNASCIMENTO'
    end
    object cdsBuscoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object cdsBuscoFPC_VENCTO: TDateField
      DisplayLabel = #218'ltima Parcela'
      FieldName = 'FPC_VENCTO'
    end
    object cdsBuscoSITUACAO: TStringField
      FieldName = 'SITUACAO'
    end
  end
  inherited mnuGridPesquisa: TPopupMenu
    Left = 564
    Top = 264
  end
  object mnuListar: TPopupMenu
    Left = 652
    Top = 256
    object MenuItem1: TMenuItem
      Caption = '&Ficha Cliente'
      OnClick = MenuItem1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Listagem1: TMenuItem
      Caption = '&Listagem'
      OnClick = Listagem1Click
    end
  end
  object qRamo: TSQLQuery
    Params = <>
    Left = 412
    Top = 328
  end
  object qVendedor: TSQLQuery
    Params = <>
    Left = 476
    Top = 328
  end
  object qOrigem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 562
    Top = 333
  end
  object qExport: TFDQuery
    Connection = DBInicio.FDACConn
    Left = 380
    Top = 224
    object qExportCLI_CODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object qExportCLI_RAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CLI_RAZAO'
      OnGetText = cdsBuscoCLI_RAZAOGetText
      Size = 70
    end
    object qExportCLI_FANTASIA: TStringField
      DisplayLabel = 'Nome de Fantasia'
      FieldName = 'CLI_FANTASIA'
      Size = 55
    end
    object qExportCLI_CGC: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'CLI_CGC'
      OnGetText = cdsBuscoCLI_CGCGetText
      Size = 14
    end
    object qExportCLI_FONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'CLI_FONE'
      OnGetText = cdsBuscoCLI_FONEGetText
      Size = 11
    end
    object qExportCLI_DTULTCOM: TSQLTimeStampField
      DisplayLabel = #218'ltima Parcela'
      FieldName = 'CLI_DTULTCOM'
    end
    object qExportCLI_CIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object qExportCLI_UF: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'CLI_UF'
      Size = 2
    end
    object qExportCLI_BAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object qExportCLI_ENDERE: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLI_ENDERE'
      Size = 50
    end
    object qExportCLI_CONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'CLI_CONTATO'
      Size = 25
    end
    object qExportCLI_EMAIL_ALTERNATIVO: TStringField
      DisplayLabel = 'E-mail Alternativo'
      FieldName = 'CLI_EMAIL_ALTERNATIVO'
      Size = 150
    end
    object qExportCLI_EMAIL: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'CLI_EMAIL'
      Size = 150
    end
    object qExportRCL_ATIVIDADE: TStringField
      DisplayLabel = 'Atividade'
      FieldName = 'RCL_ATIVIDADE'
    end
    object qExportCLI_INSC: TStringField
      DisplayLabel = 'I.E.'
      FieldName = 'CLI_INSC'
      Size = 18
    end
    object qExportCLI_CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'CLI_CEP'
      Size = 8
    end
    object qExportcli_celular: TStringField
      DisplayLabel = 'Celular'
      DisplayWidth = 16
      FieldName = 'cli_celular'
      OnGetText = cdsBuscoCLI_FONEGetText
      Size = 11
    end
    object qExportCLI_FAX: TStringField
      DisplayLabel = 'Fax'
      DisplayWidth = 16
      FieldName = 'CLI_FAX'
      OnGetText = cdsBuscoCLI_FONEGetText
      Size = 11
    end
    object qExportCLI_UND_CONSUMIDORA: TIntegerField
      DisplayLabel = 'Unidade Consumidora'
      FieldName = 'CLI_UND_CONSUMIDORA'
    end
    object qExportREP_NOME: TStringField
      DisplayLabel = 'Representante'
      FieldName = 'REP_NOME'
      Size = 35
    end
    object qExportCORI_DESCRICAO: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'CORI_DESCRICAO'
      Size = 150
    end
    object qExportCLI_DTNASCIMENTO: TSQLTimeStampField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'CLI_DTNASCIMENTO'
    end
    object qExportEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object qExportFPC_VENCTO: TDateField
      DisplayLabel = #218'ltima Parcela'
      FieldName = 'FPC_VENCTO'
    end
    object qExportSITUACAO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO'
    end
  end
  object dsExport: TDataSource
    DataSet = qExport
    Left = 436
    Top = 224
  end
end
