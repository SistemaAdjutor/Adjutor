object FormAliqICms: TFormAliqICms
  Left = 546
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 2
  Caption = 'ALIQUOTAS DE ICMS DOS ESTADOS'
  ClientHeight = 598
  ClientWidth = 1050
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel2: TPanel
    Left = 0
    Top = 570
    Width = 1050
    Height = 28
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object Bit_novo: TBitBtn
      Left = 537
      Top = 2
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = '&Novo'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333300033333300333330003333
        3300333330003333330033000000000333003300000000033300330000000003
        3300333330003333330033333000333333003333300033333300333333333333
        33003333333333333300}
      TabOrder = 0
      TabStop = False
      OnClick = Bit_novoClick
    end
    object Bit_Excluir: TBitBtn
      Left = 638
      Top = 2
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Exclui registro atual..'
      Caption = '&Excluir'
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3300333333333333330033333333333333003333333333333300333333333333
        3300333333333333330033000000000033003300000000003300330000000000
        3300333333333333330033333333333333003333333333333300333333333333
        33003333333333333300}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = Bit_ExcluirClick
    end
    object Bit_Gravar: TBitBtn
      Left = 740
      Top = 2
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
      Enabled = False
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = Bit_GravarClick
    end
    object Bit_Cancelar: TBitBtn
      Left = 841
      Top = 2
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Cancela registro atual...'
      Caption = '&Cancelar'
      Enabled = False
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TabStop = False
      OnClick = Bit_CancelarClick
    end
    object Bit_Sair: TBitBtn
      Left = 942
      Top = 2
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      Glyph.Data = {
        CA010000424DCA01000000000000760000002800000026000000110000000100
        04000000000054010000CE0E0000D80E00001000000000000000000000000000
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
      TabOrder = 4
      TabStop = False
      OnClick = Bit_SairClick
    end
  end
  object DBGridIcms: TDBGrid
    Left = 0
    Top = 185
    Width = 1050
    Height = 385
    Align = alClient
    DataSource = DataCadastros1.DsICMS
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridIcmsDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'ICM_DESTINO'
        Title.Alignment = taCenter
        Title.Caption = 'Destino'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICM_DESCR_UF'
        Title.Alignment = taCenter
        Title.Caption = 'Estado'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 236
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICM_ALIQ'
        Title.Alignment = taCenter
        Title.Caption = 'Icms Interest.'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_SUBS'
        Title.Alignment = taCenter
        Title.Caption = 'Icms destino'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICM_SUB_TRI_SN'
        Title.Alignment = taCenter
        Title.Caption = 'ST?'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICM_MVA'
        Title.Alignment = taCenter
        Title.Caption = 'MVA'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOMA_MVA_SN'
        Title.Alignment = taCenter
        Title.Caption = '+'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 16
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICM_IE_SUBTRIB'
        Title.Alignment = taCenter
        Title.Caption = 'I.E.Substituto'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMS_PROD_IMPORTADO'
        Title.Alignment = taCenter
        Title.Caption = 'Icms Interest. Importado'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 163
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 1050
    Height = 144
    Align = alTop
    Color = clBtnFace
    ParentColor = False
    TabOrder = 1
    object Label4: TLabel
      Left = 15
      Top = 43
      Width = 108
      Height = 14
      Caption = 'ICMS Interestadual % :'
    end
    object Label5: TLabel
      Left = 212
      Top = 42
      Width = 207
      Height = 14
      Caption = 'Aliquota Interna da UF para Sub.Tribut'#225'ria :'
    end
    object Label6: TLabel
      Left = 399
      Top = 67
      Width = 158
      Height = 14
      Caption = 'Insc.Est. do Substituto Tribut'#225'rio:'
    end
    object Label2: TLabel
      Left = 80
      Top = 18
      Width = 42
      Height = 14
      Caption = 'Destino :'
    end
    object Label3: TLabel
      Left = 382
      Top = 18
      Width = 36
      Height = 14
      Caption = 'Estado:'
    end
    object Label7: TLabel
      Left = 689
      Top = 18
      Width = 26
      Height = 14
      Caption = 'IBGE:'
    end
    object Label8: TLabel
      Left = 190
      Top = 122
      Width = 26
      Height = 14
      Caption = 'MVA:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 19
      Top = 122
      Width = 103
      Height = 14
      Caption = 'Subst.Tribut'#225'ria(ST)?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 281
      Top = 122
      Width = 92
      Height = 14
      Caption = 'Aplica e Soma(+)?:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 34
      Top = 68
      Width = 89
      Height = 14
      Caption = 'Redu'#231#227'o ICMS % :'
    end
    object Label13: TLabel
      Left = 179
      Top = 68
      Width = 204
      Height = 14
      Caption = ': Aliquota reduzida sob legisla'#231#227'o especial'
    end
    object Label14: TLabel
      Left = 5
      Top = 92
      Width = 120
      Height = 14
      Caption = 'Aliq.Importados ICMS % :'
    end
    object Label15: TLabel
      Left = 178
      Top = 87
      Width = 768
      Height = 28
      Caption = 
        'Publicada no Portal da NF-e em 29.11.2012, a Nota T'#233'cnica n'#186' 05/' +
        '2012 trata da repercuss'#227'o da Resolu'#231#227'o do Senado Federal n'#186' 13/2' +
        '012 e dos Ajustes SINIEF 19/2012 e 20/2012. Estes atos legais di' +
        'sp'#245'em acerca da aplica'#231#227'o da al'#237'quota de 4% nas opera'#231#245'es intere' +
        'staduais com produtos importados.'
      WordWrap = True
    end
    object lbl1: TLabel
      Left = 423
      Top = 122
      Width = 216
      Height = 14
      Caption = 'N'#227'o aplicar ST e MVA direto neste cadastro. '
      Font.Charset = ANSI_CHARSET
      Font.Color = clOlive
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 641
      Top = 122
      Width = 295
      Height = 14
      Caption = 'Orienta'#231#227'o Atual (2012) : - Construir Regras de CFOP por UF.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 508
      Top = 42
      Width = 38
      Height = 14
      Caption = 'FCP % :'
      Visible = False
    end
    object DbeIcms: TDBEdit
      Left = 125
      Top = 38
      Width = 50
      Height = 22
      DataField = 'ICM_ALIQ'
      DataSource = DataCadastros1.DsICMS
      TabOrder = 3
    end
    object DbeSub: TDBEdit
      Left = 420
      Top = 38
      Width = 50
      Height = 22
      DataField = 'ICMS_SUBS'
      DataSource = DataCadastros1.DsICMS
      TabOrder = 4
    end
    object DbeIE_Subst: TDBEdit
      Left = 560
      Top = 63
      Width = 230
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ICM_IE_SUBTRIB'
      DataSource = DataCadastros1.DsICMS
      TabOrder = 6
    end
    object DBEDestino: TDBEdit
      Left = 125
      Top = 14
      Width = 51
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 14145495
      DataField = 'ICM_DESTINO'
      DataSource = DataCadastros1.DsICMS
      ReadOnly = True
      TabOrder = 0
      OnChange = DBEDestinoChange
    end
    object DBEDestinoDesc: TDBEdit
      Left = 420
      Top = 14
      Width = 170
      Height = 22
      DataField = 'ICM_DESCR_UF'
      DataSource = DataCadastros1.DsICMS
      TabOrder = 1
    end
    object DBEIbge: TDBEdit
      Left = 718
      Top = 14
      Width = 52
      Height = 22
      DataField = 'ICM_COD_IBGE'
      DataSource = DataCadastros1.DsICMS
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 218
      Top = 118
      Width = 50
      Height = 22
      DataField = 'ICM_MVA'
      DataSource = DataCadastros1.DsICMS
      TabOrder = 8
    end
    object CbSubst_SN: TComboBox
      Left = 125
      Top = 118
      Width = 53
      Height = 22
      TabOrder = 9
      OnChange = CbSubst_SNChange
      OnEnter = CbSubst_SNEnter
      OnExit = CbSubst_SNExit
      OnKeyPress = CbSubst_SNKeyPress
      Items.Strings = (
        'N'#195'O'
        'SIM')
    end
    object CbApliSoma: TComboBox
      Left = 376
      Top = 118
      Width = 43
      Height = 22
      TabOrder = 7
      OnChange = CbApliSomaChange
      OnEnter = CbApliSomaEnter
      OnExit = CbApliSomaExit
      OnKeyPress = CbApliSomaKeyPress
      Items.Strings = (
        'N'#195'O'
        'SIM')
    end
    object DBEdit2: TDBEdit
      Left = 125
      Top = 63
      Width = 50
      Height = 22
      DataField = 'ICMS_REDUZIDO'
      DataSource = DataCadastros1.DsICMS
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 125
      Top = 89
      Width = 50
      Height = 22
      DataField = 'ICMS_PROD_IMPORTADO'
      DataSource = DataCadastros1.DsICMS
      TabOrder = 10
    end
    object DBEdit4: TDBEdit
      Left = 552
      Top = 38
      Width = 77
      Height = 22
      DataField = 'FCP_PERC'
      DataSource = DataCadastros1.DsICMS
      TabOrder = 11
      Visible = False
    end
    object dbIcmTipoCalculoDifal: TDBRadioGroup
      Left = 813
      Top = 10
      Width = 185
      Height = 75
      Caption = 'Tipo de C'#225'lculo para DIFAL'
      DataField = 'ICM_TIPO_CALCULO_DIFAL'
      DataSource = DataCadastros1.DsICMS
      Items.Strings = (
        'Base Simples'
        'Base por Dentro')
      ParentShowHint = False
      ShowHint = False
      TabOrder = 12
      Values.Strings = (
        '0'
        '1')
    end
    object BitBtn1: TBitBtn
      Left = 925
      Top = 29
      Width = 21
      Height = 20
      Caption = '?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 926
      Top = 54
      Width = 21
      Height = 20
      Caption = '?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      OnClick = BitBtn2Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1050
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 49
      Top = 14
      Width = 70
      Height = 14
      Caption = 'UF de Destino:'
    end
    object CbUf: TComboBox
      Left = 126
      Top = 9
      Width = 51
      Height = 22
      Style = csOwnerDrawFixed
      CharCase = ecUpperCase
      MaxLength = 2
      TabOrder = 1
      OnClick = CbUfClick
      OnExit = CbUfExit
      Items.Strings = (
        'PR'
        'SP'
        'RJ'
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'EX'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PE'
        'PI'
        'RN'
        'RS'
        'RO'
        'RR'
        'SE'
        'TO'
        'EX')
    end
    object DBNavigator1: TDBNavigator
      Left = 800
      Top = 6
      Width = 120
      Height = 25
      DataSource = DataCadastros1.DsICMS
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
  end
end
