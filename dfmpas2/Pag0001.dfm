inherited FormContasPagar: TFormContasPagar
  Left = 344
  Top = 144
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Contas '#224' Pagar'
  ClientHeight = 602
  ClientWidth = 1483
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  Visible = True
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 1489
  ExplicitHeight = 627
  PixelsPerInch = 96
  TextHeight = 14
  object GrpExclusao: TGroupBox [0]
    Left = 0
    Top = 533
    Width = 1483
    Height = 34
    Align = alBottom
    TabOrder = 3
    object Label34: TLabel
      Left = 151
      Top = 11
      Width = 25
      Height = 14
      Caption = 'Data:'
    end
    object Label35: TLabel
      Left = 290
      Top = 11
      Width = 40
      Height = 14
      Caption = 'Usu'#225'rio:'
    end
    object Label36: TLabel
      Left = 645
      Top = 11
      Width = 34
      Height = 14
      Caption = 'Motivo:'
    end
    object DBCheckBox2: TDBCheckBox
      Left = 5
      Top = 9
      Width = 123
      Height = 17
      TabStop = False
      Caption = 'Registro Exclu'#237'do'
      DataField = 'PAG_EXCLUSAO'
      DataSource = DataMovimento.DsPagar
      ReadOnly = True
      TabOrder = 0
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object DBEdit1: TDBEdit
      Left = 182
      Top = 9
      Width = 99
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'PAG_DATA_EXCLUSAO'
      DataSource = DataMovimento.DsPagar
      ReadOnly = True
      TabOrder = 1
    end
    object Edt_Usu_Cod: TDBEdit
      Left = 332
      Top = 9
      Width = 40
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'USU_CODIGO'
      DataSource = DataMovimento.DsPagar
      ReadOnly = True
      TabOrder = 2
    end
    object Edt_Usu_Nome: TDBEdit
      Left = 373
      Top = 9
      Width = 255
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'USU_LOGIN'
      DataSource = DataMovimento.DsPagar
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdt_Motivo: TDBEdit
      Left = 682
      Top = 9
      Width = 271
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'PAG_MOTIVO_EXCLUSAO'
      DataSource = DataMovimento.DsPagar
      ReadOnly = True
      TabOrder = 4
    end
  end
  object PgParcelas: TPageControl [1]
    Left = 0
    Top = 195
    Width = 1483
    Height = 227
    ActivePage = TShParcelas
    Align = alClient
    TabOrder = 1
    TabStop = False
    object TShParcelas: TTabSheet
      Caption = 'Parcelas'
      object DbGridParcelas: TDBGrid
        Left = 0
        Top = 0
        Width = 1475
        Height = 149
        Align = alClient
        Color = 16776176
        DataSource = DsPagarParcGrid
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DbGridParcelasDrawColumnCell
        OnDblClick = DbGridParcelasDblClick
        OnKeyDown = DbGridParcelasKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'PPC_NUMER'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'N'#186
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PPC_VENCTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Vencto'
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
            FieldName = 'PPC_VLPARC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
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
            FieldName = 'PPC_DESCTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Desconto'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PPC_JUROS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Juros'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PPC_MULTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Multa'
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
            FieldName = 'PPC_VLPAGO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Vl.Pago'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CCPendente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Pendente'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAN_APELIDO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Conta Banco'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fpg_descricao'
            Title.Caption = 'Forma de pagamento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 122
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PPC_STATUS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PPC_SITPAG'
            Title.Alignment = taCenter
            Title.Caption = '*'
            Width = 20
            Visible = True
          end>
      end
      object PainelOpcao: TPanel
        Left = 384
        Top = 48
        Width = 225
        Height = 97
        TabOrder = 1
        Visible = False
        object BitBtn1: TBitBtn
          Left = 16
          Top = 66
          Width = 93
          Height = 25
          Cursor = crHandPoint
          Hint = 'Grava registro'
          Caption = '&OK'
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
          OnClick = BitBtn1Click
        end
        object GroupBox4: TGroupBox
          Left = 1
          Top = 1
          Width = 223
          Height = 61
          Align = alTop
          Caption = 'Op'#231#245'es'
          TabOrder = 1
          object Image6: TImage
            Left = 14
            Top = 16
            Width = 17
            Height = 17
            Picture.Data = {
              07544269746D617036030000424D360300000000000036000000280000001000
              000010000000010018000000000000030000C40E0000C40E0000000000000000
              0000A35501A35501A35501A35501A35501A35501A35501A35501A35501A35501
              A35501A35501A35501A35501A35501A35501A35501FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3
              5501A35501FFFFFFFF9933FF9933FF9933FF9933FF9933FFFFFFFFFFFFFF9933
              FF9933FF9933FF9933FF9933FFFFFFA35501A35501FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3
              5501A35501FFFFFFFF9933FF9933FF9933FF9933FF9933FFFFFFFFFFFFFF9933
              FF9933FF9933FF9933FF9933FFFFFFA35501A35501FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3
              5501A35501A35501A35501A35501A35501A35501A35501A35501A35501A35501
              A35501A35501A35501A35501A35501A35501A35501FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3
              5501A35501FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA35501A35501FFFFFFA49C94A49C94FFFF
              FFA49C94A49C94FFFFFFA49C94A49C94FFFFFFA49C94A49C94FFFFFFFFFFFFA3
              5501A35501FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA35501A35501FFFFFFC67F7FC67F7FFFFF
              FFFF9933FF9933FFFFFF2254FF2254FFFFFFFF278559278559FFFFFFFFFFFFA3
              5501A35501FFFFFFC67F7FC67F7FFFFFFFFF9933FF9933FFFFFF2254FF2254FF
              FFFFFF278559278559FFFFFFFFFFFFA35501A35501FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3
              5501A35501A35501A35501A35501A35501A35501A35501A35501A35501A35501
              A35501A35501A35501A35501A35501A35501CC6600CC6600CC6600CC6600CC66
              00CC6600CC6600CC6600CC6600CC6600CC6600CC6600CC6600CC6600CC6600CC
              6600}
          end
          object Image7: TImage
            Left = 14
            Top = 38
            Width = 17
            Height = 17
            Picture.Data = {
              07544269746D617036030000424D360300000000000036000000280000001000
              000010000000010018000000000000030000130B0000130B0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003366FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF0033660099CC003366FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00336600CCCC0099CC0099CC003366
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0033
              6600FFFF00CCCC00CCCC0099CC0099CC003366FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF00336600FFFF00FFFF00FFFF00CCCC00CCCC0099CC
              0099CC003366FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0033660033
              6600336600FFFF00CCCC0099CC003366003366003366FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00336600FFFF00CCCC0099CC003366
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000
              00000000000000000000000000000000000000000000000000FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFCC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000
              CC0000CC0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC0000FFCC66FFCC
              66FFCC66FFCC66FFCC66FF9933FF9933FF9933CC0000000000FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFCC0000FFFF99FFCC66FFCC66FFCC66FFCC66FFCC66FFCC66
              FF9933CC0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC0000FFFF99FFFF
              99FFFF99FFCC66FFCC66FFCC66FFCC66FFCC66CC0000000000FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFCC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000
              CC0000CC0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF}
          end
          object RbBaixa: TRadioButton
            Left = 40
            Top = 39
            Width = 113
            Height = 17
            Caption = 'Realizar Baixa'
            TabOrder = 0
          end
          object RbManutencao: TRadioButton
            Left = 40
            Top = 16
            Width = 113
            Height = 17
            Caption = 'Manuten'#231#227'o'
            Checked = True
            TabOrder = 1
            TabStop = True
          end
        end
        object BitBtn2: TBitBtn
          Left = 115
          Top = 66
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
          TabOrder = 2
          OnClick = BitBtn2Click
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 149
        Width = 1475
        Height = 49
        Align = alBottom
        Caption = 'Observa'#231#227'o da Parcela'
        Enabled = False
        TabOrder = 2
        object DBEdit2: TDBEdit
          Left = 8
          Top = 19
          Width = 937
          Height = 22
          Color = 14145495
          DataField = 'PPC_OBS'
          DataSource = DsPagarParcGrid
          TabOrder = 0
        end
      end
    end
    object PagLivro: TTabSheet
      Caption = 'Vls.Fiscais'
      object Label2: TLabel
        Left = 10
        Top = 44
        Width = 89
        Height = 14
        Caption = 'Tipo de Opera'#231#227'o:'
      end
      object Label3: TLabel
        Left = 43
        Top = 74
        Width = 55
        Height = 14
        Caption = 'Base ICMS:'
      end
      object Label4: TLabel
        Left = 56
        Top = 104
        Width = 41
        Height = 14
        Caption = 'Base IPI:'
      end
      object Label5: TLabel
        Left = 326
        Top = 104
        Width = 33
        Height = 14
        Caption = 'VL. IPI:'
      end
      object Label6: TLabel
        Left = 309
        Top = 74
        Width = 51
        Height = 14
        Caption = 'Aliq. ICMS:'
      end
      object Label7: TLabel
        Left = 316
        Top = 44
        Width = 45
        Height = 14
        Caption = 'NF. s'#233'rie:'
      end
      object DbChkPag_livro: TDBCheckBox
        Left = 5
        Top = 13
        Width = 112
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Lan'#231'ar no Livro:'
        DataField = 'PAG_LIVRO'
        DataSource = DataMovimento.DsPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBePag_operacao: TDBEdit
        Left = 103
        Top = 41
        Width = 33
        Height = 22
        DataField = 'PAG_OPERACAO'
        DataSource = DataMovimento.DsPagar
        TabOrder = 1
      end
      object DBePag_baseicms: TDBEdit
        Left = 103
        Top = 71
        Width = 110
        Height = 22
        DataField = 'PAG_BASEICMS'
        DataSource = DataMovimento.DsPagar
        MaxLength = 12
        TabOrder = 3
      end
      object DBePag_baseipi: TDBEdit
        Left = 103
        Top = 101
        Width = 110
        Height = 22
        DataField = 'PAG_BASEIPI'
        DataSource = DataMovimento.DsPagar
        MaxLength = 12
        TabOrder = 5
      end
      object DBePag_serie: TDBEdit
        Left = 365
        Top = 41
        Width = 35
        Height = 22
        DataField = 'PAG_SERIE'
        DataSource = DataMovimento.DsPagar
        MaxLength = 2
        TabOrder = 2
      end
      object DBePag_aliqicms: TDBEdit
        Left = 365
        Top = 71
        Width = 37
        Height = 22
        DataField = 'PAG_ALIQICMS'
        DataSource = DataMovimento.DsPagar
        MaxLength = 6
        TabOrder = 4
      end
      object DBepag_vl_ipi: TDBEdit
        Left = 365
        Top = 101
        Width = 110
        Height = 22
        DataField = 'PAG_VL_IPI'
        DataSource = DataMovimento.DsPagar
        MaxLength = 12
        TabOrder = 6
      end
    end
    object tsRateioCentroCusto: TTabSheet
      Caption = 'Rateio Centro de Custo'
      ImageIndex = 2
      object dbgrdRateio: TDBGrid
        Left = 0
        Top = 0
        Width = 1475
        Height = 165
        Align = alClient
        Color = 16776176
        DataSource = dsRateioCentroCusto
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PCX_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PCX_DESCRI'
            Title.Alignment = taCenter
            Title.Caption = 'Centro de Custo'
            Width = 472
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PCX_NIVEL'
            Title.Alignment = taCenter
            Title.Caption = 'N'#237'vel'
            Width = 139
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FIR_INDICE'
            Title.Alignment = taCenter
            Title.Caption = 'Percentual'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 165
        Width = 1475
        Height = 33
        Align = alBottom
        TabOrder = 1
        object Label15: TLabel
          Left = 745
          Top = 6
          Width = 60
          Height = 14
          Caption = 'Valor Total:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edTotRateio: TJvValidateEdit
          Left = 809
          Top = 2
          Width = 124
          Height = 22
          TabStop = False
          CriticalPoints.MaxValueIncluded = False
          CriticalPoints.MinValueIncluded = False
          DisplayFormat = dfCurrency
          DecimalPlaces = 2
          ReadOnly = True
          TabOrder = 0
          ZeroEmpty = True
        end
      end
    end
  end
  object GRP00: TGroupBox [2]
    Left = 0
    Top = 0
    Width = 1483
    Height = 145
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 82
      Top = 16
      Width = 36
      Height = 14
      Caption = 'C'#243'digo:'
    end
    object Label16: TLabel
      Left = 742
      Top = 16
      Width = 72
      Height = 14
      Caption = 'N'#186' Documento:'
    end
    object Label24: TLabel
      Left = 424
      Top = 16
      Width = 43
      Height = 14
      Caption = 'Emiss'#227'o:'
    end
    object Label11: TLabel
      Left = 4
      Top = 41
      Width = 116
      Height = 14
      Caption = 'Fornecedor/Favorecido:'
    end
    object Label12: TLabel
      Left = 62
      Top = 65
      Width = 56
      Height = 14
      Caption = 'Total da NF:'
    end
    object Label17: TLabel
      Left = 719
      Top = 40
      Width = 95
      Height = 14
      Caption = 'Tipo de Documento:'
    end
    object Label14: TLabel
      Left = 55
      Top = 115
      Width = 63
      Height = 14
      Caption = 'Observa'#231#227'o:'
    end
    object Label13: TLabel
      Left = 34
      Top = 90
      Width = 84
      Height = 14
      Caption = 'Conta Financeira:'
    end
    object LblProjCx: TLabel
      Left = 538
      Top = 90
      Width = 81
      Height = 14
      Caption = 'Centro de Custo:'
    end
    object LblRet: TLabel
      Left = 390
      Top = 65
      Width = 62
      Height = 14
      Caption = 'Vl.Reten'#231#227'o:'
    end
    object Label9: TLabel
      Left = 774
      Top = 65
      Width = 40
      Height = 14
      Caption = 'Usu'#225'rio:'
      Visible = False
    end
    object lblValorDesconto: TLabel
      Left = 216
      Top = 65
      Width = 79
      Height = 14
      Caption = 'Co-Participa'#231#227'o:'
    end
    object spdRet: TSpeedButton
      Left = 542
      Top = 61
      Width = 23
      Height = 22
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC2C2C26A6A6A6C6C6CAFB0B0E7E7E7FFFFFFFEFEFEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7E5E5E5DED6DBCFC5CCB8AFB5BBB3B8B6
        ACB2A29FA1B0B0B0CCCCCCD4D4D4DBDBDBEDEDEDFFFFFFFFFFFFFFFFFFF1F1F1
        E9DEE5CCEAD580DDA06ADA9175DE98ACEDC1EDF5EFE6DCE3D2D2D2DCDDDCCCCC
        CCBEBEBEDADADAFEFEFEFFFFFFFFFFFF9FE1B107B54000B74304B94805B84703
        B64429C15DC0EFD0FDF4FAEBEBEBE8E8E8CFCFCFCFCFCFFCFCFCFFFFFFC4EBCE
        03B33C0EBE5124C56155D18444CF7A17C25908BA4A01B138BBEBC8FFFBFFFDFD
        FDF0F0F0FEFEFEFFFFFFFFFFFF55CC7C00B8443BCC738BDFAB92DBAC92DCAD51
        D28226C7640BBA4A17B748EEFAF1FFFFFFFFFFFFFFFFFFFFFFFFF1FBF330C364
        1BC45A5BD088E3F3E977DC9F66D99590E1B059D78B23C66200B13588D99EFFFF
        FFFFFFFFFFFFFFFFFFFFE9F8ED3FC77042CE7655D48774D99DACECC6C2F3D7F1
        FEF771DE9D2AC96808BA4A3BC367FFFFFFFFFFFFFFFFFFFFFFFFFBFEFB64D28A
        54D18366DA94BDF1D3FFFEFFF7F9F7ADE8C553DA8936CD7112BE531EBD57FAFD
        FBFFFFFFFFFFFFFFFFFFFFFFFF9BE1B360D38A78DB9ECBEED7A9E6C19AE2B7B0
        EFCA6FDF9C3BCE740FBD4F26BF5BFDFEFDFFFFFFFFFFFFFFFFFFFFFFFFE8F8EC
        78D79987DFA996DFB2B5EACAB1EAC7D3EDDC7CE0A342CE7704B84560CE83FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4EDD28DDEAA9CE4B8A4E2BBB1E4C486
        DCA761D58D46CC7822BE5AD2F1DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC8EED5A1E2B7A4E6BD98E3B487DFA974D8985BCF83BAEAC9FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECF9F0C4EDD1B3E8C5AC
        E7C0ADE7C0DFF3E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = spdRetClick
    end
    object Sp_fornecedor: TSpeedButton
      Left = 569
      Top = 37
      Width = 22
      Height = 21
      Hint = 'Cadastrar/consultar Fornecedor'
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
      OnClick = Sp_fornecedorClick
    end
    object EdtPag_codigo: TEdit
      Left = 122
      Top = 13
      Width = 100
      Height = 22
      MaxLength = 5
      TabOrder = 0
      OnExit = EdtPag_codigoExit
      OnKeyPress = EdtPag_codigoKeyPress
    end
    object DbeDocumento: TDBEdit
      Left = 816
      Top = 12
      Width = 137
      Height = 22
      CharCase = ecUpperCase
      DataField = 'PAG_NUMDOC'
      DataSource = DataMovimento.DsPagar
      TabOrder = 2
      OnExit = DbeDocumentoExit
    end
    object DbeFor_codigo: TDBEdit
      Left = 122
      Top = 37
      Width = 35
      Height = 22
      DataField = 'FOR_CODIGO'
      DataSource = DataMovimento.DsPagar
      TabOrder = 3
      OnExit = DbeFor_codigoExit
      OnKeyPress = EdtPag_codigoKeyPress
    end
    object DBePag_Vlnota: TDBEdit
      Left = 122
      Top = 62
      Width = 90
      Height = 22
      DataField = 'PAG_VLNOTA'
      DataSource = DataMovimento.DsPagar
      MaxLength = 13
      TabOrder = 5
      OnEnter = DBePag_VlnotaEnter
      OnExit = DBePag_VlnotaExit
    end
    object DbePag_obs: TDBEdit
      Left = 122
      Top = 111
      Width = 831
      Height = 22
      CharCase = ecUpperCase
      DataField = 'PAG_OBS'
      DataSource = DataMovimento.DsPagar
      MaxLength = 150
      TabOrder = 12
    end
    object DBeCct_Codigo: TDBEdit
      Left = 122
      Top = 86
      Width = 35
      Height = 22
      DataField = 'CCT_CODIGO'
      DataSource = DataMovimento.DsPagar
      TabOrder = 8
      OnExit = DBeCct_CodigoExit
      OnKeyPress = EdtPag_codigoKeyPress
    end
    object DBePcx_Codigo: TDBEdit
      Left = 622
      Top = 86
      Width = 28
      Height = 22
      DataField = 'PCX_CODIGO'
      DataSource = DataMovimento.DsPagar
      TabOrder = 10
      OnExit = DBePcx_CodigoExit
      OnKeyPress = EdtPag_codigoKeyPress
    end
    object DBDtPAG_VL_RET: TDBEdit
      Left = 453
      Top = 61
      Width = 88
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'PAG_VL_RET'
      DataSource = DataMovimento.DsPagar
      ReadOnly = True
      TabOrder = 7
      OnExit = DBDtPAG_VL_RETExit
    end
    object DBEdit3: TDBEdit
      Left = 816
      Top = 61
      Width = 139
      Height = 22
      TabStop = False
      Color = 14145495
      DataField = 'USU_LOGIN'
      DataSource = DataMovimento.DsPagar
      ReadOnly = True
      TabOrder = 13
      Visible = False
      OnExit = DBDtPAG_VL_RETExit
    end
    object dbedtPAG_VALOR_N_RATEIA: TDBEdit
      Left = 299
      Top = 62
      Width = 82
      Height = 22
      DataField = 'PAG_VALOR_N_RATEIA'
      DataSource = DataMovimento.DsPagar
      MaxLength = 13
      TabOrder = 6
      OnEnter = DBePag_VlnotaEnter
      OnExit = DBePag_VlnotaExit
    end
    object CbFornecedor: TSgDbSearchCombo
      Left = 159
      Top = 37
      Width = 385
      Height = 22
      TabOrder = 4
      CharCase = ecUpperCase
      LookupSelect = 'FOR_CODIGO, FOR_RAZAO, CCT_CODIGO'
      LookupOrderBy = 'for_razao'
      LookupTable = 'for0000'
      LookupDispl = 'FOR_RAZAO'
      OnButtonClick = CbFornecedorButtonClick
      OnSelect = CbFornecedorSelect
      GridAutoSize = False
      LookupSource = qFor
      DataField = 'FOR_CODIGO'
      DataSource = DataMovimento.DsPagar
      LookupKeyField = 'for_codigo'
      ShowButton = True
      LookupTableShare = 'FORNECEDORES'
      AutoF8WinTitulo = 'Favorecidos'
      AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
      DataFieldFormat = '0000'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object CbxCtaAnalise: TSgDbSearchCombo
      Left = 159
      Top = 86
      Width = 346
      Height = 22
      TabOrder = 9
      LookupSelect = 'cct_CODIGO, CCT_DESCRI'
      LookupOrderBy = 'CCT_DESCRI'
      LookupTable = 'CCT_0000'
      LookupDispl = 'CCT_DESCRI'
      GridAutoSize = False
      LookupSource = qConta
      DataField = 'CCT_CODIGO'
      DataSource = DataMovimento.DsPagar
      LookupKeyField = 'cct_CODIGO'
      FiltroTabela = 'CCT_STATUS  = '#39'L'#39
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Contas'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      DataFieldFormat = '000'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object CbxProjCx: TSgDbSearchCombo
      Left = 653
      Top = 86
      Width = 276
      Height = 22
      TabOrder = 11
      OnChange = CbxProjCxChange
      LookupSelect = 'pcx_codigo,pcx_descri'
      LookupOrderBy = 'pcx_descri'
      LookupTable = 'pcx0000'
      LookupDispl = 'PCX_DESCRI'
      GridAutoSize = False
      LookupSource = qCCusto
      DataField = 'PCX_CODIGO'
      DataSource = DataMovimento.DsPagar
      LookupKeyField = 'pcx_codigo'
      ShowButton = True
      LookupTableShare = 'TABELAS'
      AutoF8WinTitulo = 'Centros de Custos'
      AutoF8ColumnsTitulo = 'C'#243'digo, Descri'#231#227'o'
      DataFieldFormat = '000'
      GridLeft = 0
      GridWidth = 0
      GridHeight = 100
      GridShowWhenEnter = False
      SelectWithDoubleClick = False
    end
    object CbxTipoDoc: TComboBox
      Left = 816
      Top = 37
      Width = 137
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 14
      OnClick = CbxTipoDocClick
      Items.Strings = (
        ''
        'BOLETO'
        'CHEQUE'
        'CN'
        'DARF'
        'DUPLICATA'
        'GR'
        'NOTA FISCAL'
        'RECIBO'
        'PROMISSORIA'
        'OUTROS'
        'CUPOM FISCAL')
    end
    object DbePag_DtEmis: TJvDBDateEdit
      Left = 468
      Top = 12
      Width = 100
      Height = 22
      DataField = 'PAG_DTEMIS'
      DataSource = DataMovimento.DsPagar
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
      PopupColor = clBtnFace
      ShowNullDate = False
      YearDigits = dyFour
      TabOrder = 1
      OnExit = DbePag_DtEmisExit
    end
  end
  object Pn_Botoes: TPanel [3]
    Left = 0
    Top = 567
    Width = 1483
    Height = 35
    Cursor = crHandPoint
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    DragCursor = crDefault
    TabOrder = 4
    object Bit_Cancelar: TBitBtn
      Left = 865
      Top = 5
      Width = 90
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
      TabOrder = 3
      TabStop = False
      Visible = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 867
      Top = 5
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Cancel = True
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
      TabOrder = 4
      OnClick = Bit_SairClick
    end
    object Bit_novo: TBitBtn
      Left = 596
      Top = 5
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      DragCursor = crDefault
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      TabOrder = 0
      OnClick = Bit_novoClick
    end
    object Bit_Excluir: TBitBtn
      Left = 686
      Top = 5
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
      TabOrder = 1
      OnClick = Bit_ExcluirClick
    end
    object Bit_Gravar: TBitBtn
      Left = 776
      Top = 5
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
      TabOrder = 2
      OnClick = Bit_GravarClick
    end
    object Bit_Lista: TBitBtn
      Left = 1
      Top = 5
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cons&ulta'
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
      TabOrder = 5
      OnClick = Bit_ListaClick
    end
    object Bit_Relatorio: TBitBtn
      Left = 95
      Top = 5
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = '&Relat'#243'rios'
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
      TabOrder = 6
      OnClick = Bit_RelatorioClick
    end
    object BitPagamentos: TBitBtn
      Left = 186
      Top = 5
      Width = 100
      Height = 25
      Caption = 'Pagamentos'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003366FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00336600
        99CC003366FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00336600CCCC0099CC0099CC003366FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00336600FFFF00CCCC00
        CCCC0099CC0099CC003366FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF00336600FFFF00FFFF00FFFF00CCCC00CCCC0099CC0099CC003366FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00336600336600336600FFFF00
        CCCC0099CC003366003366003366FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00336600FFFF00CCCC0099CC003366FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC00000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC0000FFCC66FFCC66FFCC66FFCC66FF
        CC66FF9933FF9933FF9933CC0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CC0000FFFF99FFCC66FFCC66FFCC66FFCC66FFCC66FFCC66FF9933CC00000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC0000FFFF99FFFF99FFFF99FFCC66FF
        CC66FFCC66FFCC66FFCC66CC0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 7
      OnClick = BitPagamentosClick
    end
    object BitRepetir: TBitBtn
      Left = 288
      Top = 5
      Width = 100
      Height = 25
      Caption = 'Repetir'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000A35501A35501
        A35501A35501A35501A35501A35501A35501A35501A35501A35501A35501A355
        01A35501A35501A35501A35501FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA35501A35501FFFFFF
        FF9933FF9933FF9933FF9933FF9933FFFFFFFFFFFFFF9933FF9933FF9933FF99
        33FF9933FFFFFFA35501A35501FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA35501A35501FFFFFF
        FF9933FF9933FF9933FF9933FF9933FFFFFFFFFFFFFF9933FF9933FF9933FF99
        33FF9933FFFFFFA35501A35501FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA35501A35501A35501
        A35501A35501A35501A35501A35501A35501A35501A35501A35501A35501A355
        01A35501A35501A35501A35501FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA35501A35501FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFA35501A35501FFFFFFA49C94A49C94FFFFFFA49C94A49C94FF
        FFFFA49C94A49C94FFFFFFA49C94A49C94FFFFFFFFFFFFA35501A35501FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFA35501A35501FFFFFFC67F7FC67F7FFFFFFFFF9933FF9933FF
        FFFF2254FF2254FFFFFFFF278559278559FFFFFFFFFFFFA35501A35501FFFFFF
        C67F7FC67F7FFFFFFFFF9933FF9933FFFFFF2254FF2254FFFFFFFF2785592785
        59FFFFFFFFFFFFA35501A35501FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA35501A35501A35501
        A35501A35501A35501A35501A35501A35501A35501A35501A35501A35501A355
        01A35501A35501A35501CC6600CC6600CC6600CC6600CC6600CC6600CC6600CC
        6600CC6600CC6600CC6600CC6600CC6600CC6600CC6600CC6600}
      TabOrder = 8
      OnClick = BitRepetirClick
    end
    object btnRateioManual: TBitBtn
      Left = 389
      Top = 5
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Consulta'
      Caption = 'Rateio Manual'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      TabStop = False
      OnClick = btnRateioManualClick
    end
    object btnRateioColaborador: TBitBtn
      Left = 490
      Top = 5
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = 'Consulta'
      Caption = 'Rateio Colab.'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      TabStop = False
      OnClick = btnRateioColaboradorClick
    end
  end
  object GroupBox1: TGroupBox [4]
    Left = 0
    Top = 422
    Width = 1483
    Height = 111
    Align = alBottom
    Caption = 
      'Pagamento - Para estornar o pagamento pressione o bot'#227'o direito ' +
      'do mouse'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 16
      Width = 1479
      Height = 93
      Align = alClient
      Color = 16776176
      DataSource = DsPagamentos
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      ShowHint = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PAG_DATA_PAGAMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Pagamento'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAG_VALOR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
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
          FieldName = 'PAG_DESCONTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Desconto'
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
          FieldName = 'PAG_JUROS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Juros'
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
          FieldName = 'PAG_MULTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Multa'
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
          FieldName = 'PAG_PAGO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Vl.Pago'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAN_RAZAO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Conta Banco'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FPG_DESCRICAO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Forma Pagamento'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 129
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAG_OBSERVACAO'
          Title.Caption = 'Observa'#231#245'es'
          Width = 113
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USU_NOME'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Usu'#225'rio'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 122
          Visible = True
        end>
    end
  end
  object Panel1: TPanel [5]
    Left = 0
    Top = 145
    Width = 1483
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    object GRP01: TGroupBox
      Left = 0
      Top = -1
      Width = 569
      Height = 48
      Caption = 'Informar Parcelamento'
      TabOrder = 0
      object PnParcelas: TPanel
        Left = 123
        Top = 15
        Width = 115
        Height = 30
        Cursor = crHandPoint
        TabOrder = 1
        object SpinParcelas: TSpinEdit
          Left = 8
          Top = 4
          Width = 38
          Height = 23
          Cursor = crHandPoint
          MaxLength = 2
          MaxValue = 60
          MinValue = 1
          TabOrder = 0
          Value = 1
          OnExit = SpinParcelasExit
        end
        object BtnOkParcelas: TButton
          Left = 56
          Top = 3
          Width = 53
          Height = 25
          Cursor = crHandPoint
          Caption = '&OK'
          TabOrder = 1
          OnClick = BtnOkParcelasClick
          OnKeyPress = BtnOkParcelasKeyPress
        end
      end
      object BitParcelar: TBitBtn
        Left = 4
        Top = 15
        Width = 117
        Height = 30
        Cursor = crHandPoint
        Caption = '&Parcelar'
        Glyph.Data = {
          72040000424D7204000000000000760000002800000072000000110000000100
          040000000000FC030000CE0E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888888888888888888888888888888888888888888888888888
          8888888888888888888888888888888888888800000088888877700000000000
          0000000000000000000000000000000888888888888888888888888888888888
          888888888888888888888888888888000000888999777777EEEEEEEEEEEEEEEE
          EEEEEEEEEEEEEEEEEEEE00077788888888888888888888888888888888888888
          8888888888888888888888000000777999999777777EEEEEEEEEEEEEEEEEEEEE
          EEEEEEEEEEEE0007778888888888888888888888888888888888888888888888
          88888888888888000000999999999999777777E5EEEEEE5EEEEEE5EEEEEEEEEE
          EEEE000777888888888888888888888888888888888888888888888888888888
          888888000000999999999999999EEEE5EEEEEE5EEEEEE5EEEEEEEEEEEEEE0007
          7788888888888888888888888888888888888888888888888888888888888800
          0000999999999999EE5555E5E5555E5E555EE5EEE55EE5E5E5EE000777888888
          8888888888888888888888888888888888888888888888888888880000008889
          99999EEEEEE55EEEEE5EEEEE5E55EEE55555EEEEEEEE00077788888888888888
          8888888888888888888888888888888888888888888888000000888999000EEE
          EEE55EEEEE55EEEEEE55EEE5E55EEEEEEEEE0007778888888888888888888888
          88888888888888888888888888888888888888000000888888000EEEEEE55EEE
          EEE5EEEEE55EEEEE555EEEEEEEEE000777888888888888888888888888888888
          888888888888888888888888888888000000888888000EEEEEE55EEEEEE55EEE
          EE55EEEEE55EEEEEEEEE00077788888888888888888888888888888888888888
          8888888888888888888888000000888888000EEEEEE55EEEE5E55EEE5E55EEEE
          E55EEEEEEEEE0007778888888888888888888888888888888888888888888888
          88888888888888000000888888000EEEEE555EEEEE55EEEEE55EEEEEEE5EEEEE
          EEEE000777888888888888888888888888888888888888888888888888888888
          888888000000888888000EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE0007
          7788888888888888888888888888888888888888888888888888888888888800
          0000888888000EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE000777888888
          8888888888888888888888888888888888888888888888888888880000008888
          8800000000000000000000000000000000000000000000088888888888888888
          8888888888888888888888888888888888888888888888000000888888888888
          8888888888888888888888888888888888888888888888888888888888888888
          88888888888888888888888888888888888888000000}
        Layout = blGlyphRight
        Margin = 0
        NumGlyphs = 2
        TabOrder = 0
        TabStop = False
        OnClick = BitParcelarClick
      end
      object DBChk_Previsao: TDBCheckBox
        Left = 254
        Top = 20
        Width = 72
        Height = 17
        Caption = 'Pre&vis'#227'o'
        DataField = 'PAG_PREVISAO'
        DataSource = DataMovimento.DsPagar
        TabOrder = 2
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox1: TDBCheckBox
        Left = 326
        Top = 20
        Width = 72
        Height = 17
        Caption = 'Reembolso'
        DataField = 'PAG_REEMBOLSO'
        DataSource = DataMovimento.DsPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object GroupBox2: TGroupBox
      Left = 572
      Top = -1
      Width = 390
      Height = 44
      Caption = 'Status'
      TabOrder = 1
      object Image1: TImage
        Left = 14
        Top = 17
        Width = 16
        Height = 16
        Center = True
        Picture.Data = {
          07544269746D6170AA040000424DAA0400000000000036000000280000001400
          000013000000010018000000000074040000C40E0000C40E0000000000000000
          0000FFFFFFD8EBD89ACD9A72B97272B97272B97272B97272B97272B97272B972
          72B97272B97272B97272B97272B97272B97272B9729ACD9AD8EBD8FFFFFFD8EC
          D80A850A00800000800000800000800000800000800000800000800000800000
          80000080000080000080000080000080000080000A850AD8ECD896CB96008000
          0080000080000080000080000080000080000080000080000080000080000080
          0000800000800000800000800000800000800092C99277BB7704820407840708
          84080985090A850A0B850B0B860B0B860B0B860B0B860B0B850B0A850A0A850A
          09840908840806830604820402810272B9727CBE7C168B16188C18198C191A8D
          1A1B8D1B1B8E1B1C8E1C1C8E1C1C8E1C1C8E1C1C8E1C1B8E1B1A8D1A198D1919
          8C19178B17158A15148A1475BA7586C2862693262894282995292A952A2C962C
          2C962C2D962D2D962D2E972E2D962D2D962D2C962C2B952B2A952A2994292794
          272593252392237BBD7B8BC58B349A34379B37399C393A9D3A3C9E3C3D9E3D3E
          9F3E3E9F3E3E9F3E3E9F3E3E9F3E3D9E3D3C9E3C3A9D3A389C38369B36349A34
          32993280C08090C79042A14245A24548A4484AA54A4CA64C4DA74D4EA74E4FA8
          4F4FA84F4FA84F4EA74E4DA74D4CA64C4AA54A48A44846A34643A14340A04083
          C18395CA954EA74E51A95155AA5558AC585BAD5B5DAE5D5FAF5F60B06061B061
          60B0605FAF5F5EAF5E5CAE5C59AC5956AB5653A9534FA84F4BA64B85C28598CC
          9855AA555AAD5A5EAF5E62B16266B3666AB56A6DB66D70B87071B87171B8716F
          B76F6CB66C68B46864B26461B0615CAE5C58AC5853AA5388C48898CC9856AB56
          5BAD5B5FAF5F64B26468B4686CB66C71B87175BA7577BB7777BB7774BA7470B8
          706CB66C67B46763B1635EAF5E5AAD5A55AA5589C48996CA9650A85054AA5458
          AC585BAD5B5FAF5F61B06164B26465B36566B36666B36665B36564B26462B162
          5FAF5F5BAD5B58AC5854AA5450A85087C38791C89145A24548A4484BA54B4EA7
          4E50A85052A95254AA5455AA5555AA5555AA5555AA5554AA5453A95351A8514E
          A74E4CA64C49A44946A34685C3858CC58C389C383A9D3A3D9E3D3F9F3F41A041
          42A14243A14344A24445A24545A24544A24444A24443A14341A04140A0403E9F
          3E3B9E3B399C3981C08186C2862995292B952B2D962D2F972F30983032993232
          9932339933339A33339A33339A333399333299323198313098302E972E2D962D
          2B952B7DBF7D7FBF7F198D191B8E1B1D8E1D1E8F1E2090202190212191212291
          222291222291222291222291222191212190211F901F1E8F1E1D8E1D1B8E1B77
          BC7799CD990985090B860B0D860D0E870E0F880F108810118811118911118911
          1289121189111189111188111088100F880F0E870E0D860D0A850A94C994DBED
          DB0D860D00800000800000800000800000800000800000800000800000800000
          80000080000080000080000080000080000080000D860DDBEDDBFFFFFFDBEDDB
          9BCD9B72B97272B97272B97272B97272B97272B97272B97272B97272B97272B9
          7272B97272B97272B97272B9729BCD9BDBEDDBFFFFFF}
        Stretch = True
      end
      object Label38: TLabel
        Left = 32
        Top = 19
        Width = 45
        Height = 14
        Caption = 'Pendente'
      end
      object Image4: TImage
        Left = 91
        Top = 17
        Width = 16
        Height = 16
        Center = True
        Picture.Data = {
          07544269746D6170AA040000424DAA0400000000000036000000280000001400
          000013000000010018000000000074040000C40E0000C40E0000000000000000
          0000FFFFFFD8F2F89ADDEE72D0E772D0E872D0E872D0E872D0E872D0E872D0E8
          72D0E872D0E872D0E872D0E872D0E872D0E872D0E79ADDEED8F2F8FFFFFFD8F2
          F80AADD600AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400
          AAD400AAD400AAD400AAD400AAD400AAD400AAD40AADD6D8F2F896DCED00AAD4
          00AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AA
          D400AAD400AAD400AAD400AAD400AAD400AAD492DAEC77D2E804ABD507ACD508
          ADD509ADD60AADD60BAED60BAED60BAED60BAED60BAED60BAED60AADD60AADD6
          09ADD508ADD506ACD504ABD502ABD472D0E87CD4E916B1D818B2D819B2D81AB3
          D81BB3D91BB3D91CB3D91CB3D91CB3D91CB3D91CB3D91BB3D91AB3D819B2D819
          B2D817B2D815B1D814B1D775D1E986D7EB26B7DA28B7DB29B8DB2AB8DB2CB9DB
          2CB9DB2DB9DC2DB9DC2EB9DC2DB9DC2DB9DC2CB9DB2BB8DB2AB8DB29B8DB27B7
          DB25B6DA23B6DA7BD3E98BD8EB34BBDD37BCDD39BDDE3ABDDE3CBEDE3DBEDE3E
          BFDE3EBFDE3EBFDE3EBFDE3EBFDE3DBEDE3CBEDE3ABDDE38BDDE36BCDD34BBDD
          32BBDC80D5EB90DAEC42C0DF45C1E048C2E04AC3E04CC3E14DC4E14EC4E14FC4
          E14FC4E14FC4E14EC4E14DC4E14CC3E14AC3E048C2E046C1E043C0DF40BFDF83
          D6EB95DCED4EC4E151C5E255C6E258C7E35BC8E35DC9E45FCAE460CAE461CAE4
          60CAE45FCAE45EC9E45CC9E359C8E356C7E253C6E24FC4E14BC3E185D6EB98DD
          EE55C6E25AC8E35EC9E462CBE566CCE56ACDE66DCEE670CFE771D0E771D0E76F
          CFE76CCEE668CDE664CBE561CAE45CC9E458C7E353C6E288D7EC98DDEE56C7E2
          5BC8E35FCAE464CBE568CDE66CCEE671D0E775D1E877D2E877D2E874D1E870CF
          E76CCEE667CCE563CBE55EC9E45AC8E355C6E289D8EC96DCED50C5E154C6E258
          C7E35BC8E35FCAE461CAE464CBE565CCE566CCE566CCE565CCE564CBE562CBE4
          5FCAE45BC8E358C7E354C6E250C5E187D7EB91DBEC45C1E048C2E04BC3E14EC4
          E150C5E252C5E254C6E255C6E255C6E255C6E255C6E254C6E253C6E251C5E24E
          C4E14CC3E149C2E046C1E085D7EB8CD9EB38BDDD3ABDDE3DBEDE3FBFDF41C0DF
          42C0DF43C0DF44C1DF45C1E045C1E044C1DF44C1DF43C0DF41C0DF40BFDF3EBF
          DE3BBEDE39BDDE81D5EA86D7EA29B8DB2BB8DB2DB9DC2FBADC30BADC32BBDC32
          BBDD33BBDD33BBDD33BBDD33BBDD33BBDD32BBDC31BADC30BADC2EB9DC2DB9DC
          2BB8DB7DD4EA7FD4E919B2D81BB3D91DB4D91EB4D920B5D921B5DA21B5DA22B5
          DA22B5DA22B5DA22B5DA22B5DA21B5DA21B5DA1FB4D91EB4D91DB4D91BB3D977
          D2E999DEEE09ADD60BAED60DAED60EAFD60FAFD710AFD711B0D711B0D711B0D7
          12B0D711B0D711B0D711B0D710AFD70FAFD70EAFD60DAED60AADD694DBEDDBF3
          F90DAED600AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400
          AAD400AAD400AAD400AAD400AAD400AAD400AAD40DAED6DBF3F9FFFFFFDBF3F9
          9BDEEF72D0E772D0E872D0E872D0E872D0E872D0E872D0E872D0E872D0E872D0
          E872D0E872D0E872D0E872D0E79BDEEFDBF3F9FFFFFF}
        Stretch = True
      end
      object Label41: TLabel
        Left = 112
        Top = 19
        Width = 32
        Height = 14
        Caption = 'Parcial'
      end
      object Image2: TImage
        Left = 163
        Top = 17
        Width = 16
        Height = 16
        Center = True
        Picture.Data = {
          07544269746D6170AA040000424DAA0400000000000036000000280000001400
          000013000000010018000000000074040000C40E0000C40E0000000000000000
          0000FFFFFFF2E2D8DDB59AD09772D09872D09872D09872D09872D09872D09872
          D09872D09872D09872D09872D09872D09872D09772DDB59AF2E2D8FFFFFFF2E3
          D8AD4B0AAA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA
          4400AA4400AA4400AA4400AA4400AA4400AA4400AD4B0AF2E2D8DCB296AA4400
          AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA44
          00AA4400AA4400AA4400AA4400AA4400AA4400DAAF92D29B77AB4704AC4907AD
          4A08AD4B09AD4C0AAE4C0BAE4C0BAE4C0BAE4C0BAE4C0BAE4C0BAD4C0AAD4B0A
          AD4A09AD4A08AC4906AB4704AB4502D09872D49F7CB15416B25518B25619B357
          1AB3581BB3581BB3581CB3591CB3591CB3591CB3581CB3581BB3571AB25719B2
          5619B25517B15315B15214D19A75D7A686B76026B76128B86229B8632AB9642C
          B9642CB9652DB9652DB9652EB9652DB9652DB9642CB8642BB8632AB86229B761
          27B65F25B65E23D39E7BD8A98BBB6A34BC6C37BD6E39BD6F3ABE703CBE713DBF
          713EBF723EBF723EBF723EBF713EBE713DBE703CBD6F3ABD6D38BC6C36BB6A34
          BB6932D5A280DAAD90C07542C17745C27848C37A4AC37C4CC47D4DC47E4EC47E
          4FC47E4FC47E4FC47E4EC47D4DC37C4CC37A4AC27948C17746C07543BF7340D6
          A483DCB195C47D4EC58051C68255C78458C8875BC9885DCA895FCA8A60CA8B61
          CA8A60CA8A5FC9895EC9875CC88559C78356C68153C47E4FC37B4BD6A685DDB3
          98C68355C8865AC9895ECB8C62CC8F66CD926ACE946DCF9670D09771D09771CF
          966FCE936CCD9168CB8E64CA8B61C9885CC78458C68153D7A888DDB398C78356
          C8875BCA8A5FCB8D64CD9068CE936CD09771D19A75D29B77D29B77D19974CF96
          70CE936CCC9067CB8D63C9895EC8865AC68355D8A989DCB196C57F50C68154C7
          8458C8875BCA895FCA8B61CB8D64CC8E65CC8F66CC8F66CC8E65CB8D64CB8C62
          CA895FC8875BC78458C68154C57F50D7A787DBAE91C17745C27948C37B4BC47D
          4EC57F50C58052C68154C68255C68355C68355C68255C68154C68153C57F51C4
          7E4EC37C4CC27A49C17746D7A685D9AA8CBD6D38BD6F3ABE713DBF723FC07341
          C07542C07543C17644C17645C17645C17644C17644C07543C07441BF7340BF71
          3EBE6F3BBD6E39D5A381D7A686B86229B8642BB9652DBA662FBA6730BB6832BB
          6932BB6933BB6A33BB6A33BB6A33BB6933BB6932BA6831BA6730B9662EB9652D
          B8632BD4A07DD4A17FB25719B3581BB4591DB45A1EB55B20B55C21B55C21B55D
          22B55D22B55D22B55D22B55D22B55C21B55C21B45B1FB45A1EB4591DB3581BD2
          9C77DEB599AD4B09AE4C0BAE4D0DAF4E0EAF4F0FAF5010B05011B05111B05111
          B05112B05111B05111B05011AF5010AF4F0FAF4E0EAE4D0DAD4B0ADBB194F3E5
          DBAE4E0DAA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA4400AA
          4400AA4400AA4400AA4400AA4400AA4400AA4400AE4E0DF3E4DBFFFFFFF3E5DB
          DEB69BD09772D09872D09872D09872D09872D09872D09872D09872D09872D098
          72D09872D09872D09872D09772DEB69BF3E5DBFFFFFF}
        Stretch = True
      end
      object Label39: TLabel
        Left = 184
        Top = 19
        Width = 46
        Height = 14
        Caption = 'Liquidado'
      end
      object Image3: TImage
        Left = 243
        Top = 17
        Width = 16
        Height = 16
        Center = True
        Picture.Data = {
          07544269746D6170AA040000424DAA0400000000000036000000280000001400
          000013000000010018000000000074040000C40E0000C40E0000000000000000
          0000FFFFFFD8D8F29A9ADD7272D07272D07272D07272D07272D07272D07272D0
          7272D07272D07272D07272D07272D07272D07272D09A9ADDD8D8F2FFFFFFD8D8
          F20A0AAD0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA00
          00AA0000AA0000AA0000AA0000AA0000AA0000AA0A0AADD8D8F29696DC0000AA
          0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000
          AA0000AA0000AA0000AA0000AA0000AA0000AA9292DA7777D20404AB0707AC08
          08AD0909AD0A0AAD0B0BAE0B0BAE0B0BAE0B0BAE0B0BAE0B0BAE0A0AAD0A0AAD
          0909AD0808AD0606AC0404AB0202AB7272D07C7CD41616B11818B21919B21A1A
          B31B1BB31B1BB31C1CB31C1CB31C1CB31C1CB31C1CB31B1BB31A1AB31919B219
          19B21717B21515B11414B17575D18686D72626B72828B72929B82A2AB82C2CB9
          2C2CB92D2DB92D2DB92E2EB92D2DB92D2DB92C2CB92B2BB82A2AB82929B82727
          B72525B62323B67B7BD38B8BD83434BB3737BC3939BD3A3ABD3C3CBE3D3DBE3E
          3EBF3E3EBF3E3EBF3E3EBF3E3EBF3D3DBE3C3CBE3A3ABD3838BD3636BC3434BB
          3232BB8080D59090DA4242C04545C14848C24A4AC34C4CC34D4DC44E4EC44F4F
          C44F4FC44F4FC44E4EC44D4DC44C4CC34A4AC34848C24646C14343C04040BF83
          83D69595DC4E4EC45151C55555C65858C75B5BC85D5DC95F5FCA6060CA6161CA
          6060CA5F5FCA5E5EC95C5CC95959C85656C75353C64F4FC44B4BC38585D69898
          DD5555C65A5AC85E5EC96262CB6666CC6A6ACD6D6DCE7070CF7171D07171D06F
          6FCF6C6CCE6868CD6464CB6161CA5C5CC95858C75353C68888D79898DD5656C7
          5B5BC85F5FCA6464CB6868CD6C6CCE7171D07575D17777D27777D27474D17070
          CF6C6CCE6767CC6363CB5E5EC95A5AC85555C68989D89696DC5050C55454C658
          58C75B5BC85F5FCA6161CA6464CB6565CC6666CC6666CC6565CC6464CB6262CB
          5F5FCA5B5BC85858C75454C65050C58787D79191DB4545C14848C24B4BC34E4E
          C45050C55252C55454C65555C65555C65555C65555C65454C65353C65151C54E
          4EC44C4CC34949C24646C18585D78C8CD93838BD3A3ABD3D3DBE3F3FBF4141C0
          4242C04343C04444C14545C14545C14444C14444C14343C04141C04040BF3E3E
          BF3B3BBE3939BD8181D58686D72929B82B2BB82D2DB92F2FBA3030BA3232BB32
          32BB3333BB3333BB3333BB3333BB3333BB3232BB3131BA3030BA2E2EB92D2DB9
          2B2BB87D7DD47F7FD41919B21B1BB31D1DB41E1EB42020B52121B52121B52222
          B52222B52222B52222B52222B52121B52121B51F1FB41E1EB41D1DB41B1BB377
          77D29999DE0909AD0B0BAE0D0DAE0E0EAF0F0FAF1010AF1111B01111B01111B0
          1212B01111B01111B01111B01010AF0F0FAF0E0EAF0D0DAE0A0AAD9494DBDBDB
          F30D0DAE0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA00
          00AA0000AA0000AA0000AA0000AA0000AA0000AA0D0DAEDBDBF3FFFFFFDBDBF3
          9B9BDE7272D07272D07272D07272D07272D07272D07272D07272D07272D07272
          D07272D07272D07272D07272D09B9BDEDBDBF3FFFFFF}
        Stretch = True
      end
      object Label40: TLabel
        Left = 264
        Top = 19
        Width = 39
        Height = 14
        Caption = 'Vencida'
      end
      object Image5: TImage
        Left = 315
        Top = 17
        Width = 16
        Height = 16
        Center = True
        Picture.Data = {
          07544269746D6170AA040000424DAA0400000000000036000000280000001400
          000013000000010018000000000074040000C40E0000C40E0000000000000000
          0000FFFFFFD8D8D89A9A9A727272727272727272727272727272727272727272
          7272727272727272727272727272727272727272729A9A9AD8D8D8FFFFFFD8D8
          D80A0A0A00000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000A0A0AD8D8D8969696000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000092929277777704040407070708
          08080909090A0A0A0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0A0A0A0A0A0A
          0909090808080606060404040202027272727C7C7C1616161818181919191A1A
          1A1B1B1B1B1B1B1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1B1B1B1A1A1A19191919
          19191717171515151414147575758686862626262828282929292A2A2A2C2C2C
          2C2C2C2D2D2D2D2D2D2E2E2E2D2D2D2D2D2D2C2C2C2B2B2B2A2A2A2929292727
          272525252323237B7B7B8B8B8B3434343737373939393A3A3A3C3C3C3D3D3D3E
          3E3E3E3E3E3E3E3E3E3E3E3E3E3E3D3D3D3C3C3C3A3A3A383838363636343434
          3232328080809090904242424545454848484A4A4A4C4C4C4D4D4D4E4E4E4F4F
          4F4F4F4F4F4F4F4E4E4E4D4D4D4C4C4C4A4A4A48484846464643434340404083
          83839595954E4E4E5151515555555858585B5B5B5D5D5D5F5F5F606060616161
          6060605F5F5F5E5E5E5C5C5C5959595656565353534F4F4F4B4B4B8585859898
          985555555A5A5A5E5E5E6262626666666A6A6A6D6D6D7070707171717171716F
          6F6F6C6C6C6868686464646161615C5C5C585858535353888888989898565656
          5B5B5B5F5F5F6464646868686C6C6C7171717575757777777777777474747070
          706C6C6C6767676363635E5E5E5A5A5A55555589898996969650505054545458
          58585B5B5B5F5F5F616161646464656565666666666666656565646464626262
          5F5F5F5B5B5B5858585454545050508787879191914545454848484B4B4B4E4E
          4E5050505252525454545555555555555555555555555454545353535151514E
          4E4E4C4C4C4949494646468585858C8C8C3838383A3A3A3D3D3D3F3F3F414141
          4242424343434444444545454545454444444444444343434141414040403E3E
          3E3B3B3B3939398181818686862929292B2B2B2D2D2D2F2F2F30303032323232
          32323333333333333333333333333333333232323131313030302E2E2E2D2D2D
          2B2B2B7D7D7D7F7F7F1919191B1B1B1D1D1D1E1E1E2020202121212121212222
          222222222222222222222222222121212121211F1F1F1E1E1E1D1D1D1B1B1B77
          77779999990909090B0B0B0D0D0D0E0E0E0F0F0F101010111111111111111111
          1212121111111111111111111010100F0F0F0E0E0E0D0D0D0A0A0A949494DBDB
          DB0D0D0D00000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000D0D0DDBDBDBFFFFFFDBDBDB
          9B9B9B7272727272727272727272727272727272727272727272727272727272
          727272727272727272727272729B9B9BDBDBDBFFFFFF}
        Stretch = True
      end
      object Label42: TLabel
        Left = 336
        Top = 19
        Width = 42
        Height = 14
        Caption = 'Previs'#227'o'
        Color = clBtnFace
        ParentColor = False
      end
    end
  end
  object PanVaria: TPanel [6]
    Left = 1015
    Top = 64
    Width = 426
    Height = 290
    TabOrder = 6
    Visible = False
    object Panel4: TPanel
      Left = 3
      Top = 2
      Width = 414
      Height = 21
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = 'Reten'#231#245'es'
      Color = 8404992
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object SpeedButton5: TSpeedButton
        Left = 393
        Top = 2
        Width = 20
        Height = 18
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton5Click
      end
    end
    object GroupBox3: TGroupBox
      Left = 2
      Top = 29
      Width = 416
      Height = 257
      Caption = 'Valores Retidos:'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object Label22: TLabel
        Left = 70
        Top = 67
        Width = 43
        Height = 14
        Caption = 'Perc.(%)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 13
        Top = 47
        Width = 54
        Height = 14
        Caption = 'Base INSS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 21
        Top = 24
        Width = 47
        Height = 14
        Caption = 'Base ISS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 42
        Top = 86
        Width = 23
        Height = 14
        Caption = 'IRPJ:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 48
        Top = 111
        Width = 18
        Height = 14
        Caption = 'PIS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 126
        Top = 67
        Width = 58
        Height = 14
        Caption = 'Valor Retido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 26
        Top = 134
        Width = 40
        Height = 14
        Caption = 'COFINS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 8
        Top = 159
        Width = 60
        Height = 14
        Caption = 'Contr.Social:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label31: TLabel
        Left = 40
        Top = 183
        Width = 26
        Height = 14
        Caption = 'INSS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label30: TLabel
        Left = 32
        Top = 231
        Width = 89
        Height = 14
        Caption = 'Total de Reten'#231#227'o:'
      end
      object Label8: TLabel
        Left = 48
        Top = 207
        Width = 19
        Height = 14
        Caption = 'ISS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBEdt_BASE_ISS: TDBEdit
        Left = 70
        Top = 20
        Width = 90
        Height = 22
        DataField = 'PAG_BASE_ISS'
        DataSource = DataMovimento.DsPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnExit = DBEdt_BASE_ISSExit
      end
      object DBedt_BASE_INSS: TDBEdit
        Left = 70
        Top = 42
        Width = 90
        Height = 22
        DataField = 'PAG_BASE_INSS'
        DataSource = DataMovimento.DsPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnExit = DBedt_BASE_INSSExit
      end
      object DBEdt_IRPJ_PERC: TDBEdit
        Left = 70
        Top = 83
        Width = 50
        Height = 22
        DataField = 'PAG_IRPJ_PERC'
        DataSource = DataMovimento.DsPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdt_PIS_PERC: TDBEdit
        Left = 70
        Top = 107
        Width = 50
        Height = 22
        DataField = 'PAG_PIS_PERC'
        DataSource = DataMovimento.DsPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdt_COFINS_PER: TDBEdit
        Left = 70
        Top = 131
        Width = 50
        Height = 22
        DataField = 'PAG_COFINS_PERC'
        DataSource = DataMovimento.DsPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdt_CONTSOCIAL_PERC: TDBEdit
        Left = 70
        Top = 155
        Width = 50
        Height = 22
        DataField = 'PAG_CONTSOCIAL_PERC'
        DataSource = DataMovimento.DsPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdt_IRPJ_RET: TDBEdit
        Left = 126
        Top = 83
        Width = 90
        Height = 22
        TabStop = False
        Color = 14145495
        DataField = 'PAG_IRPJ_RET'
        DataSource = DataMovimento.DsPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object DBEdt_PIS_RET: TDBEdit
        Left = 126
        Top = 107
        Width = 90
        Height = 22
        TabStop = False
        Color = 14145495
        DataField = 'PAG_PIS_RET'
        DataSource = DataMovimento.DsPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object DBEdt_COFINS_RET: TDBEdit
        Left = 126
        Top = 131
        Width = 90
        Height = 22
        TabStop = False
        Color = 14145495
        DataField = 'PAG_COFINS_RET'
        DataSource = DataMovimento.DsPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
      end
      object DBEdt_CONTSOCIAL_RET: TDBEdit
        Left = 126
        Top = 155
        Width = 90
        Height = 22
        TabStop = False
        Color = 14145495
        DataField = 'PAG_CONTSOCIAL_RET'
        DataSource = DataMovimento.DsPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
      end
      object DBEdt_INSS_PERC: TDBEdit
        Left = 70
        Top = 179
        Width = 50
        Height = 22
        DataField = 'PAG_INSS_PERC'
        DataSource = DataMovimento.DsPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdt_INSS_RET: TDBEdit
        Left = 126
        Top = 179
        Width = 90
        Height = 22
        TabStop = False
        Color = 14145495
        DataField = 'PAG_INSS_RET'
        DataSource = DataMovimento.DsPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
      end
      object DbePAG_VL_RET: TDBEdit
        Left = 126
        Top = 227
        Width = 90
        Height = 22
        TabStop = False
        Color = 14145495
        DataField = 'PAG_VL_RET'
        DataSource = DataMovimento.DsPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
      end
      object BtnCalcular: TBitBtn
        Left = 224
        Top = 224
        Width = 75
        Height = 25
        Caption = '&Calcular'
        TabOrder = 8
        OnClick = BtnCalcularClick
      end
      object DBEdt_ISS_PERC: TDBEdit
        Left = 70
        Top = 203
        Width = 50
        Height = 22
        DataField = 'PAG_ISS_PERC'
        DataSource = DataMovimento.DsPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdt_ISS_RET: TDBEdit
        Left = 126
        Top = 203
        Width = 90
        Height = 22
        TabStop = False
        Color = 14145495
        DataField = 'PAG_ISS_RET'
        DataSource = DataMovimento.DsPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 14
      end
    end
  end
  object pnlAviso: TPanel [7]
    Left = 248
    Top = 192
    Width = 713
    Height = 25
    TabOrder = 7
  end
  inherited coCalcula: TACBrCalculadora
    Left = 984
    Top = 8
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 1080
    Top = 8
  end
  inherited DBConn: TSQLConnection
    Left = 16
    Top = 41
  end
  object SqlCdsCtaAnalise: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from CCT_0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from CCT_0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 110
    Top = 248
    object SqlCdsCtaAnaliseCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object SqlCdsCtaAnaliseCCT_PROVISAO: TFMTBCDField
      FieldName = 'CCT_PROVISAO'
      Precision = 15
    end
    object SqlCdsCtaAnaliseCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      Size = 35
    end
    object SqlCdsCtaAnaliseCEC_CODIGO: TStringField
      FieldName = 'CEC_CODIGO'
      Size = 3
    end
    object SqlCdsCtaAnaliseCCT_TIPO: TStringField
      FieldName = 'CCT_TIPO'
      Size = 1
    end
    object SqlCdsCtaAnaliseCCT_CONTA: TStringField
      FieldName = 'CCT_CONTA'
      Size = 1
    end
    object SqlCdsCtaAnaliseEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsCtaAnaliseCCT_NIVEL: TStringField
      FieldName = 'CCT_NIVEL'
      Size = 19
    end
    object SqlCdsCtaAnaliseCCT_STATUS: TStringField
      FieldName = 'CCT_STATUS'
      Size = 1
    end
  end
  object SqlCdsProjCx: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from PCX0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from PCX0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 192
    Top = 272
    object SqlCdsProjCxPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object SqlCdsProjCxPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object SqlCdsProjCxPCX_INICIO: TSQLTimeStampField
      FieldName = 'PCX_INICIO'
    end
    object SqlCdsProjCxPCX_FIM: TSQLTimeStampField
      FieldName = 'PCX_FIM'
    end
    object SqlCdsProjCxPCX_TERMINADO: TStringField
      FieldName = 'PCX_TERMINADO'
      Size = 1
    end
    object SqlCdsProjCxEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      FixedChar = True
      Size = 3
    end
  end
  object SqlCdsOpv: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from OPV0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from OPV0000'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 1192
    Top = 24
    object SqlCdsOpvOPV_CODIGO: TIntegerField
      FieldName = 'OPV_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlCdsOpvOPV_DESCRICAO: TStringField
      FieldName = 'OPV_DESCRICAO'
      Size = 30
    end
    object SqlCdsOpvOPV_TIPO: TStringField
      FieldName = 'OPV_TIPO'
      Size = 1
    end
  end
  object SqlCdsPagarParc: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'pag.PAG_REGISTRO,'#13#10'pag.PAG_CODIGO,'#13#10'pag.PPC_NUMER,'#13#10'pag.' +
      'PPC_VLPARC,'#13#10'pag.PPC_VENCTO,'#13#10'pag.PPC_DESCTO,'#13#10'pag.PPC_JUROS,'#13#10'p' +
      'ag.PPC_MULTA,'#13#10'pag.PPC_PAGTO,'#13#10'pag.PPC_VLPAGO,'#13#10'pag.PPC_STATUS,'#13 +
      #10'pag.PPC_SITPAG,'#13#10'pag.PPC_PREVISAO,'#13#10'pag.PPC_EXCLUSAO,'#13#10'pag.BAN_' +
      'CODIGO,'#13#10'ban.BAN_APELIDO,'#13#10'PAG.PPC_OBS,'#13#10'PAG.PCXPF_REGISTRO'#13#10'FRO' +
      'M PAG_PC01 PAG'#13#10'LEFT JOIN BAN0000 ban ON PAG.BAN_CODIGO = BAN.BA' +
      'N_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsPagarParcCalcFields
    CommandText = 
      'SELECT'#13#10'pag.PAG_REGISTRO,'#13#10'pag.PAG_CODIGO,'#13#10'pag.PPC_NUMER,'#13#10'pag.' +
      'PPC_VLPARC,'#13#10'pag.PPC_VENCTO,'#13#10'pag.PPC_DESCTO,'#13#10'pag.PPC_JUROS,'#13#10'p' +
      'ag.PPC_MULTA,'#13#10'pag.PPC_PAGTO,'#13#10'pag.PPC_VLPAGO,'#13#10'pag.PPC_STATUS,'#13 +
      #10'pag.PPC_SITPAG,'#13#10'pag.PPC_PREVISAO,'#13#10'pag.PPC_EXCLUSAO,'#13#10'pag.BAN_' +
      'CODIGO,'#13#10'ban.BAN_APELIDO,'#13#10'PAG.PPC_OBS,'#13#10'PAG.PCXPF_REGISTRO'#13#10'FRO' +
      'M PAG_PC01 PAG'#13#10'LEFT JOIN BAN0000 ban ON PAG.BAN_CODIGO = BAN.BA' +
      'N_CODIGO'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 288
    Top = 224
    object SqlCdsPagarParcPAG_REGISTRO: TIntegerField
      FieldName = 'PAG_REGISTRO'
      Required = True
    end
    object SqlCdsPagarParcPAG_CODIGO: TStringField
      DisplayWidth = 12
      FieldName = 'PAG_CODIGO'
      ProviderFlags = []
      Size = 5
    end
    object SqlCdsPagarParcPPC_NUMER: TStringField
      DisplayWidth = 15
      FieldName = 'PPC_NUMER'
      ProviderFlags = []
      OnGetText = SqlCdsPagarParcPPC_NUMERGetText
      Size = 2
    end
    object SqlCdsPagarParcPPC_VLPARC: TFMTBCDField
      DisplayWidth = 17
      FieldName = 'PPC_VLPARC'
      ProviderFlags = []
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsPagarParcPPC_VLPAGO: TFMTBCDField
      DisplayWidth = 15
      FieldName = 'PPC_VLPAGO'
      ProviderFlags = []
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object SqlCdsPagarParcPPC_STATUS: TStringField
      DisplayWidth = 16
      FieldName = 'PPC_STATUS'
      ProviderFlags = []
      Size = 12
    end
    object SqlCdsPagarParcBAN_CODIGO: TStringField
      DisplayWidth = 16
      FieldName = 'BAN_CODIGO'
      ProviderFlags = []
      Size = 4
    end
    object SqlCdsPagarParcBAN_APELIDO: TStringField
      DisplayWidth = 17
      FieldName = 'BAN_APELIDO'
      ProviderFlags = []
      Size = 14
    end
    object SqlCdsPagarParcPPC_SITPAG: TStringField
      FieldName = 'PPC_SITPAG'
      ProviderFlags = []
      Size = 1
    end
    object SqlCdsPagarParcPPC_VENCTO: TSQLTimeStampField
      FieldName = 'PPC_VENCTO'
    end
    object SqlCdsPagarParcPPC_PAGTO: TSQLTimeStampField
      FieldName = 'PPC_PAGTO'
    end
    object SqlCdsPagarParcPPC_PREVISAO: TStringField
      FieldName = 'PPC_PREVISAO'
      Size = 1
    end
    object SqlCdsPagarParcPPC_EXCLUSAO: TStringField
      FieldName = 'PPC_EXCLUSAO'
      Size = 1
    end
    object SqlCdsPagarParcPPC_DESCTO: TFMTBCDField
      FieldName = 'PPC_DESCTO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsPagarParcPPC_JUROS: TFMTBCDField
      FieldName = 'PPC_JUROS'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsPagarParcPPC_MULTA: TFMTBCDField
      FieldName = 'PPC_MULTA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsPagarParcCCPendente: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CCPendente'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object SqlCdsPagarParcPPC_OBS: TStringField
      FieldName = 'PPC_OBS'
      Size = 500
    end
    object SqlCdsPagarParcPCXPF_REGISTRO: TIntegerField
      FieldName = 'PCXPF_REGISTRO'
    end
    object SqlCdsPagarParcPPC_NPARCELAS: TSmallintField
      FieldName = 'PPC_NPARCELAS'
    end
    object SqlCdsPagarParcPPC_SIT_LIBERACAO: TStringField
      FieldName = 'PPC_SIT_LIBERACAO'
      Size = 1
    end
    object SqlCdsPagarParcPPC_VALOR_APONTADO: TFMTBCDField
      FieldName = 'PPC_VALOR_APONTADO'
      DisplayFormat = '#,##0.00'
    end
    object SqlCdsPagarParcfpg_descricao: TStringField
      FieldName = 'fpg_descricao'
      Size = 100
    end
  end
  object DsPagarParcGrid: TDataSource
    DataSet = SqlCdsPagarParc
    OnDataChange = DsPagarParcGridDataChange
    Left = 1280
    Top = 208
  end
  object ImageList1: TImageList
    Left = 1335
    Top = 168
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      00000000000000000000000000000000000000000000D8D8F2007272D0007272
      D0007272D0007272D0007272D0007272D0007272D0007272D0007272D0007272
      D0007272D0007272D000D8D8F2000000000000000000D8EBD80072B9720072B9
      720072B9720072B9720072B9720072B9720072B9720072B9720072B9720072B9
      720072B9720072B97200D8EBD80000000000000000001F1FB4001B1BB3001B1B
      B3002D2DB900F5F5FC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006060
      CA000D0DAE000A0AAD000606AC008D8DD9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8D8F2000A0AAD000000AA000000
      AA000000AA000000AA000000AA000000AA000000AA000000AA000000AA000000
      AA000000AA000000AA000A0AAD00D8D8F200D8ECD8000A850A00008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000A850A00D8ECD800FFFFFF009C9CDE002F2FBA002F2F
      BA002929B8006A6ACD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A9A9E2001E1E
      B4001A1AB3001616B1005151C500FEFEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009696DC000000AA000000AA000000
      AA000000AA000000AA000000AA000000AA000000AA000000AA000000AA000000
      AA000000AA000000AA000000AA009292DA0096CB960000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000080000092C99200FFFFFF00FDFDFE006B6BCE003939
      BD003939BD002525B600B4B4E600FFFFFF00FFFFFF00E3E3F6003434BB002727
      B7002323B6003131BB00E8E8F700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7CD4001616B1001919B2001A1A
      B3001B1BB3001B1BB3001C1CB3001C1CB3001C1CB3001C1CB3001A1AB3001919
      B2001919B2001717B2001414B1007575D1007CBE7C00168B1600198C19001A8D
      1A001B8D1B001B8E1B001C8E1C001C8E1C001C8E1C001C8E1C001A8D1A00198D
      1900198C1900178B1700148A140075BA7500FFFFFF00FFFFFF00E8E8F7005050
      C5004343C0004242C0002C2CB800EBEBF800FEFEFF005F5FC9003434BB003030
      BA002D2DB900BBBBE800FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686D7002626B7002929B8002A2A
      B8002C2CB9002C2CB9002D2DB9002E2EB9002D2DB9002D2DB9002B2BB8002A2A
      B8002929B8002727B7002323B6007B7BD30086C2860026932600299529002A95
      2A002C962C002C962C002D962D002E972E002D962D002D962D002B952B002A95
      2A002994290027942700239223007BBD7B00FFFFFF00FFFFFF00FFFFFF00C3C3
      EB004E4EC4004D4DC4004646C1005555C6009A9ADD004242C0003E3EBF003939
      BD008484D600FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008B8BD8003434BB003939BD003A3A
      BD003C3CBE003D3DBE003E3EBF003E3EBF003E3EBF003E3EBF003C3CBE003A3A
      BD003838BD003636BC003232BB008080D5008BC58B00349A3400399C39003A9D
      3A003C9E3C003D9E3D003E9F3E003E9F3E003E9F3E003E9F3E003C9E3C003A9D
      3A00389C3800369B36003299320080C08000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009898DD005858C7005555C6004141C0004C4CC3004B4BC3004747C2006060
      CA00F9F9FD00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009090DA004242C0004848C2004A4A
      C3004C4CC3004D4DC4004F4FC4004F4FC4004F4FC4004E4EC4004C4CC3004A4A
      C3004848C2004646C1004040BF008383D60090C7900042A1420048A448004AA5
      4A004CA64C004DA74D004FA84F004FA84F004FA84F004EA74E004CA64C004AA5
      4A0048A4480046A3460040A0400083C18300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F6F6FC007979D2006060CA005C5CC9005959C8005454C6005656C700DCDC
      F300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009595DC004E4EC4005555C6005858
      C7005B5BC8005D5DC9006060CA006161CA006060CA005F5FCA005C5CC9005959
      C8005656C7005353C6004B4BC3008585D60095CA95004EA74E0055AA550058AC
      58005BAD5B005DAE5D0060B0600061B0610060B060005FAF5F005CAE5C0059AC
      590056AB560053A953004BA64B0085C28500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DCDCF4006B6BCD006666CC006262CB005D5DC900A2A2E000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009898DD005656C7005F5FCA006464
      CB006868CD006C6CCE007575D1007777D2007777D2007474D1006C6CCE006767
      CC006363CB005E5EC9005555C6008989D80098CC980056AB56005FAF5F0064B2
      640068B468006CB66C0075BA750077BB770077BB770074BA74006CB66C0067B4
      670063B163005EAF5E0055AA550089C48900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ABABE3007373D0006F6FCF006A6ACD006565CC004B4BC300FDFD
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009696DC005050C5005858C7005B5B
      C8005F5FCA006161CA006565CC006666CC006666CC006565CC006262CB005F5F
      CA005B5BC8005858C7005050C5008787D70096CA960050A8500058AC58005BAD
      5B005FAF5F0061B0610065B3650066B3660066B3660065B3650062B162005FAF
      5F005BAD5B0058AC580050A8500087C38700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DADAF3007D7DD4007C7CD3007777D2007171D0006C6CCE005252C5008B8B
      D800FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009191DB004545C1004B4BC3004E4E
      C4005050C5005252C5005555C6005555C6005555C6005555C6005353C6005151
      C5004E4EC4004C4CC3004646C1008585D70091C8910045A245004BA54B004EA7
      4E0050A8500052A9520055AA550055AA550055AA550055AA550053A9530051A8
      51004EA74E004CA64C0046A3460085C38500FFFFFF00FFFFFF00FFFFFF00FAFA
      FD008686D7008989D8008484D6008383D5009F9FDF007171D0006A6ACD003A3A
      BD00D1D1F000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8CD9003838BD003D3DBE003F3F
      BF004141C0004242C0004444C1004545C1004545C1004444C1004343C0004141
      C0004040BF003E3EBF003939BD008181D5008CC58C00389C38003D9E3D003F9F
      3F0041A0410042A1420044A2440045A2450045A2450044A2440043A1430041A0
      410040A040003E9F3E00399C390081C08100FFFFFF00FFFFFF00FFFFFF009D9D
      DF009696DC009090DA008989D800B4B4E600F3F3FB008282D5006D6DCE006565
      CC003F3FBF00F8F8FD00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686D7002929B8002D2DB9002F2F
      BA003030BA003232BB003333BB003333BB003333BB003333BB003232BB003131
      BA003030BA002E2EB9002B2BB8007D7DD40086C28600299529002D962D002F97
      2F00309830003299320033993300339A3300339A3300339A3300329932003198
      3100309830002E972E002B952B007DBF7D00FFFFFF00FFFFFF00C7C7EC009898
      DD009797DC009090DA009595DC00FFFFFF00FFFFFF00D0D0EF006E6ECF006666
      CC005454C6007575D100FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009999DE000909AD000D0DAE000E0E
      AF000F0FAF001010AF001111B0001111B0001212B0001111B0001111B0001010
      AF000F0FAF000E0EAF000A0AAD009494DB0099CD9900098509000D860D000E87
      0E000F880F001088100011891100118911001289120011891100118811001088
      10000F880F000E870E000A850A0094C99400FFFFFF00EFEFFA008888D7009191
      DA008F8FDA008E8EDA00EAEAF800FFFFFF00FFFFFF00FFFFFF00A1A1DF006565
      CC005E5EC9003838BC00BFBFEA00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DBDBF3000D0DAE000000AA000000
      AA000000AA000000AA000000AA000000AA000000AA000000AA000000AA000000
      AA000000AA000000AA000D0DAE00DBDBF300DBEDDB000D860D00008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000D860D00DBEDDB00FFFFFF008A8AD8008686D7008787
      D7008585D600BDBDE900FFFFFF00FFFFFF00FFFFFF00FFFFFF00F2F2FB007171
      D0005C5CC9005555C6003434BB00F0F0FA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DBDBF3007272D0007272
      D0007272D0007272D0007272D0007272D0007272D0007272D0007272D0007272
      D0007272D0007272D000DBDBF3000000000000000000DBEDDB0072B9720072B9
      720072B9720072B9720072B9720072B9720072B9720072B9720072B9720072B9
      720072B9720072B97200DBEDDB0000000000F9F9FD00D6D6F200D6D6F100D6D6
      F100D6D6F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E5
      F600D0D0EF00CECEEF00CCCCEE00E7E7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D8F2F80072D0E70072D0
      E80072D0E80072D0E80072D0E80072D0E80072D0E80072D0E80072D0E80072D0
      E80072D0E80072D0E700D8F2F8000000000000000000F8E5D800E7A17200E8A1
      7200E8A17200E8A17200E8A17200E8A17200E8A17200E8A17200E8A17200E8A1
      7200E8A17200E7A17200F8E5D8000000000000000000F3F3F300D5D5D500D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D5D5D500F3F3F3000000000000000000E0E0E0008E8E8E008E8E
      8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E
      8E008E8E8E008E8E8E00E0E0E00000000000D8F2F8000AADD60000AAD40000AA
      D40000AAD40000AAD40000AAD40000AAD40000AAD40000AAD40000AAD40000AA
      D40000AAD40000AAD4000AADD600D8F2F800F8E5D800D65C0A00D4550000D455
      0000D4550000D4550000D4550000D4550000D4550000D4550000D4550000D455
      0000D4550000D4550000D65C0A00F8E5D800F3F3F300B6B6B600B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B6B6B600F3F3F300E0E0E0003B3B3B00333333003333
      3300333333003333330033333300333333003333330033333300333333003333
      330033333300333333003B3B3B00DFDFDF0096DCED0000AAD40000AAD40000AA
      D40000AAD40000AAD40000AAD40000AAD40000AAD40000AAD40000AAD40000AA
      D40000AAD40000AAD40000AAD40092DAEC00EDB99600D4550000D4550000D455
      0000D4550000D4550000D4550000D4550000D4550000D4550000D4550000D455
      0000D4550000D4550000D4550000ECB69200E0E0E000B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300DEDEDE00ABABAB0033333300333333003333
      3300333333003333330033333300333333003333330033333300333333003333
      3300333333003333330033333300A8A8A8007CD4E90016B1D80019B2D8001AB3
      D8001BB3D9001BB3D9001CB3D9001CB3D9001CB3D9001CB3D9001AB3D80019B2
      D80019B2D80017B2D80014B1D70075D1E900E9A87C00D8641600D8661900D866
      1A00D9671B00D9671B00D9681C00D9681C00D9681C00D9681C00D8671A00D866
      1900D8651900D8641700D7621400E9A37500D9D9D900BABABA00BABABA00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BABABA00BABABA00B9B9B900D7D7D7009797970045454500474747004848
      480049494900494949004A4A4A004A4A4A004A4A4A0049494900484848004747
      47004747470045454500434343009090900086D7EB0026B7DA0029B8DB002AB8
      DB002CB9DB002CB9DB002DB9DC002EB9DC002DB9DC002DB9DC002BB8DB002AB8
      DB0029B8DB0027B7DB0023B6DA007BD3E900EBAE8600DA6E2600DB702900DB71
      2A00DB722C00DB722C00DC732D00DC732E00DC732D00DC732D00DB722B00DB71
      2A00DB702900DB6F2700DA6D2300E9A77B00DCDCDC00BEBEBE00BFBFBF00C0C0
      C000C0C0C000C0C0C000C0C0C000C1C1C100C0C0C000C0C0C000C0C0C000C0C0
      C000BFBFBF00BFBFBF00BEBEBE00D8D8D8009F9F9F0051515100545454005555
      5500565656005656560057575700575757005757570057575700565656005555
      550054545400525252004F4F4F00959595008BD8EB0034BBDD0039BDDE003ABD
      DE003CBEDE003DBEDE003EBFDE003EBFDE003EBFDE003EBFDE003CBEDE003ABD
      DE0038BDDE0036BCDD0032BBDC0080D5EB00EBB18B00DD783400DE7B3900DE7C
      3A00DE7D3C00DE7E3D00DE7F3E00DE7F3E00DE7F3E00DE7E3E00DE7D3C00DE7C
      3A00DE7B3800DD793600DC763200EBAA8000DDDDDD00C3C3C300C4C4C400C4C4
      C400C5C5C500C5C5C500C6C6C600C6C6C600C6C6C600C5C5C500C5C5C500C4C4
      C400C4C4C400C3C3C300C2C2C200DADADA00A3A3A3005D5D5D00606060006262
      6200636363006464640065656500656565006565650064646400636363006262
      6200606060005F5F5F005B5B5B009999990090DAEC0042C0DF0048C2E0004AC3
      E0004CC3E1004DC4E1004FC4E1004FC4E1004FC4E1004EC4E1004CC3E1004AC3
      E00048C2E00046C1E00040BFDF0083D6EB00ECB59000DF814200E0854800E086
      4A00E1884C00E1894D00E18A4F00E18A4F00E18A4F00E1894E00E1884C00E086
      4A00E0854800E0834600DF7F4000EBAC8300DEDEDE00C7C7C700C8C8C800C9C9
      C900CACACA00CACACA00CBCBCB00CBCBCB00CBCBCB00CACACA00CACACA00C9C9
      C900C8C8C800C8C8C800C6C6C600DBDBDB00A7A7A700686868006C6C6C006E6E
      6E00707070007171710073737300737373007373730072727200707070006E6E
      6E006D6D6D006B6B6B00666666009C9C9C0095DCED004EC4E10055C6E20058C7
      E3005BC8E3005DC9E40060CAE40061CAE40060CAE4005FCAE4005CC9E30059C8
      E30056C7E20053C6E2004BC3E10085D6EB00EDB89500E1894E00E28E5500E38F
      5800E3915B00E4935D00E4956000E4956100E4956000E4945F00E3925C00E390
      5900E28E5600E28C5300E1874B00EBAE8500E0E0E000CACACA00CCCCCC00CDCD
      CD00CECECE00CFCFCF00D0D0D000D0D0D000D0D0D000CFCFCF00CECECE00CDCD
      CD00CDCDCD00CCCCCC00C9C9C900DBDBDB00AAAAAA0071717100777777007979
      79007C7C7C007E7E7E008080800080808000808080007F7F7F007C7C7C007A7A
      7A0078787800757575006F6F6F009E9E9E0098DDEE0056C7E2005FCAE40064CB
      E50068CDE6006CCEE60075D1E80077D2E80077D2E80074D1E8006CCEE60067CC
      E50063CBE5005EC9E40055C6E20089D8EC00EEBA9800E28E5600E4945F00E597
      6400E69A6800E69D6C00E8A37500E8A47700E8A47700E8A27400E69D6C00E59A
      6700E5976300E4945E00E28E5500ECB08900E1E1E100CDCDCD00CFCFCF00D1D1
      D100D2D2D200D3D3D300D6D6D600D7D7D700D7D7D700D5D5D500D3D3D300D2D2
      D200D1D1D100CFCFCF00CCCCCC00DDDDDD00ADADAD00787878007F7F7F008383
      8300868686008A8A8A0090909000929292009292920090909000898989008686
      8600828282007E7E7E0077777700A0A0A00096DCED0050C5E10058C7E3005BC8
      E3005FCAE40061CAE40065CCE50066CCE50066CCE50065CCE50062CBE4005FCA
      E4005BC8E30058C7E30050C5E10087D7EB00EDB89600E18A5000E38F5800E392
      5B00E4945F00E4966100E5996500E5996600E5996600E5996500E4966200E494
      5F00E3925B00E38F5800E18A5000EBAF8700E0E0E000CBCBCB00CDCDCD00CECE
      CE00CFCFCF00D0D0D000D1D1D100D2D2D200D2D2D200D1D1D100D0D0D000CFCF
      CF00CECECE00CDCDCD00CBCBCB00DCDCDC00ABABAB0073737300797979007C7C
      7C007F7F7F008181810084848400858585008585850084848400818181007F7F
      7F007C7C7C0079797900737373009F9F9F0091DBEC0045C1E0004BC3E1004EC4
      E10050C5E20052C5E20055C6E20055C6E20055C6E20055C6E20053C6E20051C5
      E2004EC4E1004CC3E10046C1E00085D7EB00ECB69100E0834500E1874B00E189
      4E00E28B5000E28C5200E28E5500E28E5500E28E5500E28E5500E28C5300E28B
      5100E1894E00E1884C00E0844600EBAE8500DFDFDF00C8C8C800C9C9C900CACA
      CA00CBCBCB00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CBCB
      CB00CACACA00CACACA00C8C8C800DCDCDC00A8A8A8006A6A6A006F6F6F007171
      7100737373007575750077777700777777007777770077777700757575007474
      740072727200707070006B6B6B009D9D9D008CD9EB0038BDDD003DBEDE003FBF
      DF0041C0DF0042C0DF0044C1DF0045C1E00045C1E00044C1DF0043C0DF0041C0
      DF0040BFDF003EBFDE0039BDDE0081D5EA00EBB28C00DD7A3800DE7E3D00DF7F
      3F00DF804100DF814200DF824400E0834500E0834500DF824400DF814300DF80
      4100DF7F4000DE7E3E00DE7B3900EAAB8100DDDDDD00C4C4C400C5C5C500C6C6
      C600C6C6C600C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C6C6
      C600C6C6C600C5C5C500C4C4C400DADADA00A4A4A40060606000646464006565
      650067676700686868006A6A6A006A6A6A006A6A6A006A6A6A00686868006767
      67006666660064646400606060009A9A9A0086D7EA0029B8DB002DB9DC002FBA
      DC0030BADC0032BBDC0033BBDD0033BBDD0033BBDD0033BBDD0032BBDC0031BA
      DC0030BADC002EB9DC002BB8DB007DD4EA00EAAE8600DB702900DC732D00DC74
      2F00DC753000DC763200DD773300DD773300DD773300DD773300DC763200DC76
      3100DC753000DC742E00DB712B00EAA87D00DBDBDB00BFBFBF00C0C0C000C1C1
      C100C1C1C100C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2
      C200C1C1C100C1C1C100C0C0C000D9D9D9009F9F9F0054545400575757005858
      5800595959005B5B5B005C5C5C005C5C5C005C5C5C005C5C5C005B5B5B005A5A
      5A005959590058585800555555009797970099DEEE0009ADD6000DAED6000EAF
      D6000FAFD70010AFD70011B0D70011B0D70012B0D70011B0D70011B0D70010AF
      D7000FAFD7000EAFD6000AADD60094DBED00EEBC9900D65B0900D65D0D00D65E
      0E00D75F0F00D75F1000D7601100D7601100D7611200D7601100D7601100D760
      1000D75F0F00D65E0E00D65C0A00EDB89400E2E2E200B6B6B600B7B7B700B7B7
      B700B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8
      B800B8B8B800B7B7B700B6B6B600DFDFDF00AEAEAE003A3A3A003D3D3D003E3E
      3E003F3F3F004040400041414100414141004141410041414100404040004040
      40003F3F3F003E3E3E003B3B3B00A9A9A900DBF3F9000DAED60000AAD40000AA
      D40000AAD40000AAD40000AAD40000AAD40000AAD40000AAD40000AAD40000AA
      D40000AAD40000AAD4000DAED600DBF3F900F9E7DB00D65E0D00D4550000D455
      0000D4550000D4550000D4550000D4550000D4550000D4550000D4550000D455
      0000D4550000D4550000D65E0D00F9E7DB00F5F5F500B7B7B700B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B7B7B700F4F4F400E2E2E2003D3D3D00333333003333
      3300333333003333330033333300333333003333330033333300333333003333
      330033333300333333003D3D3D00E2E2E20000000000DBF3F90072D0E70072D0
      E80072D0E80072D0E80072D0E80072D0E80072D0E80072D0E80072D0E80072D0
      E80072D0E80072D0E700DBF3F9000000000000000000F9E7DB00E7A17200E8A1
      7200E8A17200E8A17200E8A17200E8A17200E8A17200E8A17200E8A17200E8A1
      7200E8A17200E7A17200F9E7DB000000000000000000F4F4F400D5D5D500D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D5D5D500F4F4F4000000000000000000E2E2E2008E8E8E008E8E
      8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E8E008E8E
      8E008E8E8E008E8E8E00E2E2E20000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0080018001800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000800180010000000080018001800180010000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000800180018001800100000000000000000000000000000000
      000000000000}
  end
  object DsPagamentos: TDataSource
    DataSet = CDSPagamentos
    Left = 848
    Top = 477
  end
  object CDSPagamentos: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'    t1.PAP_REGISTRO,'#13#10'    T1.PAG_DATA_PAGAMENTO,'#13#10'    T1' +
      '.PAG_VALOR,'#13#10'    T1.PAG_DESCONTO,'#13#10'    T1.PAG_JUROS,'#13#10'    T1.PAG' +
      '_MULTA,'#13#10'    T1.PAG_PAGO,'#13#10'    T1.BAN_CODIGO,'#13#10'    T2.BAN_RAZAO,' +
      #13#10'    T1.FPG_REGISTRO,'#13#10'    T3.FPG_DESCRICAO,'#13#10'    T1.USU_CODIGO' +
      ','#13#10'    t4.USU_NOME'#13#10'FROM'#13#10'PAG_PAGAMENTO T1'#13#10'JOIN BAN0000 T2 ON (' +
      'T2.BAN_CODIGO = T1.BAN_CODIGO)'#13#10'JOIN FORMA_PAGAMENTO T3 ON (T3.F' +
      'PG_REGISTRO = T1.FPG_REGISTRO)'#13#10'JOIN USUARIO T4 ON (T4.USU_CODIG' +
      'O = T1.USU_CODIGO)'#13#10'WHERE T1.PAP_REGISTRO = 0'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'    t1.PAP_REGISTRO,'#13#10'    T1.PAG_DATA_PAGAMENTO,'#13#10'    T1' +
      '.PAG_VALOR,'#13#10'    T1.PAG_DESCONTO,'#13#10'    T1.PAG_JUROS,'#13#10'    T1.PAG' +
      '_MULTA,'#13#10'    T1.PAG_PAGO,'#13#10'    T1.BAN_CODIGO,'#13#10'    T2.BAN_RAZAO,' +
      #13#10'    T1.FPG_REGISTRO,'#13#10'    T3.FPG_DESCRICAO,'#13#10'    T1.USU_CODIGO' +
      ','#13#10'    t4.USU_NOME'#13#10'FROM'#13#10'PAG_PAGAMENTO T1'#13#10'JOIN BAN0000 T2 ON (' +
      'T2.BAN_CODIGO = T1.BAN_CODIGO)'#13#10'JOIN FORMA_PAGAMENTO T3 ON (T3.F' +
      'PG_REGISTRO = T1.FPG_REGISTRO)'#13#10'JOIN USUARIO T4 ON (T4.USU_CODIG' +
      'O = T1.USU_CODIGO)'#13#10'WHERE T1.PAP_REGISTRO = 0'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 721
    Top = 477
    object CDSPagamentosPAP_REGISTRO: TIntegerField
      FieldName = 'PAP_REGISTRO'
      Required = True
    end
    object CDSPagamentosPAG_DATA_PAGAMENTO: TDateField
      FieldName = 'PAG_DATA_PAGAMENTO'
    end
    object CDSPagamentosPAG_VALOR: TFMTBCDField
      FieldName = 'PAG_VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CDSPagamentosPAG_DESCONTO: TFMTBCDField
      FieldName = 'PAG_DESCONTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CDSPagamentosPAG_JUROS: TFMTBCDField
      FieldName = 'PAG_JUROS'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CDSPagamentosPAG_MULTA: TFMTBCDField
      FieldName = 'PAG_MULTA'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CDSPagamentosPAG_PAGO: TFMTBCDField
      FieldName = 'PAG_PAGO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CDSPagamentosBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object CDSPagamentosBAN_RAZAO: TStringField
      FieldName = 'BAN_RAZAO'
      Size = 45
    end
    object CDSPagamentosFPG_REGISTRO: TIntegerField
      FieldName = 'FPG_REGISTRO'
    end
    object CDSPagamentosFPG_DESCRICAO: TStringField
      FieldName = 'FPG_DESCRICAO'
      Size = 100
    end
    object CDSPagamentosUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object CDSPagamentosUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Size = 40
    end
    object CDSPagamentosPAG_OBSERVACAO: TStringField
      FieldName = 'PAG_OBSERVACAO'
      Size = 50
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 564
    Top = 485
    object EstornaBaixa1: TMenuItem
      Caption = 'Estorna Baixa'
      OnClick = EstornaBaixa1Click
    end
    object ImprimirRecibo1: TMenuItem
      Caption = 'Imprimir Recibo'
      OnClick = ImprimirRecibo1Click
    end
  end
  object CdsRateioCentroCusto: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dspRateioCentroCusto'
    AfterOpen = CdsRateioCentroCustoAfterOpen
    AfterClose = CdsRateioCentroCustoAfterClose
    Left = 560
    Top = 296
    object CdsRateioCentroCustoPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object CdsRateioCentroCustoPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object CdsRateioCentroCustoPCX_NIVEL: TStringField
      FieldName = 'PCX_NIVEL'
      Size = 15
    end
    object CdsRateioCentroCustoFIR_INDICE: TFMTBCDField
      FieldName = 'FIR_INDICE'
      DisplayFormat = '##0.0000'
      Precision = 20
      Size = 5
    end
    object CdsRateioCentroCustoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '#,##0.00000'
      Precision = 20
      Size = 10
    end
    object CdsRateioCentroCustoCC_VALOR: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CC_VALOR'
      DisplayFormat = '#,##0.000000'
      Calculated = True
    end
    object CdsRateioCentroCustoVALOR_TOT: TAggregateField
      FieldName = 'VALOR_TOT'
      Active = True
      DisplayName = ''
      Expression = 'SUM( VALOR )'
    end
  end
  object dsRateioCentroCusto: TDataSource
    DataSet = CdsRateioCentroCusto
    Left = 456
    Top = 264
  end
  object qFor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 708
    Top = 292
  end
  object qConta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 812
    Top = 292
  end
  object qCCusto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 916
    Top = 292
  end
  object qRateioCentroCusto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 404
    Top = 340
  end
  object dspRateioCentroCusto: TDataSetProvider
    DataSet = qRateioCentroCusto
    Left = 524
    Top = 340
  end
end
