inherited frmPesqTipoProduto: TfrmPesqTipoProduto
  Caption = 'Selecione o tipo de produto'
  ClientWidth = 415
  ExplicitWidth = 423
  ExplicitHeight = 482
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 415
    ExplicitWidth = 415
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
      Left = 351
      ExplicitLeft = 351
    end
    inherited btnImprime: TSpeedButton
      Left = 194
      Visible = False
      ExplicitLeft = 194
    end
    inherited btnExcel: TSpeedButton
      Left = 273
      Visible = False
      ExplicitLeft = 273
    end
  end
  inherited PageControl1: TPageControl
    Width = 415
    ExplicitWidth = 415
    inherited tsNotas: TTabSheet
      ExplicitWidth = 407
      inherited pnControle: TPanel
        Width = 407
        ExplicitWidth = 407
        inherited pnFiltro: TPanel
          Width = 407
          Height = 79
          Align = alClient
          ExplicitWidth = 407
          ExplicitHeight = 79
          inherited pn1: TPanel
            Top = 0
            Width = 407
            Height = 79
            Align = alClient
            ExplicitTop = 0
            ExplicitWidth = 407
            ExplicitHeight = 79
            inherited btnPesquisa: TSpeedButton
              Left = 307
              ExplicitLeft = 307
            end
            inherited btnLimpar: TSpeedButton
              Left = 307
              ExplicitLeft = 307
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Width = 407
        OnKeyPress = DBGridKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'PTI_CODIGO'
            Title.Caption = 'Codigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PTI_DESCRI'
            Title.Caption = 'Descri'#231#227'o'
            Width = 274
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PTI_SIGLA'
            Title.Caption = 'Sigla'
            Width = 47
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Width = 415
    ExplicitWidth = 415
    inherited btnSelect: TSpeedButton
      Left = 267
      Visible = True
      ExplicitLeft = 267
    end
  end
  inherited qBusco: TSQLQuery
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      ' SELECT PTI_CODIGO,PTI_DESCRI, PTI_SIGLA FROM PRD_TIPO'
      'where pti_codigo = :id')
  end
  inherited cdsBusco: TClientDataSet
    object cdsBuscoPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object cdsBuscoPTI_DESCRI: TStringField
      DisplayWidth = 100
      FieldName = 'PTI_DESCRI'
      Size = 100
    end
    object cdsBuscoPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Size = 3
    end
  end
end
