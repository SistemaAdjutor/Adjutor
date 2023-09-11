inherited frmOrdemProgramacao: TfrmOrdemProgramacao
  Caption = 'Ordem de produ'#231#227'o programada'
  ClientHeight = 307
  ClientWidth = 694
  OnKeyPress = FormKeyPress
  ExplicitWidth = 702
  ExplicitHeight = 334
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtil: TPanel
    Top = 275
    Width = 694
    ExplicitTop = 275
    ExplicitWidth = 694
    inherited btnOk: TSpeedButton
      Left = 446
      ExplicitLeft = 142
    end
    inherited btnCancelar: TSpeedButton
      Left = 571
      ExplicitLeft = 267
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 0
    Width = 694
    Height = 275
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsEdits
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '000.00#'
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 30
      object cxGrid1DBTableView1OPA_SEQUENCIAL: TcxGridDBColumn
        Caption = 'Sequ'#234'ncia'
        DataBinding.FieldName = 'OPA_SEQUENCIAL'
        Options.Editing = False
        Options.Filtering = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1OPA_DATA_ENTREGA: TcxGridDBColumn
        Caption = 'Data entrega'
        DataBinding.FieldName = 'OPA_DATA_ENTREGA'
        Options.Editing = False
        Width = 132
      end
      object cxGrid1DBTableView1OPA_DATA_AJUSTADA: TcxGridDBColumn
        Caption = 'Data ajustada'
        DataBinding.FieldName = 'OPA_DATA_AJUSTADA'
        Width = 98
      end
      object cxGrid1DBTableView1OPA_QTDE_PRODUZIR: TcxGridDBColumn
        Caption = 'Quantidade produzir'
        DataBinding.FieldName = 'OPA_QTDE_PRODUZIR'
      end
      object cxGrid1DBTableView1OPA_DATA_FABRICACAO: TcxGridDBColumn
        Caption = 'Data fabrica'#231#227'o'
        DataBinding.FieldName = 'OPA_DATA_FABRICACAO'
        Options.Editing = False
        Width = 100
      end
      object cxGrid1DBTableView1OPA_DIAS_CORRIDOS: TcxGridDBColumn
        Caption = 'Dias corridos'
        DataBinding.FieldName = 'OPA_DIAS_CORRIDOS'
        Options.Editing = False
        Width = 73
      end
      object cxGrid1DBTableView1OPA_STATUS: TcxGridDBColumn
        Caption = 'Situa'#231#227'o'
        DataBinding.FieldName = 'OPA_STATUS'
        Options.Editing = False
        Width = 89
      end
      object cxGrid1DBTableView1PED_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'PED_CODIGO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1EMP_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'EMP_CODIGO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1DEP_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'DEP_CODIGO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRD_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'PRD_CODIGO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1IOP_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'IOP_CODIGO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1OPA_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'OPA_CODIGO'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 400
    Top = 104
  end
  inherited FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Left = 256
    Top = 104
  end
  inherited dsEdits: TDataSource
    Left = 173
    Top = 103
  end
  inherited cdsEdit: TFDQuery
    OnNewRecord = cdsEditNewRecord
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'seq'
        Fields = 'OPA_SEQUENCIAL'
      end>
    IndexName = 'seq'
    SQL.Strings = (
      
        'SELECT OPA_CODIGO, OPA_SEQUENCIAL, PED_CODIGO, EMP_CODIGO, DEP_C' +
        'ODIGO, PRD_CODIGO, OPA_DATA_ENTREGA,OPA_DATA_FABRICACAO, OPA_DAT' +
        'A_AJUSTADA,OPA_DIAS_CORRIDOS,'
      'OPA_STATUS, OPA_QTDE_PRODUZIR, IOP_CODIGO'
      'FROM ORDEM_PROGRAMADA'
      'WHERE DEP_CODIGO =:DEP_CODIGO')
    Left = 123
    Top = 104
    ParamData = <
      item
        Name = 'DEP_CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object cdsEditOPA_CODIGO: TIntegerField
      FieldName = 'OPA_CODIGO'
      Origin = 'OPA_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEditOPA_SEQUENCIAL: TIntegerField
      FieldName = 'OPA_SEQUENCIAL'
      Origin = 'OPA_SEQUENCIAL'
      Required = True
    end
    object cdsEditPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'PED_CODIGO'
      Required = True
      Size = 7
    end
    object cdsEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMP_CODIGO'
      Required = True
      Size = 3
    end
    object cdsEditDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
      Origin = 'DEP_CODIGO'
      Required = True
    end
    object cdsEditPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      Required = True
      Size = 5
    end
    object cdsEditOPA_DATA_ENTREGA: TSQLTimeStampField
      FieldName = 'OPA_DATA_ENTREGA'
      Origin = 'OPA_DATA_ENTREGA'
      Required = True
    end
    object cdsEditOPA_QTDE_PRODUZIR: TFMTBCDField
      FieldName = 'OPA_QTDE_PRODUZIR'
      Origin = 'OPA_QTDE_PRODUZIR'
      Precision = 18
      Size = 5
    end
    object cdsEditIOP_CODIGO: TIntegerField
      FieldName = 'IOP_CODIGO'
      Origin = 'IOP_CODIGO'
    end
    object cdsEditOPA_DATA_FABRICACAO: TSQLTimeStampField
      FieldName = 'OPA_DATA_FABRICACAO'
      Origin = 'OPA_DATA_FABRICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditOPA_DATA_AJUSTADA: TSQLTimeStampField
      FieldName = 'OPA_DATA_AJUSTADA'
      Origin = 'OPA_DATA_AJUSTADA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditOPA_DIAS_CORRIDOS: TIntegerField
      FieldName = 'OPA_DIAS_CORRIDOS'
      Origin = 'OPA_DIAS_CORRIDOS'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEditOPA_STATUS: TStringField
      FieldName = 'OPA_STATUS'
      Origin = 'OPA_STATUS'
      ProviderFlags = [pfInUpdate]
      OnGetText = cdsEditOPA_STATUSGetText
      Size = 1
    end
  end
  inherited cdsEditDetail: TFDQuery
    Left = 19
    Top = 128
  end
  inherited dsEditDetail: TDataSource
    Left = 165
    Top = 167
  end
  object cxEditRepository1: TcxEditRepository
    Left = 52
    Top = 164
    object cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Default = True
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            0400000000007000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3300333333333333330033333333333333003333300033333300333330003333
            3300333330003333330033000000000333003300000000033300330000000003
            3300333330003333330033333000333333003333300033333300333333333333
            33003333333333333300}
          Hint = 'Adicionar'
          Kind = bkGlyph
        end
        item
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            030334020231FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000
            28000028FF00FFFF00FFFF00FF07074201018901018B030336FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FF000028000081000086000028FF00FF0F0F5301018C
            02029002029002029005053CFF00FFFF00FFFF00FFFF00FF01012C0000820000
            86000084000086000028151460010190020293030392030393030393080842FF
            00FFFF00FF040337000087000088000083000086000082000028FF00FF19186B
            0202950303970404970303970303960B0A4A09094502028C01018E0000880000
            8800008301012FFF00FFFF00FFFF00FF1D1D7403039A04049C05059A04049A04
            049703039503039302028F01018E00008805053BFF00FFFF00FFFF00FFFF00FF
            FF00FF22227F05059F05059F05059D05059C04049803039603039302028C0B0B
            4AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2727890404A30606A006
            069E05059C04049803039513135DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF2E2F9A0A0AA90707A40505A004049D04049A0303961A196DFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3A3AB12D2DBC2B2BBA2222B416
            16AC0E0EA507079E0303980202931E1F76FF00FFFF00FFFF00FFFF00FFFF00FF
            4544C72B2BBF2D2DBD2D2DBC2D2DBA2D2DB82B2BB62424AF1D1DA71616A11111
            9C232381FF00FFFF00FFFF00FF4F4FDC2B2BC02D2DBF2E2EC02C2CBC2D2DBB3E
            3EB83A3BB22828B12828AD2626AA2525A72323A528288BFF00FF5656EA2B2BBB
            2C2CBC2E2EC02D2DBD2D2DBD4849CEFF00FFFF00FF4040BC2626AD2323A92323
            A52121A32020A02D2D965858EE2D2DBC2B2BBA2C2CBB2D2DBD5151E1FF00FFFF
            00FFFF00FFFF00FF4444C62323A92222A52020A31F1F9D3535A6FF00FF5858EE
            2E2EBD2D2DBA5858EEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4849CF2222
            A42020A04041BDFF00FFFF00FFFF00FF5858EE5858EEFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FF4D4DD84A4AD3FF00FFFF00FF}
          Hint = 'Excluir'
          Kind = bkGlyph
        end>
      Properties.ViewStyle = vsButtonsOnly
    end
  end
end
