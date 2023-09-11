inherited frmMolaToleranciaDiametroMedio: TfrmMolaToleranciaDiametroMedio
  Caption = 'Toler'#226'ncia do Diametro M'#233'dio das Molas'
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc1: TPageControl
    inherited tsNotas: TTabSheet
      inherited pnlControle: TPanel
        inherited pnlFiltro: TPanel
          inherited pnlpn1: TPanel
            Visible = False
          end
        end
      end
      inherited cxgrd1: TcxGrid
        ExplicitLeft = -3
        ExplicitTop = 83
        inherited cxgrd1DBTableView1: TcxGridDBTableView
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxgrd1DBTableView1MMO_GRAU: TcxGridDBColumn
            DataBinding.FieldName = 'MMO_GRAU'
          end
          object cxgrd1DBTableView1MTM_RELACAO_MIN: TcxGridDBColumn
            DataBinding.FieldName = 'MTM_RELACAO_MIN'
            Width = 152
          end
          object cxgrd1DBTableView1MTM_RELACAO_MAX: TcxGridDBColumn
            DataBinding.FieldName = 'MTM_RELACAO_MAX'
            Width = 155
          end
          object cxgrd1DBTableView1MTM_DM_DE: TcxGridDBColumn
            DataBinding.FieldName = 'MTM_DM_DE'
          end
          object cxgrd1DBTableView1MTM_DM_ATE: TcxGridDBColumn
            DataBinding.FieldName = 'MTM_DM_ATE'
            Width = 105
          end
          object cxgrd1DBTableView1MTM_INTERVALO: TcxGridDBColumn
            DataBinding.FieldName = 'MTM_INTERVALO'
          end
        end
      end
    end
  end
  inherited pnl1: TPanel
    inherited btnSelect: TSpeedButton
      Caption = 'Sair'
      Visible = True
    end
  end
  inherited pnlUtilTop: TPanel
    Visible = False
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\EXEMPLO\EXEMPLO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
  end
  inherited cdsBusca: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM MOLA_TOLERANCIA_DIAMETRO_MEDIO'
      'ORDER BY  MMO_GRAU, MTM_RELACAO_MIN')
    object cdsBuscaMMO_GRAU: TIntegerField
      DisplayLabel = 'Grau'
      FieldName = 'MMO_GRAU'
      Origin = 'MMO_GRAU'
    end
    object cdsBuscaMTM_RELACAO_MIN: TFMTBCDField
      DisplayLabel = 'Rela'#231#227'o de Enrolamento Min.'
      FieldName = 'MTM_RELACAO_MIN'
      Origin = 'MTM_RELACAO_MIN'
      Precision = 18
      Size = 5
    end
    object cdsBuscaMTM_RELACAO_MAX: TFMTBCDField
      DisplayLabel = 'Rela'#231#227'o de Enrolamento M'#225'x.'
      FieldName = 'MTM_RELACAO_MAX'
      Origin = 'MTM_RELACAO_MAX'
      Precision = 18
      Size = 5
    end
    object cdsBuscaMTM_DM_DE: TFMTBCDField
      DisplayLabel = 'Diametro M'#233'dio De'
      FieldName = 'MTM_DM_DE'
      Origin = 'MTM_DM_DE'
      Precision = 18
      Size = 5
    end
    object cdsBuscaMTM_DM_ATE: TFMTBCDField
      DisplayLabel = 'Diametro M'#233'dio At'#233
      FieldName = 'MTM_DM_ATE'
      Origin = 'MTM_DM_ATE'
      Precision = 18
      Size = 5
    end
    object cdsBuscaMTM_INTERVALO: TFMTBCDField
      DisplayLabel = 'Itervalo'
      FieldName = 'MTM_INTERVALO'
      Origin = 'MTM_INTERVALO'
      Precision = 18
      Size = 5
    end
  end
  inherited frxPadrao: TfrxReport
    Top = 113
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
