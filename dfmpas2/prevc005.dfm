object FormPrevNovo: TFormPrevNovo
  Left = 172
  Top = 129
  Width = 544
  Height = 375
  Caption = 'Beta - Rodrigo - Previs'#227'o de consumo'
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 797
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = 14737632
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 56
    Width = 797
    Height = 209
    Caption = 'Produtos '#224' serem produzidos'
    TabOrder = 1
    object DecisionGrid1: TDecisionGrid
      Left = 8
      Top = 16
      Width = 320
      Height = 120
      DefaultColWidth = 100
      DefaultRowHeight = 20
      CaptionColor = clActiveCaption
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clCaptionText
      CaptionFont.Height = -11
      CaptionFont.Name = 'MS Sans Serif'
      CaptionFont.Style = []
      DataColor = clInfoBk
      DataSumColor = clNone
      DataFont.Charset = DEFAULT_CHARSET
      DataFont.Color = clWindowText
      DataFont.Height = -11
      DataFont.Name = 'MS Sans Serif'
      DataFont.Style = []
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'MS Sans Serif'
      LabelFont.Style = []
      LabelColor = clBtnFace
      LabelSumColor = clInactiveCaption
      DecisionSource = DecisionSource1
      Dimensions = <>
      Totals = False
      ShowCubeEditor = False
      Color = clBtnFace
      GridLineWidth = 1
      GridLineColor = clWindowText
      TabOrder = 0
    end
  end
  object DecisionCube1: TDecisionCube
    DataSet = SQLClientDataSet1
    DimensionMap = <
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_CODIGO'
        Name = 'PRD_CODIGO'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_REFER'
        Name = 'PRD_REFER'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftDate
        Fieldname = 'PRD_DTCADASTRO'
        Name = 'PRD_DTCADASTRO'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binYear
        ValueCount = -1
        Active = False
        StartValue = 38353
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_DESCRI'
        Name = 'PRD_DESCRI'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_DESCRI_RES'
        Name = 'PRD_DESCRI_RES'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_UND'
        Name = 'PRD_UND'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_EMBALA'
        Name = 'PRD_EMBALA'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PGR_CODIGO'
        Name = 'PGR_CODIGO'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PTI_CODIGO'
        Name = 'PTI_CODIGO'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'IPI_CODIGO'
        Name = 'IPI_CODIGO'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_ALIQICM'
        Name = 'PRD_ALIQICM'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'LIN_CODIGO'
        Name = 'LIN_CODIGO'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_COMPL'
        Name = 'PRD_COMPL'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftMemo
        Fieldname = 'PRD_CARACT'
        Name = 'PRD_CARACT'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_MINIMO'
        Name = 'PRD_MINIMO'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_PCUSTO'
        Name = 'PRD_PCUSTO'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_PVENDA'
        Name = 'PRD_PVENDA'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_PMEDIO'
        Name = 'PRD_PMEDIO'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_PMATPRI'
        Name = 'PRD_PMATPRI'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_MAOOBRA'
        Name = 'PRD_MAOOBRA'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diActive
        FieldType = ftFMTBcd
        Fieldname = 'PRD_ESTOQUE'
        Name = 'PRD_ESTOQUE'
        DerivedFrom = -1
        DimensionType = dimCount
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_SAIDA'
        Name = 'PRD_SAIDA'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_PENDENTE'
        Name = 'PRD_PENDENTE'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'FOR_CODIGO'
        Name = 'FOR_CODIGO'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_ENTRADA'
        Name = 'PRD_ENTRADA'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_MAXIMO'
        Name = 'PRD_MAXIMO'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_TEMSUB'
        Name = 'PRD_TEMSUB'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_SITRIBUT'
        Name = 'PRD_SITRIBUT'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_ICMSUBS'
        Name = 'PRD_ICMSUBS'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_UTILCONV'
        Name = 'PRD_UTILCONV'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_UNDCOMP'
        Name = 'PRD_UNDCOMP'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_PESOKG'
        Name = 'PRD_PESOKG'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_FATORC'
        Name = 'PRD_FATORC'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_DIVMULT'
        Name = 'PRD_DIVMULT'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'EMP_CODIGO'
        Name = 'EMP_CODIGO'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftTimeStamp
        Fieldname = 'PRD_DTPCUSTO'
        Name = 'PRD_DTPCUSTO'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_TABPRECO'
        Name = 'PRD_TABPRECO'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_GARANTIA'
        Name = 'PRD_GARANTIA'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_FAMILIA'
        Name = 'PRD_FAMILIA'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_CODBARRA'
        Name = 'PRD_CODBARRA'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diActive
        FieldType = ftFMTBcd
        Fieldname = 'PRD_VAR1'
        Name = 'PRD_VAR1'
        DerivedFrom = -1
        DimensionType = dimDimension
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diActive
        FieldType = ftFMTBcd
        Fieldname = 'PRD_VAR2'
        Name = 'PRD_VAR2'
        DerivedFrom = -1
        DimensionType = dimDimension
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diActive
        FieldType = ftFMTBcd
        Fieldname = 'PRD_VAR3'
        Name = 'PRD_VAR3'
        DerivedFrom = -1
        DimensionType = dimDimension
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_VAR4'
        Name = 'PRD_VAR4'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_VAR5'
        Name = 'PRD_VAR5'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_VAR6'
        Name = 'PRD_VAR6'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_VAR7'
        Name = 'PRD_VAR7'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_VAR8'
        Name = 'PRD_VAR8'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_DCVAR1'
        Name = 'PRD_DCVAR1'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_DCVAR2'
        Name = 'PRD_DCVAR2'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_DCVAR3'
        Name = 'PRD_DCVAR3'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_DCVAR4'
        Name = 'PRD_DCVAR4'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_DCVAR5'
        Name = 'PRD_DCVAR5'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_DCVAR6'
        Name = 'PRD_DCVAR6'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_DCVAR7'
        Name = 'PRD_DCVAR7'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_DCVAR8'
        Name = 'PRD_DCVAR8'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_CURVA'
        Name = 'PRD_CURVA'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = False
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_CODORIGINAL'
        Name = 'PRD_CODORIGINAL'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_CODMERCOSUL'
        Name = 'PRD_CODMERCOSUL'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftDate
        Fieldname = 'PRD_DTPVENDA'
        Name = 'PRD_DTPVENDA'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binYear
        ValueCount = -1
        Active = True
        StartValue = 38353
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'AMX_CODIGO'
        Name = 'AMX_CODIGO'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_PESOLIQ'
        Name = 'PRD_PESOLIQ'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftString
        Fieldname = 'PRD_GRADE'
        Name = 'PRD_GRADE'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_CUSTOCOMIPI'
        Name = 'PRD_CUSTOCOMIPI'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_RESERVA'
        Name = 'PRD_RESERVA'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_EMPENHO'
        Name = 'PRD_EMPENHO'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = True
      end
      item
        ActiveFlag = diAsNeeded
        FieldType = ftFMTBcd
        Fieldname = 'PRD_SALDOPRODUCAO'
        Name = 'PRD_SALDOPRODUCAO'
        DerivedFrom = -1
        DimensionType = dimUnknown
        BinType = binNone
        ValueCount = -1
        Active = True
      end>
    ShowProgressDialog = True
    MaxDimensions = 3
    MaxSummaries = 11
    MaxCells = 0
    Left = 184
    Top = 16
  end
  object SQLClientDataSet1: TSQLClientDataSet
    CommandText = 'select * from PRD0000'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = DataCadastros.SQLConnection1
    Left = 272
    Top = 40
  end
  object DecisionSource1: TDecisionSource
    DecisionCube = DecisionCube1
    ControlType = xtCheck
    SparseRows = False
    SparseCols = False
    Left = 248
    Top = 56
    DimensionCount = 0
    SummaryCount = 0
    CurrentSummary = 0
    SparseRows = False
    SparseCols = False
    DimensionInfo = ()
  end
  object DecisionQuery1: TDecisionQuery
    Left = 96
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = DecisionQuery1
    Left = 304
    Top = 56
  end
end
