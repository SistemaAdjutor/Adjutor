inherited frmBaseDBPesquisaFDAC: TfrmBaseDBPesquisaFDAC
  Caption = 'FrmBaseDBPesquisaFDAC'
  ClientHeight = 461
  ClientWidth = 829
  OnKeyDown = FormKeyDown
  ExplicitWidth = 837
  ExplicitHeight = 488
  PixelsPerInch = 96
  TextHeight = 13
  object pgc1: TPageControl [0]
    Left = 0
    Top = 41
    Width = 829
    Height = 384
    ActivePage = tsNotas
    Align = alClient
    TabOrder = 0
    TabStop = False
    object tsNotas: TTabSheet
      Caption = 'Pesquisa'
      object pnlControle: TPanel
        Left = 0
        Top = 0
        Width = 821
        Height = 79
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object pnlFiltro: TPanel
          Left = 0
          Top = 0
          Width = 821
          Height = 79
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object pnlpn1: TPanel
            Left = 0
            Top = 0
            Width = 821
            Height = 79
            Align = alClient
            BevelOuter = bvNone
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            DesignSize = (
              821
              79)
            object btnPesquisa: TSpeedButton
              Left = 728
              Top = 7
              Width = 85
              Height = 20
              Hint = 
                'Executa a filtragem dos registros as informa'#231#245'es digitadas nos c' +
                'ampos de pesquisas.'
              Anchors = [akTop, akRight]
              Caption = '&Pesquisar'
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9D9E9E9D9996FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FF9D9E9EC4C4C49D9996FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FF9D9E9E9D9E9ED1D0D09D9996FF00FFFF00FFFF00FF
                FF00FFFF00FFBBBBBCBBBBBCBBBBBCFF00FFFF00FFFF00FF9D9E9EAFB1B0C7BE
                C39D9996FF00FFFF00FFFF00FFFF00FFBBBABCBBBABCD4D0CEDDD9D5D5D0CFB2
                B1B1B2B1B19D9E9EB8BABA9D99969D9996FF00FFFF00FFFF00FFFF00FFB5B5B5
                CAC2BCF3EAE5FFFAF4FEFAF6FFF8F6F4EAE5CCC9C7BCBDBD9D9996FF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFB5B5B5F7EDE3FCF6EFFCF6F0FCF7F2FCF8F6FE
                FAF6F4E7E2B6B4B49D9996FF00FFFF00FFFF00FFFF00FFFF00FFA6A3A0D3C6B8
                FCF3EAFBF4EEFCF4EEFCF6F0FCF7F2FCF8F4FFF6F2D9CFCA97918CFF00FFFF00
                FFFF00FFFF00FFFF00FF9D9996DECFC0FBEEE1FBF0E6FBF3EBFCF6EFFCF6F0FC
                F7F2FEF7F2E7D9D495908AFF00FFFF00FFFF00FFFF00FFFF00FF96918CD4C4B2
                FEF0E5FAEDDEFAEEE1FBF0E6FBF3EAFCF6EEFFF6F0DECFCA95908AFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FF95908AFFF3E6FCF2E7FBEFE5FAEEE3FAF0E3FC
                F3E9FAEADE95908AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF95908A
                B8A796FEF0E5FFF6EBFEF6EBFFF7EEFCEEE2C1AFA595908AFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FF95908A95908AC7B6A9D1C0B4CBB8AC95
                908A95908AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FF95908A95908A95908AFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
              OnClick = btnPesquisaClick
            end
            object btnLimpar: TSpeedButton
              Left = 728
              Top = 33
              Width = 85
              Height = 20
              Hint = 'Limpa as informa'#231#245'es digitadas nos campos de pesquisas.'
              Anchors = [akTop, akRight]
              Caption = '&Limpar     '
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                0400000000000001000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
                555558888F888555F55500000000555055558888888855F85555005500055055
                555588F5888F58555555005550055555555588FF588F5FF55555500550050055
                5555588FF88588FF555555005050110555555588F858888FF555555505099910
                555555FF85888888FF555005550999910555588F5F88888885F5500505509990
                3055588F85F88888585F55005055090B030555885855888585855555555550B0
                B03055555F555858585855550555550B0B335555855555858555555555555550
                BBB35555F55555585F555550555555550BBB55585555555585F5555555555555
                50BB555555555555585F555555555555550B5555555555555585}
              NumGlyphs = 2
              OnClick = btnLimparClick
            end
          end
        end
      end
      object cxgrd1: TcxGrid
        Left = 0
        Top = 79
        Width = 821
        Height = 277
        Align = alClient
        TabOrder = 1
        object cxgrd1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsBusca
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object cxgrdlvlGrid1Level1: TcxGridLevel
          GridView = cxgrd1DBTableView1
        end
      end
    end
  end
  object pnl1: TPanel [1]
    Left = 0
    Top = 425
    Width = 829
    Height = 36
    Align = alBottom
    Alignment = taLeftJustify
    Anchors = [akLeft, akRight]
    TabOrder = 1
    DesignSize = (
      829
      36)
    object btnCalc: TSpeedButton
      Left = 4
      Top = 6
      Width = 85
      Height = 25
      Caption = '(Ctrl+F5)'
      Glyph.Data = {
        D6050000424DD605000000000000360000002800000014000000120000000100
        200000000000A005000064000000640000000000000000000000FFFFFFFFF6F6
        F6FFBBBBBBFF7A7A7AFF595959FF595959FF595959FF595959FF595959FF5959
        59FF595959FF595959FF565656FF606060FF565656FF575757FF606060FF5C5C
        5CFF8E8E8EFFF2F2F2FFFFFFFFFFEFEFEFFF999999FF404040FF686868FF6868
        68FF686868FF686868FF686868FF686868FF686868FF686868FF696969FF6767
        67FF5B5B5BFF707070FF7F7F7FFF515151FF616161FFC9C9C9FFFEFEFEFFF7F7
        F7FF747474FF5B5B5BFFADADADFFFFFFFFFFD0D0D0FF737373FF575757FF9F9F
        9FFFFFFFFFFFDCDCDCFF727272FF656565FF8C8C8CFFFFFFFFFFE8E8E8FF7373
        73FF585858FFBCBCBCFFFEFEFEFFF7F7F7FF747474FF5B5B5BFFDEDEDEFFFFFF
        FFFFF0F0F0FF737373FF616161FFD1D1D1FFFCFCFCFFFEFEFEFF818181FF5555
        55FFC0C0C0FFFFFFFFFFF8F8F8FF9B9B9BFF4B4B4BFFC4C4C4FFFEFEFEFFF7F7
        F7FF747474FF5B5B5BFF9E9E9EFFEDEDEDFFCFCFCFFF6A6A6AFF4F4F4FFFA0A0
        A0FFE7E7E7FFCCCCCCFF747474FF565656FF8B8B8BFFEFEFEFFFD8D8D8FF7575
        75FF4E4E4EFFC4C4C4FFFEFEFEFFF7F7F7FF747474FF5B5B5BFF575757FF5858
        58FF565656FF5C5C5CFF646464FF656565FF5E5E5EFF505050FF585858FF5F5F
        5FFF606060FF6C6C6CFF434343FF646464FF585858FFBBBBBBFFFEFEFEFFF7F7
        F7FF747474FF5B5B5BFF979797FFF2F2F2FFAFAFAFFF737373FF585858FF8181
        81FFECECECFFC4C4C4FF636363FF6B6B6BFF757575FFE7E7E7FFCECECEFF6666
        66FF676767FFBABABAFFFEFEFEFFF7F7F7FF747474FF5B5B5BFFE2E2E2FFFCFC
        FCFFF3F3F3FF747474FF626262FFD5D5D5FFF9F9F9FFFFFFFFFF858585FF4F4F
        4FFFCCCCCCFFF9F9F9FFFDFDFDFF969696FF4D4D4DFFC2C2C2FFFEFEFEFFF7F7
        F7FF747474FF5B5B5BFFAFAFAFFFFFFFFFFFE6E6E6FF6D6D6DFF4D4D4DFFAFAF
        AFFFF9F9F9FFE4E4E4FF808080FF515151FF9E9E9EFFF8F8F8FFF1F1F1FF7474
        74FF4C4C4CFFC4C4C4FFFEFEFEFFF7F7F7FF747474FF5B5B5BFF5F5F5FFF7D7D
        7DFF666666FF606060FF5D5D5DFF616161FF7F7F7FFF696969FF5A5A5AFF6767
        67FF5A5A5AFF888888FF5B5B5BFF616161FF5E5E5EFFBDBDBDFFFEFEFEFFECEC
        ECFF7A7A7AFF656565FF696969FF6A6A6AFF696969FF676767FF696969FF6D6D
        6DFF6B6B6BFF666666FF696969FF686868FF6F6F6FFF5D5D5DFF7A7A7AFF6B6B
        6BFF4F4F4FFFC7C7C7FFFBFBFBFFFBFBFBFF797979FF545454FFE2E2E2FFEAEA
        EAFFF1F1F1FFF0F0F0FFEDEDEDFFEEEEEEFFEFEFEFFFEDEDEDFFF7F7F7FFE7E7
        E7FFEAEAEAFFE5E5E5FFEBEBEBFF999999FF4F4F4FFFBFBFBFFFFDFDFDFFFDFD
        FDFF747474FF5B5B5BFFE6E6E6FFF5F5F5FFFFFFFFFFFFFFFFFFFCFCFCFFFAFA
        FAFFFCFCFCFFFEFEFEFFFBFBFBFFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFF9898
        98FF4B4B4BFFC3C3C3FFFFFFFFFFF2F2F2FF6C6C6CFF6C6C6CFFECECECFFFBFB
        FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFFFFF
        FFFFFFFFFFFFFAFAFAFFF2F2F2FF989898FF565656FFBABABAFFFFFFFFFFF2F2
        F2FF707070FF5B5B5BFF9D9D9DFFA3A3A3FFA7A7A7FFA6A6A6FFA5A5A5FFA6A6
        A6FFA6A6A6FFA4A4A4FFA3A3A3FFA5A5A5FFA2A2A2FFA2A2A2FFB2B2B2FF8383
        83FF636363FFBCBCBCFFFFFFFFFFFFFFFFFF949494FF505050FF595959FF5959
        59FF575757FF555555FF575757FF5C5C5CFF5A5A5AFF545454FF686868FF5C5C
        5CFF595959FF5B5B5BFF5C5C5CFF464646FF636363FFD2D2D2FFFFFFFFFFFFFF
        FFFFD4D4D4FF939393FF6E6E6EFF6F6F6FFF6C6C6CFF6A6A6AFF6D6D6DFF7171
        71FF6F6F6FFF6A6A6AFF666666FF626262FF6C6C6CFF707070FF6D6D6DFF7878
        78FFB2B2B2FFFFFFFFFFFDFDFDFFF8F8F8FFFFFFFFFFF2F2F2FFEDEDEDFFF1F1
        F1FFF1F1F1FFF0F0F0FFF1F1F1FFF4F4F4FFF2F2F2FFEEEEEEFFF7F7F7FFF1F1
        F1FFF3F3F3FFEBEBEBFFEBEBEBFFFDFDFDFFFFFFFFFFFCFCFCFF}
      OnClick = btnCalcClick
    end
    object btnSelect: TSpeedButton
      Left = 681
      Top = 6
      Width = 144
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Seleciona (Ctrl+Enter)'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      Visible = False
      OnClick = btnSelectClick
      ExplicitLeft = 527
    end
    object lblCntRegistros: TLabel
      Left = 95
      Top = 10
      Width = 72
      Height = 13
      Caption = 'lblCntRegistros'
      Visible = False
    end
  end
  object pnlUtilTop: TPanel [2]
    Left = 0
    Top = 0
    Width = 829
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      829
      41)
    object btnExclui: TSpeedButton
      Tag = 4
      Left = 181
      Top = 0
      Width = 89
      Height = 39
      Hint = 'Excluir'
      Caption = 'Exclui(Ctrl+Del)'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        3300333333333333330033000000000033003300000000003300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
    end
    object btnNovo: TSpeedButton
      Tag = 1
      Left = 4
      Top = 0
      Width = 88
      Height = 39
      Hint = 'Inserir Novo'
      Caption = 'Incluir (Ctrl+N)'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        0400000000007000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      OnClick = btnNovoClick
    end
    object btnConsulta: TSpeedButton
      Tag = 2
      Left = 270
      Top = 0
      Width = 89
      Height = 39
      Hint = 'Consultar'
      Caption = 'Visualiza(F9)'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF0000FF
        FF0000FFFF00FF00FF0084848400848484008484840000FFFF0000FFFF008484
        840084848400848484008484840000FFFF0000FFFF00FF00FF00FF00FF00FF00
        FF0000FFFF000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000084848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000084848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF00000000000000
        000000000000FFFFFF000000000084848400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000084848400FF00FF00FF00FF0000FFFF0000FF
        FF0000FFFF0000000000FFFFFF0000000000000000000000000000000000FFFF
        FF0000000000FFFFFF000000000000FFFF0000FFFF00FF00FF00FF00FF0000FF
        FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000FFFF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF00000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF0000000000C6C6C600FFFFFF0000000000FFFF
        FF000000000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
        0000FF00FF0000FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000FFFF00000000000000000000000000000000000000000000000000FF00
        FF00FF00FF00FF00FF0000FFFF0000FFFF00FF00FF00FF00FF00FF00FF0000FF
        FF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF00FF00
        FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF00FF00FF0000FFFF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      Visible = False
    end
    object btnEdita: TSpeedButton
      Tag = 3
      Left = 92
      Top = 0
      Width = 89
      Height = 39
      Hint = 'Editar'
      Caption = 'Edita(F10)'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        0000FF00FF000000000000000000000000000000000000000000FFFFFF00FFFF
        FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFF00000000
        00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF00000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
        0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
        00000000000000FFFF0000000000FFFFFF00FFFFFF0000000000FFFF00000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000000000000000000000000000000000000000000000
        000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        00000000000000FFFF00FFFFFF0000FFFF00000000000000000000FFFF000000
        0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000FFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFFFF000000
        000000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF000000000000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
        FF00000000000000FF0000000000FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
    end
    object btnFechar: TSpeedButton
      Left = 765
      Top = 0
      Width = 60
      Height = 39
      Hint = 'Fecha esta janela'
      Anchors = [akTop, akRight]
      Caption = 'Sair(ESC)'
      Glyph.Data = {
        CA010000424DCA01000000000000760000002800000026000000110000000100
        0400000000005401000000000000000000001000000000000000000000000000
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
      Layout = blGlyphTop
      NumGlyphs = 2
      OnClick = btnFecharClick
    end
    object btnExtra: TSpeedButton
      Tag = 5
      Left = 359
      Top = 0
      Width = 89
      Height = 39
      Hint = 'Copiar para Novo (Shift+Ctrl+E)'
      Caption = 'Copiar como Novo'
      Enabled = False
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDD000000
        0000DDDDDD0FFFFFFFF000D00000FF0F00F0E00BFBFB0FFFFFF0E0BFBF000FFF
        F0F0E0FBFBFBF0F00FF0E0BFBF00000B0FF0E0FBFBFBFBF0FFF0E0BF0000000F
        FFF0000BFB00B0FF00F0DDD0000B0FFFFFF0DDDDD0B0FFFF0000DDDD0B0FF00F
        0FF0DDD0B00FFFFF0F0DDD090D0FFFFF00DDDDD0DD0000000DDD}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      Visible = False
    end
    object btnMP_Expotar: TJvArrowButton
      Left = 664
      Top = 0
      Width = 97
      Height = 39
      Anchors = [akTop, akRight]
      DropDown = pmExportar
      Caption = '&Exportar'
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clWindowText
      FillFont.Height = -11
      FillFont.Name = 'Tahoma'
      FillFont.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCFCFCFCFCFCFCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC67
        9D703B86483C86483B86483C86483D87493C86483D8749488D53B5B5B3AFAFAD
        AEAEABADADABADADABB0AFADBBB3B72C7F3A45A15F419E5B409E5B449F5E47A1
        6045A05E47A2623A8647B0B0ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24
        7932FFFFFFFFFFFFFFFFFFFFFFFF3A9C55FFFFFFFFFFFF358242AEAEABFFFFFF
        FDFDFCFCFCFBFCFCFBFFFEFEFFFFFF24783247A863FFFFFFFFFFFF329C50FFFF
        FFFFFFFF4BAB66388344ADADABFFFFFFF8F8F8F8F8F8F8F8F8FBFAFBFFFFFF27
        793455B37043A960FFFFFFFFFFFFFFFFFF43A96058B5733A8446ADADABFFFFFF
        F6F5F5F6F5F5F6F5F5F9F7F8FFFFFF24773255B772FFFFFFFFFFFF48AD65FFFF
        FFFFFFFF58B975378344ADADABFFFFFFF3F2F2F3F2F2F3F2F2F6F4F4FFFBFF1D
        742CFFFFFFFFFFFF5BBA7661BD7B5ABA76FFFFFFFFFFFF348141ADADABFFFFFF
        F0F0EFF0F0EFF0F0EFF2F1F1FAF6F872A67B49A86268C8856FCA8A73CC8D71CC
        8C6DCA8971CF8E398445ADADABFFFFFFEEECEBEEEDECEEEDECEEEDECF2EFEFFC
        F4F874A67C2577332A7A37307F3D35824337834539854769A374ADADABFFFFFF
        EAE9E9EBEAEAEBEAEAEAE9E9F5F4F4FFFFFFFFFFFFD8EADCFFFFFFC2B7C0FFFF
        FFCCCCCCFFFFFFFFFFFFADADABFFFFFFE7E7E6E8E8E7E8E8E7E6E7E5FFFFFFCC
        CCCBA9A8A6A9A8A6FFFFFFB3B5BACCCCCCC78443CCCCCCFFFFFFAEAEABFFFFFF
        E4E3E2E5E4E3E5E4E3E4E3E2FFFFFFA6A6A4FBFBFAFFFFFFE9EBEEBCC0C4BB81
        3CF4C073BE8545CCCCCCAEAEACFFFFFFE0DFDEE1DFDEE1DFDEE0DFDEFFFFFFA5
        A5A2FFFFFFE7E8E9CFD1D4BA7E35BA8442B98545BB8646BC8747AFAFADFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9CCCECECCCCCCCCCCCCC8B9
        A8BB8747FFFFFFFFFFFFB8B8B6B0B0ADAEAEACAEAEABAEAEABADAEABAEAEABAF
        AFADB7B8B7FFFFFFBB7F36BB8542BB8747D5B58DFFFFFFFFFFFF}
      OnClick = btnMP_ExpotarClick
    end
    object btnrelatorios: TJvArrowButton
      Left = 563
      Top = 0
      Width = 97
      Height = 39
      Anchors = [akTop, akRight]
      Caption = 'Listar (F6)'
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clWindowText
      FillFont.Height = -11
      FillFont.Name = 'Tahoma'
      FillFont.Style = []
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
    end
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 320
    Top = 72
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 216
    Top = 64
  end
  inherited FDTransac: TFDTransaction
    Left = 424
    Top = 72
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 464
  end
  object dsBusca: TDataSource
    DataSet = cdsBusca
    Left = 436
    Top = 208
  end
  object cdsBusca: TFDQuery
    AfterOpen = cdsBuscaAfterOpen
    Filtered = True
    Connection = dbConn
    Transaction = FDTransac
    SQL.Strings = (
      
        'SELECT ORC_CODIGO, ORC.CLI_CODIGO, CLI_RAZAO, FPG_DESCRICAO, CLI' +
        '_FONE, CLI_EMAIL, ORC_DIAS_ENTREGA, ORC_DATAAQUISICAO, ORC_DIAS_' +
        'VALIDADE, ORC_SITUACAO, ORC_VLR_TOTAL'
      
        'FROM ORCAMENTO_PROD ORC JOIN CLI0000 CL ON (CL.CLI_CODIGO = ORC.' +
        'CLI_CODIGO)'
      
        'LEFT JOIN FORMA_PAGAMENTO FPG ON FPG.FPG_REGISTRO = ORC.FPG_REGI' +
        'STRO')
    Left = 347
    Top = 216
  end
  object pmExportar: TPopupMenu
    Left = 680
    Top = 48
    object miExcel: TMenuItem
      Caption = 'Excel'
      OnClick = miExcelClick
    end
    object miword: TMenuItem
      Caption = 'word'
      Visible = False
      OnClick = miwordClick
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 592
    Top = 56
  end
  object frxPadrao: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43578.601956828700000000
    ReportOptions.LastChange = 43578.601956828700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 588
    Top = 177
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object SaveDialog1: TSaveDialog
    Left = 268
    Top = 225
  end
  object qUsuMenu: TFDQuery
    Connection = dbConn
    Transaction = FDTransac
    SQL.Strings = (
      'SELECT * FROM USUARIO_ACESSO')
    Left = 171
    Top = 240
    object qUsuMenuUSA_ALTERACAO: TStringField
      FieldName = 'USA_ALTERACAO'
      Origin = 'USA_ALTERACAO'
      FixedChar = True
      Size = 1
    end
    object qUsuMenuUSA_INCLUSAO: TStringField
      FieldName = 'USA_INCLUSAO'
      Origin = 'USA_INCLUSAO'
      FixedChar = True
      Size = 1
    end
    object qUsuMenuUSA_EXCLUSAO: TStringField
      FieldName = 'USA_EXCLUSAO'
      Origin = 'USA_EXCLUSAO'
      FixedChar = True
      Size = 1
    end
    object qUsuMenuUSA_RELATORIO: TStringField
      FieldName = 'USA_RELATORIO'
      Origin = 'USA_RELATORIO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsBuscaDetalhes: TFDQuery
    Connection = dbConn
    Transaction = FDTransac
    SQL.Strings = (
      
        'SELECT ORC_CODIGO, ORC.CLI_CODIGO, CLI_RAZAO, FPG_DESCRICAO, CLI' +
        '_FONE, CLI_EMAIL, ORC_DIAS_ENTREGA, ORC_DATAAQUISICAO, ORC_DIAS_' +
        'VALIDADE, ORC_SITUACAO, ORC_VLR_TOTAL'
      
        'FROM ORCAMENTO_PROD ORC JOIN CLI0000 CL ON (CL.CLI_CODIGO = ORC.' +
        'CLI_CODIGO)'
      
        'LEFT JOIN FORMA_PAGAMENTO FPG ON FPG.FPG_REGISTRO = ORC.FPG_REGI' +
        'STRO')
    Left = 347
    Top = 280
  end
  object dsBuscaDetalhes: TDataSource
    DataSet = cdsBuscaDetalhes
    Left = 452
    Top = 280
  end
  object coCalcula: TACBrCalculadora
    Titulo = 'ACBr Calculadora'
    BorderStyle = bsDialog
    Left = 60
    Top = 337
  end
end
