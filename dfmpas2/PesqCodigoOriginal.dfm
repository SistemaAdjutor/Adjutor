inherited frmPesqCodOriginal: TfrmPesqCodOriginal
  Caption = 'C'#243'digo originais'
  ClientWidth = 432
  ExplicitWidth = 448
  ExplicitHeight = 493
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 432
    ExplicitWidth = 399
    inherited btnExclui: TSpeedButton
      Left = 39
      Top = -4
      Width = 86
      Anchors = [akTop, akRight]
      Visible = False
      ExplicitLeft = 6
      ExplicitTop = -4
      ExplicitWidth = 86
    end
    inherited btnNovo: TSpeedButton
      Enabled = False
      Visible = False
    end
    inherited btnConsulta: TSpeedButton
      Left = -3
      Top = -4
      ExplicitLeft = -3
      ExplicitTop = -4
    end
    inherited btnEdita: TSpeedButton
      Left = 4
      Top = -4
      Enabled = False
      Visible = False
      ExplicitLeft = 4
      ExplicitTop = -4
    end
    inherited btnFechar: TSpeedButton
      Left = 367
      Top = 2
      ExplicitLeft = 610
      ExplicitTop = 2
    end
    inherited btnImprime: TSpeedButton
      Left = 210
      Top = 2
      ExplicitLeft = 453
      ExplicitTop = 2
    end
    inherited btnExtra: TSpeedButton
      Left = 4
      Top = -4
      ExplicitLeft = 4
      ExplicitTop = -4
    end
    inherited btnExcel: TSpeedButton
      Left = 289
      Top = 2
      ExplicitLeft = 532
      ExplicitTop = 2
    end
  end
  inherited PageControl1: TPageControl
    Width = 432
    ExplicitWidth = 399
    inherited tsNotas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 391
      inherited pnControle: TPanel
        Width = 424
        ExplicitWidth = 391
        inherited pnFiltro: TPanel
          inherited pn1: TPanel
            inherited btnPesquisa: TSpeedButton
              Visible = False
            end
            inherited btnLimpar: TSpeedButton
              Visible = False
            end
            object sbNovo: TSpeedButton
              Tag = 1
              Left = 331
              Top = 30
              Width = 28
              Height = 21
              Hint = 'Inserir Novo'
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
            object btExcluir: TSpeedButton
              Tag = 4
              Left = 362
              Top = 30
              Width = 26
              Height = 21
              Hint = 'Excluir'
              Anchors = [akTop, akRight]
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
              OnClick = btExcluirClick
            end
            object LabeledEdit1: TLabeledEdit
              Left = 16
              Top = 30
              Width = 313
              Height = 21
              EditLabel.Width = 87
              EditLabel.Height = 13
              EditLabel.Caption = 'C'#243'digo/Descri'#231#227'o:'
              LabelSpacing = 0
              TabOrder = 0
              OnKeyPress = LabeledEdit1KeyPress
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Width = 424
        Columns = <
          item
            Expanded = False
            FieldName = 'PRDCO_CODIGO_ORIGINAL'
            Title.Caption = 'C'#243'digo oirginal / n'#250'mero s'#233'rie'
            Width = 398
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Width = 432
    ExplicitWidth = 399
    inherited btnSelect: TSpeedButton
      Left = 284
      ExplicitLeft = 251
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 264
    Top = 288
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = False
  end
  inherited qAux: TSQLQuery
    Left = 146
    Top = 333
  end
  inherited qAux2: TSQLQuery
    Left = 186
    Top = 332
  end
  inherited qAux3: TSQLQuery
    Left = 226
    Top = 332
  end
  inherited qBusco: TSQLQuery
    object qBuscoPRDCO_REGISTRO: TIntegerField
      FieldName = 'PRDCO_REGISTRO'
    end
    object qBuscoPRDCO_CODIGO_ORIGINAL: TStringField
      FieldName = 'PRDCO_CODIGO_ORIGINAL'
      Size = 60
    end
    object qBuscoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 6
    end
    object qBuscoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object qBuscoPRDCO_DESCRICAO: TStringField
      FieldName = 'PRDCO_DESCRICAO'
      Size = 60
    end
    object qBuscoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
  end
  inherited dspBusco: TDataSetProvider
    Left = 268
    Top = 209
  end
  inherited cdsBusco: TClientDataSet
    Left = 308
    object cdsBuscoPRDCO_REGISTRO: TIntegerField
      FieldName = 'PRDCO_REGISTRO'
    end
    object cdsBuscoPRDCO_CODIGO_ORIGINAL: TStringField
      FieldName = 'PRDCO_CODIGO_ORIGINAL'
      Size = 60
    end
    object cdsBuscoPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Size = 6
    end
    object cdsBuscoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object cdsBuscoPRDCO_DESCRICAO: TStringField
      FieldName = 'PRDCO_DESCRICAO'
      Size = 60
    end
    object cdsBuscoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
  end
  inherited dsBusca: TDataSource
    Left = 308
    Top = 208
  end
  inherited mnuGridPesquisa: TPopupMenu
    Left = 156
    Top = 256
  end
end
