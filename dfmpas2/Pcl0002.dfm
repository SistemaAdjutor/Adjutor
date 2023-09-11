object FormParcelasGrid: TFormParcelasGrid
  Left = 253
  Top = 60
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta de Parcelas'
  ClientHeight = 496
  ClientWidth = 573
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object lblTipo: TLabel
    Left = 3
    Top = 45
    Width = 149
    Height = 14
    Caption = 'Tipo = F (Fixo) /  V (Vari'#225'vel)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitCancelar: TBitBtn
    Left = 470
    Top = 5
    Width = 100
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 4
    OnClick = BitCancelarClick
  end
  object BitPesquisar: TBitBtn
    Left = 470
    Top = 5
    Width = 100
    Height = 25
    Caption = '&Pesquisar'
    TabOrder = 2
    OnClick = BitPesquisarClick
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 185
    Height = 41
    Caption = 'Op'#231#227'o de Pesquisa'
    TabOrder = 0
    object RadCodigo: TRadioButton
      Left = 83
      Top = 17
      Width = 63
      Height = 17
      Caption = 'C'#243'&digo'
      TabOrder = 0
      OnClick = RadCodigoClick
    end
    object RadParcela: TRadioButton
      Left = 6
      Top = 17
      Width = 67
      Height = 17
      Caption = '&Parcelas'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = RadParcelaClick
    end
  end
  object BitSair: TBitBtn
    Left = 470
    Top = 30
    Width = 100
    Height = 25
    Caption = '&Sair'
    TabOrder = 3
    OnClick = BitSairClick
  end
  object DBGridCliente: TDBGrid
    Left = 2
    Top = 65
    Width = 569
    Height = 423
    Hint = 'Duplo clique mostra Hist'#243'rico de Compras'
    Color = 16776176
    DataSource = DsConsParc
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 5
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridClienteDrawColumnCell
    OnDblClick = DBGridClienteDblClick
    OnKeyPress = DBGridClienteKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'PCL_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PCL_NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Parcelas'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 284
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PCL_TIPO'
        Title.Caption = 'Tipo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 29
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PCL_NPARCELAS'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Parc.'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PCL_DIASENTREP'
        Title.Alignment = taCenter
        Title.Caption = 'Dias'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PCL_CARENC_PRI'
        Title.Alignment = taCenter
        Title.Caption = '1'#170' Parc.'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 66
        Visible = True
      end>
  end
  object GbLista: TGroupBox
    Left = 188
    Top = 0
    Width = 281
    Height = 40
    TabOrder = 1
    object Msk_Lista: TMaskEdit
      Left = 4
      Top = 16
      Width = 270
      Height = 22
      CharCase = ecUpperCase
      TabOrder = 0
      Text = ''
      OnEnter = Msk_ListaEnter
      OnExit = Msk_ListaExit
      OnKeyPress = Msk_ListaKeyPress
    end
  end
  object SqlCdsConsParc: TSqlClientDataSet
    Aggregates = <>
    Connection = DataCadastros.SQLConnection1
    DataSet.CommandText = 
      'select '#13#10'PCL_CODIGO, '#13#10'PCL_NOME,'#13#10'PCL_TIPO,'#13#10'PCL_NPARCELAS,'#13#10'PCL' +
      '_DIASENTREP, '#13#10'PCL_CARENC_PRI, '#13#10'EMP_CODIGO '#13#10'from PCL0000'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select '#13#10'PCL_CODIGO, '#13#10'PCL_NOME,'#13#10'PCL_TIPO,'#13#10'PCL_NPARCELAS,'#13#10'PCL' +
      '_DIASENTREP, '#13#10'PCL_CARENC_PRI, '#13#10'EMP_CODIGO '#13#10'from PCL0000'
    DBConnection = DataCadastros.SQLConnection1
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 96
    Top = 152
    object SqlCdsConsParcPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object SqlCdsConsParcPCL_NOME: TStringField
      FieldName = 'PCL_NOME'
      Size = 35
    end
    object SqlCdsConsParcPCL_NPARCELAS: TSmallintField
      FieldName = 'PCL_NPARCELAS'
    end
    object SqlCdsConsParcPCL_DIASENTREP: TSmallintField
      FieldName = 'PCL_DIASENTREP'
    end
    object SqlCdsConsParcPCL_CARENC_PRI: TSmallintField
      FieldName = 'PCL_CARENC_PRI'
    end
    object SqlCdsConsParcEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsConsParcPCL_TIPO: TStringField
      FieldName = 'PCL_TIPO'
      Size = 1
    end
  end
  object DsConsParc: TDataSource
    DataSet = SqlCdsConsParc
    Left = 128
    Top = 152
  end
end
