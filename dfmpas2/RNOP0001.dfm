inherited FormRegraNatOp: TFormRegraNatOp
  Left = 305
  Top = 135
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Regras Fiscais para CFOP e NCM'
  ClientHeight = 572
  ClientWidth = 1451
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  Position = poDesktopCenter
  Visible = True
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 1457
  ExplicitHeight = 597
  PixelsPerInch = 96
  TextHeight = 14
  object gbComoFunciona: TGroupBox [0]
    Left = 625
    Top = 0
    Width = 334
    Height = 572
    Align = alLeft
    Caption = 'Como funciona?'
    TabOrder = 0
    object Label9: TLabel
      Left = 2
      Top = 16
      Width = 330
      Height = 554
      Align = alClient
      AutoSize = False
      Caption = 
        'Dependendo para qual estado o produto for vendido e de sua class' +
        'ifica'#231#227'o fiscal, a Situa'#231#227'o Tribut'#225'ria,Natureza de opera'#231#227'o( ST,' +
        ' CFOP) e o percentual de MVA pode ser diferente.'#13#10#13#10'Para isso cr' +
        'iou-se as regras de Faturamento pois com bases nas informa'#231#245'es d' +
        'o estado do cliente, classifica'#231#227'o da mercadoria podemos destina' +
        'r a tributa'#231#227'o correta.'#13#10#13#10'Para que o sistema possa realizar a t' +
        'ributa'#231#227'o correta precisamos preencher alguns campos:'#13#10#13#10'1 - CFO' +
        'P padr'#227'o a faturar: CFOP principal ex: 6102 - Venda Para Fora do' +
        ' Estado;'#13#10'2 - Informar para qual estado esta regra vai se aplica' +
        'r ex: PR e SP;'#13#10'3 - Para quais mercadorias a regra se aplica com' +
        ' base em sua classifica'#231#227'o ( NCM ) fiscal podendo ser:'#13#10'   - G'#234'n' +
        'ero -> que s'#227'o os dois primeiros d'#237'gitos da classifica'#231#227'o fiscal' +
        ' ex: 84012510 neste exemplo 84 '#233' o G'#234'nero;'#13#10'   - Classifica'#231#227'o c' +
        'ompleta -> 84012510;'#13#10'   - Todas as mercadorias -> Selecionar op' +
        #231#227'o "Regra v'#225'lida para todos os produtos".'#13#10'4 - Origem da mercad' +
        'oria - ser'#225' aplicada a regra. Se marcada como indiferente aplica' +
        '-se a qualquer origem'#13#10'5 -CFOP trocada para - Natureza a ser des' +
        'tacada nos itens da nota;'#13#10'6 - Situa'#231#227'o tribut'#225'ria - ST a ser de' +
        'stacado caso os itens 1,2 e 3 for aceita;'#13#10'7 - Percentual de MVA' +
        '(Margem de Valor Agregado) a ser usado no calculo de mercadorias' +
        ' com Substitui'#231#227'o Tribut'#225'ria. '#13#10'8 - Percentual de MVA Simples  -' +
        ' Percentual exclusivo para clientes do simples com regras especi' +
        'ais em algumas UF'#180's.'#13#10'9 - Aliquota Interna da UF para  sub.Tribu' +
        't'#225'ria  - Percentual da Substitui'#231#227'o Tribut'#225'ria da UF'#13#10'10 - Redu'#231 +
        #227'o da Base da ST - quando produto tem legisla'#231#227'o especifica para' +
        ' reduzir a base da Sub.Tribut'#225'ria.'#13#10'11 - Aliquota ICMS Interesta' +
        'dual - Aliquota interestadual de cada UF'#13#10'12 - Op'#231#227'o isentar ICM' +
        'S '#233' regra especial e deve ser orientada por contador'
      Color = clBtnHighlight
      ParentColor = False
      WordWrap = True
      ExplicitLeft = 6
      ExplicitTop = 15
      ExplicitHeight = 494
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 625
    Height = 572
    Align = alLeft
    TabOrder = 1
    object Label5: TLabel
      Left = 7
      Top = 9
      Width = 36
      Height = 14
      Caption = 'C'#243'digo:'
    end
    object Panel2: TPanel
      Left = 161
      Top = 509
      Width = 458
      Height = 33
      BevelOuter = bvNone
      TabOrder = 3
    end
    object pcRegra: TPageControl
      Left = 1
      Top = 29
      Width = 621
      Height = 541
      ActivePage = tsRegra
      TabOrder = 2
      object tsRegra: TTabSheet
        Caption = 'Regras Fiscais'
        OnShow = tsRegraShow
        object GroupBox2: TGroupBox
          Left = 3
          Top = 0
          Width = 617
          Height = 247
          Caption = 'Condi'#231#245'es da Regra'
          TabOrder = 0
          object Label2: TLabel
            Left = 95
            Top = 22
            Width = 36
            Height = 14
            Alignment = taRightJustify
            Caption = 'C'#243'digo:'
          end
          object Label12: TLabel
            Left = 449
            Top = 19
            Width = 72
            Height = 14
            Caption = 'Data Cadastro:'
          end
          object Label3: TLabel
            Left = 270
            Top = 21
            Width = 74
            Height = 14
            Caption = 'Data Altera'#231#227'o:'
          end
          object Label4: TLabel
            Left = 20
            Top = 48
            Width = 112
            Height = 14
            Alignment = taRightJustify
            Caption = 'CFOP padr'#227'o a faturar:'
          end
          object Label7: TLabel
            Left = 4
            Top = 166
            Width = 129
            Height = 14
            Alignment = taRightJustify
            Caption = 'Classifica'#231#227'o Fiscal(NCM):'
          end
          object Label8: TLabel
            Left = 94
            Top = 213
            Width = 39
            Height = 14
            Alignment = taRightJustify
            Caption = 'G'#234'nero:'
          end
          object Label17: TLabel
            Left = 24
            Top = 188
            Width = 109
            Height = 14
            Caption = 'Origem da mercadoria:'
          end
          object DBEdit2: TDBEdit
            Left = 134
            Top = 18
            Width = 50
            Height = 22
            TabStop = False
            CharCase = ecUpperCase
            Color = 14145495
            DataField = 'OPR_REGISTRO'
            DataSource = DSRegraCFOP
            ReadOnly = True
            TabOrder = 0
            OnChange = DBEdit2Change
          end
          object DBChAtivo: TDBCheckBox
            Left = 202
            Top = 21
            Width = 50
            Height = 14
            Cursor = crHandPoint
            Caption = 'Ativo'
            DataField = 'OPR_ATIVO'
            DataSource = DSRegraCFOP
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object Button1: TButton
            Left = 134
            Top = 72
            Width = 147
            Height = 18
            Caption = 'Marcar / Desmarcar Todas'
            TabOrder = 6
            OnClick = Button1Click
          end
          object EdtIPI_codigo: TDBEdit
            Left = 134
            Top = 162
            Width = 121
            Height = 22
            DataField = 'IPI_CODIGO'
            DataSource = DSRegraCFOP
            TabOrder = 8
            OnChange = EdtIPI_codigoChange
          end
          object EdGenero: TMemo
            Left = 134
            Top = 212
            Width = 467
            Height = 29
            TabStop = False
            ReadOnly = True
            TabOrder = 11
          end
          object CbTodosProdutos: TCheckBox
            Left = 259
            Top = 164
            Width = 326
            Height = 17
            Caption = 'Marque para ativar regra para todos os produtos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnClick = CbTodosProdutosClick
          end
          object edtOrigem: TDBEdit
            Left = 136
            Top = 44
            Width = 47
            Height = 22
            TabStop = False
            Color = 14145495
            DataField = 'OPE_CODIGO_ORIGEM'
            DataSource = DSRegraCFOP
            ReadOnly = True
            TabOrder = 4
            OnChange = edtOrigemChange
          end
          object pnCbox: TPanel
            Left = 125
            Top = 89
            Width = 487
            Height = 71
            BevelOuter = bvNone
            TabOrder = 7
            object DBCheckBox1: TDBCheckBox
              Left = 11
              Top = 4
              Width = 41
              Height = 17
              Caption = 'AC'
              DataField = 'OPR_AC'
              DataSource = DSRegraCFOP
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox2: TDBCheckBox
              Left = 61
              Top = 4
              Width = 41
              Height = 17
              Caption = 'AL'
              DataField = 'OPR_AL'
              DataSource = DSRegraCFOP
              TabOrder = 1
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox13: TDBCheckBox
              Left = 61
              Top = 28
              Width = 41
              Height = 17
              Caption = 'MT'
              DataField = 'OPR_MT'
              DataSource = DSRegraCFOP
              TabOrder = 2
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox12: TDBCheckBox
              Left = 11
              Top = 28
              Width = 41
              Height = 17
              Caption = 'MS'
              DataField = 'OPR_MS'
              DataSource = DSRegraCFOP
              TabOrder = 3
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox23: TDBCheckBox
              Left = 11
              Top = 52
              Width = 41
              Height = 17
              Caption = 'RS'
              DataField = 'OPR_RS'
              DataSource = DSRegraCFOP
              TabOrder = 4
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox24: TDBCheckBox
              Left = 61
              Top = 52
              Width = 41
              Height = 17
              Caption = 'SC'
              DataField = 'OPR_SC'
              DataSource = DSRegraCFOP
              TabOrder = 5
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox25: TDBCheckBox
              Left = 109
              Top = 52
              Width = 41
              Height = 17
              Caption = 'SE'
              DataField = 'OPR_SE'
              DataSource = DSRegraCFOP
              TabOrder = 6
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox14: TDBCheckBox
              Left = 109
              Top = 28
              Width = 41
              Height = 17
              Caption = 'PA'
              DataField = 'OPR_PA'
              DataSource = DSRegraCFOP
              TabOrder = 7
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox3: TDBCheckBox
              Left = 109
              Top = 4
              Width = 41
              Height = 17
              Caption = 'AM'
              DataField = 'OPR_AM'
              DataSource = DSRegraCFOP
              TabOrder = 8
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox4: TDBCheckBox
              Left = 157
              Top = 4
              Width = 41
              Height = 17
              Caption = 'AP'
              DataField = 'OPR_AP'
              DataSource = DSRegraCFOP
              TabOrder = 9
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox15: TDBCheckBox
              Left = 157
              Top = 28
              Width = 41
              Height = 17
              Caption = 'PB'
              DataField = 'OPR_PB'
              DataSource = DSRegraCFOP
              TabOrder = 10
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox26: TDBCheckBox
              Left = 157
              Top = 52
              Width = 41
              Height = 17
              Caption = 'SP'
              DataField = 'OPR_SP'
              DataSource = DSRegraCFOP
              TabOrder = 11
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox27: TDBCheckBox
              Left = 197
              Top = 52
              Width = 41
              Height = 17
              Caption = 'TO'
              DataField = 'OPR_TO'
              DataSource = DSRegraCFOP
              TabOrder = 12
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox16: TDBCheckBox
              Left = 197
              Top = 28
              Width = 41
              Height = 17
              Caption = 'PE'
              DataField = 'OPR_PE'
              DataSource = DSRegraCFOP
              TabOrder = 13
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox5: TDBCheckBox
              Left = 197
              Top = 4
              Width = 41
              Height = 17
              Caption = 'BA'
              DataField = 'OPR_BA'
              DataSource = DSRegraCFOP
              TabOrder = 14
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox6: TDBCheckBox
              Left = 237
              Top = 4
              Width = 41
              Height = 17
              Caption = 'CE'
              DataField = 'OPR_CE'
              DataSource = DSRegraCFOP
              TabOrder = 15
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox17: TDBCheckBox
              Left = 237
              Top = 28
              Width = 41
              Height = 17
              Caption = 'PI'
              DataField = 'OPR_PI'
              DataSource = DSRegraCFOP
              TabOrder = 16
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox28: TDBCheckBox
              Left = 237
              Top = 52
              Width = 41
              Height = 17
              Caption = 'EX'
              DataField = 'OPR_EX'
              DataSource = DSRegraCFOP
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 17
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox18: TDBCheckBox
              Left = 277
              Top = 28
              Width = 41
              Height = 17
              Caption = 'PR'
              DataField = 'OPR_PR'
              DataSource = DSRegraCFOP
              TabOrder = 18
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox7: TDBCheckBox
              Left = 277
              Top = 4
              Width = 41
              Height = 17
              Caption = 'DF'
              DataField = 'OPR_DF'
              DataSource = DSRegraCFOP
              TabOrder = 19
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox8: TDBCheckBox
              Left = 317
              Top = 4
              Width = 41
              Height = 17
              Caption = 'ES'
              DataField = 'OPR_ES'
              DataSource = DSRegraCFOP
              TabOrder = 20
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox19: TDBCheckBox
              Left = 317
              Top = 28
              Width = 41
              Height = 17
              Caption = 'RJ'
              DataField = 'OPR_RJ'
              DataSource = DSRegraCFOP
              TabOrder = 21
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox20: TDBCheckBox
              Left = 357
              Top = 28
              Width = 41
              Height = 17
              Caption = 'RN'
              DataField = 'OPR_RN'
              DataSource = DSRegraCFOP
              TabOrder = 22
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox9: TDBCheckBox
              Left = 357
              Top = 4
              Width = 41
              Height = 17
              Caption = 'GO'
              DataField = 'OPR_GO'
              DataSource = DSRegraCFOP
              TabOrder = 23
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox10: TDBCheckBox
              Left = 397
              Top = 4
              Width = 41
              Height = 17
              Caption = 'MA'
              DataField = 'OPR_MA'
              DataSource = DSRegraCFOP
              TabOrder = 24
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox21: TDBCheckBox
              Left = 397
              Top = 28
              Width = 41
              Height = 17
              Caption = 'RO'
              DataField = 'OPR_RO'
              DataSource = DSRegraCFOP
              TabOrder = 25
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox22: TDBCheckBox
              Left = 445
              Top = 28
              Width = 41
              Height = 17
              Caption = 'RR'
              DataField = 'OPR_RR'
              DataSource = DSRegraCFOP
              TabOrder = 26
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox11: TDBCheckBox
              Left = 445
              Top = 4
              Width = 41
              Height = 17
              Caption = 'MG'
              DataField = 'OPR_MG'
              DataSource = DSRegraCFOP
              TabOrder = 27
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object CbNatOrigem: TSgDbSearchCombo
            Left = 187
            Top = 44
            Width = 393
            Height = 22
            TabOrder = 5
            CharCase = ecUpperCase
            LookupSelect = 'ope_codigo, cfop'
            LookupOrderBy = 'ope_descri'
            LookupTable = 'OPE0000_VIEW_PESQUISA'
            LookupDispl = 'CFOP'
            OnSelect = CbNatOrigemSelect
            GridAutoSize = False
            LookupSource = qAux
            DataField = 'OPE_CODIGO_ORIGEM'
            DataSource = DSRegraCFOP
            LookupKeyField = 'ope_codigo'
            ShowButton = True
            LookupTableShare = 'OPERACAOFISCAL'
            AutoF8WinTitulo = 'Opera'#231#245'es Fiscais - CFOP '
            AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
          end
          object cbOrigemMarcadoria: TJvDBComboBox
            Left = 134
            Top = 185
            Width = 144
            Height = 22
            Hint = 'Indiferente '#233' valido tanto nacional como estrangeiro'
            DataField = 'OPR_ORIGEM'
            DataSource = DSRegraCFOP
            Items.Strings = (
              'Nacional'
              'Estrangeira'
              'Indiferente')
            ParentShowHint = False
            ShowHint = True
            TabOrder = 10
            Values.Strings = (
              'N'
              'E'
              'I')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object DBDataCad: TJvDBDateEdit
            Left = 521
            Top = 16
            Width = 84
            Height = 22
            TabStop = False
            DataField = 'DATA_CADASTRO'
            DataSource = DSRegraCFOP
            ReadOnly = True
            Color = 14145495
            Glyph.Data = {
              DA020000424DDA0200000000000036000000280000000D0000000D0000000100
              200000000000A402000000000000000000000000000000000000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F00000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000000000000000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F0000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
              0000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000}
            ImageKind = ikCustom
            ButtonWidth = 17
            PopupColor = clBtnFace
            ShowNullDate = False
            TabOrder = 3
          end
          object DBDateEdit1: TJvDBDateEdit
            Left = 345
            Top = 18
            Width = 84
            Height = 22
            TabStop = False
            DataField = 'DATA_ALTERACAO'
            DataSource = DSRegraCFOP
            ReadOnly = True
            Color = 14145495
            Glyph.Data = {
              DA020000424DDA0200000000000036000000280000000D0000000D0000000100
              200000000000A402000000000000000000000000000000000000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F00000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000000000000000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F0000000000000000000000000000000000000000000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
              0000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
              F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000}
            ImageKind = ikCustom
            ButtonWidth = 17
            PopupColor = clBtnFace
            ShowNullDate = False
            TabOrder = 2
          end
        end
        object GroupBox1: TGroupBox
          Left = 3
          Top = 246
          Width = 617
          Height = 225
          Caption = 'Aplicar modifica'#231#245'es ao faturar o NCM acima'
          TabOrder = 1
          object Label20: TLabel
            Left = 50
            Top = 68
            Width = 84
            Height = 14
            Alignment = taRightJustify
            Caption = 'ST trocada para :'
          end
          object Label6: TLabel
            Left = 69
            Top = 95
            Width = 97
            Height = 14
            Alignment = taRightJustify
            Caption = 'Percentual do MVA :'
          end
          object Label10: TLabel
            Left = 309
            Top = 95
            Width = 226
            Height = 14
            Alignment = taRightJustify
            Caption = 'Percentual MVA - Cliente do regime do Simples:'
          end
          object Label11: TLabel
            Left = 18
            Top = 135
            Width = 217
            Height = 14
            Alignment = taRightJustify
            Caption = 'Aliquota Interna da UF para Sub.Tribut'#225'ria %:'
          end
          object Label14: TLabel
            Left = 49
            Top = 160
            Width = 187
            Height = 14
            Alignment = taRightJustify
            Caption = 'Redu'#231#227'o da Base da Sub.Tribut'#225'ria %:'
          end
          object Label15: TLabel
            Left = 300
            Top = 159
            Width = 283
            Height = 14
            Alignment = taRightJustify
            Caption = 'Preencher somente se sub. tribut'#225'ria tem redu'#231#227'o da base'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 89
            Top = 184
            Width = 147
            Height = 14
            Alignment = taRightJustify
            Caption = 'Aliquota ICMS Interestadual %:'
          end
          object Label13: TLabel
            Left = 50
            Top = 115
            Width = 551
            Height = 14
            Alignment = taRightJustify
            Caption = 
              'Se cliente for Uso e Consumo desconsidera o MVA aplicando soment' +
              'e DIFAL. % do MVA vale somente p/ Revenda'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 20
            Top = 43
            Width = 98
            Height = 14
            Alignment = taRightJustify
            Caption = 'CFOP trocada para :'
          end
          object Label18: TLabel
            Left = 79
            Top = 20
            Width = 39
            Height = 14
            Alignment = taRightJustify
            Caption = 'CBenef:'
          end
          object Label19: TLabel
            Left = 326
            Top = 20
            Width = 43
            Height = 14
            Alignment = taRightJustify
            Caption = 'Aliq FCP:'
          end
          object DBEPercentualMva: TDBEdit
            Left = 172
            Top = 92
            Width = 65
            Height = 22
            DataField = 'OPR_PERCENTUAL_MVA'
            DataSource = DSRegraCFOP
            TabOrder = 6
          end
          object dbedtSTB_TRIBUTACAO: TDBEdit
            Left = 137
            Top = 64
            Width = 28
            Height = 22
            Hint = 
              'preencher somente se N'#195'O deseja usar a aliquota de ICMS do estad' +
              'o.'
            TabStop = False
            CharCase = ecUpperCase
            Color = 14145495
            DataField = 'STB_TRIBUTACAO'
            DataSource = DSRegraCFOP
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 5
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 4
          end
          object dbedtOPR_PERCENTUAL_MVA_SIMPLES: TDBEdit
            Left = 538
            Top = 92
            Width = 65
            Height = 22
            Hint = 'quando venda para empresa do regime do simples'
            DataField = 'OPR_PERCENTUAL_MVA_SIMPLES'
            DataSource = DSRegraCFOP
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
          end
          object DBEaliqUF_subtrib: TDBEdit
            Left = 236
            Top = 131
            Width = 60
            Height = 22
            DataField = 'OPR_ALIQ_ST_UF'
            DataSource = DSRegraCFOP
            TabOrder = 8
          end
          object dbedtOPR_REDUCAO_BASE_ST: TDBEdit
            Left = 237
            Top = 155
            Width = 59
            Height = 22
            DataField = 'OPR_REDUCAO_BASE_ST'
            DataSource = DSRegraCFOP
            TabOrder = 9
          end
          object CbSitTributaria: TSgDbSearchCombo
            Left = 168
            Top = 64
            Width = 412
            Height = 22
            TabOrder = 5
            LookupSelect = 'STB_TRIBUTACAO, STB_DESCRICAO'
            LookupOrderBy = 'STB_DESCRICAO'
            LookupTable = 'SITUACAO_TRIBUTARIA'
            LookupDispl = 'STB_DESCRICAO'
            GridAutoSize = False
            LookupSource = qAux2
            DataField = 'STB_TRIBUTACAO'
            DataSource = DSRegraCFOP
            LookupKeyField = 'STB_TRIBUTACAO'
            ShowButton = True
            AutoF8WinTitulo = 'Situa'#231#227'o Tribut'#225'ria'
            AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
          end
          object DBEAliqInterestadual: TDBEdit
            Left = 236
            Top = 180
            Width = 60
            Height = 22
            DataField = 'OPR_ALIQ_INTERESTADUAL'
            DataSource = DSRegraCFOP
            TabOrder = 10
          end
          object DBCheckBox29: TDBCheckBox
            Left = 16
            Top = 204
            Width = 583
            Height = 17
            Caption = 
              'Isentar ICMS * o CST ficar'#225' 30 e os valores do ICMS zerados (val' +
              'e p/ L. Real ou Presumido se NCM tem isen'#231#227'o)'
            DataField = 'OPR_ISENTARICIMS'
            DataSource = DSRegraCFOP
            TabOrder = 11
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object CbNatDestino: TSgDbSearchCombo
            Left = 171
            Top = 39
            Width = 412
            Height = 22
            TabOrder = 3
            CharCase = ecUpperCase
            LookupSelect = 'ope_codigo, cfop'
            LookupOrderBy = 'ope_descri'
            LookupTable = 'OPE0000_VIEW_PESQUISA'
            LookupDispl = 'CFOP'
            OnSelect = CbNatDestinoSelect
            GridAutoSize = False
            LookupSource = qAux2
            DataField = 'OPE_DESTINO'
            DataSource = DSRegraCFOP
            LookupKeyField = 'ope_codigo'
            ShowButton = True
            LookupTableShare = 'OPERACAOFISCAL'
            AutoF8WinTitulo = 'Opera'#231#245'es Fiscais - CFOP '
            AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
            GridLeft = 0
            GridWidth = 0
            GridHeight = 100
            GridShowWhenEnter = False
            SelectWithDoubleClick = False
          end
          object edtDestino: TDBEdit
            Left = 120
            Top = 39
            Width = 47
            Height = 22
            TabStop = False
            Color = 14145495
            DataField = 'OPE_DESTINO'
            DataSource = DSRegraCFOP
            ReadOnly = True
            TabOrder = 2
          end
          object edcbenef: TDBEdit
            Left = 121
            Top = 17
            Width = 134
            Height = 22
            TabStop = False
            DataField = 'CBenef'
            DataSource = DSRegraCFOP
            TabOrder = 0
          end
          object DBEdit1: TDBEdit
            Left = 371
            Top = 16
            Width = 60
            Height = 22
            DataField = 'OPR_PERC_FCP'
            DataSource = DSRegraCFOP
            TabOrder = 1
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 477
          Width = 613
          Height = 35
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object Bit_Lista: TBitBtn
            Left = 19
            Top = 7
            Width = 87
            Height = 25
            Cursor = crHandPoint
            Caption = '&Consulta'
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
            TabOrder = 0
            TabStop = False
            OnClick = Bit_ListaClick
          end
          object Bit_Cancelar: TBitBtn
            Left = 497
            Top = 5
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
            TabOrder = 1
            TabStop = False
            OnClick = Bit_CancelarClick
          end
          object Bit_Gravar: TBitBtn
            Left = 405
            Top = 6
            Width = 90
            Height = 25
            Cursor = crHandPoint
            Hint = '|Grava registro...'
            Caption = '&Gravar'
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
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            TabStop = False
            OnClick = Bit_GravarClick
          end
          object Bit_Excluir: TBitBtn
            Left = 314
            Top = 6
            Width = 90
            Height = 25
            Cursor = crHandPoint
            Hint = '|Exclui registro atual..'
            Caption = '&Excluir'
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000E0000000E0000000100
              04000000000070000000CE0E0000D80E00001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3300333333333333330033333333333333003333333333333300333333333333
              3300333333333333330033000000000033003300000000003300330000000000
              3300333333333333330033333333333333003333333333333300333333333333
              33003333333333333300}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            TabStop = False
            OnClick = Bit_ExcluirClick
          end
          object BtnAlterar: TBitBtn
            Left = 223
            Top = 6
            Width = 90
            Height = 25
            Cursor = crHandPoint
            Hint = 'Edita Pedido'
            Caption = 'Editar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Glyph.Data = {
              36060000424D3606000000000000360400002800000020000000100000000100
              0800000000000002000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000300000000A4
              00000000A4000303030303A4A4A4A4A4A4A4A4A4A4A4FF0303030300F6F6F6F6
              0008A4A400A40303030303A4FF030303A4FF0303A4A4FF0303030300F6F6F6F6
              00F6072F2F000303030303A4FF030303A4FF030303A4FF0303030300F6A4A4F6
              0007FB1D2F2F0003030303A4FF030303A4FF03030303A4FF03030300F6F6F6F6
              F600FBFB1D2F9000030303A4FF03030303A4FF03030303A4FF030300F6A4A4A4
              A4F600FBFBF79090000303A4FF0303030303A4FF03030303A4FF0300F6F6F6F6
              F6F6F600FBF71E0D0D0003A4FF030303030303A4FF03030303A40300FFA4A4A4
              A4A4A4F600F70DA7A70003A4FF03030303030303A4FF030303A40300FFF6F6F6
              F6F6F6F6F60067AF160003A4FF0303030303030303A4FFFFFFA40300FFA4A4A4
              A4A4A4A4F6A40000000303A4FF0303030303030303A4A4A4A4FF0300FFFFFFF6
              F6F6F6F6F6000303030303A4FF0303030303030303A4FF0303030300FFA4A4A4
              A4F6F6F6F6000303030303A4FF0303030303030303A4FF0303030300FFFFFFFF
              FFF6000000000303030303A4FF0303030303A4A4A4A4FF0303030300FFA4A4A4
              A4FF00F600030303030303A4FF0303030303A4FFA4FF030303030300FFFFFFFF
              FFFF000003030303030303A4FFFFFFFFFFFFA4A4FF0303030303030000000000
              0000030303030303030303A4A4A4A4A4A4A4FF03030303030303}
            NumGlyphs = 2
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            TabStop = False
            OnClick = BtnAlterarClick
          end
          object Bit_novo: TBitBtn
            Left = 132
            Top = 6
            Width = 90
            Height = 25
            Cursor = crHandPoint
            Caption = '&Novo'
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000E0000000E0000000100
              04000000000070000000CE0E0000D80E00001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3300333333333333330033333333333333003333300033333300333330003333
              3300333330003333330033000000000333003300000000033300330000000003
              3300333330003333330033333000333333003333300033333300333333333333
              33003333333333333300}
            TabOrder = 5
            TabStop = False
            OnClick = Bit_novoClick
          end
          object Bit_Sair: TBitBtn
            Left = 495
            Top = 6
            Width = 91
            Height = 25
            Cursor = crHandPoint
            Caption = '&Sair'
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
            TabOrder = 6
            TabStop = False
            OnClick = Bit_SairClick
          end
        end
      end
      object tsAvancado: TTabSheet
        Caption = 'Avan'#231'ado'
        ImageIndex = 1
        OnShow = tsAvancadoShow
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label21: TLabel
          Left = 8
          Top = 15
          Width = 139
          Height = 16
          Alignment = taRightJustify
          Caption = 'C'#243'digo da Regra Fiscal:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 24
          Top = 65
          Width = 40
          Height = 14
          Caption = 'Produto:'
        end
        object Label23: TLabel
          Left = 4
          Top = 93
          Width = 60
          Height = 14
          Caption = 'Capacidade:'
        end
        object dbCodigoRegraFiscal: TDBEdit
          Left = 153
          Top = 12
          Width = 50
          Height = 24
          TabStop = False
          CharCase = ecUpperCase
          Color = 14145495
          DataField = 'OPR_REGISTRO'
          DataSource = DSRegraCFOP
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          OnChange = DBEdit2Change
        end
        object Panel4: TPanel
          Left = 0
          Top = 477
          Width = 613
          Height = 35
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object BitBtn2: TBitBtn
            Left = 497
            Top = 5
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
            TabOrder = 0
            TabStop = False
            OnClick = Bit_CancelarClick
          end
          object btGravarAvancado: TBitBtn
            Left = 405
            Top = 6
            Width = 90
            Height = 25
            Cursor = crHandPoint
            Hint = '|Grava registro...'
            Caption = '&Gravar'
            Enabled = False
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
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            TabStop = False
            OnClick = btGravarAvancadoClick
          end
          object btExcluirAvancado: TBitBtn
            Left = 314
            Top = 6
            Width = 90
            Height = 25
            Cursor = crHandPoint
            Hint = '|Exclui registro atual..'
            Caption = '&Excluir'
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000E0000000E0000000100
              04000000000070000000CE0E0000D80E00001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3300333333333333330033333333333333003333333333333300333333333333
              3300333333333333330033000000000033003300000000003300330000000000
              3300333333333333330033333333333333003333333333333300333333333333
              33003333333333333300}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            TabStop = False
            OnClick = btExcluirAvancadoClick
          end
          object btEditarAvancado: TBitBtn
            Left = 223
            Top = 6
            Width = 90
            Height = 25
            Cursor = crHandPoint
            Hint = 'Edita Pedido'
            Caption = 'Editar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Glyph.Data = {
              36060000424D3606000000000000360400002800000020000000100000000100
              0800000000000002000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000300000000A4
              00000000A4000303030303A4A4A4A4A4A4A4A4A4A4A4FF0303030300F6F6F6F6
              0008A4A400A40303030303A4FF030303A4FF0303A4A4FF0303030300F6F6F6F6
              00F6072F2F000303030303A4FF030303A4FF030303A4FF0303030300F6A4A4F6
              0007FB1D2F2F0003030303A4FF030303A4FF03030303A4FF03030300F6F6F6F6
              F600FBFB1D2F9000030303A4FF03030303A4FF03030303A4FF030300F6A4A4A4
              A4F600FBFBF79090000303A4FF0303030303A4FF03030303A4FF0300F6F6F6F6
              F6F6F600FBF71E0D0D0003A4FF030303030303A4FF03030303A40300FFA4A4A4
              A4A4A4F600F70DA7A70003A4FF03030303030303A4FF030303A40300FFF6F6F6
              F6F6F6F6F60067AF160003A4FF0303030303030303A4FFFFFFA40300FFA4A4A4
              A4A4A4A4F6A40000000303A4FF0303030303030303A4A4A4A4FF0300FFFFFFF6
              F6F6F6F6F6000303030303A4FF0303030303030303A4FF0303030300FFA4A4A4
              A4F6F6F6F6000303030303A4FF0303030303030303A4FF0303030300FFFFFFFF
              FFF6000000000303030303A4FF0303030303A4A4A4A4FF0303030300FFA4A4A4
              A4FF00F600030303030303A4FF0303030303A4FFA4FF030303030300FFFFFFFF
              FFFF000003030303030303A4FFFFFFFFFFFFA4A4FF0303030303030000000000
              0000030303030303030303A4A4A4A4A4A4A4FF03030303030303}
            NumGlyphs = 2
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            TabStop = False
            OnClick = btEditarAvancadoClick
          end
          object btNovoAvancado: TBitBtn
            Left = 132
            Top = 6
            Width = 90
            Height = 25
            Cursor = crHandPoint
            Caption = '&Novo'
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000E0000000E0000000100
              04000000000070000000CE0E0000D80E00001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3300333333333333330033333333333333003333300033333300333330003333
              3300333330003333330033000000000333003300000000033300330000000003
              3300333330003333330033333000333333003333300033333300333333333333
              33003333333333333300}
            TabOrder = 4
            TabStop = False
            OnClick = btNovoAvancadoClick
          end
          object BitBtn7: TBitBtn
            Left = 495
            Top = 6
            Width = 91
            Height = 25
            Cursor = crHandPoint
            Caption = '&Sair'
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
            TabOrder = 5
            TabStop = False
            OnClick = Bit_SairClick
          end
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 160
          Width = 613
          Height = 317
          Align = alBottom
          DataSource = dsAvancado
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          OnEnter = DBGrid1Enter
          Columns = <
            item
              Expanded = False
              FieldName = 'RFP_CODIGO'
              Title.Caption = 'Chave Prim'#225'ria'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OPR_REGISTRO'
              Title.Caption = 'C'#243'd. Regra Fiscal'
              Width = 109
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_REFER'
              Title.Caption = 'Produto'
              Width = 255
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CAP_CODIGO'
              Title.Caption = 'Capacidade'
              Width = 80
              Visible = True
            end>
        end
        object cbReferencia: TSgDbSearchCombo
          Left = 70
          Top = 62
          Width = 313
          Height = 22
          TabOrder = 3
          CharCase = ecUpperCase
          Enabled = False
          LookupSelect = 'PRD_REFER, PRD_DESCRI'
          LookupOrderBy = 'PRD_REFER'
          LookupTable = 'PRD0000'
          LookupDispl = 'PRD_DESCRI'
          GridAutoSize = False
          LookupSource = qItens
          LookupKeyField = 'PRD_REFER'
          FiltroTabela = 'PRD_STATUS = '#39'A'#39
          ShowButton = True
          LookupTableShare = 'PRODUTOS'
          LookupWhere = 'PRD_REFER'
          AutoF8WinTitulo = 'Rela'#231#227'o de Produtos'
          AutoF8ColumnsTitulo = 'Refer'#234'ncia. Descri'#231#227'o'
          LookupDbGridColumns = 'PRD_REFER, PRD_DESCRI'
          LookupDbGridColumnsTitle = 'Refer'#234'ncia, Descri'#231#227'o'
          GridLeft = 0
          GridWidth = 0
          GridHeight = 100
          GridShowWhenEnter = False
          SelectWithDoubleClick = True
        end
        object cbCapacidade: TSgDbSearchCombo
          Left = 70
          Top = 90
          Width = 134
          Height = 22
          TabOrder = 4
          Enabled = False
          LookupSelect = 'CAP_DESCRICAO, CAP_CODIGO'
          LookupOrderBy = 'CAP_DESCRICAO'
          LookupTable = 'CAPACIDADE'
          LookupDispl = 'CAP_DESCRICAO'
          GridAutoSize = False
          LookupSource = qCapacidade
          LookupKeyField = 'CAP_CODIGO'
          ShowButton = True
          AutoF8WinTitulo = 'Capacidade do Item'
          AutoF8ColumnsTitulo = 'Descri'#231#227'o, C'#243'digo'
          LookupDbGridColumns = 'CAP_DESCRICAO, CAP_CODIGO'
          LookupDbGridColumnsTitle = 'Descri'#231#227'o, C'#243'digo'
          GridLeft = 0
          GridWidth = 0
          GridHeight = 100
          GridShowWhenEnter = False
          SelectWithDoubleClick = False
        end
      end
    end
    object EdtRegra_Codigo: TEdit
      Left = 45
      Top = 5
      Width = 48
      Height = 22
      MaxLength = 3
      TabOrder = 0
      OnKeyPress = EdtRegra_CodigoKeyPress
    end
    object pnMove: TPanel
      Left = 509
      Top = 4
      Width = 108
      Height = 24
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 1
      object btFirst: TSpeedButton
        Tag = 1
        Left = 0
        Top = 0
        Width = 26
        Height = 24
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          1800000000000006000000000000000000000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0800000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08000
          00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0800000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08000008000
          00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0800000800000C0C0C0C0C0C0C0C0C0C0C0C080000000F2FF8000
          00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0
          C0C0C0C0C0C0C0C08000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0800000800000C0C0C0C0C0C0C0C0C080000000F2FF00F2FF8000
          00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0
          C0C0C0C0C08000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0800000800000C0C0C0C0C0C080000000F2FF00F2FF00F2FF8000
          00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0
          C0C08000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0800000800000C0C0C080000000F2FF00F2FF00F2FF00F2FF8000
          00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C080
          00007F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0800000800000C0C0C0C0C0C080000000F2FF00F2FF00F2FF8000
          00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0
          C0C08000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0800000800000C0C0C0C0C0C0C0C0C080000000F2FF00F2FF8000
          00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0
          C0C0C0C0C08000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0800000800000C0C0C0C0C0C0C0C0C0C0C0C080000000F2FF8000
          00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0
          C0C0C0C0C0C0C0C08000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0800000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08000008000
          00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0800000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08000
          00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
        NumGlyphs = 2
        OnClick = btFirstClick
      end
      object btPrior: TSpeedButton
        Tag = 2
        Left = 28
        Top = 0
        Width = 26
        Height = 24
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          1800000000000006000000000000000000000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C07F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000800000C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080000000F2FF800000C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C08000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080000000F2FF00F2FF800000C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080
          00007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C080000000F2FF00F2FF00F2FF800000C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08000007F
          7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C080000000F2FF00F2FF00F2FF00F2FF800000C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08000007F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C080000000F2FF00F2FF00F2FF800000C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08000007F
          7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080000000F2FF00F2FF800000C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080
          00007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080000000F2FF800000C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C08000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000800000C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C07F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
        NumGlyphs = 2
        OnClick = btFirstClick
      end
      object btNext: TSpeedButton
        Tag = 3
        Left = 54
        Top = 0
        Width = 26
        Height = 24
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          1800000000000006000000000000000000000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7FC0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0800000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C080000000F2FF800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F80
          0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C080000000F2FF00F2FF800000C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F
          7F7F800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C080000000F2FF00F2FF00F2FF800000C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F
          7F7F7F7F7F800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C080000000F2FF00F2FF00F2FF00F2FF800000C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C080000000F2FF00F2FF00F2FF800000C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F
          7F7F7F7F7F800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C080000000F2FF00F2FF800000C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F
          7F7F800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C080000000F2FF800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F80
          0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0800000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7FC0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
        NumGlyphs = 2
        OnClick = btFirstClick
      end
      object btLast: TSpeedButton
        Tag = 4
        Left = 82
        Top = 0
        Width = 26
        Height = 24
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          1800000000000006000000000000000000000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000800000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7FC0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0800000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000800000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C080000000F2FF800000C0C0C0C0C0C0C0C0C0C0C0C0800000800000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F800000C0C0C0C0
          C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C080000000F2FF00F2FF800000C0C0C0C0C0C0C0C0C0800000800000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F800000C0
          C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C080000000F2FF00F2FF00F2FF800000C0C0C0C0C0C0800000800000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F80
          0000C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C080000000F2FF00F2FF00F2FF00F2FF800000C0C0C0800000800000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F800000C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C080000000F2FF00F2FF00F2FF800000C0C0C0C0C0C0800000800000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F80
          0000C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C080000000F2FF00F2FF800000C0C0C0C0C0C0C0C0C0800000800000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F800000C0
          C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C080000000F2FF800000C0C0C0C0C0C0C0C0C0C0C0C0800000800000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7F800000C0C0C0C0
          C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0800000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000800000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000800000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07F7F7FC0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
        NumGlyphs = 2
        OnClick = btFirstClick
      end
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 1216
    Top = 264
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 1264
    Top = 272
  end
  inherited DBConn: TSQLConnection
    Params.Strings = (
      'DriverName=Firebird'
      'Database=C:\JOBDADOS\EXEMPLO\EXEMPLO.FDB'
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
      'Trim Char=True')
    Left = 1160
    Top = 265
  end
  inherited qAux: TSQLQuery
    Left = 1218
    Top = 373
  end
  inherited qAux2: TSQLQuery
    Left = 1258
    Top = 372
  end
  inherited qAux3: TSQLQuery
    Left = 1298
    Top = 372
  end
  object DSRegraCFOP: TDataSource
    DataSet = CDSRegraCFOP
    Left = 1288
    Top = 34
  end
  object CDSRegraCFOP: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'DSPRegraCFOP'
    AfterOpen = CDSRegraCFOPAfterOpen
    AfterInsert = CDSRegraCFOPAfterInsert
    BeforeEdit = CDSRegraCFOPBeforeEdit
    BeforePost = CDSRegraCFOPBeforePost
    AfterPost = CDSRegraCFOPAfterPost
    AfterScroll = CDSRegraCFOPAfterScroll
    Left = 1200
    Top = 34
    object CDSRegraCFOPOPR_REGISTRO: TIntegerField
      FieldName = 'OPR_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSRegraCFOPEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CDSRegraCFOPIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object CDSRegraCFOPOPE_CODIGO_ORIGEM: TStringField
      FieldName = 'OPE_CODIGO_ORIGEM'
      Size = 3
    end
    object CDSRegraCFOPOPR_AC: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_AC'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_AL: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_AL'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_AP: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_AP'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_AM: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_AM'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_BA: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_BA'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_CE: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_CE'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_DF: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_DF'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_GO: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_GO'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_ES: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_ES'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_MA: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_MA'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_MT: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_MT'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_MS: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_MS'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_MG: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_MG'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_PA: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_PA'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_PB: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_PB'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_PR: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_PR'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_PE: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_PE'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_PI: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_PI'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_RJ: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_RJ'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_RN: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_RN'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_RS: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_RS'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_RO: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_RO'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_RR: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_RR'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_SP: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_SP'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_SC: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_SC'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_SE: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_SE'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_TO: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_TO'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPE_DESTINO: TStringField
      FieldName = 'OPE_DESTINO'
      Size = 3
    end
    object CDSRegraCFOPSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Size = 2
    end
    object CDSRegraCFOPOPR_PERCENTUAL_MVA: TFMTBCDField
      FieldName = 'OPR_PERCENTUAL_MVA'
      DisplayFormat = '##0.00'
      currency = True
      Precision = 15
      Size = 4
    end
    object CDSRegraCFOPDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object CDSRegraCFOPDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object CDSRegraCFOPOPR_ATIVO: TStringField
      FieldName = 'OPR_ATIVO'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_EX: TStringField
      DefaultExpression = #39'N'#39
      FieldName = 'OPR_EX'
      FixedChar = True
      Size = 1
    end
    object CDSRegraCFOPOPR_PERCENTUAL_MVA_SIMPLES: TFMTBCDField
      FieldName = 'OPR_PERCENTUAL_MVA_SIMPLES'
      DisplayFormat = '##0.00'
      currency = True
      Precision = 20
      Size = 5
    end
    object CDSRegraCFOPOPR_ALIQ_ST_UF: TFMTBCDField
      FieldName = 'OPR_ALIQ_ST_UF'
      DisplayFormat = '##0.00'
      Precision = 20
      Size = 5
    end
    object CDSRegraCFOPOPR_REDUCAO_BASE_ST: TFMTBCDField
      FieldName = 'OPR_REDUCAO_BASE_ST'
      DisplayFormat = '##0.00'
      Precision = 20
      Size = 5
    end
    object CDSRegraCFOPOPR_ALIQ_INTERESTADUAL: TFMTBCDField
      FieldName = 'OPR_ALIQ_INTERESTADUAL'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '##0.00'
      Precision = 20
      Size = 5
    end
    object CDSRegraCFOPOPR_ISENTARICIMS: TStringField
      FieldName = 'OPR_ISENTARICIMS'
      Size = 1
    end
    object CDSRegraCFOPOPR_ORIGEM: TStringField
      FieldName = 'OPR_ORIGEM'
      Size = 1
    end
    object CDSRegraCFOPCBenef: TStringField
      FieldName = 'CBenef'
      Size = 8
    end
    object CDSRegraCFOPOPR_PERC_FCP: TFMTBCDField
      FieldName = 'OPR_PERC_FCP'
      Precision = 15
    end
  end
  object DSPRegraCFOP: TDataSetProvider
    DataSet = SqlRegraCFOP
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 1112
    Top = 34
  end
  object SqlRegraCFOP: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *  FROM OPE_REGRA')
    SQLConnection = DBConn
    Left = 1024
    Top = 34
    object SqlRegraCFOPOPR_REGISTRO: TIntegerField
      FieldName = 'OPR_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SqlRegraCFOPEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlRegraCFOPIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object SqlRegraCFOPOPE_CODIGO_ORIGEM: TStringField
      FieldName = 'OPE_CODIGO_ORIGEM'
      Size = 3
    end
    object SqlRegraCFOPOPR_AC: TStringField
      FieldName = 'OPR_AC'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_AL: TStringField
      FieldName = 'OPR_AL'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_AP: TStringField
      FieldName = 'OPR_AP'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_AM: TStringField
      FieldName = 'OPR_AM'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_BA: TStringField
      FieldName = 'OPR_BA'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_CE: TStringField
      FieldName = 'OPR_CE'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_DF: TStringField
      FieldName = 'OPR_DF'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_GO: TStringField
      FieldName = 'OPR_GO'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_ES: TStringField
      FieldName = 'OPR_ES'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_MA: TStringField
      FieldName = 'OPR_MA'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_MT: TStringField
      FieldName = 'OPR_MT'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_MS: TStringField
      FieldName = 'OPR_MS'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_MG: TStringField
      FieldName = 'OPR_MG'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_PA: TStringField
      FieldName = 'OPR_PA'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_PB: TStringField
      FieldName = 'OPR_PB'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_PR: TStringField
      FieldName = 'OPR_PR'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_PE: TStringField
      FieldName = 'OPR_PE'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_PI: TStringField
      FieldName = 'OPR_PI'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_RJ: TStringField
      FieldName = 'OPR_RJ'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_RN: TStringField
      FieldName = 'OPR_RN'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_RS: TStringField
      FieldName = 'OPR_RS'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_RO: TStringField
      FieldName = 'OPR_RO'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_RR: TStringField
      FieldName = 'OPR_RR'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_SP: TStringField
      FieldName = 'OPR_SP'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_SC: TStringField
      FieldName = 'OPR_SC'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_SE: TStringField
      FieldName = 'OPR_SE'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_TO: TStringField
      FieldName = 'OPR_TO'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPE_DESTINO: TStringField
      FieldName = 'OPE_DESTINO'
      Size = 3
    end
    object SqlRegraCFOPSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Size = 2
    end
    object SqlRegraCFOPOPR_PERCENTUAL_MVA: TFMTBCDField
      FieldName = 'OPR_PERCENTUAL_MVA'
      Precision = 15
      Size = 4
    end
    object SqlRegraCFOPDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object SqlRegraCFOPDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
    end
    object SqlRegraCFOPOPR_ATIVO: TStringField
      FieldName = 'OPR_ATIVO'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_EX: TStringField
      FieldName = 'OPR_EX'
      FixedChar = True
      Size = 1
    end
    object SqlRegraCFOPOPR_PERCENTUAL_MVA_SIMPLES: TFMTBCDField
      FieldName = 'OPR_PERCENTUAL_MVA_SIMPLES'
      Precision = 20
      Size = 5
    end
    object SqlRegraCFOPOPR_ALIQ_ST_UF: TFMTBCDField
      FieldName = 'OPR_ALIQ_ST_UF'
      Precision = 20
      Size = 5
    end
    object SqlRegraCFOPOPR_REDUCAO_BASE_ST: TFMTBCDField
      FieldName = 'OPR_REDUCAO_BASE_ST'
      Precision = 20
      Size = 5
    end
    object SqlRegraCFOPOPR_ALIQ_INTERESTADUAL: TFMTBCDField
      FieldName = 'OPR_ALIQ_INTERESTADUAL'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object SqlRegraCFOPOPR_ISENTARICIMS: TStringField
      FieldName = 'OPR_ISENTARICIMS'
      Size = 1
    end
    object SqlRegraCFOPOPR_ORIGEM: TStringField
      FieldName = 'OPR_ORIGEM'
      Size = 1
    end
    object SqlRegraCFOPCBenef: TStringField
      FieldName = 'CBenef'
      Size = 8
    end
    object SqlRegraCFOPOPR_PERC_FCP: TFMTBCDField
      FieldName = 'OPR_PERC_FCP'
      Precision = 15
    end
  end
  object qAvancado: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM REGRA_FISCAL_PROD_CAP')
    SQLConnection = DBConn
    Left = 1024
    Top = 104
  end
  object dspAvancado: TDataSetProvider
    DataSet = qAvancado
    Left = 1112
    Top = 104
  end
  object cdsAvancado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAvancado'
    AfterScroll = cdsAvancadoAfterScroll
    Left = 1200
    Top = 104
    object cdsAvancadoRFP_CODIGO: TIntegerField
      FieldName = 'RFP_CODIGO'
      Required = True
    end
    object cdsAvancadoOPR_REGISTRO: TIntegerField
      FieldName = 'OPR_REGISTRO'
    end
    object cdsAvancadoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      OnGetText = cdsAvancadoPRD_REFERGetText
    end
    object cdsAvancadoCAP_CODIGO: TIntegerField
      FieldName = 'CAP_CODIGO'
      OnGetText = cdsAvancadoCAP_CODIGOGetText
    end
  end
  object dsAvancado: TDataSource
    DataSet = cdsAvancado
    Left = 1296
    Top = 104
  end
  object qCapacidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT DISTINCT * FROM CAPACIDADE ORDER BY CAP_DESCRICAO')
    SQLConnection = DBConn
    Left = 1016
    Top = 168
  end
  object qItens: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT PRD_REFER, PD.PRD_DESCRI'
      'FROM PRD0000'
      'ORDER BY PRD_REFER  ')
    SQLConnection = DBConn
    Left = 1018
    Top = 236
    object qItensPRD_REFER: TStringField
      Tag = 110
      FieldName = 'PRD_REFER'
    end
    object qItensPRD_DESCRI: TStringField
      Tag = 400
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
  end
end
