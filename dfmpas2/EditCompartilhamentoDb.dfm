inherited frmEditCompartilhamentoDb: TfrmEditCompartilhamentoDb
  BorderIcons = [biSystemMenu]
  Caption = 'frmEditCompartilhamentoDb'
  ClientHeight = 453
  ClientWidth = 1094
  ExplicitWidth = 1102
  ExplicitHeight = 480
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtil: TPanel
    Top = 421
    Width = 1094
    ExplicitTop = 410
    ExplicitWidth = 1094
    inherited btnOk: TSpeedButton
      Left = 794
      ExplicitLeft = 359
    end
    inherited btnCancelar: TSpeedButton
      Left = 943
      ExplicitLeft = 508
    end
  end
  object GroupBox1: TGroupBox [1]
    Left = 0
    Top = 0
    Width = 1094
    Height = 417
    Align = alTop
    Caption = 'Defini'#231#227'o'
    TabOrder = 1
    object Label1: TLabel
      Left = 64
      Top = 24
      Width = 42
      Height = 13
      Caption = 'Clientes:'
    end
    object Label2: TLabel
      Left = 400
      Top = 25
      Width = 47
      Height = 13
      Caption = 'Produtos:'
    end
    object Label3: TLabel
      Left = 65
      Top = 59
      Width = 38
      Height = 13
      Caption = 'Bancos:'
    end
    object Label4: TLabel
      Left = 363
      Top = 94
      Width = 84
      Height = 13
      Caption = 'Transportadoras:'
    end
    object Label5: TLabel
      Left = 25
      Top = 94
      Width = 81
      Height = 13
      Caption = 'Representantes:'
    end
    object Label6: TLabel
      Left = 377
      Top = 128
      Width = 70
      Height = 13
      Caption = 'Fornecedores:'
    end
    object Label7: TLabel
      Left = 48
      Top = 202
      Width = 58
      Height = 13
      Caption = 'C. Receber:'
    end
    object Label8: TLabel
      Left = 401
      Top = 201
      Width = 46
      Height = 13
      Caption = 'C. Pagar:'
    end
    object Label9: TLabel
      Left = 64
      Top = 236
      Width = 41
      Height = 13
      Caption = 'Pedidos:'
    end
    object Label10: TLabel
      Left = 398
      Top = 235
      Width = 49
      Height = 13
      Caption = 'Cota'#231#245'es:'
    end
    object Label11: TLabel
      Left = 26
      Top = 272
      Width = 79
      Height = 13
      Caption = 'Ordens Compra:'
    end
    object Label13: TLabel
      Left = 17
      Top = 307
      Width = 87
      Height = 13
      Caption = 'Ordens Produ'#231#227'o:'
    end
    object Label14: TLabel
      Left = 406
      Top = 271
      Width = 41
      Height = 13
      Caption = 'Tabelas:'
    end
    object Label15: TLabel
      Left = 23
      Top = 132
      Width = 82
      Height = 13
      Caption = 'Prazos de Pagto:'
    end
    object Label16: TLabel
      Left = 367
      Top = 167
      Width = 80
      Height = 13
      Caption = 'Opera'#231#227'o Fiscal:'
    end
    object Label17: TLabel
      Left = 24
      Top = 168
      Width = 82
      Height = 13
      Caption = 'Plano de Contas:'
    end
    object Label18: TLabel
      Left = 388
      Top = 341
      Width = 59
      Height = 13
      Caption = 'Parametros:'
    end
    object Label19: TLabel
      Left = 37
      Top = 342
      Width = 68
      Height = 13
      Caption = 'Regras de ST:'
    end
    object Label12: TLabel
      Left = 399
      Top = 306
      Width = 48
      Height = 13
      Caption = 'Estoques:'
    end
    object Label20: TLabel
      Left = 418
      Top = 376
      Width = 29
      Height = 13
      Caption = 'ICMS:'
    end
    object Label21: TLabel
      Left = 348
      Top = 59
      Width = 97
      Height = 13
      Caption = 'Pre'#231'o dos Produtos:'
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 117
      Top = 13
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'CLIENTES'
      DataSource = dsEditS
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 0
      Values.Strings = (
        'E'
        'C')
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 459
      Top = 13
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'Produtos'
      DataSource = dsEditS
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 1
      Values.Strings = (
        'E'
        'C')
    end
    object DBRadioGroup3: TDBRadioGroup
      Left = 117
      Top = 48
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'Bancos'
      DataSource = dsEditS
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 2
      Values.Strings = (
        'E'
        'C')
    end
    object DBRadioGroup4: TDBRadioGroup
      Left = 459
      Top = 82
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'Transportadoras'
      DataSource = dsEditS
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 3
      Values.Strings = (
        'E'
        'C')
    end
    object DBRadioGroup5: TDBRadioGroup
      Left = 117
      Top = 83
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'Representantes'
      DataSource = dsEditS
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 4
      Values.Strings = (
        'E'
        'C')
    end
    object DBRadioGroup6: TDBRadioGroup
      Left = 459
      Top = 117
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'Fornecedores'
      DataSource = dsEditS
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 5
      Values.Strings = (
        'E'
        'C')
    end
    object DBRadioGroup7: TDBRadioGroup
      Left = 117
      Top = 191
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'Receber'
      DataSource = dsEditS
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 9
      Values.Strings = (
        'E'
        'C')
    end
    object DBRadioGroup8: TDBRadioGroup
      Left = 459
      Top = 190
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'Pagar'
      DataSource = dsEditS
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 10
      Values.Strings = (
        'E'
        'C')
    end
    object DBRadioGroup9: TDBRadioGroup
      Left = 117
      Top = 226
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'Pedidos'
      DataSource = dsEditS
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 11
      Values.Strings = (
        'E'
        'C')
    end
    object DBRadioGroup10: TDBRadioGroup
      Left = 459
      Top = 225
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'Cotacoes'
      DataSource = dsEditS
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 12
      Values.Strings = (
        'E'
        'C')
    end
    object DBRadioGroup11: TDBRadioGroup
      Left = 117
      Top = 261
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'OrdensCompra'
      DataSource = dsEditS
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 13
      Values.Strings = (
        'E'
        'C')
    end
    object DBRadioGroup13: TDBRadioGroup
      Left = 117
      Top = 296
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'OrdemProducao'
      DataSource = dsEditS
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 14
      Values.Strings = (
        'E'
        'C')
    end
    object DBRadioGroup14: TDBRadioGroup
      Left = 459
      Top = 260
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'Tabelas'
      DataSource = dsEditS
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 15
      Values.Strings = (
        'E'
        'C')
    end
    object DBRadioGroup15: TDBRadioGroup
      Left = 117
      Top = 121
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'PRAZOS'
      DataSource = dsEditS
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 6
      Values.Strings = (
        'E'
        'C')
    end
    object DBRadioGroup16: TDBRadioGroup
      Left = 459
      Top = 155
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'OPERACAOFISCAL'
      DataSource = dsEditS
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 7
      Values.Strings = (
        'E'
        'C')
    end
    object DBRadioGroup17: TDBRadioGroup
      Left = 118
      Top = 156
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'PLANODECONTAS'
      DataSource = dsEditS
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 8
      Values.Strings = (
        'E'
        'C')
    end
    object DBRadioGroup18: TDBRadioGroup
      Left = 459
      Top = 330
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'PARAMETROS'
      DataSource = dsEditS
      Items.Strings = (
        'Exclusivo')
      TabOrder = 16
      Values.Strings = (
        'E')
    end
    object DBRadioGroup19: TDBRadioGroup
      Left = 117
      Top = 331
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'FISCAL'
      DataSource = dsEditS
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 17
      Values.Strings = (
        'E'
        'C')
    end
    object DBRadioGroup12: TDBRadioGroup
      Left = 459
      Top = 295
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'ESTOQUES'
      DataSource = dsEditS
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 18
      Values.Strings = (
        'E'
        'C')
    end
    object DBRadioGroup20: TDBRadioGroup
      Left = 459
      Top = 365
      Width = 193
      Height = 37
      Columns = 2
      DataField = 'ICMS'
      DataSource = dsEditS
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 19
      Values.Strings = (
        'E'
        'C')
    end
    object DBRadioGroup21: TDBRadioGroup
      Left = 459
      Top = 47
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'PRODUTO_PRECO_EMPRESA'
      DataSource = dsEditS
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 20
      Values.Strings = (
        'E'
        'C')
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 856
    Top = 232
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 952
    Top = 224
  end
  inherited DBConn: TSQLConnection
    Left = 776
    Top = 40
  end
  inherited qAux: TSQLQuery
    Left = 850
    Top = 141
  end
  inherited qAux2: TSQLQuery
    Left = 898
    Top = 140
  end
  inherited qAux3: TSQLQuery
    Left = 938
    Top = 140
  end
  inherited qEdit: TSQLQuery
    Params = <>
    SQL.Strings = (
      'select * from sharedb')
    Left = 828
    Top = 63
    object qEditCLIENTES: TStringField
      FieldName = 'CLIENTES'
      Required = True
      Size = 1
    end
    object qEditPRODUTOS: TStringField
      FieldName = 'PRODUTOS'
      Required = True
      Size = 1
    end
    object qEditBANCOS: TStringField
      FieldName = 'BANCOS'
      Required = True
      Size = 1
    end
    object qEditTRANSPORTADORAS: TStringField
      FieldName = 'TRANSPORTADORAS'
      Required = True
      Size = 1
    end
    object qEditREPRESENTANTES: TStringField
      FieldName = 'REPRESENTANTES'
      Required = True
      Size = 1
    end
    object qEditFORNECEDORES: TStringField
      FieldName = 'FORNECEDORES'
      Required = True
      Size = 1
    end
    object qEditRECEBER: TStringField
      FieldName = 'RECEBER'
      Required = True
      Size = 1
    end
    object qEditPAGAR: TStringField
      FieldName = 'PAGAR'
      Required = True
      Size = 1
    end
    object qEditPEDIDOS: TStringField
      FieldName = 'PEDIDOS'
      Required = True
      Size = 1
    end
    object qEditCOTACOES: TStringField
      FieldName = 'COTACOES'
      Required = True
      Size = 1
    end
    object qEditORDENSCOMPRA: TStringField
      FieldName = 'ORDENSCOMPRA'
      Required = True
      Size = 1
    end
    object qEditFICHATECNICA: TStringField
      FieldName = 'FICHATECNICA'
      Required = True
      Size = 1
    end
    object qEditORDEMPRODUCAO: TStringField
      FieldName = 'ORDEMPRODUCAO'
      Required = True
      Size = 1
    end
    object qEditPARAMETROS: TStringField
      FieldName = 'PARAMETROS'
      Required = True
      Size = 1
    end
    object qEditTABELAS: TStringField
      FieldName = 'TABELAS'
      Required = True
      Size = 1
    end
    object qEditPRAZOS: TStringField
      FieldName = 'PRAZOS'
      Required = True
      Size = 1
    end
    object qEditOPERACAOFISCAL: TStringField
      FieldName = 'OPERACAOFISCAL'
      Required = True
      Size = 1
    end
    object qEditPLANODECONTAS: TStringField
      FieldName = 'PLANODECONTAS'
      Required = True
      Size = 1
    end
    object qEditFISCAL: TStringField
      FieldName = 'FISCAL'
      Size = 1
    end
    object qEditESTOQUES: TStringField
      FieldName = 'ESTOQUES'
      Size = 1
    end
    object qEditICMS: TStringField
      FieldName = 'ICMS'
      Size = 1
    end
    object qEditPRODUTO_PRECO_EMPRESA: TStringField
      FieldName = 'PRODUTO_PRECO_EMPRESA'
      Size = 1
    end
  end
  inherited DspEdit: TDataSetProvider
    Left = 864
    Top = 39
  end
  inherited CdsEdit: TClientDataSet
    Left = 903
    Top = 63
    object CdsEditCLIENTES: TStringField
      FieldName = 'CLIENTES'
      Required = True
      Size = 1
    end
    object CdsEditPRODUTOS: TStringField
      FieldName = 'PRODUTOS'
      Required = True
      Size = 1
    end
    object CdsEditBANCOS: TStringField
      FieldName = 'BANCOS'
      Required = True
      Size = 1
    end
    object CdsEditTRANSPORTADORAS: TStringField
      FieldName = 'TRANSPORTADORAS'
      Required = True
      Size = 1
    end
    object CdsEditREPRESENTANTES: TStringField
      FieldName = 'REPRESENTANTES'
      Required = True
      Size = 1
    end
    object CdsEditFORNECEDORES: TStringField
      FieldName = 'FORNECEDORES'
      Required = True
      Size = 1
    end
    object CdsEditRECEBER: TStringField
      FieldName = 'RECEBER'
      Required = True
      Size = 1
    end
    object CdsEditPAGAR: TStringField
      FieldName = 'PAGAR'
      Required = True
      Size = 1
    end
    object CdsEditPEDIDOS: TStringField
      FieldName = 'PEDIDOS'
      Required = True
      Size = 1
    end
    object CdsEditCOTACOES: TStringField
      FieldName = 'COTACOES'
      Required = True
      Size = 1
    end
    object CdsEditORDENSCOMPRA: TStringField
      FieldName = 'ORDENSCOMPRA'
      Required = True
      Size = 1
    end
    object CdsEditFICHATECNICA: TStringField
      FieldName = 'FICHATECNICA'
      Required = True
      Size = 1
    end
    object CdsEditORDEMPRODUCAO: TStringField
      FieldName = 'ORDEMPRODUCAO'
      Required = True
      Size = 1
    end
    object CdsEditPARAMETROS: TStringField
      FieldName = 'PARAMETROS'
      Required = True
      Size = 1
    end
    object CdsEditTABELAS: TStringField
      FieldName = 'TABELAS'
      Required = True
      Size = 1
    end
    object CdsEditPRAZOS: TStringField
      FieldName = 'PRAZOS'
      Required = True
      Size = 1
    end
    object CdsEditOPERACAOFISCAL: TStringField
      FieldName = 'OPERACAOFISCAL'
      Required = True
      Size = 1
    end
    object CdsEditPLANODECONTAS: TStringField
      FieldName = 'PLANODECONTAS'
      Required = True
      Size = 1
    end
    object CdsEditFISCAL: TStringField
      FieldName = 'FISCAL'
      Size = 1
    end
    object CdsEditESTOQUES: TStringField
      FieldName = 'ESTOQUES'
      Size = 1
    end
    object CdsEditICMS: TStringField
      FieldName = 'ICMS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditPRODUTO_PRECO_EMPRESA: TStringField
      FieldName = 'PRODUTO_PRECO_EMPRESA'
      Size = 1
    end
  end
  inherited dsEditS: TDataSource
    Left = 941
    Top = 39
  end
  inherited qAuditoria: TSQLQuery
    Left = 720
    Top = 271
  end
  inherited dspAuditoria: TDataSetProvider
    Left = 836
    Top = 287
  end
  inherited cdsAuditoria: TClientDataSet
    Left = 744
    Top = 279
  end
end
