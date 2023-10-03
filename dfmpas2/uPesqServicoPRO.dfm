inherited frmServicos: TfrmServicos
  Caption = 'Pesquisa servi'#231'os'
  ClientWidth = 543
  ExplicitWidth = 559
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc1: TPageControl
    Width = 543
    ExplicitWidth = 543
    inherited tsNotas: TTabSheet
      ExplicitWidth = 535
      inherited pnlControle: TPanel
        Width = 535
        ExplicitWidth = 535
        inherited pnlFiltro: TPanel
          Width = 535
          ExplicitWidth = 535
          inherited pnlpn1: TPanel
            Width = 535
            ExplicitWidth = 535
            inherited btnPesquisa: TSpeedButton
              Left = 442
              ExplicitLeft = 524
            end
            inherited btnLimpar: TSpeedButton
              Left = 442
              ExplicitLeft = 524
            end
            object LabeledEdit1: TLabeledEdit
              Left = 17
              Top = 25
              Width = 200
              Height = 21
              EditLabel.Width = 35
              EditLabel.Height = 13
              EditLabel.Caption = 'Servi'#231'o'
              TabOrder = 0
            end
          end
        end
      end
      inherited cxgrd1: TcxGrid
        Width = 535
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        ExplicitWidth = 535
        inherited cxgrd1DBTableView1: TcxGridDBTableView
          OptionsCustomize.ColumnGrouping = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxgrd1DBTableView1SRV_CODIGO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'SRV_CODIGO'
          end
          object cxgrd1DBTableView1SRV_NOME: TcxGridDBColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'SRV_NOME'
          end
          object cxgrd1DBTableView1SET_DESCRICAO: TcxGridDBColumn
            Caption = 'Setor'
            DataBinding.FieldName = 'SET_DESCRICAO'
          end
        end
      end
    end
  end
  inherited pnl1: TPanel
    Width = 543
    ExplicitWidth = 543
    inherited btnSelect: TSpeedButton
      Left = 395
      ExplicitLeft = 477
    end
  end
  inherited pnlUtilTop: TPanel
    Width = 543
    ExplicitWidth = 543
    inherited btnExclui: TSpeedButton
      OnClick = btnNovoClick
    end
    inherited btnEdita: TSpeedButton
      OnClick = btnNovoClick
    end
    inherited btnFechar: TSpeedButton
      Left = 479
      ExplicitLeft = 561
    end
    inherited btnMP_Expotar: TJvArrowButton
      Left = 378
      ExplicitLeft = 460
    end
    inherited btnrelatorios: TJvArrowButton
      Left = 277
      ExplicitLeft = 359
    end
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Developer\Adjutor\dados\exemplo.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'DriverID=FB')
  end
  inherited cdsBusca: TFDQuery
    SQL.Strings = (
      'SELECT srv_codigo,srv_nome, set_descricao from servico, setor')
    object cdsBuscaSRV_CODIGO: TIntegerField
      FieldName = 'SRV_CODIGO'
      Origin = 'SRV_CODIGO'
      Required = True
    end
    object cdsBuscaSRV_NOME: TStringField
      FieldName = 'SRV_NOME'
      Origin = 'SRV_NOME'
      Size = 60
    end
    object cdsBuscaSET_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SET_DESCRICAO'
      Origin = 'SET_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
  end
  inherited frxPadrao: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
