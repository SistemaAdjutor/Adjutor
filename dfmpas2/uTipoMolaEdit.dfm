inherited frmTipoMola: TfrmTipoMola
  Caption = 'Habilitar campos'
  ClientHeight = 562
  ClientWidth = 1096
  ExplicitWidth = 1112
  ExplicitHeight = 601
  PixelsPerInch = 96
  TextHeight = 13
  object loperacao: TLabel [0]
    Left = 7
    Top = 5
    Width = 56
    Height = 16
    Alignment = taCenter
    Caption = 'loperacao'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel [1]
    Left = 7
    Top = 27
    Width = 85
    Height = 14
    Caption = 'Mat'#233'ria-Prima'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 209
    Top = 27
    Width = 79
    Height = 14
    Caption = 'Dimensionais'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 573
    Top = 27
    Width = 88
    Height = 14
    Caption = 'Caracter'#237'sticas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 754
    Top = 26
    Width = 130
    Height = 14
    Caption = 'Informa'#231#245'es Diversas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [5]
    Left = 688
    Top = 290
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Label6: TLabel [6]
    Left = 5
    Top = 473
    Width = 64
    Height = 13
    Caption = 'Tipo de Mola:'
  end
  object Label7: TLabel [7]
    Left = 5
    Top = 495
    Width = 85
    Height = 13
    Caption = 'Varia'#231#227'o da Mola:'
  end
  object Label8: TLabel [8]
    Left = 650
    Top = 488
    Width = 92
    Height = 13
    Caption = 'Perda Padr'#227'o (mm)'
    FocusControl = cxDBTextEdit1
  end
  inherited pnUtil: TPanel
    Top = 530
    Width = 1096
    ExplicitTop = 530
    ExplicitWidth = 1096
    DesignSize = (
      1096
      32)
    inherited btnOk: TSpeedButton
      Left = 796
      ExplicitLeft = 830
    end
    inherited btnCancelar: TSpeedButton
      Left = 945
      ExplicitLeft = 979
    end
  end
  object DBCheckBox1: TDBCheckBox [10]
    Left = 7
    Top = 47
    Width = 201
    Height = 17
    Caption = 'Tempo de produ'#231#227'o em minutos'
    DataField = 'MMO_TEMPO_PRODUCAO'
    DataSource = dsEditS
    TabOrder = 1
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox2: TDBCheckBox [11]
    Left = 7
    Top = 65
    Width = 201
    Height = 17
    Caption = 'Peso espec'#237'fico em kgf por mm2'
    DataField = 'MMO_PESO_ESPECIFICO'
    DataSource = dsEditS
    TabOrder = 2
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox3: TDBCheckBox [12]
    Left = 7
    Top = 103
    Width = 201
    Height = 15
    Caption = 'Resist'#234'ncia tra'#231#227'o kgf por mm2'
    DataField = 'MMO_RES_TRACAO'
    DataSource = dsEditS
    TabOrder = 3
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox4: TDBCheckBox [13]
    Left = 7
    Top = 84
    Width = 201
    Height = 17
    Caption = 'M'#243'dulo de cisalhamento kgf por mm2'
    DataField = 'MMO_CISALHAMENTO'
    DataSource = dsEditS
    TabOrder = 4
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox5: TDBCheckBox [14]
    Left = 7
    Top = 175
    Width = 201
    Height = 19
    Caption = 'Tempo de revenimento'
    DataField = 'MMO_TEMPO_REVENIMENTO'
    DataSource = dsEditS
    TabOrder = 5
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox6: TDBCheckBox [15]
    Left = 7
    Top = 157
    Width = 201
    Height = 19
    Caption = 'Temperatura da t'#234'mpera'
    DataField = 'MMO_TEMPERATURA_TEMPERA'
    DataSource = dsEditS
    TabOrder = 6
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox7: TDBCheckBox [16]
    Left = 7
    Top = 138
    Width = 201
    Height = 19
    Caption = 'Tempo da t'#234'mpera em minutos'
    DataField = 'MMO_TEMPO_TEMPERA'
    DataSource = dsEditS
    TabOrder = 7
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox8: TDBCheckBox [17]
    Left = 7
    Top = 120
    Width = 201
    Height = 19
    Caption = 'Tratamento t'#233'rmico'
    DataField = 'MMO_TRATAMENTO_TERMICO'
    DataSource = dsEditS
    TabOrder = 8
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox9: TDBCheckBox [18]
    Left = 209
    Top = 158
    Width = 184
    Height = 16
    Caption = 'Di'#226'metro externo'
    DataField = 'MMO_DIAMETRO_EXTERNO'
    DataSource = dsEditS
    TabOrder = 9
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox10: TDBCheckBox [19]
    Left = 209
    Top = 120
    Width = 184
    Height = 19
    Caption = 'Di'#226'metro M'#233'dio'
    DataField = 'MMO_DIAMETRO_MEDIO'
    DataSource = dsEditS
    TabOrder = 10
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox11: TDBCheckBox [20]
    Left = 209
    Top = 65
    Width = 184
    Height = 17
    Caption = 'Di'#226'metro Interno'
    DataField = 'MMO_DIAMETRO_INTERNO'
    DataSource = dsEditS
    TabOrder = 11
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox12: TDBCheckBox [21]
    Left = 209
    Top = 47
    Width = 184
    Height = 17
    Caption = 'Di'#226'metro do arame'
    DataField = 'MMO_DIAMETRO_ARAME'
    DataSource = dsEditS
    TabOrder = 12
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox13: TDBCheckBox [22]
    Left = 7
    Top = 250
    Width = 201
    Height = 19
    Caption = 'Tratamento superficial'
    DataField = 'MMO_TRATAMENTO_SUPERFICIAL'
    DataSource = dsEditS
    TabOrder = 13
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox14: TDBCheckBox [23]
    Left = 7
    Top = 232
    Width = 201
    Height = 19
    Caption = 'Dureza m'#225'xima hrc'
    DataField = 'MMO_DUREZA_MAXIMA'
    DataSource = dsEditS
    TabOrder = 14
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox15: TDBCheckBox [24]
    Left = 7
    Top = 213
    Width = 201
    Height = 19
    Caption = 'Dureza m'#237'nima hrc'
    DataField = 'MMO_DUREZA_MINIMA'
    DataSource = dsEditS
    TabOrder = 15
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox16: TDBCheckBox [25]
    Left = 7
    Top = 194
    Width = 201
    Height = 19
    Caption = 'Temperatura do revenimento'
    DataField = 'MMO_TEMPERATURA_REVENIMENTO'
    DataSource = dsEditS
    TabOrder = 16
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox17: TDBCheckBox [26]
    Left = 209
    Top = 176
    Width = 184
    Height = 20
    Caption = 'Di'#226'metro externo no meio'
    DataField = 'MMO_DIAMETRO_EXTERNO_MEIO'
    DataSource = dsEditS
    TabOrder = 17
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox18: TDBCheckBox [27]
    Left = 209
    Top = 195
    Width = 184
    Height = 20
    Caption = 'Medida do v'#227'o'
    DataField = 'MMO_VAO'
    DataSource = dsEditS
    TabOrder = 18
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox19: TDBCheckBox [28]
    Left = 209
    Top = 214
    Width = 184
    Height = 20
    Caption = 'Passo'
    DataField = 'MMO_PASSO'
    DataSource = dsEditS
    TabOrder = 19
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox20: TDBCheckBox [29]
    Left = 209
    Top = 232
    Width = 184
    Height = 20
    Caption = 'Comprimento livre'
    DataField = 'MMO_COM_LIVRE'
    DataSource = dsEditS
    TabOrder = 20
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox21: TDBCheckBox [30]
    Left = 209
    Top = 251
    Width = 184
    Height = 20
    Caption = 'Comprimento s'#243'lido'
    DataField = 'MMO_COM_SOLIDO'
    DataSource = dsEditS
    TabOrder = 21
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox22: TDBCheckBox [31]
    Left = 209
    Top = 270
    Width = 184
    Height = 20
    Caption = 'N'#250'mero de espirais  '#250'teis'
    DataField = 'MMO_ESPIRAIS_UTEIS'
    DataSource = dsEditS
    TabOrder = 22
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox23: TDBCheckBox [32]
    Left = 209
    Top = 289
    Width = 184
    Height = 20
    Caption = 'N'#250'mero de espirais de total'
    DataField = 'MMO_ESPIRAL_TOTAL'
    DataSource = dsEditS
    TabOrder = 23
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox24: TDBCheckBox [33]
    Left = 209
    Top = 307
    Width = 184
    Height = 20
    Caption = 'Desenvolvimento em mm'
    DataField = 'MMO_DESENVOLVIMENTO'
    DataSource = dsEditS
    TabOrder = 24
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox25: TDBCheckBox [34]
    Left = 209
    Top = 324
    Width = 184
    Height = 18
    Caption = 'Retificado /esquadro'
    DataField = 'MMO_RETIFICADO'
    DataSource = dsEditS
    TabOrder = 25
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox26: TDBCheckBox [35]
    Left = 209
    Top = 341
    Width = 184
    Height = 18
    Caption = 'Paralelismo m'#225'ximo'
    DataField = 'MMO_PARALIELISMO'
    DataSource = dsEditS
    TabOrder = 26
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox27: TDBCheckBox [36]
    Left = 209
    Top = 358
    Width = 184
    Height = 18
    Caption = 'Perpendicularismo m'#225'ximo'
    DataField = 'MMO_PERPENDICULARIMO'
    DataSource = dsEditS
    TabOrder = 27
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox28: TDBCheckBox [37]
    Left = 209
    Top = 375
    Width = 184
    Height = 18
    Caption = 'Sentido de enrolamento'
    DataField = 'MMO_SENTIDO'
    DataSource = dsEditS
    TabOrder = 28
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox29: TDBCheckBox [38]
    Left = 209
    Top = 392
    Width = 184
    Height = 18
    Caption = 'Peso em kg'
    DataField = 'MMO_PESO'
    DataSource = dsEditS
    TabOrder = 29
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox30: TDBCheckBox [39]
    Left = 209
    Top = 409
    Width = 184
    Height = 18
    Caption = 'Observa'#231#227'o'
    DataField = 'MMO_OBSERVACAO'
    DataSource = dsEditS
    TabOrder = 30
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox31: TDBCheckBox [40]
    Left = 573
    Top = 47
    Width = 169
    Height = 17
    Caption = 'Constante especial'
    DataField = 'MMO_CONSTANTE_ESPE'
    DataSource = dsEditS
    TabOrder = 31
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox32: TDBCheckBox [41]
    Left = 573
    Top = 65
    Width = 169
    Height = 17
    Caption = 'Constante calculada'
    DataField = 'MMO_CONSTANTE_CALCULADA'
    DataSource = dsEditS
    TabOrder = 32
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox33: TDBCheckBox [42]
    Left = 573
    Top = 84
    Width = 169
    Height = 17
    Caption = 'Altura na carga L1'
    DataField = 'MMO_ALTURAL1'
    DataSource = dsEditS
    TabOrder = 33
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox34: TDBCheckBox [43]
    Left = 573
    Top = 103
    Width = 169
    Height = 15
    Caption = 'Altura na carga L2'
    DataField = 'MMO_ALTURAL2'
    DataSource = dsEditS
    TabOrder = 34
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox35: TDBCheckBox [44]
    Left = 573
    Top = 120
    Width = 169
    Height = 19
    Caption = 'Altura na carga L3'
    DataField = 'MMO_ALTURAL3'
    DataSource = dsEditS
    TabOrder = 35
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox36: TDBCheckBox [45]
    Left = 573
    Top = 138
    Width = 169
    Height = 19
    Caption = 'Altura na carga L4'
    DataField = 'MMO_ALTURAL4'
    DataSource = dsEditS
    TabOrder = 36
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox37: TDBCheckBox [46]
    Left = 573
    Top = 157
    Width = 169
    Height = 19
    Caption = 'Curso S1'
    DataField = 'MMO_CURSOS1'
    DataSource = dsEditS
    TabOrder = 37
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox38: TDBCheckBox [47]
    Left = 573
    Top = 175
    Width = 169
    Height = 19
    Caption = 'Curso S2'
    DataField = 'MMO_CURSOS2'
    DataSource = dsEditS
    TabOrder = 38
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox39: TDBCheckBox [48]
    Left = 752
    Top = 156
    Width = 184
    Height = 19
    Caption = 'Outros'
    DataField = 'MMO_OUTROS'
    DataSource = dsEditS
    TabOrder = 39
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox40: TDBCheckBox [49]
    Left = 752
    Top = 137
    Width = 184
    Height = 19
    Caption = 'Disco retifica'
    DataField = 'MMO_DISCO'
    DataSource = dsEditS
    TabOrder = 40
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox41: TDBCheckBox [50]
    Left = 752
    Top = 119
    Width = 184
    Height = 19
    Caption = 'Desp para levantar gancho'
    DataField = 'MMO_GANCHO'
    DataSource = dsEditS
    TabOrder = 41
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox42: TDBCheckBox [51]
    Left = 752
    Top = 102
    Width = 184
    Height = 15
    Caption = 'Copiador'
    DataField = 'MMO_COPIADOR'
    DataSource = dsEditS
    TabOrder = 42
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox43: TDBCheckBox [52]
    Left = 752
    Top = 83
    Width = 184
    Height = 17
    Caption = 'Cachimbo'
    DataField = 'MMO_CACHIMBO'
    DataSource = dsEditS
    TabOrder = 43
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox44: TDBCheckBox [53]
    Left = 752
    Top = 64
    Width = 184
    Height = 17
    Caption = 'Mandril'
    DataField = 'MMO_MANDRIL'
    DataSource = dsEditS
    TabOrder = 44
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox45: TDBCheckBox [54]
    Left = 752
    Top = 46
    Width = 184
    Height = 17
    Caption = 'M'#225'quina de enrolar'
    DataField = 'MMO_MAQUINA'
    DataSource = dsEditS
    TabOrder = 45
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox46: TDBCheckBox [55]
    Left = 573
    Top = 384
    Width = 169
    Height = 17
    Caption = 'Tens'#227'o na altura s'#243'lida'
    DataField = 'MMO_TENSAO'
    DataSource = dsEditS
    TabOrder = 46
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox47: TDBCheckBox [56]
    Left = 573
    Top = 367
    Width = 169
    Height = 17
    Caption = 'Carga na altura s'#243'lida'
    DataField = 'MMO_CARGA'
    DataSource = dsEditS
    TabOrder = 47
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox48: TDBCheckBox [57]
    Left = 573
    Top = 352
    Width = 169
    Height = 17
    Caption = 'Tens'#227'o 4'
    DataField = 'MMO_TENSAO4'
    DataSource = dsEditS
    TabOrder = 48
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox49: TDBCheckBox [58]
    Left = 573
    Top = 335
    Width = 169
    Height = 17
    Caption = 'Tens'#227'o 3'
    DataField = 'MMO_TENSAO3'
    DataSource = dsEditS
    TabOrder = 49
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox50: TDBCheckBox [59]
    Left = 573
    Top = 318
    Width = 169
    Height = 17
    Caption = 'Tens'#227'o 2'
    DataField = 'MMO_TENSAO2'
    DataSource = dsEditS
    TabOrder = 50
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox51: TDBCheckBox [60]
    Left = 573
    Top = 301
    Width = 169
    Height = 17
    Caption = 'Tens'#227'o 1'
    DataField = 'MMO_TENSAO1'
    DataSource = dsEditS
    TabOrder = 51
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox52: TDBCheckBox [61]
    Left = 573
    Top = 284
    Width = 169
    Height = 17
    Caption = 'Carga P4'
    DataField = 'MMO_CARGAP4'
    DataSource = dsEditS
    TabOrder = 52
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox53: TDBCheckBox [62]
    Left = 573
    Top = 267
    Width = 169
    Height = 17
    Caption = 'Carga P3'
    DataField = 'MMO_CARGAP3'
    DataSource = dsEditS
    TabOrder = 53
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox54: TDBCheckBox [63]
    Left = 573
    Top = 250
    Width = 169
    Height = 19
    Caption = 'Carga P2'
    DataField = 'MMO_CARGAP2'
    DataSource = dsEditS
    TabOrder = 54
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox55: TDBCheckBox [64]
    Left = 573
    Top = 232
    Width = 169
    Height = 19
    Caption = 'Carga P1'
    DataField = 'MMO_CARGAP1'
    DataSource = dsEditS
    TabOrder = 55
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox56: TDBCheckBox [65]
    Left = 573
    Top = 213
    Width = 169
    Height = 19
    Caption = 'Curso S4'
    DataField = 'MMO_CURSOS4'
    DataSource = dsEditS
    TabOrder = 56
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox57: TDBCheckBox [66]
    Left = 573
    Top = 194
    Width = 169
    Height = 19
    Caption = 'Curso S3'
    DataField = 'MMO_CURSOS3'
    DataSource = dsEditS
    TabOrder = 57
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox58: TDBCheckBox [67]
    Left = 752
    Top = 174
    Width = 184
    Height = 19
    Caption = 'Tipo de embalagem'
    DataField = 'MMO_TIPOEMBALAGEM'
    DataSource = dsEditS
    TabOrder = 58
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox59: TDBCheckBox [68]
    Left = 752
    Top = 193
    Width = 184
    Height = 19
    Caption = 'Localiza'#231#227'o'
    DataField = 'MMO_LOCALIZACAO'
    DataSource = dsEditS
    TabOrder = 59
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox60: TDBCheckBox [69]
    Left = 752
    Top = 212
    Width = 184
    Height = 19
    Caption = 'Acabamento superficial'
    DataField = 'ASU_CODIGO'
    DataSource = dsEditS
    TabOrder = 60
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox61: TDBCheckBox [70]
    Left = 752
    Top = 231
    Width = 184
    Height = 19
    Caption = 'Acabamento cores-pintura'
    DataField = 'ACO_CODIGO'
    DataSource = dsEditS
    TabOrder = 61
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox62: TDBCheckBox [71]
    Left = 752
    Top = 249
    Width = 184
    Height = 19
    Caption = 'Tratamento superficial'
    DataField = 'TSU_CODIGO'
    DataSource = dsEditS
    TabOrder = 62
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox63: TDBCheckBox [72]
    Left = 752
    Top = 266
    Width = 184
    Height = 17
    Caption = 'Setor'
    DataField = 'MMO_SETOR'
    DataSource = dsEditS
    TabOrder = 63
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox64: TDBCheckBox [73]
    Left = 752
    Top = 283
    Width = 184
    Height = 17
    Caption = 'Observa'#231#245'es gerais'
    DataField = 'MMO_OBSGERAIS'
    DataSource = dsEditS
    TabOrder = 64
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox67: TDBCheckBox [74]
    Left = 209
    Top = 427
    Width = 184
    Height = 17
    Caption = 'Abertura do Gancho'
    DataField = 'MMO_ABERT_GANCHO'
    DataSource = dsEditS
    TabOrder = 65
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox68: TDBCheckBox [75]
    Left = 209
    Top = 443
    Width = 193
    Height = 17
    Caption = 'Comprimento do Gancho'
    DataField = 'MMO_COMP_GANCHO'
    DataSource = dsEditS
    TabOrder = 66
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox70: TDBCheckBox [76]
    Left = 209
    Top = 84
    Width = 184
    Height = 18
    Caption = 'Di'#226'metro Externo Maior'
    DataField = 'MMO_DIAMETRO_EXT_MAIOR'
    DataSource = dsEditS
    TabOrder = 67
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox71: TDBCheckBox [77]
    Left = 209
    Top = 103
    Width = 184
    Height = 15
    Caption = 'Di'#226'metro Externo Menor'
    DataField = 'MMO_DIAMETRO_EXT_MENOR'
    DataSource = dsEditS
    TabOrder = 68
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBComboBox1: TDBComboBox [78]
    Left = 92
    Top = 468
    Width = 115
    Height = 21
    DataField = 'MMO_TIPO'
    DataSource = dsEditS
    Items.Strings = (
      'Compress'#227'o'
      'Tra'#231#227'o'
      'Tor'#231#227'o'
      'Condutor')
    TabOrder = 69
  end
  object DBComboBox2: TDBComboBox [79]
    Left = 92
    Top = 492
    Width = 115
    Height = 21
    DataField = 'MMO_VARIACAO'
    DataSource = dsEditS
    Items.Strings = (
      'Paralela'
      'Conica'
      'Biconica'
      'Convexa')
    TabOrder = 70
  end
  object DBCheckBox72: TDBCheckBox [80]
    Left = 209
    Top = 460
    Width = 184
    Height = 17
    Caption = 'Comprimento do Corpo'
    DataField = 'MMO_COMP_CORPO'
    DataSource = dsEditS
    TabOrder = 71
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox73: TDBCheckBox [81]
    Left = 209
    Top = 476
    Width = 184
    Height = 17
    Caption = 'Perda'
    DataField = 'MMO_PERDA'
    DataSource = dsEditS
    TabOrder = 72
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox74: TDBCheckBox [82]
    Left = 209
    Top = 490
    Width = 184
    Height = 17
    Caption = 'Di'#226'metro Interno Maior'
    DataField = 'MMO_DIAMETRO_INT_MAIOR'
    DataSource = dsEditS
    TabOrder = 73
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox75: TDBCheckBox [83]
    Left = 209
    Top = 506
    Width = 184
    Height = 17
    Caption = 'Di'#226'metro Interno Menor'
    DataField = 'MMO_DIAMETRO_INT_MENOR'
    DataSource = dsEditS
    TabOrder = 74
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox76: TDBCheckBox [84]
    Left = 401
    Top = 43
    Width = 168
    Height = 17
    Caption = 'Tipo da Haste (H)'
    DataField = 'MMO_TIPO_HASTE'
    DataSource = dsEditS
    TabOrder = 75
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox77: TDBCheckBox [85]
    Left = 401
    Top = 61
    Width = 168
    Height = 17
    Caption = 'Comprimento da Haste (H.A)'
    DataField = 'MMO_COMPRIMENTO_HASTE_HA'
    DataSource = dsEditS
    TabOrder = 76
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox78: TDBCheckBox [86]
    Left = 401
    Top = 80
    Width = 168
    Height = 17
    Caption = 'Comprimento da Haste (H.B)'
    DataField = 'MMO_COMPRIMENTO_HASTE_HB'
    DataSource = dsEditS
    TabOrder = 77
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox79: TDBCheckBox [87]
    Left = 401
    Top = 98
    Width = 168
    Height = 17
    Caption = 'Posi'#231#227'o da Haste'
    DataField = 'MMO_POSICAO_HASTE'
    DataSource = dsEditS
    TabOrder = 78
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox65: TDBCheckBox [88]
    Left = 401
    Top = 114
    Width = 170
    Height = 17
    Caption = 'Tipo do Gancho'
    DataField = 'GAN_CODIGO'
    DataSource = dsEditS
    TabOrder = 79
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox66: TDBCheckBox [89]
    Left = 401
    Top = 131
    Width = 170
    Height = 17
    Caption = 'Altura do Gancho'
    DataField = 'MMO_ALT_GANCHO'
    DataSource = dsEditS
    TabOrder = 80
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBCheckBox69: TDBCheckBox [90]
    Left = 209
    Top = 137
    Width = 184
    Height = 19
    Caption = 'Di'#226'metro M'#233'dio do Meio'
    DataField = 'MMO_DIAMETRO_MEDIO_MEIO'
    DataSource = dsEditS
    TabOrder = 81
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object cxDBTextEdit1: TcxDBTextEdit [91]
    Left = 749
    Top = 485
    DataBinding.DataField = 'MMO_PERDA_PADRAO'
    DataBinding.DataSource = dsEditS
    TabOrder = 82
    Width = 121
  end
  object DBCheckBox80: TDBCheckBox [92]
    Left = 401
    Top = 148
    Width = 170
    Height = 17
    Caption = 'Extremidade'
    DataField = 'MMO_EXTREMIDADE'
    DataSource = dsEditS
    TabOrder = 83
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  inherited coCalcula: TACBrCalculadora
    Left = 968
    Top = 8
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 968
    Top = 56
  end
  inherited DBConn: TSQLConnection
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver220.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=22.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver220.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=22.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'TrimChar=False'
      'DriverName=Firebird'
      'Database=C:\JOBDADOS\EXEMPLO\EXEMPLO.FDB'
      'RoleName=RoleName'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=True')
    Left = 976
    Top = 120
  end
  inherited qAux: TSQLQuery
    Left = 634
    Top = 253
  end
  inherited qAux2: TSQLQuery
    Left = 978
    Top = 356
  end
  inherited qAux3: TSQLQuery
    Left = 890
    Top = 348
  end
  inherited qEdit: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * FROM tipo_mola WHERE TIM_CODIGO=:ID')
    Left = 660
    Top = 415
  end
  inherited DspEdit: TDataSetProvider
    Left = 712
    Top = 415
  end
  inherited CdsEdit: TClientDataSet
    OnNewRecord = CdsEditNewRecord
    Left = 775
    Top = 415
    object CdsEditTIM_CODIGO: TIntegerField
      FieldName = 'TIM_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsEditPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEditMMO_TEMPO_PRODUCAO: TStringField
      FieldName = 'MMO_TEMPO_PRODUCAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_PESO_ESPECIFICO: TStringField
      FieldName = 'MMO_PESO_ESPECIFICO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_CISALHAMENTO: TStringField
      FieldName = 'MMO_CISALHAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_RES_TRACAO: TStringField
      FieldName = 'MMO_RES_TRACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_TRATAMENTO_TERMICO: TStringField
      FieldName = 'MMO_TRATAMENTO_TERMICO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_TEMPO_TEMPERA: TStringField
      FieldName = 'MMO_TEMPO_TEMPERA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_TEMPERATURA_TEMPERA: TStringField
      FieldName = 'MMO_TEMPERATURA_TEMPERA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_TEMPO_REVENIMENTO: TStringField
      FieldName = 'MMO_TEMPO_REVENIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_TEMPERATURA_REVENIMENTO: TStringField
      FieldName = 'MMO_TEMPERATURA_REVENIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_DUREZA_MINIMA: TStringField
      FieldName = 'MMO_DUREZA_MINIMA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_DUREZA_MAXIMA: TStringField
      FieldName = 'MMO_DUREZA_MAXIMA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_TRATAMENTO_SUPERFICIAL: TStringField
      FieldName = 'MMO_TRATAMENTO_SUPERFICIAL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_DIAMETRO_ARAME: TStringField
      FieldName = 'MMO_DIAMETRO_ARAME'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_DIAMETRO_INTERNO: TStringField
      FieldName = 'MMO_DIAMETRO_INTERNO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_DIAMETRO_MEDIO: TStringField
      FieldName = 'MMO_DIAMETRO_MEDIO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_DIAMETRO_EXTERNO: TStringField
      FieldName = 'MMO_DIAMETRO_EXTERNO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_DIAMETRO_EXTERNO_MEIO: TStringField
      FieldName = 'MMO_DIAMETRO_EXTERNO_MEIO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_VAO: TStringField
      FieldName = 'MMO_VAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_PASSO: TStringField
      FieldName = 'MMO_PASSO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_COM_LIVRE: TStringField
      FieldName = 'MMO_COM_LIVRE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_COM_SOLIDO: TStringField
      FieldName = 'MMO_COM_SOLIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_ESPIRAIS_UTEIS: TStringField
      FieldName = 'MMO_ESPIRAIS_UTEIS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_ESPIRAL_TOTAL: TStringField
      FieldName = 'MMO_ESPIRAL_TOTAL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_DESENVOLVIMENTO: TStringField
      FieldName = 'MMO_DESENVOLVIMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_RETIFICADO: TStringField
      FieldName = 'MMO_RETIFICADO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_PARALIELISMO: TStringField
      FieldName = 'MMO_PARALIELISMO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_PERPENDICULARIMO: TStringField
      FieldName = 'MMO_PERPENDICULARIMO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_SENTIDO: TStringField
      FieldName = 'MMO_SENTIDO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_PESO: TStringField
      FieldName = 'MMO_PESO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_OBSERVACAO: TStringField
      FieldName = 'MMO_OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_CONSTANTE_ESPE: TStringField
      FieldName = 'MMO_CONSTANTE_ESPE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_CONSTANTE_CALCULADA: TStringField
      FieldName = 'MMO_CONSTANTE_CALCULADA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_ALTURAL1: TStringField
      FieldName = 'MMO_ALTURAL1'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_ALTURAL2: TStringField
      FieldName = 'MMO_ALTURAL2'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_ALTURAL3: TStringField
      FieldName = 'MMO_ALTURAL3'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_ALTURAL4: TStringField
      FieldName = 'MMO_ALTURAL4'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_CURSOS1: TStringField
      FieldName = 'MMO_CURSOS1'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_CURSOS2: TStringField
      FieldName = 'MMO_CURSOS2'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_CURSOS3: TStringField
      FieldName = 'MMO_CURSOS3'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_CURSOS4: TStringField
      FieldName = 'MMO_CURSOS4'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_CARGAP1: TStringField
      FieldName = 'MMO_CARGAP1'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_CARGAP2: TStringField
      FieldName = 'MMO_CARGAP2'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_CARGAP3: TStringField
      FieldName = 'MMO_CARGAP3'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_CARGAP4: TStringField
      FieldName = 'MMO_CARGAP4'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_TENSAO1: TStringField
      FieldName = 'MMO_TENSAO1'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_TENSAO2: TStringField
      FieldName = 'MMO_TENSAO2'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_TENSAO3: TStringField
      FieldName = 'MMO_TENSAO3'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_TENSAO4: TStringField
      FieldName = 'MMO_TENSAO4'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_CARGA: TStringField
      FieldName = 'MMO_CARGA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_TENSAO: TStringField
      FieldName = 'MMO_TENSAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_MAQUINA: TStringField
      FieldName = 'MMO_MAQUINA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_MANDRIL: TStringField
      FieldName = 'MMO_MANDRIL'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_CACHIMBO: TStringField
      FieldName = 'MMO_CACHIMBO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_COPIADOR: TStringField
      FieldName = 'MMO_COPIADOR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_GANCHO: TStringField
      FieldName = 'MMO_GANCHO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_DISCO: TStringField
      FieldName = 'MMO_DISCO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_OUTROS: TStringField
      FieldName = 'MMO_OUTROS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_LOCALIZACAO: TStringField
      FieldName = 'MMO_LOCALIZACAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_SETOR: TStringField
      FieldName = 'MMO_SETOR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_OBSGERAIS: TStringField
      FieldName = 'MMO_OBSGERAIS'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_TIPOEMBALAGEM: TStringField
      FieldName = 'MMO_TIPOEMBALAGEM'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditART_CODIGO: TStringField
      FieldName = 'ART_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditARA_CODIGO: TStringField
      FieldName = 'ARA_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditCMO_CODIGO: TStringField
      FieldName = 'CMO_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditGAN_CODIGO: TStringField
      FieldName = 'GAN_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditACO_CODIGO: TStringField
      FieldName = 'ACO_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditASU_CODIGO: TStringField
      FieldName = 'ASU_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditTSU_CODIGO: TStringField
      FieldName = 'TSU_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object CdsEditMMO_DIAMETRO_EXT_MAIOR: TStringField
      FieldName = 'MMO_DIAMETRO_EXT_MAIOR'
      Size = 1
    end
    object CdsEditMMO_DIAMETRO_EXT_MENOR: TStringField
      FieldName = 'MMO_DIAMETRO_EXT_MENOR'
      Size = 1
    end
    object CdsEditMMO_ALT_GANCHO: TStringField
      FieldName = 'MMO_ALT_GANCHO'
      Size = 1
    end
    object CdsEditMMO_ABERT_GANCHO: TStringField
      FieldName = 'MMO_ABERT_GANCHO'
      Size = 1
    end
    object CdsEditMMO_COMP_GANCHO: TStringField
      FieldName = 'MMO_COMP_GANCHO'
      Size = 1
    end
    object CdsEditMMO_COMP_CORPO: TStringField
      FieldName = 'MMO_COMP_CORPO'
      Size = 1
    end
    object CdsEditMMO_TIPO: TStringField
      FieldName = 'MMO_TIPO'
      OnGetText = CdsEditMMO_TIPOGetText
      OnSetText = CdsEditMMO_TIPOSetText
      Size = 1
    end
    object CdsEditMMO_VARIACAO: TStringField
      FieldName = 'MMO_VARIACAO'
      OnGetText = CdsEditMMO_VARIACAOGetText
      OnSetText = CdsEditMMO_VARIACAOSetText
      Size = 1
    end
    object CdsEditMMO_PERDA: TStringField
      FieldName = 'MMO_PERDA'
      Size = 1
    end
    object CdsEditMMO_DIAMETRO_INT_MENOR: TStringField
      FieldName = 'MMO_DIAMETRO_INT_MENOR'
      Size = 1
    end
    object CdsEditMMO_DIAMETRO_INT_MAIOR: TStringField
      FieldName = 'MMO_DIAMETRO_INT_MAIOR'
      Size = 1
    end
    object CdsEditMMO_TIPO_HASTE: TStringField
      FieldName = 'MMO_TIPO_HASTE'
      Size = 1
    end
    object CdsEditMMO_COMPRIMENTO_HASTE_HA: TStringField
      FieldName = 'MMO_COMPRIMENTO_HASTE_HA'
      Size = 1
    end
    object CdsEditMMO_COMPRIMENTO_HASTE_HB: TStringField
      FieldName = 'MMO_COMPRIMENTO_HASTE_HB'
      Size = 2
    end
    object CdsEditMMO_POSICAO_HASTE: TStringField
      FieldName = 'MMO_POSICAO_HASTE'
      Size = 1
    end
    object CdsEditMMO_DIAMETRO_MEDIO_MEIO: TStringField
      FieldName = 'MMO_DIAMETRO_MEDIO_MEIO'
      Size = 1
    end
    object CdsEditMMO_PERDA_PADRAO: TFMTBCDField
      FieldName = 'MMO_PERDA_PADRAO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 18
      Size = 5
    end
    object CdsEditMMO_EXTREMIDADE: TStringField
      FieldName = 'MMO_EXTREMIDADE'
      Size = 1
    end
  end
  inherited dsEditS: TDataSource
    Left = 829
    Top = 415
  end
  inherited qAuditoria: TSQLQuery
    Left = 976
    Top = 183
  end
  inherited dspAuditoria: TDataSetProvider
    Left = 980
    Top = 247
  end
  inherited cdsAuditoria: TClientDataSet
    Left = 984
    Top = 303
  end
end
