inherited frmDetalheInadimplenciaCliente: TfrmDetalheInadimplenciaCliente
  BorderIcons = [biSystemMenu]
  Caption = 'frmDetalheInadimplenciaCliente'
  ClientWidth = 954
  ExplicitWidth = 962
  ExplicitHeight = 482
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 954
    ExplicitWidth = 524
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
      Left = 890
      ExplicitLeft = 460
    end
    inherited btnImprime: TSpeedButton
      Left = 733
      ExplicitLeft = 303
    end
    inherited btnExcel: TSpeedButton
      Left = 812
      ExplicitLeft = 382
    end
  end
  inherited PageControl1: TPageControl
    Width = 954
    ExplicitWidth = 524
    inherited tsNotas: TTabSheet
      ExplicitWidth = 516
      inherited pnControle: TPanel
        Width = 946
        Visible = False
        ExplicitWidth = 516
        inherited pnFiltro: TPanel
          Width = 946
          Height = 79
          Align = alClient
          ExplicitWidth = 516
          ExplicitHeight = 79
          inherited pn1: TPanel
            Top = 4
            Width = 946
            Visible = False
            ExplicitTop = 4
            ExplicitWidth = 516
            inherited btnPesquisa: TSpeedButton
              Left = 570
              Top = 7
              ExplicitLeft = 570
              ExplicitTop = 7
            end
            inherited btnLimpar: TSpeedButton
              Left = 570
              Top = 33
              ExplicitLeft = 570
              ExplicitTop = 33
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Width = 946
        Columns = <
          item
            Expanded = False
            FieldName = 'dias'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fpc_vencto'
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fatura'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PARCELAS'
            Title.Caption = 'Parcela'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAT_VLFAT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAN_APELIDO'
            Title.Caption = 'Banco'
            Width = 144
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPG_DESCRICAO'
            Title.Caption = 'Forma de Pagamento'
            Width = 219
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Width = 954
    ExplicitWidth = 524
    inherited btnSelect: TSpeedButton
      Left = 806
      ExplicitLeft = 376
    end
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscodias: TLargeintField
      DisplayLabel = 'Dias em atraso'
      FieldName = 'dias'
    end
    object cdsBuscofpc_vencto: TSQLTimeStampField
      DisplayLabel = 'Vencimento'
      FieldName = 'fpc_vencto'
    end
    object cdsBuscovalor: TFMTBCDField
      DisplayLabel = 'Inadimpl'#234'ncia'
      FieldName = 'valor'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
    end
    object cdsBuscofatura: TStringField
      DisplayLabel = 'Fatura'
      FieldName = 'fatura'
      Size = 15
    end
    object cdsBuscoPARCELAS: TStringField
      FieldName = 'PARCELAS'
      Size = 5
    end
    object cdsBuscoFAT_VLFAT: TFMTBCDField
      DisplayLabel = 'Valor total fatura'
      FieldName = 'FAT_VLFAT'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
    end
    object cdsBuscoBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 25
    end
    object cdsBuscoFPG_DESCRICAO: TStringField
      FieldName = 'FPG_DESCRICAO'
      Size = 100
    end
  end
end
