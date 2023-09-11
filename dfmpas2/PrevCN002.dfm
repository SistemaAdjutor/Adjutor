object FormPrevisaoProducao: TFormPrevisaoProducao
  Left = 10
  Top = 25
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Simula'#231#227'o de Consumo de Materiais'
  ClientHeight = 634
  ClientWidth = 982
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox2: TGroupBox
    Left = 5
    Top = 0
    Width = 793
    Height = 129
    Caption = 'Produtos a serem produzidos'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 3
      Top = 15
      Width = 782
      Height = 111
      Color = 16776176
      DataSource = DsProdutos
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
          FieldName = 'PRD_REFER'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 524
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PSV_QUANT1'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde Solicitada'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Width = 94
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 822
    Top = 12
    Width = 137
    Height = 90
    BevelOuter = bvLowered
    Color = 10841658
    TabOrder = 1
    object BitGerar: TBitBtn
      Left = 6
      Top = 45
      Width = 125
      Height = 25
      Caption = '&Gerar Requisi'#231#227'o'
      TabOrder = 1
      TabStop = False
      Visible = False
      OnClick = BitGerarClick
    end
    object Bit_Relatorios: TBitBtn
      Left = 6
      Top = 11
      Width = 125
      Height = 25
      Cursor = crHandPoint
      Caption = '&Relat'#243'rio'
      NumGlyphs = 2
      TabOrder = 0
      TabStop = False
      OnClick = Bit_RelatoriosClick
    end
    object Bit_Sair: TBitBtn
      Left = 6
      Top = 46
      Width = 125
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
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 135
    Width = 983
    Height = 493
    ActivePage = TabSheet1
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Estoque Dispon'#237'vel'
      object DBGrid2: TDBGrid
        Left = 0
        Top = 41
        Width = 975
        Height = 389
        Align = alClient
        Color = 16776176
        DataSource = DsDisponivel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid2DrawColumnCell
        OnTitleClick = DBGrid2TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PRD_REFER_ITENS'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_DESCRI'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 363
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PSI_UND'
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'PSI_SIGLA'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Visible = True
          end
          item
            Color = 14024703
            Expanded = False
            FieldName = 'WCONSUMO'
            Title.Alignment = taCenter
            Title.Caption = 'Consumo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PSI_ESTFISICO'
            Title.Alignment = taCenter
            Title.Caption = 'Est.Fisico'
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
            FieldName = 'PSI_ESTANTEC'
            Title.Alignment = taCenter
            Title.Caption = 'Est.+Compra'
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
            FieldName = 'PSI_ESTRESERVA'
            Title.Alignment = taCenter
            Title.Caption = 'Reserva'
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
            FieldName = 'PSI_CUSTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Pre'#231'o Custo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 70
            Visible = True
          end
          item
            Color = 14024703
            Expanded = False
            FieldName = 'PSI_DISPONIVEL'
            Title.Alignment = taCenter
            Title.Caption = 'Estoque que fica'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 95
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 975
        Height = 41
        Align = alTop
        Caption = 'Quantidade de Produtos/Mat'#233'ria-Prima dispon'#237'veis no estoque'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Panel5: TPanel
        Left = 0
        Top = 430
        Width = 975
        Height = 34
        Align = alBottom
        Alignment = taLeftJustify
        TabOrder = 2
        object Label1: TLabel
          Left = 645
          Top = 8
          Width = 182
          Height = 14
          BiDiMode = bdRightToLeftNoAlign
          Caption = 'Custo dos materiais disponiveis '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
        end
        object NumEditDisponivel: TCurrencyEdit
          Left = 833
          Top = 6
          Width = 123
          Height = 19
          TabStop = False
          AutoSize = False
          Color = clBtnFace
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Estoque '#224' Comprar'
      ImageIndex = 1
      object DBGridMatPrima: TDBGrid
        Left = 0
        Top = 41
        Width = 975
        Height = 382
        Hint = 'D'
        Align = alClient
        Color = 16776176
        DataSource = DsComprar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnDblClick = DBGridMatPrimaDblClick
        OnKeyPress = DBGridMatPrimaKeyPress
        OnTitleClick = DBGridMatPrimaTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 377
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Und'
            Title.Alignment = taCenter
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 29
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Tipo'
            Title.Alignment = taCenter
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Visible = True
          end
          item
            Color = 14024703
            Expanded = False
            FieldName = 'Consumo'
            Title.Alignment = taCenter
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EstFisico'
            Title.Alignment = taCenter
            Title.Caption = 'Est.Fisico'
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
            FieldName = 'EstCompra'
            Title.Alignment = taCenter
            Title.Caption = 'Est.+Compra'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EstReserva'
            Title.Alignment = taCenter
            Title.Caption = 'Est. Reserva'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PCusto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Pre'#231'o Custo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 75
            Visible = True
          end
          item
            Color = 14024703
            Expanded = False
            FieldName = 'Comprar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Estoque em Falta'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 94
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 975
        Height = 41
        Align = alTop
        Caption = 'Mat'#233'ria-Prima em faltas no estoque (COMPRAR)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Panel6: TPanel
        Left = 0
        Top = 423
        Width = 975
        Height = 41
        Align = alBottom
        TabOrder = 2
        object Label2: TLabel
          Left = 15
          Top = 9
          Width = 322
          Height = 14
          Alignment = taRightJustify
          BiDiMode = bdRightToLeftNoAlign
          Caption = 'Custo total de compras espec'#237'fico das qtdes da Simula'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
        end
        object Label4: TLabel
          Left = 512
          Top = 8
          Width = 322
          Height = 14
          Alignment = taRightJustify
          BiDiMode = bdRightToLeftNoAlign
          Caption = 'Custo total de compras do Estoque geral em falta/ajustado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
        end
        object NumEditSimulacao: TCurrencyEdit
          Left = 343
          Top = 6
          Width = 116
          Height = 19
          TabStop = False
          AutoSize = False
          Color = clBtnFace
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object NumEditAjustada: TCurrencyEdit
          Left = 839
          Top = 6
          Width = 116
          Height = 19
          TabStop = False
          AutoSize = False
          Color = clBtnFace
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #192' Produzir'
      ImageIndex = 2
      object DBGridProdutos: TDBGrid
        Left = 0
        Top = 41
        Width = 975
        Height = 382
        Align = alClient
        Color = 16776176
        DataSource = DsProduz
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnTitleClick = DBGridProdutosTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PRD_REFER_ITENS'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_DESCRI'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 376
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PSI_UND'
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'PSI_SIGLA'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Visible = True
          end
          item
            Color = 14024703
            Expanded = False
            FieldName = 'WCONSUMO'
            Title.Alignment = taCenter
            Title.Caption = 'Consumo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PSI_ESTFISICO'
            Title.Alignment = taCenter
            Title.Caption = 'Est.Fisico'
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
            FieldName = 'PSI_ESTANTEC'
            Title.Alignment = taCenter
            Title.Caption = 'Est.+Compra'
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
            FieldName = 'PSI_ESTRESERVA'
            Title.Alignment = taCenter
            Title.Caption = 'Est. Reserva'
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
            FieldName = 'PSI_CUSTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Pre'#231'o Custo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 75
            Visible = True
          end
          item
            Color = 14024703
            Expanded = False
            FieldName = 'PSI_FALTA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'QTDE Produzir'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 77
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 975
        Height = 41
        Align = alTop
        Caption = 'Solicita'#231#227'o de Produtos a serem produzidos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Panel7: TPanel
        Left = 0
        Top = 423
        Width = 975
        Height = 41
        Align = alBottom
        TabOrder = 2
        Visible = False
        object Label3: TLabel
          Left = 636
          Top = 11
          Width = 197
          Height = 14
          Alignment = taRightJustify
          BiDiMode = bdRightToLeftNoAlign
          Caption = 'Custo total dos produtos '#224' produzir'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          Visible = False
        end
        object NumEditProduzir: TCurrencyEdit
          Left = 840
          Top = 8
          Width = 116
          Height = 19
          TabStop = False
          AutoSize = False
          Color = clBtnFace
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Visible = False
        end
      end
    end
  end
  object ButRecalcular: TButton
    Left = 784
    Top = 170
    Width = 169
    Height = 25
    Hint = 'Quando houver altera'#231#227'o manual na qtde em falta'
    Caption = 'Recalcular em &Falta'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = ButRecalcularClick
  end
  object SqlCdsProdutos: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'R1.PSV_REGISTRO,'#13#10'R1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'R1.PSV_' +
      'MODE1,'#13#10'R1.PSV_QUANT1'#13#10'FROM PSV0000 R1 '#13#10'LEFT JOIN PRD0000 P1 ON' +
      ' (P1.PRD_REFER = R1.PRD_REFER)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'R1.PSV_REGISTRO,'#13#10'R1.PRD_REFER,'#13#10'P1.PRD_DESCRI,'#13#10'R1.PSV_' +
      'MODE1,'#13#10'R1.PSV_QUANT1'#13#10'FROM PSV0000 R1 '#13#10'LEFT JOIN PRD0000 P1 ON' +
      ' (P1.PRD_REFER = R1.PRD_REFER)'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 200
    Top = 64
    object SqlCdsProdutosPSV_REGISTRO: TIntegerField
      FieldName = 'PSV_REGISTRO'
      Required = True
    end
    object SqlCdsProdutosPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsProdutosPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsProdutosPSV_MODE1: TStringField
      FieldName = 'PSV_MODE1'
      Size = 12
    end
    object SqlCdsProdutosPSV_QUANT1: TFMTBCDField
      FieldName = 'PSV_QUANT1'
      DisplayFormat = '#,#0.000'
      EditFormat = '#,#0.000'
      Precision = 15
    end
  end
  object DsProdutos: TDataSource
    DataSet = SqlCdsProdutos
    Left = 280
    Top = 48
  end
  object SqlCdsDisponivel: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'X1.PRD_REFER_ITENS,'#13#10'X1.PSI_REQ_COMPRA,'#13#10'P1.PRD_DESCRI,'#13 +
      #10'X1.PSI_UND,'#13#10'X1.PSI_SIGLA,'#13#10'X1.PSI_PAI,'#13#10'X1.PSI_ESTFISICO,'#13#10'X1.' +
      'PSI_ESTANTEC,'#13#10'X1.PSI_ESTRESERVA,'#13#10'X1.PSI_DISPONIVEL,'#13#10'X1.PSI_FA' +
      'LTA,'#13#10'X1.PSI_CUSTO,'#13#10'SUM(X1.PSI_CONSUMO) AS WCONSUMO'#13#10'FROM PSV_I' +
      'T01 X1'#13#10'LEFT JOIN PRD0000 P1 ON (X1.PRD_REFER_ITENS = P1.PRD_REF' +
      'ER)'#13#10'WHERE (X1.PSI_FALTA >0) AND'#13#10'      ((X1.PSI_SIGLA <> '#39'PA'#39') ' +
      'AND (X1.PSI_SIGLA <> '#39'PI'#39'))'#13#10'GROUP BY'#13#10'X1.PRD_REFER_ITENS,'#13#10'X1.P' +
      'SI_REQ_COMPRA,'#13#10'P1.PRD_DESCRI,'#13#10'X1.PSI_UND,'#13#10'X1.PSI_SIGLA,'#13#10'X1.P' +
      'SI_PAI,'#13#10'X1.PSI_ESTFISICO,'#13#10'X1.PSI_ESTANTEC,'#13#10'X1.PSI_ESTRESERVA,' +
      #13#10'X1.PSI_DISPONIVEL,'#13#10'X1.PSI_FALTA,X1.PSI_CUSTO'#13#10'ORDER BY'#13#10'P1.PR' +
      'D_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'X1.PRD_REFER_ITENS,'#13#10'X1.PSI_REQ_COMPRA,'#13#10'P1.PRD_DESCRI,'#13 +
      #10'X1.PSI_UND,'#13#10'X1.PSI_SIGLA,'#13#10'X1.PSI_PAI,'#13#10'X1.PSI_ESTFISICO,'#13#10'X1.' +
      'PSI_ESTANTEC,'#13#10'X1.PSI_ESTRESERVA,'#13#10'X1.PSI_DISPONIVEL,'#13#10'X1.PSI_FA' +
      'LTA,'#13#10'X1.PSI_CUSTO,'#13#10'SUM(X1.PSI_CONSUMO) AS WCONSUMO'#13#10'FROM PSV_I' +
      'T01 X1'#13#10'LEFT JOIN PRD0000 P1 ON (X1.PRD_REFER_ITENS = P1.PRD_REF' +
      'ER)'#13#10'WHERE (X1.PSI_FALTA >0) AND'#13#10'      ((X1.PSI_SIGLA <> '#39'PA'#39') ' +
      'AND (X1.PSI_SIGLA <> '#39'PI'#39'))'#13#10'GROUP BY'#13#10'X1.PRD_REFER_ITENS,'#13#10'X1.P' +
      'SI_REQ_COMPRA,'#13#10'P1.PRD_DESCRI,'#13#10'X1.PSI_UND,'#13#10'X1.PSI_SIGLA,'#13#10'X1.P' +
      'SI_PAI,'#13#10'X1.PSI_ESTFISICO,'#13#10'X1.PSI_ESTANTEC,'#13#10'X1.PSI_ESTRESERVA,' +
      #13#10'X1.PSI_DISPONIVEL,'#13#10'X1.PSI_FALTA,X1.PSI_CUSTO'#13#10'ORDER BY'#13#10'P1.PR' +
      'D_DESCRI'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 208
    Top = 200
    object SqlCdsDisponivelPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsDisponivelPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsDisponivelPSI_UND: TStringField
      FieldName = 'PSI_UND'
      Size = 3
    end
    object SqlCdsDisponivelPSI_SIGLA: TStringField
      FieldName = 'PSI_SIGLA'
      Size = 2
    end
    object SqlCdsDisponivelPSI_PAI: TStringField
      FieldName = 'PSI_PAI'
      Size = 1
    end
    object SqlCdsDisponivelPSI_ESTFISICO: TFMTBCDField
      FieldName = 'PSI_ESTFISICO'
      DisplayFormat = '#,#0.000'
      EditFormat = '#,#0.000'
      Precision = 15
    end
    object SqlCdsDisponivelPSI_ESTANTEC: TFMTBCDField
      FieldName = 'PSI_ESTANTEC'
      DisplayFormat = '#,#0.000'
      EditFormat = '#,#0.000'
      Precision = 15
    end
    object SqlCdsDisponivelPSI_ESTRESERVA: TFMTBCDField
      FieldName = 'PSI_ESTRESERVA'
      DisplayFormat = '#,#0.000'
      EditFormat = '#,#0.000'
      Precision = 15
    end
    object SqlCdsDisponivelPSI_CUSTO: TFMTBCDField
      FieldName = 'PSI_CUSTO'
      DisplayFormat = '#,#0.00'
      EditFormat = '#,#0.000'
      Precision = 15
    end
    object SqlCdsDisponivelWCONSUMO: TFMTBCDField
      FieldName = 'WCONSUMO'
      DisplayFormat = '#,#0.000'
      EditFormat = '#,#0.000'
      Precision = 15
    end
    object SqlCdsDisponivelPSI_CUSTO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PSI_CUSTO_CC'
      DisplayFormat = '#,#0.00'
      EditFormat = '#,#0.000'
      Calculated = True
    end
    object SqlCdsDisponivelPSI_DISPONIVEL: TFMTBCDField
      FieldName = 'PSI_DISPONIVEL'
      DisplayFormat = '#,#0.000'
      EditFormat = '#,#0.000'
      Precision = 15
    end
    object SqlCdsDisponivelPSI_FALTA: TFMTBCDField
      FieldName = 'PSI_FALTA'
      Precision = 15
    end
    object SqlCdsDisponivelPSI_REQ_COMPRA: TStringField
      FieldName = 'PSI_REQ_COMPRA'
      Size = 1
    end
  end
  object DsDisponivel: TDataSource
    DataSet = SqlCdsDisponivel
    Left = 280
    Top = 208
  end
  object SQLCdsComprar: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'X1.PRD_REFER_ITENS,'#13#10'X1.PSI_REQ_COMPRA,'#13#10'P1.PRD_DESCRI,'#13 +
      #10'X1.PSI_UND,'#13#10'X1.PSI_SIGLA,'#13#10'X1.PSI_PAI,'#13#10'X1.PSI_ESTFISICO,'#13#10'X1.' +
      'PSI_ESTANTEC,'#13#10'X1.PSI_ESTRESERVA,'#13#10'X1.PSI_DISPONIVEL,'#13#10'X1.PSI_FA' +
      'LTA,'#13#10'X1.PSI_CUSTO,'#13#10'SUM(X1.PSI_CONSUMO) AS WCONSUMO'#13#10'FROM PSV_I' +
      'T01 X1'#13#10'LEFT JOIN PRD0000 P1 ON (X1.PRD_REFER_ITENS = P1.PRD_REF' +
      'ER)'#13#10'WHERE (X1.PSI_FALTA >0) AND'#13#10'      ((X1.PSI_SIGLA <> '#39'PA'#39') ' +
      'AND (X1.PSI_SIGLA <> '#39'PI'#39'))'#13#10'GROUP BY'#13#10'X1.PRD_REFER_ITENS,'#13#10'X1.P' +
      'SI_REQ_COMPRA,'#13#10'P1.PRD_DESCRI,'#13#10'X1.PSI_UND,'#13#10'X1.PSI_SIGLA,'#13#10'X1.P' +
      'SI_PAI,'#13#10'X1.PSI_ESTFISICO,'#13#10'X1.PSI_ESTANTEC,'#13#10'X1.PSI_ESTRESERVA,' +
      #13#10'X1.PSI_DISPONIVEL,'#13#10'X1.PSI_FALTA,X1.PSI_CUSTO'#13#10'ORDER BY'#13#10'P1.PR' +
      'D_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'X1.PRD_REFER_ITENS,'#13#10'X1.PSI_REQ_COMPRA,'#13#10'P1.PRD_DESCRI,'#13 +
      #10'X1.PSI_UND,'#13#10'X1.PSI_SIGLA,'#13#10'X1.PSI_PAI,'#13#10'X1.PSI_ESTFISICO,'#13#10'X1.' +
      'PSI_ESTANTEC,'#13#10'X1.PSI_ESTRESERVA,'#13#10'X1.PSI_DISPONIVEL,'#13#10'X1.PSI_FA' +
      'LTA,'#13#10'X1.PSI_CUSTO,'#13#10'SUM(X1.PSI_CONSUMO) AS WCONSUMO'#13#10'FROM PSV_I' +
      'T01 X1'#13#10'LEFT JOIN PRD0000 P1 ON (X1.PRD_REFER_ITENS = P1.PRD_REF' +
      'ER)'#13#10'WHERE (X1.PSI_FALTA >0) AND'#13#10'      ((X1.PSI_SIGLA <> '#39'PA'#39') ' +
      'AND (X1.PSI_SIGLA <> '#39'PI'#39'))'#13#10'GROUP BY'#13#10'X1.PRD_REFER_ITENS,'#13#10'X1.P' +
      'SI_REQ_COMPRA,'#13#10'P1.PRD_DESCRI,'#13#10'X1.PSI_UND,'#13#10'X1.PSI_SIGLA,'#13#10'X1.P' +
      'SI_PAI,'#13#10'X1.PSI_ESTFISICO,'#13#10'X1.PSI_ESTANTEC,'#13#10'X1.PSI_ESTRESERVA,' +
      #13#10'X1.PSI_DISPONIVEL,'#13#10'X1.PSI_FALTA,X1.PSI_CUSTO'#13#10'ORDER BY'#13#10'P1.PR' +
      'D_DESCRI'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 867
    Top = 104
    object SQLCdsComprarPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SQLCdsComprarPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SQLCdsComprarPSI_UND: TStringField
      FieldName = 'PSI_UND'
      Size = 3
    end
    object SQLCdsComprarPSI_SIGLA: TStringField
      FieldName = 'PSI_SIGLA'
      Size = 2
    end
    object SQLCdsComprarPSI_PAI: TStringField
      FieldName = 'PSI_PAI'
      Size = 1
    end
    object SQLCdsComprarPSI_ESTFISICO: TFMTBCDField
      FieldName = 'PSI_ESTFISICO'
      Precision = 15
    end
    object SQLCdsComprarPSI_ESTANTEC: TFMTBCDField
      FieldName = 'PSI_ESTANTEC'
      Precision = 15
    end
    object SQLCdsComprarPSI_ESTRESERVA: TFMTBCDField
      FieldName = 'PSI_ESTRESERVA'
      Precision = 15
    end
    object SQLCdsComprarPSI_CUSTO: TFMTBCDField
      FieldName = 'PSI_CUSTO'
      DisplayFormat = '#,#0.00'
      EditFormat = '#,#0.00'
      Precision = 15
    end
    object SQLCdsComprarPSI_FALTA_DT: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PSI_FALTA_DT'
      DisplayFormat = '#,#0.000'
      Calculated = True
    end
    object SQLCdsComprarPSI_FALTA_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PSI_FALTA_CC'
      DisplayFormat = '#,#0.000'
      Calculated = True
    end
    object SQLCdsComprarPSI_CUSTO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PSI_CUSTO_CC'
      DisplayFormat = '#,#0.00'
      EditFormat = '#,#0.00'
      Calculated = True
    end
    object SQLCdsComprarWCONSUMO: TFMTBCDField
      FieldName = 'WCONSUMO'
      DisplayFormat = '#,#0.000'
      Precision = 15
    end
    object SQLCdsComprarPSI_REQ_COMPRA: TStringField
      FieldName = 'PSI_REQ_COMPRA'
      Size = 1
    end
    object SQLCdsComprarPSI_DISPONIVEL: TFMTBCDField
      FieldName = 'PSI_DISPONIVEL'
      Precision = 15
    end
    object SQLCdsComprarPSI_FALTA: TFMTBCDField
      FieldName = 'PSI_FALTA'
      Precision = 15
    end
  end
  object DsComprar: TDataSource
    DataSet = CdsComprar
    Left = 941
    Top = 105
  end
  object SqlCdsProduz: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'SELECT'#13#10'X1.PRD_REFER_ITENS,'#13#10'X1.PSI_REQ_COMPRA,'#13#10'P1.PRD_DESCRI,'#13 +
      #10'X1.PSI_UND,'#13#10'X1.PSI_SIGLA,'#13#10'X1.PSI_PAI,'#13#10'X1.PSI_ESTFISICO,'#13#10'X1.' +
      'PSI_ESTANTEC,'#13#10'X1.PSI_ESTRESERVA,'#13#10'X1.PSI_DISPONIVEL,'#13#10'X1.PSI_FA' +
      'LTA,'#13#10'X1.PSI_CUSTO,'#13#10'SUM(X1.PSI_CONSUMO) AS WCONSUMO'#13#10'FROM PSV_I' +
      'T01 X1'#13#10'LEFT JOIN PRD0000 P1 ON (X1.PRD_REFER_ITENS = P1.PRD_REF' +
      'ER)'#13#10'WHERE (X1.PSI_FALTA >0) AND'#13#10'      ((X1.PSI_SIGLA <> '#39'PA'#39') ' +
      'AND (X1.PSI_SIGLA <> '#39'PI'#39'))'#13#10'GROUP BY'#13#10'X1.PRD_REFER_ITENS,'#13#10'X1.P' +
      'SI_REQ_COMPRA,'#13#10'P1.PRD_DESCRI,'#13#10'X1.PSI_UND,'#13#10'X1.PSI_SIGLA,'#13#10'X1.P' +
      'SI_PAI,'#13#10'X1.PSI_ESTFISICO,'#13#10'X1.PSI_ESTANTEC,'#13#10'X1.PSI_ESTRESERVA,' +
      #13#10'X1.PSI_DISPONIVEL,'#13#10'X1.PSI_FALTA,X1.PSI_CUSTO'#13#10'ORDER BY'#13#10'P1.PR' +
      'D_DESCRI'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'X1.PRD_REFER_ITENS,'#13#10'X1.PSI_REQ_COMPRA,'#13#10'P1.PRD_DESCRI,'#13 +
      #10'X1.PSI_UND,'#13#10'X1.PSI_SIGLA,'#13#10'X1.PSI_PAI,'#13#10'X1.PSI_ESTFISICO,'#13#10'X1.' +
      'PSI_ESTANTEC,'#13#10'X1.PSI_ESTRESERVA,'#13#10'X1.PSI_DISPONIVEL,'#13#10'X1.PSI_FA' +
      'LTA,'#13#10'X1.PSI_CUSTO,'#13#10'SUM(X1.PSI_CONSUMO) AS WCONSUMO'#13#10'FROM PSV_I' +
      'T01 X1'#13#10'LEFT JOIN PRD0000 P1 ON (X1.PRD_REFER_ITENS = P1.PRD_REF' +
      'ER)'#13#10'WHERE (X1.PSI_FALTA >0) AND'#13#10'      ((X1.PSI_SIGLA <> '#39'PA'#39') ' +
      'AND (X1.PSI_SIGLA <> '#39'PI'#39'))'#13#10'GROUP BY'#13#10'X1.PRD_REFER_ITENS,'#13#10'X1.P' +
      'SI_REQ_COMPRA,'#13#10'P1.PRD_DESCRI,'#13#10'X1.PSI_UND,'#13#10'X1.PSI_SIGLA,'#13#10'X1.P' +
      'SI_PAI,'#13#10'X1.PSI_ESTFISICO,'#13#10'X1.PSI_ESTANTEC,'#13#10'X1.PSI_ESTRESERVA,' +
      #13#10'X1.PSI_DISPONIVEL,'#13#10'X1.PSI_FALTA,X1.PSI_CUSTO'#13#10'ORDER BY'#13#10'P1.PR' +
      'D_DESCRI'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 192
    Top = 528
    object SqlCdsProduzPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsProduzPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
    object SqlCdsProduzPSI_UND: TStringField
      FieldName = 'PSI_UND'
      Size = 3
    end
    object SqlCdsProduzPSI_SIGLA: TStringField
      FieldName = 'PSI_SIGLA'
      Size = 2
    end
    object SqlCdsProduzPSI_PAI: TStringField
      FieldName = 'PSI_PAI'
      Size = 1
    end
    object SqlCdsProduzPSI_ESTFISICO: TFMTBCDField
      FieldName = 'PSI_ESTFISICO'
      DisplayFormat = '#,#0.000'
      EditFormat = '#,#0.000'
      Precision = 15
    end
    object SqlCdsProduzPSI_ESTANTEC: TFMTBCDField
      FieldName = 'PSI_ESTANTEC'
      DisplayFormat = '#,#0.000'
      EditFormat = '#,#0.000'
      Precision = 15
    end
    object SqlCdsProduzPSI_ESTRESERVA: TFMTBCDField
      FieldName = 'PSI_ESTRESERVA'
      DisplayFormat = '#,#0.000'
      EditFormat = '#,#0.000'
      Precision = 15
    end
    object SqlCdsProduzPSI_CUSTO: TFMTBCDField
      FieldName = 'PSI_CUSTO'
      DisplayFormat = '#,#0.00'
      EditFormat = '#,#0.00'
      Precision = 15
    end
    object SqlCdsProduzWCONSUMO: TFMTBCDField
      FieldName = 'WCONSUMO'
      DisplayFormat = '#,#0.000'
      EditFormat = '#,#0.000'
      Precision = 15
    end
    object SqlCdsProduzPSI_CUSTO_CC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PSI_CUSTO_CC'
      DisplayFormat = '#,#0.00'
      EditFormat = '#,#0.00'
      Calculated = True
    end
    object SqlCdsProduzPSI_DISPONIVEL: TFMTBCDField
      FieldName = 'PSI_DISPONIVEL'
      DisplayFormat = '#,#0.000'
      EditFormat = '#,#0.000'
      Precision = 15
    end
    object SqlCdsProduzPSI_FALTA: TFMTBCDField
      FieldName = 'PSI_FALTA'
      DisplayFormat = '#,#0.000'
      EditFormat = '#,#0.000'
      Precision = 15
    end
    object SqlCdsProduzPSI_REQ_COMPRA: TStringField
      FieldName = 'PSI_REQ_COMPRA'
      Size = 1
    end
  end
  object DsProduz: TDataSource
    DataSet = SqlCdsProduz
    Left = 240
    Top = 536
  end
  object CdsComprar: TClientDataSet
    PersistDataPacket.Data = {
      850100009619E0BD01000000180000000B00000000000300000085010A526566
      6572656E6369610100490000000100055749445448020002000B000944657363
      726963616F0100490000000100055749445448020002003C0003556E64010049
      0000000100055749445448020002000300045469706F01004900000001000557
      4944544802000200020007436F6E73756D6F0800040000000100075355425459
      50450200490006004D6F6E6579000945737446697369636F0800040000000100
      07535542545950450200490006004D6F6E65790009457374436F6D7072610800
      04000000010007535542545950450200490006004D6F6E6579000A4573745265
      7365727661080004000000010007535542545950450200490006004D6F6E6579
      000650437573746F080004000000010007535542545950450200490006004D6F
      6E65790007436F6D707261720800040000000100075355425459504502004900
      06004D6F6E6579000A5265715F436F6D70726101004900000001000557494454
      480200020001000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Und'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Tipo'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Consumo'
        DataType = ftCurrency
      end
      item
        Name = 'EstFisico'
        DataType = ftCurrency
      end
      item
        Name = 'EstCompra'
        DataType = ftCurrency
      end
      item
        Name = 'EstReserva'
        DataType = ftCurrency
      end
      item
        Name = 'PCusto'
        DataType = ftCurrency
      end
      item
        Name = 'Comprar'
        DataType = ftCurrency
      end
      item
        Name = 'Req_Compra'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 808
    Top = 112
    object CdsComprarReferencia: TStringField
      FieldName = 'Referencia'
      Size = 11
    end
    object CdsComprarDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object CdsComprarUnd: TStringField
      FieldName = 'Und'
      Size = 3
    end
    object CdsComprarTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
    object CdsComprarConsumo: TCurrencyField
      FieldName = 'Consumo'
      DisplayFormat = '#,#0.000'
      EditFormat = '#,#0.000'
      currency = False
    end
    object CdsComprarEstFisico: TCurrencyField
      FieldName = 'EstFisico'
      DisplayFormat = '#,#0.000'
      EditFormat = '#,#0.000'
      currency = False
    end
    object CdsComprarEstCompra: TCurrencyField
      FieldName = 'EstCompra'
      DisplayFormat = '#,#0.000'
      EditFormat = '#,#0.000'
      currency = False
    end
    object CdsComprarEstReserva: TCurrencyField
      FieldName = 'EstReserva'
      DisplayFormat = '#,#0.000'
      EditFormat = '#,#0.000'
      currency = False
    end
    object CdsComprarPCusto: TCurrencyField
      FieldName = 'PCusto'
      DisplayFormat = '#,#0.000'
      EditFormat = '#,#0.000'
      currency = False
    end
    object CdsComprarComprar: TCurrencyField
      FieldName = 'Comprar'
      DisplayFormat = '#,#0.000'
      EditFormat = '#,#0.000'
      currency = False
    end
    object CdsComprarReq_Compra: TStringField
      FieldName = 'Req_Compra'
      Size = 1
    end
  end
end
