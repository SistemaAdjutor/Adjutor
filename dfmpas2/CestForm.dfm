inherited frmCEST: TfrmCEST
  Left = 266
  Top = 169
  BorderIcons = [biSystemMenu]
  Caption = 'frmCEST'
  ClientWidth = 781
  FormStyle = fsMDIChild
  Visible = True
  ExplicitWidth = 797
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 781
    ExplicitWidth = 781
    inherited btnFechar: TSpeedButton
      Left = 717
      ExplicitLeft = 717
    end
    inherited btnImprime: TSpeedButton
      Left = 560
      OnClick = btnImprimeClick
      ExplicitLeft = 560
    end
    inherited btnExtra: TSpeedButton
      Left = 360
      Width = 88
      Caption = '&Atribuir CEST'
      Enabled = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337FF3333333333330003333333333333777F333333333333080333
        3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
        33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
        B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
        BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
        B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
        3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
        333333333337F33333333333333B333333333333333733333333}
      NumGlyphs = 2
      Visible = True
      OnClick = btnExtraClick
      ExplicitLeft = 360
      ExplicitWidth = 88
    end
    inherited btnExcel: TSpeedButton
      Left = 639
      ExplicitLeft = 639
    end
  end
  inherited PageControl1: TPageControl
    Width = 781
    ExplicitWidth = 781
    inherited tsNotas: TTabSheet
      ExplicitWidth = 773
      inherited pnControle: TPanel
        Width = 773
        Height = 69
        ExplicitWidth = 773
        ExplicitHeight = 69
        inherited pnFiltro: TPanel
          Width = 730
          ExplicitWidth = 730
          inherited pn1: TPanel
            Width = 730
            ExplicitWidth = 730
            inherited btnPesquisa: TSpeedButton
              Left = 634
              Top = 10
              ExplicitLeft = 634
              ExplicitTop = 10
            end
            inherited btnLimpar: TSpeedButton
              Left = 634
              Top = 34
              ExplicitLeft = 634
              ExplicitTop = 34
            end
            object lbl1: TLabel
              Left = 515
              Top = 10
              Width = 63
              Height = 13
              Caption = 'Ordenar por:'
            end
            object cbb1: TComboBox
              Left = 515
              Top = 22
              Width = 95
              Height = 21
              ItemIndex = 0
              TabOrder = 0
              Text = 'CEST'
              Items.Strings = (
                'CEST'
                'NCM'
                'Descri'#231#227'o')
            end
            object lbledt1: TLabeledEdit
              Left = 16
              Top = 22
              Width = 65
              Height = 21
              EditLabel.Width = 52
              EditLabel.Height = 13
              EditLabel.Caption = 'C'#243'd.CEST:'
              LabelSpacing = 0
              TabOrder = 1
            end
            object lbledt2: TLabeledEdit
              Left = 84
              Top = 22
              Width = 72
              Height = 21
              EditLabel.Width = 49
              EditLabel.Height = 13
              EditLabel.Caption = 'C'#243'd.NCM:'
              LabelSpacing = 0
              TabOrder = 2
            end
            object lbledt3: TLabeledEdit
              Left = 160
              Top = 22
              Width = 353
              Height = 21
              EditLabel.Width = 104
              EditLabel.Height = 13
              EditLabel.Caption = 'Descri'#231#227'o NCM ou ID:'
              LabelSpacing = 0
              TabOrder = 3
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Top = 69
        Width = 773
        Height = 281
        Columns = <
          item
            Expanded = False
            FieldName = 'CEST_ID'
            Title.Caption = '#ID'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEST_COD'
            Title.Caption = 'C'#243'digo CEST'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEST_NCM'
            Title.Caption = 'C'#243'digo NCM'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEST_DESCRICAO'
            Title.Caption = 'Descri'#231#227'o NCM:'
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Width = 781
    ExplicitWidth = 781
    inherited btnSelect: TSpeedButton
      Left = 633
      ExplicitLeft = 633
    end
  end
  inherited qBusco: TSQLQuery
    SQL.Strings = (
      'select * from CEST0000 where cest_id=0')
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoCEST_ID: TIntegerField
      FieldName = 'CEST_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBuscoCEST_COD: TStringField
      FieldName = 'CEST_COD'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object cdsBuscoCEST_NCM: TStringField
      FieldName = 'CEST_NCM'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cdsBuscoCEST_DESCRICAO: TStringField
      FieldName = 'CEST_DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 512
    end
  end
  object mnuListar: TPopupMenu
    Left = 548
    Top = 241
    object Listagem1: TMenuItem
      Caption = '&1 - Listagem'
      OnClick = Listagem1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ProdutossemCEST1: TMenuItem
      Caption = '&2 - Produtos com CEST REVISADOS'
      OnClick = ProdutossemCEST1Click
    end
    object ProdutoscomCEST1: TMenuItem
      Caption = '&3 - Produtos com CEST REVISAR'
      OnClick = ProdutoscomCEST1Click
    end
  end
  object SqlPrdCest: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      'PRD_CODIGO, IPI_CODIGO, '
      'PRD_REFER,'
      'PRD_DESCRI,'
      'CEST_COD'
      'from prd0000'
      'where PRD_STATUS='#39'U'#39' and emp_codigo='#39'001'#39' ')
    SQLConnection = DBConn
    Left = 284
    Top = 257
    object SqlPrdCestPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 5
    end
    object SqlPrdCestPRD_REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRD_REFER'
    end
    object SqlPrdCestIPI_CODIGO: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object SqlPrdCestPRD_DESCRI: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 65
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object SqlPrdCestCEST_COD: TStringField
      DisplayLabel = 'C'#243'd.CEST'
      FieldName = 'CEST_COD'
      FixedChar = True
      Size = 7
    end
  end
end
