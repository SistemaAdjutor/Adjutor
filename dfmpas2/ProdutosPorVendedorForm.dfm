inherited FrmProdutosPorVendedor: TFrmProdutosPorVendedor
  Left = 199
  Top = 81
  BorderIcons = [biSystemMenu]
  Caption = 'FrmProdutosPorVendedor'
  ClientWidth = 1195
  FormStyle = fsMDIChild
  Position = poDesktopCenter
  Visible = True
  ExplicitWidth = 1211
  ExplicitHeight = 493
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 1195
    ExplicitWidth = 1195
    DesignSize = (
      1195
      41)
    inherited btnExclui: TSpeedButton
      Enabled = False
      Visible = False
    end
    inherited btnNovo: TSpeedButton
      Enabled = False
      Visible = False
    end
    inherited btnConsulta: TSpeedButton
      Enabled = False
    end
    inherited btnEdita: TSpeedButton
      Enabled = False
      Visible = False
    end
    inherited btnFechar: TSpeedButton
      Left = 1131
      ExplicitLeft = 1131
    end
    inherited btnImprime: TSpeedButton
      Left = 976
      ExplicitLeft = 976
    end
    inherited btnExcel: TSpeedButton
      Left = 1053
      ExplicitLeft = 1053
    end
  end
  inherited PageControl1: TPageControl
    Width = 1195
    ExplicitWidth = 1195
    inherited tsNotas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1187
      inherited pnControle: TPanel
        Width = 1187
        ExplicitWidth = 1187
        inherited pnFiltro: TPanel
          Width = 769
          ExplicitWidth = 769
          inherited pn1: TPanel
            Width = 769
            ExplicitWidth = 769
            inherited btnPesquisa: TSpeedButton
              Left = 568
              ExplicitLeft = 568
            end
            inherited btnLimpar: TSpeedButton
              Left = 568
              ExplicitLeft = 568
            end
            object Label2: TLabel
              Left = 260
              Top = 10
              Width = 57
              Height = 13
              Caption = 'Data Inicial:'
            end
            object Label3: TLabel
              Left = 353
              Top = 10
              Width = 52
              Height = 13
              Caption = 'Data Final:'
            end
            object lbledt1: TLabeledEdit
              Left = 8
              Top = 22
              Width = 241
              Height = 21
              CharCase = ecUpperCase
              EditLabel.Width = 139
              EditLabel.Height = 13
              EditLabel.Caption = 'Vendedor (C'#243'digo ou Nome):'
              LabelSpacing = 0
              TabOrder = 0
            end
            object LabeledEdit1: TLabeledEdit
              Left = 444
              Top = 22
              Width = 93
              Height = 21
              EditLabel.Width = 93
              EditLabel.Height = 13
              EditLabel.Caption = 'Qtd.Mais Vendidos:'
              LabelSpacing = 0
              TabOrder = 3
            end
            object DateEdit1: TJvDateEdit
              Left = 258
              Top = 22
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
              PopupColor = clBtnFace
              ShowNullDate = False
              TabOrder = 1
            end
            object DateEdit2: TJvDateEdit
              Left = 351
              Top = 22
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
              PopupColor = clBtnFace
              ShowNullDate = False
              TabOrder = 2
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Width = 1187
        Columns = <
          item
            Expanded = False
            FieldName = 'REP_CODIGO'
            Title.Caption = 'C'#243'd.Vendedor'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rep_nome'
            Title.Caption = 'Nome do Vendedor'
            Width = 231
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_REFER'
            Title.Caption = 'Ref.Item'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_DESCRI'
            Title.Caption = 'Descri'#231#227'o do Item'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_UND'
            Title.Caption = 'Unidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE'
            Title.Alignment = taRightJustify
            Title.Caption = 'P'#231's.Vendidas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDEFAT'
            Title.Alignment = taRightJustify
            Title.Caption = 'P'#231's.Faturadas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDAS'
            Title.Alignment = taRightJustify
            Title.Caption = 'Qtd.Pedidos'
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1195
    ExplicitWidth = 1195
    DesignSize = (
      1195
      36)
    inherited btnSelect: TSpeedButton
      Left = 1056
      ExplicitLeft = 1056
    end
  end
  inherited cdsBusco: TClientDataSet
    FieldDefs = <
      item
        Name = 'REP_CODIGO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PRD_REFER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'QTDE'
        DataType = ftFMTBcd
        Precision = 15
        Size = 5
      end
      item
        Name = 'QTDEFAT'
        DataType = ftFMTBcd
        Precision = 15
        Size = 5
      end
      item
        Name = 'VENDAS'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PRD_DESCRI'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PRD_UND'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'cdsBuscoIndex2'
        DescFields = 'Qtde'
        Fields = 'REP_CODIGO;Qtde'
        Options = [ixDescending]
      end>
    IndexName = 'cdsBuscoIndex2'
    StoreDefs = True
    object cdsBuscoREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object cdsBuscoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
    end
    object cdsBuscoQTDE: TFMTBCDField
      Tag = 1
      FieldName = 'QTDE'
      OnGetText = cdsBuscoQTDEGetText
      DisplayFormat = '###,##0.00'
      Precision = 15
      Size = 5
    end
    object cdsBuscoQTDEFAT: TFMTBCDField
      Tag = 1
      FieldName = 'QTDEFAT'
      OnGetText = cdsBuscoQTDEGetText
      DisplayFormat = '###,##0.00'
      Precision = 15
      Size = 5
    end
    object cdsBuscoVENDAS: TIntegerField
      Tag = 1
      FieldName = 'VENDAS'
      Required = True
      DisplayFormat = '###,##0'
    end
    object cdsBuscoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object cdsBuscoPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object cdsBuscorep_nome: TStringField
      FieldName = 'rep_nome'
      Size = 35
    end
  end
end
