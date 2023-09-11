inherited frmPesqChaveRefer: TfrmPesqChaveRefer
  Caption = 'Adicionar chave de refer'#234'ncia'
  ClientWidth = 401
  ExplicitWidth = 409
  ExplicitHeight = 482
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 401
    ExplicitWidth = 401
    inherited btnExclui: TSpeedButton
      Visible = False
    end
    inherited btnNovo: TSpeedButton
      Visible = False
    end
    inherited btnEdita: TSpeedButton
      Visible = False
    end
    inherited btnFechar: TSpeedButton
      Left = 337
      ExplicitLeft = 337
    end
    inherited btnImprime: TSpeedButton
      Left = 180
      ExplicitLeft = 180
    end
    inherited btnExcel: TSpeedButton
      Left = 259
      ExplicitLeft = 259
    end
  end
  inherited PageControl1: TPageControl
    Width = 401
    ExplicitWidth = 401
    inherited tsNotas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 393
      inherited pnControle: TPanel
        Width = 393
        ExplicitWidth = 393
        inherited pnFiltro: TPanel
          inherited pn1: TPanel
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
        Width = 393
        Columns = <
          item
            Expanded = False
            FieldName = 'NF_CHAVE_NFE_REFERENCIADA'
            Title.Caption = 'Chave'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NF_REGISTRO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COD_REFERENCIA'
            Visible = False
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Width = 401
    ExplicitWidth = 401
    inherited btnSelect: TSpeedButton
      Left = 253
      ExplicitLeft = 253
    end
  end
  inherited qBusco: TSQLQuery
    object qBuscoCOD_REFERENCIA: TIntegerField
      FieldName = 'COD_REFERENCIA'
    end
    object qBuscoNF_CHAVE_NFE_REFERENCIADA: TStringField
      FieldName = 'NF_CHAVE_NFE_REFERENCIADA'
      Size = 44
    end
    object qBuscoNF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
    end
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoCOD_REFERENCIA: TIntegerField
      FieldName = 'COD_REFERENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsBuscoNF_CHAVE_NFE_REFERENCIADA: TStringField
      FieldName = 'NF_CHAVE_NFE_REFERENCIADA'
      Size = 44
    end
    object cdsBuscoNF_REGISTRO: TIntegerField
      FieldName = 'NF_REGISTRO'
    end
  end
end
