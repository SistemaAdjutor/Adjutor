object FormCopiaFichaTec: TFormCopiaFichaTec
  Left = 218
  Top = 294
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Copiar Ficha T'#233'cnica'
  ClientHeight = 245
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 300
    Top = 208
    Width = 189
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = 'Panel3'
    Color = 12681984
    TabOrder = 0
    object Bit_Copiar: TBitBtn
      Left = 5
      Top = 4
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Copiar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        AA030000424DAA03000000000000360000002800000011000000110000000100
        18000000000074030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000FFFF7F7F7FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF00FFFF00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBF00000000FFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF0000
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000FFFF7F7F7F
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF00000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBF00000000FFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF00FFFF00000000BFBFBF00000000000000000000000000000000000000
        00000000000000000000007F7F7F7F7F7F0000000000007F7F7F00000000BFBF
        BF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
        00000000007F7F7F7F7F7F00FFFF00000000BFBFBF000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000007F7F7F00FFFF00
        FFFF00000000BFBFBF000000FFFFFF000000000000FFFFFF0000000000000000
        00FFFFFF0000000000000000000000FF0000000000007F7F7F00BFBFBF000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF0000
        FF0000FF0000FFBFBFBFBFBFBF00BFBFBF000000FFFFFF000000000000000000
        000000FFFFFF000000FFFFFF0000000000FF0000FF0000FF0000FF0000FFBFBF
        BF00BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF00BFBFBF000000FFFFFF00
        0000000000FFFFFF000000000000000000000000000000BFBFBF0000FF0000FF
        0000FFBFBFBFBFBFBF00BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FF
        FFFFFFFFFF000000BFBFBFBFBFBF0000FF0000FF0000FFBFBFBFBFBFBF00BFBF
        BF000000FFFFFF000000BFBFBFFFFFFF000000FFFFFF000000BFBFBFBFBFBF7F
        7F7F0000FF0000FF0000FFBFBFBFBFBFBF00BFBFBF000000FFFFFFFFFFFFFFFF
        FFFFFFFF000000000000BFBFBF0000FF0000FF0000FF0000FF0000FFBFBFBFBF
        BFBFBFBFBF00BFBFBF000000000000000000000000000000000000BFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBF00}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Bit_CopiarClick
    end
    object Bit_Sair: TBitBtn
      Left = 95
      Top = 4
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        CA010000424DCA01000000000000760000002800000026000000110000000100
        0400000000005401000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888FFFFFFFFFFFFFFFFFFF008888888888880000078FFFFFFFFFFFFFFFFF
        FF00833333333000BB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
        FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
        00000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFF
        FFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBB
        B003008FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFF
        FF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF00830000000BBBBB03078F
        FFFFFFFFFFFFFFFFFF00830000000BBBBB03078FFFFFFFFFFFFFFFFFFF008300
        00000BBBBB03078FFFFFFFFFFFFFFFFFFF00833333333000BB03078FFFFFFFFF
        FFFFFFFFFF008888888888880000088FFFFFFFFFFFFFFFFFFF00888888888888
        8888888FFFFFFFFFFFFFFFFFFF00}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = Bit_SairClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 489
    Height = 203
    TabOrder = 1
    object Label1: TLabel
      Left = 20
      Top = 32
      Width = 48
      Height = 13
      Caption = 'Copiar de:'
    end
    object Label2: TLabel
      Left = 11
      Top = 59
      Width = 57
      Height = 13
      Caption = 'Copiar para:'
    end
    object SpPesquisa: TSpeedButton
      Left = 453
      Top = 54
      Width = 24
      Height = 21
      Hint = 'Busca Produto'
      Flat = True
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C8C311F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7CCE39734E08211F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C2C7F8665734E08211F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C2C7F8665734E08211F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C2C7F8665734E1F7C1042CE398C311F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C2C7F104210423E53FF67BF6710422925
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C794EBF67FF67FF67FF7FFF7F524A
        8C311F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C3E53BF67FF67FF67FF7FFF7FFF67
        29251F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CBF673F4FBF67FF67FF7FFF67FF67
        4A291F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CBF67BF673F4FFF67FF67FF67FF67
        4A291F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C794EFF7FBF67BF673F4FBF67794E
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C794EFF67FF67FF673E531F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpPesquisaClick
    end
    object EdtCopiarDe: TEdit
      Left = 71
      Top = 28
      Width = 79
      Height = 21
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 0
    end
    object EdtDescCopiarDe: TEdit
      Left = 151
      Top = 28
      Width = 324
      Height = 21
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 1
    end
    object EdtCopiarPa: TEdit
      Left = 71
      Top = 55
      Width = 79
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnChange = EdtCopiarPaChange
      OnClick = EdtCopiarPaClick
      OnEnter = EdtCopiarPaEnter
      OnExit = EdtCopiarPaExit
    end
    object EdtDescCopiarPa: TEdit
      Left = 151
      Top = 55
      Width = 298
      Height = 21
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 3
    end
    object GroupBox2: TGroupBox
      Left = 18
      Top = 82
      Width = 460
      Height = 49
      Caption = 'Transfer'#234'ncia dos Itens da Ficha T'#233'cnica'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object ProgressBar1: TProgressBar
        Left = 21
        Top = 17
        Width = 421
        Height = 24
        TabOrder = 0
      end
    end
    object GroupBox3: TGroupBox
      Left = 18
      Top = 132
      Width = 460
      Height = 53
      Caption = #218'ltima Ficha C'#243'piada:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object PanFicha: TPanel
        Left = 4
        Top = 16
        Width = 451
        Height = 29
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object SqlCdsBuscaProd: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select PRD_CODIGO, PRD_REFER, PRD_DESCRI from PRD0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select PRD_CODIGO, PRD_REFER, PRD_DESCRI from PRD0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 208
    Top = 56
    object SqlCdsBuscaProdPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsBuscaProdPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsBuscaProdPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 50
    end
  end
  object SqlCdsCopiaFichaTec: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select F1.* from FTC0000 F1'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select F1.* from FTC0000 F1'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 40
    Top = 168
    object SqlCdsCopiaFichaTecPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Required = True
      Size = 11
    end
    object SqlCdsCopiaFichaTecFTC_TUP: TFMTBCDField
      FieldName = 'FTC_TUP'
      Precision = 15
    end
    object SqlCdsCopiaFichaTecFTC_CRIACAO: TSQLTimeStampField
      FieldName = 'FTC_CRIACAO'
    end
    object SqlCdsCopiaFichaTecFTC_PROC1: TStringField
      FieldName = 'FTC_PROC1'
      Size = 75
    end
    object SqlCdsCopiaFichaTecFTC_PROC2: TStringField
      FieldName = 'FTC_PROC2'
      Size = 75
    end
    object SqlCdsCopiaFichaTecFTC_PROC3: TStringField
      FieldName = 'FTC_PROC3'
      Size = 75
    end
    object SqlCdsCopiaFichaTecFTC_PROC4: TStringField
      FieldName = 'FTC_PROC4'
      Size = 75
    end
    object SqlCdsCopiaFichaTecFTC_PROC5: TStringField
      FieldName = 'FTC_PROC5'
      Size = 75
    end
    object SqlCdsCopiaFichaTecFTC_PROC6: TStringField
      FieldName = 'FTC_PROC6'
      Size = 75
    end
    object SqlCdsCopiaFichaTecFTC_PROC7: TStringField
      FieldName = 'FTC_PROC7'
      Size = 75
    end
    object SqlCdsCopiaFichaTecFTC_PROC8: TStringField
      FieldName = 'FTC_PROC8'
      Size = 75
    end
    object SqlCdsCopiaFichaTecFTC_FIXO: TFMTBCDField
      FieldName = 'FTC_FIXO'
      Precision = 15
    end
    object SqlCdsCopiaFichaTecFTC_COMPLE: TFMTBCDField
      FieldName = 'FTC_COMPLE'
      Precision = 15
    end
    object SqlCdsCopiaFichaTecFTC_INDIRETA: TFMTBCDField
      FieldName = 'FTC_INDIRETA'
      Precision = 15
    end
    object SqlCdsCopiaFichaTecFTC_LUCROUNID: TFMTBCDField
      FieldName = 'FTC_LUCROUNID'
      Precision = 15
    end
    object SqlCdsCopiaFichaTecEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object SqlCdsCopiaItemFichaTec: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 'select  F2.* from FTC_IT01 F2'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 'select  F2.* from FTC_IT01 F2'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 72
    Top = 168
    object SqlCdsCopiaItemFichaTecFTI_REGISTRO: TIntegerField
      FieldName = 'FTI_REGISTRO'
      Required = True
    end
    object SqlCdsCopiaItemFichaTecPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsCopiaItemFichaTecPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Size = 11
    end
    object SqlCdsCopiaItemFichaTecFTI_MODIFICADA: TSQLTimeStampField
      FieldName = 'FTI_MODIFICADA'
    end
    object SqlCdsCopiaItemFichaTecFTI_UC: TFMTBCDField
      FieldName = 'FTI_UC'
      Precision = 15
    end
    object SqlCdsCopiaItemFichaTecFTI_UCMODIFIC: TFMTBCDField
      FieldName = 'FTI_UCMODIFIC'
      Precision = 15
    end
    object SqlCdsCopiaItemFichaTecFTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      Size = 1
    end
    object SqlCdsCopiaItemFichaTecFTI_MODE2: TStringField
      FieldName = 'FTI_MODE2'
      Size = 1
    end
    object SqlCdsCopiaItemFichaTecFTI_MODE3: TStringField
      FieldName = 'FTI_MODE3'
      Size = 1
    end
    object SqlCdsCopiaItemFichaTecFTI_MODE4: TStringField
      FieldName = 'FTI_MODE4'
      Size = 1
    end
    object SqlCdsCopiaItemFichaTecFTI_MODE5: TStringField
      FieldName = 'FTI_MODE5'
      Size = 1
    end
    object SqlCdsCopiaItemFichaTecFTI_MODE6: TStringField
      FieldName = 'FTI_MODE6'
      Size = 1
    end
    object SqlCdsCopiaItemFichaTecFTI_MODE7: TStringField
      FieldName = 'FTI_MODE7'
      Size = 12
    end
    object SqlCdsCopiaItemFichaTecFTI_MODE8: TStringField
      FieldName = 'FTI_MODE8'
      Size = 12
    end
    object SqlCdsCopiaItemFichaTecFTI_PRECOCUSTO: TFMTBCDField
      FieldName = 'FTI_PRECOCUSTO'
      Precision = 15
    end
    object SqlCdsCopiaItemFichaTecEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
end
