object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 266
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 8
    Width = 964
    Height = 250
    Caption = 'Pedido'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 18
      Width = 960
      Height = 120
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'SPW_TIPOPEDIDO'
          Title.Caption = 'Tipo do Pedido'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SPW_DATA_ENTREGA'
          Title.Caption = 'Data entrega'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SPW_CLI_RAZAO'
          Title.Caption = 'Raz'#227'o do cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SPW_CLI_VF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SPW_CLI_CIDADE'
          Title.Caption = 'Cidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SPW_CEP'
          Title.Caption = 'Cep'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SPW_ENDERECO'
          Title.Caption = 'Endere'#231'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SPW_NUMERO'
          Title.Caption = 'N'#250'mero'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SPW_COMPLEMENTO'
          Title.Caption = 'Complemento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SPW_TELEFONE1'
          Title.Caption = 'Telefone 1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SPW_TELEFONE2'
          Title.Caption = 'Telefone 2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SPW_CLI_CELULAR'
          Title.Caption = 'Celular'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SPW_CLI_EMAIL'
          Visible = True
        end>
    end
  end
end
