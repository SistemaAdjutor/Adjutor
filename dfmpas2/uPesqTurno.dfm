inherited frmPesqTurnos: TfrmPesqTurnos
  Caption = 'Turnos'
  ExplicitWidth = 691
  ExplicitHeight = 493
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited tsNotas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 667
      inherited pnControle: TPanel
        inherited pnFiltro: TPanel
          Width = 667
          Height = 79
          Align = alClient
          ExplicitWidth = 667
          ExplicitHeight = 79
          inherited pn1: TPanel
            Top = 4
            Width = 667
            ExplicitTop = 4
            ExplicitWidth = 667
            inherited btnPesquisa: TSpeedButton
              Left = 578
              Top = 7
              ExplicitLeft = 578
              ExplicitTop = 7
            end
            inherited btnLimpar: TSpeedButton
              Left = 578
              Top = 33
              ExplicitLeft = 578
              ExplicitTop = 33
            end
            object edPesquisaLivre: TLabeledEdit
              Left = 16
              Top = 16
              Width = 217
              Height = 21
              EditLabel.Width = 27
              EditLabel.Height = 13
              EditLabel.Caption = 'Nome'
              TabOrder = 0
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'TPR_CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRP_NOME'
            Title.Caption = 'Nome'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRP_ATIVO'
            Title.Caption = 'Ativo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRP_DIASSEMANAS'
            Title.Caption = 'Dias/sem'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRP_INICIO'
            Title.Caption = 'In'#237'cio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRP_FIM'
            Title.Caption = 'Fim'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRP_DESCRICAO_INT1'
            Title.Caption = 'Intervalo 1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRP_TEMPOINTERVALO1'
            Title.Caption = 'Tempo 1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRP_DESCRICAO_INT2'
            Title.Caption = 'Intervalo 2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRP_TEMPOINTERVALO2'
            Title.Caption = 'Tempo 2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRP_DESCRICAO_INT3'
            Title.Caption = 'Intervalo 3'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRP_TEMPOINTERVALO3'
            Title.Caption = 'Tempo 3'
            Visible = True
          end>
      end
    end
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoTPR_CODIGO: TIntegerField
      FieldName = 'TPR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsBuscoTRP_NOME: TStringField
      FieldName = 'TRP_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsBuscoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsBuscoTRP_ATIVO: TStringField
      FieldName = 'TRP_ATIVO'
      ProviderFlags = [pfInUpdate]
      OnGetText = cdsBuscoTRP_ATIVOGetText
      Size = 1
    end
    object cdsBuscoTRP_DIASSEMANAS: TIntegerField
      FieldName = 'TRP_DIASSEMANAS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBuscoTRP_INICIO: TTimeField
      FieldName = 'TRP_INICIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBuscoTRP_FIM: TTimeField
      FieldName = 'TRP_FIM'
    end
    object cdsBuscoTRP_DESCRICAO_INT1: TStringField
      FieldName = 'TRP_DESCRICAO_INT1'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsBuscoTRP_DESCRICAO_INT2: TStringField
      FieldName = 'TRP_DESCRICAO_INT2'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsBuscoTRP_DESCRICAO_INT3: TStringField
      FieldName = 'TRP_DESCRICAO_INT3'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsBuscoTRP_TEMPOINTERVALO1: TTimeField
      FieldName = 'TRP_TEMPOINTERVALO1'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBuscoTRP_TEMPOINTERVALO2: TTimeField
      FieldName = 'TRP_TEMPOINTERVALO2'
    end
    object cdsBuscoTRP_TEMPOINTERVALO3: TTimeField
      FieldName = 'TRP_TEMPOINTERVALO3'
    end
  end
end
