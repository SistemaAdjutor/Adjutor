inherited 
  Left = 217
  Top = 94
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Detalhe'
  ClientHeight = 500
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 505
    Height = 49
    Caption = 'Cliente'
    TabOrder = 0
    object DBEdit1: TDBEdit
      Left = 8
      Top = 16
      Width = 489
      Height = 21
      DataField = 'CLI_RAZAO'
      DataSource = DS
      ReadOnly = True
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 64
    Width = 233
    Height = 49
    Caption = 'Solicitante'
    TabOrder = 1
    object DBEdit2: TDBEdit
      Left = 8
      Top = 16
      Width = 217
      Height = 21
      DataField = 'S_SOLICITANTE'
      DataSource = DS
      ReadOnly = True
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 248
    Top = 64
    Width = 129
    Height = 49
    Caption = 'Data Atendimento'
    TabOrder = 2
    object DBEdit3: TDBEdit
      Left = 8
      Top = 16
      Width = 113
      Height = 21
      DataField = 'S_DATA_ATENDIMENTO'
      DataSource = DS
      ReadOnly = True
      TabOrder = 0
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 120
    Width = 505
    Height = 137
    Caption = 'Informa'#231#245'es T'#233'cnicas'
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 76
      Height = 13
      Caption = 'Serial Fornecido'
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 64
      Height = 13
      Caption = 'Serial Gerado'
    end
    object Label3: TLabel
      Left = 16
      Top = 96
      Width = 96
      Height = 13
      Caption = 'Validade do Sistema'
    end
    object Label4: TLabel
      Left = 184
      Top = 96
      Width = 127
      Height = 13
      Caption = 'N'#250'mero do HD da esta'#231#227'o'
    end
    object DBEdit4: TDBEdit
      Left = 16
      Top = 32
      Width = 345
      Height = 21
      DataField = 'S_SERIAL_FORNECIDO'
      DataSource = DS
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 16
      Top = 72
      Width = 345
      Height = 21
      DataField = 'S_SERIAL_GERADO'
      DataSource = DS
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit6: TDBEdit
      Left = 16
      Top = 112
      Width = 113
      Height = 21
      DataField = 'S_DATA_VALIDADE'
      DataSource = DS
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit7: TDBEdit
      Left = 184
      Top = 111
      Width = 113
      Height = 21
      DataField = 'S_NUMERO_HD'
      DataSource = DS
      ReadOnly = True
      TabOrder = 3
    end
  end
  object GroupBox5: TGroupBox
    Left = 8
    Top = 264
    Width = 505
    Height = 209
    Caption = 'Informa'#231#245'es administrativas'
    TabOrder = 4
    object Label5: TLabel
      Left = 16
      Top = 24
      Width = 92
      Height = 13
       
    end
    object Label6: TLabel
      Left = 16
      Top = 48
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
    end
    object DBEdit8: TDBEdit
      Left = 117
      Top = 20
      Width = 300
      Height = 21
      DataField = 'USU_NOME'
      DataSource = DS
      ReadOnly = True
      TabOrder = 0
    end
    object DBMemo1: TDBMemo
      Left = 16
      Top = 64
      Width = 481
      Height = 137
      DataField = 'S_OBSERVACAO'
      DataSource = DS
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  object BitBtn1: TBitBtn
    Left = 208
    Top = 475
    Width = 115
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn1Click
    Kind = bkCancel
  end
  object DS: TDataSource
    DataSet = Dados_Gerador.CDS_SENHA
    Left = 360
    Top = 256
  end
end
