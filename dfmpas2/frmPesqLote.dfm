inherited frmPesqSelecaoLote: TfrmPesqSelecaoLote
  Caption = 'Pesquisa de Lote do Produto'
  ClientWidth = 528
  ExplicitWidth = 536
  ExplicitHeight = 482
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 528
    ExplicitWidth = 528
    DesignSize = (
      528
      41)
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
      Left = 464
      ExplicitLeft = 464
    end
    inherited btnImprime: TSpeedButton
      Left = 307
      ExplicitLeft = 307
    end
    inherited btnExcel: TSpeedButton
      Left = 386
      ExplicitLeft = 386
    end
  end
  inherited PageControl1: TPageControl
    Width = 528
    ExplicitWidth = 528
    inherited tsNotas: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 520
      inherited pnControle: TPanel
        Width = 520
        ExplicitWidth = 520
        inherited pnFiltro: TPanel
          Visible = False
        end
      end
      inherited DBGrid: TDBGrid
        Width = 520
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        OnCellClick = DBGridCellClick
        OnDrawColumnCell = DBGridDrawColumnCell
        Columns = <
          item
            ButtonStyle = cbsNone
            Expanded = False
            FieldName = 'Selecionado'
            Title.Caption = '*'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDL_REGISTRO'
            ReadOnly = False
            Title.Caption = 'Reg'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDL_LOTE'
            Title.Caption = 'Lote'
            Width = 162
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDL_DATA_FABRICACAO'
            Title.Caption = 'Fabrica'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDL_DATA_VALIDADE'
            Title.Caption = 'Validade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRDL_SALDO'
            Title.Caption = 'Saldo'
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Width = 528
    ExplicitWidth = 528
    DesignSize = (
      528
      36)
    inherited btCalc: TSpeedButton
      Visible = False
    end
    inherited btnSelect: TSpeedButton
      Left = 380
      ExplicitLeft = 380
    end
    inherited lbCntRegistros: TLabel
      Visible = False
    end
    object Button1: TButton
      Left = 368
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 449
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
  end
  inherited qBusco: TSQLQuery
    object qBuscoPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
    end
    object qBuscoPRDL_LOTE: TStringField
      FieldName = 'PRDL_LOTE'
      Size = 30
    end
    object qBuscoPRDL_DATA_FABRICACAO: TDateField
      FieldName = 'PRDL_DATA_FABRICACAO'
    end
    object qBuscoPRDL_DATA_VALIDADE: TDateField
      FieldName = 'PRDL_DATA_VALIDADE'
    end
    object qBuscoPRDL_SALDO: TFMTBCDField
      FieldName = 'PRDL_SALDO'
      Precision = 18
      Size = 5
    end
  end
  inherited cdsBusco: TClientDataSet
    StoreDefs = True
    object cdsBuscoSelecionado: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'Selecionado'
      OnGetText = cdsBuscoSelecionadoGetText
    end
    object cdsBuscoPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
    end
    object cdsBuscoPRDL_LOTE: TStringField
      FieldName = 'PRDL_LOTE'
      Size = 30
    end
    object cdsBuscoPRDL_DATA_FABRICACAO: TDateField
      FieldName = 'PRDL_DATA_FABRICACAO'
    end
    object cdsBuscoPRDL_DATA_VALIDADE: TDateField
      FieldName = 'PRDL_DATA_VALIDADE'
    end
    object cdsBuscoPRDL_SALDO: TFMTBCDField
      FieldName = 'PRDL_SALDO'
      Precision = 18
      Size = 5
    end
  end
end
