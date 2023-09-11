inherited frmPesqEmpresa: TfrmPesqEmpresa
  Caption = 'Empresas'
  ClientWidth = 750
  ExplicitWidth = 766
  ExplicitHeight = 493
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 750
    ExplicitWidth = 390
    inherited btnExclui: TSpeedButton
      Left = 12
      Top = -4
      Visible = False
      ExplicitLeft = 12
      ExplicitTop = -4
    end
    inherited btnNovo: TSpeedButton
      Top = -4
      Visible = False
      ExplicitTop = -4
    end
    inherited btnConsulta: TSpeedButton
      Left = 46
      Top = 2
      ExplicitLeft = 46
      ExplicitTop = 2
    end
    inherited btnEdita: TSpeedButton
      Left = 12
      Top = 2
      Visible = False
      ExplicitLeft = 12
      ExplicitTop = 2
    end
    inherited btnFechar: TSpeedButton
      Left = 686
      ExplicitLeft = 326
    end
    inherited btnImprime: TSpeedButton
      Left = 529
      Visible = False
      ExplicitLeft = 169
    end
    inherited btnExcel: TSpeedButton
      Left = 608
      Visible = False
      ExplicitLeft = 248
    end
  end
  inherited PageControl1: TPageControl
    Width = 750
    ExplicitWidth = 390
    inherited tsNotas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 382
      inherited pnControle: TPanel
        Width = 742
        Visible = False
        ExplicitWidth = 382
      end
      inherited DBGrid: TDBGrid
        Width = 742
        Columns = <
          item
            Expanded = False
            FieldName = 'EMP_CODIGO'
            Title.Caption = 'Empresa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_FANTASIA'
            Title.Caption = 'Fantasia'
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Width = 750
    ExplicitWidth = 390
    inherited btCalc: TSpeedButton
      Visible = False
    end
    inherited btnSelect: TSpeedButton
      Left = 602
      Visible = True
      ExplicitLeft = 242
    end
    inherited lbCntRegistros: TLabel
      Visible = False
    end
  end
  inherited qBusco: TSQLQuery
    object qBuscoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object qBuscoEMP_FANTASIA: TStringField
      FieldName = 'EMP_FANTASIA'
      Size = 60
    end
  end
  inherited cdsBusco: TClientDataSet
    Left = 284
    Top = 209
    object cdsBuscoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object cdsBuscoEMP_FANTASIA: TStringField
      FieldName = 'EMP_FANTASIA'
      Size = 60
    end
  end
end
