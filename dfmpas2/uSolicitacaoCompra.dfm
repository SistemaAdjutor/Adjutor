inherited frmSolicitacaoCompra: TfrmSolicitacaoCompra
  Caption = 'Solicita'#231#227'o de Compra'
  ClientHeight = 558
  ClientWidth = 1051
  ExplicitWidth = 1059
  ExplicitHeight = 585
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc1: TPageControl
    Width = 1051
    Height = 481
    ExplicitWidth = 1051
    ExplicitHeight = 481
    inherited tsNotas: TTabSheet
      ExplicitWidth = 1043
      ExplicitHeight = 453
      inherited pnlControle: TPanel
        Width = 1043
        TabOrder = 1
        ExplicitWidth = 1043
        inherited pnlFiltro: TPanel
          Width = 1043
          ExplicitWidth = 1043
          inherited pnlpn1: TPanel
            Width = 1043
            ExplicitWidth = 1043
            inherited btnPesquisa: TSpeedButton
              Left = 950
              Hint = 
                'Executa a filtragem dos registros com as informa'#231#245'es digitadas n' +
                'os campos de pesquisa.'
              ParentShowHint = False
              ShowHint = True
              ExplicitLeft = 805
            end
            inherited btnLimpar: TSpeedButton
              Left = 950
              ParentShowHint = False
              ShowHint = True
              ExplicitLeft = 805
            end
            object Label1: TLabel
              Left = 333
              Top = 33
              Width = 91
              Height = 13
              Caption = 'Data da Solicita'#231#227'o'
            end
            object GroupBox1: TGroupBox
              Left = 1
              Top = -3
              Width = 881
              Height = 36
              TabOrder = 0
              object Panel1: TPanel
                Left = 3
                Top = 8
                Width = 125
                Height = 25
                Hint = 'Filtra em Aberto'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                OnClick = lbAbertaClick
                object Image1: TImage
                  Left = 6
                  Top = 5
                  Width = 16
                  Height = 15
                  Center = True
                  Picture.Data = {
                    07544269746D6170AA040000424DAA0400000000000036000000280000001400
                    0000130000000100180000000000740400000000000000000000000000000000
                    00004CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB122
                    4CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1
                    224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224C
                    B1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB122
                    4CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1
                    224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224C
                    B1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB122
                    4CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1
                    224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224C
                    B1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB122
                    4CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1
                    224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224C
                    B1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB122
                    4CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1
                    224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224C
                    B1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB122
                    4CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1
                    224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224C
                    B1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB122
                    4CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1
                    224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224C
                    B1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB122
                    4CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1
                    224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224C
                    B1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB122
                    4CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1
                    224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224C
                    B1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB122
                    4CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1
                    224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224C
                    B1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB122
                    4CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1
                    224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224C
                    B1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB122
                    4CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1224CB1
                    224CB1224CB1224CB1224CB1224CB1224CB1224CB122}
                  Stretch = True
                  OnClick = lbAbertaClick
                end
                object lbAberta: TLabel
                  Left = 25
                  Top = 5
                  Width = 37
                  Height = 13
                  Caption = 'Aberta:'
                  OnClick = lbAbertaClick
                end
                object lbAbertaQt: TLabel
                  Left = 63
                  Top = 5
                  Width = 33
                  Height = 13
                  Caption = 'Aberta'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clGreen
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  OnClick = lbAbertaClick
                end
              end
              object Panel2: TPanel
                Left = 128
                Top = 8
                Width = 125
                Height = 25
                Hint = 'Filtra Rejeitadas'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                OnClick = lbRejeitadaClick
                object Image2: TImage
                  Left = 6
                  Top = 5
                  Width = 16
                  Height = 15
                  Center = True
                  Picture.Data = {
                    07544269746D6170AA040000424DAA0400000000000036000000280000001400
                    0000130000000100180000000000740400000000000000000000000000000000
                    0000241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED
                    241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241C
                    ED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED24
                    1CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED
                    241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241C
                    ED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED24
                    1CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED
                    241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241C
                    ED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED24
                    1CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED
                    241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241C
                    ED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED24
                    1CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED
                    241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241C
                    ED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED24
                    1CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED
                    241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241C
                    ED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED24
                    1CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED
                    241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241C
                    ED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED24
                    1CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED
                    241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241C
                    ED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED24
                    1CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED
                    241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241C
                    ED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED24
                    1CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED
                    241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241C
                    ED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED24
                    1CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED
                    241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241C
                    ED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED24
                    1CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED
                    241CED241CED241CED241CED241CED241CED241CED241CED241CED241CED241C
                    ED241CED241CED241CED241CED241CED241CED241CED}
                  Stretch = True
                  OnClick = lbRejeitadaClick
                end
                object lbRejeitada: TLabel
                  Left = 25
                  Top = 5
                  Width = 50
                  Height = 13
                  Caption = 'Rejeitada:'
                  OnClick = lbRejeitadaClick
                end
                object lbRejeitadaQt: TLabel
                  Left = 76
                  Top = 5
                  Width = 46
                  Height = 13
                  Caption = 'Rejeitada'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  OnClick = lbRejeitadaClick
                end
              end
              object Panel3: TPanel
                Left = 253
                Top = 8
                Width = 125
                Height = 25
                Hint = 'Filtra com Autoriza'#231#227'o de Cota'#231#227'o'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
                OnClick = lbAutCotacaoClick
                object Image3: TImage
                  Left = 6
                  Top = 5
                  Width = 16
                  Height = 15
                  Center = True
                  Picture.Data = {
                    07544269746D6170AA040000424DAA0400000000000036000000280000001400
                    0000130000000100180000000000740400000000000000000000000000000000
                    0000CC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483F
                    CC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC48
                    3FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC
                    483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483F
                    CC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC48
                    3FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC
                    483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483F
                    CC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC48
                    3FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC
                    483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483F
                    CC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC48
                    3FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC
                    483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483F
                    CC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC48
                    3FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC
                    483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483F
                    CC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC48
                    3FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC
                    483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483F
                    CC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC48
                    3FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC
                    483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483F
                    CC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC48
                    3FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC
                    483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483F
                    CC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC48
                    3FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC
                    483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483F
                    CC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC48
                    3FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC
                    483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483F
                    CC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC48
                    3FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC
                    483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483F
                    CC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC483FCC48
                    3FCC483FCC483FCC483FCC483FCC483FCC483FCC483F}
                  Stretch = True
                  OnClick = lbAutCotacaoClick
                end
                object lbAutCotacao: TLabel
                  Left = 25
                  Top = 5
                  Width = 68
                  Height = 13
                  Caption = 'Aut. Cota'#231#227'o:'
                  OnClick = lbAutCotacaoClick
                end
                object lbAutCotacaoQt: TLabel
                  Left = 95
                  Top = 5
                  Width = 64
                  Height = 13
                  Caption = 'Aut. Cota'#231#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  OnClick = lbAutCotacaoClick
                end
              end
              object Panel4: TPanel
                Left = 378
                Top = 8
                Width = 125
                Height = 25
                Hint = 'Filtra Cota'#231#245'es com Autoriza'#231#245'es Aprovadas'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
                OnClick = lbFinalizadaClick
                object Image4: TImage
                  Left = 6
                  Top = 5
                  Width = 16
                  Height = 15
                  Center = True
                  Picture.Data = {
                    07544269746D6170AA040000424DAA0400000000000036000000280000001400
                    0000130000000100180000000000740400000000000000000000000000000000
                    0000577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9
                    577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577A
                    B9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB957
                    7AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9
                    577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577A
                    B9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB957
                    7AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9
                    577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577A
                    B9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB957
                    7AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9
                    577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577A
                    B9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB957
                    7AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9
                    577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577A
                    B9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB957
                    7AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9
                    577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577A
                    B9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB957
                    7AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9
                    577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577A
                    B9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB957
                    7AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9
                    577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577A
                    B9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB957
                    7AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9
                    577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577A
                    B9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB957
                    7AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9
                    577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577A
                    B9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB957
                    7AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9
                    577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577A
                    B9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB957
                    7AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9
                    577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577AB9577A
                    B9577AB9577AB9577AB9577AB9577AB9577AB9577AB9}
                  Stretch = True
                  OnClick = lbFinalizadaClick
                end
                object lbFinalizada: TLabel
                  Left = 25
                  Top = 5
                  Width = 75
                  Height = 13
                  Caption = 'Cot. Aprovada:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  OnClick = lbFinalizadaClick
                end
                object lbFinalizadaQt: TLabel
                  Left = 101
                  Top = 5
                  Width = 71
                  Height = 13
                  Caption = 'Cot. Aprovada'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clMaroon
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  OnClick = lbAutCotacaoClick
                end
              end
              object Panel5: TPanel
                Left = 503
                Top = 8
                Width = 125
                Height = 25
                Hint = 'Filtra com Autoriza'#231#227'o de Compra'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 4
                OnClick = lbAutcompraClick
                object Image5: TImage
                  Left = 6
                  Top = 5
                  Width = 16
                  Height = 15
                  Center = True
                  Picture.Data = {
                    07544269746D6170AA040000424DAA0400000000000036000000280000001400
                    0000130000000100180000000000740400000000000000000000000000000000
                    0000EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999
                    EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD9
                    99EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EA
                    D999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999
                    EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD9
                    99EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EA
                    D999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999
                    EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD9
                    99EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EA
                    D999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999
                    EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD9
                    99EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EA
                    D999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999
                    EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD9
                    99EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EA
                    D999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999
                    EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD9
                    99EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EA
                    D999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999
                    EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD9
                    99EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EA
                    D999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999
                    EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD9
                    99EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EA
                    D999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999
                    EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD9
                    99EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EA
                    D999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999
                    EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD9
                    99EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EA
                    D999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999
                    EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD9
                    99EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EA
                    D999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999
                    EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD999EAD9
                    99EAD999EAD999EAD999EAD999EAD999EAD999EAD999}
                  Stretch = True
                  OnClick = lbAutcompraClick
                end
                object lbAutcompra: TLabel
                  Left = 26
                  Top = 5
                  Width = 65
                  Height = 13
                  Caption = 'Aut. Compra:'
                  OnClick = lbAutcompraClick
                end
                object lbAutcompraQt: TLabel
                  Left = 92
                  Top = 5
                  Width = 61
                  Height = 13
                  Caption = 'Aut. Compra'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clAqua
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  OnClick = lbAutCotacaoClick
                end
              end
              object Panel6: TPanel
                Left = 628
                Top = 8
                Width = 125
                Height = 25
                Hint = 'Filtra Conclu'#237'das'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 5
                OnClick = lbConcluidaClick
                object Image6: TImage
                  Left = 6
                  Top = 5
                  Width = 16
                  Height = 15
                  Center = True
                  Picture.Data = {
                    07544269746D6170AA040000424DAA0400000000000036000000280000001400
                    0000130000000100180000000000740400000000000000000000000000000000
                    000000F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF
                    00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2
                    FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00
                    F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF
                    00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2
                    FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00
                    F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF
                    00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2
                    FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00
                    F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF
                    00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2
                    FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00
                    F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF
                    00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2
                    FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00
                    F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF
                    00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2
                    FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00
                    F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF
                    00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2
                    FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00
                    F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF
                    00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2
                    FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00
                    F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF
                    00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2
                    FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00
                    F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF
                    00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2
                    FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00
                    F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF
                    00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2
                    FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00
                    F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF
                    00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2
                    FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF}
                  Stretch = True
                  OnClick = lbConcluidaClick
                end
                object lbConcluida: TLabel
                  Left = 25
                  Top = 5
                  Width = 50
                  Height = 13
                  Caption = 'Conclu'#237'da:'
                  OnClick = lbConcluidaClick
                end
                object lbConcluidaQt: TLabel
                  Left = 77
                  Top = 5
                  Width = 46
                  Height = 13
                  Caption = 'Conclu'#237'da'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  OnClick = lbConcluidaClick
                end
              end
              object Panel7: TPanel
                Left = 753
                Top = 8
                Width = 125
                Height = 25
                Hint = 'Filtra Canceladas'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 6
                OnClick = lbCanceladaClick
                object Image7: TImage
                  Left = 6
                  Top = 5
                  Width = 16
                  Height = 15
                  Center = True
                  Picture.Data = {
                    07544269746D6170AA040000424DAA0400000000000036000000280000001400
                    0000130000000100180000000000740400000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000}
                  Stretch = True
                  OnClick = lbCanceladaClick
                end
                object lbCancelada: TLabel
                  Left = 25
                  Top = 5
                  Width = 54
                  Height = 13
                  Caption = 'Cancelada:'
                  OnClick = lbCanceladaClick
                end
                object lbCanceladaQt: TLabel
                  Left = 80
                  Top = 5
                  Width = 50
                  Height = 13
                  Caption = 'Cancelada'
                  OnClick = lbCanceladaClick
                end
              end
            end
            object edPesquisa: TLabeledEdit
              Left = 10
              Top = 50
              Width = 313
              Height = 21
              CharCase = ecUpperCase
              EditLabel.Width = 267
              EditLabel.Height = 13
              EditLabel.Caption = 'Pesquisa por Solicitante, Setor, Observa'#231#227'o ou Produto'
              TabOrder = 1
              OnExit = edPesquisaExit
            end
            object dtScoDataSolicitacao: TJvDateEdit
              Left = 329
              Top = 50
              Width = 113
              Height = 21
              DateFormat = 'YYYY'
              ShowNullDate = False
              YearDigits = dyFour
              TabOrder = 2
              OnExit = dtScoDataSolicitacaoExit
            end
          end
        end
      end
      inherited cxgrd1: TcxGrid
        Width = 1043
        Height = 374
        TabOrder = 0
        ExplicitWidth = 1043
        ExplicitHeight = 374
        inherited cxgrd1DBTableView1: TcxGridDBTableView
          PopupMenu = PopupMenu2
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxgrd1DBTableView1SCO_STATUS_SOLICITACAO: TcxGridDBColumn
            Caption = 'Status Solicita'#231#227'o'
            DataBinding.FieldName = 'SCO_STATUS_SOLICITACAO'
            OnCustomDrawCell = cxgrd1DBTableView1SCO_STATUS_SOLICITACAOCustomDrawCell
            OnGetDataText = cxgrd1DBTableView1SCO_STATUS_SOLICITACAOGetDataText
            Width = 85
          end
          object cxgrd1DBTableView1SCO_CODIGO: TcxGridDBColumn
            Caption = 'C'#243'd. Solicita'#231#227'o'
            DataBinding.FieldName = 'SCO_CODIGO'
            Width = 87
          end
          object cxgrd1DBTableView1SCO_DESCRICAO_PRODUTO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o do Produto'
            DataBinding.FieldName = 'SCO_DESCRICAO_PRODUTO'
            Width = 150
          end
          object cxgrd1DBTableView1SCO_DATA_SOLICITACAO: TcxGridDBColumn
            Caption = 'Data Solicita'#231#227'o'
            DataBinding.FieldName = 'SCO_DATA_SOLICITACAO'
            Width = 91
          end
          object cxgrd1DBTableView1SCO_DATA_ENTREGA: TcxGridDBColumn
            Caption = 'Data Entrega'
            DataBinding.FieldName = 'SCO_DATA_ENTREGA'
            Width = 81
          end
          object cxgrd1DBTableView1SET_DESCRICAO: TcxGridDBColumn
            Caption = 'Setor'
            DataBinding.FieldName = 'SET_DESCRICAO'
            Width = 92
          end
          object cxgrd1DBTableView1PRD_REFER: TcxGridDBColumn
            Caption = 'Refer'#234'ncia'
            DataBinding.FieldName = 'PRD_REFER'
          end
          object cxgrd1DBTableView1UND_DESCRICAO: TcxGridDBColumn
            Caption = 'Unidade'
            DataBinding.FieldName = 'UND_DESCRICAO'
          end
          object cxgrd1DBTableView1SCO_SOLICITANTE: TcxGridDBColumn
            Caption = 'Solicitante'
            DataBinding.FieldName = 'SCO_SOLICITANTE'
          end
          object cxgrd1DBTableView1SCO_QTDE_MIN: TcxGridDBColumn
            Caption = 'Qt. M'#237'n.'
            DataBinding.FieldName = 'SCO_QTDE_MIN'
          end
          object cxgrd1DBTableView1SCO_QTDE_MAX: TcxGridDBColumn
            Caption = 'Qt. M'#225'x.'
            DataBinding.FieldName = 'SCO_QTDE_MAX'
          end
          object cxgrd1DBTableView1SCO_OBSERVACAO: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'SCO_OBSERVACAO'
            Width = 74
          end
          object cxgrd1DBTableView1SCO_STAT_SOLICIT_RESP: TcxGridDBColumn
            Caption = 'Respons'#225'vel pelo Status'
            DataBinding.FieldName = 'SCO_STAT_SOLICIT_RESP'
          end
          object cxgrd1DBTableView1SCO_DATA_AUTORIZACAO_COTACAO: TcxGridDBColumn
            Caption = 'Data da Autoriza'#231#227'o da Cota'#231#227'o'
            DataBinding.FieldName = 'SCO_DATA_AUTORIZACAO_COTACAO'
            Width = 161
          end
          object cxgrd1DBTableView1SCO_OBSERVACAO_APROVACAO: TcxGridDBColumn
            Caption = 'Observa'#231#227'o da Aprova'#231#227'o'
            DataBinding.FieldName = 'SCO_OBSERVACAO_APROVACAO'
            Width = 133
          end
          object cxgrd1DBTableView1UND_SIGLA: TcxGridDBColumn
            Caption = 'Unidade'
            DataBinding.FieldName = 'UND_SIGLA'
            Width = 56
          end
          object cxgrd1DBTableView1SET_CODIGO: TcxGridDBColumn
            Caption = 'C'#243'd. Setor'
            DataBinding.FieldName = 'SET_CODIGO'
          end
          object cxgrd1DBTableView1SCO_NRO_PEDIDO_VENDA: TcxGridDBColumn
            Caption = 'N'#186' do Pedido de Venda'
            DataBinding.FieldName = 'SCO_NRO_PEDIDO_VENDA'
          end
        end
        object cxgrd1DBBandedTableView1: TcxGridDBBandedTableView [1]
          PopupMenu = pmSolicitacaoItem
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsBuscaDetalhes
          DataController.DetailKeyFieldNames = 'SCO_CODIGO'
          DataController.KeyFieldNames = 'SCO_CODIGO'
          DataController.MasterKeyFieldNames = 'SCO_CODIGO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          Bands = <
            item
            end>
          object cxgrd1DBBandedTableView1SIT_CODIGO: TcxGridDBBandedColumn
            Caption = 'Chave Prim'#225'ria'
            DataBinding.FieldName = 'SIT_CODIGO'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1SCO_CODIGO: TcxGridDBBandedColumn
            Caption = 'C'#243'd. Solicita'#231#227'o'
            DataBinding.FieldName = 'SCO_CODIGO'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1FOR_CODIGO: TcxGridDBBandedColumn
            Caption = 'C'#243'd. Fornecedor'
            DataBinding.FieldName = 'FOR_CODIGO'
            Width = 57
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1FOR_RAZAO: TcxGridDBBandedColumn
            Caption = 'Raz'#227'o Social do Fornecedor'
            DataBinding.FieldName = 'FOR_RAZAO'
            Width = 144
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1FOR_FONE: TcxGridDBBandedColumn
            Caption = 'Telefone do Fornecedor'
            DataBinding.FieldName = 'FOR_FONE'
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1FOR_EMAIL: TcxGridDBBandedColumn
            Caption = 'e-mail do Fornecedor'
            DataBinding.FieldName = 'FOR_EMAIL'
            Width = 114
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1FOR_CGC: TcxGridDBBandedColumn
            Caption = 'CNPJ do Fornecedor'
            DataBinding.FieldName = 'FOR_CGC'
            Width = 106
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1SIT_COTACAO_APROVADA: TcxGridDBBandedColumn
            Caption = 'Cota'#231#227'o Aprovada'
            DataBinding.FieldName = 'SIT_COTACAO_APROVADA'
            OnGetDataText = cxgrd1DBBandedTableView1SIT_COTACAO_APROVADAGetDataText
            Width = 98
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1SIT_PEDIDO_COMPRA: TcxGridDBBandedColumn
            Caption = 'Pedido de Compra'
            DataBinding.FieldName = 'SIT_PEDIDO_COMPRA'
            OnGetDataText = cxgrd1DBBandedTableView1SIT_PEDIDO_COMPRAGetDataText
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1SIT_DATA_COTACAO: TcxGridDBBandedColumn
            Caption = 'Data da Cota'#231#227'o'
            DataBinding.FieldName = 'SIT_DATA_COTACAO'
            Width = 92
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1SIT_PRECO_COTACAO: TcxGridDBBandedColumn
            Caption = 'Pre'#231'o da Cota'#231#227'o'
            DataBinding.FieldName = 'SIT_PRECO_COTACAO'
            Width = 96
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1SIT_PRAZO_ENTREGA: TcxGridDBBandedColumn
            Caption = 'Prazo de Entrega'
            DataBinding.FieldName = 'SIT_PRAZO_ENTREGA'
            Width = 92
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1SIT_TIPO_FRETE: TcxGridDBBandedColumn
            Caption = 'Tipo do Frete'
            DataBinding.FieldName = 'SIT_TIPO_FRETE'
            OnGetDataText = cxgrd1DBBandedTableView1SIT_TIPO_FRETEGetDataText
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1SIT_NRO_PEDIDO_COMPRA: TcxGridDBBandedColumn
            Caption = 'N'#186' Pedido Compra'
            DataBinding.FieldName = 'SIT_NRO_PEDIDO_COMPRA'
            Width = 96
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1SIT_PRAZO_PAGAMENTO: TcxGridDBBandedColumn
            Caption = 'Prazo de Pagamento'
            DataBinding.FieldName = 'SIT_PRAZO_PAGAMENTO'
            Width = 110
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1SIT_DATA_FINALIZACAO_COTACAO: TcxGridDBBandedColumn
            Caption = 'Data Finaliz. da Cota'#231#227'o'
            DataBinding.FieldName = 'SIT_DATA_FINALIZACAO_COTACAO'
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1SIT_DATA_AUTORIZACAO_COMPRA: TcxGridDBBandedColumn
            Caption = 'Data Autoriz. Compra'
            DataBinding.FieldName = 'SIT_DATA_AUTORIZACAO_COMPRA'
            Width = 113
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1SIT_CONCLUIDA: TcxGridDBBandedColumn
            Caption = 'Conclu'#237'da'
            DataBinding.FieldName = 'SIT_CONCLUIDA'
            Width = 172
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1SIT_STATUS_COMPRA: TcxGridDBBandedColumn
            Caption = 'Status da Compra'
            DataBinding.FieldName = 'SIT_STATUS_COMPRA'
            OnGetDataText = cxgrd1DBBandedTableView1SIT_STATUS_COMPRAGetDataText
            Width = 102
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1SIT_STATUS_COMPRA_OBS: TcxGridDBBandedColumn
            Caption = 'Observa'#231#227'o do Status da Compra'
            DataBinding.FieldName = 'SIT_STATUS_COMPRA_OBS'
            Width = 604
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView1SIT_STAT_COMPRA_RESP: TcxGridDBBandedColumn
            Caption = 'Respons'#225'vel pela Compra'
            DataBinding.FieldName = 'SIT_STAT_COMPRA_RESP'
            Width = 244
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
        end
        object cxgrd1DBBandedTableView2: TcxGridDBBandedTableView [2]
          PopupMenu = pmEmBranco
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsLog
          DataController.DetailKeyFieldNames = 'SIT_CODIGO'
          DataController.KeyFieldNames = 'SIT_CODIGO'
          DataController.MasterKeyFieldNames = 'SIT_CODIGO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          Bands = <
            item
            end>
          object cxgrd1DBBandedTableView2SIL_CODIGO: TcxGridDBBandedColumn
            Caption = 'C'#243'd. Log'
            DataBinding.FieldName = 'SIL_CODIGO'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView2SIT_CODIGO: TcxGridDBBandedColumn
            Caption = 'C'#243'd. Item'
            DataBinding.FieldName = 'SIT_CODIGO'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView2SIT_STATUS_COMPRA: TcxGridDBBandedColumn
            Caption = 'Status da Compra'
            DataBinding.FieldName = 'SIT_STATUS_COMPRA'
            OnGetDataText = cxgrd1DBBandedTableView2SIT_STATUS_COMPRAGetDataText
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView2SIT_STATUS_SOLICITACAO: TcxGridDBBandedColumn
            Caption = 'Status da Solicita'#231#227'o'
            DataBinding.FieldName = 'SIT_STATUS_SOLICITACAO'
            OnGetDataText = cxgrd1DBBandedTableView2SIT_STATUS_SOLICITACAOGetDataText
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView2USU_NOME: TcxGridDBBandedColumn
            Caption = 'Respons'#225'vel'
            DataBinding.FieldName = 'USU_NOME'
            Width = 64
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxgrd1DBBandedTableView2SIL_DATA: TcxGridDBBandedColumn
            Caption = 'Data'
            DataBinding.FieldName = 'SIL_DATA'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
        end
        inherited cxgrdlvlGrid1Level1: TcxGridLevel
          object cxgrd1Level1: TcxGridLevel
            GridView = cxgrd1DBBandedTableView1
            object cxgrd1Level2: TcxGridLevel
              Caption = 'Log do Item'
              GridView = cxgrd1DBBandedTableView2
            end
          end
        end
      end
      object PanelAguarde: TPanel
        Left = 83
        Top = 49
        Width = 293
        Height = 66
        AutoSize = True
        Caption = 'PanelAguarde'
        Color = clWhite
        TabOrder = 2
        Visible = False
        object JvGIFAnimator1: TJvGIFAnimator
          Left = 1
          Top = 11
          Width = 291
          Height = 54
          AsyncDrawing = True
          Animate = True
          Center = True
          FrameIndex = 10
          Image.Data = {
            DD0E000047494638396123013600E60000EAEAEAFFFFFFB0B0B00000005576D5
            FFC60013275F3854A34866BD304A945475D34D6CC61A316F2037785374D15171
            CD415EB15070CC5575D4273F85415EB24D6DC72037792F49932740851327601A
            306F273F845373D10001020000016060600C183A5373D01B31704866BE09122D
            0409161022526C77980E1D473854A21F3678060D2012255A01020403060E0203
            085374D2415FB23954A302040903050D4766BD01020512255B6C77994C6CC50E
            1D48060D1F2740860409155171CE4867BED1D1D1112253070D21304A951A306E
            09132D5576D412255910215209122C4E6DC81F36773955A44C6BC50E1E480C18
            3B0101044765BC5474D25677D63853A2263F84FFFFFF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000021FF0B4E45545343415045322E3003
            0100000021F904050A0056002C00000000230136000007FF8001828384858687
            88898A8B8C8D8E8F909192939495969798999A9B9C9D9E9FA0A1A2A3A4A5A6A7
            A8A9AAABACADAEAFA84002B3B4B5B6B7B8B9BABBBCBDBEBFC0C1C2C3C4C5C6C7
            C8B740870200CECFD0D1D2D3D4D5D6D7D8D9DADBDCDDDEDFE0E1E2E3D202CCE4
            E8E9EAEBECEDEEEFEDE686CDF0F5F6F7F8F9FAECF285F4FB00030A1C48105D3F
            42FF0A2A5CC8B0A1BE8383123A9C48B1A2C56C100549BCC8B1A3478519036CFC
            48B2A4C978E7AE0D58B9F2594B682C59C27CE952A6B398346BDE1CB07326CF9A
            2D71DA3C499462C891D15E2AFDA973DA5000347FE694B6B427D0A44CAD16DD3A
            F128B6AA50B38675CA33AAD8B1D5C09A45ABB52DD7B705FFBDAA944A176B4C9D
            66870A253B3667D0AC53A7C21D0C50AE359C4D13CF641BD6A660BB88F10216FB
            98B0657B86D39E0DBC792F56B7549732153A9AF2D9CBA8DF65A6269873E8A6A5
            41BF66BCD6ADDFBA8C53EBE6B69A2FE4BF77D9E62D1D7CF66DD84F8FA3ADBCBB
            39B5DECEA34B87077DBAF5EBE3AA63DFCE1D63CAEEE0C35BD32EBE3C77F2E6D3
            4F47FF8134CE0FD1DABB67091F9AFCF903EA3FBB3F5FBF33FEEEF9070080A409
            48A05006E2B752820A32889F83FDC5A7607E123658E183E37DC75A011C76E821
            871E2445C08824963862883099A8220128BAB4A2892DDEF46289314235238935
            7A30C58D2C8AC8638E3CF698E28F3EDE082491431A59E4FF8C3546835E071F46
            5940074B2A60A504574A406592586679E5962E7A292698328AD9259664DA78E6
            9A685669669A1D98B9269C729E49679D6D7229E79D6C66C9679F56FE69C49B19
            CEA392941FB6E0A6031C48D1A8038AEA19020C8C561A69989566FAE8A5654EAA
            A9A58B6ACAA99A8F525A2A0C36845AEAA82D7CEA29A8927E9A6AACA2AAEAE9AC
            989EBAAAAD8C8EEAA486D3CC80A8873324E5C303C8261BC1B2C8160BCD0CCA32
            1BED0BC64A6BEDB2D43E7BEDB5D9BA746CB4D63AFB0CB4E04E5B6DB9CC76EB0C
            B9DBA67B6EBB11A80B00BBF0CA4B6FBBF6A2AB6CBEFA625BA83FD7B8306C872E
            4443C3020857A070C20B17AC2DC30BE7D0B0C1114B5C71FF050E8F0BF1C61853
            CC71C43478FC31C219AF7BF1C5213F7C72C225CF3B32CB22AFBC40CA1ACB4C72
            CC2BB7EC82CD3757835E0F0373584234252060F4D148FF80C0D0D0F43082D24F
            276D34D3CF142D75D23D101DF5D6586B7D35D2543B63F5D74F67DD34D947870D
            C0D8649B5D35DA657B8DB6DA6C7F4D37DC4BCB5D83DDFF2274CD0A4117204434
            2B506038048723AEF80A8427AEF8E314300ECD0E90571E79E396272EF93385C7
            90B9E19B3BD3F9E710EC8039E9A1034039E931A43EBAE39E837E3AEC870F3E79
            EC9FBB8E7BE6BAD3FE78EABF1A6A0D098193100D09321CA07C0AC92F9FBCF1D0
            14E1FCF4CC1F00FD33C8533FFDF5CE64AFFDF2DC03E0FDFFF7D61F4F3EF8E69F
            5F7EF4EAAF8F7DFBE18FFF7DFCCD934FBFFA49A4CF84FD7D47740D0881034134
            4070810418B0800744A000A141C0042230810B7C46031FE8C00B44D01913A420
            040758C10A5E100019D4A0013F18421192B0830E7C020745F8C013A2F0802E7C
            610262F8421AA2F083C10398355010381444430713C0C0068418C4220ED187D0
            00E2108D48442122F1192858621379D0C4273AC3094CCCE20474F0432D4A7103
            56044014BD48451E84718C64046317BF98452E26718A6CC4C019E3F8C539A651
            8D6FA42311ED9846373E0758D23041E04C108D20A8C0020D4064221779484242
            C3048C8CA4221DF90C484A3292947486250F79C9066412FF009BECA4270BC949
            459A12919F0CE5292749CA52AE72948F14252B63294B15A4D29597BCE52B4BA9
            4B5C32F29339F49B355830C84232E098C8D44032357003632AF399CB64A633A3
            99CC663E129AD494E635B389CC234C939B2CF8A608A869CD4A8E939BDA34E739
            D709CD723AE306E854A637B7894E7782329E0C08273DD959CDFE69E41A38C880
            01062A508216F404D13841410DCA50844243A10C5DE8401DFA0C884AB4A1098D
            684429EA0C8B6A74A219FD2841711052911A80A30008A8494F5A5291A2D4A31F
            7DE94A59FAD099CA74A524F51920D5C3D3F5ECB4A740DD0D7A824A54B80CB5A8
            4825CA5193CAD48F2CB5A950B5C853A34AD5864CB5AA583125C855B3CAD57D84
            4416C908AB58C74AD6B29AF5AC682DEB3260C1D6B6BAF5AD708DAB5CE74AD7BA
            DAF5AE78CD6B5B03010021F904050A0056002C11001C001F000C000007748004
            8283848256878856058B8C8D8B12900A92919389888E98050E1C30219B9C9E9B
            9687998E0FA711A8A9A8A38AA58C154DB10BB4B3B4ADAF8C350823BCBEBFB8B9
            051410C4C5C6C7C1B907CCCDCECCCAAF09D317D4D609D1A513DBDC1B18DDD999
            0DE3E4E51616E1981AEBEC0C22EFEEE98E810021F904050A0056002C24001C00
            1F000C0000077380048283848256878856058B8C8D8B0A129190929289888E98
            050E9B9C9D9B9687998E0FA411A5A6A8A08AA28C0BAE15B0AFB1AAAC8C08B7B8
            B93F08B4B50514C010C1C2C4BDB53207C929C8CAC8C6AC1709D2D1D3D4CFA213
            181BDAD9DDDBD7992A160DE3E4E6E2E0980CEBEC1AED1AE98E810021F904050A
            0056002C37001C001F000C0000077780048283848256878856058B8C8D8B0A90
            1291929189888E9805210E9C309B9D9B9687998E0F3EA611A8A9A6A28AA48C15
            0BB2B1B3B4ADAF8C233F08BABCBEBCB7B80514C4C510C7C8C1B807CCCDCE2907
            CAAF1709D5D6D709D2A4181BDC133CDDDFDCDA990D4BE6E8E90DE498221AEEEF
            0CF2F0EC8E810021F904050A0056002C4A001C001F000C000007748004828384
            8256878856058B8C8D8B0A901292919389888E98050E1C9B9C219D9B9687998E
            11A60FA8A7A7A28AA48C15B00B39B1B2B0ACAE8C08BA51BBBD08B7B805103114
            C3C6C5C3C0B807CCCDCECCCAAE09D3D4D5D3D1A41B13DADB183CDEDED899160D
            E5E6E70DE2980CEC1AEDEF0CEA8E810021F904050A0056002C5D001C001F000C
            0000077480048283848256878856058B8C8D8B120A9190929389888E98051C0E
            219C9B9D9E9687998E11A6A7A80F0FA28AA48C0BB0B115B3B1ACAE8C2308BABB
            BC08B6B705141031C2C3C6C4BFB707CBCC54CD07C9AE09D317D4D5D4D1A413DB
            DC18DD13D9990DE3E4E5E3E1981A0C2244EBECEE1AE88E810021F904050A0056
            002C70001C001F000C0000077480048283848256878856058B8C8D8B46120A92
            91939189888E99050E1C30219C9D9F9C97879A8E3E0FA911AAABA9A48AA68C15
            0BB3B4B6B5AFB18C08BCBDBEBCB9BA051031C4C6C714C1BA07CCCDCECCCAB109
            D3D4D5D3D1A613DADB181BDDDDD89A160DE4E3E5E5E1991A0C22ECEEEBECE98E
            810021F904050A0056002C83001C001F000C0000077780530483848504568889
            56058C8D8E8C0A12929193948A898F99050E9C30219E1C9D3097889A8F110FA9
            A8AAABA48BA68D150BB3B2B4B5AEB08D233508BDBBBEBBB8B905311410C7C6C8
            C5C2B907CECFD0CECCB009D5D643D717D3A61B13DEDFE03CDB9A2A160DE6E5E7
            EAE3991AEE0CF0EF22EEEC8F810021F904050A0056002C96001C001F000C0000
            077380048283848256878856058B8C8D8B0A901291929189888E9805210E9C9D
            9E0E9687998E0FA511A7A8A8A18AA38C15AF39B00BB1AFABAD8C083FB9BBBC08
            B6B7053110C3C4C2C4BFB707CACBCCCAC8AD0917D1D2D4D4CFA318D91B13DADB
            D9D7992A0DE316E5E4E5E0980C1AEB22EDEFE98E810021F904050A0056002CA9
            001C001F000C0000077480048283848256878856058B8C8D8B0A901292919389
            888E98050E219B1C9D309D9687998E11A60FA8A7A7A28AA48C15B00B39B1B2B0
            ACAE8C08BABBBCBAB7B80510C2C314C431BFB807CACB2932CCC8AE09D2D317D4
            09D0A41BDA13DCDD18DCD8990D2AE3E5E4E5E19822EB1A0CECEDEEE98E810021
            F904050A0056002CBC001C001F000C0000077580048283848256878856058B8C
            8D8B120A9190929389888E98051C0E219C9E9F9687998E0F11A5A7A63EA6A18A
            A38C0BB0B115B3B1ACAE8C0835B9BBBC23B6B7051410C2C3C5C4BFB707CA32CB
            CD29C8AE0917D2D4D3D6D0A318131BDBDCDEDBD8990DE32A16E4E6E3E1980C22
            EDEEEC44ECEA8E810021F904050A0056002CCF001C001F000C00000770800482
            83848256878856058B8C8D8B12900A92919389888E98050E1C9B9D9E0E968799
            8E0FA511A6A7A9A18AA38C0BAF15B0B1B0ABAD8C0823B8B9BABAB5B6051014C1
            C2C3C4BEB607C9CACBC9C7AD09D0D1D2D0CEA31B1318D8D7DBD9D599160DE0E1
            E3E2DE980CE8E91A22EAE68E810021F904050A0056002CE2001C001F000C0000
            077380048283848256878856058B8C8D8B0A461290939489888E98050E9B9C9D
            300E9687998E110FA6A5A7A7A18AA38C0B15AFB0B1B2ABAD8C3F08B9BABB35B5
            B6053110C214C3C5BEB63207CACBCC07C7AD1709D2D1D3D3CFA313D9DA181BDD
            DCD7992A160DE4E5E6E0980CEAEB1AED22EAE88E810021F904050A0056002CF5
            001C001F000C0000077580048283848256878856058B8C8D8B0A901291929189
            888E9805210E301C9C9F9F9687998E0FA63E11A7AAA28AA48C150BB1B0B2B3AC
            AE8C0823B935BBBDB6B705311410C4C3C6C3BFB707CBCC32CECCC9AE1709D4D5
            D609D1A4181B13DDDBDFDBD99916E40DE5E716E2980C1AEC22EDEEEDEA8E8100
            3B}
        end
        object pinfo: TPanel
          Left = 8
          Top = 1
          Width = 281
          Height = 32
          Caption = 'Por favor, aguarde.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  inherited pnl1: TPanel
    Top = 522
    Width = 1051
    ExplicitTop = 522
    ExplicitWidth = 1051
    inherited btnSelect: TSpeedButton
      Left = 903
      ExplicitLeft = 758
    end
  end
  inherited pnlUtilTop: TPanel
    Width = 1051
    ExplicitWidth = 1051
    inherited btnExclui: TSpeedButton
      OnClick = btnExcluiClick
    end
    inherited btnEdita: TSpeedButton
      OnClick = btnEditaClick
    end
    inherited btnFechar: TSpeedButton
      Left = 987
      ExplicitLeft = 842
    end
    inherited btnMP_Expotar: TJvArrowButton
      Left = 886
      Visible = False
      ExplicitLeft = 741
    end
    inherited btnrelatorios: TJvArrowButton
      Left = 785
      OnClick = btnrelatoriosClick
      ExplicitLeft = 640
    end
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 88
    Top = 8
  end
  inherited cxLocalizer1: TcxLocalizer
    Left = 392
    Top = 8
  end
  inherited qAux: TFDQuery
    Top = 8
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 520
    Top = 288
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 248
    Top = 216
  end
  inherited FDTransac: TFDTransaction
    Left = 440
    Top = 208
  end
  inherited FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Left = 864
    Top = 152
  end
  inherited qAux2: TFDQuery
    Top = 7
  end
  inherited qAux3: TFDQuery
    Top = 7
  end
  inherited qAux4: TFDQuery
    Top = 7
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\EXEMPLO\EXEMPLO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    Left = 27
  end
  inherited FDStoredProc1: TFDStoredProc
    Top = 16
  end
  inherited dsBusca: TDataSource
    Left = 28
    Top = 384
  end
  inherited cdsBusca: TFDQuery
    SQL.Strings = (
      'SELECT sc.*, se.SET_DESCRICAO, un.UND_DESCRICAO'
      'FROM SOLICITACAO_COMPRA sc'
      'JOIN SETOR se ON (se.SET_CODIGO = sc.SET_CODIGO)'
      'LEFT JOIN SOLICITACAO_ITEM si ON (si.SCO_CODIGO = sc.SCO_CODIGO)'
      'LEFT JOIN UND_MEDIDA un ON (un.UND_SIGLA = sc.UND_SIGLA)'
      'ORDER BY sc.PRD_REFER,  sc.SCO_DATA_SOLICITACAO DESC')
    Left = 27
    Top = 336
  end
  inherited pmExportar: TPopupMenu
    Left = 912
    Top = 24
  end
  inherited PopupMenu2: TPopupMenu
    Left = 824
    Top = 200
    object ImprimirRelatorio: TMenuItem
      Caption = 'Imprimir Relat'#243'rio'
      OnClick = ImprimirRelatorioClick
    end
    object EnviarRelatorio: TMenuItem
      Caption = 'Enviar e-mail para todos os fornecedores'
      OnClick = EnviarRelatorioClick
    end
  end
  inherited frxPadrao: TfrxReport
    Left = 580
    Top = 9
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited SaveDialog1: TSaveDialog
    Left = 812
    Top = 25
  end
  inherited qUsuMenu: TFDQuery
    Left = 155
    Top = 208
  end
  inherited cdsBuscaDetalhes: TFDQuery
    SQL.Strings = (
      'SELECT si.*'
      'FROM SOLICITACAO_COMPRA sc'
      'LEFT JOIN SOLICITACAO_ITEM si ON (SI.SCO_CODIGO = SC.SCO_CODIGO)')
    Left = 139
    Top = 336
  end
  inherited dsBuscaDetalhes: TDataSource
    Left = 140
    Top = 384
  end
  inherited coCalcula: TACBrCalculadora
    Left = 36
    Top = 17
  end
  object frxSolicitacaoCompraItem: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44084.407895162000000000
    ReportOptions.LastChange = 44365.464099594900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var Empresa: string;                                          '
      'begin'
      ''
      'end.')
    OnBeginDoc = frxSolicitacaoCompraItemBeginDoc
    OnGetValue = frxSolicitacaoCompraItemGetValue
    Left = 345
    Top = 209
    Datasets = <
      item
        DataSet = frxBuscaDetalhes
        DataSetName = 'frxBuscaDetalhes'
      end
      item
        DataSet = frxDBBusca
        DataSetName = 'frxDBBusca'
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
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 181.417440000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Top = 63.031540000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          Left = 619.842920000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo8: TfrxMemoView
          Left = 672.756340000000000000
          Top = 45.354360000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 544.472790000000000000
          Top = 45.354360000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Emitido em: [Date]')
          ParentFont = False
        end
        object LogoEmpresa: TfrxPictureView
          Left = 3.779530000000000000
          Width = 177.637783070000000000
          Height = 60.472480000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object wFrxRazao: TfrxMemoView
          Left = 205.551330000000000000
          Top = 1.779530000000000000
          Width = 362.834880000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[EMPRESA]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 304.141930000000000000
          Top = 18.456710000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Solicita'#231#227'o de Or'#231'amento')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 49.133890000000000000
          Top = 68.031540000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Setor:')
        end
        object Memo2: TfrxMemoView
          Left = 94.488250000000000000
          Top = 68.031540000000000000
          Width = 393.071120000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBBusca."SET_DESCRICAO"]')
        end
        object Memo3: TfrxMemoView
          Left = 521.575140000000000000
          Top = 68.031540000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Data:')
        end
        object Memo4: TfrxMemoView
          Left = 566.929500000000000000
          Top = 68.031540000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBBusca."SCO_DATA_SOLICITACAO"]')
        end
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 86.929190000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Observa'#231#227'o:')
        end
        object Memo6: TfrxMemoView
          Left = 94.488250000000000000
          Top = 86.929190000000000000
          Width = 612.283860000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBBusca."SCO_OBSERVACAO"]')
        end
        object Memo9: TfrxMemoView
          Left = 548.031850000000000000
          Top = 18.897650000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'N'#186':')
        end
        object Memo10: TfrxMemoView
          Left = 574.488560000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBBusca."SCO_CODIGO"]')
        end
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Top = 117.165430000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Refer'#234'ncia')
        end
        object Memo14: TfrxMemoView
          Left = 75.590600000000000000
          Top = 117.165430000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Quant.')
        end
        object Memo16: TfrxMemoView
          Left = 124.724490000000000000
          Top = 117.165430000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Unidade')
        end
        object Memo19: TfrxMemoView
          Left = 204.094620000000000000
          Top = 117.165430000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Descri'#231#227'o do Material')
        end
        object Line1: TfrxLineView
          Top = 136.063080000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Shape2: TfrxShapeView
          Top = 135.740260000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
        end
        object Memo13: TfrxMemoView
          Left = 3.779530000000000000
          Top = 139.401670000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBBusca."PRD_REFER"]')
        end
        object Memo15: TfrxMemoView
          Left = 75.590600000000000000
          Top = 139.401670000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBBusca."SCO_QTDE_MIN"]')
        end
        object Memo18: TfrxMemoView
          Left = 124.724490000000000000
          Top = 139.401670000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBBusca."UND_DESCRICAO"]')
        end
        object Memo20: TfrxMemoView
          Left = 204.094620000000000000
          Top = 139.401670000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBBusca."SCO_DESCRICAO_PRODUTO"]')
        end
        object Memo28: TfrxMemoView
          Left = 3.779530000000000000
          Top = 162.519790000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd. Forn.')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 79.370130000000000000
          Top = 162.519790000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Raz'#227'o Social')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 419.527830000000000000
          Top = 162.519790000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 627.401980000000000000
          Top = 162.519790000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 35.015770000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        DataSet = frxBuscaDetalhes
        DataSetName = 'frxBuscaDetalhes'
        RowCount = 0
        object Line3: TfrxLineView
          Left = 551.811380000000000000
          Top = 30.677180000000000000
          Width = 162.519790000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo22: TfrxMemoView
          Top = 15.118120000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxBuscaDetalhes."FOR_CODIGO"]')
        end
        object Memo26: TfrxMemoView
          Left = 79.370130000000000000
          Top = 15.118120000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxBuscaDetalhes."FOR_RAZAO"]')
        end
        object Memo27: TfrxMemoView
          Left = 419.527830000000000000
          Top = 15.118120000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxBuscaDetalhes."FOR_FONE"]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 105.826840000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          Left = 3.779530000000000000
          Width = 718.110700000000000000
          Height = 94.488250000000000000
        end
        object Memo24: TfrxMemoView
          Left = 11.338590000000000000
          Top = 61.133890000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Autorizado por: [frxBuscaDetalhes."SIT_STAT_COMPRA_RESP"]')
        end
        object Memo23: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Requisitado por: [frxDBBusca."SCO_STAT_SOLICIT_RESP"]')
        end
        object Memo25: TfrxMemoView
          Left = 510.236550000000000000
          Top = 3.779530000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Entrega em:[frxDBBusca."SCO_DATA_ENTREGA"]')
        end
      end
    end
  end
  object frxDBBusca: TfrxDBDataset
    Description = 'frxBusca'
    UserName = 'frxDBBusca'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SET_DESCRICAO=SET_DESCRICAO'
      'SCO_CODIGO=SCO_CODIGO'
      'SET_CODIGO=SET_CODIGO'
      'SCO_OBSERVACAO=SCO_OBSERVACAO'
      'SCO_DATA_SOLICITACAO=SCO_DATA_SOLICITACAO'
      'SCO_SOLICITANTE=SCO_SOLICITANTE'
      'PRD_REFER=PRD_REFER'
      'SCO_DESCRICAO_PRODUTO=SCO_DESCRICAO_PRODUTO'
      'UND_SIGLA=UND_SIGLA'
      'SCO_QTDE_MIN=SCO_QTDE_MIN'
      'SCO_QTDE_MAX=SCO_QTDE_MAX'
      'SCO_STATUS_SOLICITACAO=SCO_STATUS_SOLICITACAO'
      'SCO_STAT_SOLICIT_RESP=SCO_STAT_SOLICIT_RESP'
      'SCO_DATA_ENTREGA=SCO_DATA_ENTREGA'
      'SCO_DATA_AUTORIZACAO_COTACAO=SCO_DATA_AUTORIZACAO_COTACAO'
      'SCO_OBSERVACAO_APROVACAO=SCO_OBSERVACAO_APROVACAO'
      'SCO_NRO_PEDIDO_VENDA=SCO_NRO_PEDIDO_VENDA'
      'UND_DESCRICAO=UND_DESCRICAO')
    DataSet = qSolCompra
    BCDToCurrency = False
    Left = 313
    Top = 257
  end
  object frxBuscaDetalhes: TfrxDBDataset
    Description = 'frxBuscaDetalhes'
    UserName = 'frxBuscaDetalhes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SIT_CODIGO=SIT_CODIGO'
      'SCO_CODIGO=SCO_CODIGO'
      'FOR_CODIGO=FOR_CODIGO'
      'FOR_RAZAO=FOR_RAZAO'
      'FOR_FONE=FOR_FONE'
      'FOR_EMAIL=FOR_EMAIL'
      'SIT_COTACAO_APROVADA=SIT_COTACAO_APROVADA'
      'SIT_PEDIDO_COMPRA=SIT_PEDIDO_COMPRA'
      'SIT_DATA_COTACAO=SIT_DATA_COTACAO'
      'SIT_PRECO_COTACAO=SIT_PRECO_COTACAO'
      'SIT_PRAZO_ENTREGA=SIT_PRAZO_ENTREGA'
      'SIT_TIPO_FRETE=SIT_TIPO_FRETE'
      'SIT_NRO_PEDIDO_COMPRA=SIT_NRO_PEDIDO_COMPRA'
      'SIT_PRAZO_PAGAMENTO=SIT_PRAZO_PAGAMENTO'
      'SIT_DATA_FINALIZACAO_COTACAO=SIT_DATA_FINALIZACAO_COTACAO'
      'SIT_DATA_AUTORIZACAO_COMPRA=SIT_DATA_AUTORIZACAO_COMPRA'
      'SIT_CONCLUIDA=SIT_CONCLUIDA'
      'SIT_STATUS_COMPRA=SIT_STATUS_COMPRA'
      'SIT_STATUS_COMPRA_OBS=SIT_STATUS_COMPRA_OBS'
      'SIT_STAT_COMPRA_RESP=SIT_STAT_COMPRA_RESP')
    DataSet = qSolCompraItem
    BCDToCurrency = False
    Left = 393
    Top = 257
  end
  object cdsLog: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT * FROM SOLICITACAO_ITEM_LOG'
      'ORDER BY SIT_CODIGO, SIL_CODIGO DESC')
    Left = 228
    Top = 337
  end
  object dsLog: TDataSource
    DataSet = cdsLog
    Left = 228
    Top = 384
  end
  object pmSolicitacaoItem: TPopupMenu
    Left = 828
    Top = 257
    object ImprimirItemRequisicaodeCompras1: TMenuItem
      Caption = 'Imprimir Item da Requisi'#231#227'o de Compras'
      OnClick = ImprimirItemRequisicaodeCompras1Click
    end
    object EnviarItemporemail1: TMenuItem
      Caption = 'Enviar Item por e-mail'
      OnClick = EnviarItemporemail1Click
    end
    object InserirItemnoPedidodeCompra1: TMenuItem
      Caption = 'Inserir Item no Pedido de Compra'
      OnClick = InserirItemnoPedidodeCompra1Click
    end
  end
  object qSolCompra: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT se.SET_DESCRICAO, sc.*, un.UND_DESCRICAO'
      'FROM SOLICITACAO_COMPRA sc'
      'JOIN SETOR se ON (se.SET_CODIGO = sc.SET_CODIGO)'
      'LEFT JOIN UND_MEDIDA un ON (un.UND_SIGLA = sc.UND_SIGLA) '
      'ORDER BY sc.SCO_DATA_SOLICITACAO DESC')
    Left = 316
    Top = 313
  end
  object qSolCompraItem: TFDQuery
    Connection = dbConn
    SQL.Strings = (
      'SELECT si.*'
      'FROM SOLICITACAO_ITEM si'
      'ORDER BY si.SCO_CODIGO, si.SIT_CODIGO')
    Left = 396
    Top = 313
  end
  object dsSolCompra: TDataSource
    DataSet = qSolCompra
    Left = 316
    Top = 369
  end
  object dsSolCompraItem: TDataSource
    DataSet = qSolCompraItem
    Left = 396
    Top = 369
  end
  object smtp: TIdSMTP
    SASLMechanisms = <>
    Left = 660
    Top = 219
  end
  object sslsocket: TIdSSLIOHandlerSocketOpenSSL
    Destination = ':25'
    Intercept = IdConnectionIntercept1
    MaxLineAction = maException
    Port = 25
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 660
    Top = 267
  end
  object IdConnectionIntercept1: TIdConnectionIntercept
    Left = 660
    Top = 315
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
    Left = 723
    Top = 224
  end
  object frxRelatorioGeral: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44084.407895162000000000
    ReportOptions.LastChange = 44365.464099594900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var Empresa: string;                                          '
      'begin'
      ''
      'end.')
    OnBeginDoc = frxSolicitacaoCompraItemBeginDoc
    OnGetValue = frxSolicitacaoCompraItemGetValue
    Left = 681
    Top = 105
    Datasets = <
      item
        DataSet = frxDBBuscaGeral
        DataSetName = 'frxDBBuscaGeral'
      end
      item
        DataSet = frxDBBuscaGeralDetalhes
        DataSetName = 'frxDBBuscaGeralDetalhes'
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
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 63.031540000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Left = 619.842920000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo8: TfrxMemoView
          Left = 672.756340000000000000
          Top = 45.354360000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 544.472790000000000000
          Top = 45.354360000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Emitido em: [Date]')
          ParentFont = False
        end
        object LogoEmpresa: TfrxPictureView
          Left = 3.779530000000000000
          Width = 177.637783070000000000
          Height = 60.472480000000000000
          Center = True
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object wFrxRazao: TfrxMemoView
          Left = 205.551330000000000000
          Top = 1.779530000000000000
          Width = 362.834880000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[EMPRESA]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 304.141930000000000000
          Top = 18.456710000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Or'#231'amento')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 548.031850000000000000
          Top = 18.897650000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'N'#186':')
        end
        object Memo10: TfrxMemoView
          Left = 574.488560000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBBuscaGeral."SCO_CODIGO"]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 124.724490000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        DataSet = frxDBBuscaGeral
        DataSetName = 'frxDBBuscaGeral'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 67.252010000000000000
          Top = 14.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Setor:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 120.944960000000000000
          Top = 16.779530000000000000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBBuscaGeral."SET_DESCRICAO"]')
        end
        object Memo3: TfrxMemoView
          Left = 514.016080000000000000
          Top = 16.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data Solicita'#231#227'o:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 627.401980000000000000
          Top = 16.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBBuscaGeral."SCO_DATA_SOLICITACAO"]')
        end
        object Memo5: TfrxMemoView
          Left = 31.456710000000000000
          Top = 64.677180000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Observa'#231#227'o:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 120.944960000000000000
          Top = 64.677180000000000000
          Width = 585.827150000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBBuscaGeral."SCO_OBSERVACAO"]')
        end
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Top = 89.913420000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 75.590600000000000000
          Top = 89.913420000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Quant.')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 124.724490000000000000
          Top = 89.913420000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Unidade')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 204.094620000000000000
          Top = 89.913420000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o do Material')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 672.756340000000000000
          Top = 89.913420000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Pre'#231'o')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 108.811070000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Left = 3.779530000000000000
          Top = 108.811070000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBBuscaGeral."PRD_REFER"]')
        end
        object Memo15: TfrxMemoView
          Left = 75.590600000000000000
          Top = 108.811070000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBBuscaGeral."SCO_QTDE_MIN"]')
        end
        object Memo18: TfrxMemoView
          Left = 124.724490000000000000
          Top = 108.811070000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBBuscaGeral."UND_DESCRICAO"]')
        end
        object Memo20: TfrxMemoView
          Left = 204.094620000000000000
          Top = 108.811070000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBBuscaGeral."SCO_DESCRICAO_PRODUTO"]')
        end
        object Memo29: TfrxMemoView
          Left = 533.913730000000000000
          Top = 40.677180000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data Entrega:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 627.401980000000000000
          Top = 40.677180000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBBuscaGeral."SCO_DATA_ENTREGA"]')
        end
        object Memo23: TfrxMemoView
          Left = 120.944960000000000000
          Top = 40.677180000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBBuscaGeral."SCO_STAT_SOLICIT_RESP"]')
        end
        object Memo31: TfrxMemoView
          Left = 7.559060000000000000
          Top = 40.677180000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Requisitado por:')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Top = 7.559060000000000000
          Width = 718.110700000000000000
          Height = 1.889763779527560000
          Fill.BackColor = clBlack
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        DataSet = frxDBBuscaGeralDetalhes
        DataSetName = 'frxDBBuscaGeralDetalhes'
        Filter = 
          '<frxDBBuscaGeral."SCO_CODIGO"> = <frxDBBuscaGeralDetalhes."SCO_C' +
          'ODIGO">'
        RowCount = 0
        object Shape1: TfrxShapeView
          Width = 718.110700000000000000
          Height = 75.590600000000000000
        end
        object Memo22: TfrxMemoView
          Left = 529.134200000000000000
          Top = 0.677180000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBBuscaGeralDetalhes."SIT_PRECO_COTACAO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 105.826840000000000000
          Top = 0.677180000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            
              '[<frxDBBuscaGeralDetalhes."FOR_CODIGO">] - [<frxDBBuscaGeralDeta' +
              'lhes."FOR_RAZAO">]')
          Formats = <
            item
            end
            item
            end>
        end
        object Memo27: TfrxMemoView
          Left = 434.645950000000000000
          Top = 0.677180000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBBuscaGeralDetalhes."FOR_FONE"]')
        end
        object Memo28: TfrxMemoView
          Left = 105.826840000000000000
          Top = 23.354360000000000000
          Width = 430.866420000000000000
          Height = 22.677180000000000000
          Memo.UTF8W = (
            '[frxDBBuscaGeralDetalhes."FOR_EMAIL"]')
        end
        object Memo24: TfrxMemoView
          Left = 105.826840000000000000
          Top = 49.795300000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBBuscaGeralDetalhes."SIT_STAT_COMPRA_RESP"]')
        end
        object Memo25: TfrxMemoView
          Left = 574.488560000000000000
          Top = 49.795300000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[frxDBBuscaGeralDetalhes."SIT_DATA_FINALIZACAO_COTACAO"]')
        end
        object Memo32: TfrxMemoView
          Left = 20.897650000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fornecedor:')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo33: TfrxMemoView
          Left = 55.692950000000000000
          Top = 22.677180000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'e-mail:')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Top = 49.133890000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Autorizado por:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 393.071120000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fone:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 381.732530000000000000
          Top = 50.133890000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data Finaliza'#231#227'o da Cota'#231#227'o:')
          ParentFont = False
        end
      end
    end
  end
  object frxDBBuscaGeral: TfrxDBDataset
    Description = 'frxDBBuscaGeral'
    UserName = 'frxDBBuscaGeral'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SCO_CODIGO=SCO_CODIGO'
      'SET_CODIGO=SET_CODIGO'
      'SCO_OBSERVACAO=SCO_OBSERVACAO'
      'SCO_DATA_SOLICITACAO=SCO_DATA_SOLICITACAO'
      'SCO_SOLICITANTE=SCO_SOLICITANTE'
      'PRD_REFER=PRD_REFER'
      'SCO_DESCRICAO_PRODUTO=SCO_DESCRICAO_PRODUTO'
      'UND_SIGLA=UND_SIGLA'
      'SCO_QTDE_MIN=SCO_QTDE_MIN'
      'SCO_QTDE_MAX=SCO_QTDE_MAX'
      'SCO_STATUS_SOLICITACAO=SCO_STATUS_SOLICITACAO'
      'SCO_STAT_SOLICIT_RESP=SCO_STAT_SOLICIT_RESP'
      'SCO_DATA_ENTREGA=SCO_DATA_ENTREGA'
      'SCO_DATA_AUTORIZACAO_COTACAO=SCO_DATA_AUTORIZACAO_COTACAO'
      'SCO_OBSERVACAO_APROVACAO=SCO_OBSERVACAO_APROVACAO'
      'SCO_NRO_PEDIDO_VENDA=SCO_NRO_PEDIDO_VENDA'
      'SET_DESCRICAO=SET_DESCRICAO'
      'UND_DESCRICAO=UND_DESCRICAO')
    DataSource = dsBusca
    BCDToCurrency = False
    Left = 33
    Top = 273
  end
  object frxDBBuscaGeralDetalhes: TfrxDBDataset
    Description = 'frxDBBuscaGeralDetalhes'
    UserName = 'frxDBBuscaGeralDetalhes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SIT_CODIGO=SIT_CODIGO'
      'SCO_CODIGO=SCO_CODIGO'
      'FOR_CODIGO=FOR_CODIGO'
      'FOR_RAZAO=FOR_RAZAO'
      'FOR_FONE=FOR_FONE'
      'FOR_EMAIL=FOR_EMAIL'
      'SIT_COTACAO_APROVADA=SIT_COTACAO_APROVADA'
      'SIT_PEDIDO_COMPRA=SIT_PEDIDO_COMPRA'
      'SIT_DATA_COTACAO=SIT_DATA_COTACAO'
      'SIT_PRECO_COTACAO=SIT_PRECO_COTACAO'
      'SIT_PRAZO_ENTREGA=SIT_PRAZO_ENTREGA'
      'SIT_TIPO_FRETE=SIT_TIPO_FRETE'
      'SIT_NRO_PEDIDO_COMPRA=SIT_NRO_PEDIDO_COMPRA'
      'SIT_PRAZO_PAGAMENTO=SIT_PRAZO_PAGAMENTO'
      'SIT_DATA_FINALIZACAO_COTACAO=SIT_DATA_FINALIZACAO_COTACAO'
      'SIT_DATA_AUTORIZACAO_COMPRA=SIT_DATA_AUTORIZACAO_COMPRA'
      'SIT_CONCLUIDA=SIT_CONCLUIDA'
      'SIT_STATUS_COMPRA=SIT_STATUS_COMPRA'
      'SIT_STATUS_COMPRA_OBS=SIT_STATUS_COMPRA_OBS'
      'SIT_STAT_COMPRA_RESP=SIT_STAT_COMPRA_RESP')
    DataSource = dsBuscaDetalhes
    BCDToCurrency = False
    Left = 137
    Top = 273
  end
  object pmEmBranco: TPopupMenu
    Left = 828
    Top = 321
  end
  object ImageList1: TImageList
    Left = 524
    Top = 225
    Bitmap = {
      494C010108000D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900577AB900577AB900577AB900577A
      B900577AB900577AB900577AB900577AB900EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD99A00EAD9
      9A00EAD99A00EAD99A00EAD99A00EAD99A0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2FE0000F2
      FE0000F2FE0000F2FE0000F2FE0000F2FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB123004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB12300241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB123004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB12300241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB123004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB12300241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB123004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB12300241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB123004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB12300241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F000000000000000000000000000000
      00000000FF000000800000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB123004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB12300241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F000000000000000000000000000000
      00000000FF000000800000000000000000000000800000008000000000000000
      0000000000000000000000000000000000004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB123004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB12300241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F000000000000000000000000000000
      0000000000000000800000008000000000000000800000008000000000000000
      0000000000000000000000000000000000004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB123004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB12300241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F000000000000000000000000000000
      0000000000000000FF0000008000000080000000800000000000000000000000
      0000000000000000000000000000000000004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB123004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB12300241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F000000000000000000000000000000
      0000000000000000000000008000000080000000800000000000000000000000
      0000000000000000000000000000000000004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB123004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB12300241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F000000000000000000000000000000
      0000000000000000000000008000000080000000800000000000000000000000
      0000000000000000000000000000000000004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB123004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB12300241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F000000000000000000000000000000
      0000000000000000000000008000000080000000800000008000000000000000
      0000000000000000000000000000000000004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB123004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB12300241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F000000000000000000000000000000
      000000000000000080000000800080808000000000000000FF00000080000000
      0000000000000000000000000000000000004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB123004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB12300241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000080000000
      0000000000000000000000000000000000004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB123004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB12300241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB123004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB12300241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB123004DB123004DB123004DB123004DB1
      23004DB123004DB123004DB123004DB12300241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00241BED00241BED00241BED00241B
      ED00241BED00241BED00241BED00241BED00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC473F00CC47
      3F00CC473F00CC473F00CC473F00CC473F00424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000FBFF000000000000F33F000000000000
      F11F000000000000F81F000000000000F83F000000000000FC7F000000000000
      FC3F000000000000FC3F000000000000F89F000000000000F9CF000000000000
      FFDF000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
end
