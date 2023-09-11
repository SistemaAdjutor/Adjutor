object FormShare: TFormShare
  Left = 616
  Top = 267
  BorderIcons = [biSystemMenu]
  Caption = 'Estrutura'#231#227'o da Base de Dados Multi-Empresa'
  ClientHeight = 447
  ClientWidth = 698
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object SpdGravar: TSpeedButton
    Left = 353
    Top = 390
    Width = 100
    Height = 30
    Caption = '&Gravar'
    Enabled = False
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000CE0E0000D80E00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555550055555
      55555555577FF5555555555500005555555555557777F5555555555500005555
      555555557777FF5555555550000005555555555777777F555555550000000555
      5555557777777FF5555557000500005555555777757777F55555700555500055
      55557775555777FF5555555555500005555555555557777F5555555555550005
      555555555555777FF5555555555550005555555555555777FF55555555555570
      05555555555555777FF5555555555557005555555555555777FF555555555555
      5000555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
    OnClick = SpdGravarClick
  end
  object SpdCancelar: TSpeedButton
    Left = 466
    Top = 390
    Width = 100
    Height = 30
    Caption = '&Cancelar'
    Enabled = False
    Flat = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      04000000000068010000CE0E0000D80E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033333333333333333333333F333333333333
      0000333333333333333333333388F333333F3333000033300333333300033333
      38F38F333F88F33300003330003333300033333338F338F3F8338F3300003333
      000333000333333338F3338F833338F3000033333000300033333333338F3338
      3333F8330000333333000003333333333338F333333F83330000333333300033
      3333333333338F3333383333000033333300000333333333333338F333833333
      00003333300030003333333333333833338F3333000033330003330003333333
      33338333338F333300003330003333300033333333383338F338F33300003330
      0333333300033333338333838F338F3300003333333333333003333333833833
      38F338F300003333333333333333333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    OnClick = SpdCancelarClick
  end
  object SpeedSair: TSpeedButton
    Left = 578
    Top = 390
    Width = 100
    Height = 30
    Caption = '&Sair'
    Flat = True
    Glyph.Data = {
      42010000424D4201000000000000760000002800000013000000110000000100
      040000000000CC00000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      8888888D261788888888888800000785AA5A833333333000BB030785AA5A8300
      00000BBBBB030785AA5A830000000BBBBB030780BF2D830000000BBBBB030780
      0000830000000BBBBB0307800000830000000BBBBB0307800000830000000BBB
      B00300800000830000000BBBBB0307800441830000000BBBBB0307822B908300
      00000BBBBB0307804624830000000BBBBB0307819DD0830000000BBBBB030782
      0BB2833333333000BB03078442648888888888880000088984D8888888888888
      888888800833}
    NumGlyphs = 2
    OnClick = SpeedSairClick
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 698
    Height = 382
    Align = alTop
    Caption = 'Defini'#231#227'o'
    TabOrder = 0
    object Label1: TLabel
      Left = 64
      Top = 24
      Width = 41
      Height = 14
      Caption = 'Clientes:'
    end
    object Label2: TLabel
      Left = 400
      Top = 25
      Width = 46
      Height = 14
      Caption = 'Produtos:'
    end
    object Label3: TLabel
      Left = 65
      Top = 59
      Width = 40
      Height = 14
      Caption = 'Bancos:'
    end
    object Label4: TLabel
      Left = 362
      Top = 94
      Width = 84
      Height = 14
      Caption = 'Transportadoras:'
    end
    object Label5: TLabel
      Left = 25
      Top = 94
      Width = 80
      Height = 14
      Caption = 'Representantes:'
    end
    object Label6: TLabel
      Left = 375
      Top = 128
      Width = 71
      Height = 14
      Caption = 'Fornecedores:'
    end
    object Label7: TLabel
      Left = 48
      Top = 202
      Width = 57
      Height = 14
      Caption = 'C. Receber:'
    end
    object Label8: TLabel
      Left = 402
      Top = 201
      Width = 44
      Height = 14
      Caption = 'C. Pagar:'
    end
    object Label9: TLabel
      Left = 64
      Top = 236
      Width = 41
      Height = 14
      Caption = 'Pedidos:'
    end
    object Label10: TLabel
      Left = 397
      Top = 235
      Width = 49
      Height = 14
      Caption = 'Cota'#231#245'es:'
    end
    object Label11: TLabel
      Left = 26
      Top = 272
      Width = 79
      Height = 14
      Caption = 'Ordens Compra:'
    end
    object Label12: TLabel
      Left = 379
      Top = 271
      Width = 67
      Height = 14
      Caption = 'FichaT'#233'cnica:'
    end
    object Label13: TLabel
      Left = 17
      Top = 307
      Width = 88
      Height = 14
      Caption = 'Ordens Produ'#231#227'o:'
    end
    object Label14: TLabel
      Left = 406
      Top = 306
      Width = 40
      Height = 14
      Caption = 'Tabelas:'
    end
    object Label15: TLabel
      Left = 23
      Top = 132
      Width = 82
      Height = 14
      Caption = 'Prazos de Pagto:'
    end
    object Label16: TLabel
      Left = 364
      Top = 167
      Width = 82
      Height = 14
      Caption = 'Opera'#231#227'o Fiscal:'
    end
    object Label17: TLabel
      Left = 24
      Top = 168
      Width = 81
      Height = 14
      Caption = 'Plano de Contas:'
    end
    object Label18: TLabel
      Left = 388
      Top = 341
      Width = 58
      Height = 14
      Caption = 'Parametros:'
    end
    object Label19: TLabel
      Left = 37
      Top = 342
      Width = 68
      Height = 14
      Caption = 'Regras de ST:'
    end
    object Label20: TLabel
      Left = 348
      Top = 60
      Width = 98
      Height = 14
      Caption = 'Pre'#231'o dos Produtos:'
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 117
      Top = 13
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'CLIENTES'
      DataSource = DataCadastros.DsSharedb
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
      DataSource = DataCadastros.DsSharedb
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
      DataSource = DataCadastros.DsSharedb
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
      DataSource = DataCadastros.DsSharedb
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
      DataSource = DataCadastros.DsSharedb
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
      DataSource = DataCadastros.DsSharedb
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
      DataSource = DataCadastros.DsSharedb
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
      DataSource = DataCadastros.DsSharedb
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
      DataSource = DataCadastros.DsSharedb
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
      DataSource = DataCadastros.DsSharedb
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
      DataSource = DataCadastros.DsSharedb
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 13
      Values.Strings = (
        'E'
        'C')
    end
    object DBRadioGroup12: TDBRadioGroup
      Left = 459
      Top = 260
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'fichaTecnica'
      DataSource = DataCadastros.DsSharedb
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 14
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
      DataSource = DataCadastros.DsSharedb
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 15
      Values.Strings = (
        'E'
        'C')
    end
    object DBRadioGroup14: TDBRadioGroup
      Left = 459
      Top = 295
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'Tabelas'
      DataSource = DataCadastros.DsSharedb
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 16
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
      DataSource = DataCadastros.DsSharedb
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
      DataSource = DataCadastros.DsSharedb
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
      DataSource = DataCadastros.DsSharedb
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
      DataSource = DataCadastros.DsSharedb
      Items.Strings = (
        'Exclusivo')
      TabOrder = 17
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
      DataSource = DataCadastros.DsSharedb
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
      Top = 48
      Width = 193
      Height = 33
      Columns = 2
      DataField = 'PRODUTO_PRECO_EMPRESA'
      DataSource = DataCadastros.DsSharedb
      Items.Strings = (
        'Exclusivo'
        'Compartilhado')
      TabOrder = 19
      Values.Strings = (
        'E'
        'C')
    end
  end
end
