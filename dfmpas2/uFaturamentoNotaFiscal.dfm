inherited FrmFaturamentoNovoNotaFiscal: TFrmFaturamentoNovoNotaFiscal
  Left = 313
  Top = 297
  Caption = 'Nota Fiscal'
  ClientHeight = 608
  ClientWidth = 1152
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  Position = poDesktopCenter
  ExplicitWidth = 1160
  ExplicitHeight = 635
  PixelsPerInch = 96
  TextHeight = 14
  object pcPrincipal: TJvgPageControl [0]
    Left = 0
    Top = 0
    Width = 1152
    Height = 608
    ActivePage = tsDados
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    TabOrder = 0
    TabStop = False
    TabStyle.Borders = [fsdLeft, fsdTop, fsdRight, fsdBottom]
    TabStyle.BevelInner = bvNone
    TabStyle.BevelOuter = bvNone
    TabStyle.Bold = False
    TabStyle.BackgrColor = clBtnShadow
    TabStyle.Font.Charset = DEFAULT_CHARSET
    TabStyle.Font.Color = clBtnHighlight
    TabStyle.Font.Height = -11
    TabStyle.Font.Name = 'Arial'
    TabStyle.Font.Style = []
    TabStyle.CaptionHAlign = fhaCenter
    TabStyle.Gradient.Active = False
    TabStyle.Gradient.Orientation = fgdHorizontal
    TabSelectedStyle.Borders = [fsdLeft, fsdTop, fsdRight, fsdBottom]
    TabSelectedStyle.BevelInner = bvNone
    TabSelectedStyle.BevelOuter = bvNone
    TabSelectedStyle.Bold = False
    TabSelectedStyle.BackgrColor = clBtnFace
    TabSelectedStyle.Font.Charset = DEFAULT_CHARSET
    TabSelectedStyle.Font.Color = clBtnText
    TabSelectedStyle.Font.Height = -11
    TabSelectedStyle.Font.Name = 'Arial'
    TabSelectedStyle.Font.Style = []
    TabSelectedStyle.CaptionHAlign = fhaCenter
    TabSelectedStyle.Gradient.Active = False
    TabSelectedStyle.Gradient.Orientation = fgdHorizontal
    Options = [ftoAutoFontDirection, ftoExcludeGlyphs]
    object tsDados: TTabSheet
      Caption = 'Dados NF-e'
      object grpItens: TGroupBox
        Left = 0
        Top = 194
        Width = 1144
        Height = 255
        Align = alClient
        Caption = 'Itens da Nota'
        TabOrder = 0
        DesignSize = (
          1144
          255)
        object PcItensNota: TJvPageControl
          Left = 2
          Top = 16
          Width = 1140
          Height = 237
          ActivePage = tsItens
          Align = alClient
          TabOrder = 0
          object tsItens: TTabSheet
            Caption = 'Itens'
            object DBGrid1: TDBGrid
              Left = 0
              Top = 0
              Width = 1132
              Height = 208
              Align = alClient
              DataSource = DsItemNota
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Arial'
              TitleFont.Style = []
              OnDrawColumnCell = DBGrid1DrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'PRD_REFER'
                  Title.Alignment = taCenter
                  Title.Caption = 'Refer'#234'ncia'
                  Width = 117
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRD_DESCRI'
                  Title.Alignment = taCenter
                  Title.Caption = 'Descri'#231#227'o'
                  Width = 286
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NF_QTDE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Quantidade'
                  Width = 73
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRD_UND'
                  Title.Alignment = taCenter
                  Title.Caption = 'UND'
                  Width = 26
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NF_PRECO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Vlr. Unit'#225'rio'
                  Width = 77
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nf_totalitem'
                  Title.Alignment = taCenter
                  Title.Caption = 'Total'
                  Width = 85
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NTP_CFOP'
                  Title.Alignment = taCenter
                  Title.Caption = 'CFOP'
                  Width = 53
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'STB_TRIBUTACAO'
                  Title.Alignment = taCenter
                  Title.Caption = 'ST'
                  Width = 39
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'NF_CSOSN'
                  Title.Alignment = taCenter
                  Title.Caption = 'CSOSN'
                  Width = 67
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'IPI_CODIGO'
                  Title.Alignment = taCenter
                  Title.Caption = 'NCM/SH'
                  Width = 83
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NF_IDESCTO1'
                  Title.Alignment = taCenter
                  Title.Caption = 'Valor Desconto'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NF_ICMSBASE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Base Icms'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NF_ICMSALIQ'
                  Title.Alignment = taCenter
                  Title.Caption = 'Aliq. ICMS'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NF_ICMSVALOR'
                  Title.Alignment = taCenter
                  Title.Caption = 'Valor ICMS'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NF_SUBTRIBASE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Base ICMS ST'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NF_VLSUBST'
                  Title.Alignment = taCenter
                  Title.Caption = 'Valor ICMS ST'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NF_IPIBASE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Base IPI'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NF_IPIALIQ'
                  Title.Alignment = taCenter
                  Title.Caption = 'Aliq. IPI'
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NF_IPIVALOR'
                  Title.Alignment = taCenter
                  Title.Caption = 'Valor IPI'
                  Width = 80
                  Visible = True
                end>
            end
          end
          object tsImpostosItens: TTabSheet
            Caption = 'Impostos'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object GroupBox1: TGroupBox
              Left = 3
              Top = 3
              Width = 321
              Height = 70
              Caption = 'ICMS'
              TabOrder = 0
              object Label40: TLabel
                Left = 12
                Top = 18
                Width = 25
                Height = 14
                Caption = 'Base'
              end
              object Label39: TLabel
                Left = 115
                Top = 18
                Width = 31
                Height = 14
                Caption = 'Aliq %'
              end
              object Valor: TLabel
                Left = 219
                Top = 18
                Width = 25
                Height = 14
                Caption = 'Valor'
              end
              object DBEdit1: TDBEdit
                Left = 12
                Top = 35
                Width = 97
                Height = 22
                Color = 15132390
                DataField = 'NF_ICMSBASE'
                DataSource = DsItemNota
                ReadOnly = True
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 115
                Top = 35
                Width = 97
                Height = 22
                Color = 15132390
                DataField = 'NF_ICMSALIQ'
                DataSource = DsItemNota
                ReadOnly = True
                TabOrder = 1
              end
              object DBEdit3: TDBEdit
                Left = 218
                Top = 35
                Width = 97
                Height = 22
                Color = 15132390
                DataField = 'NF_ICMSVALOR'
                DataSource = DsItemNota
                ReadOnly = True
                TabOrder = 2
              end
            end
            object GroupBox2: TGroupBox
              Left = 3
              Top = 79
              Width = 321
              Height = 70
              Caption = 'ICMS ST'
              TabOrder = 1
              object Label42: TLabel
                Left = 111
                Top = 21
                Width = 31
                Height = 14
                Caption = 'Aliq %'
              end
              object Label41: TLabel
                Left = 8
                Top = 21
                Width = 25
                Height = 14
                Caption = 'Base'
              end
              object Label43: TLabel
                Left = 214
                Top = 21
                Width = 25
                Height = 14
                Caption = 'Valor'
              end
              object DBEdit4: TDBEdit
                Left = 8
                Top = 37
                Width = 97
                Height = 22
                Color = 15132390
                DataField = 'NF_SUBTRIBASE'
                DataSource = DsItemNota
                ReadOnly = True
                TabOrder = 0
              end
              object DBEdit5: TDBEdit
                Left = 111
                Top = 37
                Width = 97
                Height = 22
                Color = 15132390
                DataField = 'NF_ALIQSUBTRIB'
                DataSource = DsItemNota
                ReadOnly = True
                TabOrder = 1
              end
              object DBEdit6: TDBEdit
                Left = 213
                Top = 37
                Width = 97
                Height = 22
                Color = 15132390
                DataField = 'NF_VLSUBST'
                DataSource = DsItemNota
                ReadOnly = True
                TabOrder = 2
              end
            end
            object GroupBox3: TGroupBox
              Left = 762
              Top = 3
              Width = 321
              Height = 70
              Caption = 'IPI'
              TabOrder = 2
              object Label44: TLabel
                Left = 9
                Top = 18
                Width = 25
                Height = 14
                Caption = 'Base'
              end
              object Label45: TLabel
                Left = 112
                Top = 18
                Width = 31
                Height = 14
                Caption = 'Aliq %'
              end
              object Label46: TLabel
                Left = 216
                Top = 18
                Width = 25
                Height = 14
                Caption = 'Valor'
              end
              object DBEdit7: TDBEdit
                Left = 9
                Top = 35
                Width = 97
                Height = 22
                Color = 15132390
                DataField = 'NF_IPIBASE'
                DataSource = DsItemNota
                ReadOnly = True
                TabOrder = 0
              end
              object DBEdit8: TDBEdit
                Left = 112
                Top = 35
                Width = 97
                Height = 22
                Color = 15132390
                DataField = 'NF_IPIALIQ'
                DataSource = DsItemNota
                ReadOnly = True
                TabOrder = 1
              end
              object edNF_IPIVALOR: TDBEdit
                Left = 215
                Top = 35
                Width = 97
                Height = 22
                Color = 15132390
                DataField = 'NF_IPIVALOR'
                DataSource = DsItemNota
                ReadOnly = True
                TabOrder = 2
              end
            end
            object PIS: TGroupBox
              Left = 330
              Top = 3
              Width = 426
              Height = 70
              Caption = 'PIS'
              TabOrder = 3
              object Label59: TLabel
                Left = 13
                Top = 18
                Width = 25
                Height = 14
                Caption = 'Base'
              end
              object Label60: TLabel
                Left = 116
                Top = 18
                Width = 31
                Height = 14
                Caption = 'Aliq %'
              end
              object Label61: TLabel
                Left = 216
                Top = 18
                Width = 25
                Height = 14
                Caption = 'Valor'
              end
              object Label66: TLabel
                Left = 316
                Top = 18
                Width = 20
                Height = 14
                Caption = 'CST'
              end
              object DBEdit51: TDBEdit
                Left = 13
                Top = 35
                Width = 97
                Height = 22
                Color = 15132390
                DataField = 'NF_BASE_PIS'
                DataSource = DsItemNota
                ReadOnly = True
                TabOrder = 0
              end
              object DBEdit52: TDBEdit
                Left = 116
                Top = 35
                Width = 97
                Height = 22
                Color = 15132390
                DataField = 'NF_ALIQPIS'
                DataSource = DsItemNota
                ReadOnly = True
                TabOrder = 1
              end
              object DBEdit54: TDBEdit
                Left = 218
                Top = 35
                Width = 97
                Height = 22
                Color = 15132390
                DataField = 'NF_VLPIS'
                DataSource = DsItemNota
                ReadOnly = True
                TabOrder = 2
              end
              object DBEdit55: TDBEdit
                Left = 316
                Top = 35
                Width = 97
                Height = 22
                Color = 15132390
                DataField = 'CST_PIS'
                DataSource = DsItemNota
                ReadOnly = True
                TabOrder = 3
              end
            end
            object GroupBox4: TGroupBox
              Left = 330
              Top = 79
              Width = 426
              Height = 70
              Caption = 'CONFINS'
              TabOrder = 4
              object Label74: TLabel
                Left = 12
                Top = 21
                Width = 25
                Height = 14
                Caption = 'Base'
              end
              object Label75: TLabel
                Left = 132
                Top = 21
                Width = 31
                Height = 14
                Caption = 'Aliq %'
              end
              object Label76: TLabel
                Left = 218
                Top = 21
                Width = 25
                Height = 14
                Caption = 'Valor'
              end
              object Label77: TLabel
                Left = 320
                Top = 21
                Width = 20
                Height = 14
                Caption = 'CST'
              end
              object DBEdit56: TDBEdit
                Left = 12
                Top = 37
                Width = 97
                Height = 22
                Color = 15132390
                DataField = 'NF_BASE_COFINS'
                DataSource = DsItemNota
                ReadOnly = True
                TabOrder = 0
              end
              object DBEdit57: TDBEdit
                Left = 115
                Top = 37
                Width = 97
                Height = 22
                Color = 15132390
                DataField = 'NF_ALIQCOFINS'
                DataSource = DsItemNota
                ReadOnly = True
                TabOrder = 1
              end
              object DBEdit58: TDBEdit
                Left = 217
                Top = 37
                Width = 97
                Height = 22
                Color = 15132390
                DataField = 'NF_VLCOFINS'
                DataSource = DsItemNota
                ReadOnly = True
                TabOrder = 2
              end
              object DBEdit59: TDBEdit
                Left = 320
                Top = 37
                Width = 97
                Height = 22
                Color = 15132390
                DataField = 'CST_COFINS'
                DataSource = DsItemNota
                ReadOnly = True
                TabOrder = 3
              end
            end
          end
        end
        object pDiminuir: TFlowPanel
          Left = 1114
          Top = 10
          Width = 24
          Height = 22
          Anchors = [akTop, akRight]
          BevelOuter = bvNone
          Color = clRed
          FlowStyle = fsBottomTopLeftRight
          ParentBackground = False
          TabOrder = 1
          DesignSize = (
            24
            22)
          object spRedimecionarItem: TSpeedButton
            Left = 0
            Top = 2
            Width = 23
            Height = 20
            Hint = 'Aumentar visualiza'#231#227'o dos itens'
            Anchors = [akRight]
            Glyph.Data = {
              D6020000424DD60200000000000036000000280000000F0000000E0000000100
              180000000000A0020000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF53A953B0D8B0FFFFFFFFFFFFFF
              FFFFFFFFFFDFDFF42323B68787D7FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFF1A8D1A95CA95FFFFFFFFFFFFFFFFFFFFFFFF4F4FC40000AA0C0CAEE4E4
              F6FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF1A8D1A95CA95FFFFFFFFFFFFFF
              FFFFB6B6E72121B50000AA5050C55E5EC9FFFFFFFFFFFF000000C3E1C3A7D3A7
              FFFFFF1A8D1A95CA95E8F4E88EC78EF3F6F82424B6ACACE30000AAA4A4E01414
              B1CCCCEEFFFFFF000000E5F2E50F870FD8ECD81A8D1A95CA955FAF5F67B3678F
              8FDA4545C1FFFFFF0000AAAFAFE49090DA4242C0FFFFFF000000FFFFFF81C081
              4EA74E1A8D1A75BA75148A14ECF6ECFFFFFFFFFFFFFFFFFF0000AAAFAFE4FFFF
              FFFFFFFFFFFFFF000000FFFFFFF5FAF51C8E1C13891320902099CC99FFFFFFFF
              FFFFFFFFFFFFFFFF0000AAAFAFE4FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              A1D0A1098509299529FDFEFDFFFFFFFFFFFFFFFFFFFFFFFF0000AAAFAFE4FFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFEFFFEA3D1A3DAEDDAFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFC0C0EAEBEBF8FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
            ParentShowHint = False
            ShowHint = False
            Spacing = 1
            OnClick = spRedimecionarItemClick
          end
        end
      end
      object grpTotais: TGroupBox
        Left = 0
        Top = 449
        Width = 1144
        Height = 130
        Align = alBottom
        Caption = 'Hist'#243'rico'
        TabOrder = 1
        object DBGrid4: TDBGrid
          Left = 2
          Top = 16
          Width = 1140
          Height = 112
          Align = alClient
          DataSource = dsHistorico
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
              FieldName = 'NFH_DATA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USU_NOME'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NFM_REGISTRO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NFH_DESCRICAO'
              Title.Caption = 'Evento'
              Visible = True
            end>
        end
      end
      object pcabecalho: TPanel
        Left = 0
        Top = 0
        Width = 1144
        Height = 194
        Align = alTop
        TabOrder = 2
        DesignSize = (
          1144
          194)
        object Label30: TLabel
          Left = 725
          Top = 57
          Width = 34
          Height = 14
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Chave:'
        end
        object Label38: TLabel
          Left = 705
          Top = 32
          Width = 53
          Height = 14
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Vendedor :'
        end
        object Label78: TLabel
          Left = 711
          Top = 81
          Width = 48
          Height = 14
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Protocolo:'
        end
        object Label79: TLabel
          Left = 927
          Top = 81
          Width = 97
          Height = 14
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Data de autoriza'#231#227'o'
        end
        object Label8: TLabel
          Left = 716
          Top = 6
          Width = 42
          Height = 14
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Cliente:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object grpCliente: TGroupBox
          Left = 3
          Top = 3
          Width = 696
          Height = 185
          Anchors = [akLeft, akTop, akBottom]
          Caption = 'Cabe'#231'alho'
          TabOrder = 0
          object Label1: TLabel
            Left = 8
            Top = 16
            Width = 69
            Height = 14
            Caption = 'Tipo opera'#231#227'o'
          end
          object Label2: TLabel
            Left = 120
            Top = 16
            Width = 79
            Height = 14
            Caption = 'Opera'#231#227'o Fiscal'
          end
          object Label4: TLabel
            Left = 8
            Top = 57
            Width = 40
            Height = 14
            Caption = 'Emiss'#227'o'
          end
          object Label5: TLabel
            Left = 92
            Top = 57
            Width = 27
            Height = 14
            Caption = 'Sa'#237'da'
          end
          object Label6: TLabel
            Left = 252
            Top = 56
            Width = 34
            Height = 14
            Caption = 'Modelo'
          end
          object Label7: TLabel
            Left = 333
            Top = 56
            Width = 25
            Height = 14
            Caption = 'S'#233'rie'
          end
          object Label15: TLabel
            Left = 8
            Top = 95
            Width = 25
            Height = 14
            Caption = 'Frete'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 92
            Top = 95
            Width = 35
            Height = 14
            Caption = 'Seguro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 174
            Top = 95
            Width = 49
            Height = 14
            Caption = 'Despesas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 256
            Top = 95
            Width = 46
            Height = 14
            Caption = 'Desconto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 342
            Top = 95
            Width = 75
            Height = 14
            Caption = 'Frete por Conta'
          end
          object Label26: TLabel
            Left = 7
            Top = 133
            Width = 75
            Height = 14
            Caption = 'Transportadora'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 415
            Top = 55
            Width = 55
            Height = 14
            Caption = 'Quantidade'
          end
          object Label29: TLabel
            Left = 493
            Top = 55
            Width = 38
            Height = 14
            Caption = 'Esp'#233'cie'
          end
          object Label32: TLabel
            Left = 582
            Top = 55
            Width = 30
            Height = 14
            Caption = 'Marca'
          end
          object Label33: TLabel
            Left = 463
            Top = 95
            Width = 55
            Height = 14
            Caption = 'Numero Vol'
          end
          object Label34: TLabel
            Left = 462
            Top = 134
            Width = 53
            Height = 14
            Caption = 'Peso Bruto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label35: TLabel
            Left = 558
            Top = 134
            Width = 61
            Height = 14
            Caption = 'Peso Liquido'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 620
            Top = 16
            Width = 52
            Height = 14
            Caption = 'N'#186' Fatura  '
          end
          object Label36: TLabel
            Left = 540
            Top = 16
            Width = 41
            Height = 14
            Caption = 'Pedido : '
          end
          object Label37: TLabel
            Left = 174
            Top = 56
            Width = 52
            Height = 14
            Caption = 'Hora sa'#237'da'
          end
          object DBEdit21: TDBEdit
            Left = 123
            Top = 29
            Width = 75
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'OPE_NATUREZA'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit22: TDBEdit
            Left = 202
            Top = 29
            Width = 332
            Height = 22
            TabStop = False
            Color = 15132390
            DataField = 'OPE_DESCRI'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit23: TDBEdit
            Left = 8
            Top = 29
            Width = 104
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'nf_entr_said'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit24: TDBEdit
            Left = 334
            Top = 71
            Width = 75
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'NF_SERIE'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit26: TDBEdit
            Left = 8
            Top = 110
            Width = 78
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'NF_VLFRETE'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object DBEdit31: TDBEdit
            Left = 92
            Top = 110
            Width = 75
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'NF_VLSEGURO'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit33: TDBEdit
            Left = 174
            Top = 109
            Width = 78
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'NF_DESP_ACES'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
          end
          object DBEdit35: TDBEdit
            Left = 256
            Top = 109
            Width = 78
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'NF_VL_DESCTO'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object DBEdit36: TDBEdit
            Left = 342
            Top = 109
            Width = 115
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'NF_TIPO_FRETE'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
          end
          object DBEdit34: TDBEdit
            Left = 8
            Top = 147
            Width = 78
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'TRP_CODIGO'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
          object DBEdit37: TDBEdit
            Left = 92
            Top = 147
            Width = 365
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'TRP_RAZAO'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 10
          end
          object DBEdit29: TDBEdit
            Left = 8
            Top = 71
            Width = 77
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'NF_EMISSAO'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 11
          end
          object DBEdit30: TDBEdit
            Left = 92
            Top = 71
            Width = 75
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'NF_SAIDA'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 12
          end
          object DBEdit32: TDBEdit
            Left = 252
            Top = 71
            Width = 75
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'NF_MODELO_NF'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 13
          end
          object DBEdit38: TDBEdit
            Left = 415
            Top = 71
            Width = 77
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'NF_QTDE'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 14
          end
          object DBEdit39: TDBEdit
            Left = 494
            Top = 71
            Width = 75
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'NF_ESPECIE'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 15
          end
          object DBEdit40: TDBEdit
            Left = 576
            Top = 71
            Width = 75
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'NF_MARCA'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 16
          end
          object DBEdit44: TDBEdit
            Left = 463
            Top = 108
            Width = 75
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'NF_NUMERO'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 17
          end
          object DBEdit45: TDBEdit
            Left = 463
            Top = 147
            Width = 89
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'NF_PESOBRU'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 18
          end
          object DBEdit46: TDBEdit
            Left = 558
            Top = 147
            Width = 91
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'NF_PESOLIQ'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 19
          end
          object DBEdit28: TDBEdit
            Left = 616
            Top = 29
            Width = 74
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'NF_NOTANUMBER'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 20
          end
          object DBEdit47: TDBEdit
            Left = 540
            Top = 29
            Width = 74
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'PED_CODIGO'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 21
          end
          object DBEdit48: TDBEdit
            Left = 173
            Top = 71
            Width = 75
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'NF_HORASAIDA'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 22
          end
        end
        object grpTransportadora: TGroupBox
          Left = 705
          Top = 108
          Width = 436
          Height = 80
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Duplicatas'
          TabOrder = 1
          DesignSize = (
            436
            80)
          object Label9: TLabel
            Left = 4
            Top = 23
            Width = 28
            Height = 14
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Prazo'
          end
          object Label10: TLabel
            Left = 3
            Top = 50
            Width = 45
            Height = 14
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Tipo Doc:'
          end
          object DBEdit11: TDBEdit
            Left = 37
            Top = 20
            Width = 70
            Height = 22
            TabStop = False
            Color = 15132390
            Ctl3D = True
            DataField = 'PCL_CODIGO'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit12: TDBEdit
            Left = 110
            Top = 20
            Width = 320
            Height = 22
            TabStop = False
            Anchors = [akLeft, akTop, akRight]
            Color = 15132390
            DataField = 'PCL_NOME'
            DataSource = dsNota
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit20: TDBEdit
            Left = 54
            Top = 47
            Width = 378
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            Color = 15132390
            DataField = 'NF_TIPODOC'
            DataSource = dsNota
            ReadOnly = True
            TabOrder = 2
          end
        end
        object DBEdit43: TDBEdit
          Left = 760
          Top = 53
          Width = 381
          Height = 22
          TabStop = False
          Anchors = [akLeft, akTop, akRight]
          Color = 15132390
          DataField = 'NF_CHAVE_NFE'
          DataSource = dsNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit49: TDBEdit
          Left = 827
          Top = 29
          Width = 314
          Height = 22
          TabStop = False
          Anchors = [akLeft, akTop, akRight]
          Color = 15132390
          DataField = 'REP_NOME'
          DataSource = dsNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit50: TDBEdit
          Left = 760
          Top = 29
          Width = 65
          Height = 22
          TabStop = False
          Color = 15132390
          Ctl3D = True
          DataField = 'REP_CODIGO'
          DataSource = dsNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit60: TDBEdit
          Left = 760
          Top = 77
          Width = 161
          Height = 22
          TabStop = False
          Color = 15132390
          DataField = 'NF_PROTOCOLO_NFE'
          DataSource = dsNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit61: TDBEdit
          Left = 1030
          Top = 77
          Width = 111
          Height = 22
          TabStop = False
          Anchors = [akLeft, akTop, akRight]
          Color = 15132390
          DataField = 'NF_DATA_AUTORIZACAO'
          DataSource = dsNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit9: TDBEdit
          Left = 760
          Top = 3
          Width = 65
          Height = 22
          TabStop = False
          Color = 15132390
          Ctl3D = True
          DataField = 'CLI_CODIGO'
          DataSource = dsNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit10: TDBEdit
          Left = 827
          Top = 3
          Width = 314
          Height = 22
          TabStop = False
          Anchors = [akLeft, akTop, akRight]
          Color = 15132390
          DataField = 'cli_razao'
          DataSource = dsNota
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Destinat'#225'rio'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label47: TLabel
        Left = -22
        Top = 169
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'E-mail:'
      end
      object Label48: TLabel
        Left = -22
        Top = 145
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fone:'
      end
      object Label49: TLabel
        Left = -22
        Top = 121
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CEP:'
      end
      object Label50: TLabel
        Left = -22
        Top = 96
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Endere'#231'o:'
      end
      object Label51: TLabel
        Left = -22
        Top = 72
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fantasia:'
      end
      object Label52: TLabel
        Left = -22
        Top = 50
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Raz'#227'o Social:'
      end
      object Label53: TLabel
        Left = 178
        Top = 27
        Width = 57
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CNPJ/CPF:'
      end
      object Label54: TLabel
        Left = 522
        Top = 27
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Inscri'#231#227'o Estadual/Rg:'
      end
      object Label55: TLabel
        Left = 178
        Top = 121
        Width = 41
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Bairro:'
      end
      object Label56: TLabel
        Left = -23
        Top = 27
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'C'#243'digo:'
      end
      object Label57: TLabel
        Left = 378
        Top = 121
        Width = 49
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cidade:'
      end
      object Label58: TLabel
        Left = 610
        Top = 121
        Width = 25
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'UF:'
      end
      object EdDestEmail: TDBEdit
        Left = 96
        Top = 166
        Width = 667
        Height = 22
        TabStop = False
        Color = 15132390
        DataField = 'CLI_EMAIL'
        DataSource = dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object EdDestFone: TDBEdit
        Left = 96
        Top = 142
        Width = 131
        Height = 22
        TabStop = False
        Color = 15132390
        DataField = 'CLI_FONE'
        DataSource = dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object EdDestCep: TDBEdit
        Left = 96
        Top = 118
        Width = 83
        Height = 22
        TabStop = False
        Color = 15132390
        DataField = 'CLI_CEP'
        DataSource = dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object EdDestEndereco: TDBEdit
        Left = 96
        Top = 94
        Width = 667
        Height = 22
        TabStop = False
        Color = 15132390
        DataField = 'CLI_ENDERE'
        DataSource = dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object EdDestFantasia: TDBEdit
        Left = 96
        Top = 70
        Width = 667
        Height = 22
        TabStop = False
        Color = 15132390
        DataField = 'CLI_FANTASIA'
        DataSource = dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object EdDestRazao: TDBEdit
        Left = 96
        Top = 46
        Width = 667
        Height = 22
        TabStop = False
        Color = 15132390
        DataField = 'CLI_RAZAO'
        DataSource = dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object EdDestCodigo: TDBEdit
        Left = 96
        Top = 22
        Width = 75
        Height = 22
        TabStop = False
        Color = 15132390
        Ctl3D = True
        DataField = 'CLI_CODIGO'
        DataSource = dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object EdDestCnpjCpf: TDBEdit
        Left = 240
        Top = 22
        Width = 163
        Height = 22
        TabStop = False
        Color = 15132390
        DataField = 'CLI_CGC'
        DataSource = dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object EdDestIE: TDBEdit
        Left = 642
        Top = 22
        Width = 121
        Height = 22
        TabStop = False
        Color = 15132390
        DataField = 'CLI_INSC'
        DataSource = dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object EdDestBairro: TDBEdit
        Left = 224
        Top = 118
        Width = 163
        Height = 22
        TabStop = False
        Color = 15132390
        DataField = 'CLI_BAIRRO'
        DataSource = dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object EdDestCidade: TDBEdit
        Left = 432
        Top = 118
        Width = 179
        Height = 22
        TabStop = False
        Color = 15132390
        DataField = 'CLI_CIDADE'
        DataSource = dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object EdDestEstado: TDBEdit
        Left = 642
        Top = 118
        Width = 121
        Height = 22
        TabStop = False
        Color = 15132390
        DataField = 'CLI_UF'
        DataSource = dsCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
      end
    end
    object tsTotais: TTabSheet
      Caption = 'Totais'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label13: TLabel
        Left = 22
        Top = 48
        Width = 58
        Height = 14
        Caption = 'Base ICMS :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 252
        Top = 48
        Width = 55
        Height = 14
        Caption = 'Valor ICMS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 7
        Top = 90
        Width = 70
        Height = 14
        Caption = 'Base ICMS ST:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 234
        Top = 90
        Width = 70
        Height = 14
        Caption = 'Valor ICMS ST:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 715
        Top = 48
        Width = 54
        Height = 14
        Caption = 'Valor frete:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 38
        Top = 133
        Width = 41
        Height = 14
        Caption = 'Valor IPI:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 449
        Top = 48
        Width = 95
        Height = 14
        Caption = 'Valor dos produtos:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 450
        Top = 133
        Width = 94
        Height = 14
        Caption = 'Valor do desconto :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label31: TLabel
        Left = 471
        Top = 87
        Width = 73
        Height = 14
        Caption = 'Valor servi'#231'os:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 677
        Top = 133
        Width = 90
        Height = 14
        Caption = 'Total Nota Fiscal:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label80: TLabel
        Left = 219
        Top = 133
        Width = 85
        Height = 14
        Caption = 'Valor desp. aces:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label81: TLabel
        Left = 704
        Top = 87
        Width = 65
        Height = 14
        Caption = 'Valor seguro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label82: TLabel
        Left = 972
        Top = 48
        Width = 50
        Height = 14
        Caption = 'Valor FCP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label83: TLabel
        Left = 891
        Top = 87
        Width = 131
        Height = 14
        Caption = 'Valor ICMS partilha destino:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label84: TLabel
        Left = 894
        Top = 133
        Width = 128
        Height = 14
        Caption = 'Valor ICMS partilha origem:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label85: TLabel
        Left = 199
        Top = 176
        Width = 105
        Height = 14
        Caption = 'Valor aprox impostos:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label86: TLabel
        Left = 9
        Top = 176
        Width = 68
        Height = 14
        Caption = 'Valor base IPI:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label87: TLabel
        Left = 423
        Top = 177
        Width = 126
        Height = 14
        Caption = 'Valor do desconto fatura :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit13: TDBEdit
        Left = 83
        Top = 45
        Width = 110
        Height = 22
        Color = 15132390
        DataField = 'NF_BASEICMS'
        DataSource = dsNota
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit14: TDBEdit
        Left = 313
        Top = 45
        Width = 107
        Height = 22
        Color = 15132390
        DataField = 'NF_VL_ICMS'
        DataSource = dsNota
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit15: TDBEdit
        Left = 83
        Top = 87
        Width = 110
        Height = 22
        Color = 15132390
        DataField = 'NF_VLBASESUBTRIB'
        DataSource = dsNota
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit16: TDBEdit
        Left = 310
        Top = 87
        Width = 110
        Height = 22
        Color = 15132390
        DataField = 'NF_VL_SUBTRIB'
        DataSource = dsNota
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit17: TDBEdit
        Left = 775
        Top = 45
        Width = 110
        Height = 22
        Color = 15132390
        DataField = 'NF_VLFRETE'
        DataSource = dsNota
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit18: TDBEdit
        Left = 82
        Top = 130
        Width = 111
        Height = 22
        Color = 15132390
        DataField = 'NF_VL_IPI'
        DataSource = dsNota
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit19: TDBEdit
        Left = 550
        Top = 45
        Width = 110
        Height = 22
        Color = 15132390
        DataField = 'NF_TOT_PROD'
        DataSource = dsNota
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit25: TDBEdit
        Left = 550
        Top = 130
        Width = 110
        Height = 22
        Color = 15132390
        DataField = 'NF_VL_DESCTO'
        DataSource = dsNota
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit27: TDBEdit
        Left = 550
        Top = 84
        Width = 110
        Height = 22
        Color = 15132390
        DataField = 'NF_NFSE_VLR_BASE_CALCULO'
        DataSource = dsNota
        ReadOnly = True
        TabOrder = 8
      end
      object DBEdit53: TDBEdit
        Left = 775
        Top = 130
        Width = 110
        Height = 22
        Color = 15132390
        DataField = 'NF_TOT_NOTA'
        DataSource = dsNota
        ReadOnly = True
        TabOrder = 9
      end
      object DBEdit62: TDBEdit
        Left = 83
        Top = 173
        Width = 111
        Height = 22
        Color = 15132390
        DataField = 'NF_BASE_IPI'
        DataSource = dsNota
        ReadOnly = True
        TabOrder = 10
      end
      object DBEdit63: TDBEdit
        Left = 310
        Top = 130
        Width = 110
        Height = 22
        Color = 15132390
        DataField = 'NF_DESP_ACES'
        DataSource = dsNota
        ReadOnly = True
        TabOrder = 11
      end
      object DBEdit64: TDBEdit
        Left = 775
        Top = 84
        Width = 110
        Height = 22
        Color = 15132390
        DataField = 'NF_VLSEGURO'
        DataSource = dsNota
        ReadOnly = True
        TabOrder = 12
      end
      object DBEdit65: TDBEdit
        Left = 1028
        Top = 45
        Width = 110
        Height = 22
        Color = 15132390
        DataField = 'NF_VALOR_TOTAL_FCP'
        DataSource = dsNota
        ReadOnly = True
        TabOrder = 13
      end
      object DBEdit66: TDBEdit
        Left = 1028
        Top = 84
        Width = 110
        Height = 22
        Color = 15132390
        DataField = 'NF_VALOR_TOTAL_PARTILHA_DEST'
        DataSource = dsNota
        ReadOnly = True
        TabOrder = 14
      end
      object DBEdit67: TDBEdit
        Left = 1028
        Top = 130
        Width = 110
        Height = 22
        Color = 15132390
        DataField = 'NF_VALOR_TOTAL_PARTILHA_ORIG'
        DataSource = dsNota
        ReadOnly = True
        TabOrder = 15
      end
      object DBEdit68: TDBEdit
        Left = 310
        Top = 173
        Width = 110
        Height = 22
        Color = 15132390
        DataField = 'IBPT_VLAPROXTRIBUTOS'
        DataSource = dsNota
        ReadOnly = True
        TabOrder = 16
      end
      object DBEdit69: TDBEdit
        Left = 551
        Top = 173
        Width = 110
        Height = 22
        Color = 15132390
        DataField = 'NF_VL_DESCTO_FAT'
        DataSource = dsNota
        ReadOnly = True
        TabOrder = 17
      end
    end
    object tsDuplicatas: TTabSheet
      Caption = 'Duplicatas'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 1144
        Height = 579
        Align = alClient
        DataSource = dsDuplicatas
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgTitleClick, dgTitleHotTrack]
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
            Title.Caption = 'Duplicata'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_NUMER'
            Title.Caption = 'Parcela'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_VENCTO'
            Title.Caption = 'Vencimento'
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_COBTIPO'
            Title.Caption = 'Cobran'#231'a'
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_TIPODOC'
            Title.Caption = 'Tipo documento'
            Width = 216
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPC_VLPARC'
            Title.Caption = 'Valor'
            Width = 122
            Visible = True
          end>
      end
    end
    object TsTransporte: TTabSheet
      Caption = 'Transporte'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label11: TLabel
        Left = 16
        Top = 26
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Raz'#227'o Social:'
      end
      object Label18: TLabel
        Left = 16
        Top = 50
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Placa do Ve'#237'culo:'
      end
      object Label62: TLabel
        Left = 392
        Top = 50
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CNPJ:'
      end
      object Label63: TLabel
        Left = 16
        Top = 74
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Endere'#231'o:'
      end
      object Label64: TLabel
        Left = 16
        Top = 186
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tipo do Frete:'
        Visible = False
      end
      object Label65: TLabel
        Left = 17
        Top = 124
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Inscri'#231#227'o Estadual:'
      end
      object Label67: TLabel
        Left = 88
        Top = 149
        Width = 41
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Esp'#233'cie:'
      end
      object Label68: TLabel
        Left = 189
        Top = 147
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Peso L'#237'quido:'
      end
      object Label69: TLabel
        Left = 397
        Top = 147
        Width = 65
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Peso Bruto:'
      end
      object Label70: TLabel
        Left = 576
        Top = 98
        Width = 33
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'UF:'
      end
      object Label71: TLabel
        Left = 266
        Top = 98
        Width = 57
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Munic'#237'pio:'
      end
      object Label72: TLabel
        Left = 184
        Top = 186
        Width = 297
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 
          '( 0 ) Emitente ( 1 ) Destinat'#225'rio ( 2 ) Terceiros ( 9 ) Sem Fret' +
          'e'
        Visible = False
      end
      object Label73: TLabel
        Left = 16
        Top = 98
        Width = 113
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CEP:'
      end
      object EdTransporteRazao: TDBEdit
        Left = 193
        Top = 22
        Width = 464
        Height = 22
        TabStop = False
        Color = 15263976
        DataField = 'TRP_RAZAO'
        DataSource = dsNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object EdTransportePlaca: TDBEdit
        Left = 134
        Top = 46
        Width = 99
        Height = 22
        TabStop = False
        Color = 15263976
        DataField = 'NF_PLACAVE'
        DataSource = dsNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object EdTransporteCnpj: TDBEdit
        Left = 510
        Top = 46
        Width = 147
        Height = 22
        TabStop = False
        Color = 15263976
        DataField = 'TRP_CGC'
        DataSource = dsNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object EdTransporteEndereco: TDBEdit
        Left = 134
        Top = 70
        Width = 523
        Height = 22
        TabStop = False
        Color = 15263976
        DataField = 'TRP_ENDERE'
        DataSource = dsNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object EdTransporteTipoFrete: TDBEdit
        Left = 134
        Top = 182
        Width = 43
        Height = 22
        TabStop = False
        Color = 15263976
        DataSource = dsNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        Visible = False
      end
      object EdTransporteIE: TDBEdit
        Left = 135
        Top = 120
        Width = 195
        Height = 22
        TabStop = False
        Color = 15263976
        DataField = 'TRP_INSC'
        DataSource = dsNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object EdTransporteEspecie: TDBEdit
        Left = 134
        Top = 145
        Width = 91
        Height = 22
        TabStop = False
        Color = 15263976
        DataField = 'NF_ESPECIE'
        DataSource = dsNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object EdTransportePesoLiquido: TDBEdit
        Left = 307
        Top = 145
        Width = 91
        Height = 22
        TabStop = False
        Color = 15263976
        DataField = 'NF_PESOLIQ'
        DataSource = dsNota
        ReadOnly = True
        TabOrder = 7
      end
      object EdTransportePesoBruto: TDBEdit
        Left = 467
        Top = 145
        Width = 91
        Height = 22
        TabStop = False
        Color = 15263976
        DataField = 'NF_PESOBRU'
        DataSource = dsNota
        ReadOnly = True
        TabOrder = 8
      end
      object EdTransporteUF: TDBEdit
        Left = 614
        Top = 94
        Width = 43
        Height = 22
        TabStop = False
        Color = 15263976
        DataField = 'TRP_uf'
        DataSource = dsNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object EdTransporteMunicipio: TDBEdit
        Left = 328
        Top = 94
        Width = 147
        Height = 22
        TabStop = False
        Color = 15263976
        DataField = 'TRP_CIDADE'
        DataSource = dsNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object DBEdit41: TDBEdit
        Left = 135
        Top = 22
        Width = 56
        Height = 22
        TabStop = False
        Color = 15263976
        DataField = 'TRP_CODIGO'
        DataSource = dsNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
      end
      object DBEdit42: TDBEdit
        Left = 135
        Top = 94
        Width = 97
        Height = 22
        TabStop = False
        Color = 15263976
        DataField = 'TRP_CEP'
        DataSource = dsNota
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
      end
    end
    object tsInformacoesAdd: TTabSheet
      Caption = 'Informa'#231#245'es Adicionais'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grpDadosAdicionais: TGroupBox
        Left = 0
        Top = 0
        Width = 1144
        Height = 579
        Align = alClient
        Caption = 'Dados Adicionais'
        TabOrder = 0
        object DBMemo1: TDBMemo
          Left = 2
          Top = 16
          Width = 1140
          Height = 561
          Align = alClient
          DataField = 'NF_OBSERVACAO'
          DataSource = dsNota
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object tsHistorico: TTabSheet
      Hint = 'Hist'#243'rico de a'#231#245'es e respostas da Sefaz'
      Caption = 'Hist'#243'ricos'
      Enabled = False
      ImageIndex = 5
      ParentShowHint = False
      ShowHint = False
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 1144
        Height = 579
        Align = alClient
        DataSource = dsHistorico
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
            FieldName = 'NFH_DATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFM_REGISTRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFH_DESCRICAO'
            Title.Caption = 'Evento'
            Visible = True
          end>
      end
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 88
    Top = 392
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 576
    Top = 0
  end
  inherited DBConn: TSQLConnection
    Left = 64
    Top = 393
  end
  inherited qAux: TSQLQuery
    Left = 170
    Top = 341
  end
  inherited qAux2: TSQLQuery
    Left = 242
    Top = 388
  end
  inherited qAux3: TSQLQuery
    Left = 938
    Top = 380
  end
  object dspItemNota: TDataSetProvider
    DataSet = SqlItemNota
    Left = 344
    Top = 424
  end
  object SqlItemNota: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select pd.PRD_REFER,'
      '       it.PRDCO_CODIGO_ORIGINAL,'
      '       it.PRD_DESCRI,'
      '       it.STB_TRIBUTACAO, '
      '       it.IPI_CODIGO, '
      '       it.NF_QTDE, '
      '       it.NF_PRECO, '
      '       it.NTP_CFOP,'
      '       it.NF_ICMSALIQ, '
      '       it.NF_IPIALIQ, '
      '       it.NF_VLSUBST, '
      '       it.NF_IFRETE, '
      '       it.NF_ISEGURO, '
      '       it.NF_IDESP_ACES, '
      '       it.NF_VLPIS, '
      '       it.NF_VLCOFINS,'
      '       it.NF_CSOSN'
      'from NF_IT01 it '
      '     LEFT JOIN PRD0000 PD ON (PD.PRD_REFER = it.PRD_REFER )'
      'where it.nf_registro='#39'-0030'#39)
    SQLConnection = DBConn
    Left = 472
    Top = 382
  end
  object DsItemNota: TDataSource
    DataSet = CdsItemNota
    Left = 409
    Top = 449
  end
  object CdsItemNota: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItemNota'
    OnCalcFields = CdsItemNotaCalcFields
    Left = 552
    Top = 456
    object CdsItemNotaPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object CdsItemNotaPRDCO_CODIGO_ORIGINAL: TStringField
      FieldName = 'PRDCO_CODIGO_ORIGINAL'
      Size = 60
    end
    object CdsItemNotaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 500
    end
    object CdsItemNotaSTB_TRIBUTACAO: TStringField
      FieldName = 'STB_TRIBUTACAO'
      Size = 3
    end
    object CdsItemNotaIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object CdsItemNotaNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      Precision = 18
      Size = 5
    end
    object CdsItemNotaNF_PRECO: TFMTBCDField
      FieldName = 'NF_PRECO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 5
    end
    object CdsItemNotaNTP_CFOP: TIntegerField
      FieldName = 'NTP_CFOP'
    end
    object CdsItemNotaNF_ICMSALIQ: TFMTBCDField
      FieldName = 'NF_ICMSALIQ'
      Precision = 18
      Size = 5
    end
    object CdsItemNotaNF_IPIALIQ: TFMTBCDField
      FieldName = 'NF_IPIALIQ'
      Precision = 18
      Size = 5
    end
    object CdsItemNotaNF_VLSUBST: TFMTBCDField
      FieldName = 'NF_VLSUBST'
      Precision = 18
      Size = 5
    end
    object CdsItemNotaNF_SUBTRIBASE: TFMTBCDField
      FieldName = 'NF_SUBTRIBASE'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object CdsItemNotaNF_IFRETE: TFMTBCDField
      FieldName = 'NF_IFRETE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 5
    end
    object CdsItemNotaNF_ISEGURO: TFMTBCDField
      FieldName = 'NF_ISEGURO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 5
    end
    object CdsItemNotaNF_IDESP_ACES: TFMTBCDField
      FieldName = 'NF_IDESP_ACES'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 5
    end
    object CdsItemNotaNF_VLPIS: TFMTBCDField
      FieldName = 'NF_VLPIS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 5
    end
    object CdsItemNotaNF_TOTAL_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'NF_TOTAL_CC'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object CdsItemNotaNF_TOTAL_IPI_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'NF_TOTAL_IPI_CC'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object CdsItemNotaNF_ICMSBASE: TFMTBCDField
      FieldName = 'NF_ICMSBASE'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object CdsItemNotaNF_IPIBASE: TFMTBCDField
      FieldName = 'NF_IPIBASE'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object CdsItemNotaPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 2
    end
    object CdsItemNotaNF_ICMSVALOR: TFMTBCDField
      FieldName = 'NF_ICMSVALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object CdsItemNotaNF_IDESCTO1: TFMTBCDField
      FieldName = 'NF_IDESCTO1'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object CdsItemNotaNF_ALIQSUBTRIB: TFMTBCDField
      FieldName = 'NF_ALIQSUBTRIB'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object CdsItemNotaNF_IPIVALOR: TFMTBCDField
      FieldName = 'NF_IPIVALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object CdsItemNotaNF_BASE_PIS: TFMTBCDField
      FieldName = 'NF_BASE_PIS'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object CdsItemNotaNF_ALIQPIS: TFMTBCDField
      FieldName = 'NF_ALIQPIS'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object CdsItemNotaCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Size = 2
    end
    object CdsItemNotaCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Size = 2
    end
    object CdsItemNotaNF_BASE_COFINS: TFMTBCDField
      FieldName = 'NF_BASE_COFINS'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object CdsItemNotaNF_ALIQCOFINS: TFMTBCDField
      FieldName = 'NF_ALIQCOFINS'
      Size = 2
    end
    object CdsItemNotaNF_VLCOFINS: TFMTBCDField
      FieldName = 'NF_VLCOFINS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 5
    end
    object CdsItemNotaNF_CSOSN: TStringField
      FieldName = 'NF_CSOSN'
      Size = 3
    end
    object CdsItemNotanf_totalitem: TFMTBCDField
      FieldName = 'nf_totalitem'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
    end
    object CdsItemNotaNF_PRODUTO_AGREGADO: TStringField
      FieldName = 'NF_PRODUTO_AGREGADO'
      Size = 1
    end
  end
  object dspNota: TDataSetProvider
    DataSet = qNota
    Left = 944
    Top = 328
  end
  object qNota: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select pd.PRD_REFER,'
      '       it.PRDCO_CODIGO_ORIGINAL,'
      '       it.PRD_DESCRI,'
      '       it.STB_TRIBUTACAO, '
      '       it.IPI_CODIGO, '
      '       it.NF_QTDE, '
      '       it.NF_PRECO, '
      '       it.NTP_CFOP,'
      '       it.NF_ICMSALIQ, '
      '       it.NF_IPIALIQ, '
      '       it.NF_VLSUBST, '
      '       it.NF_IFRETE, '
      '       it.NF_ISEGURO, '
      '       it.NF_IDESP_ACES, '
      '       it.NF_VLPIS, '
      '       it.NF_VLCOFINS,'
      '       it.NF_CSOSN'
      'from NF_IT01 it '
      '     LEFT JOIN PRD0000 PD ON (PD.PRD_REFER = it.PRD_REFER )'
      'where it.nf_registro='#39'-0030'#39)
    SQLConnection = DBConn
    Left = 728
    Top = 310
  end
  object dsNota: TDataSource
    DataSet = cdsNota
    Left = 777
    Top = 313
  end
  object cdsNota: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNota'
    OnCalcFields = CdsItemNotaCalcFields
    Left = 848
    Top = 310
    object cdsNotaCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object cdsNotacli_razao: TStringField
      FieldName = 'cli_razao'
      Size = 55
    end
    object cdsNotaPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 3
    end
    object cdsNotaPCL_NOME: TStringField
      FieldName = 'PCL_NOME'
      Size = 35
    end
    object cdsNotaNF_BASEICMS: TFMTBCDField
      FieldName = 'NF_BASEICMS'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsNotaNF_VL_ICMS: TFMTBCDField
      FieldName = 'NF_VL_ICMS'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsNotaNF_VLBASESUBTRIB: TFMTBCDField
      FieldName = 'NF_VLBASESUBTRIB'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsNotaNF_VL_SUBTRIB: TFMTBCDField
      FieldName = 'NF_VL_SUBTRIB'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsNotaNF_VALOR_COFINS: TFMTBCDField
      FieldName = 'NF_VALOR_COFINS'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsNotaNF_VL_IPI: TFMTBCDField
      FieldName = 'NF_VL_IPI'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsNotaNF_VALORTOT_PIS: TFMTBCDField
      FieldName = 'NF_VALORTOT_PIS'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsNotaNF_VLFRETE: TFMTBCDField
      FieldName = 'NF_VLFRETE'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsNotaNF_VLSEGURO: TFMTBCDField
      FieldName = 'NF_VLSEGURO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsNotaNF_DESP_ACES: TFMTBCDField
      FieldName = 'NF_DESP_ACES'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsNotaNF_VL_DESCTO: TFMTBCDField
      FieldName = 'NF_VL_DESCTO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsNotaNF_TOT_PROD: TFMTBCDField
      FieldName = 'NF_TOT_PROD'
      Precision = 15
      Size = 2
    end
    object cdsNotaNF_TIPODOC: TStringField
      FieldName = 'NF_TIPODOC'
      OnGetText = cdsNotaNF_TIPODOCGetText
    end
    object cdsNotaNF_TIPO_FRETE: TStringField
      FieldName = 'NF_TIPO_FRETE'
      OnGetText = cdsNotaNF_TIPO_FRETEGetText
    end
    object cdsNotaOPE_NATUREZA: TStringField
      FieldName = 'OPE_NATUREZA'
      Size = 4
    end
    object cdsNotaOPE_DESCRI: TStringField
      FieldName = 'OPE_DESCRI'
      Size = 55
    end
    object cdsNotaNF_NOTANUMBER: TStringField
      FieldName = 'NF_NOTANUMBER'
      Size = 6
    end
    object cdsNotanf_entr_said: TStringField
      FieldName = 'nf_entr_said'
      OnGetText = cdsNotanf_entr_saidGetText
      Size = 10
    end
    object cdsNotaNF_EMISSAO: TDateField
      FieldName = 'NF_EMISSAO'
    end
    object cdsNotaNF_SAIDA: TDateField
      FieldName = 'NF_SAIDA'
    end
    object cdsNotaNF_MODELO_NF: TStringField
      FieldName = 'NF_MODELO_NF'
      Size = 2
    end
    object cdsNotaNF_SERIE: TStringField
      FieldName = 'NF_SERIE'
      Size = 3
    end
    object cdsNotaNF_OBSERVACAO: TBlobField
      FieldName = 'NF_OBSERVACAO'
      Size = 4000
    end
    object cdsNotaNF_PLACAVE: TStringField
      FieldName = 'NF_PLACAVE'
      Size = 8
    end
    object cdsNotaTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object cdsNotaTRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      Size = 45
    end
    object cdsNotaTRP_ENDERE: TStringField
      FieldName = 'TRP_ENDERE'
      Size = 40
    end
    object cdsNotaTRP_CIDADE: TStringField
      FieldName = 'TRP_CIDADE'
      Size = 30
    end
    object cdsNotaTRP_uf: TStringField
      FieldName = 'TRP_uf'
      Size = 2
    end
    object cdsNotaTRP_CEP: TStringField
      FieldName = 'TRP_CEP'
      Size = 8
    end
    object cdsNotaTRP_CGC: TStringField
      FieldName = 'TRP_CGC'
      OnGetText = cdsNotaTRP_CGCGetText
      Size = 14
    end
    object cdsNotaTRP_FONE: TStringField
      FieldName = 'TRP_FONE'
      Size = 11
    end
    object cdsNotaTRP_INSC: TStringField
      FieldName = 'TRP_INSC'
      Size = 14
    end
    object cdsNotaNF_CHAVE_NFE: TStringField
      FieldName = 'NF_CHAVE_NFE'
      Size = 60
    end
    object cdsNotaNF_ESPECIE: TStringField
      FieldName = 'NF_ESPECIE'
      Size = 60
    end
    object cdsNotaNF_MARCA: TStringField
      FieldName = 'NF_MARCA'
      Size = 60
    end
    object cdsNotaNF_NUMERO: TStringField
      FieldName = 'NF_NUMERO'
      Size = 10
    end
    object cdsNotaNF_QTDE: TFMTBCDField
      FieldName = 'NF_QTDE'
      Size = 2
    end
    object cdsNotaNF_PESOBRU: TFMTBCDField
      FieldName = 'NF_PESOBRU'
      Size = 2
    end
    object cdsNotaNF_PESOLIQ: TFMTBCDField
      FieldName = 'NF_PESOLIQ'
      Size = 2
    end
    object cdsNotaNF_HORASAIDA: TTimeField
      FieldName = 'NF_HORASAIDA'
    end
    object cdsNotaPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object cdsNotaREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object cdsNotaREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object cdsNotaNF_TOT_NOTA: TFMTBCDField
      FieldName = 'NF_TOT_NOTA'
      Precision = 15
      Size = 2
    end
    object cdsNotaNF_ALIQCREDSIMPLES: TFMTBCDField
      FieldName = 'NF_ALIQCREDSIMPLES'
      Precision = 15
      Size = 2
    end
    object cdsNotaNF_VLCREDSIMPLES: TFMTBCDField
      FieldName = 'NF_VLCREDSIMPLES'
      Precision = 15
      Size = 2
    end
    object cdsNotaNF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
    end
    object cdsNotaNF_DATA_AUTORIZACAO: TDateField
      FieldName = 'NF_DATA_AUTORIZACAO'
    end
    object cdsNotaNF_PROTOCOLO_NFE: TStringField
      FieldName = 'NF_PROTOCOLO_NFE'
    end
    object cdsNotaNF_VALOR_TOTAL_FCP: TFMTBCDField
      FieldName = 'NF_VALOR_TOTAL_FCP'
      Precision = 8
      Size = 15
    end
    object cdsNotaNF_VALOR_TOTAL_PARTILHA_DEST: TFMTBCDField
      FieldName = 'NF_VALOR_TOTAL_PARTILHA_DEST'
      Precision = 8
      Size = 15
    end
    object cdsNotaNF_VALOR_TOTAL_PARTILHA_ORIG: TFMTBCDField
      FieldName = 'NF_VALOR_TOTAL_PARTILHA_ORIG'
      Precision = 8
      Size = 15
    end
    object cdsNotaNF_NFSE_VLR_BASE_CALCULO: TFMTBCDField
      FieldName = 'NF_NFSE_VLR_BASE_CALCULO'
      Size = 15
    end
    object cdsNotaIBPT_VLAPROXTRIBUTOS: TFMTBCDField
      FieldName = 'IBPT_VLAPROXTRIBUTOS'
      Precision = 8
      Size = 15
    end
    object cdsNotaNF_BASE_IPI: TFMTBCDField
      FieldName = 'NF_BASE_IPI'
      Precision = 8
      Size = 15
    end
    object cdsNotaNF_NUM_NFE: TIntegerField
      FieldName = 'NF_NUM_NFE'
    end
    object cdsNotaNF_INTEGRADO: TStringField
      FieldName = 'NF_INTEGRADO'
      Size = 1
    end
    object cdsNotaNF_TIPONOTA: TStringField
      FieldName = 'NF_TIPONOTA'
      Size = 1
    end
    object cdsNotaNF_VL_DESCTO_FAT: TFMTBCDField
      FieldName = 'NF_VL_DESCTO_FAT'
      ProviderFlags = [pfInUpdate]
      Precision = 18
    end
  end
  object dspcliente: TDataSetProvider
    DataSet = qCliente
    Left = 624
    Top = 296
  end
  object qCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select pd.PRD_REFER,'
      '       it.PRDCO_CODIGO_ORIGINAL,'
      '       it.PRD_DESCRI,'
      '       it.STB_TRIBUTACAO, '
      '       it.IPI_CODIGO, '
      '       it.NF_QTDE, '
      '       it.NF_PRECO, '
      '       it.NTP_CFOP,'
      '       it.NF_ICMSALIQ, '
      '       it.NF_IPIALIQ, '
      '       it.NF_VLSUBST, '
      '       it.NF_IFRETE, '
      '       it.NF_ISEGURO, '
      '       it.NF_IDESP_ACES, '
      '       it.NF_VLPIS, '
      '       it.NF_VLCOFINS,'
      '       it.NF_CSOSN'
      'from NF_IT01 it '
      '     LEFT JOIN PRD0000 PD ON (PD.PRD_REFER = it.PRD_REFER )'
      'where it.nf_registro='#39'-0030'#39)
    SQLConnection = DBConn
    Left = 728
    Top = 222
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 785
    Top = 217
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcliente'
    OnCalcFields = CdsItemNotaCalcFields
    Left = 832
    Top = 216
    object cdsClienteCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object cdsClienteCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      OnGetText = cdsNotaTRP_CGCGetText
      Size = 18
    end
    object cdsClienteCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 70
    end
    object cdsClienteCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Size = 70
    end
    object cdsClienteCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 80
    end
    object cdsClienteCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object cdsClienteCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object cdsClienteCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 10
    end
    object cdsClienteCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 9
    end
    object cdsClienteCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      OnGetText = cdsClienteCLI_FONEGetText
      Size = 30
    end
    object cdsClienteCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 150
    end
    object cdsClienteCLI_INSC: TStringField
      FieldName = 'CLI_INSC'
      Size = 14
    end
  end
  object dspDuplicatas: TDataSetProvider
    DataSet = qDuplicatas
    Left = 704
    Top = 344
  end
  object qDuplicatas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select pd.PRD_REFER,'
      '       it.PRDCO_CODIGO_ORIGINAL,'
      '       it.PRD_DESCRI,'
      '       it.STB_TRIBUTACAO, '
      '       it.IPI_CODIGO, '
      '       it.NF_QTDE, '
      '       it.NF_PRECO, '
      '       it.NTP_CFOP,'
      '       it.NF_ICMSALIQ, '
      '       it.NF_IPIALIQ, '
      '       it.NF_VLSUBST, '
      '       it.NF_IFRETE, '
      '       it.NF_ISEGURO, '
      '       it.NF_IDESP_ACES, '
      '       it.NF_VLPIS, '
      '       it.NF_VLCOFINS,'
      '       it.NF_CSOSN'
      'from NF_IT01 it '
      '     LEFT JOIN PRD0000 PD ON (PD.PRD_REFER = it.PRD_REFER )'
      'where it.nf_registro='#39'-0030'#39)
    SQLConnection = DBConn
    Left = 736
    Top = 366
  end
  object dsDuplicatas: TDataSource
    DataSet = cdsDuplicatas
    Left = 825
    Top = 353
  end
  object cdsDuplicatas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDuplicatas'
    OnCalcFields = CdsItemNotaCalcFields
    Left = 856
    Top = 368
    object cdsDuplicatasFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Size = 6
    end
    object cdsDuplicatasFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object cdsDuplicatasFPC_VENCTO: TSQLTimeStampField
      FieldName = 'FPC_VENCTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsDuplicatasFPC_VLPARC: TFMTBCDField
      FieldName = 'FPC_VLPARC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsDuplicatasFPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      OnGetText = cdsDuplicatasFPC_COBTIPOGetText
      Size = 2
    end
    object cdsDuplicatasFPC_TIPODOC: TStringField
      FieldName = 'FPC_TIPODOC'
      OnGetText = cdsDuplicatasFPC_TIPODOCGetText
      Size = 2
    end
  end
  object qhistorico: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 141
    Top = 406
  end
  object dsHistorico: TDataSource
    DataSet = cdsHistorico
    Left = 213
    Top = 406
  end
  object cdsHistorico: TClientDataSet
    Aggregates = <>
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspHistorico'
    Left = 269
    Top = 398
    object cdsHistoricoNFH_DATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      FieldName = 'NFH_DATA'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object cdsHistoricoNFM_REGISTRO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'NFM_REGISTRO'
    end
    object cdsHistoricoNFH_DESCRICAO: TStringField
      DisplayLabel = 'Informa'#231#245'es'
      FieldName = 'NFH_DESCRICAO'
      Size = 255
    end
    object cdsHistoricoUSU_NOME: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USU_NOME'
      Size = 40
    end
  end
  object dspHistorico: TDataSetProvider
    DataSet = qhistorico
    Left = 253
    Top = 462
  end
end
