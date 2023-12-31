inherited FormOrdServCentroNovo: TFormOrdServCentroNovo
  Left = 815
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'P.C.P - Ordens de Produ'#231#227'o'
  ClientHeight = 675
  ClientWidth = 1322
  Font.Charset = ANSI_CHARSET
  Font.Name = 'Arial'
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  Visible = True
  ExplicitWidth = 1328
  ExplicitHeight = 700
  PixelsPerInch = 96
  TextHeight = 14
  object pgcPCP: TPageControl [0]
    Left = 0
    Top = 135
    Width = 1322
    Height = 540
    ActivePage = tsOrdem
    Align = alClient
    HotTrack = True
    TabOrder = 0
    OnChange = pgcPCPChange
    object tsOrdem: TTabSheet
      Caption = 'Orde&m de Produ'#231#227'o'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DbGridCelulas: TDBGrid
        Left = 0
        Top = 388
        Width = 1314
        Height = 82
        TabStop = False
        Align = alBottom
        Color = 16776176
        DataSource = DsCelOP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clMaroon
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CEL_CODIGO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEL_NOME'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'C'#233'lula'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 399
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEM_DTENTROU'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Entrada'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEM_TUPTRAB'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'TUP'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEM_DTCONCLUIU'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Conclus'#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEM_TRABALHO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Servi'#231'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 260
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 470
        Width = 1314
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Panel2: TPanel
          Left = 0
          Top = 6
          Width = 1314
          Height = 35
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object Bit_Imprimir: TBitBtn
            Left = 509
            Top = 3
            Width = 100
            Height = 25
            Caption = '&Imprimir O.P.'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
              0003377777777777777308888888888888807F33333333333337088888888888
              88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
              8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
              8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
              03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
              03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
              33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
              33333337FFFF7733333333300000033333333337777773333333}
            NumGlyphs = 2
            TabOrder = 0
            TabStop = False
            OnClick = Bit_ImprimirClick
          end
          object BitEstornar: TBitBtn
            Left = 615
            Top = 3
            Width = 100
            Height = 25
            Caption = '&Estornar'
            Enabled = False
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
            TabOrder = 1
            TabStop = False
            OnClick = BitEstornarClick
          end
          object Bit_Sair: TBitBtn
            Left = 934
            Top = 3
            Width = 100
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
            TabOrder = 2
            TabStop = False
            OnClick = Bit_SairClick
          end
          object Bit_OpReservar: TBitBtn
            Left = 204
            Top = 3
            Width = 95
            Height = 25
            Caption = 'Reservar O.P.'
            Enabled = False
            TabOrder = 3
            TabStop = False
            OnClick = Bit_OpReservarClick
          end
          object Bit_OpProducao: TBitBtn
            Left = 305
            Top = 3
            Width = 96
            Height = 25
            Caption = 'Produzir O.P.'
            Enabled = False
            TabOrder = 4
            TabStop = False
            OnClick = Bit_OpProducaoClick
          end
          object Bit_Concluir: TBitBtn
            Left = 721
            Top = 4
            Width = 100
            Height = 25
            Caption = 'Concluir O.P.'
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
            TabOrder = 5
            OnClick = Bit_concluirClick
          end
          object BitLimparEstorno: TBitBtn
            Left = 828
            Top = 3
            Width = 100
            Height = 25
            Caption = '&Limpar Estorno'
            Enabled = False
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000E0000000E0000000100
              04000000000070000000CE0E0000D80E00001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3300333333333333330033333333333333003333333333333300333333333333
              3300333333333333330033000000000033003300000000003300330000000000
              3300333333333333330033333333333333003333333333333300333333333333
              33003333333333333300}
            TabOrder = 6
            TabStop = False
            OnClick = BitLimparEstornoClick
          end
          object Bit_Processo: TBitBtn
            Left = 102
            Top = 3
            Width = 95
            Height = 25
            Caption = '<F&3> Processo'
            TabOrder = 7
            TabStop = False
            OnClick = Bit_ProcessoClick
          end
          object Bit_Celulas: TBitBtn
            Left = 1
            Top = 3
            Width = 95
            Height = 25
            Caption = '<F2> &C'#233'lulas'
            TabOrder = 8
            TabStop = False
            OnClick = Bit_CelulasClick
          end
        end
        object BitBtn1: TBitBtn
          Left = 407
          Top = 9
          Width = 95
          Height = 25
          Caption = 'Imprimir Lista'
          TabOrder = 1
          OnClick = BitBtn1Click
        end
      end
      object Panel15: TPanel
        Left = 0
        Top = 351
        Width = 1314
        Height = 37
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 2
        object Label4: TLabel
          Left = 5
          Top = 12
          Width = 35
          Height = 14
          Caption = 'Cliente:'
        end
        object Label5: TLabel
          Left = 389
          Top = 11
          Width = 54
          Height = 14
          Caption = 'N'#186' do Lote:'
        end
        object Label6: TLabel
          Left = 549
          Top = 11
          Width = 57
          Height = 14
          Caption = 'Fabrica'#231#227'o:'
        end
        object Label7: TLabel
          Left = 675
          Top = 11
          Width = 44
          Height = 14
          Caption = 'Validade:'
        end
        object Label8: TLabel
          Left = 800
          Top = 11
          Width = 31
          Height = 14
          Alignment = taRightJustify
          Caption = 'Resp.:'
        end
        object DBEdit9: TDBEdit
          Left = 444
          Top = 8
          Width = 103
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'OSV_LOTE'
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit10: TDBEdit
          Left = 606
          Top = 8
          Width = 65
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'OSV_CONCLUSAO'
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit11: TDBEdit
          Left = 720
          Top = 8
          Width = 65
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'OSV_VALIDADE'
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit12: TDBEdit
          Left = 40
          Top = 8
          Width = 49
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'CLI_CODIGO'
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit13: TDBEdit
          Left = 90
          Top = 8
          Width = 291
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'CLI_RAZAO'
          ReadOnly = True
          TabOrder = 4
        end
        object dbedtOSV_RESPONSAVEL: TDBEdit
          Left = 832
          Top = 7
          Width = 121
          Height = 22
          TabStop = False
          Color = 14145495
          DataField = 'OSV_RESPONSAVEL'
          ReadOnly = True
          TabOrder = 5
        end
      end
      object dbGridOS: TDBGrid
        Left = 0
        Top = 0
        Width = 1314
        Height = 351
        Align = alClient
        DataSource = dsOpGrade
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        PopupMenu = pmApontar
        ReadOnly = True
        TabOrder = 3
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnDrawColumnCell = dbGridOSDrawColumnCell
        OnDblClick = dbGridOSDblClick
        OnEnter = dbGridOSEnter
        OnKeyPress = dbGridOSKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'OSV_CODIGO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'O.P.'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSV_EMISSAO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Emiss'#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSV_DTENTREGA'
            Title.Alignment = taCenter
            Title.Caption = 'Entrega'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_REFER'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_DESCRI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 298
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSV_QTDE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Qtde Produzir'
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
            FieldName = 'PRD_UND'
            Title.Alignment = taCenter
            Title.Caption = 'Und'
            Width = 28
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSV_QTDE_SOLICITADA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Origem'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSV_QTDE_CONCLUIDA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Concluida'
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
            FieldName = 'PED_CODIGO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Pedido'
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
            FieldName = 'OSV_STATUS_CC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
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
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSV_LOTE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Lote'
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
            FieldName = 'OSV_CONCLUSAO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Fabrica'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSV_VALIDADE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Validade'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_CODIGO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_RAZAO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Raz'#227'o Social'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 156
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSV_ORDEM_COMPRA'
            Title.Alignment = taCenter
            Title.Caption = 'Ordem de Compra'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSV_RESPONSAVEL'
            Title.Alignment = taCenter
            Title.Caption = 'Respons'#225'vel'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FTC_TUP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'TUP'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSV_GERAR_PI'
            Title.Alignment = taCenter
            Title.Caption = 'Gera PI'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEL_CODIGO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'C'#233'lula'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 61
            Visible = True
          end>
      end
    end
    object tsitemOS: TTabSheet
      Caption = 'Itens da Or&dem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      OnShow = tsitemOSShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GrpVar: TGroupBox
        Left = 0
        Top = 32
        Width = 785
        Height = 72
        TabOrder = 1
        object Bevel5: TBevel
          Left = 0
          Top = 44
          Width = 784
          Height = 2
        end
        object Bevel6: TBevel
          Left = 77
          Top = 7
          Width = 2
          Height = 63
        end
        object Label20: TLabel
          Left = 23
          Top = 25
          Width = 51
          Height = 13
          Caption = 'Varia'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 8
          Top = 50
          Width = 66
          Height = 13
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel7: TBevel
          Left = 713
          Top = 6
          Width = 2
          Height = 64
        end
        object Label22: TLabel
          Left = 718
          Top = 25
          Width = 30
          Height = 13
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 80
          Top = 8
          Width = 31
          Height = 13
          Caption = 'Var 1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 159
          Top = 8
          Width = 31
          Height = 13
          Caption = 'Var 2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 238
          Top = 8
          Width = 31
          Height = 13
          Caption = 'Var 3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 317
          Top = 8
          Width = 31
          Height = 13
          Caption = 'Var 4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label27: TLabel
          Left = 396
          Top = 8
          Width = 31
          Height = 13
          Caption = 'Var 5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 475
          Top = 8
          Width = 31
          Height = 13
          Caption = 'Var 6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label29: TLabel
          Left = 554
          Top = 8
          Width = 31
          Height = 13
          Caption = 'Var 7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label30: TLabel
          Left = 633
          Top = 8
          Width = 31
          Height = 13
          Caption = 'Var 8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CurrTotal: TCurrencyEdit
          Left = 716
          Top = 47
          Width = 65
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object CurrMod1: TCurrencyEdit
          Left = 80
          Top = 47
          Width = 78
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object CurrMod2: TCurrencyEdit
          Left = 159
          Top = 47
          Width = 78
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object CurrMod3: TCurrencyEdit
          Left = 238
          Top = 47
          Width = 78
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object CurrMod4: TCurrencyEdit
          Left = 317
          Top = 47
          Width = 78
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object CurrMod5: TCurrencyEdit
          Left = 396
          Top = 47
          Width = 78
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
        object CurrMod6: TCurrencyEdit
          Left = 475
          Top = 47
          Width = 78
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
        end
        object CurrMod7: TCurrencyEdit
          Left = 554
          Top = 47
          Width = 78
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
        end
        object CurrMod8: TCurrencyEdit
          Left = 633
          Top = 47
          Width = 78
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
        end
        object DBEdit1: TDBEdit
          Left = 80
          Top = 21
          Width = 78
          Height = 21
          TabStop = False
          AutoSelect = False
          Color = 16776176
          Ctl3D = True
          DataField = 'PRD_DCVAR1'
          DataSource = DsProduto
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
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 159
          Top = 21
          Width = 78
          Height = 21
          TabStop = False
          AutoSelect = False
          Color = 16776176
          Ctl3D = True
          DataField = 'PRD_DCVAR2'
          DataSource = DsProduto
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
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 238
          Top = 21
          Width = 78
          Height = 21
          TabStop = False
          AutoSelect = False
          Color = 16776176
          Ctl3D = True
          DataField = 'PRD_DCVAR3'
          DataSource = DsProduto
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
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 317
          Top = 21
          Width = 78
          Height = 21
          TabStop = False
          AutoSelect = False
          Color = 16776176
          Ctl3D = True
          DataField = 'PRD_DCVAR4'
          DataSource = DsProduto
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
        object DBEdit5: TDBEdit
          Left = 396
          Top = 21
          Width = 78
          Height = 21
          TabStop = False
          AutoSelect = False
          Color = 16776176
          Ctl3D = True
          DataField = 'PRD_DCVAR5'
          DataSource = DsProduto
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
        object DBEdit6: TDBEdit
          Left = 475
          Top = 21
          Width = 78
          Height = 21
          TabStop = False
          AutoSelect = False
          Color = 16776176
          Ctl3D = True
          DataField = 'PRD_DCVAR6'
          DataSource = DsProduto
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
        object DBEdit7: TDBEdit
          Left = 554
          Top = 21
          Width = 78
          Height = 21
          TabStop = False
          AutoSelect = False
          Color = 16776176
          Ctl3D = True
          DataField = 'PRD_DCVAR7'
          DataSource = DsProduto
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
        object DBEdit8: TDBEdit
          Left = 633
          Top = 21
          Width = 78
          Height = 21
          TabStop = False
          AutoSelect = False
          Color = 16776176
          Ctl3D = True
          DataField = 'PRD_DCVAR8'
          DataSource = DsProduto
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
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 1
        Width = 785
        Height = 35
        TabOrder = 0
        object Label16: TLabel
          Left = 3
          Top = 12
          Width = 24
          Height = 13
          Caption = 'O.P.:'
        end
        object Label17: TLabel
          Left = 94
          Top = 12
          Width = 42
          Height = 13
          Caption = 'Emiss'#227'o:'
        end
        object Label18: TLabel
          Left = 205
          Top = 12
          Width = 55
          Height = 13
          Caption = 'Refer'#234'ncia:'
        end
        object Label19: TLabel
          Left = 657
          Top = 12
          Width = 26
          Height = 13
          Caption = 'Qtde:'
        end
        object EdtOp: TEdit
          Left = 29
          Top = 9
          Width = 61
          Height = 21
          TabStop = False
          Color = 14145495
          ReadOnly = True
          TabOrder = 0
        end
        object EdtEmissao: TEdit
          Left = 137
          Top = 9
          Width = 65
          Height = 21
          TabStop = False
          Color = 14145495
          ReadOnly = True
          TabOrder = 1
          StyleElements = [seClient, seBorder]
        end
        object EdtRefer: TEdit
          Left = 261
          Top = 9
          Width = 76
          Height = 21
          TabStop = False
          Color = 14145495
          ReadOnly = True
          TabOrder = 2
        end
        object EdtDescri: TEdit
          Left = 338
          Top = 9
          Width = 316
          Height = 21
          TabStop = False
          Color = 14145495
          ReadOnly = True
          TabOrder = 3
        end
        object CurrQtde: TCurrencyEdit
          Left = 684
          Top = 9
          Width = 97
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 4
          DisplayFormat = '#,##.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 42
        Width = 953
        Height = 327
        TabStop = False
        Color = 16776176
        DataSource = DsItemOP
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PRD_REFER_ITENS'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_DESCRI'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o do Material'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 308
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PTI_SIGLA'
            Title.Alignment = taCenter
            Title.Caption = '*'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSI_UC'
            Title.Alignment = taCenter
            Title.Caption = 'Cs. Unit'#225'rio'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 86
            Visible = True
          end
          item
            Color = 15132364
            Expanded = False
            FieldName = 'QTDE_CC'
            Title.Alignment = taCenter
            Title.Caption = 'Qtde '
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 78
            Visible = True
          end
          item
            Color = 12582911
            Expanded = False
            FieldName = 'TOTALUC_CC'
            Title.Alignment = taCenter
            Title.Caption = 'Consumo total'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_UND'
            Title.Alignment = taCenter
            Title.Caption = 'Und'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 29
            Visible = True
          end
          item
            Color = 15000804
            Expanded = False
            FieldName = 'OSI_EMPENHO'
            Title.Alignment = taCenter
            Title.Caption = 'Empenhado'
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
            FieldName = 'WSTATUSEMPENHO'
            Title.Alignment = taCenter
            Title.Caption = 'Sit. Empenho'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 84
            Visible = True
          end
          item
            Color = 16505830
            Expanded = False
            FieldName = 'OSI_RESERVADO'
            Title.Alignment = taCenter
            Title.Caption = 'Reservado'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 62
            Visible = True
          end>
      end
      object Pan_Refazer: TPanel
        Left = 801
        Top = 388
        Width = 130
        Height = 35
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Color = 10841658
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Visible = False
        object Bit_Refazer: TBitBtn
          Left = 5
          Top = 6
          Width = 120
          Height = 25
          Caption = 'Refazer Empenho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          TabStop = False
          OnClick = Bit_RefazerClick
        end
      end
    end
    object TabSheet_apontadas: TTabSheet
      Caption = 'Empen&hado'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel3: TPanel
        Left = 840
        Top = 5
        Width = 113
        Height = 148
        BevelOuter = bvLowered
        Color = 14671839
        TabOrder = 2
        object Bit_Automatico: TBitBtn
          Left = 3
          Top = 8
          Width = 107
          Height = 40
          Caption = 'Auto&m'#225'tico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Bit_AutomaticoClick
        end
        object Bit_Manual: TBitBtn
          Left = 3
          Top = 48
          Width = 107
          Height = 40
          Caption = 'Manua&l'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = Bit_ManualClick
        end
      end
      object Pan_Materia: TPanel
        Left = 839
        Top = 192
        Width = 110
        Height = 242
        BevelOuter = bvLowered
        Color = 14671839
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object Label1: TLabel
          Left = 4
          Top = 3
          Width = 35
          Height = 13
          Caption = 'Mat'#233'ria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 4
          Top = 39
          Width = 23
          Height = 13
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 4
          Top = 76
          Width = 55
          Height = 13
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 8
          Top = 114
          Width = 21
          Height = 13
          Caption = 'Lote'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edt_Materia: TEdit
          Left = 3
          Top = 16
          Width = 100
          Height = 21
          Color = 14145495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DtDataEmissao: TDateEdit
          Left = 3
          Top = 52
          Width = 100
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
          TabOrder = 1
        end
        object CurrQtdeEstoque: TCurrencyEdit
          Left = 3
          Top = 89
          Width = 100
          Height = 21
          AutoSize = False
          DecimalPlaces = 4
          DisplayFormat = ',0.0000;-,0.0000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          ZeroEmpty = False
          OnClick = CurrQtdeEstoqueClick
          OnEnter = CurrQtdeEstoqueClick
          OnExit = CurrQtdeEstoqueExit
        end
        object Bit_GravarMateria: TBitBtn
          Left = 5
          Top = 154
          Width = 100
          Height = 25
          Cursor = crHandPoint
          Hint = '|Grava o Item da Ficha T'#233'cnica...'
          Caption = 'Con&firma'
          Enabled = False
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
          TabOrder = 4
          OnClick = Bit_GravarMateriaClick
        end
        object Bit_CancelarMateria: TBitBtn
          Left = 6
          Top = 181
          Width = 100
          Height = 25
          Cursor = crHandPoint
          Hint = '|Cancela o Item da Ficha T'#233'cninca...'
          Caption = '&Cancelar'
          Enabled = False
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
          TabOrder = 5
          OnClick = Bit_CancelarMateriaClick
        end
        object CbLoteProduto: TcxLookupComboBox
          Left = 6
          Top = 130
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Properties.CaseSensitiveSearch = True
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownSizeable = True
          Properties.KeyFieldNames = 'PRDL_REGISTRO'
          Properties.ListColumns = <
            item
              Caption = 'Lote'
              FieldName = 'PRDL_LOTE'
            end
            item
              Caption = 'Validade'
              FieldName = 'PRDL_DATA_VALIDADE'
            end>
          Properties.ListSource = dsLoteProduto
          Properties.MaxLength = 0
          EditValue = 0
          Style.LookAndFeel.Kind = lfStandard
          StyleDisabled.LookAndFeel.Kind = lfStandard
          StyleFocused.LookAndFeel.Kind = lfStandard
          StyleHot.LookAndFeel.Kind = lfStandard
          TabOrder = 3
          Width = 99
        end
        object Bit_Estornar: TBitBtn
          Left = 6
          Top = 208
          Width = 100
          Height = 25
          Caption = 'Estornar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 191
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = Bit_EstornarClick
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 833
        Height = 207
        Caption = 'Material que Falta Empenhar'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object DBGrid2: TDBGrid
          Left = 2
          Top = 16
          Width = 829
          Height = 189
          Hint = 'D'#234' duplo clique para fazer apontamento manual...'
          Align = alClient
          DataSource = DsEstoque
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDblClick = DBGrid2DblClick
          OnKeyPress = DBGrid2KeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'PRD_REFER_ITENS'
              Title.Alignment = taCenter
              Title.Caption = 'Materia'
              Title.Color = clWindow
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clRed
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 109
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_DESCRI'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o do Material'
              Title.Color = clWindow
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clRed
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 430
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PTI_SIGLA'
              Title.Alignment = taCenter
              Title.Caption = '*'
              Title.Color = clWindow
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clRed
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 22
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'WSALDO'
              Title.Alignment = taCenter
              Title.Caption = 'Qtde Estoque'
              Title.Color = clWindow
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clRed
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FALTA_EMPENHAR'
              Title.Alignment = taCenter
              Title.Caption = 'Falta Empenhar'
              Title.Color = clWindow
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clRed
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_UND'
              Title.Alignment = taCenter
              Title.Caption = 'Und'
              Title.Color = clWindow
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clRed
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 28
              Visible = True
            end>
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 207
        Width = 833
        Height = 227
        Caption = 'Material Empenhado'
        TabOrder = 1
        object DBGrid3: TDBGrid
          Left = 2
          Top = 16
          Width = 829
          Height = 209
          Hint = 'D'#234' duplo clique para estornar apontamento...'
          Align = alClient
          Color = 16776176
          DataSource = DsEmpenho
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDblClick = DBGrid3DblClick
          OnKeyPress = DBGrid3KeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'PRD_REFER_ITENS'
              Title.Alignment = taCenter
              Title.Caption = 'Materia'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_DESCRI'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o do Material'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 403
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PTI_SIGLA'
              Title.Alignment = taCenter
              Title.Caption = '*'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 22
              Visible = True
            end
            item
              Color = 13494005
              Expanded = False
              FieldName = 'EPM_QTDE'
              Title.Alignment = taCenter
              Title.Caption = 'Qtde Empenhado'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_UND'
              Title.Alignment = taCenter
              Title.Caption = 'Und'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EPM_DATAEMPENHO'
              Title.Alignment = taCenter
              Title.Caption = 'Data'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO_EMPENHO_CC'
              Title.Alignment = taCenter
              Title.Caption = 'Status'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 58
              Visible = True
            end>
        end
      end
    end
    object tsEngenharia: TTabSheet
      Caption = 'Engenharia de produ'#231#227'o'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox5: TGroupBox
        Left = 8
        Top = 9
        Width = 785
        Height = 35
        TabOrder = 0
        object Label12: TLabel
          Left = 3
          Top = 12
          Width = 22
          Height = 14
          Caption = 'O.P.:'
        end
        object Label13: TLabel
          Left = 94
          Top = 12
          Width = 43
          Height = 14
          Caption = 'Emiss'#227'o:'
        end
        object Label14: TLabel
          Left = 205
          Top = 12
          Width = 56
          Height = 14
          Caption = 'Refer'#234'ncia:'
        end
        object Label15: TLabel
          Left = 657
          Top = 12
          Width = 26
          Height = 14
          Caption = 'Qtde:'
        end
        object EdtOpEng: TEdit
          Left = 29
          Top = 9
          Width = 61
          Height = 22
          TabStop = False
          Color = 14145495
          ReadOnly = True
          TabOrder = 0
        end
        object EdtEmissaoEng: TEdit
          Left = 137
          Top = 9
          Width = 65
          Height = 22
          TabStop = False
          Color = 14145495
          ReadOnly = True
          TabOrder = 1
          StyleElements = [seClient, seBorder]
        end
        object EdtReferEnge: TEdit
          Left = 261
          Top = 9
          Width = 76
          Height = 22
          TabStop = False
          Color = 14145495
          ReadOnly = True
          TabOrder = 2
        end
        object EdtDescriEnge: TEdit
          Left = 338
          Top = 9
          Width = 316
          Height = 22
          TabStop = False
          Color = 14145495
          ReadOnly = True
          TabOrder = 3
        end
        object CurrQtdeEnge: TCurrencyEdit
          Left = 684
          Top = 9
          Width = 97
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 14145495
          DecimalPlaces = 4
          DisplayFormat = '#,##.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
      end
      object dbgEngGeral: TDBGrid
        Left = 0
        Top = 50
        Width = 1314
        Height = 461
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsEngeGeral
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnDblClick = dbgEngGeralDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'SEQUENCIA'
            Title.Caption = 'Sequ'#234'ncia'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPE_DESCRICAO'
            Title.Caption = 'Opera'#231#227'o'
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSV_DTENTREGA'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Restantes'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSV_QTDE'
            Title.Caption = 'Qtde produzir'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAB_PRODUZINDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAB_PRODUZIDA'
            Title.Caption = 'Concluida'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAB_REFUGADA'
            Width = 70
            Visible = True
          end>
      end
    end
  end
  object Panel6: TPanel [1]
    Left = 0
    Top = 0
    Width = 1322
    Height = 135
    Align = alTop
    TabOrder = 1
    object Grp_Ops: TGroupBox
      Left = 858
      Top = 50
      Width = 161
      Height = 62
      TabOrder = 4
      object Chk_Pendente: TCheckBox
        Left = 16
        Top = 32
        Width = 133
        Height = 17
        Caption = 'OP'#39's com pend'#234'ncias'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        OnClick = Chk_PendenteClick
      end
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 42
      Width = 850
      Height = 71
      Caption = 'Filtrar Ordens de Produ'#231#227'o'
      TabOrder = 0
      object Label9: TLabel
        Left = 672
        Top = 22
        Width = 50
        Height = 14
        Caption = 'Data Final:'
      end
      object Label10: TLabel
        Left = 450
        Top = 22
        Width = 69
        Height = 14
        Caption = 'Campo busca:'
      end
      object Label11: TLabel
        Left = 562
        Top = 22
        Width = 54
        Height = 14
        Caption = 'Data Inicial:'
      end
      object Panel8: TPanel
        Left = 3
        Top = 16
        Width = 430
        Height = 51
        BevelOuter = bvLowered
        TabOrder = 0
        object Rad_Todas: TRadioButton
          Left = 337
          Top = 28
          Width = 51
          Height = 17
          Caption = '&Todas'
          TabOrder = 5
          OnClick = Rad_TodasClick
        end
        object Panel9: TPanel
          Left = 9
          Top = 6
          Width = 14
          Height = 16
          ParentCustomHint = False
          BevelOuter = bvLowered
          Color = clBlack
          ParentBackground = False
          TabOrder = 6
          StyleElements = []
        end
        object Rad_Concluida_Parcial: TRadioButton
          Left = 153
          Top = 6
          Width = 121
          Height = 17
          Caption = 'Concluida P&arcial'
          TabOrder = 1
          OnClick = Rad_TodasClick
        end
        object Rad_Producao: TRadioButton
          Left = 30
          Top = 5
          Width = 68
          Height = 17
          Caption = 'Prod&u'#231#227'o'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = Rad_TodasClick
        end
        object Panel7: TPanel
          Left = 317
          Top = 7
          Width = 14
          Height = 15
          BevelOuter = bvLowered
          Color = clBlue
          ParentBackground = False
          TabOrder = 7
          StyleElements = []
        end
        object Panel10: TPanel
          Left = 133
          Top = 6
          Width = 14
          Height = 15
          BevelOuter = bvLowered
          Color = clMaroon
          ParentBackground = False
          TabOrder = 8
          StyleElements = []
        end
        object Rad_Concluida: TRadioButton
          Left = 337
          Top = 5
          Width = 75
          Height = 17
          Caption = 'Co&nclu'#237'das'
          TabOrder = 2
          OnClick = Rad_ConcluidaClick
        end
        object Panel11: TPanel
          Left = 133
          Top = 28
          Width = 14
          Height = 15
          BevelOuter = bvLowered
          Color = 50688
          ParentBackground = False
          TabOrder = 9
          StyleElements = []
        end
        object Rad_Estornada: TRadioButton
          Left = 30
          Top = 28
          Width = 73
          Height = 18
          Caption = '&Estornadas'
          TabOrder = 3
          OnClick = Rad_EstornadaClick
        end
        object Panel12: TPanel
          Left = 9
          Top = 28
          Width = 14
          Height = 15
          BevelOuter = bvLowered
          Color = clRed
          ParentBackground = False
          TabOrder = 10
          StyleElements = []
        end
        object Panel13: TPanel
          Left = 317
          Top = 28
          Width = 14
          Height = 15
          BevelOuter = bvLowered
          Color = clSilver
          ParentBackground = False
          TabOrder = 11
          StyleElements = []
        end
        object Rad_Almoxarifado: TRadioButton
          Left = 152
          Top = 27
          Width = 82
          Height = 17
          Caption = 'Almo&xarifado'
          Enabled = False
          TabOrder = 4
          OnClick = Rad_TodasClick
        end
      end
      object dta: TJvDateEdit
        Left = 561
        Top = 37
        Width = 104
        Height = 22
        ShowNullDate = False
        TabOrder = 2
      end
      object dtb: TJvDateEdit
        Left = 672
        Top = 37
        Width = 104
        Height = 22
        ShowNullDate = False
        TabOrder = 3
      end
      object ComboBuscaCampo: TComboBox
        Left = 450
        Top = 37
        Width = 105
        Height = 22
        ItemIndex = 0
        TabOrder = 1
        Text = 'Data Emiss'#227'o'
        Items.Strings = (
          'Data Emiss'#227'o'
          'Data Entrega'
          'Data Fabrica'#231#227'o'
          'Data Validade')
      end
    end
    object Grp_Pesquisa: TGroupBox
      Left = 4
      Top = 0
      Width = 573
      Height = 41
      Caption = 'Pesquisa'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 1
      object Rd_OS: TRadioButton
        Left = 5
        Top = 16
        Width = 45
        Height = 17
        Caption = '&O.P.'
        TabOrder = 0
        OnClick = Rd_OSClick
      end
      object Rd_Pedido: TRadioButton
        Left = 199
        Top = 16
        Width = 55
        Height = 18
        Caption = 'Pe&dido'
        TabOrder = 1
        OnClick = Rd_OSClick
      end
      object Rd_Refer: TRadioButton
        Left = 86
        Top = 16
        Width = 76
        Height = 17
        Caption = '&Refer'#234'ncia'
        TabOrder = 2
        OnClick = Rd_OSClick
      end
      object Rd_Descricao: TRadioButton
        Left = 290
        Top = 16
        Width = 71
        Height = 18
        Caption = 'De&scri'#231#227'o'
        TabOrder = 3
        OnClick = Rd_OSClick
      end
      object Rd_Num_Lote: TRadioButton
        Left = 398
        Top = 16
        Width = 71
        Height = 18
        Caption = 'N'#186' do &Lote'
        TabOrder = 4
        OnClick = Rd_OSClick
      end
      object Rd_Cliente: TRadioButton
        Left = 505
        Top = 16
        Width = 53
        Height = 18
        Caption = 'Cliente'
        TabOrder = 5
        OnClick = Rd_OSClick
      end
    end
    object BitCancelar: TBitBtn
      Left = 921
      Top = 30
      Width = 100
      Height = 21
      Caption = '&Cancelar'
      TabOrder = 2
    end
    object BitPesquisar: TBitBtn
      Left = 921
      Top = 3
      Width = 100
      Height = 21
      Caption = '&Pesquisar'
      TabOrder = 3
      OnClick = BitPesquisarClick
    end
    object GrpBusca: TGroupBox
      Left = 583
      Top = 0
      Width = 322
      Height = 41
      Caption = 'Busca'
      TabOrder = 5
      object Edt_Nome: TEdit
        Left = 4
        Top = 15
        Width = 39
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = Edt_NomeEnter
        OnExit = Edt_NomeExit
        OnKeyPress = Edt_NomeKeyPress
      end
    end
  end
  inherited coCalcula: TACBrCalculadora
    Top = 400
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 136
    Top = 416
  end
  inherited DBConn: TSQLConnection
    Top = 241
  end
  inherited qAux: TSQLQuery
    Top = 405
  end
  inherited qAux2: TSQLQuery
    Top = 404
  end
  inherited qAux3: TSQLQuery
    Top = 404
  end
  inherited qAuxEstornaItem: TSQLQuery
    Left = 562
    Top = 104
  end
  object SqlCdsOPImp: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT f1.FTC_ETAPAS, e1.PED_NUMERO_PED_CLIENTE, '#9'O1.EMP_CODIGO,' +
      ' '#9'O1.OSV_CODIGO, '#9'O1.OSV_EMISSAO, '#9'O1.PRD_REFER, '#9'P1.PGR_CODIGO,' +
      #9'P1.PRD_DESCRI, '#9'P1.PRD_DCVAR1, '#9'o1.OSV_ORDEM_COMPRA,'#9'o1.OSV_RES' +
      'PONSAVEL,'#9'E1.PED_DTENTRADA,'#9'E1.PED_DTSAIDA,'#9'C1.CLI_CODIGO,'#9'O1.OS' +
      'V_LOTE,'#9'O1.OSV_QTDE_SOLICITADA,'#9'O1.OSV_ESTOQUE,'#9'O1.OSV_QTDE,'#9'O1.' +
      'OSV_QTDE_CONVERTIDA,'#9'O1.OSV_QTDE1,'#9'O1.OSV_OBS1,'#9'O1.OSV_OBS2,'#9'O1.' +
      'OSV_OBS3,'#9'O1.OSV_OBS4,'#9'O1.OSV_OBS5,'#9'O1.OSV_OBS6,'#9'O1.OSV_OBS7,'#9'O1' +
      '.PED_CODIGO,'#9'O1.OSV_VARIACAO,'#9'C1.CLI_RAZAO, F1.FTC_TUP, O1.OSV_P' +
      'RECOUNIT,  O1.CEL_CODIGO,'#9'O1.OSV_STATUS,'#9'F1.FTC_PROC1,'#9'F1.FTC_PR' +
      'OC2,'#9'F1.FTC_PROC3,'#9'F1.FTC_PROC4,'#9'F1.FTC_PROC5,'#9'F1.FTC_PROC6,'#9'F1.' +
      'FTC_PROC7,'#9'F1.FTC_PROC8,'#9'O1.OSV_DTENTREGA,'#9'O1.OSV_CONCLUSAO,'#9'P1.' +
      'PRD_COMPL,'#9'P1.PRD_UND,'#9'C1.CLI_FONE,'#9'C1.CLI_CELULAR,'#9'C1.CLI_ENDER' +
      'E,'#9'C1.CLI_BAIRRO FROM'#9'OSV0001 O1 JOIN PRD0000 P1 ON'#9'('#9'O1.PRD_REF' +
      'ER = P1.PRD_REFER'#9') LEFT JOIN PED0000 E1 ON('#9'E1.PED_CODIGO = O1.' +
      'PED_CODIGO)'#9'AND(E1.EMP_CODIGO = O1.EMP_CODIGO) LEFT JOIN CLI0000' +
      ' C1 ON'#9'(C1.CLI_CODIGO = O1.CLI_CODIGO'#9') LEFT JOIN FTC0000 F1 ON'#9 +
      '(F1.PRD_REFER = O1.PRD_REFER)'
    DataSet.MaxBlobSize = 1
    DataSet.Params = <>
    FilterOptions = [foCaseInsensitive]
    MasterSource = DataCadastros.DsAtividade
    PacketRecords = 0
    Params = <>
    OnCalcFields = SqlCdsOPImpCalcFields
    CommandText = 
      'SELECT f1.FTC_ETAPAS, e1.PED_NUMERO_PED_CLIENTE, '#9'O1.EMP_CODIGO,' +
      ' '#9'O1.OSV_CODIGO, '#9'O1.OSV_EMISSAO, '#9'O1.PRD_REFER, '#9'P1.PGR_CODIGO,' +
      #9'P1.PRD_DESCRI, '#9'P1.PRD_DCVAR1, '#9'o1.OSV_ORDEM_COMPRA,'#9'o1.OSV_RES' +
      'PONSAVEL,'#9'E1.PED_DTENTRADA,'#9'E1.PED_DTSAIDA,'#9'C1.CLI_CODIGO,'#9'O1.OS' +
      'V_LOTE,'#9'O1.OSV_QTDE_SOLICITADA,'#9'O1.OSV_ESTOQUE,'#9'O1.OSV_QTDE,'#9'O1.' +
      'OSV_QTDE_CONVERTIDA,'#9'O1.OSV_QTDE1,'#9'O1.OSV_OBS1,'#9'O1.OSV_OBS2,'#9'O1.' +
      'OSV_OBS3,'#9'O1.OSV_OBS4,'#9'O1.OSV_OBS5,'#9'O1.OSV_OBS6,'#9'O1.OSV_OBS7,'#9'O1' +
      '.PED_CODIGO,'#9'O1.OSV_VARIACAO,'#9'C1.CLI_RAZAO, F1.FTC_TUP, O1.OSV_P' +
      'RECOUNIT,  O1.CEL_CODIGO,'#9'O1.OSV_STATUS,'#9'F1.FTC_PROC1,'#9'F1.FTC_PR' +
      'OC2,'#9'F1.FTC_PROC3,'#9'F1.FTC_PROC4,'#9'F1.FTC_PROC5,'#9'F1.FTC_PROC6,'#9'F1.' +
      'FTC_PROC7,'#9'F1.FTC_PROC8,'#9'O1.OSV_DTENTREGA,'#9'O1.OSV_CONCLUSAO,'#9'P1.' +
      'PRD_COMPL,'#9'P1.PRD_UND,'#9'C1.CLI_FONE,'#9'C1.CLI_CELULAR,'#9'C1.CLI_ENDER' +
      'E,'#9'C1.CLI_BAIRRO FROM'#9'OSV0001 O1 JOIN PRD0000 P1 ON'#9'('#9'O1.PRD_REF' +
      'ER = P1.PRD_REFER'#9') LEFT JOIN PED0000 E1 ON('#9'E1.PED_CODIGO = O1.' +
      'PED_CODIGO)'#9'AND(E1.EMP_CODIGO = O1.EMP_CODIGO) LEFT JOIN CLI0000' +
      ' C1 ON'#9'(C1.CLI_CODIGO = O1.CLI_CODIGO'#9') LEFT JOIN FTC0000 F1 ON'#9 +
      '(F1.PRD_REFER = O1.PRD_REFER)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 416
    Top = 258
    object SqlCdsOPImpPED_NUMERO_PED_CLIENTE: TStringField
      FieldName = 'PED_NUMERO_PED_CLIENTE'
    end
    object SqlCdsOPImpEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsOPImpOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Required = True
      Size = 12
    end
    object SqlCdsOPImpOSV_EMISSAO: TSQLTimeStampField
      FieldName = 'OSV_EMISSAO'
    end
    object SqlCdsOPImpPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object SqlCdsOPImpPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
    object SqlCdsOPImpPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object SqlCdsOPImpPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object SqlCdsOPImpOSV_ORDEM_COMPRA: TStringField
      FieldName = 'OSV_ORDEM_COMPRA'
      Size = 30
    end
    object SqlCdsOPImpOSV_RESPONSAVEL: TStringField
      FieldName = 'OSV_RESPONSAVEL'
      Size = 50
    end
    object SqlCdsOPImpOSV_DTENTREGA: TSQLTimeStampField
      FieldName = 'OSV_DTENTREGA'
    end
    object SqlCdsOPImpPED_DTENTRADA: TSQLTimeStampField
      FieldName = 'PED_DTENTRADA'
    end
    object SqlCdsOPImpPED_DTSAIDA: TSQLTimeStampField
      FieldName = 'PED_DTSAIDA'
    end
    object SqlCdsOPImpCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object SqlCdsOPImpOSV_LOTE: TStringField
      FieldName = 'OSV_LOTE'
      Size = 13
    end
    object SqlCdsOPImpOSV_QTDE_SOLICITADA: TFMTBCDField
      FieldName = 'OSV_QTDE_SOLICITADA'
      Precision = 18
      Size = 5
    end
    object SqlCdsOPImpOSV_ESTOQUE: TFMTBCDField
      FieldName = 'OSV_ESTOQUE'
      Precision = 18
      Size = 5
    end
    object SqlCdsOPImpOSV_QTDE: TFMTBCDField
      FieldName = 'OSV_QTDE'
      Precision = 18
      Size = 5
    end
    object SqlCdsOPImpOSV_QTDE_CONVERTIDA: TFMTBCDField
      FieldName = 'OSV_QTDE_CONVERTIDA'
      Precision = 18
      Size = 5
    end
    object SqlCdsOPImpOSV_QTDE1: TFMTBCDField
      FieldName = 'OSV_QTDE1'
      Precision = 18
      Size = 5
    end
    object SqlCdsOPImpOSV_OBS1: TStringField
      FieldName = 'OSV_OBS1'
      Size = 100
    end
    object SqlCdsOPImpOSV_OBS2: TStringField
      FieldName = 'OSV_OBS2'
      Size = 100
    end
    object SqlCdsOPImpOSV_OBS3: TStringField
      FieldName = 'OSV_OBS3'
      Size = 100
    end
    object SqlCdsOPImpOSV_OBS4: TStringField
      FieldName = 'OSV_OBS4'
      Size = 100
    end
    object SqlCdsOPImpOSV_OBS5: TStringField
      FieldName = 'OSV_OBS5'
      Size = 100
    end
    object SqlCdsOPImpOSV_OBS6: TStringField
      FieldName = 'OSV_OBS6'
      Size = 100
    end
    object SqlCdsOPImpOSV_OBS7: TStringField
      FieldName = 'OSV_OBS7'
      Size = 100
    end
    object SqlCdsOPImpPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsOPImpOSV_VARIACAO: TStringField
      FieldName = 'OSV_VARIACAO'
      Size = 12
    end
    object SqlCdsOPImpCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object SqlCdsOPImpFTC_TUP: TFMTBCDField
      FieldName = 'FTC_TUP'
      Precision = 18
      Size = 5
    end
    object SqlCdsOPImpOSV_PRECOUNIT: TFMTBCDField
      FieldName = 'OSV_PRECOUNIT'
      Precision = 18
      Size = 5
    end
    object SqlCdsOPImpCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      Size = 3
    end
    object SqlCdsOPImpOSV_STATUS: TStringField
      FieldName = 'OSV_STATUS'
      Size = 1
    end
    object SqlCdsOPImpFTC_PROC1: TStringField
      FieldName = 'FTC_PROC1'
      Size = 100
    end
    object SqlCdsOPImpFTC_PROC2: TStringField
      FieldName = 'FTC_PROC2'
      Size = 100
    end
    object SqlCdsOPImpFTC_PROC3: TStringField
      FieldName = 'FTC_PROC3'
      Size = 15
    end
    object SqlCdsOPImpFTC_PROC4: TStringField
      FieldName = 'FTC_PROC4'
      Size = 100
    end
    object SqlCdsOPImpFTC_PROC5: TStringField
      FieldName = 'FTC_PROC5'
      Size = 100
    end
    object SqlCdsOPImpFTC_PROC6: TStringField
      FieldName = 'FTC_PROC6'
      Size = 100
    end
    object SqlCdsOPImpFTC_PROC7: TStringField
      FieldName = 'FTC_PROC7'
      Size = 100
    end
    object SqlCdsOPImpFTC_PROC8: TStringField
      FieldName = 'FTC_PROC8'
      Size = 100
    end
    object SqlCdsOPImpPRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      Size = 150
    end
    object SqlCdsOPImpPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsOPImpCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object SqlCdsOPImpCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 11
    end
    object SqlCdsOPImpCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 50
    end
    object SqlCdsOPImpCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object SqlCdsOPImpOSV_STATUS_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'OSV_STATUS_CC'
      Size = 15
      Calculated = True
    end
    object SqlCdsOPImpOSV_CONCLUSAO: TSQLTimeStampField
      FieldName = 'OSV_CONCLUSAO'
    end
    object SqlCdsOPImpFTC_ETAPAS: TBlobField
      FieldName = 'FTC_ETAPAS'
      Size = 1
    end
  end
  object DsOP: TDataSource
    DataSet = SqlCdsOPImp
    Left = 32
    Top = 362
  end
  object DsCelOP: TDataSource
    DataSet = SqlcdsCelOp
    Left = 32
    Top = 320
  end
  object SqlcdsCelOp: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'C1.CEL_CODIGO,'#13#10'C2.CEL_NOME,'#13#10'C1.CEM_DTENTROU,'#13#10'C1.CEM_T' +
      'UPTRAB,'#13#10'C1.CEM_DTCONCLUIU,'#13#10'C1.CEM_TRABALHO'#13#10'from CEL_MOV03 C1'#13 +
      #10'LEFT JOIN CEL0000 C2 ON C1.CEL_CODIGO = C2.CEL_CODIGO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FilterOptions = [foCaseInsensitive]
    Params = <>
    CommandText = 
      'select'#13#10'C1.CEL_CODIGO,'#13#10'C2.CEL_NOME,'#13#10'C1.CEM_DTENTROU,'#13#10'C1.CEM_T' +
      'UPTRAB,'#13#10'C1.CEM_DTCONCLUIU,'#13#10'C1.CEM_TRABALHO'#13#10'from CEL_MOV03 C1'#13 +
      #10'LEFT JOIN CEL0000 C2 ON C1.CEL_CODIGO = C2.CEL_CODIGO'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 152
    Top = 208
    object SqlcdsCelOpCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object SqlcdsCelOpCEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 35
    end
    object SqlcdsCelOpCEM_TUPTRAB: TFMTBCDField
      FieldName = 'CEM_TUPTRAB'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object SqlcdsCelOpCEM_TRABALHO: TStringField
      FieldName = 'CEM_TRABALHO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object SqlcdsCelOpCEM_DTENTROU: TDateField
      FieldName = 'CEM_DTENTROU'
      ProviderFlags = [pfInUpdate]
    end
    object SqlcdsCelOpCEM_DTCONCLUIU: TDateField
      FieldName = 'CEM_DTCONCLUIU'
      ProviderFlags = [pfInUpdate]
    end
  end
  object SqlCdsParam: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select '#13#10'P2.PMT_OPS_CONCLUIR,'#13#10'P2.PMT_CELULAPROD, '#13#10'P2.PMT_VARIA' +
      'COES,'#13#10'P2.PMT_MDL_OP, '#13#10'P2.PMT_PROCESPROD, '#13#10'P2.PMT_EMPRESACLASS' +
      'E,'#13#10'P2.PMT_UNFORMULA '#13#10'from PRMT0001 P2'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FilterOptions = [foCaseInsensitive]
    Params = <>
    CommandText = 
      'select '#13#10'P2.PMT_OPS_CONCLUIR,'#13#10'P2.PMT_CELULAPROD, '#13#10'P2.PMT_VARIA' +
      'COES,'#13#10'P2.PMT_MDL_OP, '#13#10'P2.PMT_PROCESPROD, '#13#10'P2.PMT_EMPRESACLASS' +
      'E,'#13#10'P2.PMT_UNFORMULA '#13#10'from PRMT0001 P2'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 264
    Top = 92
    object SqlCdsParamPMT_CELULAPROD: TStringField
      FieldName = 'PMT_CELULAPROD'
      Size = 1
    end
    object SqlCdsParamPMT_VARIACOES: TStringField
      FieldName = 'PMT_VARIACOES'
      Size = 1
    end
    object SqlCdsParamPMT_MDL_OP: TStringField
      FieldName = 'PMT_MDL_OP'
      Size = 1
    end
    object SqlCdsParamPMT_PROCESPROD: TStringField
      FieldName = 'PMT_PROCESPROD'
      Size = 1
    end
    object SqlCdsParamPMT_UNFORMULA: TSmallintField
      FieldName = 'PMT_UNFORMULA'
    end
    object SqlCdsParamPMT_EMPRESACLASSE: TStringField
      FieldName = 'PMT_EMPRESACLASSE'
      Size = 1
    end
    object SqlCdsParamPMT_OPS_CONCLUIR: TStringField
      FieldName = 'PMT_OPS_CONCLUIR'
      Size = 1
    end
  end
  object SqlCdsItemOP: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'O2.OSV_CODIGO,'#13#10'O2.PRD_REFER_ITENS,'#13#10'O2.OSI_UC,'#13#10'O2.OSI_' +
      'QTDE1,'#13#10'O2.OSI_QTDE2,'#13#10'O2.OSI_QTDE3,'#13#10'O2.OSI_QTDE4,'#13#10'O2.OSI_QTDE' +
      '5,'#13#10'O2.OSI_QTDE6,'#13#10'O2.OSI_QTDE7,'#13#10'O2.OSI_QTDE8,'#13#10'O2.OSI_RESERVAD' +
      'O,'#13#10'O2.OSI_EMPENHO,'#13#10'O2.OSI_APONTADO,'#13#10'P2.PRD_DESCRI,'#13#10'P2.PRD_UN' +
      'D,'#13#10'P2.PRD_LOTE,'#13#10'P3.PTI_SIGLA,'#13#10'F4.FTC_TUP, F4.FTC_ETAPAS,'#13#10'O2.' +
      'OSI_STATUSEMPENHO,'#13#10'case O2.OSI_STATUSEMPENHO'#13#10'  when '#39'N'#39' then '#39 +
      'Pendente'#39#13#10'  when '#39'P'#39' then '#39'Parcial'#39#13#10'  when '#39'S'#39' then '#39'Conclu'#237'do' +
      #39#13#10'end as wStatusEmpenho,'#13#10'(SELECT FIRST 1 GR.PRG_DESCRICAO FROM' +
      ' PED_IT01 T1 LEFT JOIN PRD_GRADE GR ON (GR.PRG_REGISTRO = T1.PRG' +
      '_REGISTRO) WHERE T1.PED_CODIGO = OSV1.PED_CODIGO AND T1.PRD_REFE' +
      'R = O2.PRD_REFER_ITENS) AS GRADE'#13#10'from OSV_IT02 O2'#13#10'left join PR' +
      'D0000 P2 on (O2.PRD_REFER_ITENS = P2.PRD_REFER)'#13#10'left join PRD_T' +
      'IPO P3 on (P3.PTI_CODIGO = P2.PTI_CODIGO)'#13#10'left join FTC0000 F4 ' +
      'on (F4.PRD_REFER = P2.PRD_REFER)'#13#10'LEFT JOIN OSV0001 OSV1 ON (OSV' +
      '1.OSV_CODIGO = O2.OSV_CODIGO)'
    DataSet.MaxBlobSize = 1
    DataSet.Params = <>
    FilterOptions = [foCaseInsensitive]
    Params = <>
    OnCalcFields = SqlCdsItemOPCalcFields
    CommandText = 
      'select'#13#10'O2.OSV_CODIGO,'#13#10'O2.PRD_REFER_ITENS,'#13#10'O2.OSI_UC,'#13#10'O2.OSI_' +
      'QTDE1,'#13#10'O2.OSI_QTDE2,'#13#10'O2.OSI_QTDE3,'#13#10'O2.OSI_QTDE4,'#13#10'O2.OSI_QTDE' +
      '5,'#13#10'O2.OSI_QTDE6,'#13#10'O2.OSI_QTDE7,'#13#10'O2.OSI_QTDE8,'#13#10'O2.OSI_RESERVAD' +
      'O,'#13#10'O2.OSI_EMPENHO,'#13#10'O2.OSI_APONTADO,'#13#10'P2.PRD_DESCRI,'#13#10'P2.PRD_UN' +
      'D,'#13#10'P2.PRD_LOTE,'#13#10'P3.PTI_SIGLA,'#13#10'F4.FTC_TUP, F4.FTC_ETAPAS,'#13#10'O2.' +
      'OSI_STATUSEMPENHO,'#13#10'case O2.OSI_STATUSEMPENHO'#13#10'  when '#39'N'#39' then '#39 +
      'Pendente'#39#13#10'  when '#39'P'#39' then '#39'Parcial'#39#13#10'  when '#39'S'#39' then '#39'Conclu'#237'do' +
      #39#13#10'end as wStatusEmpenho,'#13#10'(SELECT FIRST 1 GR.PRG_DESCRICAO FROM' +
      ' PED_IT01 T1 LEFT JOIN PRD_GRADE GR ON (GR.PRG_REGISTRO = T1.PRG' +
      '_REGISTRO) WHERE T1.PED_CODIGO = OSV1.PED_CODIGO AND T1.PRD_REFE' +
      'R = O2.PRD_REFER_ITENS) AS GRADE'#13#10'from OSV_IT02 O2'#13#10'left join PR' +
      'D0000 P2 on (O2.PRD_REFER_ITENS = P2.PRD_REFER)'#13#10'left join PRD_T' +
      'IPO P3 on (P3.PTI_CODIGO = P2.PTI_CODIGO)'#13#10'left join FTC0000 F4 ' +
      'on (F4.PRD_REFER = P2.PRD_REFER)'#13#10'LEFT JOIN OSV0001 OSV1 ON (OSV' +
      '1.OSV_CODIGO = O2.OSV_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 200
    Top = 296
    object SqlCdsItemOPOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Size = 8
    end
    object SqlCdsItemOPPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsItemOPOSI_RESERVADO: TFMTBCDField
      FieldName = 'OSI_RESERVADO'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object SqlCdsItemOPOSI_EMPENHO: TFMTBCDField
      FieldName = 'OSI_EMPENHO'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object SqlCdsItemOPOSI_APONTADO: TFMTBCDField
      FieldName = 'OSI_APONTADO'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object SqlCdsItemOPPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsItemOPPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsItemOPPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object SqlCdsItemOPOSI_STATUSEMPENHO: TStringField
      FieldName = 'OSI_STATUSEMPENHO'
      Size = 1
    end
    object SqlCdsItemOPWSTATUSEMPENHO: TStringField
      FieldName = 'WSTATUSEMPENHO'
      FixedChar = True
      Size = 9
    end
    object SqlCdsItemOPSepara_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'Separa_CC'
      Size = 8
      Calculated = True
    end
    object SqlCdsItemOPPRD_LOTE: TStringField
      FieldName = 'PRD_LOTE'
      Size = 15
    end
    object SqlCdsItemOPFTC_TUP: TFMTBCDField
      FieldName = 'FTC_TUP'
      Precision = 15
      Size = 4
    end
    object SqlCdsItemOPOSI_QTDE1: TFMTBCDField
      FieldName = 'OSI_QTDE1'
      Precision = 15
      Size = 16
    end
    object SqlCdsItemOPOSI_QTDE2: TFMTBCDField
      FieldName = 'OSI_QTDE2'
      Precision = 15
      Size = 16
    end
    object SqlCdsItemOPOSI_QTDE3: TFMTBCDField
      FieldName = 'OSI_QTDE3'
      Precision = 15
      Size = 16
    end
    object SqlCdsItemOPOSI_QTDE4: TFMTBCDField
      FieldName = 'OSI_QTDE4'
      Precision = 15
      Size = 16
    end
    object SqlCdsItemOPOSI_QTDE5: TFMTBCDField
      FieldName = 'OSI_QTDE5'
      Precision = 15
      Size = 16
    end
    object SqlCdsItemOPOSI_QTDE6: TFMTBCDField
      FieldName = 'OSI_QTDE6'
      Precision = 15
      Size = 16
    end
    object SqlCdsItemOPOSI_QTDE7: TFMTBCDField
      FieldName = 'OSI_QTDE7'
      Precision = 15
      Size = 16
    end
    object SqlCdsItemOPOSI_QTDE8: TFMTBCDField
      FieldName = 'OSI_QTDE8'
      Precision = 15
      Size = 16
    end
    object SqlCdsItemOPQTDE3_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE3_CC'
      Calculated = True
    end
    object SqlCdsItemOPQTDE1_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE1_CC'
      Calculated = True
    end
    object SqlCdsItemOPQTDE2_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE2_CC'
      Calculated = True
    end
    object SqlCdsItemOPQTDE4_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE4_CC'
      Calculated = True
    end
    object SqlCdsItemOPQTDE5_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE5_CC'
      Calculated = True
    end
    object SqlCdsItemOPQTDE6_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE6_CC'
      Calculated = True
    end
    object SqlCdsItemOPQTDE7_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE7_CC'
      Calculated = True
    end
    object SqlCdsItemOPQTDE8_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE8_CC'
      Calculated = True
    end
    object SqlCdsItemOPQTDE_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'QTDE_CC'
      currency = False
      Calculated = True
    end
    object SqlCdsItemOPGRADE: TStringField
      FieldName = 'GRADE'
      Size = 100
    end
    object SqlCdsItemOPOSI_UC: TFMTBCDField
      FieldName = 'OSI_UC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.000000'
      Precision = 9
      Size = 18
    end
    object SqlCdsItemOPTOTALUC_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTALUC_CC'
      Calculated = True
    end
    object SqlCdsItemOPFTC_ETAPAS: TBlobField
      FieldName = 'FTC_ETAPAS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object DsItemOP: TDataSource
    DataSet = SqlCdsItemOP
    Left = 272
    Top = 280
  end
  object SqlCdsProduto: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select '#13#10'P1.PRD_REFER,'#13#10'P1.PRD_DCVAR1,'#13#10'P1.PRD_DCVAR2,'#13#10'P1.PRD_D' +
      'CVAR3,'#13#10'P1.PRD_DCVAR4,'#13#10'P1.PRD_DCVAR5,'#13#10'P1.PRD_DCVAR6,'#13#10'P1.PRD_D' +
      'CVAR7,'#13#10'P1.PRD_DCVAR8'#13#10'from'#13#10'PRD0000 P1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FilterOptions = [foCaseInsensitive]
    Params = <>
    CommandText = 
      'Select '#13#10'P1.PRD_REFER,'#13#10'P1.PRD_DCVAR1,'#13#10'P1.PRD_DCVAR2,'#13#10'P1.PRD_D' +
      'CVAR3,'#13#10'P1.PRD_DCVAR4,'#13#10'P1.PRD_DCVAR5,'#13#10'P1.PRD_DCVAR6,'#13#10'P1.PRD_D' +
      'CVAR7,'#13#10'P1.PRD_DCVAR8'#13#10'from'#13#10'PRD0000 P1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 200
    Top = 344
    object SqlCdsProdutoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsProdutoPRD_DCVAR1: TStringField
      FieldName = 'PRD_DCVAR1'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR2: TStringField
      FieldName = 'PRD_DCVAR2'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR3: TStringField
      FieldName = 'PRD_DCVAR3'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR4: TStringField
      FieldName = 'PRD_DCVAR4'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR5: TStringField
      FieldName = 'PRD_DCVAR5'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR6: TStringField
      FieldName = 'PRD_DCVAR6'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR7: TStringField
      FieldName = 'PRD_DCVAR7'
      Size = 12
    end
    object SqlCdsProdutoPRD_DCVAR8: TStringField
      FieldName = 'PRD_DCVAR8'
      Size = 12
    end
  end
  object DsProduto: TDataSource
    DataSet = SqlCdsProduto
    Left = 272
    Top = 336
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DsItemOP
    UserName = 'DBPipeline2'
    Left = 720
    Top = 216
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'OSV_CODIGO'
      FieldName = 'OSV_CODIGO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'PRD_REFER_ITENS'
      FieldName = 'PRD_REFER_ITENS'
      FieldLength = 11
      DisplayWidth = 11
      Position = 1
    end
    object ppDBPipeline2ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'OSI_RESERVADO'
      FieldName = 'OSI_RESERVADO'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 2
    end
    object ppDBPipeline2ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'OSI_EMPENHO'
      FieldName = 'OSI_EMPENHO'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 3
    end
    object ppDBPipeline2ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'OSI_APONTADO'
      FieldName = 'OSI_APONTADO'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 4
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = 'PRD_DESCRI'
      FieldName = 'PRD_DESCRI'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object ppDBPipeline2ppField7: TppField
      FieldAlias = 'PRD_UND'
      FieldName = 'PRD_UND'
      FieldLength = 3
      DisplayWidth = 3
      Position = 6
    end
    object ppDBPipeline2ppField8: TppField
      FieldAlias = 'PTI_SIGLA'
      FieldName = 'PTI_SIGLA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 7
    end
    object ppDBPipeline2ppField9: TppField
      FieldAlias = 'OSI_STATUSEMPENHO'
      FieldName = 'OSI_STATUSEMPENHO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 8
    end
    object ppDBPipeline2ppField10: TppField
      FieldAlias = 'WSTATUSEMPENHO'
      FieldName = 'WSTATUSEMPENHO'
      FieldLength = 9
      DisplayWidth = 9
      Position = 9
    end
    object ppDBPipeline2ppField11: TppField
      FieldAlias = 'Separa_CC'
      FieldName = 'Separa_CC'
      FieldLength = 8
      DisplayWidth = 8
      Position = 10
    end
    object ppDBPipeline2ppField12: TppField
      FieldAlias = 'PRD_LOTE'
      FieldName = 'PRD_LOTE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 11
    end
    object ppDBPipeline2ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'FTC_TUP'
      FieldName = 'FTC_TUP'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 12
    end
    object ppDBPipeline2ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'OSI_QTDE1'
      FieldName = 'OSI_QTDE1'
      FieldLength = 16
      DataType = dtDouble
      DisplayWidth = 16
      Position = 13
    end
    object ppDBPipeline2ppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'OSI_QTDE2'
      FieldName = 'OSI_QTDE2'
      FieldLength = 16
      DataType = dtDouble
      DisplayWidth = 16
      Position = 14
    end
    object ppDBPipeline2ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'OSI_QTDE3'
      FieldName = 'OSI_QTDE3'
      FieldLength = 16
      DataType = dtDouble
      DisplayWidth = 16
      Position = 15
    end
    object ppDBPipeline2ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'OSI_QTDE4'
      FieldName = 'OSI_QTDE4'
      FieldLength = 16
      DataType = dtDouble
      DisplayWidth = 16
      Position = 16
    end
    object ppDBPipeline2ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'OSI_QTDE5'
      FieldName = 'OSI_QTDE5'
      FieldLength = 16
      DataType = dtDouble
      DisplayWidth = 16
      Position = 17
    end
    object ppDBPipeline2ppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'OSI_QTDE6'
      FieldName = 'OSI_QTDE6'
      FieldLength = 16
      DataType = dtDouble
      DisplayWidth = 16
      Position = 18
    end
    object ppDBPipeline2ppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'OSI_QTDE7'
      FieldName = 'OSI_QTDE7'
      FieldLength = 16
      DataType = dtDouble
      DisplayWidth = 16
      Position = 19
    end
    object ppDBPipeline2ppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'OSI_QTDE8'
      FieldName = 'OSI_QTDE8'
      FieldLength = 16
      DataType = dtDouble
      DisplayWidth = 16
      Position = 20
    end
    object ppDBPipeline2ppField22: TppField
      FieldAlias = 'QTDE3_CC'
      FieldName = 'QTDE3_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 21
    end
    object ppDBPipeline2ppField23: TppField
      FieldAlias = 'QTDE1_CC'
      FieldName = 'QTDE1_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 22
    end
    object ppDBPipeline2ppField24: TppField
      FieldAlias = 'QTDE2_CC'
      FieldName = 'QTDE2_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 23
    end
    object ppDBPipeline2ppField25: TppField
      FieldAlias = 'QTDE4_CC'
      FieldName = 'QTDE4_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 24
    end
    object ppDBPipeline2ppField26: TppField
      FieldAlias = 'QTDE5_CC'
      FieldName = 'QTDE5_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 25
    end
    object ppDBPipeline2ppField27: TppField
      FieldAlias = 'QTDE6_CC'
      FieldName = 'QTDE6_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 26
    end
    object ppDBPipeline2ppField28: TppField
      FieldAlias = 'QTDE7_CC'
      FieldName = 'QTDE7_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 27
    end
    object ppDBPipeline2ppField29: TppField
      FieldAlias = 'QTDE8_CC'
      FieldName = 'QTDE8_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 28
    end
    object ppDBPipeline2ppField30: TppField
      FieldAlias = 'QTDE_CC'
      FieldName = 'QTDE_CC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 29
    end
    object ppDBPipeline2ppField31: TppField
      FieldAlias = 'GRADE'
      FieldName = 'GRADE'
      FieldLength = 100
      DisplayWidth = 100
      Position = 30
    end
    object ppDBPipeline2ppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'OSI_UC'
      FieldName = 'OSI_UC'
      FieldLength = 18
      DataType = dtDouble
      DisplayWidth = 10
      Position = 31
    end
    object ppDBPipeline2ppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALUC_CC'
      FieldName = 'TOTALUC_CC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 32
    end
    object ppDBPipeline2ppField34: TppField
      FieldAlias = 'FTC_ETAPAS'
      FieldName = 'FTC_ETAPAS'
      FieldLength = 1
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 33
      Searchable = False
      Sortable = False
    end
  end
  object ppRelOSP01: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 25000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'X:\developer\adjutor\fontesrelatorios\RELOSP01'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 848
    Top = 209
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 40217
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 5821
        mmLeft = 0
        mmTop = 25400
        mmWidth = 22754
        BandType = 0
        LayerName = Foreground
      end
      object LBL_01_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4092
        mmLeft = 265
        mmTop = 0
        mmWidth = 30621
        BandType = 0
        LayerName = Foreground
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 4233
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 9525
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'FOLHA DE PESAGEM (PRODU'#199#195'O)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4092
        mmLeft = 52230
        mmTop = 5027
        mmWidth = 59831
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_EMISSAO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 178859
        mmTop = 5027
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 1562
        mmTop = 10319
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 22466
        mmTop = 10319
        mmWidth = 69334
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Essencia(s)=>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 1852
        mmTop = 26458
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Produzir:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 93655
        mmTop = 10319
        mmWidth = 13767
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'OP N'#186'.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 166689
        mmTop = 10319
        mmWidth = 11904
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 179652
        mmTop = 10319
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground
      end
      object LblSolicitado: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblTipo2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 160338
        mmTop = 10319
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 5821
        mmLeft = 22490
        mmTop = 25400
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 5821
        mmLeft = 44186
        mmTop = 25400
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape4'
        mmHeight = 5821
        mmLeft = 65881
        mmTop = 25400
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape5'
        mmHeight = 5821
        mmLeft = 87577
        mmTop = 25400
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape6'
        mmHeight = 5821
        mmLeft = 109273
        mmTop = 25400
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground
      end
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape7'
        mmHeight = 5292
        mmLeft = 130969
        mmTop = 25400
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground
      end
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape8'
        mmHeight = 5292
        mmLeft = 152665
        mmTop = 25400
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground
      end
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape9'
        mmHeight = 5821
        mmLeft = 174361
        mmTop = 25400
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2893
        mmLeft = 22754
        mmTop = 26458
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR2'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2893
        mmLeft = 44450
        mmTop = 26458
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR3'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2893
        mmLeft = 66146
        mmTop = 26458
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR4'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2893
        mmLeft = 87842
        mmTop = 26458
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR5'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2893
        mmLeft = 109538
        mmTop = 26458
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR8'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2893
        mmLeft = 174625
        mmTop = 26458
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppShape10: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape10'
        mmHeight = 9790
        mmLeft = 0
        mmTop = 30427
        mmWidth = 22754
        BandType = 0
        LayerName = Foreground
      end
      object ppShape11: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape11'
        mmHeight = 9790
        mmLeft = 22490
        mmTop = 30427
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'MAT.PRIMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 3713
        mmTop = 32015
        mmWidth = 15593
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PESO Kg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 23353
        mmTop = 32015
        mmWidth = 20131
        BandType = 0
        LayerName = Foreground
      end
      object ppShape12: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape12'
        mmHeight = 9790
        mmLeft = 44186
        mmTop = 30427
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LOTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 51329
        mmTop = 32015
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppShape13: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape13'
        mmHeight = 4763
        mmLeft = 65881
        mmTop = 30427
        mmWidth = 43656
        BandType = 0
        LayerName = Foreground
      end
      object ppShape14: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape14'
        mmHeight = 5292
        mmLeft = 65881
        mmTop = 34925
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground
      end
      object ppShape15: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape15'
        mmHeight = 5292
        mmLeft = 87577
        mmTop = 34925
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'QUANTIDADE EM GRAMAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 69303
        mmTop = 31485
        mmWidth = 36548
        BandType = 0
        LayerName = Foreground
      end
      object ppShape16: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape16'
        mmHeight = 9790
        mmLeft = 109273
        mmTop = 30427
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground
      end
      object ppShape17: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape17'
        mmHeight = 5292
        mmLeft = 130969
        mmTop = 34925
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground
      end
      object ppShape18: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape18'
        mmHeight = 5292
        mmLeft = 152665
        mmTop = 34925
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground
      end
      object ppShape19: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape19'
        mmHeight = 4763
        mmLeft = 130969
        mmTop = 30427
        mmWidth = 43921
        BandType = 0
        LayerName = Foreground
      end
      object ppShape20: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape20'
        mmHeight = 9790
        mmLeft = 174361
        mmTop = 30427
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'P. BRUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 69056
        mmTop = 35983
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TARA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 93063
        mmTop = 35983
        mmWidth = 7549
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'P. LIQUIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 111125
        mmTop = 32015
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VISTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 180747
        mmTop = 32015
        mmWidth = 8396
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR7'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2893
        mmLeft = 153723
        mmTop = 26458
        mmWidth = 18785
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DCVAR6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2893
        mmLeft = 131498
        mmTop = 26458
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'INICIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 133615
        mmTop = 35983
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'FINAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 156369
        mmTop = 35983
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label102'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ADI'#199#195'O DE MAT.PRIMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 136587
        mmTop = 30956
        mmWidth = 31891
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 186532
        mmTop = 529
        mmWidth = 9260
        BandType = 0
        LayerName = Foreground
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 15346
        mmWidth = 195792
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel82: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label82'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 353
        mmTop = 21167
        mmWidth = 12434
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText80: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText24'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 13580
        mmTop = 21167
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText81: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText81'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 26015
        mmTop = 21167
        mmWidth = 113506
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel83: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label83'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LOTE N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 143934
        mmTop = 21167
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText82: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText82'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_LOTE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 160338
        mmTop = 21167
        mmWidth = 28046
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel84: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label34'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PEDIDO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 16669
        mmWidth = 11853
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText83: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText83'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PED_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 12435
        mmTop = 16669
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText84: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText84'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_DTENTREGA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 160338
        mmTop = 16669
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel85: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label85'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'ENTREGA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 135202
        mmTop = 16933
        mmWidth = 22754
        BandType = 0
        LayerName = Foreground
      end
      object LblProduzir: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblProduzir'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'KG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 127267
        mmTop = 10319
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText87: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText87'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE_CONVERTIDA'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 140229
        mmTop = 10319
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel87: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label87'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = #1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 131763
        mmTop = 10319
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 107421
        mmTop = 10319
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER_ITENS'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3246
        mmLeft = 794
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTALUC_CC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,####0.000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3246
        mmLeft = 23283
        mmTop = 529
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 4233
        mmWidth = 196057
        BandType = 4
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 22490
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 44186
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 65881
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 87577
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 109273
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 130969
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line101'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 152665
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 174361
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.Weight = 1.000000000000000000
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 193675
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 0
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText86: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText86'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_LOTE'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 46302
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 131498
      mmPrintPosition = 0
      object ppShape24: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape24'
        mmHeight = 36513
        mmLeft = 0
        mmTop = 5027
        mmWidth = 196321
        BandType = 7
        LayerName = Foreground
      end
      object ppShape21: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape21'
        mmHeight = 5292
        mmLeft = 0
        mmTop = 0
        mmWidth = 44450
        BandType = 7
        LayerName = Foreground
      end
      object ppShape22: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape22'
        mmHeight = 5292
        mmLeft = 44186
        mmTop = 0
        mmWidth = 152136
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 1588
        mmTop = 1058
        mmWidth = 16933
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTALUC_CC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,####0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3246
        mmLeft = 23283
        mmTop = 1058
        mmWidth = 20373
        BandType = 7
        LayerName = Foreground
      end
      object ppShape23: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape23'
        mmHeight = 39423
        mmLeft = 0
        mmTop = 41275
        mmWidth = 196321
        BandType = 7
        LayerName = Foreground
      end
      object ppShape25: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape25'
        mmHeight = 22225
        mmLeft = 0
        mmTop = 80433
        mmWidth = 196321
        BandType = 7
        LayerName = Foreground
      end
      object ppShape26: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape26'
        mmHeight = 22225
        mmLeft = 0
        mmTop = 80433
        mmWidth = 30692
        BandType = 7
        LayerName = Foreground
      end
      object ppShape27: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape27'
        mmHeight = 22225
        mmLeft = 30163
        mmTop = 80433
        mmWidth = 33073
        BandType = 7
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 91811
        mmWidth = 196057
        BandType = 7
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 97102
        mmWidth = 196057
        BandType = 7
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 86519
        mmTop = 86254
        mmWidth = 109538
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.Tq. ARMAZENADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 30956
        mmTop = 82286
        mmWidth = 30692
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.Tq. PREPARO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 1852
        mmTop = 82286
        mmWidth = 25929
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBSERVA'#199#213'ES:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 63500
        mmTop = 82286
        mmWidth = 22754
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 4498
        mmTop = 11377
        mmWidth = 182563
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText18'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS2'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 4576
        mmTop = 15347
        mmWidth = 182563
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS3'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 4498
        mmTop = 19315
        mmWidth = 182563
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText21'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS5'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 4498
        mmTop = 27252
        mmWidth = 182563
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText22'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 4498
        mmTop = 31221
        mmWidth = 182563
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText23'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS7'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 4498
        mmTop = 35190
        mmWidth = 182563
        BandType = 7
        LayerName = Foreground
      end
      object ppShape28: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape28'
        mmHeight = 8467
        mmLeft = 0
        mmTop = 102394
        mmWidth = 196321
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' Lote Produzido ='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 50006
        mmTop = 104775
        mmWidth = 28310
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ph = '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 116416
        mmTop = 104775
        mmWidth = 7408
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Densidade ='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 144463
        mmTop = 104775
        mmWidth = 15610
        BandType = 7
        LayerName = Foreground
      end
      object ppShape29: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape29'
        mmHeight = 10583
        mmLeft = 0
        mmTop = 110596
        mmWidth = 116417
        BandType = 7
        LayerName = Foreground
      end
      object ppShape30: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape30'
        mmHeight = 20902
        mmLeft = 116152
        mmTop = 110596
        mmWidth = 26723
        BandType = 7
        LayerName = Foreground
      end
      object ppShape31: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape301'
        mmHeight = 20902
        mmLeft = 142611
        mmTop = 110596
        mmWidth = 53711
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = '[_] Aprovado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 117740
        mmTop = 114300
        mmWidth = 23019
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = '[_] Reprovado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 117740
        mmTop = 122238
        mmWidth = 23283
        BandType = 7
        LayerName = Foreground
      end
      object ppShape32: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape32'
        mmHeight = 10583
        mmLeft = 0
        mmTop = 120915
        mmWidth = 116417
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Provid'#234'ncias:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 143140
        mmTop = 110596
        mmWidth = 17992
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label28'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'SA'#205'DA DO LABORAT'#211'RIO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 794
        mmTop = 110596
        mmWidth = 35419
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label29'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA: ____/____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 794
        mmTop = 116152
        mmWidth = 40481
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label30'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'HORA: ______:______'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 42333
        mmTop = 116152
        mmWidth = 30427
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label301'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VISTO:__________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 73554
        mmTop = 116152
        mmWidth = 37253
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label32'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'RETORNO DO LABORAT'#211'RIO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 529
        mmTop = 120915
        mmWidth = 40922
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label33'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA: ____/____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 529
        mmTop = 126471
        mmWidth = 40481
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label302'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'HORA: ______:______'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 42069
        mmTop = 126471
        mmWidth = 30427
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label35'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VISTO:__________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 73290
        mmTop = 126471
        mmWidth = 37253
        BandType = 7
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 142611
        mmTop = 120650
        mmWidth = 53446
        BandType = 7
        LayerName = Foreground
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 142875
        mmTop = 126207
        mmWidth = 53446
        BandType = 7
        LayerName = Foreground
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 161661
        mmTop = 115623
        mmWidth = 34131
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel76: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PROCESSO DA PRODU'#199#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3810
        mmLeft = 794
        mmTop = 42069
        mmWidth = 48683
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel77: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label31'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Observa'#231#245'es da Ordem de Produ'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3810
        mmLeft = 529
        mmTop = 5821
        mmWidth = 82903
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText85: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText85'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_LOTE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 79111
        mmTop = 104775
        mmWidth = 28046
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText20'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS4'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 4498
        mmTop = 23283
        mmWidth = 182563
        BandType = 7
        LayerName = Foreground
      end
      object mPROC_PRC_M1: TppMemo
        OnPrint = mPROC_PRC_M1Print
        DesignLayer = ppDesignLayer1
        UserName = 'mPROC_PRC_M1'
        Caption = 'mPROC_PRC_M1'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        mmHeight = 31926
        mmLeft = 4498
        mmTop = 46831
        mmWidth = 182563
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppRelOSP02: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 8000
    PrinterSetup.mmMarginRight = 9000
    PrinterSetup.mmMarginTop = 25000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Developer\Adjutor\fontesrelatorios\RELOSP02.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 816
    Top = 209
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 42598
      mmPrintPosition = 0
      object LBL_02_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 265
        mmTop = 0
        mmWidth = 23707
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 3704
        mmWidth = 198702
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 10054
        mmWidth = 198702
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_EMISSAO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 180975
        mmTop = 0
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 47625
        mmTop = 4498
        mmWidth = 30956
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label37'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 169069
        mmTop = 0
        mmWidth = 11430
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBL_00_EMPRESA1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ordem de Produ'#231#227'o No.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4939
        mmLeft = 0
        mmTop = 4498
        mmWidth = 47413
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label40'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'T.U.P.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4939
        mmLeft = 173567
        mmTop = 4498
        mmWidth = 13335
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText26'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_TUP'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4939
        mmLeft = 187061
        mmTop = 4498
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label39'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PRODUTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 19050
        mmWidth = 19224
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText27'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 19754
        mmTop = 19050
        mmWidth = 24871
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText29'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_PROD_CC'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 45858
        mmTop = 19050
        mmWidth = 152136
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label41'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'QTDE PRODUZIR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 53884
        mmTop = 24606
        mmWidth = 27692
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText30'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 82458
        mmTop = 24430
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label401'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TUP TOTAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 165171
        mmTop = 24606
        mmWidth = 17728
        BandType = 0
        LayerName = Foreground1
      end
      object ppVarToTup: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'VarToTup'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 183431
        mmTop = 24606
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape33: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape33'
        mmHeight = 13229
        mmLeft = 0
        mmTop = 29017
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label43'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Mat'#233'ria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3096
        mmLeft = 2910
        mmTop = 31308
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape34: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape34'
        mmHeight = 13229
        mmLeft = 13406
        mmTop = 29017
        mmWidth = 55563
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape35: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape35'
        mmHeight = 13229
        mmLeft = 75934
        mmTop = 29017
        mmWidth = 19578
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label44'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Quantidade ->'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 47361
        mmTop = 37042
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label45'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Consumo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 78400
        mmTop = 30956
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label46'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Unidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 78760
        mmTop = 38629
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape36: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape36'
        mmHeight = 13229
        mmLeft = 94895
        mmTop = 29017
        mmWidth = 16407
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape39: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape39'
        mmHeight = 13229
        mmLeft = 136285
        mmTop = 29017
        mmWidth = 20620
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape42: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape42'
        mmHeight = 13229
        mmLeft = 111129
        mmTop = 29017
        mmWidth = 19616
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape43: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape401'
        mmHeight = 13229
        mmLeft = 156468
        mmTop = 29017
        mmWidth = 42324
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label47'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 118534
        mmTop = 30956
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel73: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label73'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Situa'#231#227'o.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4939
        mmLeft = 81227
        mmTop = 4498
        mmWidth = 18838
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText44'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_STATUS_CC'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 100277
        mmTop = 4498
        mmWidth = 39158
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line27'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 17992
        mmWidth = 198702
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label36'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PEDIDO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 10848
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText45'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PED_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 12435
        mmTop = 10848
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel59: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label59'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Data de Entrega:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 78846
        mmTop = 10848
        mmWidth = 20955
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText46'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_DTENTREGA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 100277
        mmTop = 10848
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel74: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label74'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 14288
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText48'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 12435
        mmTop = 14288
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText49: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText49'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 22225
        mmTop = 14288
        mmWidth = 136261
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape44: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape44'
        mmHeight = 13229
        mmLeft = 68263
        mmTop = 29017
        mmWidth = 7936
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel78: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label78'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 142970
        mmTop = 30956
        mmWidth = 5292
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel79: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label79'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Separada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 2910
        mmLeft = 140499
        mmTop = 37042
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel80: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label80'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'QTDE SOLITADA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 24606
        mmWidth = 26632
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel81: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label81'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'QTDE ESTOQUE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 106709
        mmTop = 24606
        mmWidth = 26897
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText51: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText303'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_ESTOQUE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 134497
        mmTop = 24606
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel133: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label133'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'por'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 81756
        mmTop = 34925
        mmWidth = 3440
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel172: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label172'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Prima'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 3096
        mmLeft = 2563
        mmTop = 35626
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText35'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE_SOLICITADA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 28751
        mmTop = 24606
        mmWidth = 21258
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel173: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label173'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'QTDE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 99484
        mmTop = 34660
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel174: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label174'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CONSUMO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 116503
        mmTop = 37042
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel175: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label175'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBSERVA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 169069
        mmTop = 34925
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape37: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        mmHeight = 13229
        mmLeft = 130452
        mmTop = 29104
        mmWidth = 6012
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 5027
        mmWidth = 198702
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line8'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 68263
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line10'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 94730
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line101'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 111214
        mmTop = 0
        mmWidth = 1236
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line12'
        Border.Weight = 1.000000000000000000
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 197292
        mmTop = 0
        mmWidth = 1412
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText32'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER_ITENS'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 794
        mmWidth = 12435
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line23'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 13494
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line24'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 0
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line25'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 130277
        mmTop = 0
        mmWidth = 1412
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line39'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 156380
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText33'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 14288
        mmTop = 794
        mmWidth = 52914
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText50: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText50'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSI_UC'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 76466
        mmTop = 794
        mmWidth = 16222
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText56: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText56'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTALUC_CC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 113069
        mmTop = 794
        mmWidth = 16409
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line34'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 75758
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText57: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText501'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PTI_SIGLA'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 69056
        mmTop = 794
        mmWidth = 5821
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText502'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'QTDE_CC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 95867
        mmTop = 794
        mmWidth = 14380
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line31'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 136247
        mmTop = 0
        mmWidth = 1412
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText31'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_UND'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 132027
        mmTop = 794
        mmWidth = 5923
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 66675
      mmPrintPosition = 0
      object ppShape45: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape45'
        Anchors = [atLeft, atBottom]
        ReprintOnOverFlow = True
        mmHeight = 32279
        mmLeft = 115
        mmTop = 0
        mmWidth = 199232
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label48'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ESTOQUE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 4498
        mmTop = 2381
        mmWidth = 18256
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label49'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'MONTAGEM:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 4766
        mmTop = 25929
        mmWidth = 17636
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label50'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CORTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 8202
        mmTop = 10054
        mmWidth = 14552
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label51'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'FABRICA'#199#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 3441
        mmTop = 17727
        mmWidth = 19489
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label52'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 23019
        mmTop = 2381
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label501'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 23019
        mmTop = 10054
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label54'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 23019
        mmTop = 17727
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label55'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 23019
        mmTop = 25929
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label56'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 53711
        mmTop = 2381
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label57'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 53711
        mmTop = 10054
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label58'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 53711
        mmTop = 17727
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel60: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label60'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 53711
        mmTop = 25929
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel61: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label61'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 153459
        mmTop = 2381
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel62: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label62'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 153459
        mmTop = 10054
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label63'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 153459
        mmTop = 17727
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel64: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label601'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 153459
        mmTop = 25929
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel65: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label65'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 122767
        mmTop = 2381
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel66: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label66'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 122767
        mmTop = 10054
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel67: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label67'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 122767
        mmTop = 17727
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel68: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label68'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 122767
        mmTop = 25929
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel69: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label69'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'GERENCIA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 106804
        mmTop = 25929
        mmWidth = 15768
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel70: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label70'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'EXPEDI'#199#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 104952
        mmTop = 17727
        mmWidth = 17602
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel71: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label502'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'QUALIDADE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 105659
        mmTop = 10054
        mmWidth = 17284
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel72: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label72'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DISTRIBUI'#199#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 101865
        mmTop = 2381
        mmWidth = 20602
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line102'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 32279
        mmLeft = 98954
        mmTop = 0
        mmWidth = 1588
        BandType = 7
        LayerName = Foreground1
      end
      object ppShape46: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape46'
        mmHeight = 34660
        mmLeft = 0
        mmTop = 32014
        mmWidth = 199232
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText58: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText58'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 35719
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText59: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText59'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS2'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 39952
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel75: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label75'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Observa'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 794
        mmTop = 32015
        mmWidth = 16933
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText60: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText60'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS3'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 44186
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText61: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText61'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS4'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 48419
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText62: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText62'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS5'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 52652
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText63: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText63'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 56886
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBText64: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText701'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS7'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 61119
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground1
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060E
        566172546F5475704F6E43616C630B50726F6772616D54797065070B74745072
        6F63656475726506536F75726365067D70726F63656475726520566172546F54
        75704F6E43616C63287661722056616C75653A2056617269616E74293B0D0A62
        6567696E0D0A0D0A202056616C7565203A3D20204442506970656C696E65315B
        274F53565F51544445275D2A4442506970656C696E65315B274654435F545550
        275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D650608566172
        546F547570094576656E744E616D6506064F6E43616C63074576656E74494402
        21084361726574506F730102000200000000}
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DsOP
    UserName = 'DBPipeline1'
    Left = 632
    Top = 218
  end
  object SqlCdsEmpenho: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'Select'#13#10'E1.*,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND,'#13#10'T1.PTI_SIGLA'#13#10'from E' +
      'PM_0000 E1'#13#10'LEFT JOIN PRD0000 P1 ON (E1.PRD_REFER_ITENS = P1.PRD' +
      '_REFER)'#13#10'LEFT JOIN PRD_TIPO T1 ON (P1.PTI_CODIGO = T1.PTI_CODIGO' +
      ')'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FilterOptions = [foCaseInsensitive]
    Params = <>
    OnCalcFields = SqlCdsEmpenhoCalcFields
    CommandText = 
      'Select'#13#10'E1.*,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND,'#13#10'T1.PTI_SIGLA'#13#10'from E' +
      'PM_0000 E1'#13#10'LEFT JOIN PRD0000 P1 ON (E1.PRD_REFER_ITENS = P1.PRD' +
      '_REFER)'#13#10'LEFT JOIN PRD_TIPO T1 ON (P1.PTI_CODIGO = T1.PTI_CODIGO' +
      ')'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 760
    Top = 384
    object SqlCdsEmpenhoEPM_CODIGO: TIntegerField
      FieldName = 'EPM_CODIGO'
      Required = True
    end
    object SqlCdsEmpenhoOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Size = 8
    end
    object SqlCdsEmpenhoPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsEmpenhoEPM_QTDE: TFMTBCDField
      FieldName = 'EPM_QTDE'
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
      MaxValue = '2.2'
      MinValue = '1'
      Precision = 15
    end
    object SqlCdsEmpenhoEPM_DATAEMPENHO: TDateField
      FieldName = 'EPM_DATAEMPENHO'
    end
    object SqlCdsEmpenhoEPM_TIPOEMPENHO: TStringField
      FieldName = 'EPM_TIPOEMPENHO'
      Size = 1
    end
    object SqlCdsEmpenhoEPM_NUMDOC: TStringField
      FieldName = 'EPM_NUMDOC'
      Size = 12
    end
    object SqlCdsEmpenhoEPM_ORIGEM: TStringField
      FieldName = 'EPM_ORIGEM'
      Size = 2
    end
    object SqlCdsEmpenhoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsEmpenhoEPM_STATUS: TStringField
      FieldName = 'EPM_STATUS'
      Size = 1
    end
    object SqlCdsEmpenhoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsEmpenhoPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsEmpenhoPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object SqlCdsEmpenhoTIPO_EMPENHO_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'TIPO_EMPENHO_CC'
      Size = 10
      Calculated = True
    end
    object SqlCdsEmpenhoPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
    end
    object SqlCdsEmpenhoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 5
    end
    object SqlCdsEmpenhoPRDL_LOTE: TStringField
      FieldName = 'PRDL_LOTE'
      Size = 30
    end
  end
  object DsEmpenho: TDataSource
    DataSet = SqlCdsEmpenho
    Left = 792
    Top = 320
  end
  object DsEstoque: TDataSource
    DataSet = SqlCdsEstoque
    Left = 784
    Top = 272
  end
  object SqlCdsEstoque: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select'#13#10'O2.OSI_REGISTRO,'#13#10'O2.EMP_CODIGO,'#13#10'O2.OSV_CODIGO,'#13#10'O2.PRD' +
      '_REFER_ITENS,'#13#10'P1.PRD_CODIGO,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND,'#13#10'P2.P' +
      'TI_SIGLA,'#13#10'CAST((((O2.osi_qtde1+O2.osi_qtde2+O2.osi_qtde3+O2.osi' +
      '_qtde4+O2.osi_qtde5+O2.osi_qtde6+O2.osi_qtde7+O2.osi_qtde8))-(O2' +
      '.osi_reservado + O2.osi_empenho)) AS NUMERIC(15,4)) AS FALTA_EMP' +
      'ENHAR,'#13#10'((P1.PRD_ESTOQUE+P1.PRD_ENTRADA)-(P1.PRD_SAIDA+P1.PRD_RE' +
      'SERVA+P1.PRD_EMPENHO)) AS WSALDO'#13#10'from OSV_IT02 O2'#13#10'left join PR' +
      'D0000 P1 ON (O2.PRD_REFER_ITENS = P1.PRD_REFER)'#13#10'left join PRD_T' +
      'IPO P2 on (P1.PTI_CODIGO = P2.PTI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FilterOptions = [foCaseInsensitive]
    Params = <>
    CommandText = 
      'select'#13#10'O2.OSI_REGISTRO,'#13#10'O2.EMP_CODIGO,'#13#10'O2.OSV_CODIGO,'#13#10'O2.PRD' +
      '_REFER_ITENS,'#13#10'P1.PRD_CODIGO,'#13#10'P1.PRD_DESCRI,'#13#10'P1.PRD_UND,'#13#10'P2.P' +
      'TI_SIGLA,'#13#10'CAST((((O2.osi_qtde1+O2.osi_qtde2+O2.osi_qtde3+O2.osi' +
      '_qtde4+O2.osi_qtde5+O2.osi_qtde6+O2.osi_qtde7+O2.osi_qtde8))-(O2' +
      '.osi_reservado + O2.osi_empenho)) AS NUMERIC(15,4)) AS FALTA_EMP' +
      'ENHAR,'#13#10'((P1.PRD_ESTOQUE+P1.PRD_ENTRADA)-(P1.PRD_SAIDA+P1.PRD_RE' +
      'SERVA+P1.PRD_EMPENHO)) AS WSALDO'#13#10'from OSV_IT02 O2'#13#10'left join PR' +
      'D0000 P1 ON (O2.PRD_REFER_ITENS = P1.PRD_REFER)'#13#10'left join PRD_T' +
      'IPO P2 on (P1.PTI_CODIGO = P2.PTI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 680
    Top = 280
    object SqlCdsEstoqueOSI_REGISTRO: TIntegerField
      FieldName = 'OSI_REGISTRO'
      Required = True
    end
    object SqlCdsEstoqueEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsEstoqueOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Size = 8
    end
    object SqlCdsEstoquePRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsEstoquePRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsEstoquePRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object SqlCdsEstoquePTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object SqlCdsEstoqueFALTA_EMPENHAR: TFMTBCDField
      FieldName = 'FALTA_EMPENHAR'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object SqlCdsEstoqueWSALDO: TFMTBCDField
      FieldName = 'WSALDO'
      DisplayFormat = '#,##0.0000'
      Precision = 15
    end
    object SqlCdsEstoquePRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 4
    end
  end
  object imgList1: TImageList
    Height = 15
    Left = 210
    Top = 90
    Bitmap = {
      494C010103000500040010000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000000F0000000100200000000000000F
      000000000000000000000000000000000000E7EFF700E7EFF700E7EFF700E7EF
      F700E7EFF700E7EFF700E7EFF700E7EFF700E7EFF700E7EFF700E7EFF700E7EF
      F700E7EFF700E7EFF700E7EFF700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400848484000000
      000000000000000000000000000000000000000000000000000000FF00000084
      0000008400008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      8400000084008484840084848400000000000000FF0000000000848484008484
      8400000000000000000000000000000000000000000000000000008400000084
      0000008400000084000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      8400000084000000000084848400848484000000840000008400000000008484
      8400000000000000000000000000000000000000000000000000008400000084
      0000008400000084000000840000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      FF00000084000000840000000000000084000000840000008400000084000000
      0000000000000000000000000000000000000000000000000000008400000084
      00000084000000FF000000840000008400008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000FF000000840000008400000084000000840000008400000000000000
      0000000000000000000000000000000000000000000000000000008400000084
      0000840000000000000000FF0000008400000084000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000FF0000008400000084000000840084848400848484000000
      000000000000000000000000000000000000000000000000000000FF00000084
      000084000000000000000000000000FF00000084000000840000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000FF0000008400000084000000840000000000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000840000008400008400
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000008400000084000000FF000000840000008400000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000008400000084
      0000840000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000008484
      84000000FF000000840000000000848484000000FF0000008400000084000000
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000084
      0000008400008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000008400000084008484840000000000000000000000FF00000084000000
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000008400008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000FF0000000000000000000000000000000000000000000000FF000000
      8400C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636B7300636B7300636B7300636B
      7300636B7300636B7300636B7300636B7300636B7300636B7300636B7300636B
      7300636B7300636B7300636B7300FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000400000000F0000000100010000000000780000000000000000000000
      000000000000000000000000FFFFFF000000FFFFFFFF00000000FFFFE7FF0000
      0000F39FC3FF00000000E10FC1FF00000000E00FC0FF00000000E01FC07F0000
      0000F03FC43F00000000F81FC61F00000000F80FFF0700000000F807FF830000
      0000E007FFC300000000F187FFE300000000F7C7FFFF00000000FFFFFFFF0000
      0000FFFFFFFF000000000000000000000000000000000000000000000000}
  end
  object ppRelOSP03: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 25000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'X:\developer\adjutor\fontesrelatorios\RELOSP01'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 848
    Top = 257
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 40217
      mmPrintPosition = 0
      object ppShape48: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape1'
        mmHeight = 5821
        mmLeft = 0
        mmTop = 25400
        mmWidth = 87842
        BandType = 0
        LayerName = Foreground2
      end
      object LBL_03_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4092
        mmLeft = 265
        mmTop = 0
        mmWidth = 30621
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 4233
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine37: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 9525
        mmWidth = 196057
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel86: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'FOLHA DE PESAGEM (PRODU'#199#195'O)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4092
        mmLeft = 52230
        mmTop = 5027
        mmWidth = 59831
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText88: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_EMISSAO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 178859
        mmTop = 5027
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText89: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 1297
        mmTop = 10319
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText90: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 21406
        mmTop = 10319
        mmWidth = 97159
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel89: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Essencia(s)=>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 1852
        mmTop = 26458
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel90: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'PRODUZIR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 1322
        mmTop = 15874
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel91: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'OP N'#186'.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 164834
        mmTop = 10319
        mmWidth = 11639
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText91: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 177002
        mmTop = 10319
        mmWidth = 17995
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText92: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 21690
        mmTop = 15874
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel92: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LblTipo2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 98694
        mmTop = 15874
        mmWidth = 4763
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape49: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape2'
        mmHeight = 5821
        mmLeft = 87577
        mmTop = 25400
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape50: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape3'
        mmHeight = 5821
        mmLeft = 109273
        mmTop = 25400
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape54: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape7'
        mmHeight = 5292
        mmLeft = 130969
        mmTop = 25400
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape55: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape8'
        mmHeight = 5292
        mmLeft = 152665
        mmTop = 25400
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape56: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape9'
        mmHeight = 5821
        mmLeft = 174361
        mmTop = 25400
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape57: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape10'
        mmHeight = 9790
        mmLeft = 0
        mmTop = 30427
        mmWidth = 87842
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape58: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape11'
        mmHeight = 9790
        mmLeft = 87577
        mmTop = 30427
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel93: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'MAT'#201'RIA-PRIMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 1850
        mmTop = 32015
        mmWidth = 21166
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel94: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PESO Kg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 92340
        mmTop = 32015
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape59: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape12'
        mmHeight = 9790
        mmLeft = 109273
        mmTop = 30427
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel95: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LOTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 116417
        mmTop = 32015
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape64: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape17'
        mmHeight = 5292
        mmLeft = 130969
        mmTop = 34925
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape65: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape18'
        mmHeight = 5292
        mmLeft = 152665
        mmTop = 34925
        mmWidth = 22000
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape66: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape19'
        mmHeight = 4763
        mmLeft = 130969
        mmTop = 30427
        mmWidth = 43921
        BandType = 0
        LayerName = Foreground2
      end
      object ppShape67: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape20'
        mmHeight = 9790
        mmLeft = 174361
        mmTop = 30427
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel100: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label16'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VISTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 180747
        mmTop = 32015
        mmWidth = 8396
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel101: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'INICIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 133615
        mmTop = 35983
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel102: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label18'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'FINAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 156369
        mmTop = 35983
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel103: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label102'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ADI'#199#195'O DE MAT.PRIMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 136587
        mmTop = 30956
        mmWidth = 31891
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 186532
        mmTop = 529
        mmWidth = 9260
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line19'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 15346
        mmWidth = 195792
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel104: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label82'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 1324
        mmTop = 21167
        mmWidth = 14291
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText101: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText24'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 21710
        mmTop = 21167
        mmWidth = 12701
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText102: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText81'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 36265
        mmTop = 21167
        mmWidth = 108471
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel105: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label83'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LOTE N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 154534
        mmTop = 21167
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText103: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText82'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_LOTE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 170408
        mmTop = 21167
        mmWidth = 24866
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel106: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label34'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PEDIDO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 125944
        mmTop = 10319
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText104: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText83'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PED_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 139970
        mmTop = 10319
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText105: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText84'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_DTENTREGA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 172263
        mmTop = 15874
        mmWidth = 21692
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel107: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label85'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'ENTREGA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 147922
        mmTop = 15874
        mmWidth = 22224
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel108: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LblProduzir'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'KG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 42066
        mmTop = 15875
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText106: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText87'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE_CONVERTIDA'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 77006
        mmTop = 15874
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel109: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label87'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'SOLICITADA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 55568
        mmTop = 15874
        mmWidth = 19332
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText107: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER_ITENS'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3246
        mmLeft = 794
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText108: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText15'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTALUC_CC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,####0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 88106
        mmTop = 529
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine43: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 4233
        mmWidth = 196057
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine44: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line5'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 87577
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine45: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line6'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 109273
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine49: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line10'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 130969
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine50: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line101'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 152665
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine51: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line11'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 174361
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine52: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line12'
        Border.Weight = 1.000000000000000000
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 193675
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine53: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 0
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText109: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText109'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_LOTE'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 111919
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText95: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText95'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 19050
        mmTop = 529
        mmWidth = 67733
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 11377
        mmTop = 1058
        mmWidth = 16404
        BandType = 8
        LayerName = Foreground2
      end
      object ppLabel182: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label2'
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 2910
        mmTop = 1058
        mmWidth = 7673
        BandType = 8
        LayerName = Foreground2
      end
      object ppLabel218: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label218'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 30163
        mmTop = 1058
        mmWidth = 7937
        BandType = 8
        LayerName = Foreground2
      end
      object ppSystemVariable5: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SystemVariable3'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 38365
        mmTop = 1058
        mmWidth = 12700
        BandType = 8
        LayerName = Foreground2
      end
    end
    object ppSummaryBand3: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 131498
      mmPrintPosition = 0
      object ppShape68: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape24'
        mmHeight = 36513
        mmLeft = 0
        mmTop = 5027
        mmWidth = 196321
        BandType = 7
        LayerName = Foreground2
      end
      object ppShape69: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape21'
        mmHeight = 5292
        mmLeft = 0
        mmTop = 0
        mmWidth = 22754
        BandType = 7
        LayerName = Foreground2
      end
      object ppShape70: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape22'
        mmHeight = 5292
        mmLeft = 22754
        mmTop = 0
        mmWidth = 184150
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel110: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label11'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 1588
        mmTop = 1058
        mmWidth = 16933
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer3
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTALUC_CC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,####0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 88107
        mmTop = 1058
        mmWidth = 20373
        BandType = 7
        LayerName = Foreground2
      end
      object ppShape71: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape23'
        mmHeight = 39423
        mmLeft = 0
        mmTop = 41275
        mmWidth = 196321
        BandType = 7
        LayerName = Foreground2
      end
      object ppShape72: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape25'
        mmHeight = 30175
        mmLeft = 0
        mmTop = 80433
        mmWidth = 196321
        BandType = 7
        LayerName = Foreground2
      end
      object ppShape73: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape26'
        mmHeight = 30175
        mmLeft = 0
        mmTop = 80433
        mmWidth = 30692
        BandType = 7
        LayerName = Foreground2
      end
      object ppShape74: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape27'
        mmHeight = 30175
        mmLeft = 30163
        mmTop = 80433
        mmWidth = 33073
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine54: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line13'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 91811
        mmWidth = 63027
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine55: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line14'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 97102
        mmWidth = 63027
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel111: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label20'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.Tq. ARMAZENADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 30956
        mmTop = 82286
        mmWidth = 30692
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel112: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label12'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.Tq. PREPARO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 1852
        mmTop = 82286
        mmWidth = 25929
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel113: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label21'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'ANALISES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 64560
        mmTop = 82286
        mmWidth = 18249
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBText111: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText14'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 4498
        mmTop = 11377
        mmWidth = 182563
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBText112: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText18'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS2'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 4498
        mmTop = 15346
        mmWidth = 182563
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBText113: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText19'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS3'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 4498
        mmTop = 19315
        mmWidth = 182563
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBText114: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText20'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS4'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 4498
        mmTop = 23283
        mmWidth = 182563
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBText115: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText21'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS5'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 4498
        mmTop = 27252
        mmWidth = 182563
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBText116: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText22'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 4498
        mmTop = 31221
        mmWidth = 182563
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBText117: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText23'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS7'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 4498
        mmTop = 35190
        mmWidth = 182563
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel115: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label23'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ph = '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 133615
        mmTop = 105040
        mmWidth = 7408
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel116: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label24'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Densidade ='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 160338
        mmTop = 105040
        mmWidth = 15610
        BandType = 7
        LayerName = Foreground2
      end
      object ppShape76: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape29'
        mmHeight = 10583
        mmLeft = 0
        mmTop = 110596
        mmWidth = 116417
        BandType = 7
        LayerName = Foreground2
      end
      object ppShape77: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape30'
        mmHeight = 20902
        mmLeft = 116152
        mmTop = 110596
        mmWidth = 26723
        BandType = 7
        LayerName = Foreground2
      end
      object ppShape78: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape301'
        mmHeight = 20902
        mmLeft = 142611
        mmTop = 110596
        mmWidth = 53711
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel117: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label22'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = '[_] Aprovado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 117740
        mmTop = 114300
        mmWidth = 23019
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel118: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label26'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = '[_] Reprovado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 117740
        mmTop = 122238
        mmWidth = 23283
        BandType = 7
        LayerName = Foreground2
      end
      object ppShape79: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape32'
        mmHeight = 10583
        mmLeft = 0
        mmTop = 120915
        mmWidth = 116417
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel119: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label27'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Provid'#234'ncias:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 143140
        mmTop = 110596
        mmWidth = 17992
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel120: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label28'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'SA'#205'DA DO LABORAT'#211'RIO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 794
        mmTop = 110596
        mmWidth = 35419
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel121: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label29'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA: ____/____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 794
        mmTop = 116152
        mmWidth = 40481
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel122: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label30'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'HORA: ______:______'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 42333
        mmTop = 116152
        mmWidth = 30427
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel123: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label301'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VISTO:__________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 73554
        mmTop = 116152
        mmWidth = 37253
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel124: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label32'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'RETORNO DO LABORAT'#211'RIO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 529
        mmTop = 120915
        mmWidth = 40922
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel125: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label33'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA: ____/____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 529
        mmTop = 126471
        mmWidth = 40481
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel126: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label302'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'HORA: ______:______'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 42069
        mmTop = 126471
        mmWidth = 30427
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel127: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label35'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VISTO:__________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 73290
        mmTop = 126471
        mmWidth = 37253
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine57: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line16'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 142611
        mmTop = 120650
        mmWidth = 53446
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine58: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line17'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 142875
        mmTop = 126207
        mmWidth = 53446
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine59: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line18'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 161661
        mmTop = 115623
        mmWidth = 34131
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel128: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label25'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PROCESSO DA FABRICA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 794
        mmTop = 42069
        mmWidth = 52211
        BandType = 7
        LayerName = Foreground2
      end
      object ppLabel129: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label31'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Observa'#231#245'es da Ordem de Produ'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3810
        mmLeft = 529
        mmTop = 5821
        mmWidth = 75847
        BandType = 7
        LayerName = Foreground2
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line7'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 527
        mmTop = 103989
        mmWidth = 63027
        BandType = 7
        LayerName = Foreground2
      end
      object ppDBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer3
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'FTC_ETAPAS'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 29219
        mmLeft = 2910
        mmTop = 47361
        mmWidth = 174625
        BandType = 7
        LayerName = Foreground2
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppRelOSP05: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 8000
    PrinterSetup.mmMarginRight = 9000
    PrinterSetup.mmMarginTop = 25000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\JobProgram\Developer\Adjutor\FontesRelatorios\RELOSP02.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 912
    Top = 257
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand4: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 42598
      mmPrintPosition = 0
      object LBL_05_EMPRESA: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 265
        mmTop = 0
        mmWidth = 23707
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine46: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 3704
        mmWidth = 198702
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine47: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 10054
        mmWidth = 198702
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText96: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_EMISSAO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3387
        mmLeft = 180975
        mmTop = 0
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText97: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 47625
        mmTop = 4498
        mmWidth = 30956
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel96: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label37'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 169069
        mmTop = 0
        mmWidth = 11430
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel97: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'LBL_00_EMPRESA1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ordem de Produ'#231#227'o No.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4939
        mmLeft = 0
        mmTop = 4498
        mmWidth = 47413
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel98: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label40'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'T.U.P.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4939
        mmLeft = 173567
        mmTop = 4498
        mmWidth = 13335
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText127: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText26'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'FTC_TUP'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4939
        mmLeft = 187061
        mmTop = 4498
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel99: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label39'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Produto.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4939
        mmLeft = 0
        mmTop = 19050
        mmWidth = 18838
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText128: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText27'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 19050
        mmTop = 19050
        mmWidth = 24871
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText129: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText29'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_PROD_CC'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 44450
        mmTop = 19050
        mmWidth = 152136
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel130: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label41'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtde. Produzir:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 54769
        mmTop = 24606
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText130: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText30'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 80698
        mmTop = 24606
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel131: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label401'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL T.U.P.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 157427
        mmTop = 24606
        mmWidth = 23548
        BandType = 0
        LayerName = Foreground3
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'VarToTup'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '#,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 181240
        mmTop = 24606
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground3
      end
      object ppShape51: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape33'
        mmHeight = 13229
        mmLeft = 0
        mmTop = 29369
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel132: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label43'
        CharWrap = True
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'MAT. PRIMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 2910
        mmTop = 30956
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground3
      end
      object ppShape52: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape34'
        mmHeight = 13229
        mmLeft = 20902
        mmTop = 29369
        mmWidth = 49213
        BandType = 0
        LayerName = Foreground3
      end
      object ppShape53: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape35'
        mmHeight = 13229
        mmLeft = 149490
        mmTop = 29369
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel134: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label45'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Consumo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 150019
        mmTop = 30956
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel135: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label46'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 150813
        mmTop = 37042
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground3
      end
      object ppShape60: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape36'
        mmHeight = 13229
        mmLeft = 160602
        mmTop = 29369
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground3
      end
      object ppShape61: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape37'
        mmHeight = 13229
        mmLeft = 69850
        mmTop = 29369
        mmWidth = 70115
        BandType = 0
        LayerName = Foreground3
      end
      object ppShape80: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape40'
        mmHeight = 13229
        mmLeft = 173567
        mmTop = 29369
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground3
      end
      object ppShape84: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape401'
        mmHeight = 13229
        mmLeft = 186002
        mmTop = 29369
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel136: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label47'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 188119
        mmTop = 30956
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText145: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText301'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 186796
        mmTop = 36777
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel137: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label73'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Situa'#231#227'o.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4939
        mmLeft = 81227
        mmTop = 4498
        mmWidth = 18838
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText146: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText60'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_STATUS_CC'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 100277
        mmTop = 4498
        mmWidth = 39158
        BandType = 0
        LayerName = Foreground3
      end
      object ppLine48: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line33'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 17992
        mmWidth = 198702
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel138: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label36'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PEDIDO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 10848
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText147: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText61'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PED_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 12435
        mmTop = 10848
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel139: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label59'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Data do Pedido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 156951
        mmTop = 14552
        mmWidth = 20320
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText148: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText62'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PED_DTENTRADA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 177800
        mmTop = 14552
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel140: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label74'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 14288
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText149: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText63'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 12435
        mmTop = 14288
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText150: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText64'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 22225
        mmTop = 14288
        mmWidth = 130969
        BandType = 0
        LayerName = Foreground3
      end
      object ppShape85: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape47'
        mmHeight = 13229
        mmLeft = 139700
        mmTop = 29369
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel141: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label78'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 176477
        mmTop = 30427
        mmWidth = 5292
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel142: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label79'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Separada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 2910
        mmLeft = 174625
        mmTop = 36777
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel143: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label80'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtde. Solicitada:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 0
        mmTop = 24606
        mmWidth = 28152
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText151: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText302'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE_SOLICITADA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 28575
        mmTop = 24606
        mmWidth = 22490
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel144: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label81'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtde. Estoque:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4057
        mmLeft = 109009
        mmTop = 24606
        mmWidth = 25188
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText152: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText303'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_ESTOQUE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 134673
        mmTop = 24606
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel170: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label170'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Grade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 100806
        mmTop = 32015
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel171: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label171'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ordem de Compra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 152972
        mmTop = 10848
        mmWidth = 24299
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText133: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText133'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PED_NUMERO_PED_CLIENTE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 177800
        mmTop = 10848
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label6'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Data de Entrega:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 85725
        mmTop = 10848
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText134: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText134'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PED_DTSAIDA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 106627
        mmTop = 10848
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground3
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppLine60: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 5027
        mmWidth = 198702
        BandType = 4
        LayerName = Foreground3
      end
      object ppLine62: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line9'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 139700
        mmTop = 265
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground3
      end
      object ppLine64: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line101'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 160602
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground3
      end
      object ppLine66: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line12'
        Border.Weight = 1.000000000000000000
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 197644
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText153: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText32'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER_ITENS'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 794
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground3
      end
      object ppLine67: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line23'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 20902
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground3
      end
      object ppLine68: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line24'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 0
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground3
      end
      object ppLine70: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line39'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 173567
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText154: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText33'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 22754
        mmTop = 794
        mmWidth = 44979
        BandType = 4
        LayerName = Foreground3
      end
      object ppLine73: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line42'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 186002
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText155: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText50'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSI_UC'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 151077
        mmTop = 794
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText156: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText51'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'QTDE1_CC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 161925
        mmTop = 794
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText157: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText52'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'GRADE'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 70644
        mmTop = 794
        mmWidth = 68527
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText163: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText59'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTALUC_CC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 186796
        mmTop = 794
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText164: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText501'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PTI_SIGLA'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 142082
        mmTop = 1058
        mmWidth = 5821
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText165: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText47'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'Separa_CC'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 174096
        mmTop = 794
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground3
      end
      object ppLine63: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line63'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 149490
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground3
      end
      object ppLine61: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line61'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 69850
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground3
      end
    end
    object ppSummaryBand4: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 66675
      mmPrintPosition = 0
      object ppShape86: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape45'
        Anchors = [atLeft, atBottom]
        ReprintOnOverFlow = True
        mmHeight = 32279
        mmLeft = 0
        mmTop = 0
        mmWidth = 199232
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel145: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label48'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ESTOQUE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 4498
        mmTop = 2381
        mmWidth = 18256
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel146: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label49'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '[__________]:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 2646
        mmTop = 25929
        mmWidth = 20108
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel147: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label50'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'CORTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 8202
        mmTop = 10054
        mmWidth = 14552
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel148: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label51'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'MONTAGEM:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 1323
        mmTop = 17727
        mmWidth = 21431
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel149: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label52'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 23019
        mmTop = 2381
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel150: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label501'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 23019
        mmTop = 10054
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel151: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label54'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 23019
        mmTop = 17727
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel152: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label55'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 23019
        mmTop = 25929
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel153: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label56'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 53711
        mmTop = 2381
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel154: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label57'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 53711
        mmTop = 10054
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel155: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label58'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 53711
        mmTop = 17727
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel156: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label60'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 53711
        mmTop = 25929
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel157: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label61'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 153459
        mmTop = 2381
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel158: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label62'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 153459
        mmTop = 10054
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel159: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label63'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 153459
        mmTop = 17727
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel160: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label601'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '__________________________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 153459
        mmTop = 25929
        mmWidth = 40358
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel161: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label65'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 122767
        mmTop = 2381
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel162: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label66'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 122767
        mmTop = 10054
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel163: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label67'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 122767
        mmTop = 17727
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel164: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label68'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3387
        mmLeft = 122767
        mmTop = 25929
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel165: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label69'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'GERENCIA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 107156
        mmTop = 25929
        mmWidth = 15240
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel166: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label70'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'EXPEDI'#199#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 105304
        mmTop = 17727
        mmWidth = 17074
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel167: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label502'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ACABAMENTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 102394
        mmTop = 10054
        mmWidth = 20179
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel168: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label72'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DISTRIBUI'#199#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 101865
        mmTop = 2381
        mmWidth = 20602
        BandType = 7
        LayerName = Foreground3
      end
      object ppLine75: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line102'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 32279
        mmLeft = 98954
        mmTop = 0
        mmWidth = 1588
        BandType = 7
        LayerName = Foreground3
      end
      object ppShape87: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape46'
        mmHeight = 34660
        mmLeft = 0
        mmTop = 32014
        mmWidth = 199232
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText166: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText65'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 35719
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText167: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText66'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS2'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 39952
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel169: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label75'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Observa'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 794
        mmTop = 32015
        mmWidth = 16933
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText168: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText67'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS3'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 44186
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText169: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText68'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS4'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 48419
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText170: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText69'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS5'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 52652
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText171: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText70'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS6'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 56886
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText172: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText701'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_OBS7'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 61119
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground3
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060E
        566172546F5475704F6E43616C630B50726F6772616D54797065070B74745072
        6F63656475726506536F75726365067D70726F63656475726520566172546F54
        75704F6E43616C63287661722056616C75653A2056617269616E74293B0D0A62
        6567696E0D0A0D0A202056616C7565203A3D20204442506970656C696E65315B
        274F53565F51544445275D2A4442506970656C696E65315B274654435F545550
        275D3B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D650608566172
        546F547570094576656E744E616D6506064F6E43616C63074576656E74494402
        21084361726574506F730102000200000000}
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'Foreground3'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object frxOP: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41688.374658171300000000
    ReportOptions.LastChange = 42916.581599444440000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 684
    Top = 336
    Datasets = <
      item
        DataSet = frxdbdtstOrdemProducao
        DataSetName = 'frxdbdtstOrdemProducao'
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 1012.914040000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 29.811070000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clSilver
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE PRODU'#199#195'O')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Top = 48.708720000000000000
          Width = 718.110700000000000000
          Height = 75.590600000000000000
        end
        object Memo17: TfrxMemoView
          Top = 48.708720000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.Style = bsClear
          HAlign = haRight
          Memo.UTF8W = (
            'N'#250'mero da OP:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 359.055350000000000000
          Top = 48.708720000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.Style = bsClear
          HAlign = haRight
          Memo.UTF8W = (
            'N'#250'mero do Pedido:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Top = 67.606370000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.Style = bsClear
          HAlign = haRight
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Top = 105.401670000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.Style = bsClear
          HAlign = haRight
          Memo.UTF8W = (
            'Ordem de Compra:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 359.055350000000000000
          Top = 87.504020000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.Style = bsClear
          HAlign = haRight
          Memo.UTF8W = (
            'Data de Entrega:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 1.236240000000000000
          Top = 191.330860000000000000
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.Style = bsClear
          Memo.UTF8W = (
            'OBS:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 359.055350000000000000
          Top = 105.401670000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.Style = bsClear
          HAlign = haRight
          Memo.UTF8W = (
            'Respons'#225'vel:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape4: TfrxShapeView
          Top = 889.646260000000000000
          Width = 721.890230000000000000
          Height = 113.385900000000000000
        end
        object Shape5: TfrxShapeView
          Top = 889.646260000000000000
          Width = 147.401670000000000000
          Height = 37.795300000000000000
        end
        object Shape6: TfrxShapeView
          Left = 359.055350000000000000
          Top = 889.646260000000000000
          Width = 147.401670000000000000
          Height = 37.795300000000000000
        end
        object Shape7: TfrxShapeView
          Top = 927.441560000000000000
          Width = 147.401670000000000000
          Height = 37.795300000000000000
        end
        object Shape8: TfrxShapeView
          Top = 965.236860000000000000
          Width = 147.401670000000000000
          Height = 37.795300000000000000
        end
        object Shape9: TfrxShapeView
          Left = 359.055350000000000000
          Top = 927.441560000000000000
          Width = 147.401670000000000000
          Height = 37.795300000000000000
        end
        object Shape10: TfrxShapeView
          Left = 359.055350000000000000
          Top = 965.236860000000000000
          Width = 147.401670000000000000
          Height = 37.795300000000000000
        end
        object Shape11: TfrxShapeView
          Left = 147.401670000000000000
          Top = 889.646260000000000000
          Width = 211.653680000000000000
          Height = 37.795300000000000000
        end
        object Shape12: TfrxShapeView
          Left = 147.401670000000000000
          Top = 927.441560000000000000
          Width = 211.653680000000000000
          Height = 37.795300000000000000
        end
        object Shape13: TfrxShapeView
          Left = 506.457020000000000000
          Top = 889.646260000000000000
          Width = 211.653680000000000000
          Height = 37.795300000000000000
        end
        object Shape14: TfrxShapeView
          Left = 506.457020000000000000
          Top = 927.441560000000000000
          Width = 211.653680000000000000
          Height = 37.795300000000000000
        end
        object Memo10: TfrxMemoView
          Top = 870.748610000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clSilver
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'Outras Informa'#231#245'es')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Top = 889.646260000000000000
          Width = 147.401670000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Terceiriza'#231#227'o:'
            'Nota Fiscal Remessa:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 359.055350000000000000
          Top = 889.646260000000000000
          Width = 147.401670000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Terceiriza'#231#227'o:'
            'Nota Fiscal Retorno:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Top = 927.441560000000000000
          Width = 147.401670000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade Final:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 359.055350000000000000
          Top = 927.441560000000000000
          Width = 147.401670000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Liberada Por:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Top = 965.236860000000000000
          Width = 147.401670000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'N'#176' Nota Fiscal:'
            'Data:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 359.055350000000000000
          Top = 965.236860000000000000
          Width = 147.401670000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Confer'#234'ncia Final:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Top = 228.228510000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clSilver
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'OPERADOR')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 105.826840000000000000
          Top = 228.228510000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clSilver
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'OPERA'#199#195'O')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 211.653680000000000000
          Top = 228.228510000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clSilver
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'QUANT. INICIAL')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 317.480520000000000000
          Top = 228.228510000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clSilver
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'QUANT. FINAL')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 423.307360000000000000
          Top = 228.228510000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clSilver
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 529.134200000000000000
          Top = 228.228510000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clSilver
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'IN'#205'CIO')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 623.622450000000000000
          Top = 228.228510000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clSilver
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'FIM')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          Top = 247.126160000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape15: TfrxShapeView
          Top = 266.023810000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape16: TfrxShapeView
          Top = 284.921460000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape17: TfrxShapeView
          Top = 303.819110000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape18: TfrxShapeView
          Top = 322.716760000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape19: TfrxShapeView
          Top = 341.614410000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape20: TfrxShapeView
          Top = 360.512060000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape21: TfrxShapeView
          Top = 379.409710000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape22: TfrxShapeView
          Top = 398.307360000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape23: TfrxShapeView
          Top = 417.205010000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape24: TfrxShapeView
          Top = 436.102660000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape25: TfrxShapeView
          Top = 455.000310000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape26: TfrxShapeView
          Top = 473.897960000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape27: TfrxShapeView
          Top = 492.795610000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape28: TfrxShapeView
          Top = 511.693260000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape29: TfrxShapeView
          Top = 530.590910000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape30: TfrxShapeView
          Top = 549.488560000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape31: TfrxShapeView
          Top = 568.386210000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape32: TfrxShapeView
          Top = 587.283860000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape33: TfrxShapeView
          Top = 606.181510000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape34: TfrxShapeView
          Top = 625.079160000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape35: TfrxShapeView
          Top = 643.976810000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape36: TfrxShapeView
          Top = 662.874460000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape37: TfrxShapeView
          Top = 681.772110000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape38: TfrxShapeView
          Top = 700.669760000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape39: TfrxShapeView
          Top = 719.567410000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape40: TfrxShapeView
          Top = 738.465060000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape41: TfrxShapeView
          Top = 757.362710000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape42: TfrxShapeView
          Top = 776.260360000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape43: TfrxShapeView
          Top = 795.158010000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape44: TfrxShapeView
          Top = 814.055660000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape45: TfrxShapeView
          Top = 832.953310000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Shape46: TfrxShapeView
          Top = 851.850960000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
        end
        object Line1: TfrxLineView
          Left = 105.826840000000000000
          Top = 247.126160000000000000
          Height = 623.622450000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 211.653680000000000000
          Top = 247.126160000000000000
          Height = 623.622450000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 317.480520000000000000
          Top = 247.126160000000000000
          Height = 623.622450000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 423.307360000000000000
          Top = 247.126160000000000000
          Height = 623.622450000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 529.134200000000000000
          Top = 247.126160000000000000
          Height = 623.622450000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 623.622450000000000000
          Top = 247.126160000000000000
          Height = 623.622450000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          Top = 135.637910000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.Style = bsClear
          HAlign = haRight
          Memo.UTF8W = (
            'Refer'#234'ncia:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Top = 154.535560000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.Style = bsClear
          HAlign = haRight
          Memo.UTF8W = (
            'Descri'#231#227'o:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Top = 173.433210000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.Style = bsClear
          HAlign = haRight
          Memo.UTF8W = (
            'Complemento:')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxdbdtstOrdemProducaoOSV_RESPONSAVEL: TfrxMemoView
          Left = 506.457020000000000000
          Top = 105.401670000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Fill.Style = bsClear
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_RESPONSAVEL"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoOSV_CODIGO: TfrxMemoView
          Left = 133.283550000000000000
          Top = 48.708720000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.Style = bsClear
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_CODIGO"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoCLI_RAZAO: TfrxMemoView
          Left = 132.283550000000000000
          Top = 69.606370000000000000
          Width = 585.827150000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.Style = bsClear
          Memo.UTF8W = (
            
              '[frxdbdtstOrdemProducao."CLI_CODIGO"]-[frxdbdtstOrdemProducao."C' +
              'LI_RAZAO"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPED_DTSAIDA: TfrxMemoView
          Left = 506.457020000000000000
          Top = 87.504020000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.Style = bsClear
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_DTENTREGA"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPED_CODIGO: TfrxMemoView
          Left = 508.457020000000000000
          Top = 48.708720000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DataField = 'PED_CODIGO'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.Style = bsClear
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PED_CODIGO"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_DESCRI: TfrxMemoView
          Left = 132.283550000000000000
          Top = 155.535560000000000000
          Width = 585.827150000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.Style = bsClear
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_DESCRI"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_REFER: TfrxMemoView
          Left = 132.283550000000000000
          Top = 135.637910000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.Style = bsClear
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_REFER"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 359.055350000000000000
          Top = 135.637910000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.Style = bsClear
          HAlign = haRight
          Memo.UTF8W = (
            'Unidade:')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxdbdtstOrdemProducaoPRD_UND: TfrxMemoView
          Left = 506.457020000000000000
          Top = 135.637910000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_UND'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Fill.Style = bsClear
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_UND"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_COMPL: TfrxMemoView
          Left = 132.283550000000000000
          Top = 173.433210000000000000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_COMPL'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.Style = bsClear
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_COMPL"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 132.842610000000000000
          Top = 105.401670000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.Style = bsClear
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_ORDEM_COMPRA"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 0.220470000000000000
          Top = 86.929190000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.Style = bsClear
          HAlign = haRight
          Memo.UTF8W = (
            'Emiss'#227'o da OP:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 132.283550000000000000
          Top = 87.929190000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.Style = bsClear
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_EMISSAO"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 506.134200000000000000
          Top = 172.858380000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.Style = bsClear
          Memo.UTF8W = (
            'Desenho:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object wFrxRazao: TfrxMemoView
        Left = 6.000000000000000000
        Top = 11.677180000000000000
        Width = 566.929500000000000000
        Height = 15.118120000000000000
        DisplayFormat.DecimalSeparator = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[RAZAO]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Page: TfrxMemoView
        Left = 600.945270000000000000
        Top = 0.677180000000000000
        Width = 113.385900000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          'Pag. [Page#] de [TotalPages#]')
        ParentFont = False
      end
    end
  end
  object frxdbdtstOrdemProducao: TfrxDBDataset
    UserName = 'frxdbdtstOrdemProducao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PED_NUMERO_PED_CLIENTE=PED_NUMERO_PED_CLIENTE'
      'EMP_CODIGO=EMP_CODIGO'
      'OSV_CODIGO=OSV_CODIGO'
      'OSV_EMISSAO=OSV_EMISSAO'
      'PRD_REFER=PRD_REFER'
      'PGR_CODIGO=PGR_CODIGO'
      'PRD_DESCRI=PRD_DESCRI'
      'PRD_DCVAR1=PRD_DCVAR1'
      'OSV_ORDEM_COMPRA=OSV_ORDEM_COMPRA'
      'OSV_RESPONSAVEL=OSV_RESPONSAVEL'
      'OSV_DTENTREGA=OSV_DTENTREGA'
      'PED_DTENTRADA=PED_DTENTRADA'
      'PED_DTSAIDA=PED_DTSAIDA'
      'CLI_CODIGO=CLI_CODIGO'
      'OSV_LOTE=OSV_LOTE'
      'OSV_QTDE_SOLICITADA=OSV_QTDE_SOLICITADA'
      'OSV_ESTOQUE=OSV_ESTOQUE'
      'OSV_QTDE=OSV_QTDE'
      'OSV_QTDE_CONVERTIDA=OSV_QTDE_CONVERTIDA'
      'OSV_QTDE1=OSV_QTDE1'
      'OSV_OBS1=OSV_OBS1'
      'OSV_OBS2=OSV_OBS2'
      'OSV_OBS3=OSV_OBS3'
      'OSV_OBS4=OSV_OBS4'
      'OSV_OBS5=OSV_OBS5'
      'OSV_OBS6=OSV_OBS6'
      'OSV_OBS7=OSV_OBS7'
      'PED_CODIGO=PED_CODIGO'
      'OSV_VARIACAO=OSV_VARIACAO'
      'CLI_RAZAO=CLI_RAZAO'
      'FTC_TUP=FTC_TUP'
      'OSV_PRECOUNIT=OSV_PRECOUNIT'
      'CEL_CODIGO=CEL_CODIGO'
      'OSV_STATUS=OSV_STATUS'
      'FTC_PROC1=FTC_PROC1'
      'FTC_PROC2=FTC_PROC2'
      'FTC_PROC3=FTC_PROC3'
      'FTC_PROC4=FTC_PROC4'
      'FTC_PROC5=FTC_PROC5'
      'FTC_PROC6=FTC_PROC6'
      'FTC_PROC7=FTC_PROC7'
      'FTC_PROC8=FTC_PROC8'
      'PRD_COMPL=PRD_COMPL'
      'PRD_UND=PRD_UND'
      'CLI_FONE=CLI_FONE'
      'CLI_CELULAR=CLI_CELULAR'
      'CLI_ENDERE=CLI_ENDERE'
      'CLI_BAIRRO=CLI_BAIRRO'
      'OSV_STATUS_CC=OSV_STATUS_CC'
      'OSV_CONCLUSAO=OSV_CONCLUSAO')
    DataSet = SqlCdsOPImp
    BCDToCurrency = False
    Left = 516
    Top = 256
  end
  object sqlOp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DBConn
    Left = 292
    Top = 208
    object sqlOpOSV_REGISTRO: TIntegerField
      FieldName = 'OSV_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlOpOSV_PAI: TStringField
      FieldName = 'OSV_PAI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 1
    end
    object sqlOpEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object sqlOpOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object sqlOpOSV_EMISSAO: TSQLTimeStampField
      FieldName = 'OSV_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlOpOSV_VARIACAO: TStringField
      FieldName = 'OSV_VARIACAO'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object sqlOpOSV_QTDE_SOLICITADA: TFMTBCDField
      FieldName = 'OSV_QTDE_SOLICITADA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.000'
      Precision = 20
      Size = 5
    end
    object sqlOpOSV_QTDE: TFMTBCDField
      FieldName = 'OSV_QTDE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.000'
      Precision = 20
      Size = 5
    end
    object sqlOpOSV_QTDE_CONVERTIDA: TFMTBCDField
      FieldName = 'OSV_QTDE_CONVERTIDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.000'
      Precision = 20
      Size = 5
    end
    object sqlOpOSV_QTDE1: TFMTBCDField
      FieldName = 'OSV_QTDE1'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object sqlOpOSV_QTDE2: TFMTBCDField
      FieldName = 'OSV_QTDE2'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object sqlOpOSV_QTDE3: TFMTBCDField
      FieldName = 'OSV_QTDE3'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object sqlOpOSV_QTDE4: TFMTBCDField
      FieldName = 'OSV_QTDE4'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object sqlOpOSV_QTDE5: TFMTBCDField
      FieldName = 'OSV_QTDE5'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object sqlOpOSV_QTDE6: TFMTBCDField
      FieldName = 'OSV_QTDE6'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object sqlOpOSV_QTDE7: TFMTBCDField
      FieldName = 'OSV_QTDE7'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object sqlOpOSV_QTDE8: TFMTBCDField
      FieldName = 'OSV_QTDE8'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object sqlOpOSV_STATUS: TStringField
      FieldName = 'OSV_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sqlOpOSV_IMPRESSO: TStringField
      FieldName = 'OSV_IMPRESSO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sqlOpOSV_LOTE: TStringField
      FieldName = 'OSV_LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sqlOpPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object sqlOpOSV_CONCLUSAO: TSQLTimeStampField
      FieldName = 'OSV_CONCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlOpOSV_VALIDADE: TSQLTimeStampField
      FieldName = 'OSV_VALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object sqlOpFTC_TUP: TFMTBCDField
      FieldName = 'FTC_TUP'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object sqlOpOSV_PRECOUNIT: TFMTBCDField
      FieldName = 'OSV_PRECOUNIT'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object sqlOpCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sqlOpPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sqlOpPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sqlOpPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object sqlOpOSV_STATUS_SITUACAO: TStringField
      FieldName = 'OSV_STATUS_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sqlOpOSV_ESTOQUE: TFMTBCDField
      FieldName = 'OSV_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object sqlOpCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sqlOpOSV_ORDEM_COMPRA: TStringField
      FieldName = 'OSV_ORDEM_COMPRA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sqlOpOSV_RESPONSAVEL: TStringField
      FieldName = 'OSV_RESPONSAVEL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object sqlOpOSV_GERAR_PI: TStringField
      FieldName = 'OSV_GERAR_PI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sqlOpCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 55
    end
    object sqlOpPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      ProviderFlags = [pfInUpdate]
    end
    object sqlOpPRD_GERENCIA_LOTE: TStringField
      FieldName = 'PRD_GERENCIA_LOTE'
      ProviderFlags = []
      Size = 1
    end
    object sqlOpOSV_QTDE_CONCLUIDA: TFMTBCDField
      FieldName = 'OSV_QTDE_CONCLUIDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.000'
      Precision = 20
    end
    object sqlOpPRD_UND: TStringField
      FieldName = 'PRD_UND'
      ProviderFlags = []
      Size = 6
    end
    object sqlOpOSV_DTENTREGA: TSQLTimeStampField
      FieldName = 'OSV_DTENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object sqlOpOSV_CODIGO_PAI: TStringField
      FieldName = 'OSV_CODIGO_PAI'
      Size = 12
    end
  end
  object cdsOp: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    PacketRecords = 30
    Params = <>
    ProviderName = 'dspop'
    StoreDefs = True
    AfterScroll = cdsOpAfterScroll
    Left = 388
    Top = 208
    object cdsOpOSV_REGISTRO: TIntegerField
      FieldName = 'OSV_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOpOSV_PAI: TStringField
      FieldName = 'OSV_PAI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 1
    end
    object cdsOpEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object cdsOpOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cdsOpOSV_EMISSAO: TSQLTimeStampField
      FieldName = 'OSV_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOpOSV_VARIACAO: TStringField
      FieldName = 'OSV_VARIACAO'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cdsOpOSV_QTDE_SOLICITADA: TFMTBCDField
      FieldName = 'OSV_QTDE_SOLICITADA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.000'
      Precision = 20
      Size = 5
    end
    object cdsOpOSV_QTDE: TFMTBCDField
      FieldName = 'OSV_QTDE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.000'
      Precision = 20
      Size = 5
    end
    object cdsOpOSV_QTDE_CONVERTIDA: TFMTBCDField
      FieldName = 'OSV_QTDE_CONVERTIDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.000'
      Precision = 20
      Size = 5
    end
    object cdsOpOSV_QTDE1: TFMTBCDField
      FieldName = 'OSV_QTDE1'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object cdsOpOSV_QTDE2: TFMTBCDField
      FieldName = 'OSV_QTDE2'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object cdsOpOSV_QTDE3: TFMTBCDField
      FieldName = 'OSV_QTDE3'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object cdsOpOSV_QTDE4: TFMTBCDField
      FieldName = 'OSV_QTDE4'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object cdsOpOSV_QTDE5: TFMTBCDField
      FieldName = 'OSV_QTDE5'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object cdsOpOSV_QTDE6: TFMTBCDField
      FieldName = 'OSV_QTDE6'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object cdsOpOSV_QTDE7: TFMTBCDField
      FieldName = 'OSV_QTDE7'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object cdsOpOSV_QTDE8: TFMTBCDField
      FieldName = 'OSV_QTDE8'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object cdsOpOSV_STATUS: TStringField
      FieldName = 'OSV_STATUS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsOpOSV_IMPRESSO: TStringField
      FieldName = 'OSV_IMPRESSO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsOpOSV_LOTE: TStringField
      FieldName = 'OSV_LOTE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cdsOpPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object cdsOpOSV_CONCLUSAO: TSQLTimeStampField
      FieldName = 'OSV_CONCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOpOSV_VALIDADE: TSQLTimeStampField
      FieldName = 'OSV_VALIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOpFTC_TUP: TFMTBCDField
      FieldName = 'FTC_TUP'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object cdsOpOSV_PRECOUNIT: TFMTBCDField
      FieldName = 'OSV_PRECOUNIT'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object cdsOpCEL_CODIGO: TStringField
      FieldName = 'CEL_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsOpPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object cdsOpPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsOpPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsOpOSV_STATUS_SITUACAO: TStringField
      FieldName = 'OSV_STATUS_SITUACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsOpOSV_ESTOQUE: TFMTBCDField
      FieldName = 'OSV_ESTOQUE'
      ProviderFlags = [pfInUpdate]
      Precision = 20
      Size = 5
    end
    object cdsOpCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsOpOSV_ORDEM_COMPRA: TStringField
      FieldName = 'OSV_ORDEM_COMPRA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsOpOSV_RESPONSAVEL: TStringField
      FieldName = 'OSV_RESPONSAVEL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsOpOSV_GERAR_PI: TStringField
      FieldName = 'OSV_GERAR_PI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsOpCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      ProviderFlags = [pfInUpdate]
      Size = 55
    end
    object cdsOpPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOpOSV_STATUS_CC: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'OSV_STATUS_CC'
      ProviderFlags = [pfInUpdate]
      OnGetText = cdsOpOSV_STATUS_CCGetText
    end
    object cdsOpCC_IMPRESSO: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'CC_IMPRESSO'
    end
    object cdsOpPRD_GERENCIA_LOTE: TStringField
      FieldName = 'PRD_GERENCIA_LOTE'
      ProviderFlags = []
      Size = 1
    end
    object cdsOpOSV_QTDE_CONCLUIDA: TFMTBCDField
      FieldName = 'OSV_QTDE_CONCLUIDA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.000'
      Precision = 20
      Size = 0
    end
    object cdsOpPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 6
    end
    object cdsOpOSV_DTENTREGA: TSQLTimeStampField
      FieldName = 'OSV_DTENTREGA'
    end
    object cdsOpOSV_CODIGO_PAI: TStringField
      FieldName = 'OSV_CODIGO_PAI'
      Size = 12
    end
  end
  object dsOpGrade: TDataSource
    DataSet = cdsOp
    OnDataChange = dsOpGradeDataChange
    Left = 444
    Top = 208
  end
  object frxOP1: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41688.374658171300000000
    ReportOptions.LastChange = 42916.583637638890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxOP1GetValue
    Left = 740
    Top = 336
    Datasets = <
      item
        DataSet = frxDBfichatecnica
        DataSetName = 'frxdbdtstFichaTecnica'
      end
      item
        DataSet = frxdbdtstOrdemProducao
        DataSetName = 'frxdbdtstOrdemProducao'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'RazaoSocial'
        Value = Null
      end>
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        KeepChild = True
        object frxdbdtstOrdemProducaoOSV_CODIGO: TfrxMemoView
          Left = 480.769540770000000000
          Top = 11.338590000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'OSV_CODIGO'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_CODIGO"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 121.714190770000000000
          Width = 359.055350000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clAppWorkSpace
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE PRODU'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 480.769540770000000000
          Width = 105.826840000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'N'#176)
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 586.596380770000000000
          Width = 132.283550000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'P'#193'GINA')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 586.596380770000000000
          Top = 15.118120000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pag. [Page#] de [TotalPages#]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoOSV_CODIGO1: TfrxMemoView
          Left = 480.769230770000000000
          Top = 12.984230000000000000
          Width = 104.133890000000000000
          Height = 18.897650000000000000
          DataField = 'OSV_CODIGO'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_CODIGO"]')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          Width = 120.944960000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[RazaoSocial]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 287.314115380000000000
        Top = 79.370130000000000000
        Width = 718.110700000000000000
        object Memo19: TfrxMemoView
          Left = -0.230769230000000000
          Top = 249.448980000000000000
          Width = 717.978426920000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clAppWorkSpace
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'FICHA T'#201'CNICA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 0.076923070000000000
          Top = 269.518815380000000000
          Width = 124.724490000000000000
          Height = 17.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   Refer'#234'ncia')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 122.615384610000000000
          Top = 269.518815380000000000
          Width = 417.098806150000000000
          Height = 17.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   Descri'#231#227'o')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 540.307692300000000000
          Top = 269.518815380000000000
          Width = 70.878336150000000000
          Height = 17.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   UND')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 37.348246919999990000
          Width = 253.228510000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   DATA ENTRADA PRODU'#199#195'O:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 253.228510000000000000
          Top = 37.348246919999990000
          Width = 245.669450000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   DATA PREVISTA PARA INSTALA'#199#195'O '
            '   ESTRUTURA:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 498.897960000000000000
          Top = 37.348246919999990000
          Width = 219.212740000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   DATA PREVISTA PARA INSTALA'#199#195'O '
            '   VIDRO:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 79.559060000000000000
          Width = 404.409710000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   NOME DO CLIENTE:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 404.409710000000000000
          Top = 79.559060000000000000
          Width = 151.181200000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   TELEFONE FIXO:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 555.590910000000000000
          Top = 79.559060000000000000
          Width = 162.519790000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   TELEFONE CELULAR:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 117.354360000000000000
          Width = 468.661720000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   ENDERE'#199'O:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 468.661720000000000000
          Top = 117.354360000000000000
          Width = 249.448980000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   BAIRRO:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Top = 155.149660000000000000
          Width = 166.299320000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   OBRA COM MORADOR:'
            ''
            '   SIM (  )        N'#195'O (  )')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 166.299320000000000000
          Top = 155.149660000000000000
          Width = 207.874150000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   TIPO DE PISO:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 374.173470000000000000
          Top = 155.149660000000000000
          Width = 162.519790000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   ENERGIA NO LOCAL:'
            ''
            '   SIM (  )       N'#195'O (  )')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 536.693260000000000000
          Top = 155.149660000000000000
          Width = 181.417440000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   VOLTAGEM:'
            ''
            '   110V (  )       220V (  )')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Top = 200.504020000000000000
          Width = 166.299320000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   LEVAR '#193'GUA:'
            ''
            '   SIM (  )        N'#195'O (  )')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 166.299320000000000000
          Top = 200.504020000000000000
          Width = 207.874150000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   RETIRAR ESTRUTURA:'
            ''
            '   SIM (  )        N'#195'O (  )')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 374.173470000000000000
          Top = 200.504020000000000000
          Width = 162.519790000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   I'#199'AMENTO:'
            ''
            '   SIM (  )       N'#195'O (  )')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 536.693260000000000000
          Top = 200.504020000000000000
          Width = 181.417440000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   ESTACIONAMENTO GRATUITO:'
            ''
            '   SIM (  )       N'#195'O (  )')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_REFER: TfrxMemoView
          Left = 11.338590000000000000
          Top = 11.527520000000000000
          Width = 105.826840000000000000
          Height = 14.897650000000000000
          DataField = 'PRD_REFER'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_REFER"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoOSV_QTDE1: TfrxMemoView
          Left = 593.386210000000000000
          Top = 7.747990000000001000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'OSV_QTDE1'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_QTDE1"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoCLI_FONE: TfrxMemoView
          Left = 419.527830000000000000
          Top = 94.677180000000010000
          Width = 105.826840000000000000
          Height = 15.897650000000000000
          DataField = 'CLI_FONE'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."CLI_FONE"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoCLI_CELULAR: TfrxMemoView
          Left = 570.709030000000000000
          Top = 94.677180000000010000
          Width = 113.385900000000000000
          Height = 14.897650000000000000
          DataField = 'CLI_CELULAR'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."CLI_CELULAR"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoCLI_ENDERE: TfrxMemoView
          Left = 15.118120000000000000
          Top = 132.472480000000000000
          Width = 445.984540000000000000
          Height = 18.897650000000000000
          DataField = 'CLI_ENDERE'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."CLI_ENDERE"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoCLI_BAIRRO: TfrxMemoView
          Left = 483.779840000000000000
          Top = 132.472480000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DataField = 'CLI_BAIRRO'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."CLI_BAIRRO"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoOSV_EMISSAO: TfrxMemoView
          Left = 14.000000000000000000
          Top = 52.818799999999990000
          Width = 203.905690000000000000
          Height = 14.282265380000000000
          DataField = 'OSV_EMISSAO'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_EMISSAO"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_REFER1: TfrxMemoView
          Left = 14.307692320000000000
          Top = 15.706793080000000000
          Width = 86.929190000000000000
          Height = 16.589957700000000000
          DataField = 'PRD_REFER'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_REFER"]')
        end
        object frxdbdtstOrdemProducaoOSV_QTDE: TfrxMemoView
          Left = 601.230769240000000000
          Top = 14.937562310000010000
          Width = 110.042481540000000000
          Height = 14.282265380000000000
          DataField = 'OSV_QTDE'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_QTDE"]')
        end
        object Memo30: TfrxMemoView
          Width = 120.944960000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   Refer'#234'ncia')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 585.827150000000000000
          Width = 132.283550000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   Quantidade')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoCLI_RAZAO: TfrxMemoView
          Left = 26.456710000000000000
          Top = 93.488250000000010000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DataField = 'CLI_RAZAO'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."CLI_RAZAO"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 120.944960000000000000
          Width = 464.882190000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   Descri'#231#227'o')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_DESCRI: TfrxMemoView
          Left = 126.842610000000000000
          Top = 15.118120000000010000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_DESCRI"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_REFER2: TfrxMemoView
          Left = 15.118120000000000000
          Top = 15.118120000000010000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_REFER'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_REFER"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 609.504330000000000000
          Top = 269.346630000000000000
          Width = 108.673636150000000000
          Height = 17.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   QUANTIDADE')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoOSV_QTDE2: TfrxMemoView
          Left = 600.945270000000000000
          Top = 11.338590000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'OSV_QTDE'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_QTDE"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 427.086890000000000000
        Width = 718.110700000000000000
        DataSet = frxDBfichatecnica
        DataSetName = 'frxdbdtstFichaTecnica'
        RowCount = 0
        object frxdbdtstFichaTecnicaPRD_REFER_ITENS: TfrxMemoView
          Left = 10.769230780000000000
          Top = 2.805289230000028000
          Width = 94.488250000000000000
          Height = 15.051496150000000000
          DataField = 'PRD_REFER_ITENS'
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."PRD_REFER_ITENS"]')
          ParentFont = False
        end
        object frxdbdtstFichaTecnicaPRD_DESCRI: TfrxMemoView
          Left = 130.769230770000000000
          Top = 2.343750769999986000
          Width = 400.630180000000000000
          Height = 15.051496150000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."PRD_DESCRI"]')
          ParentFont = False
        end
        object frxdbdtstFichaTecnicaOSI_QTDE1: TfrxMemoView
          Left = 626.538461550000000000
          Top = 3.651443079999979000
          Width = 60.411969220000000000
          Height = 15.051496150000000000
          DataField = 'OSI_QTDE1'
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."OSI_QTDE1"]')
          ParentFont = False
        end
        object frxdbdtstFichaTecnicaPRD_UND: TfrxMemoView
          Left = 552.307692310000000000
          Top = 2.846486149999976000
          Width = 56.656581540000000000
          Height = 15.820726920000000000
          DataField = 'PRD_UND'
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."PRD_UND"]')
          ParentFont = False
        end
      end
      object Line11: TfrxLineView
        Left = 719.110700000000000000
        Top = 621.606680000000000000
        Height = 177.637910000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line12: TfrxLineView
        Left = 1.000000000000000000
        Top = 662.401980000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line13: TfrxLineView
        Left = 1.000000000000000000
        Top = 684.858690000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line14: TfrxLineView
        Left = 1.220470000000000000
        Top = 706.315400000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line15: TfrxLineView
        Left = 1.000000000000000000
        Top = 729.772110000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line16: TfrxLineView
        Left = 1.000000000000000000
        Top = 751.228820000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo33: TfrxMemoView
        Left = 1.000000000000000000
        Top = 639.504330000000000000
        Width = 90.708720000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #193'REA')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo34: TfrxMemoView
        Left = 91.165430000000000000
        Top = 639.504330000000000000
        Width = 90.708720000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'DATA INICIAL')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo35: TfrxMemoView
        Left = 180.433210000000000000
        Top = 639.504330000000000000
        Width = 86.929190000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'DATA FINAL')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo36: TfrxMemoView
        Left = 269.700990000000000000
        Top = 639.504330000000000000
        Width = 90.708720000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'RESPONS'#193'VEL')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo37: TfrxMemoView
        Left = 360.071120000000000000
        Top = 639.504330000000000000
        Width = 90.708720000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          #193'REA')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo38: TfrxMemoView
        Left = 450.000310000000000000
        Top = 639.504330000000000000
        Width = 90.708720000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'DATA INICIAL')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo39: TfrxMemoView
        Left = 539.709030000000000000
        Top = 639.504330000000000000
        Width = 90.708720000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'DATA FINAL')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo40: TfrxMemoView
        Left = 630.197280000000000000
        Top = 639.504330000000000000
        Width = 90.708720000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'RESPONS'#193'VEL')
        ParentFont = False
        VAlign = vaCenter
      end
      object Line17: TfrxLineView
        Left = 90.708720000000000000
        Top = 640.283860000000000000
        Height = 158.740260000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line18: TfrxLineView
        Left = 180.417440000000000000
        Top = 640.283860000000000000
        Height = 158.740260000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line19: TfrxLineView
        Left = 269.346630000000000000
        Top = 640.283860000000000000
        Height = 158.740260000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line20: TfrxLineView
        Left = 360.055350000000000000
        Top = 640.504330000000000000
        Height = 158.740260000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line21: TfrxLineView
        Left = 449.764070000000000000
        Top = 640.283860000000000000
        Height = 158.740260000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line22: TfrxLineView
        Left = 539.472790000000000000
        Top = 640.504330000000000000
        Height = 158.740260000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line23: TfrxLineView
        Left = 629.401980000000000000
        Top = 639.504330000000000000
        Height = 158.740260000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo41: TfrxMemoView
        Top = 661.961040000000000000
        Width = 90.708720000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '  DESENHO')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo42: TfrxMemoView
        Top = 683.858690000000000000
        Width = 90.708720000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '  CORTE')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo43: TfrxMemoView
        Top = 706.535870000000000000
        Width = 90.708720000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '  SERRALHEIRO')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo44: TfrxMemoView
        Top = 729.213050000000000000
        Width = 90.708720000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '  POLIDOR')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo45: TfrxMemoView
        Top = 751.890230000000000000
        Width = 90.708720000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '  SERRALHEIRO')
        ParentFont = False
        VAlign = vaCenter
      end
      object Line24: TfrxLineView
        Left = 0.779530000000000000
        Top = 774.346940000000000000
        Width = 359.055350000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo46: TfrxMemoView
        Top = 774.346940000000000000
        Width = 90.708720000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '  POLIDOR')
        ParentFont = False
        VAlign = vaCenter
      end
      object Line25: TfrxLineView
        Left = 0.779530000000000000
        Top = 798.803650000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo47: TfrxMemoView
        Left = 359.055350000000000000
        Top = 661.181510000000000000
        Width = 90.708720000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '  SERRALHEIRO')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo48: TfrxMemoView
        Left = 359.055350000000000000
        Top = 683.858690000000000000
        Width = 90.708720000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '  POLIDOR')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo49: TfrxMemoView
        Left = 359.055350000000000000
        Top = 706.535870000000000000
        Width = 90.708720000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '  SERRALHEIRO')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo50: TfrxMemoView
        Left = 359.055350000000000000
        Top = 729.213050000000000000
        Width = 90.708720000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '  POLIDOR')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo51: TfrxMemoView
        Left = 359.055350000000000000
        Top = 751.890230000000000000
        Width = 94.488250000000000000
        Height = 45.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '   CONFER'#202'NCIA '
          '   QUALIDADE')
        ParentFont = False
        VAlign = vaCenter
      end
      object Line26: TfrxLineView
        Left = 0.779530000000000000
        Top = 798.921770000000000000
        Height = 56.692950000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line27: TfrxLineView
        Left = 719.110700000000000000
        Top = 799.921770000000000000
        Height = 56.692950000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo52: TfrxMemoView
        Left = 1.000000000000000000
        Top = 799.039890000000000000
        Width = 717.978426920000000000
        Height = 19.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clAppWorkSpace
        Fill.Style = bsClear
        HAlign = haCenter
        Memo.UTF8W = (
          'QUANTIDADE DE DIAS PREVISTO PARA INSTALA'#199#195'O')
        ParentFont = False
        VAlign = vaCenter
      end
      object Line28: TfrxLineView
        Left = 1.000000000000000000
        Top = 855.717070000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line32: TfrxLineView
        Left = 360.055350000000000000
        Top = 818.819420000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo53: TfrxMemoView
        Top = 819.921770000000000000
        Width = 170.078850000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '   INSTALA'#199#195'O DE ESTRUTURA:')
        ParentFont = False
      end
      object Memo54: TfrxMemoView
        Left = 359.055350000000000000
        Top = 819.921770000000000000
        Width = 170.078850000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '   INSTALA'#199#195'O DE VIDRO:')
        ParentFont = False
      end
      object Line29: TfrxLineView
        Left = 0.779530000000000000
        Top = 856.055660000000000000
        Height = 64.252010000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line30: TfrxLineView
        Left = 719.110700000000000000
        Top = 856.055660000000000000
        Height = 64.252010000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo55: TfrxMemoView
        Left = 1.000000000000000000
        Top = 855.173780000000000000
        Width = 717.978426920000000000
        Height = 19.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clAppWorkSpace
        Fill.Style = bsClear
        HAlign = haCenter
        Memo.UTF8W = (
          'NECESS'#193'RIO PARA INSTALA'#199#195'O')
        ParentFont = False
        VAlign = vaCenter
      end
      object Line31: TfrxLineView
        Left = 1.000000000000000000
        Top = 919.850960000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line33: TfrxLineView
        Left = 360.055350000000000000
        Top = 874.953310000000000000
        Height = 45.354360000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo56: TfrxMemoView
        Top = 876.055660000000000000
        Width = 359.055350000000000000
        Height = 41.574830000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '   ESTRUTURA:'
          ''
          
            '   POLIDOR (  )     AJUDANTE (  )     MOLDE (  )     PAPEL'#195'O (  ' +
            ')     SOLDA (  )')
        ParentFont = False
      end
      object Memo57: TfrxMemoView
        Left = 359.055350000000000000
        Top = 876.055660000000000000
        Width = 359.055350000000000000
        Height = 41.574830000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '  VIDRO:'
          '  '
          
            '   POLIDOR (  )     AJUDANTE (  )     MOLDE (  )     PAPEL'#195'O (  ' +
            ')     SOLDA (  )')
        ParentFont = False
      end
      object Line7: TfrxLineView
        Left = 1.000000000000000000
        Top = 598.149970000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line8: TfrxLineView
        Left = 1.000000000000000000
        Top = 619.606680000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line10: TfrxLineView
        Left = 0.779530000000000000
        Top = 620.606680000000000000
        Height = 177.637910000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo32: TfrxMemoView
        Left = 1.000000000000000000
        Top = 619.724800000000000000
        Width = 717.978426920000000000
        Height = 19.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clAppWorkSpace
        Fill.Style = bsClear
        HAlign = haCenter
        Memo.UTF8W = (
          'EXECU'#199#195'O / LIBERA'#199#195'O DO SERVI'#199'O')
        ParentFont = False
        VAlign = vaCenter
      end
      object Line5: TfrxLineView
        Left = 1.000000000000000000
        Top = 488.543600000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line6: TfrxLineView
        Left = 1.220470000000000000
        Top = 488.543600000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line2: TfrxLineView
        Left = 0.779530000000000000
        Top = 488.323130000000000000
        Height = 132.283550000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line1: TfrxLineView
        Left = 94.488250000000000000
        Top = 510.543600000000000000
        Height = 109.606370000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo25: TfrxMemoView
        Left = 1.000000000000000000
        Top = 487.441250000000000000
        Width = 717.978426920000000000
        Height = 19.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clAppWorkSpace
        Fill.Style = bsClear
        HAlign = haCenter
        Memo.UTF8W = (
          'OR'#199'AMENTO E MEDI'#199#195'O PARA PRODU'#199#195'O')
        ParentFont = False
        VAlign = vaCenter
      end
      object Line3: TfrxLineView
        Left = 719.110700000000000000
        Top = 487.764070000000000000
        Height = 132.283550000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line9: TfrxLineView
        Left = 563.149970000000000000
        Top = 507.205010000000000000
        Height = 113.385900000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo26: TfrxMemoView
        Top = 507.441250000000000000
        Width = 94.488250000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'DATA')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo27: TfrxMemoView
        Left = 94.488250000000000000
        Top = 507.441250000000000000
        Width = 468.661720000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'MOTIVO')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo28: TfrxMemoView
        Left = 563.149970000000000000
        Top = 507.441250000000000000
        Width = 158.740260000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'RESPONS'#193'VEL')
        ParentFont = False
        VAlign = vaCenter
      end
      object Line4: TfrxLineView
        Left = 1.220470000000000000
        Top = 573.606680000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line53: TfrxLineView
        Left = 2.000000000000000000
        Top = 552.590910000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line54: TfrxLineView
        Top = 530.913730000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line55: TfrxLineView
        Top = 619.622450000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle2: TfrxReportTitle
        FillType = ftBrush
        Height = 904.622760000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line56: TfrxLineView
          Left = -0.220470000000000000
          Top = 483.520100000000000000
          Height = 249.448980000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line57: TfrxLineView
          Left = 718.110700000000000000
          Top = 480.740570000000000000
          Height = 249.448980000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line58: TfrxLineView
          Top = 521.535870000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line59: TfrxLineView
          Top = 543.992580000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line60: TfrxLineView
          Left = 0.220470000000000000
          Top = 565.449290000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line61: TfrxLineView
          Top = 588.906000000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line62: TfrxLineView
          Top = 610.362710000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo63: TfrxMemoView
          Top = 498.638220000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QUANT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line63: TfrxLineView
          Left = 59.472480000000000000
          Top = 499.417750000000000000
          Height = 230.551330000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line64: TfrxLineView
          Left = 361.173470000000000000
          Top = 499.417750000000000000
          Height = 230.551330000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line65: TfrxLineView
          Left = 421.645950000000000000
          Top = 499.417750000000000000
          Height = 230.551330000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line66: TfrxLineView
          Left = 603.401980000000000000
          Top = 498.638220000000000000
          Height = 230.551330000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line67: TfrxLineView
          Left = -0.220470000000000000
          Top = 633.480830000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line68: TfrxLineView
          Top = 656.921770000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line69: TfrxLineView
          Top = 683.378480000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line70: TfrxLineView
          Left = 0.220470000000000000
          Top = 706.055660000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line71: TfrxLineView
          Top = 728.512370000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo73: TfrxMemoView
          Top = 482.638220000000000000
          Width = 717.978426920000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clAppWorkSpace
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'PLANEJAMENTO DE CORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 247.787570000000000000
          Top = 499.976810000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'IDENTIFICA'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line75: TfrxLineView
          Left = 247.819110000000000000
          Top = 498.976810000000000000
          Height = 230.551330000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo74: TfrxMemoView
          Left = 59.472480000000000000
          Top = 499.976810000000000000
          Width = 188.976500000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRI'#199#195'O DE CORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 361.173470000000000000
          Top = 499.976810000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QUANT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 421.645950000000000000
          Top = 499.976810000000000000
          Width = 181.417440000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRI'#199#195'O DE CORTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 603.401980000000000000
          Top = 499.976810000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'IDENTIFICA'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line73: TfrxLineView
          Top = 729.205320000000000000
          Height = 173.858380000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line74: TfrxLineView
          Left = 718.331170000000000000
          Top = 727.205320000000000000
          Height = 177.637910000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line78: TfrxLineView
          Left = 0.440940000000000000
          Top = 811.134510000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line80: TfrxLineView
          Left = 0.220470000000000000
          Top = 856.047930000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line82: TfrxLineView
          Left = 361.393940000000000000
          Top = 745.102970000000000000
          Height = 158.740260000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo72: TfrxMemoView
          Left = 0.220470000000000000
          Top = 728.323440000000000000
          Width = 717.978426920000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clAppWorkSpace
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'PLANILHA DE PEDIDO DE VIDRO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = -0.220470000000000000
          Top = 745.646260000000000000
          Width = 359.055350000000000000
          Height = 64.252010000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ''
            '  TIPO DE VIDRO:'
            ''
            '  COMUM (  )   TEMPERADO (  )   LAMINADO (  )   OUTROS (  )')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 361.834880000000000000
          Top = 745.646260000000000000
          Width = 359.055350000000000000
          Height = 64.252010000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '  '
            '  ESPESSURA DO VIDRO:'
            
              '  6MM (  )   8MM (  )   10MM (  )   12MM (  )  15MM (  )  19MM (' +
              '  )  '
            '  OUTROS (  )')
          ParentFont = False
        end
        object Line72: TfrxLineView
          Left = 180.417440000000000000
          Top = 810.898270000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo77: TfrxMemoView
          Left = 179.756030000000000000
          Top = 809.898270000000000000
          Width = 181.417440000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '  DATA:')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = -1.000000000000000000
          Top = 809.898270000000000000
          Width = 181.417440000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '  MEDIDOR:')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 363.834880000000000000
          Top = 809.898270000000000000
          Width = 351.496290000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '  COR DO VIDRO:'
            '  INCOLOR (  )     VERDE (  )     FUM'#202' (  )     BRONZE (  )  '
            '  OUTROS   (  )')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 0.779530000000000000
          Top = 856.032160000000000000
          Width = 359.055350000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '  MOLDE:'
            ''
            '  SIM (  )     N'#195'O (  )')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 361.614410000000000000
          Top = 856.032160000000000000
          Width = 355.275820000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '  QUANTIDADE DE MOLDE:')
          ParentFont = False
        end
        object Line34: TfrxLineView
          Left = -0.220470000000000000
          Top = 58.787570000000000000
          Height = 423.307360000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line35: TfrxLineView
          Left = 718.110700000000000000
          Top = 58.787570000000000000
          Height = 423.307360000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line36: TfrxLineView
          Top = 80.582870000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line37: TfrxLineView
          Top = 103.039580000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line38: TfrxLineView
          Left = 0.220470000000000000
          Top = 124.496290000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line39: TfrxLineView
          Top = 147.953000000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line40: TfrxLineView
          Top = 169.409710000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo59: TfrxMemoView
          Top = 57.685220000000000000
          Width = 90.708720000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 449.000310000000000000
          Top = 57.685220000000000000
          Width = 90.708720000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SERRALHEIRO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 538.709030000000000000
          Top = 57.685220000000000000
          Width = 90.708720000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'POLIDOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 629.197280000000000000
          Top = 57.685220000000000000
          Width = 90.708720000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'AJUDANTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line41: TfrxLineView
          Left = 89.708720000000000000
          Top = 58.464750000000000000
          Height = 253.228510000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line45: TfrxLineView
          Left = 448.764070000000000000
          Top = 58.464750000000000000
          Height = 253.228510000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line46: TfrxLineView
          Left = 538.472790000000000000
          Top = 58.685220000000000000
          Height = 253.228510000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line47: TfrxLineView
          Left = 628.401980000000000000
          Top = 57.685220000000000000
          Height = 253.228510000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line48: TfrxLineView
          Left = -0.220470000000000000
          Top = 192.527830000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line49: TfrxLineView
          Top = 215.968770000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo60: TfrxMemoView
          Left = 89.708720000000000000
          Top = 57.228510000000000000
          Width = 359.055350000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'MOTIVO: INSTALA'#199#195'O / RETORNO PARA CORRE'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line42: TfrxLineView
          Top = 242.425480000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line43: TfrxLineView
          Left = 0.220470000000000000
          Top = 265.102660000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line44: TfrxLineView
          Top = 287.559370000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line50: TfrxLineView
          Top = 310.236550000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line51: TfrxLineView
          Top = 482.079160000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo61: TfrxMemoView
          Left = -1.000000000000000000
          Top = 313.236550000000000000
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '   HOUVE ATRASO NA ENTREGA?'
            ''
            
              '   SIM (  )     N'#195'O (  )     -     ESTRUTURA (  )     VIDRO (  )' +
              '     -     POR QUE?')
          ParentFont = False
        end
        object Line52: TfrxLineView
          Top = 355.811380000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo62: TfrxMemoView
          Left = -1.000000000000000000
          Top = 358.590910000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '   OBS.:')
        end
        object Memo58: TfrxMemoView
          Top = 37.905690000000000000
          Width = 717.978426920000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clAppWorkSpace
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'EVOLU'#199#195'O DA INSTALA'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 586.047620000000000000
          Top = 15.133890000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pag. [Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 480.220780000000000000
          Top = 11.354360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'OSV_CODIGO'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_CODIGO"]')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 121.165430000000000000
          Top = 0.015770000000000000
          Width = 359.055350000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clAppWorkSpace
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE PRODU'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 480.220780000000000000
          Top = 0.015770000000000000
          Width = 105.826840000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'N'#176)
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 586.047620000000000000
          Top = 0.015770000000000000
          Width = 132.283550000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'P'#193'GINA')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Left = 480.220470000000000000
          Top = 13.000000000000000000
          Width = 104.133890000000000000
          Height = 18.897650000000000000
          DataField = 'OSV_CODIGO'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_CODIGO"]')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Width = 120.944960000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RazaoSocial]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 589.606680000000000000
          Top = 15.118120000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pag. [Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Line86: TfrxLineView
          Left = 0.220470000000000000
          Top = 903.606990000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle3: TfrxReportTitle
        FillType = ftBrush
        Height = 894.496600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line99: TfrxLineView
          Left = 1.000000000000000000
          Top = 702.063390000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line84: TfrxLineView
          Left = 0.220470000000000000
          Top = 58.968770000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line85: TfrxLineView
          Left = 0.220470000000000000
          Top = 81.425480000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line87: TfrxLineView
          Left = 0.440940000000000000
          Top = 102.882190000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line88: TfrxLineView
          Left = 0.220470000000000000
          Top = 126.338900000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line89: TfrxLineView
          Left = 0.220470000000000000
          Top = 147.795610000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line94: TfrxLineView
          Top = 170.913730000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line95: TfrxLineView
          Left = 0.220470000000000000
          Top = 194.354670000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line96: TfrxLineView
          Left = 0.220470000000000000
          Top = 220.811380000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line97: TfrxLineView
          Left = 0.440940000000000000
          Top = 243.488560000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo82: TfrxMemoView
          Left = 60.472480000000000000
          Top = 58.000000000000000000
          Width = 298.582870000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 60.472480000000000000
          Top = 80.677180000000000000
          Width = 298.582870000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 60.472480000000000000
          Top = 103.354360000000000000
          Width = 298.582870000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 60.472480000000000000
          Top = 125.031540000000000000
          Width = 298.582870000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 60.472480000000000000
          Top = 148.929190000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 60.472480000000000000
          Top = 171.385900000000000000
          Width = 298.582870000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 60.472480000000000000
          Top = 194.283550000000000000
          Width = 298.582870000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 60.472480000000000000
          Top = 220.519790000000000000
          Width = 298.582870000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 60.472480000000000000
          Top = 243.196970000000000000
          Width = 298.582870000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line77: TfrxLineView
          Top = 266.874150000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo94: TfrxMemoView
          Left = 60.472480000000000000
          Top = 266.874150000000000000
          Width = 298.582870000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line79: TfrxLineView
          Top = 289.551330000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo95: TfrxMemoView
          Left = 423.307360000000000000
          Top = 59.000000000000000000
          Width = 298.582870000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Left = 423.307360000000000000
          Top = 81.677180000000000000
          Width = 298.582870000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Left = 423.307360000000000000
          Top = 104.354360000000000000
          Width = 298.582870000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 423.307360000000000000
          Top = 126.031540000000000000
          Width = 298.582870000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 423.307360000000000000
          Top = 149.929190000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 423.307360000000000000
          Top = 172.385900000000000000
          Width = 298.582870000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Left = 423.307360000000000000
          Top = 195.283550000000000000
          Width = 298.582870000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 423.307360000000000000
          Top = 221.519790000000000000
          Width = 298.582870000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 423.307360000000000000
          Top = 244.196970000000000000
          Width = 298.582870000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Left = 423.307360000000000000
          Top = 267.874150000000000000
          Width = 298.582870000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line93: TfrxLineView
          Left = -0.220470000000000000
          Top = 289.330860000000000000
          Height = 415.748300000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line98: TfrxLineView
          Left = 718.110700000000000000
          Top = 289.330860000000000000
          Height = 415.748300000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo105: TfrxMemoView
          Left = 7.559060000000000000
          Top = 303.212740000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '   OBSERVA'#199#195'O:')
        end
        object Line83: TfrxLineView
          Left = 718.331170000000000000
          Top = 37.173470000000000000
          Height = 253.228510000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo84: TfrxMemoView
          Left = 59.692950000000000000
          Top = 37.409710000000000000
          Width = 302.362400000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LARGURA X ALTURA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 361.393940000000000000
          Top = 37.409710000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QUANT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 421.866420000000000000
          Top = 37.409710000000000000
          Width = 294.803340000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LARGURA X ALTURA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line81: TfrxLineView
          Top = 39.953000000000000000
          Height = 253.228510000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo81: TfrxMemoView
          Left = 0.220470000000000000
          Top = 39.850650000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QUANT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line90: TfrxLineView
          Left = 59.692950000000000000
          Top = 39.850650000000000000
          Height = 249.448980000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line91: TfrxLineView
          Left = 361.393940000000000000
          Top = 39.850650000000000000
          Height = 249.448980000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line92: TfrxLineView
          Left = 421.866420000000000000
          Top = 40.850650000000000000
          Height = 249.448980000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line76: TfrxLineView
          Left = -0.118120000000000000
          Top = 40.000000000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo120: TfrxMemoView
          Left = 586.047620000000000000
          Top = 15.133890000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pag. [Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          Left = 480.220780000000000000
          Top = 11.354360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'OSV_CODIGO'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_CODIGO"]')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          Left = 121.165430000000000000
          Top = 0.015770000000000000
          Width = 359.055350000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clAppWorkSpace
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE PRODU'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 480.220780000000000000
          Top = 0.015770000000000000
          Width = 105.826840000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'N'#176)
          ParentFont = False
        end
        object Memo125: TfrxMemoView
          Left = 586.047620000000000000
          Top = 0.015770000000000000
          Width = 132.283550000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'P'#193'GINA')
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          Left = 480.220470000000000000
          Top = 13.000000000000000000
          Width = 104.133890000000000000
          Height = 18.897650000000000000
          DataField = 'OSV_CODIGO'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_CODIGO"]')
          ParentFont = False
        end
        object Memo127: TfrxMemoView
          Width = 120.944960000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RazaoSocial]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          Left = 589.606680000000000000
          Top = 15.118120000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pag. [Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Top = 700.992580000000000000
          Width = 717.978426920000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clAppWorkSpace
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'INSPE'#199#195'O DE RECEBIMENTO DO PRODUTO PELO CLIENTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line100: TfrxLineView
          Top = 719.433520000000000000
          Height = 105.826840000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line101: TfrxLineView
          Left = 718.110700000000000000
          Top = 719.110700000000000000
          Height = 105.826840000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line102: TfrxLineView
          Top = 771.244590000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line103: TfrxLineView
          Top = 825.039890000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo107: TfrxMemoView
          Top = 720.213050000000000000
          Width = 718.110700000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Declaro ter recebido e inspecionado o produto/servi'#231'o bem como t' +
              'er recebido o certificado de garantia do produto e '
            
              'considero que o mesmo atendeu aos requisitos definidos em contra' +
              'to.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line104: TfrxLineView
          Left = 219.212740000000000000
          Top = 772.126470000000000000
          Height = 52.913420000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line105: TfrxLineView
          Left = 619.842920000000000000
          Top = 772.126470000000000000
          Height = 52.913420000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo108: TfrxMemoView
          Top = 772.126470000000000000
          Width = 219.212740000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '  NOME DO CLIENTE:')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          Left = 219.787570000000000000
          Top = 771.346940000000000000
          Width = 400.630180000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '  ASSINATURA DO CLIENTE:')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 619.622450000000000000
          Top = 771.126470000000000000
          Width = 98.267780000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '  DATA:')
          ParentFont = False
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle4: TfrxReportTitle
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo131: TfrxMemoView
          Left = 586.047620000000000000
          Top = 15.133890000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pag. [Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          Left = 480.220780000000000000
          Top = 11.354360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'OSV_CODIGO'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_CODIGO"]')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          Left = 121.165430000000000000
          Top = 0.015770000000000000
          Width = 359.055350000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clAppWorkSpace
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE PRODU'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          Left = 480.220780000000000000
          Top = 0.015770000000000000
          Width = 105.826840000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'N'#176)
          ParentFont = False
        end
        object Memo135: TfrxMemoView
          Left = 586.047620000000000000
          Top = 0.015770000000000000
          Width = 132.283550000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'P'#193'GINA')
          ParentFont = False
        end
        object Memo136: TfrxMemoView
          Left = 480.220470000000000000
          Top = 13.000000000000000000
          Width = 104.133890000000000000
          Height = 18.897650000000000000
          DataField = 'OSV_CODIGO'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_CODIGO"]')
          ParentFont = False
        end
        object Memo137: TfrxMemoView
          Width = 120.944960000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RazaoSocial]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          Left = 589.606680000000000000
          Top = 15.118120000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pag. [Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object Memo129: TfrxMemoView
        Top = 64.692950000000000000
        Width = 717.978426920000000000
        Height = 27.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clAppWorkSpace
        Fill.Style = bsClear
        HAlign = haCenter
        Memo.UTF8W = (
          'RESPONS'#193'VEIS T'#201'CNICOS')
        ParentFont = False
        VAlign = vaCenter
      end
      object Line106: TfrxLineView
        Top = 64.590600000000000000
        Height = 839.055660000000000000
        Color = clBlack
        Diagonal = True
      end
      object Line107: TfrxLineView
        Left = 718.110700000000000000
        Top = 64.149660000000000000
        Height = 839.055660000000000000
        Color = clBlack
        Diagonal = True
      end
      object Line108: TfrxLineView
        Top = 901.866730000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo124: TfrxMemoView
        Top = 222.771800000000000000
        Width = 717.978426920000000000
        Height = 27.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clAppWorkSpace
        Fill.Style = bsClear
        HAlign = haCenter
        Memo.UTF8W = (
          
            'DESCRI'#199#195'O T'#201'CNICA - REQUISITOS DO CLIENTE LEIAUTE E INFORMA'#199#213'ES ' +
            'COMPLEMENTARES')
        ParentFont = False
        VAlign = vaCenter
      end
      object Line109: TfrxLineView
        Top = 152.401670000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line110: TfrxLineView
        Left = 343.937230000000000000
        Top = 94.488250000000000000
        Height = 132.283550000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line111: TfrxLineView
        Left = 616.063390000000000000
        Top = 91.149660000000000000
        Height = 132.283550000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo130: TfrxMemoView
        Top = 94.149660000000000000
        Width = 343.937230000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '  NOME RESPONS'#193'VEL PELO PROJETO:')
        ParentFont = False
      end
      object Memo139: TfrxMemoView
        Top = 152.401670000000000000
        Width = 343.937230000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '  NOME RESPONS'#193'VEL PELA MEDIDA DE PRODU'#199#195'O E AN'#193'LISE '
          '  CR'#205'TICA:')
        ParentFont = False
      end
      object Memo140: TfrxMemoView
        Left = 343.937230000000000000
        Top = 94.149660000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '  ASSINATURA:')
        ParentFont = False
      end
      object Memo141: TfrxMemoView
        Left = 343.937230000000000000
        Top = 152.401670000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '  ASSINATURA:')
        ParentFont = False
      end
      object Memo142: TfrxMemoView
        Left = 616.063390000000000000
        Top = 91.929190000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '  DATA:')
        ParentFont = False
      end
      object Memo143: TfrxMemoView
        Left = 616.063390000000000000
        Top = 152.401670000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '  DATA:')
        ParentFont = False
      end
    end
    object Page5: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle5: TfrxReportTitle
        FillType = ftBrush
        Height = 37.811070000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo144: TfrxMemoView
          Left = 585.268090000000000000
          Top = 15.133890000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pag. [Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo145: TfrxMemoView
          Left = 479.441250000000000000
          Top = 11.354360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'OSV_CODIGO'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_CODIGO"]')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          Left = 120.385900000000000000
          Top = 0.015770000000000000
          Width = 359.055350000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clAppWorkSpace
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE PRODU'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          Left = 479.441250000000000000
          Top = 0.015770000000000000
          Width = 105.826840000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'N'#176)
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          Left = 585.268090000000000000
          Top = 0.015770000000000000
          Width = 132.283550000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'P'#193'GINA')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          Left = 479.440940000000000000
          Top = 13.000000000000000000
          Width = 104.133890000000000000
          Height = 18.897650000000000000
          DataField = 'OSV_CODIGO'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_CODIGO"]')
          ParentFont = False
        end
        object Memo150: TfrxMemoView
          Left = -0.779530000000000000
          Width = 120.944960000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RazaoSocial]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo151: TfrxMemoView
          Left = 588.827150000000000000
          Top = 15.118120000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pag. [Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object Line112: TfrxLineView
        Top = 63.008040000000000000
        Height = 676.535870000000000000
        Color = clBlack
        Diagonal = True
      end
      object Line113: TfrxLineView
        Left = 718.110700000000000000
        Top = 82.464750000000000000
        Height = 657.638220000000000000
        Color = clBlack
        Diagonal = True
      end
      object Line114: TfrxLineView
        Top = 738.764380000000000000
        Width = 718.110700000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo152: TfrxMemoView
        Top = 59.669450000000000000
        Width = 717.978426920000000000
        Height = 27.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clAppWorkSpace
        Fill.Style = bsClear
        HAlign = haCenter
        Memo.UTF8W = (
          'LEIAUTE E INFORMA'#199#213'ES COMPLEMENTARES')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object frxDBfichatecnica: TfrxDBDataset
    Enabled = False
    UserName = 'frxdbdtstFichaTecnica'
    CloseDataSource = False
    FieldAliases.Strings = (
      'OSV_CODIGO=OSV_CODIGO'
      'PRD_REFER_ITENS=PRD_REFER_ITENS'
      'OSI_QTDE1=OSI_QTDE1'
      'PRD_DESCRI=PRD_DESCRI'
      'PRD_UND=PRD_UND'
      'OSI_UC=OSI_UC'
      'OSI_QTDE_TOTAL_cc=OSI_QTDE_TOTAL_cc'
      'PTI_SIGLA=PTI_SIGLA'
      'ope_codigo=ope_codigo'
      'ope_descricao=ope_descricao'
      'lotes=lotes')
    DataSet = SqlCdsFichaTecnica
    BCDToCurrency = False
    Left = 468
    Top = 424
  end
  object SqlCdsFichaTecnica: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT O1.OSV_CODIGO, O2.PRD_REFER_ITENS, O2.OSI_UC, O2.OSI_QTDE' +
      '1, P.PRD_DESCRI, P.PRD_UND, P2.PTI_SIGLA FROM OSV0001 O1 JOIN OS' +
      'V_IT02 O2 ON (O1.OSV_CODIGO = O2.OSV_CODIGO) JOIN PRD0000 P ON (' +
      'P.PRD_REFER = O2.PRD_REFER_ITENS) join PRD_TIPO P2 on (P.PTI_COD' +
      'IGO = P2.PTI_CODIGO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FilterOptions = [foCaseInsensitive]
    Params = <>
    OnCalcFields = SqlCdsFichaTecnicaCalcFields
    CommandText = 
      'SELECT O1.OSV_CODIGO, O2.PRD_REFER_ITENS, O2.OSI_UC, O2.OSI_QTDE' +
      '1, P.PRD_DESCRI, P.PRD_UND, P2.PTI_SIGLA FROM OSV0001 O1 JOIN OS' +
      'V_IT02 O2 ON (O1.OSV_CODIGO = O2.OSV_CODIGO) JOIN PRD0000 P ON (' +
      'P.PRD_REFER = O2.PRD_REFER_ITENS) join PRD_TIPO P2 on (P.PTI_COD' +
      'IGO = P2.PTI_CODIGO)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 104
    Top = 258
    object SqlCdsFichaTecnicaOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Required = True
      Size = 12
    end
    object SqlCdsFichaTecnicaPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsFichaTecnicaOSI_QTDE1: TFMTBCDField
      FieldName = 'OSI_QTDE1'
      Precision = 18
    end
    object SqlCdsFichaTecnicaPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object SqlCdsFichaTecnicaPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 2
    end
    object SqlCdsFichaTecnicaOSI_UC: TFMTBCDField
      FieldName = 'OSI_UC'
      DisplayFormat = '#,##0.000000'
      Precision = 18
    end
    object SqlCdsFichaTecnicaOSI_QTDE_TOTAL_cc: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'OSI_QTDE_TOTAL_cc'
      Calculated = True
    end
    object SqlCdsFichaTecnicaPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 2
    end
    object SqlCdsFichaTecnicaope_codigo: TIntegerField
      FieldName = 'ope_codigo'
    end
    object SqlCdsFichaTecnicaope_descricao: TStringField
      FieldName = 'ope_descricao'
      Size = 60
    end
    object SqlCdsFichaTecnicalotes: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'lotes'
      Size = 400
    end
  end
  object frxOP2: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41688.374658171300000000
    ReportOptions.LastChange = 42916.582810405100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxOP1GetValue
    Left = 660
    Top = 376
    Datasets = <
      item
        DataSet = frxDBfichatecnica
        DataSetName = 'frxdbdtstFichaTecnica'
      end
      item
        DataSet = frxdbdtstOrdemProducao
        DataSetName = 'frxdbdtstOrdemProducao'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'RazaoSocial'
        Value = Null
      end>
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 192.825865380000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo27: TfrxMemoView
          Top = 0.779530000000001200
          Width = 120.944960000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 118.596070770000000000
          Top = 1.559059999999999000
          Width = 359.055350000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clAppWorkSpace
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE PRODU'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 478.651420770000000000
          Top = 1.559059999999999000
          Width = 105.826840000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '  N'#176)
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 584.478260770000000000
          Top = 1.559059999999999000
          Width = 136.063080000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            ' P'#193'GINA')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 571.478260770000000000
          Top = 16.677180000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '   [Page#] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object frxdbdtstOrdemProducaoOSV_CODIGO1: TfrxMemoView
          Left = 480.651110770000000000
          Top = 14.543290000000000000
          Width = 104.133890000000000000
          Height = 18.897650000000000000
          DataField = 'OSV_CODIGO'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_CODIGO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = -3.779530000000000000
          Top = 1.338590000000000000
          Width = 120.944960000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[RazaoSocial]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 0.338590000000000000
          Top = 121.133890000000000000
          Width = 313.700990000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   N'#176' DO DESENHO ')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 78.923076920000000000
          Width = 173.858380000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   DATA DO PEDIDO')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 335.228510000000000000
          Top = 78.923076920000000000
          Width = 188.976500000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   DATA DA OP')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 523.897960000000000000
          Top = 78.923076920000000000
          Width = 196.535560000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '    DATA  DE ENTREGA')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_REFER: TfrxMemoView
          Left = 11.338590000000000000
          Top = 53.102350000000000000
          Width = 105.826840000000000000
          Height = 14.897650000000000000
          DataField = 'PRD_REFER'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_REFER"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoOSV_EMISSAO: TfrxMemoView
          Left = 14.000000000000000000
          Top = 97.393630000000000000
          Width = 147.212740000000000000
          Height = 18.061795380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PED_DTENTRADA"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_REFER1: TfrxMemoView
          Left = 14.307692320000000000
          Top = 57.281623080000000000
          Width = 86.929190000000000000
          Height = 16.589957700000000000
          DataField = 'PRD_REFER'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_REFER"]')
        end
        object Memo30: TfrxMemoView
          Top = 41.574830000000000000
          Width = 120.944960000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            ' Refer'#234'ncia')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 626.827150000000000000
          Top = 41.574830000000000000
          Width = 90.708720000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   Quantidade')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 120.944960000000000000
          Top = 41.574830000000000000
          Width = 506.457020000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   Descri'#231#227'o')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_DESCRI: TfrxMemoView
          Left = 126.842610000000000000
          Top = 55.692949999999990000
          Width = 498.897960000000000000
          Height = 22.677180000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_DESCRI"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_REFER2: TfrxMemoView
          Left = 5.669295000000000000
          Top = 57.913420000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_REFER'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_REFER"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoOSV_QTDE2: TfrxMemoView
          Left = 632.614410000000000000
          Top = 57.692950000000000000
          Width = 75.590600000000000000
          Height = 18.967485380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_QTDE"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 497.897960000000000000
          Top = 120.944960000000000000
          Width = 222.992270000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   N'#176' DA ORDEM DO CLIENTE')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 533.559370000000000000
          Top = 96.149660000000000000
          Width = 147.212740000000000000
          Height = 18.061795380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_DTENTREGA"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 351.551330000000000000
          Top = 97.267780000000000000
          Width = 147.212740000000000000
          Height = 18.061795380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_EMISSAO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 527.913730000000000000
          Top = 137.504020000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_ORDEM_COMPRA"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 313.409710000000000000
          Top = 120.385900000000000000
          Width = 185.196970000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   C'#211'DIGO DO CLIENTE')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 381.071120000000000000
          Top = 137.944960000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."CLI_CODIGO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 174.417440000000000000
          Top = 79.370130000000000000
          Width = 162.519790000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   N'#176' DO PEDIDO')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 219.417440000000000000
          Top = 98.267780000000000000
          Width = 101.858380000000000000
          Height = 18.061795380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PED_CODIGO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = -0.230769230000000000
          Top = 160.944960000000000000
          Width = 721.757956920000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clAppWorkSpace
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'FICHA T'#201'CNICA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = -0.143546930000000000
          Top = 177.014795380000000000
          Width = 132.283550000000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   Cod.Material')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 127.953974610000000000
          Top = 177.235265380000000000
          Width = 417.098806150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   Descri'#231#227'o')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 545.646282300000000000
          Top = 177.235265380000000000
          Width = 70.878336150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   UND')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 617.606680000000000000
          Top = 176.740260000000000000
          Width = 101.114576150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   QUANTIDADE')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 521.575140000000000000
        Top = 355.275820000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Left = 1.000000000000000000
          Top = 338.551329999999900000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 1.000000000000000000
          Top = 350.582870000000000000
          Height = 162.519790000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 719.331170000000000000
          Top = 337.244279999999900000
          Height = 177.637910000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 1.440940000000000000
          Top = 421.173470000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 1.220470000000000000
          Top = 466.086890000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line7: TfrxLineView
          Left = 361.189240000000000000
          Top = 355.141929999999900000
          Height = 158.740260000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          Left = 1.220470000000000000
          Top = 338.362400000000100000
          Width = 717.978426920000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clAppWorkSpace
          Fill.Style = bsClear
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 0.779530000000000000
          Top = 355.685220000000000000
          Width = 359.055350000000000000
          Height = 64.252010000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ''
            '  Terceiriza'#231#227'o NF Remessa :'
            ''
            ' ')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 362.834880000000000000
          Top = 355.685220000000000000
          Width = 359.055350000000000000
          Height = 64.252010000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '  '
            '  Terceariza'#231#227'o NF Retorno'
            ' ')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 181.417440000000000000
          Top = 420.937230000000100000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          Left = 181.653680000000000000
          Top = 419.937230000000100000
          Width = 181.417440000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '  Data')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Top = 419.937230000000100000
          Width = 181.417440000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '  Quantidade Final')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 1.779530000000000000
          Top = 466.071120000000000000
          Width = 359.055350000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ' Liberado por')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Left = 1.779530000000000000
          Height = 336.378170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line10: TfrxLineView
          Left = 719.110700000000000000
          Top = 23.440940000000010000
          Height = 313.700990000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 0.338590000000000000
          Top = 41.125850000000010000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line13: TfrxLineView
          Left = 0.338590000000000000
          Top = 122.582560000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line14: TfrxLineView
          Left = 0.559060000000000000
          Top = 147.039270000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line15: TfrxLineView
          Left = 0.338590000000000000
          Top = 171.495980000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo35: TfrxMemoView
          Left = 4.118120000000000000
          Top = 22.007729999999980000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'OPERADOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 104.724490000000000000
          Top = 22.007729999999980000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'OPERA'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 187.771800000000000000
          Top = 22.007729999999980000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QTDE INICIAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 276.039580000000000000
          Top = 22.007729999999980000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QTDE FINAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 366.409710000000000000
          Top = 22.007729999999980000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 455.338900000000000000
          Top = 22.007729999999980000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'INICIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 636.315400000000000000
          Top = 22.007729999999980000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RESPONS'#193'VEL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line17: TfrxLineView
          Left = 100.047310000000000000
          Top = 23.007729999999980000
          Height = 181.417440000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 183.756030000000000000
          Top = 24.007729999999980000
          Height = 177.637910000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line19: TfrxLineView
          Left = 268.685220000000000000
          Top = 23.007729999999980000
          Height = 177.637910000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line20: TfrxLineView
          Left = 359.393940000000000000
          Top = 23.228200000000020000
          Height = 173.858380000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line21: TfrxLineView
          Left = 449.102660000000000000
          Top = 24.007729999999980000
          Height = 173.858380000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line22: TfrxLineView
          Left = 538.811380000000000000
          Top = 23.228200000000020000
          Height = 173.858380000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line23: TfrxLineView
          Left = 628.740570000000000000
          Top = 23.228200000000020000
          Height = 173.858380000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line24: TfrxLineView
          Left = 2.015770000000000000
          Top = 69.456399999999970000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 0.354360000000000000
          Top = 96.133580000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line26: TfrxLineView
          Top = 282.000000000000100000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line28: TfrxLineView
          Left = 0.220470000000000000
          Top = 309.456710000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line29: TfrxLineView
          Top = 337.370129999999900000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line31: TfrxLineView
          Left = 99.708720000000000000
          Top = 200.425170000000000000
          Height = 136.063080000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line32: TfrxLineView
          Left = 184.417440000000000000
          Top = 200.425170000000000000
          Height = 136.063080000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line33: TfrxLineView
          Left = 269.346630000000000000
          Top = 197.425170000000000000
          Height = 139.842610000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line34: TfrxLineView
          Left = 359.055350000000000000
          Top = 192.645640000000000000
          Height = 143.622140000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line35: TfrxLineView
          Left = 448.764070000000000000
          Top = 193.425170000000000000
          Height = 143.622140000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line69: TfrxLineView
          Left = 539.472790000000000000
          Top = 193.645640000000000000
          Height = 143.622140000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line70: TfrxLineView
          Left = 629.401980000000000000
          Top = 193.645640000000000000
          Height = 143.622140000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line71: TfrxLineView
          Left = 0.015770000000000000
          Top = 254.551020000000100000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line72: TfrxLineView
          Left = 1.000000000000000000
          Top = 199.645640000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line73: TfrxLineView
          Left = 1.000000000000000000
          Top = 227.322820000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo50: TfrxMemoView
          Left = 1.000000000000000000
          Top = 1.212429999999984000
          Width = 717.978426920000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clAppWorkSpace
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'CONTROLE DE OPERA'#199#213'ES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line74: TfrxLineView
          Left = 1.220470000000000000
          Top = 513.645950000000100000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line75: TfrxLineView
          Left = 2.779530000000000000
          Top = 22.007729999999980000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line76: TfrxLineView
          Left = 565.575140000000000000
          Top = 421.637910000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo51: TfrxMemoView
          Left = 360.055350000000000000
          Top = 422.637910000000000000
          Width = 154.960730000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '  Numero da Nota Fiscal')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 562.370440000000000000
          Top = 419.637910000000000000
          Width = 170.078850000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '  Data')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 546.693260000000000000
          Top = 22.007729999999980000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FIM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 370.393940000000000000
          Top = 466.882190000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            ' Data Libera'#231#227'o / Conclus'#227'o')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        DataSet = frxDBfichatecnica
        DataSetName = 'frxdbdtstFichaTecnica'
        RowCount = 0
        object frxdbdtstFichaTecnicaPRD_REFER_ITENS: TfrxMemoView
          Left = 11.328290780000000000
          Top = 4.364349230000016000
          Width = 94.488250000000000000
          Height = 15.051496150000000000
          DataField = 'PRD_REFER_ITENS'
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."PRD_REFER_ITENS"]')
          ParentFont = False
        end
        object frxdbdtstFichaTecnicaPRD_DESCRI: TfrxMemoView
          Left = 134.241710770000000000
          Top = 4.343750769999985000
          Width = 411.968770000000000000
          Height = 15.051496150000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."PRD_DESCRI"]')
          ParentFont = False
        end
        object frxdbdtstFichaTecnicaOSI_QTDE1: TfrxMemoView
          Left = 634.097521550000000000
          Top = 5.210503080000024000
          Width = 75.530089220000000000
          Height = 15.051496150000000000
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."OSI_QTDE_TOTAL_cc"]')
          ParentFont = False
        end
        object frxdbdtstFichaTecnicaPRD_UND: TfrxMemoView
          Left = 552.866752310000000000
          Top = 4.405546150000020000
          Width = 56.656581540000000000
          Height = 15.820726920000000000
          DataField = 'PRD_UND'
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."PRD_UND"]')
          ParentFont = False
        end
      end
    end
  end
  object frxOP3: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41688.374658171300000000
    ReportOptions.LastChange = 42916.582995393520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxOP1GetValue
    Left = 764
    Top = 432
    Datasets = <
      item
        DataSet = frxDBfichatecnica
        DataSetName = 'frxdbdtstFichaTecnica'
      end
      item
        DataSet = frxdbdtstOrdemProducao
        DataSetName = 'frxdbdtstOrdemProducao'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'RazaoSocial'
        Value = Null
      end>
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
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 767.480830000000000000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        object Memo83: TfrxMemoView
          Left = 257.008040000000000000
          Top = 370.393940000000000000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Sement.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 302.362400000000000000
          Top = 370.393940000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Outros:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Top = 9.779530000000000000
          Width = 46.704866150000000000
          Height = 25.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'ETAPA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 47.795300000000000000
          Top = 9.456710000000000000
          Width = 61.822986150000000000
          Height = 25.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'CC')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 109.267780000000000000
          Top = 9.897650000000000000
          Width = 258.358546150000000000
          Height = 25.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRI'#199#195'O DE ATIVIDADES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 367.157700000000000000
          Top = 9.897650000000000000
          Width = 84.500166150000000000
          Height = 25.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'RESPONS'#193'VEL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 450.984540000000000000
          Top = 9.897650000000000000
          Width = 46.704866150000000000
          Height = 25.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA IN'#205'CIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 495.338900000000000000
          Top = 9.897650000000000000
          Width = 42.925336150000000000
          Height = 25.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'SET-UP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 577.252320000000000000
          Top = 9.897650000000000000
          Width = 58.043456150000000000
          Height = 25.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA T'#201'RMINO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 634.520100000000000000
          Top = 9.559060000000000000
          Width = 42.925336150000000000
          Height = 25.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'HORA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line33: TfrxLineView
          Left = 47.133890000000000000
          Top = 35.015770000000000000
          Height = 453.543600000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line1: TfrxLineView
          Left = 109.267780000000000000
          Top = 34.692950000000000000
          Height = 453.543600000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = -0.220470000000000000
          Top = 35.015770000000000000
          Height = 604.724800000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 344.819110000000000000
          Top = 35.236240000000000000
          Height = 453.543600000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 367.496290000000000000
          Top = 35.015770000000000000
          Height = 453.543600000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 451.205010000000000000
          Top = 35.015770000000000000
          Height = 453.543600000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line7: TfrxLineView
          Left = 537.913730000000000000
          Top = 34.795300000000000000
          Height = 453.543600000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 577.268090000000000000
          Top = 34.795300000000000000
          Height = 453.543600000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line9: TfrxLineView
          Left = 634.181510000000000000
          Top = 34.236240000000000000
          Height = 453.543600000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line11: TfrxLineView
          Left = 673.756340000000000000
          Top = 35.015770000000000000
          Height = 453.543600000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line37: TfrxLineView
          Left = 144.960730000000000000
          Top = 367.614410000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line38: TfrxLineView
          Left = 184.196970000000000000
          Top = 367.614410000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line39: TfrxLineView
          Left = 219.433210000000000000
          Top = 367.055350000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line40: TfrxLineView
          Left = 257.567100000000000000
          Top = 367.393940000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo35: TfrxMemoView
          Left = 3.779530000000000000
          Top = 37.795300000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '10')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 3.779530000000000000
          Top = 54.913420000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '20')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 3.779530000000000000
          Top = 74.590600000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '30')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 3.779530000000000000
          Top = 93.488250000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '40')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 3.779530000000000000
          Top = 112.385900000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '50')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 3.779530000000000000
          Top = 131.283550000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '51')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 3.000000000000000000
          Top = 149.401670000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '52')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 2.779530000000000000
          Top = 169.078850000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '60')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 3.779530000000000000
          Top = 187.196970000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '61')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 3.779530000000000000
          Top = 205.315090000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '62')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 3.779530000000000000
          Top = 224.771800000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '70')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 3.779530000000000000
          Top = 244.669450000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '71')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 3.779530000000000000
          Top = 262.567100000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '72')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 3.779530000000000000
          Top = 281.464750000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '80')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 3.779530000000000000
          Top = 300.362400000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '81')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 3.779530000000000000
          Top = 319.260050000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '82')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 3.779530000000000000
          Top = 343.937230000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '90')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 3.779530000000000000
          Top = 375.953000000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '100')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 3.779530000000000000
          Top = 408.189240000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '110')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 3.779530000000000000
          Top = 432.645950000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '120')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 60.472480000000000000
          Top = 35.795300000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PCP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 60.472480000000000000
          Top = 54.692950000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'COM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 49.133890000000000000
          Top = 73.590600000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ALMOX')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 60.472480000000000000
          Top = 92.488250000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SF')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 49.133890000000000000
          Top = 111.385900000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOR COV')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 49.133890000000000000
          Top = 131.283550000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOR COV')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 49.133890000000000000
          Top = 149.181200000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOR COV')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 49.133890000000000000
          Top = 169.078850000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOR CNC')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 49.133890000000000000
          Top = 186.196970000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOR CNC')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 49.133890000000000000
          Top = 205.094620000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOR CNC')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 49.574830000000000000
          Top = 225.551330000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FRE COV')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 49.133890000000000000
          Top = 243.889920000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FRE COV')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 49.354360000000000000
          Top = 262.567100000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FRE COV')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 49.133890000000000000
          Top = 281.464750000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CNC')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 49.133890000000000000
          Top = 300.362400000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CNC')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 49.133890000000000000
          Top = 319.480520000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CNC')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 49.133890000000000000
          Top = 343.937230000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'AJUS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 49.133890000000000000
          Top = 366.614410000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SERV.'
            'TERC')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 49.133890000000000000
          Top = 408.189240000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'INSP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 49.133890000000000000
          Top = 432.645950000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'EXP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 106.826840000000000000
          Top = 370.393940000000000000
          Width = 37.795300000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Termp.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 147.401670000000000000
          Top = 370.393940000000000000
          Width = 37.795300000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Retific.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 181.417440000000000000
          Top = 370.393940000000000000
          Width = 37.795300000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Corte'
            'Fio')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 217.212740000000000000
          Top = 370.393940000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Oxida'#231'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 113.385900000000000000
          Top = 37.795300000000000000
          Width = 222.992270000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Programa'#231#227'o e Planejamento da Produ'#231#227'o')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 113.385900000000000000
          Top = 56.692950000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Comprar material conforme Desenho e O.C. do cliente.')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 113.385900000000000000
          Top = 75.590600000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Inspe'#231#227'o de recebimento dos materiais.')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 109.606370000000000000
          Top = 94.488250000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Comprar material conforme Desenho e O.C. do cliente.')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 109.606370000000000000
          Top = 112.385900000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tornear conforme Desenho')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 109.606370000000000000
          Top = 226.771800000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fresar conforme Desenho')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 109.606370000000000000
          Top = 245.669450000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fresar conforme Desenho')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 109.606370000000000000
          Top = 264.567100000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fresar conforme Desenho')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 109.606370000000000000
          Top = 283.464750000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Usinar conforme Desenho')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 109.606370000000000000
          Top = 302.362400000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Usinar conforme Desenho')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 109.606370000000000000
          Top = 321.260050000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Usinar conforme Desenho')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 113.385900000000000000
          Top = 340.157700000000000000
          Width = 230.551330000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Verificar acabamento da pe'#231'a removendo cantos vivos, cavacos, ma' +
              'rcas indevidas e rebarbas.')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 109.606370000000000000
          Top = 400.630180000000000000
          Width = 230.551330000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Verificar e inspecionar todas as cotas conforme desenho e relat'#243 +
              'rio.')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          Left = 109.606370000000000000
          Top = 434.645950000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Embalar e solicitar entrega.')
          ParentFont = False
        end
        object Line43: TfrxLineView
          Left = 75.590600000000000000
          Top = 487.559370000000000000
          Height = 151.181200000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line44: TfrxLineView
          Left = 159.181200000000000000
          Top = 487.559370000000000000
          Height = 151.181200000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line45: TfrxLineView
          Left = 301.582870000000000000
          Top = 487.559370000000000000
          Height = 151.181200000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line46: TfrxLineView
          Left = 408.189240000000000000
          Top = 487.559370000000000000
          Height = 151.181200000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo104: TfrxMemoView
          Top = 491.338900000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'REFUGO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Left = 75.590600000000000000
          Top = 491.338900000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          Left = 204.094620000000000000
          Top = 491.338900000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'MOTIVO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Left = 302.362400000000000000
          Top = 491.338900000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RESPONS'#193'VEL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          Left = 457.323130000000000000
          Top = 491.338900000000000000
          Width = 211.653680000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LIBERA'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line47: TfrxLineView
          Align = baCenter
          Left = 716.220935000000000000
          Top = 758.906000000000000000
          Width = -714.331170000000000000
          Height = 1889.763779527560000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo109: TfrxMemoView
          Top = 566.929500000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RETRABALHO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          Left = 75.590600000000000000
          Top = 566.929500000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 204.094620000000000000
          Top = 566.929500000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'MOTIVO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 302.362400000000000000
          Top = 566.929500000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RESPONS'#193'VEL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 457.323130000000000000
          Top = 566.929500000000000000
          Width = 211.653680000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LIBERA'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line57: TfrxLineView
          Left = 495.118430000000000000
          Top = 34.015770000000000000
          Height = 453.543600000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo34: TfrxMemoView
          Left = 673.535870000000000000
          Top = 9.559060000000000000
          Width = 42.925336150000000000
          Height = 25.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'TEMPO TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 537.693260000000000000
          Top = 9.897650000000000000
          Width = 39.145806150000000000
          Height = 25.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'HORA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line56: TfrxLineView
          Top = 71.811070000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line58: TfrxLineView
          Left = 1.220470000000000000
          Top = 90.708720000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line59: TfrxLineView
          Left = 1.220470000000000000
          Top = 109.606370000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line60: TfrxLineView
          Left = 1.000000000000000000
          Top = 128.504020000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line61: TfrxLineView
          Left = 1.000000000000000000
          Top = 147.401670000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line62: TfrxLineView
          Left = 1.000000000000000000
          Top = 166.299320000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line63: TfrxLineView
          Left = 1.000000000000000000
          Top = 185.196970000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line64: TfrxLineView
          Left = 1.000000000000000000
          Top = 204.094620000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line65: TfrxLineView
          Left = 1.220470000000000000
          Top = 222.992270000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line66: TfrxLineView
          Left = 1.220470000000000000
          Top = 241.889920000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line67: TfrxLineView
          Left = 1.000000000000000000
          Top = 260.787570000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line68: TfrxLineView
          Left = 1.000000000000000000
          Top = 279.685220000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line69: TfrxLineView
          Left = 1.000000000000000000
          Top = 298.582870000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line70: TfrxLineView
          Left = 1.000000000000000000
          Top = 317.480520000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line71: TfrxLineView
          Left = 1.000000000000000000
          Top = 336.378170000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line72: TfrxLineView
          Left = 1.000000000000000000
          Top = 365.834880000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line73: TfrxLineView
          Left = 1.000000000000000000
          Top = 396.850650000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line74: TfrxLineView
          Left = 1.000000000000000000
          Top = 427.086890000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line75: TfrxLineView
          Left = 1.779530000000000000
          Top = 449.764070000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line76: TfrxLineView
          Left = 1.000000000000000000
          Top = 468.661720000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line77: TfrxLineView
          Left = 1.000000000000000000
          Top = 487.559370000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line78: TfrxLineView
          Left = 1.000000000000000000
          Top = 507.236550000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line79: TfrxLineView
          Left = 0.220470000000000000
          Top = 526.693260000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line80: TfrxLineView
          Left = 1.000000000000000000
          Top = 547.031850000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line81: TfrxLineView
          Left = 1.000000000000000000
          Top = 564.929500000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line82: TfrxLineView
          Left = 1.000000000000000000
          Top = 585.827150000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line83: TfrxLineView
          Left = 1.000000000000000000
          Top = 602.724800000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line84: TfrxLineView
          Left = 1.000000000000000000
          Top = 621.622450000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line85: TfrxLineView
          Top = 638.740570000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 302.362400000000000000
          Top = 366.614410000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo90: TfrxMemoView
          Left = 113.385900000000000000
          Top = 132.283550000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tornear conforme Desenho')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 112.165430000000000000
          Top = 151.181200000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tornear conforme Desenho')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 113.385900000000000000
          Top = 170.078850000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tornear conforme Desenho')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 113.385900000000000000
          Top = 188.976500000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tornear conforme Desenho')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 113.385900000000000000
          Top = 204.094620000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tornear conforme Desenho')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Align = baCenter
          Top = 638.740570000000000000
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   OBSERVA'#199#213'ES')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 202.992270000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo114: TfrxMemoView
          Left = -0.102350000000000000
          Top = 0.779530000000000000
          Width = 120.944960000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '')
          ParentFont = False
        end
        object Line12: TfrxLineView
          Left = 716.331170000000000000
          Top = 195.425480000000000000
          Height = 789.921770000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Memo27: TfrxMemoView
          Left = 0.015770000000000000
          Top = 181.417440000000000000
          Width = 135.130346150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'Cod. Material')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 607.827150000000000000
          Top = 181.299320000000000000
          Width = 108.673636150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   QUANTIDADE')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 174.417440000000000000
          Top = 79.370130000000000000
          Width = 162.519790000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   N'#176' DO PEDIDO')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 120.596070770000000000
          Top = 1.559060000000000000
          Width = 359.055350000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clAppWorkSpace
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE PRODU'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 477.651420770000000000
          Top = 1.559060000000000000
          Width = 109.606370000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '  N'#176)
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 584.478260770000000000
          Top = 1.559060000000000000
          Width = 132.283550000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            ' P'#193'GINA')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 571.478260770000000000
          Top = 16.677180000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '   [Page#] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object frxdbdtstOrdemProducaoOSV_CODIGO1: TfrxMemoView
          Left = 480.651110770000000000
          Top = 14.543290000000000000
          Width = 104.133890000000000000
          Height = 18.897650000000000000
          DataField = 'OSV_CODIGO'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_CODIGO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 0.220470000000000000
          Top = 3.118120000000000000
          Width = 120.944960000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[RazaoSocial]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 0.338590000000000000
          Top = 121.133890000000000000
          Width = 313.700990000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   N'#176' DO DESENHO ')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 78.923076920000000000
          Width = 177.637910000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   DATA DO PEDIDO')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 336.228510000000000000
          Top = 78.923076920000000000
          Width = 188.976500000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   DATA DA OP')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 524.897960000000000000
          Top = 78.923076920000000000
          Width = 192.756030000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '    DATA  DE ENTREGA')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_REFER: TfrxMemoView
          Left = 11.338590000000000000
          Top = 53.102350000000000000
          Width = 105.826840000000000000
          Height = 14.897650000000000000
          DataField = 'PRD_REFER'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_REFER"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoOSV_EMISSAO: TfrxMemoView
          Left = 14.000000000000000000
          Top = 97.393630000000000000
          Width = 147.212740000000000000
          Height = 18.061795380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PED_DTENTRADA"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_REFER1: TfrxMemoView
          Left = 14.307692320000000000
          Top = 57.281623080000000000
          Width = 86.929190000000000000
          Height = 16.589957700000000000
          DataField = 'PRD_REFER'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_REFER"]')
        end
        object Memo30: TfrxMemoView
          Top = 41.574830000000000000
          Width = 120.944960000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            ' Refer'#234'ncia')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 631.827150000000000000
          Top = 41.574830000000000000
          Width = 86.929190000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   Quantidade')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 120.944960000000000000
          Top = 41.574830000000000000
          Width = 514.016080000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   Descri'#231#227'o')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_DESCRI: TfrxMemoView
          Left = 126.842610000000000000
          Top = 55.692950000000000000
          Width = 502.677490000000000000
          Height = 22.677180000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_DESCRI"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_REFER2: TfrxMemoView
          Left = 5.669295000000000000
          Top = 57.913420000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_REFER'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_REFER"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoOSV_QTDE2: TfrxMemoView
          Left = 636.614410000000000000
          Top = 57.692950000000000000
          Width = 75.590600000000000000
          Height = 18.967485380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_QTDE"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 497.897960000000000000
          Top = 120.944960000000000000
          Width = 219.212740000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   N'#176' DA ORDEM DO CLIENTE')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 533.559370000000000000
          Top = 96.149660000000000000
          Width = 147.212740000000000000
          Height = 18.061795380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_DTENTREGA"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 352.551330000000000000
          Top = 97.267780000000000000
          Width = 147.212740000000000000
          Height = 18.061795380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_EMISSAO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 527.913730000000000000
          Top = 137.504020000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_ORDEM_COMPRA"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 313.409710000000000000
          Top = 121.165430000000000000
          Width = 185.196970000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   C'#211'DIGO DO CLIENTE')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 331.937230000000000000
          Top = 137.944960000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."CLI_CODIGO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 219.417440000000000000
          Top = 98.267780000000000000
          Width = 101.858380000000000000
          Height = 18.061795380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PED_CODIGO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = -1.230769230000000000
          Top = 162.504020000000000000
          Width = 717.978426920000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clAppWorkSpace
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'FICHA T'#201'CNICA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 133.953974610000000000
          Top = 181.794325380000000000
          Width = 405.760216150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   Descri'#231#227'o')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 539.646282300000000000
          Top = 181.794325380000000000
          Width = 70.878336150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   UND')
          ParentFont = False
        end
      end
      object Memo70: TfrxMemoView
        Left = -10.779530000000000000
        Top = -192.756030000000000000
        Width = 58.043456150000000000
        Height = 25.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clWhite
        Fill.Style = bsClear
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo71: TfrxMemoView
        Left = -11.338590000000000000
        Top = -167.519790000000000000
        Width = 58.043456150000000000
        Height = 25.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clWhite
        Fill.Style = bsClear
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo72: TfrxMemoView
        Left = -11.338590000000000000
        Top = -143.063080000000000000
        Width = 58.043456150000000000
        Height = 25.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clWhite
        Fill.Style = bsClear
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo73: TfrxMemoView
        Left = -10.559060000000000000
        Top = -117.385900000000000000
        Width = 58.043456150000000000
        Height = 25.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clWhite
        Fill.Style = bsClear
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Line13: TfrxLineView
        Height = 854.173780000000000000
        Color = clBlack
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        DataSet = frxDBfichatecnica
        DataSetName = 'frxdbdtstFichaTecnica'
        RowCount = 0
        object frxdbdtstFichaTecnicaPRD_REFER_ITENS: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.800128460000000000
          Width = 94.488250000000000000
          Height = 15.051496150000000000
          DataField = 'PRD_REFER_ITENS'
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."PRD_REFER_ITENS"]')
          ParentFont = False
        end
        object frxdbdtstFichaTecnicaPRD_DESCRI: TfrxMemoView
          Left = 141.811069990000000000
          Top = 1.779530000000000000
          Width = 389.291590000000000000
          Height = 15.051496150000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."PRD_DESCRI"]')
          ParentFont = False
        end
        object frxdbdtstFichaTecnicaOSI_QTDE1: TfrxMemoView
          Left = 626.548760770000000000
          Top = 2.646282310000000000
          Width = 75.530089220000000000
          Height = 15.051496150000000000
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."OSI_QTDE_TOTAL_cc"]')
          ParentFont = False
        end
        object frxdbdtstFichaTecnicaPRD_UND: TfrxMemoView
          Left = 541.538461530000000000
          Top = 1.841325380000000000
          Width = 56.656581540000000000
          Height = 15.820726920000000000
          DataField = 'PRD_UND'
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."PRD_UND"]')
          ParentFont = False
        end
      end
    end
  end
  object pmApontar: TPopupMenu
    Left = 108
    Top = 328
    object miGerarEngenhariaProcessos: TMenuItem
      Caption = 'Gerar engenharia processos'
      OnClick = miGerarEngenhariaProcessosClick
    end
    object miApontar: TMenuItem
      Caption = 'Apontar'
    end
  end
  object dsEngeGeral: TDataSource
    DataSet = qEngeGeral
    Left = 328
    Top = 312
  end
  object qEngeGeral: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = ''
    DBConnection = DataCadastros.SQLConnection1
    Options = []
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 420
    Top = 304
    object qEngeGeralOPE_DESCRICAO: TStringField
      FieldName = 'OPE_DESCRICAO'
      Size = 60
    end
    object qEngeGeralSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object qEngeGeralOSV_QTDE: TFMTBCDField
      DisplayLabel = 'Solicitada'
      FieldName = 'OSV_QTDE'
      Size = 18
    end
    object qEngeGeralOSV_DTENTREGA: TSQLTimeStampField
      DisplayLabel = 'Entrega'
      FieldName = 'OSV_DTENTREGA'
    end
    object qEngeGeralFAB_PRODUZINDO: TFMTBCDField
      DisplayLabel = 'Produzindo'
      FieldName = 'FAB_PRODUZINDO'
      Size = 18
    end
    object qEngeGeralFAB_PRODUZIDA: TFMTBCDField
      DisplayLabel = 'Produzida'
      FieldName = 'FAB_PRODUZIDA'
      Size = 18
    end
    object qEngeGeralFAB_REFUGADA: TFMTBCDField
      DisplayLabel = 'Refugada'
      FieldName = 'FAB_REFUGADA'
      Size = 18
    end
    object qEngeGeralPRD_DESCRI: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object qEngeGeralRestantes: TLargeintField
      DisplayLabel = 'Restantes (dias)'
      FieldName = 'Restantes'
    end
    object qEngeGeralFAB_CODIGO: TIntegerField
      FieldName = 'FAB_CODIGO'
    end
    object qEngeGeralOPE_CODIGO: TIntegerField
      FieldName = 'OPE_CODIGO'
    end
    object qEngeGeralFAB_OBSERVACAO: TBlobField
      FieldName = 'FAB_OBSERVACAO'
      Size = 4000
    end
  end
  object frxOP_Mod9: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41688.374658171300000000
    ReportOptions.LastChange = 43132.710804270800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxOP1GetValue
    Left = 916
    Top = 384
    Datasets = <
      item
        DataSet = frxDBfichatecnica
        DataSetName = 'frxdbdtstFichaTecnica'
      end
      item
        DataSet = frxdbdtstOrdemProducao
        DataSetName = 'frxdbdtstOrdemProducao'
      end
      item
        DataSet = frxDBEngenharia
        DataSetName = 'frxDBEngenharia'
      end
      item
        DataSet = frxDBEspecifica
        DataSetName = 'frxDBEspecifica'
      end
      item
        DataSet = frxDbParam
        DataSetName = 'frxDbParam'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'RazaoSocial'
        Value = Null
      end>
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 202.992270000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo21: TfrxMemoView
          Left = 133.953974610000000000
          Top = 181.794325380000000000
          Width = 405.760216150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            ' Descri'#231#227'o')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 607.827150000000000000
          Top = 181.299320000000000000
          Width = 108.673636150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   QUANTIDADE')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 539.646282300000000000
          Top = 181.794325380000000000
          Width = 70.878336150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   UND')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 0.015770000000000000
          Top = 181.417440000000000000
          Width = 135.130346150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'Cod. Material')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = -0.102350000000000000
          Top = 0.779530000000001200
          Width = 120.944960000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 174.417440000000000000
          Top = 79.370130000000000000
          Width = 162.519790000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   N'#176' DO PEDIDO')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 120.596070770000000000
          Top = 1.559059999999999000
          Width = 359.055350000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clAppWorkSpace
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE PRODU'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 477.651420770000000000
          Top = 1.559059999999999000
          Width = 109.606370000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '  N'#176)
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 585.478260770000000000
          Top = 1.559059999999999000
          Width = 132.283550000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            ' P'#193'GINA')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 571.478260770000000000
          Top = 16.677180000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '   [Page#] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object frxdbdtstOrdemProducaoOSV_CODIGO1: TfrxMemoView
          Left = 480.651110770000000000
          Top = 14.543290000000000000
          Width = 104.133890000000000000
          Height = 18.897650000000000000
          DataField = 'OSV_CODIGO'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_CODIGO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 0.220470000000000000
          Top = 3.118120000000001000
          Width = 120.944960000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[RazaoSocial]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 0.338590000000000000
          Top = 121.133890000000000000
          Width = 313.700990000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   N'#176' DO DESENHO ')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 78.923076920000000000
          Width = 177.637910000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   DATA DO PEDIDO')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 336.228510000000000000
          Top = 78.923076920000000000
          Width = 188.976500000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   DATA DA OP')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 524.897960000000000000
          Top = 78.923076920000000000
          Width = 192.756030000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '    DATA  DE ENTREGA')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_REFER: TfrxMemoView
          Left = 11.338590000000000000
          Top = 53.102350000000000000
          Width = 105.826840000000000000
          Height = 14.897650000000000000
          DataField = 'PRD_REFER'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_REFER"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoOSV_EMISSAO: TfrxMemoView
          Left = 14.000000000000000000
          Top = 97.393630000000000000
          Width = 147.212740000000000000
          Height = 18.061795380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PED_DTENTRADA"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_REFER1: TfrxMemoView
          Left = 14.307692320000000000
          Top = 57.281623080000000000
          Width = 86.929190000000000000
          Height = 16.589957700000000000
          DataField = 'PRD_REFER'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_REFER"]')
        end
        object Memo30: TfrxMemoView
          Top = 41.574830000000000000
          Width = 120.944960000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            ' Refer'#234'ncia')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 631.827150000000000000
          Top = 41.574830000000000000
          Width = 85.795275590551190000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   Quantidade')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 120.944960000000000000
          Top = 41.574830000000000000
          Width = 514.016080000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   Descri'#231#227'o')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_DESCRI: TfrxMemoView
          Left = 126.842610000000000000
          Top = 55.692949999999990000
          Width = 502.677490000000000000
          Height = 22.677180000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_DESCRI"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_REFER2: TfrxMemoView
          Left = 5.669295000000000000
          Top = 57.913420000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_REFER'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_REFER"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoOSV_QTDE2: TfrxMemoView
          Left = 636.614410000000000000
          Top = 57.692950000000000000
          Width = 75.590600000000000000
          Height = 18.967485380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_QTDE"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 498.897960000000000000
          Top = 120.944960000000000000
          Width = 219.212740000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   N'#176' DA ORDEM DO CLIENTE')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 533.559370000000000000
          Top = 96.149660000000000000
          Width = 147.212740000000000000
          Height = 18.061795380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_DTENTREGA"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 352.551330000000000000
          Top = 97.267780000000000000
          Width = 147.212740000000000000
          Height = 18.061795380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_EMISSAO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 527.913730000000000000
          Top = 137.504020000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_ORDEM_COMPRA"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 313.409710000000000000
          Top = 121.165430000000000000
          Width = 185.196970000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   C'#211'DIGO DO CLIENTE')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 331.937230000000000000
          Top = 137.944960000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."CLI_CODIGO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 219.417440000000000000
          Top = 98.267780000000000000
          Width = 101.858380000000000000
          Height = 18.061795380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PED_CODIGO"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = -1.230769230000000000
          Top = 162.504020000000000000
          Width = 717.978426920000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clAppWorkSpace
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'FICHA T'#201'CNICA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo70: TfrxMemoView
        Left = -10.779530000000000000
        Top = -192.756030000000000000
        Width = 58.043456150000000000
        Height = 25.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clWhite
        Fill.Style = bsClear
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo71: TfrxMemoView
        Left = -11.338590000000000000
        Top = -167.519790000000000000
        Width = 58.043456150000000000
        Height = 25.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clWhite
        Fill.Style = bsClear
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo72: TfrxMemoView
        Left = -11.338590000000000000
        Top = -143.063080000000000000
        Width = 58.043456150000000000
        Height = 25.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clWhite
        Fill.Style = bsClear
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo73: TfrxMemoView
        Left = -10.559060000000000000
        Top = -117.385900000000000000
        Width = 58.043456150000000000
        Height = 25.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clWhite
        Fill.Style = bsClear
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        DataSet = frxDBfichatecnica
        DataSetName = 'frxdbdtstFichaTecnica'
        KeepTogether = True
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object frxdbdtstFichaTecnicaPRD_REFER_ITENS: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.800128459999996000
          Width = 94.488250000000000000
          Height = 15.051496150000000000
          DataField = 'PRD_REFER_ITENS'
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."PRD_REFER_ITENS"]')
          ParentFont = False
        end
        object frxdbdtstFichaTecnicaPRD_DESCRI: TfrxMemoView
          Left = 141.811069990000000000
          Top = 1.779530000000022000
          Width = 389.291590000000000000
          Height = 15.051496150000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."PRD_DESCRI"]')
          ParentFont = False
        end
        object frxdbdtstFichaTecnicaOSI_QTDE1: TfrxMemoView
          Left = 626.548760770000000000
          Top = 2.646282310000004000
          Width = 75.530089220000000000
          Height = 15.051496150000000000
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."OSI_QTDE_TOTAL_cc"]')
          ParentFont = False
        end
        object frxdbdtstFichaTecnicaPRD_UND: TfrxMemoView
          Left = 541.538461530000000000
          Top = 1.841325380000001000
          Width = 56.656581540000000000
          Height = 15.820726920000000000
          DataField = 'PRD_UND'
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."PRD_UND"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 25.661424650000000000
        Top = 377.953000000000000000
        Width = 718.110700000000000000
        DataSet = frxDBEngenharia
        DataSetName = 'frxDBEngenharia'
        KeepChild = True
        KeepTogether = True
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Shape1: TfrxShapeView
          Left = 59.472480000000000000
          Top = 0.338590000000010600
          Width = 306.141930000000000000
          Height = 25.322834650000000000
        end
        object Shape2: TfrxShapeView
          Left = 0.779530000000000000
          Top = 0.338590000000010600
          Width = 57.826771653543310000
          Height = 25.322834650000000000
        end
        object frxDBEngenhariaSEQUENCIA: TfrxMemoView
          Left = 9.118120000000000000
          Top = 6.677180000000022000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          DataField = 'SEQUENCIA'
          DataSet = frxDBEngenharia
          DataSetName = 'frxDBEngenharia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEngenharia."SEQUENCIA"]')
          ParentFont = False
        end
        object frxDBEngenhariaOPE_DESCRICAO: TfrxMemoView
          Left = 66.472480000000000000
          Top = 6.677180000000022000
          Width = 253.228510000000000000
          Height = 15.118110240000000000
          DataField = 'OPE_DESCRICAO'
          DataSet = frxDBEngenharia
          DataSetName = 'frxDBEngenharia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEngenharia."OPE_DESCRICAO"]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Left = 365.614410000000000000
          Top = 0.338590000000010600
          Width = 84.500166150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          Left = 450.543600000000000000
          Top = 0.338590000000010600
          Width = 46.704866150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Left = 495.897960000000000000
          Top = 0.338590000000010600
          Width = 42.925336150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          Left = 576.811380000000000000
          Top = 0.338590000000010600
          Width = 58.043456150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          Left = 635.079160000000000000
          Top = 0.338590000000010600
          Width = 42.925336150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          Left = 674.094930000000000000
          Top = 0.338590000000010600
          Width = 44.598425196850390000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          Left = 538.252320000000000000
          Top = 0.338590000000010600
          Width = 39.145806150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 25.322834650000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object Memo116: TfrxMemoView
          Width = 58.043456150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'ETAPA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 58.133890000000000000
          Width = 307.492436150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRI'#199#195'O DE ATIVIDADES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 366.157700000000000000
          Width = 88.279696150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'RESPONS'#193'VEL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 450.984540000000000000
          Width = 46.704866150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA IN'#205'CIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 495.338900000000000000
          Width = 42.925336150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'SET-UP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 577.252320000000000000
          Width = 58.043456150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA T'#201'RMINO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 634.520100000000000000
          Width = 42.925336150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'HORA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 673.535870000000000000
          Width = 44.220472440944880000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'TEMPO TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 537.693260000000000000
          Width = 39.145806150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'HORA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.897635350000000000
        ParentFont = False
        Top = 483.779840000000000000
        Width = 718.110700000000000000
        DataSet = frxDBEspecifica
        DataSetName = 'frxDBEspecifica'
        Filter = '<frxDBEngenharia."FAB_CODIGO">=<frxDBEspecifica."FAB_CODIGO">'
        RowCount = 0
        object frxDBEspecificaESR_NOME: TfrxMemoView
          Left = 47.472480000000000000
          Top = 3.779530000000079000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_NOME'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_NOME"]')
          ParentFont = False
        end
        object frxDBEspecificaESR_PADROES: TfrxMemoView
          Left = 135.724490000000000000
          Top = 3.559059999999875000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_PADROES'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_PADROES"]')
          ParentFont = False
        end
        object frxDBEspecificaESR_COL1: TfrxMemoView
          Left = 254.480520000000000000
          Top = 3.559059999999875000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_COL1'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_COL1"]')
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          Left = 315.732530000000000000
          Top = 3.779529999999852000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_COL2'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_COL2"]')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          Left = 438.016080000000000000
          Top = 3.779529999999852000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_COL4'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_COL4"]')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          Left = 377.764070000000000000
          Top = 3.779529999999852000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_COL3'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_COL3"]')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          Left = 502.268090000000000000
          Top = 3.779529999999852000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_COL5'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_COL5"]')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          Left = 566.724800000000000000
          Top = 3.779529999999852000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_COL6'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_COL6"]')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          Left = 632.858690000000000000
          Top = 3.779529999999852000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_COL7'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_COL7"]')
          ParentFont = False
        end
        object Shape7: TfrxShapeView
          Left = 30.236220470000000000
          Width = 98.267716540000000000
          Height = 22.677165350000000000
        end
        object Shape8: TfrxShapeView
          Left = 128.881889760000000000
          Top = 0.220469999999977500
          Width = 120.944881890000000000
          Height = 22.677165350000000000
        end
        object Shape9: TfrxShapeView
          Left = 249.448818900000000000
          Width = 61.984251970000000000
          Height = 22.677165350000000000
        end
        object Shape10: TfrxShapeView
          Left = 311.944881890000000000
          Width = 60.472440940000000000
          Height = 22.677165350000000000
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 34.015748030000000000
        ParentFont = False
        Top = 427.086890000000000000
        Width = 718.110700000000000000
        KeepChild = True
        object Memo32: TfrxMemoView
          Left = 250.551330000000000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          DataField = 'ESP_COL1'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Memo.UTF8W = (
            '[frxDbParam."ESP_COL1"]')
        end
        object Shape11: TfrxShapeView
          Left = 128.740260000000000000
          Width = 120.944960000000000000
          Height = 34.015748030000000000
        end
        object Shape12: TfrxShapeView
          Left = 311.793700790000000000
          Width = 60.472480000000000000
          Height = 34.015748030000000000
        end
        object Shape13: TfrxShapeView
          Left = 249.448980000000000000
          Width = 61.984251970000000000
          Height = 34.015748030000000000
        end
        object Shape14: TfrxShapeView
          Left = 30.236240000000000000
          Width = 98.267780000000000000
          Height = 34.015748030000000000
        end
        object Memo33: TfrxMemoView
          Left = 45.692950000000010000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          DataField = 'ESP_NOME'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbParam."ESP_NOME"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 129.724490000000000000
          Top = 1.000000000000000000
          Width = 117.165430000000000000
          Height = 22.677180000000000000
          DataField = 'ESP_PADROES'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbParam."ESP_PADROES"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 375.937230000000000000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          DataField = 'ESP_COL3'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbParam."ESP_COL3"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 436.630180000000000000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          DataField = 'ESP_COL4'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbParam."ESP_COL4"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 497.102660000000000000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          DataField = 'ESP_COL5'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbParam."ESP_COL5"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 553.795610000000000000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          DataField = 'ESP_COL6'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbParam."ESP_COL6"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 606.709030000000000000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          DataField = 'ESP_COL7'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbParam."ESP_COL7"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 317.244280000000000000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          DataField = 'ESP_COL2'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Memo.UTF8W = (
            '[frxDbParam."ESP_COL2"]')
        end
      end
    end
  end
  object frxDBEngenharia: TfrxDBDataset
    UserName = 'frxDBEngenharia'
    CloseDataSource = True
    FieldAliases.Strings = (
      'OPE_DESCRICAO=OPE_DESCRICAO'
      'SEQUENCIA=SEQUENCIA'
      'OSV_QTDE=OSV_QTDE'
      'OSV_DTENTREGA=OSV_DTENTREGA'
      'FAB_PRODUZINDO=FAB_PRODUZINDO'
      'FAB_PRODUZIDA=FAB_PRODUZIDA'
      'FAB_REFUGADA=FAB_REFUGADA'
      'PRD_DESCRI=PRD_DESCRI'
      'Restantes=Restantes'
      'FAB_CODIGO=FAB_CODIGO'
      'OPE_CODIGO=OPE_CODIGO'
      'FAB_OBSERVACAO=FAB_OBSERVACAO')
    DataSet = qEngeGeral
    BCDToCurrency = False
    Left = 516
    Top = 304
  end
  object qEspecifica: TSQLQuery
    Params = <>
    Left = 420
    Top = 360
    object qEspecificaESR_CODIGO: TIntegerField
      FieldName = 'ESR_CODIGO'
    end
    object qEspecificaESR_NOME: TStringField
      FieldName = 'ESR_NOME'
      Size = 60
    end
    object qEspecificaESR_PADROES: TStringField
      FieldName = 'ESR_PADROES'
      Size = 100
    end
    object qEspecificaESR_COL1: TStringField
      FieldName = 'ESR_COL1'
      Size = 100
    end
    object qEspecificaESR_COL2: TStringField
      FieldName = 'ESR_COL2'
      Size = 100
    end
    object qEspecificaESR_COL3: TStringField
      FieldName = 'ESR_COL3'
      Size = 100
    end
    object qEspecificaESR_COL4: TStringField
      FieldName = 'ESR_COL4'
      Size = 100
    end
    object qEspecificaESR_COL5: TStringField
      FieldName = 'ESR_COL5'
      Size = 100
    end
    object qEspecificaESR_COL6: TStringField
      FieldName = 'ESR_COL6'
      Size = 100
    end
    object qEspecificaESR_COL7: TStringField
      FieldName = 'ESR_COL7'
      Size = 100
    end
    object qEspecificaFAB_CODIGO: TIntegerField
      FieldName = 'FAB_CODIGO'
    end
  end
  object frxDBEspecifica: TfrxDBDataset
    UserName = 'frxDBEspecifica'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ESR_CODIGO=ESR_CODIGO'
      'ESR_NOME=ESR_NOME'
      'ESR_PADROES=ESR_PADROES'
      'ESR_COL1=ESR_COL1'
      'ESR_COL2=ESR_COL2'
      'ESR_COL3=ESR_COL3'
      'ESR_COL4=ESR_COL4'
      'ESR_COL5=ESR_COL5'
      'ESR_COL6=ESR_COL6'
      'ESR_COL7=ESR_COL7'
      'FAB_CODIGO=FAB_CODIGO')
    DataSet = qEspecifica
    BCDToCurrency = False
    Left = 516
    Top = 352
  end
  object qParamEsp: TSQLQuery
    Params = <>
    Left = 268
    Top = 520
    object qParamEspESP_NOME: TStringField
      FieldName = 'ESP_NOME'
      Size = 40
    end
    object qParamEspESP_PADROES: TStringField
      FieldName = 'ESP_PADROES'
      Size = 40
    end
    object qParamEspESP_COL1: TStringField
      FieldName = 'ESP_COL1'
      Size = 40
    end
    object qParamEspESP_COL2: TStringField
      FieldName = 'ESP_COL2'
      Size = 40
    end
    object qParamEspESP_COL3: TStringField
      FieldName = 'ESP_COL3'
      Size = 40
    end
    object qParamEspESP_COL4: TStringField
      FieldName = 'ESP_COL4'
      Size = 40
    end
    object qParamEspESP_COL5: TStringField
      FieldName = 'ESP_COL5'
      Size = 40
    end
    object qParamEspESP_COL6: TStringField
      FieldName = 'ESP_COL6'
      Size = 40
    end
    object qParamEspESP_COL7: TStringField
      FieldName = 'ESP_COL7'
      Size = 40
    end
  end
  object frxDbParam: TfrxDBDataset
    UserName = 'frxDbParam'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ESP_NOME=ESP_NOME'
      'ESP_PADROES=ESP_PADROES'
      'ESP_COL1=ESP_COL1'
      'ESP_COL2=ESP_COL2'
      'ESP_COL3=ESP_COL3'
      'ESP_COL4=ESP_COL4'
      'ESP_COL5=ESP_COL5'
      'ESP_COL6=ESP_COL6'
      'ESP_COL7=ESP_COL7')
    DataSet = qParamEsp
    BCDToCurrency = False
    Left = 404
    Top = 600
  end
  object CdsLoteProduto: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 'select * from PRD_LOTE'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select * from PRD_LOTE'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 560
    Top = 510
    object CdsLoteProdutoPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
    end
    object CdsLoteProdutoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsLoteProdutoPRDL_DATA_FABRICACAO: TDateField
      FieldName = 'PRDL_DATA_FABRICACAO'
    end
    object CdsLoteProdutoPRDL_DATA_VALIDADE: TDateField
      FieldName = 'PRDL_DATA_VALIDADE'
    end
    object CdsLoteProdutoPRDL_LOTE: TStringField
      FieldName = 'PRDL_LOTE'
      Size = 30
    end
    object CdsLoteProdutoPRDL_PRECO_MAXIMO: TFMTBCDField
      FieldName = 'PRDL_PRECO_MAXIMO'
      Precision = 20
      Size = 5
    end
    object CdsLoteProdutoPRDL_SALDO: TFMTBCDField
      FieldName = 'PRDL_SALDO'
      Precision = 20
      Size = 5
    end
    object CdsLoteProdutoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 10
    end
  end
  object dsLoteProduto: TDataSource
    DataSet = CdsLoteProduto
    Left = 760
    Top = 536
  end
  object ppRelOSP10: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 15000
    PrinterSetup.mmMarginLeft = 10000
    PrinterSetup.mmMarginRight = 10000
    PrinterSetup.mmMarginTop = 25000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'X:\developer\adjutor\fontesrelatorios\RELOSP01'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 856
    Top = 345
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand5: TppHeaderBand
      Background.Brush.Style = bsClear
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 40217
      mmPrintPosition = 0
      object ppShape38: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape1'
        mmHeight = 5821
        mmLeft = 0
        mmTop = 25400
        mmWidth = 87842
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel2: TppLabel
        OnPrint = ppLabel2Print
        DesignLayer = ppDesignLayer5
        UserName = 'LBL_00_EMPRESA'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LABEL_EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4092
        mmLeft = 265
        mmTop = 0
        mmWidth = 30621
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLine40: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 4233
        mmWidth = 196057
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_EMISSAO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 177536
        mmTop = 5557
        mmWidth = 17198
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4163
        mmLeft = 1297
        mmTop = 10319
        mmWidth = 18521
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText3'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 21406
        mmTop = 10319
        mmWidth = 97159
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel114: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label3'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'Essencia(s)=>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3316
        mmLeft = 1852
        mmTop = 26458
        mmWidth = 19315
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel176: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label4'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'PRODUZIR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 1322
        mmTop = 15874
        mmWidth = 18521
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel177: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label5'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186'.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 125677
        mmTop = 5557
        mmWidth = 11642
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText4'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 137848
        mmTop = 5557
        mmWidth = 17992
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText5'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 21690
        mmTop = 15874
        mmWidth = 18521
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel178: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LblTipo2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 98694
        mmTop = 15874
        mmWidth = 4763
        BandType = 0
        LayerName = BandLayer5
      end
      object ppShape40: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape2'
        mmHeight = 5821
        mmLeft = 87577
        mmTop = 25400
        mmWidth = 21960
        BandType = 0
        LayerName = BandLayer5
      end
      object ppShape41: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape3'
        mmHeight = 5293
        mmLeft = 109273
        mmTop = 25400
        mmWidth = 43567
        BandType = 0
        LayerName = BandLayer5
      end
      object ppShape47: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape7'
        mmHeight = 5292
        mmLeft = 152617
        mmTop = 25400
        mmWidth = 22000
        BandType = 0
        LayerName = BandLayer5
      end
      object ppShape62: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape8'
        mmHeight = 5292
        mmLeft = 174313
        mmTop = 25400
        mmWidth = 22000
        BandType = 0
        LayerName = BandLayer5
      end
      object ppShape75: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape10'
        mmHeight = 9790
        mmLeft = 0
        mmTop = 30427
        mmWidth = 87842
        BandType = 0
        LayerName = BandLayer5
      end
      object ppShape81: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape11'
        mmHeight = 9790
        mmLeft = 87577
        mmTop = 30427
        mmWidth = 21960
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel179: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label7'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'MAT'#201'RIA-PRIMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 1850
        mmTop = 32015
        mmWidth = 21166
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel180: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label8'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PESO Kg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 92340
        mmTop = 32015
        mmWidth = 12171
        BandType = 0
        LayerName = BandLayer5
      end
      object ppShape82: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape12'
        mmHeight = 9790
        mmLeft = 109273
        mmTop = 30427
        mmWidth = 43568
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel181: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label9'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'LOTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 125942
        mmTop = 32015
        mmWidth = 7408
        BandType = 0
        LayerName = BandLayer5
      end
      object ppShape83: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape17'
        mmHeight = 5292
        mmLeft = 152617
        mmTop = 34925
        mmWidth = 22000
        BandType = 0
        LayerName = BandLayer5
      end
      object ppShape88: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape18'
        mmHeight = 5292
        mmLeft = 174313
        mmTop = 34925
        mmWidth = 22000
        BandType = 0
        LayerName = BandLayer5
      end
      object ppShape89: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape19'
        mmHeight = 4763
        mmLeft = 152617
        mmTop = 30427
        mmWidth = 43921
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel183: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label17'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'INICIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 155263
        mmTop = 35983
        mmWidth = 14817
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel184: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label18'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'FINAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 178017
        mmTop = 35983
        mmWidth = 13494
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel185: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label102'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ADI'#199#195'O DE MAT.PRIMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 158235
        mmTop = 30956
        mmWidth = 31891
        BandType = 0
        LayerName = BandLayer5
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer5
        UserName = 'SystemVariable1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 186532
        mmTop = 529
        mmWidth = 9260
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLine42: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line19'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 15346
        mmWidth = 195792
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel186: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label82'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 1324
        mmTop = 21167
        mmWidth = 14291
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText24'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 21710
        mmTop = 21167
        mmWidth = 12701
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText81'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_RAZAO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 36265
        mmTop = 21167
        mmWidth = 108471
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel187: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label83'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'LOTE N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 154534
        mmTop = 21167
        mmWidth = 13758
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText82'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_LOTE'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 170408
        mmTop = 21167
        mmWidth = 24866
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel188: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label34'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PEDIDO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 125944
        mmTop = 10319
        mmWidth = 12965
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText83'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PED_CODIGO'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 139970
        mmTop = 10319
        mmWidth = 20902
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText43: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText84'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_DTENTREGA'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3175
        mmLeft = 172263
        mmTop = 15874
        mmWidth = 21692
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel189: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label85'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'ENTREGA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 147922
        mmTop = 15874
        mmWidth = 22224
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel190: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LblProduzir'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'KG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 42066
        mmTop = 15875
        mmWidth = 4498
        BandType = 0
        LayerName = BandLayer5
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText87'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'OSV_QTDE_CONVERTIDA'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,###0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 77006
        mmTop = 15874
        mmWidth = 19579
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel191: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label87'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'SOLICITADA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 55568
        mmTop = 15874
        mmWidth = 19332
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLabel88: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LBL_00_EMPRESA2'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'ORDEM DE PRODU'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4234
        mmLeft = 62177
        mmTop = 5556
        mmWidth = 61736
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLine94: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line94'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 794
        mmTop = 40217
        mmWidth = 194998
        BandType = 0
        LayerName = BandLayer5
      end
      object ppLine96: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line96'
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 181
        mmTop = 9694
        mmWidth = 196057
        BandType = 0
        LayerName = BandLayer5
      end
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
      Border.Visible = True
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText52: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText11'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_REFER_ITENS'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4302
        mmLeft = 794
        mmTop = 1
        mmWidth = 17198
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText53: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText15'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTALUC_CC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,####0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4231
        mmLeft = 88106
        mmTop = 1
        mmWidth = 20373
        BandType = 4
        LayerName = BandLayer5
      end
      object ppLine65: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line5'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 87577
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = BandLayer5
      end
      object ppLine69: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line6'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 109273
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = BandLayer5
      end
      object ppLine71: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line10'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 152617
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = BandLayer5
      end
      object ppLine72: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line101'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 174313
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = BandLayer5
      end
      object ppLine76: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line12'
        Border.Weight = 1.000000000000000000
        Position = lpRight
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 193675
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = BandLayer5
      end
      object ppLine77: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 0
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = BandLayer5
      end
      object ppDBText55: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText95'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DESCRI'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4231
        mmLeft = 19050
        mmTop = 1
        mmWidth = 67733
        BandType = 4
        LayerName = BandLayer5
      end
      object pmemoLote: TppMemo
        OnPrint = pmemoLotePrint
        DesignLayer = ppDesignLayer5
        UserName = 'Memo1'
        Caption = 'Memo1'
        CharWrap = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          'LOTER1212'
          'LOTE3948'
          'LOTE94509')
        RemoveEmptyLines = True
        Stretch = True
        Transparent = True
        mmHeight = 3881
        mmLeft = 110331
        mmTop = 352
        mmWidth = 40922
        BandType = 4
        LayerName = BandLayer5
        mmBottomOffset = 2000
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppSummaryBand5: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 151342
      mmPrintPosition = 0
      object ppShape91: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape24'
        mmHeight = 36513
        mmLeft = 0
        mmTop = 5027
        mmWidth = 196321
        BandType = 7
        LayerName = BandLayer5
      end
      object ppShape92: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape21'
        mmHeight = 5292
        mmLeft = 0
        mmTop = 0
        mmWidth = 22754
        BandType = 7
        LayerName = BandLayer5
      end
      object ppShape93: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape22'
        mmHeight = 5292
        mmLeft = 22754
        mmTop = 0
        mmWidth = 173414
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel192: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label11'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3246
        mmLeft = 1588
        mmTop = 1058
        mmWidth = 16933
        BandType = 7
        LayerName = BandLayer5
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc1'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTALUC_CC'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,####0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3175
        mmLeft = 88107
        mmTop = 1058
        mmWidth = 20373
        BandType = 7
        LayerName = BandLayer5
      end
      object ppShape94: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape23'
        mmHeight = 32559
        mmLeft = 0
        mmTop = 41275
        mmWidth = 196321
        BandType = 7
        LayerName = BandLayer5
      end
      object ppShape95: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape25'
        mmHeight = 14552
        mmLeft = 265
        mmTop = 116152
        mmWidth = 196321
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel195: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label21'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'ENVASE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 1852
        mmTop = 42863
        mmWidth = 18256
        BandType = 7
        LayerName = BandLayer5
      end
      object ppShape98: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape29'
        mmHeight = 42510
        mmLeft = 265
        mmTop = 74083
        mmWidth = 196057
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel198: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label22'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = '[_] Aprovado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 3969
        mmTop = 125677
        mmWidth = 23019
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel199: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label26'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = '[_] Reprovado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 32544
        mmTop = 125677
        mmWidth = 23283
        BandType = 7
        LayerName = BandLayer5
      end
      object ppShape101: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape32'
        mmHeight = 19315
        mmLeft = 354
        mmTop = 130530
        mmWidth = 195792
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel200: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label27'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'Provid'#234'ncias:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 117211
        mmWidth = 19579
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel202: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label29'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 166952
        mmTop = 48154
        mmWidth = 7673
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel203: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label30'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'QTDE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 74348
        mmTop = 48154
        mmWidth = 7144
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel204: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label301'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'VISTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 111390
        mmTop = 48154
        mmWidth = 8202
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel206: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label33'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'EMBALAGEM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 2910
        mmTop = 48154
        mmWidth = 22754
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel209: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label25'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'PROCESSO DA FABRICA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3969
        mmLeft = 794
        mmTop = 5821
        mmWidth = 52123
        BandType = 7
        LayerName = BandLayer5
      end
      object ppMemo1: TppMemo
        OnPrint = mProcPRCPrint
        DesignLayer = ppDesignLayer5
        UserName = 'mProcPRC'
        Caption = 'mProcPRC'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        RemoveEmptyLines = False
        Transparent = True
        mmHeight = 31221
        mmLeft = 1323
        mmTop = 10319
        mmWidth = 193146
        BandType = 7
        LayerName = BandLayer5
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLine41: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line41'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 794
        mmTop = 60061
        mmWidth = 194910
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLine56: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line56'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 798
        mmTop = 64641
        mmWidth = 194910
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLine78: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line78'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 803
        mmTop = 69222
        mmWidth = 194910
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLine79: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line79'
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 265
        mmTop = 124619
        mmWidth = 194998
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLine83: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line83'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 25135
        mmLeft = 55563
        mmTop = 48154
        mmWidth = 3969
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLine84: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line84'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 25135
        mmLeft = 95515
        mmTop = 48154
        mmWidth = 3969
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLine85: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line85'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 25135
        mmLeft = 144463
        mmTop = 48154
        mmWidth = 3969
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLine86: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line86'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 798
        mmTop = 54961
        mmWidth = 194910
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel193: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label193'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'CONTROLE DE QUALIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 1323
        mmTop = 75671
        mmWidth = 41010
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel194: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label194'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'ESPECIFICA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 63765
        mmTop = 82021
        mmWidth = 41010
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLine80: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line80'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 34572
        mmLeft = 59796
        mmTop = 82021
        mmWidth = 3969
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel196: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label196'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = ' - ASPECTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 86708
        mmWidth = 20107
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLine81: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line81'
        Weight = 0.750000000000000000
        mmHeight = 977
        mmLeft = 0
        mmTop = 90334
        mmWidth = 195702
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel197: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label197'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = ' - COR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 91206
        mmWidth = 9964
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLine82: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line82'
        Weight = 0.750000000000000000
        mmHeight = 977
        mmLeft = 5
        mmTop = 94913
        mmWidth = 195702
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel201: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label201'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = ' - ODOR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 95352
        mmWidth = 12081
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLine87: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line87'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 98977
        mmWidth = 195702
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel205: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label205'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = ' - PH :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 108668
        mmWidth = 8377
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLine88: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line88'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 5
        mmTop = 111907
        mmWidth = 195702
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel207: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label207'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = ' - VISCOSIDADE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 104170
        mmWidth = 26633
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLine89: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line89'
        Weight = 0.750000000000000000
        mmHeight = 977
        mmLeft = 5
        mmTop = 107587
        mmWidth = 195702
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel208: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label208'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = ' - DENSIDADE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3705
        mmLeft = 1323
        mmTop = 99672
        mmWidth = 23811
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLine90: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line90'
        Weight = 0.750000000000000000
        mmHeight = 977
        mmLeft = 5
        mmTop = 103441
        mmWidth = 195702
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel210: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label210'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = ' - REFRA'#199#195'O :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 1147
        mmTop = 112814
        mmWidth = 20019
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel211: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label211'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'EXPEDI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 1852
        mmTop = 130704
        mmWidth = 41010
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel212: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label212'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 3529
        mmTop = 134763
        mmWidth = 7673
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel213: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label213'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'TRANSPORTADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 30252
        mmTop = 135292
        mmWidth = 38100
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLine92: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line801'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15081
        mmLeft = 20198
        mmTop = 135292
        mmWidth = 3969
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLine93: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line93'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 354
        mmTop = 143227
        mmWidth = 194998
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel214: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label214'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'VISTO T'#201'CNICO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 119592
        mmTop = 125677
        mmWidth = 23283
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLine97: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line97'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 265
        mmTop = 85725
        mmWidth = 195350
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel215: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label215'
        HyperlinkEnabled = False
        Border.Weight = 1.000000000000000000
        Caption = 'AN'#193'LISE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 82021
        mmWidth = 11641
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel216: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label216'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'RESULTADO 1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 110331
        mmTop = 82021
        mmWidth = 41010
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLabel217: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label217'
        HyperlinkEnabled = False
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Caption = 'RESULTADO 2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        FormField = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 153988
        mmTop = 82021
        mmWidth = 41010
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLine98: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line802'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 34660
        mmLeft = 151607
        mmTop = 82021
        mmWidth = 3969
        BandType = 7
        LayerName = BandLayer5
      end
      object ppLine99: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line803'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 34660
        mmLeft = 105304
        mmTop = 82021
        mmWidth = 3969
        BandType = 7
        LayerName = BandLayer5
      end
    end
    object ppDesignLayers5: TppDesignLayers
      object ppDesignLayer5: TppDesignLayer
        UserName = 'BandLayer5'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object frxOp_Mod11: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Novi Sistemas'
    ReportOptions.CreateDate = 41688.374658171300000000
    ReportOptions.LastChange = 43333.651668067130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxOP1GetValue
    Left = 516
    Top = 208
    Datasets = <
      item
        DataSet = frxDBfichatecnica
        DataSetName = 'frxdbdtstFichaTecnica'
      end
      item
        DataSet = frxdbdtstOrdemProducao
        DataSetName = 'frxdbdtstOrdemProducao'
      end
      item
        DataSet = frxDBEngenharia
        DataSetName = 'frxDBEngenharia'
      end
      item
        DataSet = frxDBEspecifica
        DataSetName = 'frxDBEspecifica'
      end
      item
        DataSet = frxDbParam
        DataSetName = 'frxDbParam'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'RazaoSocial'
        Value = Null
      end>
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 172.748300000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo114: TfrxMemoView
          Top = 1.559059999999999000
          Width = 173.858380000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 174.417440000000000000
          Top = 78.923076920000000000
          Width = 162.519790000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   N'#176' DO PEDIDO')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 173.509490770000000000
          Top = 1.559059999999999000
          Width = 306.141930000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clAppWorkSpace
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE PRODU'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 477.651420770000000000
          Top = 1.559059999999999000
          Width = 109.606370000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '  N'#176)
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 585.478260770000000000
          Top = 1.559059999999999000
          Width = 132.283464570000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            ' P'#193'GINA')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 571.478260770000000000
          Top = 16.677180000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '   [Page#] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object frxdbdtstOrdemProducaoOSV_CODIGO1: TfrxMemoView
          Left = 480.651110770000000000
          Top = 14.543290000000000000
          Width = 104.133890000000000000
          Height = 18.897650000000000000
          DataField = 'OSV_CODIGO'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_CODIGO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 0.220470000000000000
          Top = 1.118120000000001000
          Width = 173.858380000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[RazaoSocial]')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 0.338590000000000000
          Top = 120.944960000000000000
          Width = 313.700990000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   N'#176' DO DESENHO ')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 78.923076920000000000
          Width = 177.637910000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   DATA DO PEDIDO')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 336.228510000000000000
          Top = 78.923076920000000000
          Width = 188.976500000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   DATA DA OP')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 524.897960000000000000
          Top = 78.923076920000000000
          Width = 192.756030000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '    DATA  DE ENTREGA')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_REFER: TfrxMemoView
          Left = 11.338590000000000000
          Top = 53.102350000000000000
          Width = 105.826840000000000000
          Height = 14.897650000000000000
          DataField = 'PRD_REFER'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_REFER"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoOSV_EMISSAO: TfrxMemoView
          Left = 14.000000000000000000
          Top = 97.393630000000000000
          Width = 147.212740000000000000
          Height = 18.061795380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PED_DTENTRADA"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_REFER1: TfrxMemoView
          Left = 14.307692320000000000
          Top = 57.281623080000000000
          Width = 86.929190000000000000
          Height = 16.589957700000000000
          DataField = 'PRD_REFER'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_REFER"]')
        end
        object Memo30: TfrxMemoView
          Top = 41.574830000000000000
          Width = 120.944960000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            ' Refer'#234'ncia')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 631.827150000000000000
          Top = 41.574830000000000000
          Width = 85.795275590000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   Quantidade')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 120.944960000000000000
          Top = 41.574830000000000000
          Width = 514.016080000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   Descri'#231#227'o')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_DESCRI: TfrxMemoView
          Left = 126.842610000000000000
          Top = 55.692949999999990000
          Width = 502.677490000000000000
          Height = 22.677180000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_DESCRI"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_REFER2: TfrxMemoView
          Left = 5.669295000000000000
          Top = 57.913420000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_REFER'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_REFER"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoOSV_QTDE2: TfrxMemoView
          Left = 636.614410000000000000
          Top = 57.692950000000000000
          Width = 75.590600000000000000
          Height = 18.967485380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_QTDE"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 498.897960000000000000
          Top = 120.944960000000000000
          Width = 219.212740000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   N'#176' DA ORDEM DO CLIENTE')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 533.559370000000000000
          Top = 97.149660000000000000
          Width = 147.212740000000000000
          Height = 18.061795380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_DTENTREGA"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 352.551330000000000000
          Top = 98.267780000000000000
          Width = 147.212740000000000000
          Height = 18.061795380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_EMISSAO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 527.913730000000000000
          Top = 137.504020000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_ORDEM_COMPRA"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 313.409710000000000000
          Top = 120.944960000000000000
          Width = 185.196970000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   C'#211'DIGO DO CLIENTE')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 331.937230000000000000
          Top = 137.944960000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."CLI_CODIGO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 219.417440000000000000
          Top = 98.267780000000000000
          Width = 101.858380000000000000
          Height = 18.061795380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PED_CODIGO"]')
          ParentFont = False
        end
      end
      object Memo70: TfrxMemoView
        Left = -10.779530000000000000
        Top = -192.756030000000000000
        Width = 58.043456150000000000
        Height = 25.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clWhite
        Fill.Style = bsClear
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo71: TfrxMemoView
        Left = -11.338590000000000000
        Top = -167.519790000000000000
        Width = 58.043456150000000000
        Height = 25.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clWhite
        Fill.Style = bsClear
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo72: TfrxMemoView
        Left = -11.338590000000000000
        Top = -143.063080000000000000
        Width = 58.043456150000000000
        Height = 25.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clWhite
        Fill.Style = bsClear
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo73: TfrxMemoView
        Left = -10.559060000000000000
        Top = -117.385900000000000000
        Width = 58.043456150000000000
        Height = 25.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clWhite
        Fill.Style = bsClear
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 400.630180000000000000
        Width = 718.110700000000000000
        DataSet = frxDBfichatecnica
        DataSetName = 'frxdbdtstFichaTecnica'
        Filter = '<frxdbdtstFichaTecnica."ope_codigo">=0'
        KeepHeader = True
        KeepTogether = True
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Shape3: TfrxShapeView
          Left = 650.834645670000000000
          Width = 67.653543310000000000
          Height = 22.677165350000000000
          Frame.Width = 0.100000000000000000
        end
        object frxdbdtstFichaTecnicaPRD_REFER_ITENS: TfrxMemoView
          Width = 136.818897640000000000
          Height = 22.677165350000000000
          DataField = 'PRD_REFER_ITENS'
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."PRD_REFER_ITENS"]')
          ParentFont = False
        end
        object frxdbdtstFichaTecnicaPRD_DESCRI: TfrxMemoView
          Left = 136.811069990000000000
          Width = 404.409710000000000000
          Height = 22.677165350000000000
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."PRD_DESCRI"]')
          ParentFont = False
          WordBreak = True
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object frxdbdtstFichaTecnicaPRD_UND: TfrxMemoView
          Left = 540.646282300000100000
          Width = 37.039370080000000000
          Height = 22.677165350000000000
          DataField = 'PRD_UND'
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."PRD_UND"]')
          ParentFont = False
        end
        object frxdbdtstFichaTecnicaOSI_QTDE1: TfrxMemoView
          Left = 577.511811020000000000
          Width = 72.944881890000000000
          Height = 22.677165350000000000
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."OSI_QTDE_TOTAL_cc"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 64.252010000000030000
        Top = 498.897960000000000000
        Width = 718.110700000000000000
        DataSet = frxDBEngenharia
        DataSetName = 'frxDBEngenharia'
        KeepChild = True
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Shape1: TfrxShapeView
          Left = 58.960629920000000000
          Width = 306.141930000000000000
          Height = 25.322834650000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape2: TfrxShapeView
          Width = 59.716535430000000000
          Height = 25.322834650000000000
          Frame.Width = 0.100000000000000000
        end
        object frxDBEngenhariaSEQUENCIA: TfrxMemoView
          Left = 9.118120000000000000
          Top = 6.677179999999964000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          DataField = 'SEQUENCIA'
          DataSet = frxDBEngenharia
          DataSetName = 'frxDBEngenharia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEngenharia."SEQUENCIA"]')
          ParentFont = False
        end
        object frxDBEngenhariaOPE_DESCRICAO: TfrxMemoView
          Left = 66.472480000000000000
          Top = 6.677179999999738000
          Width = 253.228510000000000000
          Height = 15.118110240000000000
          DataField = 'OPE_DESCRICAO'
          DataSet = frxDBEngenharia
          DataSetName = 'frxDBEngenharia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEngenharia."OPE_DESCRICAO"]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Left = 365.614410000000000000
          Width = 84.500166150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          Left = 450.543600000000000000
          Width = 46.704866150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Left = 495.897960000000000000
          Width = 42.925336150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          Left = 576.811380000000000000
          Width = 58.043456150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          Left = 635.079160000000000000
          Width = 42.925336150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          Left = 674.094930000000000000
          Width = 44.220472440000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          Left = 538.252320000000000000
          Width = 39.145806150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = -0.220470000000000000
          Top = 25.456710000000040000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          StretchMode = smActualHeight
          DataField = 'FAB_OBSERVACAO'
          DataSet = frxDBEngenharia
          DataSetName = 'frxDBEngenharia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBEngenharia."FAB_OBSERVACAO"]')
          ParentFont = False
          WordBreak = True
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 25.322834650000000000
        Top = 449.764070000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object Memo116: TfrxMemoView
          Width = 60.472440940000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'ETAPA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 59.133890000000000000
          Width = 307.492436150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRI'#199#195'O DE ATIVIDADES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 366.157700000000000000
          Width = 88.279696150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'RESPONS'#193'VEL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 450.984540000000000000
          Width = 46.704866150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA IN'#205'CIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 495.338900000000000000
          Width = 42.925336150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'SET-UP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 577.252320000000100000
          Width = 58.043456150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA T'#201'RMINO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 634.520100000000000000
          Width = 42.925336150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'HORA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 673.535870000000000000
          Width = 44.976377950000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'TEMPO TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 537.693260000000000000
          Width = 39.145806150000000000
          Height = 25.322834650000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'HORA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.897635350000000000
        ParentFont = False
        Top = 725.669760000000000000
        Width = 718.110700000000000000
        DataSet = frxDBEspecifica
        DataSetName = 'frxDBEspecifica'
        Filter = '<frxDBEngenharia."FAB_CODIGO">=<frxDBEspecifica."FAB_CODIGO">'
        RowCount = 0
        object frxDBEspecificaESR_NOME: TfrxMemoView
          Left = 47.472480000000000000
          Top = 3.779529999999908000
          Width = 68.031540000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_NOME'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_NOME"]')
          ParentFont = False
        end
        object frxDBEspecificaESR_PADROES: TfrxMemoView
          Left = 135.724490000000000000
          Top = 3.559059999999704000
          Width = 105.826840000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_PADROES'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_PADROES"]')
          ParentFont = False
        end
        object frxDBEspecificaESR_COL1: TfrxMemoView
          Left = 254.480520000000000000
          Top = 3.559059999999704000
          Width = 49.133890000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_COL1'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_COL1"]')
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          Left = 315.732530000000000000
          Top = 3.779529999999908000
          Width = 52.913420000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_COL2'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_COL2"]')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          Left = 438.016080000000000000
          Top = 3.779529999999908000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_COL4'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_COL4"]')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          Left = 377.764070000000000000
          Top = 3.779529999999908000
          Width = 56.692950000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_COL3'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_COL3"]')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          Left = 502.268090000000000000
          Top = 3.779529999999908000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_COL5'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_COL5"]')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          Left = 566.724800000000000000
          Top = 3.779529999999908000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_COL6'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_COL6"]')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          Left = 632.858690000000000000
          Top = 3.779529999999908000
          Width = 60.472480000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_COL7'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_COL7"]')
          ParentFont = False
        end
        object Shape7: TfrxShapeView
          Left = 30.236220470000000000
          Width = 98.267716540000000000
          Height = 22.677165350000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape8: TfrxShapeView
          Left = 128.881889760000000000
          Top = 0.220469999999977500
          Width = 120.944881890000000000
          Height = 22.677165350000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape9: TfrxShapeView
          Left = 249.448818900000000000
          Width = 61.984251970000000000
          Height = 22.677165350000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape10: TfrxShapeView
          Left = 311.944881890000000000
          Width = 60.472440940000000000
          Height = 22.677165350000000000
          Frame.Width = 0.100000000000000000
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 34.015748030000000000
        ParentFont = False
        Top = 668.976810000000000000
        Width = 718.110700000000000000
        KeepChild = True
        object Memo32: TfrxMemoView
          Left = 250.551330000000000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          DataField = 'ESP_COL1'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Memo.UTF8W = (
            '[frxDbParam."ESP_COL1"]')
        end
        object Shape11: TfrxShapeView
          Left = 128.740260000000000000
          Width = 120.944960000000000000
          Height = 34.015748030000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape12: TfrxShapeView
          Left = 311.793700790000000000
          Width = 60.472480000000000000
          Height = 34.015748030000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape13: TfrxShapeView
          Left = 249.448980000000000000
          Width = 61.984251970000000000
          Height = 34.015748030000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape14: TfrxShapeView
          Left = 30.236240000000000000
          Width = 98.267780000000000000
          Height = 34.015748030000000000
          Frame.Width = 0.100000000000000000
        end
        object Memo33: TfrxMemoView
          Left = 45.692950000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          DataField = 'ESP_NOME'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbParam."ESP_NOME"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 129.724490000000000000
          Top = 1.000000000000000000
          Width = 117.165430000000000000
          Height = 22.677180000000000000
          DataField = 'ESP_PADROES'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbParam."ESP_PADROES"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 375.937230000000000000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          DataField = 'ESP_COL3'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbParam."ESP_COL3"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 436.630180000000000000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          DataField = 'ESP_COL4'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbParam."ESP_COL4"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 497.102660000000000000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          DataField = 'ESP_COL5'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbParam."ESP_COL5"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 553.795610000000000000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          DataField = 'ESP_COL6'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbParam."ESP_COL6"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 606.709030000000000000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          DataField = 'ESP_COL7'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbParam."ESP_COL7"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 317.244280000000000000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          DataField = 'ESP_COL2'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Memo.UTF8W = (
            '[frxDbParam."ESP_COL2"]')
        end
      end
      object Header3: TfrxHeader
        FillType = ftBrush
        Height = 125.408425380000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo21: TfrxMemoView
          Left = 134.953974610000000000
          Top = 111.392655380000000000
          Width = 405.760216150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            ' Descri'#231#227'o')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 577.590910000000000000
          Top = 111.392655380000000000
          Width = 74.657866150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'QTDE CONS')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 540.646282300000100000
          Top = 111.392655380000000000
          Width = 36.862566150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   UND')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Top = 111.392655380000000000
          Width = 135.130346150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'Cod. Material')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = -0.230769230000000000
          Top = 91.102350000000030000
          Width = 717.978426920000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clAppWorkSpace
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'COMPOSI'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Width = 718.110700000000000000
          Height = 49.133890000000000000
          StretchMode = smActualHeight
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '<b>Roteiro-Processo de fabrica'#231#227'o</b>'
            
              '[<frxdbdtstOrdemProducao."FTC_PROC1">+<frxdbdtstOrdemProducao."F' +
              'TC_PROC2">+<frxdbdtstOrdemProducao."FTC_PROC3">+<frxdbdtstOrdemP' +
              'roducao."FTC_PROC4">+<frxdbdtstOrdemProducao."FTC_PROC5">+<frxdb' +
              'dtstOrdemProducao."FTC_PROC6">+<frxdbdtstOrdemProducao."FTC_PROC' +
              '7">+<frxdbdtstOrdemProducao."FTC_PROC8">]')
          ParentFont = False
          WordBreak = True
        end
        object Memo18: TfrxMemoView
          Left = 650.858690000000000000
          Top = 111.385900000000000000
          Width = 67.098806150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'QTDE REAL')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 623.622450000000000000
        Width = 718.110700000000000000
        DataSet = frxDBfichatecnica
        DataSetName = 'frxdbdtstFichaTecnica'
        Filter = 
          '<frxdbdtstFichaTecnica."ope_codigo">=<frxDBEngenharia."OPE_CODIG' +
          'O">'
        KeepTogether = True
        RowCount = 0
        object Shape4: TfrxShapeView
          Left = 650.834645670000000000
          Width = 67.653543310000000000
          Height = 22.677165350000000000
          Frame.Width = 0.100000000000000000
        end
        object Memo44: TfrxMemoView
          Width = 136.818897640000000000
          Height = 22.677165350000000000
          DataField = 'PRD_REFER_ITENS'
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."PRD_REFER_ITENS"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 136.811069990000000000
          Width = 404.409710000000000000
          Height = 22.677165350000000000
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."PRD_DESCRI"] ')
          ParentFont = False
          WordBreak = True
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo46: TfrxMemoView
          Left = 540.646282300000100000
          Width = 37.039370080000000000
          Height = 22.677165350000000000
          DataField = 'PRD_UND'
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."PRD_UND"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 577.511811020000000000
          Width = 72.944881890000000000
          Height = 22.677165350000000000
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."OSI_QTDE_TOTAL_cc"]')
          ParentFont = False
        end
      end
      object Header4: TfrxHeader
        FillType = ftBrush
        Height = 15.408425380000000000
        Top = 585.827150000000000000
        Width = 718.110700000000000000
        object Memo15: TfrxMemoView
          Left = 135.184743840000000000
          Top = 0.290305379999949800
          Width = 405.760216150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            ' Descri'#231#227'o')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 577.821679230000000000
          Top = 0.290305379999949800
          Width = 74.657866150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'QTDE CONS')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 540.877051530000000000
          Top = 0.290305379999949800
          Width = 36.862566150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   UND')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 0.230769230000000000
          Top = 0.290305379999949800
          Width = 135.130346150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'Cod. Material')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 651.089459230000000000
          Top = 0.283549999999991100
          Width = 67.098806150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'QTDE REAL')
          ParentFont = False
        end
      end
    end
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
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 1036
    Top = 352
  end
  object frxOp_Mod12: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Novi Sistemas'
    ReportOptions.CreateDate = 41688.374658171300000000
    ReportOptions.LastChange = 43591.578617638890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.            ')
    OnGetValue = frxOP1GetValue
    Left = 1004
    Top = 464
    Datasets = <
      item
        DataSet = frxDBfichatecnica
        DataSetName = 'frxdbdtstFichaTecnica'
      end
      item
        DataSet = frxdbdtstOrdemProducao
        DataSetName = 'frxdbdtstOrdemProducao'
      end
      item
        DataSet = frxDBEngenharia
        DataSetName = 'frxDBEngenharia'
      end
      item
        DataSet = frxDBEspecifica
        DataSetName = 'frxDBEspecifica'
      end
      item
        DataSet = frxDbParam
        DataSetName = 'frxDbParam'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'RazaoSocial'
        Value = Null
      end>
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 168.968770000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo114: TfrxMemoView
          Top = 1.559060000000000000
          Width = 173.858380000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 174.417440000000000000
          Top = 78.923076920000000000
          Width = 162.519790000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   N'#176' DO PEDIDO')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 173.509490770000000000
          Top = 1.559060000000000000
          Width = 306.141930000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clAppWorkSpace
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM DE PRODU'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 477.651420770000000000
          Top = 1.559060000000000000
          Width = 109.606370000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '  N'#176)
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 585.478260770000000000
          Top = 1.559060000000000000
          Width = 132.283464570000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            ' P'#193'GINA')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 571.478260770000000000
          Top = 16.677180000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '   [Page#] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object frxdbdtstOrdemProducaoOSV_CODIGO1: TfrxMemoView
          Left = 480.651110770000000000
          Top = 14.543290000000000000
          Width = 104.133890000000000000
          Height = 18.897650000000000000
          DataField = 'OSV_CODIGO'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_CODIGO"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 0.220470000000000000
          Top = 1.118120000000000000
          Width = 173.858380000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[RazaoSocial]')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 0.338590000000000000
          Top = 120.944960000000000000
          Width = 313.700990000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   Data da f'#243'rmula')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 78.923076920000000000
          Width = 177.637910000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   DATA DO PEDIDO')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 336.228510000000000000
          Top = 78.923076920000000000
          Width = 188.976500000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   DATA DA OP')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 524.897960000000000000
          Top = 78.923076920000000000
          Width = 192.756030000000000000
          Height = 42.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '    DATA  DE ENTREGA')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_REFER: TfrxMemoView
          Left = 11.338590000000000000
          Top = 53.102350000000000000
          Width = 105.826840000000000000
          Height = 14.897650000000000000
          DataField = 'PRD_REFER'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_REFER"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoOSV_EMISSAO: TfrxMemoView
          Left = 14.000000000000000000
          Top = 97.393630000000000000
          Width = 147.212740000000000000
          Height = 18.061795380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PED_DTENTRADA"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_REFER1: TfrxMemoView
          Left = 14.307692320000000000
          Top = 57.281623080000000000
          Width = 86.929190000000000000
          Height = 16.589957700000000000
          DataField = 'PRD_REFER'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_REFER"]')
        end
        object Memo30: TfrxMemoView
          Top = 41.574830000000000000
          Width = 120.944960000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            ' Refer'#234'ncia')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 631.827150000000000000
          Top = 41.574830000000000000
          Width = 85.795275590000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   Quantidade')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 120.944960000000000000
          Top = 41.574830000000000000
          Width = 514.016080000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   Descri'#231#227'o')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_DESCRI: TfrxMemoView
          Left = 126.842610000000000000
          Top = 55.692950000000000000
          Width = 502.677490000000000000
          Height = 22.677180000000000000
          DataField = 'PRD_DESCRI'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_DESCRI"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoPRD_REFER2: TfrxMemoView
          Left = 5.669295000000000000
          Top = 57.913420000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'PRD_REFER'
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PRD_REFER"]')
          ParentFont = False
        end
        object frxdbdtstOrdemProducaoOSV_QTDE2: TfrxMemoView
          Left = 636.614410000000000000
          Top = 57.692950000000000000
          Width = 75.590600000000000000
          Height = 18.967485380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_QTDE"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 498.897960000000000000
          Top = 120.944960000000000000
          Width = 219.212740000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   N'#176' DA ORDEM DO CLIENTE')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 533.559370000000000000
          Top = 97.149660000000000000
          Width = 147.212740000000000000
          Height = 18.061795380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_DTENTREGA"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 352.551330000000000000
          Top = 98.267780000000000000
          Width = 147.212740000000000000
          Height = 18.061795380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_EMISSAO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 527.913730000000000000
          Top = 137.504020000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."OSV_ORDEM_COMPRA"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 313.409710000000000000
          Top = 120.944960000000000000
          Width = 185.196970000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   C'#211'DIGO DO CLIENTE')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 331.937230000000000000
          Top = 137.944960000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."CLI_CODIGO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 219.417440000000000000
          Top = 98.267780000000000000
          Width = 101.858380000000000000
          Height = 18.061795380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PED_CODIGO"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 11.019978290000000000
          Top = 135.205386590000000000
          Width = 244.839797070000000000
          Height = 20.003853900000000000
          Memo.UTF8W = (
            '[frxdbdtstOrdemProducao."PED_DTENTRADA"]')
        end
      end
      object Memo70: TfrxMemoView
        Left = -10.779530000000000000
        Top = -192.756030000000000000
        Width = 58.043456150000000000
        Height = 25.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clWhite
        Fill.Style = bsClear
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo71: TfrxMemoView
        Left = -11.338590000000000000
        Top = -167.519790000000000000
        Width = 58.043456150000000000
        Height = 25.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clWhite
        Fill.Style = bsClear
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo72: TfrxMemoView
        Left = -11.338590000000000000
        Top = -143.063080000000000000
        Width = 58.043456150000000000
        Height = 25.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clWhite
        Fill.Style = bsClear
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo73: TfrxMemoView
        Left = -10.559060000000000000
        Top = -117.385900000000000000
        Width = 58.043456150000000000
        Height = 25.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clWhite
        Fill.Style = bsClear
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 396.850650000000000000
        Width = 718.110700000000000000
        DataSet = frxDBfichatecnica
        DataSetName = 'frxdbdtstFichaTecnica'
        Filter = '<frxdbdtstFichaTecnica."ope_codigo">=0'
        KeepHeader = True
        KeepTogether = True
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Shape3: TfrxShapeView
          Left = 650.834645670000000000
          Width = 67.653543310000000000
          Height = 22.677165350000000000
          Frame.Width = 0.100000000000000000
        end
        object frxdbdtstFichaTecnicaPRD_REFER_ITENS: TfrxMemoView
          Width = 136.818897640000000000
          Height = 22.677165350000000000
          DataField = 'PRD_REFER_ITENS'
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."PRD_REFER_ITENS"]')
          ParentFont = False
        end
        object frxdbdtstFichaTecnicaPRD_DESCRI: TfrxMemoView
          Left = 136.811069990000000000
          Width = 404.409710000000000000
          Height = 22.677165350000000000
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."PRD_DESCRI"]')
          ParentFont = False
          WordBreak = True
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object frxdbdtstFichaTecnicaPRD_UND: TfrxMemoView
          Left = 540.646282300000000000
          Width = 37.039370080000000000
          Height = 22.677165350000000000
          DataField = 'PRD_UND'
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."PRD_UND"]')
          ParentFont = False
        end
        object frxdbdtstFichaTecnicaOSI_QTDE1: TfrxMemoView
          Left = 577.511811020000000000
          Width = 72.944881890000000000
          Height = 22.677165350000000000
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."OSI_QTDE_TOTAL_cc"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 68.252010000000000000
        Top = 445.984540000000000000
        Width = 718.110700000000000000
        DataSet = frxDBEngenharia
        DataSetName = 'frxDBEngenharia'
        KeepChild = True
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Shape1: TfrxShapeView
          Left = 58.960629920000000000
          Top = 5.000000000000000000
          Width = 658.393700787401600000
          Height = 25.322834650000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape2: TfrxShapeView
          Top = 5.000000000000000000
          Width = 58.960629921259840000
          Height = 25.322834650000000000
          Frame.Width = 0.100000000000000000
        end
        object frxDBEngenhariaSEQUENCIA: TfrxMemoView
          Left = 9.118120000000000000
          Top = 11.677179999999960000
          Width = 41.574830000000000000
          Height = 15.118110240000000000
          DataField = 'SEQUENCIA'
          DataSet = frxDBEngenharia
          DataSetName = 'frxDBEngenharia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEngenharia."SEQUENCIA"]')
          ParentFont = False
        end
        object frxDBEngenhariaOPE_DESCRICAO: TfrxMemoView
          Left = 66.472480000000000000
          Top = 11.677180000000000000
          Width = 638.740570000000000000
          Height = 15.118110240000000000
          DataField = 'OPE_DESCRICAO'
          DataSet = frxDBEngenharia
          DataSetName = 'frxDBEngenharia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBEngenharia."OPE_DESCRICAO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = -0.220470000000000000
          Top = 30.456710000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          StretchMode = smActualHeight
          DataField = 'FAB_OBSERVACAO'
          DataSet = frxDBEngenharia
          DataSetName = 'frxDBEngenharia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Memo.UTF8W = (
            '[frxDBEngenharia."FAB_OBSERVACAO"]')
          ParentFont = False
          WordBreak = True
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.897635350000000000
        ParentFont = False
        Top = 676.535870000000000000
        Width = 718.110700000000000000
        DataSet = frxDBEspecifica
        DataSetName = 'frxDBEspecifica'
        Filter = '<frxDBEngenharia."FAB_CODIGO">=<frxDBEspecifica."FAB_CODIGO">'
        RowCount = 0
        object Shape15: TfrxShapeView
          Left = 239.110390000000000000
          Top = 0.220470000000000000
          Width = 79.748031500000000000
          Height = 22.677165350000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape9: TfrxShapeView
          Left = 159.740098900000000000
          Width = 79.748031500000000000
          Height = 22.677165350000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape8: TfrxShapeView
          Left = 79.747999760000000000
          Top = 0.220470000000000000
          Width = 79.748031500000000000
          Height = 22.677165350000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape10: TfrxShapeView
          Left = 319.283471890000000000
          Width = 79.748031500000000000
          Height = 22.677165350000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape19: TfrxShapeView
          Left = 638.740157480000000000
          Width = 79.748031500000000000
          Height = 22.677165350000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape18: TfrxShapeView
          Left = 558.929500000000000000
          Width = 79.748031500000000000
          Height = 22.677165350000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape16: TfrxShapeView
          Left = 399.496062992126000000
          Width = 79.748031500000000000
          Height = 22.677165350000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape7: TfrxShapeView
          Width = 79.748031500000000000
          Height = 22.677165350000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape17: TfrxShapeView
          Left = 478.866141732283500000
          Width = 79.748031500000000000
          Height = 22.677165350000000000
          Frame.Width = 0.100000000000000000
        end
        object frxDBEspecificaESR_NOME: TfrxMemoView
          Left = 2.118120000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_NOME'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_NOME"]')
          ParentFont = False
        end
        object frxDBEspecificaESR_PADROES: TfrxMemoView
          Left = 80.811070000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_PADROES'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_PADROES"]')
          ParentFont = False
        end
        object frxDBEspecificaESR_COL1: TfrxMemoView
          Left = 161.992270000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_COL1'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_COL1"]')
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          Left = 241.141930000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_COL2'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_COL2"]')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          Left = 401.000310000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_COL4'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_COL4"]')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          Left = 321.071120000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_COL3'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_COL3"]')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          Left = 483.370440000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_COL5'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_COL5"]')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          Left = 560.724800000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_COL6'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_COL6"]')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          Left = 640.858690000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118110240000000000
          DataField = 'ESR_COL7'
          DataSet = frxDBEspecifica
          DataSetName = 'frxDBEspecifica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEspecifica."ESR_COL7"]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 34.015748030000000000
        ParentFont = False
        Top = 619.842920000000000000
        Width = 718.110700000000000000
        KeepChild = True
        object Shape13: TfrxShapeView
          Left = 159.740260000000000000
          Width = 79.748031500000000000
          Height = 34.015748030000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape24: TfrxShapeView
          Left = 558.929500000000000000
          Width = 79.748031500000000000
          Height = 34.015748030000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape21: TfrxShapeView
          Left = 399.409710000000000000
          Width = 79.748031500000000000
          Height = 34.015748030000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape22: TfrxShapeView
          Left = 478.897960000000000000
          Width = 79.748031500000000000
          Height = 34.015748030000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape20: TfrxShapeView
          Left = 319.598640000000000000
          Width = 79.748031500000000000
          Height = 34.015748030000000000
          Frame.Width = 0.100000000000000000
        end
        object Memo32: TfrxMemoView
          Left = 161.842610000000000000
          Width = 75.590600000000000000
          Height = 30.236220470000000000
          DataField = 'ESP_COL1'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Memo.UTF8W = (
            '[frxDbParam."ESP_COL1"]')
        end
        object Shape11: TfrxShapeView
          Left = 79.606370000000000000
          Width = 79.748031496062990000
          Height = 34.015748030000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape12: TfrxShapeView
          Left = 239.762160790000000000
          Width = 79.748031500000000000
          Height = 34.015748030000000000
          Frame.Width = 0.100000000000000000
        end
        object Shape14: TfrxShapeView
          Width = 79.748031500000000000
          Height = 34.015748030000000000
          Frame.Width = 0.100000000000000000
        end
        object Memo33: TfrxMemoView
          Left = 3.118120000000000000
          Width = 75.590600000000000000
          Height = 30.236220470000000000
          DataField = 'ESP_NOME'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbParam."ESP_NOME"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 80.590600000000000000
          Width = 75.590600000000000000
          Height = 30.236220470000000000
          DataField = 'ESP_PADROES'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDbParam."ESP_PADROES"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 321.921460000000000000
          Width = 75.590600000000000000
          Height = 30.236220470000000000
          DataField = 'ESP_COL3'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbParam."ESP_COL3"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 400.055350000000000000
          Width = 75.590600000000000000
          Height = 30.236220470000000000
          DataField = 'ESP_COL4'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbParam."ESP_COL4"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 481.645950000000000000
          Width = 75.590600000000000000
          Height = 30.236220472440940000
          DataField = 'ESP_COL5'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbParam."ESP_COL5"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 560.913730000000000000
          Width = 75.590600000000000000
          Height = 30.236220472440940000
          DataField = 'ESP_COL6'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbParam."ESP_COL6"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 241.551330000000000000
          Width = 75.590600000000000000
          Height = 30.236220470000000000
          DataField = 'ESP_COL2'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Memo.UTF8W = (
            '[frxDbParam."ESP_COL2"]')
        end
        object Shape23: TfrxShapeView
          Left = 638.740157480000000000
          Width = 79.748031500000000000
          Height = 34.015748030000000000
          Frame.Width = 0.100000000000000000
        end
        object Memo39: TfrxMemoView
          Left = 640.488560000000000000
          Width = 75.590600000000000000
          Height = 30.236220472440940000
          DataField = 'ESP_COL7'
          DataSet = frxDbParam
          DataSetName = 'frxDbParam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDbParam."ESP_COL7"]')
          ParentFont = False
        end
      end
      object Header3: TfrxHeader
        FillType = ftBrush
        Height = 125.408425380000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Width = 717.921770000000000000
          Height = 93.652395380000000000
          DataSet = frxdbdtstOrdemProducao
          DataSetName = 'frxdbdtstOrdemProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Roteiro-Processo de fabrica'#231#227'o')
          ParentFont = False
          WordBreak = True
        end
        object Memo21: TfrxMemoView
          Left = 134.953974610000000000
          Top = 111.392655380000000000
          Width = 405.760216150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            ' Descri'#231#227'o')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 577.590910000000000000
          Top = 111.392655380000000000
          Width = 74.657866150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'QTDE CONS')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 540.646282300000000000
          Top = 111.392655380000000000
          Width = 36.862566150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            '   UND')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Top = 111.392655380000000000
          Width = 135.130346150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'Cod. Material')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = -0.230769230000000000
          Top = 91.102350000000000000
          Width = 717.978426920000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clAppWorkSpace
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            'COMPOSI'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Top = 20.118120000000000000
          Width = 710.551640000000000000
          Height = 49.133890000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[<frxdbdtstOrdemProducao."FTC_PROC1">+<frxdbdtstOrdemProducao."F' +
              'TC_PROC2">+<frxdbdtstOrdemProducao."FTC_PROC3">+<frxdbdtstOrdemP' +
              'roducao."FTC_PROC4">+<frxdbdtstOrdemProducao."FTC_PROC5">+<frxdb' +
              'dtstOrdemProducao."FTC_PROC6">+<frxdbdtstOrdemProducao."FTC_PROC' +
              '7">+<frxdbdtstOrdemProducao."FTC_PROC8">]')
          ParentFont = False
          WordBreak = True
        end
        object Memo18: TfrxMemoView
          Left = 650.858690000000000000
          Top = 111.385900000000000000
          Width = 67.098806150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'QTDE REAL')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 574.488560000000000000
        Width = 718.110700000000000000
        DataSet = frxDBfichatecnica
        DataSetName = 'frxdbdtstFichaTecnica'
        Filter = 
          '<frxdbdtstFichaTecnica."ope_codigo">=<frxDBEngenharia."OPE_CODIG' +
          'O">'
        KeepTogether = True
        RowCount = 0
        object Shape4: TfrxShapeView
          Left = 642.936995670000000000
          Width = 75.590551180000000000
          Height = 22.677165350000000000
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo44: TfrxMemoView
          Left = 57.070866140000000000
          Width = 80.125947640000000000
          Height = 22.677165350000000000
          DataField = 'PRD_REFER_ITENS'
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.100000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."PRD_REFER_ITENS"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 136.811069990000000000
          Width = 279.685220000000000000
          Height = 22.677165350000000000
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 0.100000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."lotes"]')
          ParentFont = False
          WordBreak = True
        end
        object Memo47: TfrxMemoView
          Left = 417.417191020000000000
          Width = 72.944881890000000000
          Height = 22.677165350000000000
          DataSet = frxDBfichatecnica
          DataSetName = 'frxdbdtstFichaTecnica'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxdbdtstFichaTecnica."OSI_QTDE_TOTAL_cc"]')
          ParentFont = False
        end
        object Shape5: TfrxShapeView
          Left = 491.559370000000000000
          Width = 75.590551180000000000
          Height = 22.677165350000000000
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Shape6: TfrxShapeView
          Left = 567.488560000000000000
          Width = 75.590551180000000000
          Height = 22.677165350000000000
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo48: TfrxMemoView
          Width = 58.249227060000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '   [(<frxdbdtstFichaTecnica."OSI_UC">) * 100]')
          ParentFont = False
        end
      end
      object Header4: TfrxHeader
        FillType = ftBrush
        Height = 15.408425380000000000
        Top = 536.693260000000000000
        Width = 718.110700000000000000
        object Memo15: TfrxMemoView
          Left = 136.818897640000000000
          Top = 1.000000000000000000
          Width = 281.035726150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'Lotes')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 417.259842519685000000
          Top = 1.000000000000000000
          Width = 74.657866150000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'QTDE CONS')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 56.923719230000000000
          Top = 1.000000000000000000
          Width = 79.370042130000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'Cod. Material')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 642.897637795275600000
          Top = 1.000000000000000000
          Width = 75.590551180000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'VISTO')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 491.559370000000000000
          Top = 1.000000000000000000
          Width = 75.590551180000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'ALTERA'#199#195'O')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 567.370440000000000000
          Top = 1.000000000000000000
          Width = 75.590551180000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          Memo.UTF8W = (
            'PESO REAL')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Top = 1.000000000000000000
          Width = 56.692862130000000000
          Height = 14.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.100000000000000000
          Fill.BackColor = clWhite
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8W = (
            '%')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 721.890230000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 417.417191020000000000
          Width = 60.472480000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUM(<frxdbdtstFichaTecnica."OSI_QTDE_TOTAL_cc">,DetailData2)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 52.913420000000000000
          Width = 75.590600000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(SUM(<frxdbdtstFichaTecnica."OSI_UC">,DetailData2))*100]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 4.275206070000000000
          Top = 0.557635570000000000
          Width = 46.903347700000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total : ')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 366.614410000000000000
          Width = 46.903347700000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total : ')
          ParentFont = False
        end
      end
    end
  end
  object frxDBop: TfrxDBDataset
    UserName = 'frxDBop'
    CloseDataSource = False
    DataSet = cdsOp
    BCDToCurrency = False
    Left = 996
    Top = 287
  end
  object frxListaOrdem: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43878.496829479200000000
    ReportOptions.LastChange = 43881.714594652810000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxListaOrdemGetValue
    Left = 1036
    Top = 304
    Datasets = <
      item
        DataSet = frxDBop
        DataSetName = 'frxDBop'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.750772730000000000
        Top = 177.637910000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBop
        DataSetName = 'frxDBop'
        RowCount = 0
        object Memo12: TfrxMemoView
          Left = 1.727272730000000000
          Top = 2.944031819999964000
          Width = 55.683673640000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBop."OSV_CODIGO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 61.247680910000000000
          Top = 2.944031819999964000
          Width = 62.863327270000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBop."OSV_EMISSAO"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 127.504638180000000000
          Top = 2.944031819999964000
          Width = 53.006493640000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBop."OSV_DTENTREGA"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 185.166048190000000000
          Top = 2.944031819999992000
          Width = 58.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBop."PRD_REFER"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 247.670686360000000000
          Top = 2.944031819999992000
          Width = 329.749536360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBop."PRD_DESCRI"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 613.803958180000000000
          Top = 2.944031819999992000
          Width = 69.942795450000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBop."OSV_QTDE"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 695.356524550000000000
          Top = 2.944031819999992000
          Width = 29.942795450000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBop."PRD_UND"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 809.567718180000000000
          Top = 2.944031819999992000
          Width = 67.215522730000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBop."OSV_QTDE_CONCLUIDA"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 731.557513640000000000
          Top = 2.944031819999992000
          Width = 65.397340910000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBop."PED_CODIGO"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 887.434446370000000000
          Top = 2.944031819999992000
          Width = 87.308596360000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo30OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[IIF(<frxDBop."OSV_STATUS">='#39'C'#39','#39'Conclu'#237'da'#39','
            'IIF(<frxDBop."OSV_STATUS">='#39'I'#39' ,'#39'C.Parcial'#39','
            'IIF(<frxDBop."OSV_STATUS">='#39'P'#39' ,'#39'Produ'#231#227'o'#39','
            'IIF(<frxDBop."OSV_STATUS">='#39'E'#39' ,'#39'Estornada'#39','
            'IIF(<frxDBop."OSV_STATUS">='#39'X'#39' ,'#39'Almoxarifado'#39','
            ' '#39'Reservada'#39' )))))]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo15: TfrxMemoView
          Left = 975.818181820000000000
          Top = 2.944031819999992000
          Width = 60.851886360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBop."OSV_LOTE"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 98.826840000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 2.727272730000000000
          Top = 75.632034549999800000
          Width = 55.683673640000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'O.P.')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 61.247680910000000000
          Top = 75.632034549999800000
          Width = 62.863327270000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 127.504638180000000000
          Top = 75.632034549999800000
          Width = 53.006493640000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Entrega')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 185.166048190000000000
          Top = 75.632034549999800000
          Width = 58.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 247.670686360000000000
          Top = 75.632034549999800000
          Width = 310.851886360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 616.803958180000000000
          Top = 75.632034550000000000
          Width = 69.942795450000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Qtde Produzir')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 695.356524550000000000
          Top = 75.632034550000000000
          Width = 29.942795450000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'UND')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 809.567718180000000000
          Top = 75.632034550000000000
          Width = 67.215522730000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Concluida')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 731.557513640000000000
          Top = 75.632034550000000000
          Width = 65.397340910000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Pedido')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 887.434446370000000000
          Top = 75.632034549999800000
          Width = 60.851886360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Status')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 980.077303640000000000
          Top = 75.632034550000000000
          Width = 60.851886360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Lote')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 0.454545450000000000
          Top = 19.129560909999900000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio de Listagem de PCP')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 0.454545450000000000
          Top = 0.231910909999896800
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[RAZAO]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 902.541745450000000000
          Top = 0.231910909999999900
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] '#224's [Time]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 902.541745450002000000
          Top = 19.129560909999900000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 0.454545450000000000
          Top = 38.027210910000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FILTROS]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 0.015770000000000000
          Top = 95.047310000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 71.811070000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 36.008890000000000000
        Top = 222.992270000000000000
        Width = 1046.929810000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 616.803958180000000000
          Top = 2.000000000000000000
          Width = 69.942795450000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBop."OSV_QTDE">,MasterData1)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Top = 2.000000000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total de ordens: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 0.338590000000010600
          Width = 1043.150280000000000000
          Color = clBlack
          Diagonal = True
        end
        object SysMemo2: TfrxSysMemoView
          Left = 809.567718180000000000
          Top = 2.000000000000000000
          Width = 65.856370000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBop."OSV_QTDE_CONCLUIDA">,MasterData1)]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 528.206710000000000000
          Top = 2.000000000000000000
          Width = 84.942795450000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total a produzir:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 729.192950000000000000
          Top = 2.000000000000000000
          Width = 79.942795450000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total concluida:')
          ParentFont = False
        end
      end
    end
  end
  object dspop: TDataSetProvider
    DataSet = sqlOp
    Left = 340
    Top = 208
  end
end
