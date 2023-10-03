inherited frmPesqPedidosWeb: TfrmPesqPedidosWeb
  Caption = 'Pedidos vindos da web'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc1: TPageControl
    inherited tsNotas: TTabSheet
      inherited cxgrd1: TcxGrid
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        inherited cxgrd1DBTableView1: TcxGridDBTableView
          object cxgrd1DBTableView1EMP_CODIGO: TcxGridDBColumn
            Caption = 'Empresa'
            DataBinding.FieldName = 'EMP_CODIGO'
            Width = 34
          end
          object cxgrd1DBTableView1PEDIDO_ID_EXTERNO: TcxGridDBColumn
            Caption = 'Cod Pedido web'
            DataBinding.FieldName = 'PEDIDO_ID_EXTERNO'
            Width = 85
          end
          object cxgrd1DBTableView1CNPJ: TcxGridDBColumn
            DataBinding.FieldName = 'CNPJ'
          end
          object cxgrd1DBTableView1COALESCE: TcxGridDBColumn
            DataBinding.FieldName = 'COALESCE'
          end
          object cxgrd1DBTableView1CLI_CODIGO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CLI_CODIGO'
          end
          object cxgrd1DBTableView1PED_CODIGO: TcxGridDBColumn
            Caption = 'Cod Pedido'
            DataBinding.FieldName = 'PED_CODIGO'
          end
          object cxgrd1DBTableView1PW_STATUS: TcxGridDBColumn
            Caption = 'Situa'#231#227'o'
            DataBinding.FieldName = 'PW_STATUS'
            Width = 129
          end
        end
      end
    end
  end
  inherited dbConn: TFDConnection
    Params.Strings = (
      'Database=C:\Jobdados\exemplo\EXEMPLO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
  end
  inherited cdsBusca: TFDQuery
    SQL.Strings = (
      
        'SELECT pw.EMP_CODIGO,PEDIDO_ID_EXTERNO, COALESCE(CL.CLI_CGC , PW' +
        '_CLI_CNPJ) CNPJ, '
      
        'COALESCE(CL.CLI_RAZAO, PW_CLI_NOME), PW.CLI_CODIGO, PW.PED_CODIG' +
        'O,  PW_STATUS'
      ' FROM PEDIDO_WEB pw'
      'LEFT JOIN cli0000 cl on cl.CLI_CODIGO = pw.cli_codigo')
    object cdsBuscaEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMP_CODIGO'
      Size = 3
    end
    object cdsBuscaPEDIDO_ID_EXTERNO: TStringField
      FieldName = 'PEDIDO_ID_EXTERNO'
      Origin = 'PEDIDO_ID_EXTERNO'
      Size = 10
    end
    object cdsBuscaCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = []
      ReadOnly = True
      Size = 14
    end
    object cdsBuscaCOALESCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COALESCE'
      Origin = '"COALESCE"'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
    object cdsBuscaCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
      Size = 5
    end
    object cdsBuscaPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'PED_CODIGO'
      Size = 10
    end
    object cdsBuscaPW_STATUS: TStringField
      FieldName = 'PW_STATUS'
      Origin = 'PW_STATUS'
      OnGetText = cdsBuscaPW_STATUSGetText
      Size = 1
    end
  end
  inherited frxPadrao: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
