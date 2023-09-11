inherited frmConsultaEstrutura: TfrmConsultaEstrutura
  Caption = 'frmConsultaEstrutura'
  ClientWidth = 1107
  ExplicitWidth = 1123
  ExplicitHeight = 493
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Width = 1107
    ExplicitWidth = 1107
    inherited tsNotas: TTabSheet
      ExplicitWidth = 1099
      inherited pnControle: TPanel
        Width = 1099
        ExplicitWidth = 1099
        inherited pnFiltro: TPanel
          Width = 913
          ExplicitWidth = 913
          inherited pn1: TPanel
            Width = 913
            ExplicitWidth = 913
            inherited btnPesquisa: TSpeedButton
              Left = 595
              ExplicitLeft = 595
            end
            inherited btnLimpar: TSpeedButton
              Left = 595
              ExplicitLeft = 595
            end
            inherited btnImprime: TSpeedButton
              Left = 681
              OnClick = btnImprimeClick
              ExplicitLeft = 681
            end
            inherited btnExcel: TSpeedButton
              Left = 758
              ExplicitLeft = 758
            end
            inherited btnFechar: TSpeedButton
              Left = 837
              ExplicitLeft = 837
            end
            object ed1: TLabeledEdit
              Left = 8
              Top = 27
              Width = 553
              Height = 21
              TabStop = False
              EditLabel.Width = 97
              EditLabel.Height = 13
              EditLabel.Caption = 'Item (Ficha T'#233'cnica)'
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Width = 1099
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
            Title.Font.Style = [fsBold]
            Width = 71
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
            Title.Font.Style = [fsBold]
            Width = 370
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRG_DESCRICAO'
            Title.Alignment = taCenter
            Title.Caption = 'Grade'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 177
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
            Title.Font.Style = [fsBold]
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FTI_PRECOCUSTO'
            Title.Alignment = taCenter
            Title.Caption = 'Custo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FTI_UC'
            Title.Alignment = taCenter
            Title.Caption = 'UC'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRD_UND'
            Title.Alignment = taCenter
            Title.Caption = 'UND'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1107
    ExplicitWidth = 1107
    inherited btnSelect: TSpeedButton
      Left = 951
      ExplicitLeft = 951
    end
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoFTI_REGISTRO: TIntegerField
      FieldName = 'FTI_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsBuscoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBuscoPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBuscoPRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBuscoFTI_MODIFICADA: TSQLTimeStampField
      FieldName = 'FTI_MODIFICADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBuscoFTI_UC: TFMTBCDField
      FieldName = 'FTI_UC'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,####0.0000'
      EditFormat = '#,####0.0000'
      Precision = 15
    end
    object cdsBuscoFTI_UCMODIFIC: TFMTBCDField
      FieldName = 'FTI_UCMODIFIC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
    end
    object cdsBuscoFTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsBuscoFTI_MODE2: TStringField
      FieldName = 'FTI_MODE2'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsBuscoFTI_MODE3: TStringField
      FieldName = 'FTI_MODE3'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsBuscoFTI_MODE4: TStringField
      FieldName = 'FTI_MODE4'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsBuscoFTI_MODE5: TStringField
      FieldName = 'FTI_MODE5'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsBuscoFTI_MODE6: TStringField
      FieldName = 'FTI_MODE6'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsBuscoFTI_MODE7: TStringField
      FieldName = 'FTI_MODE7'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cdsBuscoFTI_MODE8: TStringField
      FieldName = 'FTI_MODE8'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object cdsBuscoFTI_PRECOCUSTO: TFMTBCDField
      FieldName = 'FTI_PRECOCUSTO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.00'
      Precision = 15
    end
    object cdsBuscoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsBuscoGrade_CC: TStringField
      FieldKind = fkCalculated
      FieldName = 'Grade_CC'
      ProviderFlags = [pfInUpdate]
      Calculated = True
    end
    object cdsBuscoFTI_NIVEL: TIntegerField
      FieldName = 'FTI_NIVEL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBuscoFTI_SEQUENCIA: TIntegerField
      FieldName = 'FTI_SEQUENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsBuscoFTI_REFER_PAI: TStringField
      FieldName = 'FTI_REFER_PAI'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object cdsBuscoFTI_TIPO_PI: TStringField
      FieldName = 'FTI_TIPO_PI'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsBuscoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      ProviderFlags = []
      Size = 100
    end
    object cdsBuscoPRD_UND: TStringField
      FieldName = 'PRD_UND'
      ProviderFlags = []
      Size = 3
    end
    object cdsBuscoPRD_GRADE: TStringField
      FieldName = 'PRD_GRADE'
      ProviderFlags = []
      Size = 1
    end
    object cdsBuscoPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      ProviderFlags = []
      Size = 2
    end
    object cdsBuscoPRD_PCUSTO: TFMTBCDField
      FieldName = 'PRD_PCUSTO'
      ProviderFlags = []
      Precision = 15
    end
    object cdsBuscoPRG_DESCRICAO: TStringField
      FieldName = 'PRG_DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
  end
  inherited mnuGridPesquisa: TPopupMenu
    object VeraFichaTcnicaDesteItem1: TMenuItem [0]
      Caption = 'Ver a Ficha T'#233'cnica Deste Item. '
      OnClick = VeraFichaTcnicaDesteItem1Click
    end
    object N1: TMenuItem [1]
      Caption = '-'
    end
  end
end
