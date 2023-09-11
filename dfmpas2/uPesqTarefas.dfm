inherited PesqTarefas: TPesqTarefas
  Caption = 'CRM Agenda - TAREFAS'
  ClientHeight = 574
  ClientWidth = 1323
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 1331
  ExplicitHeight = 601
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtilTop: TPanel
    Width = 1323
    ExplicitWidth = 1323
    DesignSize = (
      1323
      41)
    inherited btnConsulta: TSpeedButton
      Visible = True
    end
    inherited btnFechar: TSpeedButton
      Left = 1259
      ExplicitLeft = 791
    end
    inherited btnImprime: TSpeedButton
      Left = 1101
      Top = 1
      ExplicitLeft = 960
      ExplicitTop = 1
    end
    inherited btnExtra: TSpeedButton
      Hint = 'Finalizar tarefa (Shift+Ctrl+E)'
      Caption = 'Finalizar'
      Enabled = True
    end
    inherited btnExcel: TSpeedButton
      Left = 1181
      ExplicitLeft = 713
    end
  end
  inherited PageControl1: TPageControl
    Width = 1323
    Height = 496
    ExplicitWidth = 1323
    ExplicitHeight = 496
    inherited tsNotas: TTabSheet
      ExplicitWidth = 1315
      ExplicitHeight = 468
      inherited pnControle: TPanel
        Width = 1315
        Height = 209
        ExplicitWidth = 1315
        ExplicitHeight = 209
        inherited pnFiltro: TPanel
          Width = 1315
          Height = 282
          Align = alTop
          ExplicitWidth = 1315
          ExplicitHeight = 282
          inherited pn1: TPanel
            Top = 0
            Width = 1315
            Height = 282
            Align = alClient
            ExplicitTop = 0
            ExplicitWidth = 1315
            ExplicitHeight = 282
            DesignSize = (
              1315
              282)
            inherited btnPesquisa: TSpeedButton
              Left = 1228
              Anchors = [akTop, akRight]
              ExplicitLeft = 1064
            end
            inherited btnLimpar: TSpeedButton
              Left = 1228
              Anchors = [akTop, akRight]
              ExplicitLeft = 1064
            end
            object Label1: TLabel
              Left = 6
              Top = 11
              Width = 50
              Height = 13
              Caption = 'Vendedor:'
            end
            object Label2: TLabel
              Left = 20
              Top = 37
              Width = 37
              Height = 13
              Alignment = taRightJustify
              Caption = 'Cliente:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 461
              Top = 13
              Width = 43
              Height = 13
              Caption = 'Assunto:'
            end
            object Label6: TLabel
              Left = 461
              Top = 37
              Width = 43
              Height = 13
              Caption = 'Contato:'
            end
            object edVendedor: TSgDbSearchCombo
              Left = 111
              Top = 8
              Width = 265
              Height = 21
              EmptyText = 'TODOS VENDEDORES'
              TabOrder = 0
              CharCase = ecUpperCase
              LookupSelect = 'rep_codigo, rep_nome'
              LookupOrderBy = 'rep_nome'
              LookupTable = 'rep0000'
              LookupDispl = 'REP_NOME'
              OnSelect = edVendedorSelect
              GridAutoSize = False
              LookupSource = qRep
              LookupKeyField = 'rep_codigo'
              ShowButton = True
              LookupTableShare = 'REPRESENTANTES'
              AutoF8WinTitulo = 'Vendedores'
              AutoF8ColumnsTitulo = 'C'#243'digo, Nome'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
            end
            object PesqCliente: TSgDbSearchCombo
              Left = 111
              Top = 33
              Width = 266
              Height = 21
              EmptyText = 'TODOS OS CLIENTES'
              TabOrder = 1
              CharCase = ecUpperCase
              font.Charset = ANSI_CHARSET
              font.Color = clBlack
              font.Height = -11
              font.Name = 'Tahoma'
              font.Style = []
              LookupSelect = 
                't1.cli_valorfrete,t1.cli_valordespesas,t1.cli_codigo,t1.cli_tabp' +
                'reco,t1.cli_razao,t1.cli_cgc,t1.cli_insc,t2.cid_cidade,t2.cid_es' +
                'tado,t1.cli_modo_trib_st,cn1.cnae_carga_trib_media,t1.pcx_codigo' +
                ',t1.cli_consfinal,t1.CLI_REGIME_TRIBUTARIO,t1.OPE_CODIGO,t1.pcl_' +
                'codigo,t3.pcl_nome,t1.REP_CODIGO,t1.TRP_CODIGO,cli_fone, t1.VEND' +
                '_INTERNO_CODIGO, FPG_REGISTRO, CLI_FRETE'
              LookupOrderBy = 't1.CLI_RAZAO'
              LookupTable = 
                'cli0000 t1 left join cid0000 t2 on (t2.cid_codigo = t1.cid_codig' +
                'o) LEFT JOIN cnae CN1 ON (CN1.cnae_registro = t1.cnae_registro) ' +
                'left join pcl0000 t3 on (t3.pcl_codigo = t1.pcl_codigo)'
              LookupDispl = 'T1.CLI_RAZAO'
              OnButtonClick = PesqClienteButtonClick
              OnSelect = PesqClienteSelect
              GridAutoSize = False
              LookupSource = qCli
              LookupKeyField = 't1.cli_codigo'
              ShowButton = True
              LookupTableShare = 'CLIENTES'
              AutoF8WinTitulo = 'Clientes'
              AutoF8ColumnsTitulo = 'C'#243'digo, Nome, Fantasia'
              GridLeft = 0
              GridWidth = 0
              GridHeight = 100
              GridShowWhenEnter = False
              SelectWithDoubleClick = False
            end
            object edVendedorCodigo: TEdit
              Left = 62
              Top = 8
              Width = 46
              Height = 21
              TabOrder = 2
              OnExit = edVendedorCodigoExit
            end
            object edClienteCodigo: TEdit
              Left = 61
              Top = 33
              Width = 47
              Height = 21
              TabOrder = 3
              OnExit = edClienteCodigoExit
            end
            object GbInformePeriodo: TGroupBox
              Left = 880
              Top = 47
              Width = 317
              Height = 44
              Caption = 'Filtrar Prazo:'
              TabOrder = 4
              object Label3: TLabel
                Left = 6
                Top = 20
                Width = 60
                Height = 13
                Caption = 'Data Inicial :'
              end
              object Label4: TLabel
                Left = 165
                Top = 20
                Width = 55
                Height = 13
                Caption = 'Data Final :'
              end
              object RxDataInicial: TJvDateEdit
                Left = 68
                Top = 15
                Width = 90
                Height = 21
                Glyph.Data = {
                  4E000000424D4E000000000000003E000000280000000A000000040000000100
                  010000000000100000000000000000000000020000000200000000000000FFFF
                  FF00FFC000003300000033000000FFC00000}
                ImageKind = ikCustom
                ButtonWidth = 16
                PopupColor = clBtnFace
                ShowNullDate = False
                YearDigits = dyFour
                TabOrder = 0
              end
              object RxDataFinal: TJvDateEdit
                Left = 224
                Top = 15
                Width = 89
                Height = 21
                Glyph.Data = {
                  4E000000424D4E000000000000003E000000280000000A000000040000000100
                  010000000000100000000000000000000000020000000200000000000000FFFF
                  FF00FFC000003300000033000000FFC00000}
                ImageKind = ikCustom
                ButtonWidth = 16
                PopupColor = clBtnFace
                ShowNullDate = False
                YearDigits = dyFour
                TabOrder = 1
              end
            end
            object edAssunto: TEdit
              Left = 509
              Top = 10
              Width = 340
              Height = 21
              TabOrder = 5
              OnChange = edAssuntoChange
            end
            object rgAcao: TRadioGroup
              Left = 6
              Top = 80
              Width = 843
              Height = 56
              Caption = 'A'#231#227'o'
              Columns = 6
              Items.Strings = (
                'Email'
                'Liga'#231#227'o'
                'Visita'
                'Proposta'
                'P'#243's-Venda'
                'Venda efetiva'
                'Reuni'#227'o'
                'Manuten'#231#227'o'
                'Or'#231'amento'
                'Cobran'#231'a'
                'Todas')
              TabOrder = 6
              OnClick = rgAcaoClick
            end
            object edOrigem: TRadioGroup
              Left = 8
              Top = 140
              Width = 841
              Height = 44
              Caption = 'Origem da campanha '
              Columns = 8
              Items.Strings = (
                'Cliente'
                'Email Mkt'
                'Site/Internet'
                'Indica'#231#227'o'
                'Prospec'#231#227'o'
                'Televendas'
                'Outros'
                'Todos')
              TabOrder = 7
              OnClick = rgAcaoClick
            end
            object edContato: TEdit
              Left = 510
              Top = 35
              Width = 339
              Height = 21
              TabOrder = 8
              OnChange = edAssuntoChange
            end
            object btnPendentes: TBitBtn
              Left = 881
              Top = 97
              Width = 89
              Height = 25
              Hint = 'Filtra todas as tarefas n'#227'o finalizadas'
              Caption = 'Pendente'
              Glyph.Data = {
                AA040000424DAA04000000000000360000002800000014000000130000000100
                18000000000074040000C40E0000C40E00000000000000000000FFFFFFD8F2F8
                9ADDEE72D0E772D0E872D0E872D0E872D0E872D0E872D0E872D0E872D0E872D0
                E872D0E872D0E872D0E872D0E79ADDEED8F2F8FFFFFFD8F2F80AADD600AAD400
                AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD4
                00AAD400AAD400AAD400AAD40AADD6D8F2F896DCED00AAD400AAD400AAD400AA
                D400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400
                AAD400AAD400AAD400AAD492DAEC77D2E804ABD507ACD508ADD509ADD60AADD6
                0BAED60BAED60BAED60BAED60BAED60BAED60AADD60AADD609ADD508ADD506AC
                D504ABD502ABD472D0E87CD4E916B1D818B2D819B2D81AB3D81BB3D91BB3D91C
                B3D91CB3D91CB3D91CB3D91CB3D91BB3D91AB3D819B2D819B2D817B2D815B1D8
                14B1D775D1E986D7EB26B7DA28B7DB29B8DB2AB8DB2CB9DB2CB9DB2DB9DC2DB9
                DC2EB9DC2DB9DC2DB9DC2CB9DB2BB8DB2AB8DB29B8DB27B7DB25B6DA23B6DA7B
                D3E98BD8EB34BBDD37BCDD39BDDE3ABDDE3CBEDE3DBEDE3EBFDE3EBFDE3EBFDE
                3EBFDE3EBFDE3DBEDE3CBEDE3ABDDE38BDDE36BCDD34BBDD32BBDC80D5EB90DA
                EC42C0DF45C1E048C2E04AC3E04CC3E14DC4E14EC4E14FC4E14FC4E14FC4E14E
                C4E14DC4E14CC3E14AC3E048C2E046C1E043C0DF40BFDF83D6EB95DCED4EC4E1
                51C5E255C6E258C7E35BC8E35DC9E45FCAE460CAE461CAE460CAE45FCAE45EC9
                E45CC9E359C8E356C7E253C6E24FC4E14BC3E185D6EB98DDEE55C6E25AC8E35E
                C9E462CBE566CCE56ACDE66DCEE670CFE771D0E771D0E76FCFE76CCEE668CDE6
                64CBE561CAE45CC9E458C7E353C6E288D7EC98DDEE56C7E25BC8E35FCAE464CB
                E568CDE66CCEE671D0E775D1E877D2E877D2E874D1E870CFE76CCEE667CCE563
                CBE55EC9E45AC8E355C6E289D8EC96DCED50C5E154C6E258C7E35BC8E35FCAE4
                61CAE464CBE565CCE566CCE566CCE565CCE564CBE562CBE45FCAE45BC8E358C7
                E354C6E250C5E187D7EB91DBEC45C1E048C2E04BC3E14EC4E150C5E252C5E254
                C6E255C6E255C6E255C6E255C6E254C6E253C6E251C5E24EC4E14CC3E149C2E0
                46C1E085D7EB8CD9EB38BDDD3ABDDE3DBEDE3FBFDF41C0DF42C0DF43C0DF44C1
                DF45C1E045C1E044C1DF44C1DF43C0DF41C0DF40BFDF3EBFDE3BBEDE39BDDE81
                D5EA86D7EA29B8DB2BB8DB2DB9DC2FBADC30BADC32BBDC32BBDD33BBDD33BBDD
                33BBDD33BBDD33BBDD32BBDC31BADC30BADC2EB9DC2DB9DC2BB8DB7DD4EA7FD4
                E919B2D81BB3D91DB4D91EB4D920B5D921B5DA21B5DA22B5DA22B5DA22B5DA22
                B5DA22B5DA21B5DA21B5DA1FB4D91EB4D91DB4D91BB3D977D2E999DEEE09ADD6
                0BAED60DAED60EAFD60FAFD710AFD711B0D711B0D711B0D712B0D711B0D711B0
                D711B0D710AFD70FAFD70EAFD60DAED60AADD694DBEDDBF3F90DAED600AAD400
                AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD400AAD4
                00AAD400AAD400AAD400AAD40DAED6DBF3F9FFFFFFDBF3F99BDEEF72D0E772D0
                E872D0E872D0E872D0E872D0E872D0E872D0E872D0E872D0E872D0E872D0E872
                D0E872D0E79BDEEFDBF3F9FFFFFF}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 9
              OnClick = btnPendentesClick
            end
            object btnFinalizadas: TBitBtn
              Left = 971
              Top = 97
              Width = 89
              Height = 25
              Hint = 'Filtra as tarefas finalizadas'
              Caption = 'Finalizadas'
              Glyph.Data = {
                AA040000424DAA04000000000000360000002800000014000000130000000100
                18000000000074040000C40E0000C40E00000000000000000000FFFFFFD8EBD8
                9ACD9A72B97272B97272B97272B97272B97272B97272B97272B97272B97272B9
                7272B97272B97272B97272B9729ACD9AD8EBD8FFFFFFD8ECD80A850A00800000
                8000008000008000008000008000008000008000008000008000008000008000
                0080000080000080000080000A850AD8ECD896CB960080000080000080000080
                0000800000800000800000800000800000800000800000800000800000800000
                800000800000800000800092C99277BB770482040784070884080985090A850A
                0B850B0B860B0B860B0B860B0B860B0B850B0A850A0A850A0984090884080683
                0604820402810272B9727CBE7C168B16188C18198C191A8D1A1B8D1B1B8E1B1C
                8E1C1C8E1C1C8E1C1C8E1C1C8E1C1B8E1B1A8D1A198D19198C19178B17158A15
                148A1475BA7586C2862693262894282995292A952A2C962C2C962C2D962D2D96
                2D2E972E2D962D2D962D2C962C2B952B2A952A2994292794272593252392237B
                BD7B8BC58B349A34379B37399C393A9D3A3C9E3C3D9E3D3E9F3E3E9F3E3E9F3E
                3E9F3E3E9F3E3D9E3D3C9E3C3A9D3A389C38369B36349A3432993280C08090C7
                9042A14245A24548A4484AA54A4CA64C4DA74D4EA74E4FA84F4FA84F4FA84F4E
                A74E4DA74D4CA64C4AA54A48A44846A34643A14340A04083C18395CA954EA74E
                51A95155AA5558AC585BAD5B5DAE5D5FAF5F60B06061B06160B0605FAF5F5EAF
                5E5CAE5C59AC5956AB5653A9534FA84F4BA64B85C28598CC9855AA555AAD5A5E
                AF5E62B16266B3666AB56A6DB66D70B87071B87171B8716FB76F6CB66C68B468
                64B26461B0615CAE5C58AC5853AA5388C48898CC9856AB565BAD5B5FAF5F64B2
                6468B4686CB66C71B87175BA7577BB7777BB7774BA7470B8706CB66C67B46763
                B1635EAF5E5AAD5A55AA5589C48996CA9650A85054AA5458AC585BAD5B5FAF5F
                61B06164B26465B36566B36666B36665B36564B26462B1625FAF5F5BAD5B58AC
                5854AA5450A85087C38791C89145A24548A4484BA54B4EA74E50A85052A95254
                AA5455AA5555AA5555AA5555AA5554AA5453A95351A8514EA74E4CA64C49A449
                46A34685C3858CC58C389C383A9D3A3D9E3D3F9F3F41A04142A14243A14344A2
                4445A24545A24544A24444A24443A14341A04140A0403E9F3E3B9E3B399C3981
                C08186C2862995292B952B2D962D2F972F309830329932329932339933339A33
                339A33339A333399333299323198313098302E972E2D962D2B952B7DBF7D7FBF
                7F198D191B8E1B1D8E1D1E8F1E20902021902121912122912222912222912222
                91222291222191212190211F901F1E8F1E1D8E1D1B8E1B77BC7799CD99098509
                0B860B0D860D0E870E0F880F1088101188111189111189111289121189111189
                111188111088100F880F0E870E0D860D0A850A94C994DBEDDB0D860D00800000
                8000008000008000008000008000008000008000008000008000008000008000
                0080000080000080000080000D860DDBEDDBFFFFFFDBEDDB9BCD9B72B97272B9
                7272B97272B97272B97272B97272B97272B97272B97272B97272B97272B97272
                B97272B9729BCD9BDBEDDBFFFFFF}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 10
              OnClick = btnFinalizadasClick
            end
            object btnAutorizadas: TBitBtn
              Left = 1154
              Top = 97
              Width = 63
              Height = 25
              Hint = 'Mostra todas tarefas'
              Caption = 'Todos'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 11
              OnClick = btnAutorizadasClick
            end
            object btnAtrasada: TBitBtn
              Left = 1061
              Top = 97
              Width = 89
              Height = 25
              Hint = 'Filtra as tarefas atrasadas'
              Caption = 'Atrasada'
              Glyph.Data = {
                AA040000424DAA04000000000000360000002800000014000000130000000100
                18000000000074040000C40E0000C40E00000000000000000000FFFFFFD8D8F2
                9A9ADD7272D07272D07272D07272D07272D07272D07272D07272D07272D07272
                D07272D07272D07272D07272D09A9ADDD8D8F2FFFFFFD8D8F20A0AAD0000AA00
                00AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA
                0000AA0000AA0000AA0000AA0A0AADD8D8F29696DC0000AA0000AA0000AA0000
                AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA00
                00AA0000AA0000AA0000AA9292DA7777D20404AB0707AC0808AD0909AD0A0AAD
                0B0BAE0B0BAE0B0BAE0B0BAE0B0BAE0B0BAE0A0AAD0A0AAD0909AD0808AD0606
                AC0404AB0202AB7272D07C7CD41616B11818B21919B21A1AB31B1BB31B1BB31C
                1CB31C1CB31C1CB31C1CB31C1CB31B1BB31A1AB31919B21919B21717B21515B1
                1414B17575D18686D72626B72828B72929B82A2AB82C2CB92C2CB92D2DB92D2D
                B92E2EB92D2DB92D2DB92C2CB92B2BB82A2AB82929B82727B72525B62323B67B
                7BD38B8BD83434BB3737BC3939BD3A3ABD3C3CBE3D3DBE3E3EBF3E3EBF3E3EBF
                3E3EBF3E3EBF3D3DBE3C3CBE3A3ABD3838BD3636BC3434BB3232BB8080D59090
                DA4242C04545C14848C24A4AC34C4CC34D4DC44E4EC44F4FC44F4FC44F4FC44E
                4EC44D4DC44C4CC34A4AC34848C24646C14343C04040BF8383D69595DC4E4EC4
                5151C55555C65858C75B5BC85D5DC95F5FCA6060CA6161CA6060CA5F5FCA5E5E
                C95C5CC95959C85656C75353C64F4FC44B4BC38585D69898DD5555C65A5AC85E
                5EC96262CB6666CC6A6ACD6D6DCE7070CF7171D07171D06F6FCF6C6CCE6868CD
                6464CB6161CA5C5CC95858C75353C68888D79898DD5656C75B5BC85F5FCA6464
                CB6868CD6C6CCE7171D07575D17777D27777D27474D17070CF6C6CCE6767CC63
                63CB5E5EC95A5AC85555C68989D89696DC5050C55454C65858C75B5BC85F5FCA
                6161CA6464CB6565CC6666CC6666CC6565CC6464CB6262CB5F5FCA5B5BC85858
                C75454C65050C58787D79191DB4545C14848C24B4BC34E4EC45050C55252C554
                54C65555C65555C65555C65555C65454C65353C65151C54E4EC44C4CC34949C2
                4646C18585D78C8CD93838BD3A3ABD3D3DBE3F3FBF4141C04242C04343C04444
                C14545C14545C14444C14444C14343C04141C04040BF3E3EBF3B3BBE3939BD81
                81D58686D72929B82B2BB82D2DB92F2FBA3030BA3232BB3232BB3333BB3333BB
                3333BB3333BB3333BB3232BB3131BA3030BA2E2EB92D2DB92B2BB87D7DD47F7F
                D41919B21B1BB31D1DB41E1EB42020B52121B52121B52222B52222B52222B522
                22B52222B52121B52121B51F1FB41E1EB41D1DB41B1BB37777D29999DE0909AD
                0B0BAE0D0DAE0E0EAF0F0FAF1010AF1111B01111B01111B01212B01111B01111
                B01111B01010AF0F0FAF0E0EAF0D0DAE0A0AAD9494DBDBDBF30D0DAE0000AA00
                00AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA0000AA
                0000AA0000AA0000AA0000AA0D0DAEDBDBF3FFFFFFDBDBF39B9BDE7272D07272
                D07272D07272D07272D07272D07272D07272D07272D07272D07272D07272D072
                72D07272D09B9BDEDBDBF3FFFFFF}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 12
              OnClick = btnAtrasadaClick
            end
            object GroupBox1: TGroupBox
              Left = 880
              Top = 5
              Width = 315
              Height = 44
              Caption = 'Aberto entre :'
              TabOrder = 13
              object Label7: TLabel
                Left = 6
                Top = 19
                Width = 60
                Height = 13
                Caption = 'Data Inicial :'
              end
              object Label8: TLabel
                Left = 164
                Top = 19
                Width = 55
                Height = 13
                Caption = 'Data Final :'
              end
              object RxDataAbertIni: TJvDateEdit
                Left = 68
                Top = 15
                Width = 90
                Height = 21
                Glyph.Data = {
                  4E000000424D4E000000000000003E000000280000000A000000040000000100
                  010000000000100000000000000000000000020000000200000000000000FFFF
                  FF00FFC000003300000033000000FFC00000}
                ImageKind = ikCustom
                ButtonWidth = 16
                PopupColor = clBtnFace
                ShowNullDate = False
                YearDigits = dyFour
                TabOrder = 0
              end
              object RxDataAbertFim: TJvDateEdit
                Left = 223
                Top = 15
                Width = 89
                Height = 21
                Glyph.Data = {
                  4E000000424D4E000000000000003E000000280000000A000000040000000100
                  010000000000100000000000000000000000020000000200000000000000FFFF
                  FF00FFC000003300000033000000FFC00000}
                ImageKind = ikCustom
                ButtonWidth = 16
                PopupColor = clBtnFace
                ShowNullDate = False
                YearDigits = dyFour
                TabOrder = 1
              end
            end
            object edPendente: TPanel
              Left = 882
              Top = 128
              Width = 88
              Height = 20
              Caption = ' 00'
              Color = 3260413
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 14
            end
            object edFinalizada: TPanel
              Left = 973
              Top = 128
              Width = 88
              Height = 20
              Caption = ' 00'
              Color = 33792
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 15
            end
            object edAtrasada: TPanel
              Left = 1062
              Top = 128
              Width = 88
              Height = 20
              Caption = ' 00'
              Color = 223
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 16
            end
            object chkFinalizadas: TCheckBox
              Left = 6
              Top = 189
              Width = 153
              Height = 17
              Caption = 'Ocultar tarefas Finalizadas'
              Checked = True
              State = cbChecked
              TabOrder = 17
              OnClick = chkFinalizadasClick
            end
            object edPesquisaLivre: TLabeledEdit
              Left = 111
              Top = 60
              Width = 738
              Height = 21
              EditLabel.Width = 87
              EditLabel.Height = 13
              EditLabel.Caption = 'Empresa ou email:'
              LabelPosition = lpLeft
              TabOrder = 18
            end
            object Button1: TButton
              Left = 880
              Top = 154
              Width = 158
              Height = 25
              Caption = 'Retornar ao Or'#231'amento'
              TabOrder = 19
              OnClick = Button1Click
            end
            object chkMultiempresa: TCheckBox
              Left = 173
              Top = 189
              Width = 153
              Height = 17
              Caption = 'Visualizar Multiempresa'
              TabOrder = 20
              OnClick = chkMultiempresaClick
            end
          end
        end
      end
      inherited DBGrid: TDBGrid
        Top = 209
        Width = 1315
        Height = 259
        OnCellClick = DBGridCellClick
        OnDrawColumnCell = DBGridDrawColumnCell
        OnMouseWheel = DBGridMouseWheel
        Columns = <
          item
            Expanded = False
            FieldName = 'EMP_CODIGO'
            Title.Caption = 'Empresa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRF_REGISTRO'
            Title.Caption = 'ID da Tarefa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRF_PRAZO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Caption = 'Prazo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRF_FINALIZADA'
            Title.Caption = 'Situa'#231#227'o'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRF_DATAABERTURA'
            Title.Caption = 'Aberto em'
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRF_DATA_REGISTRO'
            Title.Caption = 'Atualizado em'
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRF_CONTATO'
            Title.Caption = 'Contato'
            Width = 122
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_CODIGO'
            Title.Caption = 'Codigo'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cli_razao'
            Title.Caption = 'Cliente/Empresa'
            Width = 281
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRF_ASSUNTO'
            Title.Caption = 'Assunto'
            Width = 147
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REP_CODIGO'
            Title.Caption = 'C'#243'digo'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REP_NOME'
            Title.Caption = 'Vendedor'
            Width = 201
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRF_ACAO'
            Title.Caption = 'A'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRF_ORIGEM'
            Title.Caption = 'Origem'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRF_STATUS_FINAL'
            Title.Caption = 'Status da finaliza'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRF_EMAILCONTATO'
            Title.Caption = 'Email'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRF_ENDERECO'
            Title.Caption = 'Endere'#231'o'
            Visible = True
          end>
      end
    end
  end
  inherited Panel2: TPanel
    Top = 537
    Width = 1323
    Height = 37
    ExplicitTop = 537
    ExplicitWidth = 1323
    ExplicitHeight = 37
    DesignSize = (
      1323
      37)
    inherited btnSelect: TSpeedButton
      Left = 1175
      Enabled = False
      ExplicitLeft = 707
    end
    inherited lbCntRegistros: TLabel
      Top = 12
      ExplicitTop = 12
    end
  end
  inherited coCalcula: TACBrCalculadora
    Left = 1152
    Top = 88
  end
  inherited DBConn: TSQLConnection
    Left = 184
    Top = 376
  end
  inherited Timer1: TTimer
    Left = 260
    Top = 400
  end
  inherited qBusco: TSQLQuery
    Top = 281
  end
  inherited dspBusco: TDataSetProvider
    Left = 324
    Top = 321
  end
  inherited cdsBusco: TClientDataSet
    StoreDefs = True
    AfterPost = cdsBuscoAfterPost
    Left = 388
    Top = 289
    object CdsEditTRF_REGISTRO: TIntegerField
      FieldName = 'TRF_REGISTRO'
    end
    object cdsBuscoTRF_DATA_REGISTRO: TSQLTimeStampField
      FieldName = 'TRF_DATA_REGISTRO'
      OnGetText = cdsBuscoTRF_DATA_REGISTROGetText
      DisplayFormat = 'dd/mm/yyyy hh:nn'
      EditMask = 'dd/mm/yyyy hh:nn'
    end
    object CdsEditREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object CdsEditCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 3
    end
    object CdsBuscoTRF_PRAZO: TSQLTimeStampField
      FieldName = 'TRF_PRAZO'
      OnGetText = CdsBuscoTRF_PRAZOGetText
      DisplayFormat = 'dd/mm/yyyy hh:nn'
      EditMask = 'dd/mm/yyyy hh:nn'
    end
    object CdsEditTRF_FINALIZADA: TStringField
      FieldName = 'TRF_FINALIZADA'
      OnGetText = CdsEditTRF_FINALIZADAGetText
      Size = 1
    end
    object CdsEditTRF_EXCLUIDO: TStringField
      FieldName = 'TRF_EXCLUIDO'
      Size = 1
    end
    object cdsBuscoTRF_ORIGEM: TIntegerField
      FieldName = 'TRF_ORIGEM'
      OnGetText = cdsBuscoTRF_ORIGEMGetText
    end
    object cdsBuscoTRF_NIVEL: TIntegerField
      FieldName = 'TRF_NIVEL'
      OnGetText = cdsBuscoTRF_NIVELGetText
    end
    object cdsBuscoTRF_EMAILCONTATO: TStringField
      FieldName = 'TRF_EMAILCONTATO'
      Size = 60
    end
    object cdsBuscoTRF_CONTATOFONE: TStringField
      FieldName = 'TRF_CONTATOFONE'
      Size = 11
    end
    object cdsBuscoTRF_CONTATO: TStringField
      FieldName = 'TRF_CONTATO'
      Size = 60
    end
    object cdsBuscoTRF_ACAO: TIntegerField
      FieldName = 'TRF_ACAO'
      OnGetText = cdsBuscoTRF_ACAOGetText
    end
    object cdsBuscoTRF_ENDERECO: TStringField
      FieldName = 'TRF_ENDERECO'
      Size = 100
    end
    object cdsBuscoTRF_DATA_FINA: TSQLTimeStampField
      FieldName = 'TRF_DATA_FINA'
      DisplayFormat = 'dd/mm/yyyy HH:MI'
    end
    object cdsBuscoTRF_DATA_EXCL: TSQLTimeStampField
      FieldName = 'TRF_DATA_EXCL'
    end
    object cdsBuscocli_razao: TStringField
      FieldName = 'cli_razao'
      Size = 55
    end
    object cdsBuscoTRF_ASSUNTO: TBlobField
      FieldName = 'TRF_ASSUNTO'
      OnGetText = cdsBuscoTRF_ASSUNTOGetText
      Size = 200
    end
    object cdsBuscoREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object cdsBuscoTRF_STATUS_FINAL: TStringField
      FieldName = 'TRF_STATUS_FINAL'
      OnGetText = cdsBuscoTRF_STATUS_FINALGetText
      Size = 1
    end
    object cdsBuscoTRF_DATAABERTURA: TSQLTimeStampField
      FieldName = 'TRF_DATAABERTURA'
    end
    object cdsBuscoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object cdsBuscoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  inherited dsBusca: TDataSource
    Left = 468
    Top = 400
  end
  inherited mnuGridPesquisa: TPopupMenu
    Left = 828
    Top = 440
  end
  object qRep: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select rep_codigo, rep_nome'
      'from rep0000'
      'Where rep_codigo='#39'-1'#39
      'order by rep_nome'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 441
    Top = 300
  end
  object qCli: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select t1.cli_codigo,'
      '       t1.cli_tabpreco,'
      '       t1.cli_razao,'
      '       t1.cli_cgc,'
      '       t1.cli_insc,'
      '       t2.cid_cidade,'
      '       t2.cid_estado,'
      '       t1.cli_modo_trib_st,'
      '       cn1.cnae_carga_trib_media,'
      '       t1.pcx_codigo,'
      '       t1.cli_consfinal,'
      '       t1.CLI_REGIME_TRIBUTARIO,'
      '       t1.OPE_CODIGO,'
      '       t1.pcl_codigo,'
      '       t3.pcl_nome,'
      '       t1.REP_CODIGO,'
      '       t1.TRP_CODIGO,'
      '       t1.cli_fone'
      'from cli0000 t1'
      '       left join cid0000 t2 on (t2.cid_codigo = t1.cid_codigo)'
      
        '       LEFT JOIN cnae CN1 ON (CN1.cnae_registro = t1.cnae_regist' +
        'ro)'
      '       left join pcl0000 t3 on (t3.pcl_codigo = t1.pcl_codigo)'
      'Where t1.Cli_Codigo='#39'-1'#39
      'order by t1.cli_razao'
      ''
      '')
    SQLConnection = DataCadastros.SQLConnection1
    Left = 393
    Top = 348
  end
  object Imagens: TImageList
    Left = 936
    Top = 328
    Bitmap = {
      494C01010E001100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066666600666666006666
      6600666666006666660066666600666666006666660066666600666666006666
      6600666666006666660066666600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000066666600CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CECFCE00666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006666660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A00000000000000000000000000000000006666660000000000000000000065
      6300000000000065630000000000000000000000000000000000000000000000
      0000000000000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A000000
      0000000000000000000000000000000000006666660000000000000000000000
      0000006563009CCFCE0000659C00000000000000000000000000000000000000
      0000000000000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4A000000
      00000000000000000000000000000000000000000000000000004A4A4A004A4A
      4A00000000000000000000000000000000006666660000000000000000000000
      000000659C0000000000009AFF0000659C000000000000000000000000000000
      0000000000000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4A000000
      00004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A00000000000000000000000000000000006666660000000000000000000000
      00000000000000659C0000000000009AFF0000659C0000000000000000000000
      0000000000000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A4A4A00000000000000
      000000000000000000000000000000000000000000004A4A4A004A4A4A00E7C6
      A5004A4A4A000000000000000000000000006666660000000000000000000000
      0000000000000000000000659C0000000000009AFF0000659C00000000000000
      0000000000000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A4A4A00000000004A4A
      4A004A4A4A004A4A4A004A4A4A00000000004A4A4A00000000004A4A4A00E7C6
      A5004A4A4A000000000000000000000000006666660000000000000000000000
      000000000000000000000000000000659C0000000000009AFF0000659C000000
      0000000000000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A0000000000000000000000
      0000000000000000000000000000000000004A4A4A0000000000000000004A4A
      4A00A5A5A5004A4A4A0000000000000000006666660000000000000000000000
      00000000000000000000000000000000000000659C0000000000009AFF000065
      9C00000000000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A000000000000000000000000004A4A
      4A00D6D6D6004A4A4A0000000000000000006666660000000000000000000000
      0000000000000000000000000000000000000000000000659C00000000000000
      00009C659C000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7C6A500A5A5A5004A4A4A00000000006666660000000000000000000000
      0000000000000000000000000000000000000000000000000000313063000000
      00009C9ACE000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A00DEA58C00DEA58C004A4A4A006666660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003130
      6300313063000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A004A4A4A004A4A4A00000000006666660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000066666600CECFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CECFCE00666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066666600666666006666
      6600666666006666660066666600666666006666660066666600666666006666
      6600666666006666660066666600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B73007B737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031521000638C39006B9442006B94
      42006B9442006B9442006B9442006B9442006B9442006B9442006B9442006B94
      42006B9442006B9442006B944200294A08000000000000000000000000000000
      00007B7B7B00EFEFEF00F7F7F700DEDEDE00C6C6C6007B7B7B006B6B6B000000
      000000000000000000000000000000000000000000007B7B7B004A637B00FFE7
      C600F7DEBD00F7DEB500F7D6AD00F7D6A500F7CE9C00F7CE9C00F7CE9C00F7CE
      9C00F7CE9C00EFCE94009C6B6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A843900638C390063843900638C
      3900638C3900638C3900638C3900638C3900638C3900638C3900638C3900638C
      3900638C3900638C3900638C3900638439000000000000000000000000007B7B
      7B0094949400FFFFFF00F7F7F700E7E7E700DEDEDE00216B940008527B005263
      6B006B6B6300000000000000000000000000000000006B9CC600188CEF00CE94
      9400F7DEC600F7DEB500F7D6B500F7D6A500F7CE9C00EFCE9400EFCE9400EFCE
      9400EFCE9400EFCE94009C6B6300000000000000000000000000000000000000
      000000000000BDC6C600429C6B00000000000000000000000000000000000000
      00000000000000000000000000000000000052842900527B2900527B31005A7B
      31005A7B31005A7B31005A7B31005A7B31005A7B31005A7B31005A7B31005A7B
      31005A7B31005A7B31005A7B31005A843100000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00E7E7E700216B9400004A8400004A
      840084A5B500BDBDBD00B5B5B50000000000000000000000000052B5FF001884
      E7004A7BA500F7DEC600F7DEBD00F7D6B500F7D6AD00F7CEA500EFCE9C00EFCE
      9400EFCE9400EFCE94009C6B6300000000000000000000000000000000000000
      0000A5ADA50042D68400BDF7D600299452000000000000000000000000000000
      0000000000000000000000000000000000005273290052732900527329005273
      2900527329005273290052732900527329005273290052732900527329005273
      29005273290052732900527329004A7331000000000084848400CECECE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00EFEFEF00216B9C00004A8400004A
      84008CA5B500BDBDBD00BDBDBD00000000000000000000000000AD7B7B004AB5
      FF00188CE700BD949400F7DEC600F7DEB500F7D6B500F7D6A500F7CEA500EFCE
      9400EFCE9400EFCE94009C6B6300000000000000000000000000000000009CAD
      A50029C6730052EF940084F7BD00CEFFE70021944A0000000000000000000000
      00000000000000000000000000000000000042632100426B21004A6B2900E7F7
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5CEAD004A6B2100426B2100426B180000000000C6BDBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700216B9C00004A8400004A
      840094ADBD00CECECE00C6C6C600000000000000000000000000AD847B00FFF7
      E70052BDFF00A5848400AD847B00EFE7C600FFFFD600CEADA500B5848400F7CE
      A500EFCE9C00EFCE94009C6B6300000000000000000000000000849C8C0021C6
      630010DE5A0042E7840063EFA5007BF7B50094EFBD00108C3900000000000000
      00000000000000000000000000000000000039631800315A100039522100FFFF
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FF
      EF00FFFFF700425A2100315A18003963100000000000C6BDBD00FFFFFF00FFFF
      FF00EFF7F700ADC6D600FFFFFF00FFFFFF00FFFFFF0021739C00004A8400004A
      840094B5C600CECECE00CECECE00000000000000000000000000B58C7B00FFF7
      EF00FFEFE700B5848400F7DEB500FFFFDE00FFFFDE00FFFFEF00EFDEDE00DEBD
      9C00F7CE9C00EFCE94009C6B63000000000000000000638C6B0010BD5A0000CE
      390000D64A0018DE630039E77B0042E7840039E77B004AE78C00008C2900FFFF
      FF0000000000000000000000000000000000315A1000315A180031521800FFFF
      FF004A633100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B8C
      6300FFFFFF0031521000295A1800315A100000000000C6BDBD00EFF7F7000042
      6B00006BA5000063940000528400FFFFFF00FFFFFF00FFFFFF00CEDEE7004A8C
      AD00ADC6D600DEDEDE00D6D6D600000000000000000000000000BD8C8400FFFF
      FF00FFF7F700EFD6A500F7CE9400FFFFDE00FFFFE700FFFFFF00FFFFEF00AD7B
      7B00F7D6AD00EFCE9C009C6B6300000000006B8C730000AD420000BD310000C6
      390000CE420008D64A0021DE630021DE630010DE5A0000D6420018D663000884
      2900FFFFFF00000000000000000000000000315A1000295A100039521000FFFF
      FF00FFFFFF00738C6300FFFFF700ADC69C0073845A00F7FFFF00526B3900FFFF
      EF00FFFFFF00315A180029521800315A100000000000C6BDBD00104A7300008C
      C60000BDFF000094CE0000639400427B9400FFFFFF00FFFFFF00FFFFFF00EFEF
      EF00EFEFEF00DEDEDE00DEDEDE0000426B000000000000000000BD948400FFFF
      FF00FFFFF700FFDEAD00EFBD8400FFFFDE00FFFFDE00FFFFEF00FFFFE700AD7B
      7300F7D6B500EFCEA5009C6B63000000000000A5310000AD210021C64A005AD6
      7B0063DE840031DE6B0008D64A0063E78C005ADE84005ADE840039D66B0000C6
      4200007B1800EFEFEF000000000000000000315A1000315A100039521800F7F7
      F700FFFFF700D6EFBD006B845200FFFFFF00FFFFFF0042632100F7FFEF00FFFF
      FF00FFFFFF00395A1800315A1800315A180000000000008CCE0000BDFF0000BD
      FF0000BDFF0000ADEF0000ADEF000063940000427300FFFFFF00FFFFFF00FFFF
      FF00F7F7F7004A7B9C0000396B00000000000000000000000000C69C8400FFFF
      FF00FFFFFF00D6BDA500FFEFC600F7D69C00FFE7BD00FFFFD600FFFFDE00CEA5
      9400F7DEBD00F7D6AD009C6B63000000000010A5290084D694007BD694007BDE
      940039D66300C6D6CE000000000008CE420084E7A5007BDE9C007BDE94007BDE
      940000B5290000730800E7E7E700000000003963180039631800395A1800FFFF
      FF00848C6B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700B5BD
      AD00FFFFFF00395A1800315A2100396318000000000000BDFF0000BDFF0000BD
      FF0000BDFF0000ADEF0000ADEF000084C60000639400427B9400FFFFFF00FFFF
      FF00D6DEE70000426B00005A9400000000000000000000000000CE9C8C00FFFF
      FF00FFFFFF00B58C8400F7EFEF00F7CE9C00F7BD8C00FFE7B500F7E7BD00E7CE
      B500F7DEC600DEC6A5009C6B6300000000000000000021A53100A5DEAD0042CE
      6300C6D6C60000000000000000000000000018C64200A5E7B5009CE7AD009CDE
      AD009CDEAD0000A52100006B0000E7E7E70042632100426B180042632900BDCE
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7EF
      E700E7F7DE0042632100426B1800426B18000000000000639C0000ADEF0000BD
      FF0000BDFF0000ADEF0000ADEF00009CDE00009CD60000639400004273000031
      5A00005284000000000000000000000000000000000000000000D6A58C00FFFF
      FF00FFFFFF00FFFFFF00EFDEDE00AD847B00AD7B7300CEADA500E7D6C600E7DE
      CE00CEBDAD00B5AD9C009C6B630000000000000000000000000042A55200E7E7
      E700000000000000000000000000000000000000000031AD4A00BDEFCE00BDE7
      C600BDE7C600C6E7C600089C18007B947B004A7329004A73290052732900FFFF
      FF00FFFFFF00FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00FFFF
      FF00F7FFF7004A7329004A6B29004A732900000000000000000000639C0000BD
      FF0000BDFF0000ADEF0000ADEF0008ADE700009CDE00007BB500006394000052
      8400006394000000000000000000000000000000000000000000D6A58C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7EF00EFDED600AD84
      7300AD7B7300AD7B7300AD847300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029A53900DEF7
      E700D6EFDE00DEF7DE006BC67300C6D6C600527B31005A7B390052842900527B
      3100527B3100527B31005284310052843100528431005A7B31005A8431005A84
      3100528429005A7B39005A842900527B31000000000000000000000000000063
      9C0000B5F70000ADEF0000ADEF0031CEF70000BDFF00008CC60000639C000000
      0000000000000000000000000000000000000000000000000000DEAD8C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00EFC6
      8C00F7BD6B00BD84840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A9C
      4A00F7FFF7004AB55200DEE7DE0000000000638C39005A8439005A8439005A84
      39005A8439005A8439005A8439005A8439005A8439005A8439005A8439005A84
      39005A8439005A8439005A8439005A8C31000000000000000000000000000000
      000000639C0000ADEF0000ADEF0031CEF70000BDFF0000639C00000000000000
      0000000000000000000000000000000000000000000000000000DEAD8C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6D600EFC6
      8C00F7BD6B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005A945A00F7F7F70000000000000000006B8C39006B8C42006B944200638C
      4200638C4200638C4200638C4200638C4200638C4200638C4200638C4200638C
      4200638C4200638C4200638C4200638C42000000000000000000000000000000
      00000000000000639C0000639C00005A8C00004A7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400BD84
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000394A21005A8431006B9442006B94
      42006B9442006B9442006B9442006B9442006B9442006B9442006B9442006B94
      42006B9442006B9442006B9442003142100000000000D8D8F2007272D0007272
      D0007272D0007272D0007272D0007272D0007272D0007272D0007272D0007272
      D0007272D0007272D000D8D8F2000000000000000000D8D8D800727272007272
      7200727272007272720072727200727272007272720072727200727272007272
      72007272720072727200D8D8D800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8D8F2000A0AAD000000AA000000
      AA000000AA000000AA000000AA000000AA000000AA000000AA000000AA000000
      AA000000AA000000AA000A0AAD00D8D8F200D8D8D8000A0A0A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000A0A0A00D8D8D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEDEDE00BD84
      63007B736B00DEDEDE00EFE7DE009484730094949400D6D6D600000000000000
      0000000000000000000000000000000000009696DC000000AA000000AA000000
      AA000000AA000000AA000000AA000000AA000000AA000000AA000000AA000000
      AA000000AA000000AA000000AA009292DA009696960000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000929292000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFCEB500FFAD
      7300FFAD73007B6B5A00DE845200FF9C5A00FF94520094736300EFEFEF000000
      0000000000000000000000000000000000007C7CD4001616B1001919B2001A1A
      B3001B1BB3001B1BB3001C1CB3001C1CB3001C1CB3001C1CB3001A1AB3001919
      B2001919B2001717B2001414B1007575D1007C7C7C0016161600191919001A1A
      1A001B1B1B001B1B1B001C1C1C001C1C1C001C1C1C001C1C1C001A1A1A001919
      1900191919001717170014141400757575000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5B5B500FFC66B00FFAD
      5A00FFB57B00FFAD7B00FF843900FF732100FF843900BD734A00ADADAD00EFEF
      EF00EFEFEF000000000000000000000000008686D7002626B7002929B8002A2A
      B8002C2CB9002C2CB9002D2DB9002E2EB9002D2DB9002D2DB9002B2BB8002A2A
      B8002929B8002727B7002323B6007B7BD3008686860026262600292929002A2A
      2A002C2C2C002C2C2C002D2D2D002E2E2E002D2D2D002D2D2D002B2B2B002A2A
      2A002929290027272700232323007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFC6B500FFF7F700FFD6A500FFBD
      7300FFA55200FF8C3900FF843900FF7B3100FF7B2900FF945A00BD734A009C73
      5A0084736300CECECE0000000000000000008B8BD8003434BB003939BD003A3A
      BD003C3CBE003D3DBE003E3EBF003E3EBF003E3EBF003E3EBF003C3CBE003A3A
      BD003838BD003636BC003232BB008080D5008B8B8B0034343400393939003A3A
      3A003C3C3C003D3D3D003E3E3E003E3E3E003E3E3E003E3E3E003C3C3C003A3A
      3A0038383800363636003232320080808000000000000000000000000000E7F7
      E700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7D6AD00FFEFCE00FFDEA500FFCE
      8400F7A55A00EFBD9C00F7C6A500FF945200FF843900FF843900FF945A00FF8C
      5200FF945A00736B6B00E7E7E700000000009090DA004242C0004848C2004A4A
      C3004C4CC3004D4DC4004F4FC4004F4FC4004F4FC4004E4EC4004C4CC3004A4A
      C3004848C2004646C1004040BF008383D6009090900042424200484848004A4A
      4A004C4C4C004D4D4D004F4F4F004F4F4F004F4F4F004E4E4E004C4C4C004A4A
      4A00484848004646460040404000838383000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7FF
      EF0000000000000000000000000000000000FFE7D600FFF7E700FFE7C600FFDE
      AD00847B7B00000000000000000000000000FFF7EF00FF843900FF7B3100FF7B
      3100FF8C4200FF8C5200DEDEDE00000000009595DC004E4EC4005555C6005858
      C7005B5BC8005D5DC9006060CA006161CA006060CA005F5FCA005C5CC9005959
      C8005656C7005353C6004B4BC3008585D600959595004E4E4E00555555005858
      58005B5B5B005D5D5D006060600061616100606060005F5F5F005C5C5C005959
      590056565600535353004B4B4B00858585000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7C6A500FFF7DE00FFE7
      CE009C6B5200D6D6D60000000000000000000000000000000000FF843900FF84
      3900F77B3100C6947B0000000000000000009898DD005656C7005F5FCA006464
      CB006868CD006C6CCE007575D1007777D2007777D2007474D1006C6CCE006767
      CC006363CB005E5EC9005555C6008989D80098989800565656005F5F5F006464
      6400686868006C6C6C00757575007777770077777700747474006C6C6C006767
      6700636363005E5E5E0055555500898989000000000000000000000000000000
      00000000000000000000FFFFF7000000000000000000F7FFFF0000000000FFFF
      EF000000000000000000000000000000000000000000F7C6AD00FFF7EF00FFE7
      D600FFEFDE0073737300E7E7E700000000000000000000000000FFDECE00FF8C
      4A00FF945A008463520094949400CECECE009696DC005050C5005858C7005B5B
      C8005F5FCA006161CA006565CC006666CC006666CC006565CC006262CB005F5F
      CA005B5BC8005858C7005050C5008787D7009696960050505000585858005B5B
      5B005F5F5F006161610065656500666666006666660065656500626262005F5F
      5F005B5B5B00585858005050500087878700000000000000000000000000F7F7
      F700FFFFF7000000000000000000000000000000000000000000F7FFEF000000
      00000000000000000000000000000000000000000000FFFFF700FFFFF700FFEF
      E700FFEFDE00FFD6BD006B6B6B00C6C6C600EFEFEF000000000000000000FF94
      5200FF945200FF945A00FF8C5200AD8C7B009191DB004545C1004B4BC3004E4E
      C4005050C5005252C5005555C6005555C6005555C6005555C6005353C6005151
      C5004E4EC4004C4CC3004646C1008585D70091919100454545004B4B4B004E4E
      4E00505050005252520055555500555555005555550055555500535353005151
      51004E4E4E004C4C4C0046464600858585000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5BD
      AD000000000000000000000000000000000000000000FFD6BD00FFFFFF00FFF7
      EF00FFE7D600FFE7D600FFE7D600C67B5A00847363008C847B00BD845A00FF9C
      5A00FF945200FF8C4A00FF945200C69C8C008C8CD9003838BD003D3DBE003F3F
      BF004141C0004242C0004444C1004545C1004545C1004444C1004343C0004141
      C0004040BF003E3EBF003939BD008181D5008C8C8C00383838003D3D3D003F3F
      3F00414141004242420044444400454545004545450044444400434343004141
      4100404040003E3E3E0039393900818181000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFC6A500FFEF
      DE00FFF7EF00FFE7CE00FFD6BD00FFD6BD00FFCEAD00FFC69C00FFAD7300FF9C
      6300FF9C6300FF945200FF8C5200DEDEDE008686D7002929B8002D2DB9002F2F
      BA003030BA003232BB003333BB003333BB003333BB003333BB003232BB003131
      BA003030BA002E2EB9002B2BB8007D7DD40086868600292929002D2D2D002F2F
      2F00303030003232320033333300333333003333330033333300323232003131
      3100303030002E2E2E002B2B2B007D7D7D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFEFE700FFEFE700FFDEC600FFCEAD00FFB57B00FFAD7B00FFAD7300FFAD
      7300AD6B4A00EF946B00DEB5A500000000009999DE000909AD000D0DAE000E0E
      AF000F0FAF001010AF001111B0001111B0001212B0001111B0001111B0001010
      AF000F0FAF000E0EAF000A0AAD009494DB0099999900090909000D0D0D000E0E
      0E000F0F0F001010100011111100111111001212120011111100111111001010
      10000F0F0F000E0E0E000A0A0A00949494000000000000000000000000000000
      0000FFFFF70000000000000000000000000000000000F7FFFF0000000000F7FF
      F700F7FFF7000000000000000000000000000000000000000000000000000000
      000000000000FFCEAD00FFE7D600FFDEBD00F7AD8400FFB58400FFB57B00FFAD
      7B00FFB58C00ADA59C000000000000000000DBDBF3000D0DAE000000AA000000
      AA000000AA000000AA000000AA000000AA000000AA000000AA000000AA000000
      AA000000AA000000AA000D0DAE00DBDBF300DBDBDB000D0D0D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000D0D0D00DBDBDB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFCEAD00FFBD9400EFEFEF0000000000FFB58400FFB5
      8400EF9C6B0000000000000000000000000000000000DBDBF3007272D0007272
      D0007272D0007272D0007272D0007272D0007272D0007272D0007272D0007272
      D0007272D0007272D000DBDBF3000000000000000000DBDBDB00727272007272
      7200727272007272720072727200727272007272720072727200727272007272
      72007272720072727200DBDBDB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFEFDE00F7F7
      EF000000000000000000000000000000000000000000E6E6E600D2D2D200CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00D2D2D200E6E6E6000000000000000000D8F7FF0072E3FF0072E3
      FF0072E3FF0072E3FF0072E3FF0072E3FF0072E3FF0072E3FF0072E3FF0072E3
      FF0072E3FF0072E3FF00D8F7FF000000000000000000D8EBD80072B9720072B9
      720072B9720072B9720072B9720072B9720072B9720072B9720072B9720072B9
      720072B9720072B97200D8EBD8000000000000000000F2E2D800D0977200D098
      7200D0987200D0987200D0987200D0987200D0987200D0987200D0987200D098
      7200D0987200D0977200F2E2D80000000000E6E6E600B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300E6E6E600D8F7FF000ACEFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF000ACEFF00D8F7FF00D8ECD8000A850A00008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000A850A00D8ECD800F2E3D800AD4B0A00AA440000AA44
      0000AA440000AA440000AA440000AA440000AA440000AA440000AA440000AA44
      0000AA440000AA440000AD4B0A00F2E2D800D2D2D200B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300D2D2D20096EAFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0092E9FF0096CB960000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000080000092C99200DCB29600AA440000AA440000AA44
      0000AA440000AA440000AA440000AA440000AA440000AA440000AA440000AA44
      0000AA440000AA440000AA440000DAAF9200D0D0D000B8B8B800B9B9B900B9B9
      B900B9B9B900BABABA00BABABA00BABABA00BABABA00BABABA00B9B9B900B9B9
      B900B9B9B900B8B8B800B7B7B700D0D0D0007CE5FF0016D0FF0019D1FF001AD1
      FF001BD1FF001BD1FF001CD2FF001CD2FF001CD2FF001CD2FF001AD1FF0019D1
      FF0019D1FF0017D1FF0014D0FF0075E4FF007CBE7C00168B1600198C19001A8D
      1A001B8D1B001B8E1B001C8E1C001C8E1C001C8E1C001C8E1C001A8D1A00198D
      1900198C1900178B1700148A140075BA7500D49F7C00B1541600B2561900B357
      1A00B3581B00B3581B00B3591C00B3591C00B3591C00B3581C00B3571A00B257
      1900B2561900B2551700B1521400D19A7500D4D4D400BEBEBE00BEBEBE00BFBF
      BF00BFBFBF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000BFBFBF00BFBF
      BF00BEBEBE00BEBEBE00BDBDBD00D2D2D20086E7FF0026D4FF0029D4FF002AD4
      FF002CD5FF002CD5FF002DD5FF002ED5FF002DD5FF002DD5FF002BD5FF002AD4
      FF0029D4FF0027D4FF0023D3FF007BE4FF0086C2860026932600299529002A95
      2A002C962C002C962C002D962D002E972E002D962D002D962D002B952B002A95
      2A002994290027942700239223007BBD7B00D7A68600B7602600B8622900B863
      2A00B9642C00B9642C00B9652D00B9652E00B9652D00B9652D00B8642B00B863
      2A00B8622900B7612700B65E2300D39E7B00D6D6D600C3C3C300C4C4C400C5C5
      C500C5C5C500C5C5C500C6C6C600C6C6C600C6C6C600C6C6C600C5C5C500C5C5
      C500C4C4C400C3C3C300C2C2C200D5D5D5008BE8FF0034D6FF0039D7FF003AD8
      FF003CD8FF003DD8FF003ED8FF003ED8FF003ED8FF003ED8FF003CD8FF003AD8
      FF0038D7FF0036D7FF0032D6FF0080E6FF008BC58B00349A3400399C39003A9D
      3A003C9E3C003D9E3D003E9F3E003E9F3E003E9F3E003E9F3E003C9E3C003A9D
      3A00389C3800369B36003299320080C08000D8A98B00BB6A3400BD6E3900BD6F
      3A00BE703C00BE713D00BF723E00BF723E00BF723E00BF713E00BE703C00BD6F
      3A00BD6D3800BC6C3600BB693200D5A28000D9D9D900C8C8C800C9C9C900CACA
      CA00CBCBCB00CBCBCB00CCCCCC00CCCCCC00CCCCCC00CBCBCB00CBCBCB00CACA
      CA00C9C9C900C8C8C800C7C7C700D6D6D60090E9FF0042D9FF0048DAFF004ADB
      FF004CDBFF004DDBFF004FDCFF004FDCFF004FDCFF004EDCFF004CDBFF004ADB
      FF0048DAFF0046DAFF0040D9FF0083E6FF0090C7900042A1420048A448004AA5
      4A004CA64C004DA74D004FA84F004FA84F004FA84F004EA74E004CA64C004AA5
      4A0048A4480046A3460040A0400083C18300DAAD9000C0754200C2784800C37A
      4A00C37C4C00C47D4D00C47E4F00C47E4F00C47E4F00C47E4E00C37C4C00C37A
      4A00C2794800C1774600BF734000D6A48300DBDBDB00CCCCCC00CDCDCD00CECE
      CE00D0D0D000D1D1D100D1D1D100D2D2D200D2D2D200D1D1D100D0D0D000CFCF
      CF00CECECE00CDCDCD00CBCBCB00D7D7D70095EAFF004EDCFF0055DDFF0058DE
      FF005BDEFF005DDFFF0060DFFF0061DFFF0060DFFF005FDFFF005CDEFF0059DE
      FF0056DDFF0053DDFF004BDBFF0085E7FF0095CA95004EA74E0055AA550058AC
      58005BAD5B005DAE5D0060B0600061B0610060B060005FAF5F005CAE5C0059AC
      590056AB560053A953004BA64B0085C28500DCB19500C47D4E00C6825500C784
      5800C8875B00C9885D00CA8A6000CA8B6100CA8A6000CA8A5F00C9875C00C885
      5900C7835600C6815300C37B4B00D6A68500DCDCDC00CDCDCD00CFCFCF00D1D1
      D100D2D2D200D4D4D400D6D6D600D8D8D800D7D7D700D5D5D500D4D4D400D2D2
      D200D0D0D000CFCFCF00CDCDCD00D8D8D80098EBFF0056DDFF005FDFFF0064E0
      FF0068E1FF006CE2FF0075E3FF0077E4FF0077E4FF0074E3FF006CE2FF0067E1
      FF0063E0FF005EDFFF0055DDFF0089E8FF0098CC980056AB56005FAF5F0064B2
      640068B468006CB66C0075BA750077BB770077BB770074BA74006CB66C0067B4
      670063B163005EAF5E0055AA550089C48900DDB39800C7835600CA8A5F00CB8D
      6400CD906800CE936C00D19A7500D29B7700D29B7700D1997400CE936C00CC90
      6700CB8D6300C9895E00C6835500D8A98900DBDBDB00CCCCCC00CDCDCD00CFCF
      CF00D0D0D000D1D1D100D2D2D200D3D3D300D3D3D300D2D2D200D1D1D100D0D0
      D000CFCFCF00CDCDCD00CCCCCC00D8D8D80096EAFF0050DCFF0058DEFF005BDE
      FF005FDFFF0061DFFF0065E0FF0066E0FF0066E0FF0065E0FF0062E0FF005FDF
      FF005BDEFF0058DEFF0050DCFF0087E7FF0096CA960050A8500058AC58005BAD
      5B005FAF5F0061B0610065B3650066B3660066B3660065B3650062B162005FAF
      5F005BAD5B0058AC580050A8500087C38700DCB19600C57F5000C7845800C887
      5B00CA895F00CA8B6100CC8E6500CC8F6600CC8F6600CC8E6500CB8C6200CA89
      5F00C8875B00C7845800C57F5000D7A78700D9D9D900C8C8C800C9C9C900CACA
      CA00CBCBCB00CCCCCC00CCCCCC00CDCDCD00CDCDCD00CCCCCC00CCCCCC00CBCB
      CB00CACACA00C9C9C900C8C8C800D7D7D70091E9FF0045DAFF004BDBFF004EDC
      FF0050DCFF0052DCFF0055DDFF0055DDFF0055DDFF0055DDFF0053DDFF0051DC
      FF004EDCFF004CDBFF0046DAFF0085E7FF0091C8910045A245004BA54B004EA7
      4E0050A8500052A9520055AA550055AA550055AA550055AA550053A9530051A8
      51004EA74E004CA64C0046A3460085C38500DBAE9100C1774500C37B4B00C47D
      4E00C57F5000C5805200C6825500C6835500C6835500C6825500C6815300C57F
      5100C47E4E00C37C4C00C1774600D7A68500D6D6D600C3C3C300C4C4C400C5C5
      C500C6C6C600C6C6C600C6C6C600C7C7C700C7C7C700C6C6C600C6C6C600C6C6
      C600C5C5C500C4C4C400C4C4C400D5D5D5008CE8FF0038D7FF003DD8FF003FD9
      FF0041D9FF0042D9FF0044DAFF0045DAFF0045DAFF0044DAFF0043D9FF0041D9
      FF0040D9FF003ED8FF0039D7FF0081E6FF008CC58C00389C38003D9E3D003F9F
      3F0041A0410042A1420044A2440045A2450045A2450044A2440043A1430041A0
      410040A040003E9F3E00399C390081C08100D9AA8C00BD6D3800BE713D00BF72
      3F00C0734100C0754200C1764400C1764500C1764500C1764400C0754300C074
      4100BF734000BF713E00BD6E3900D5A38100D5D5D500BEBEBE00BFBFBF00BFBF
      BF00C0C0C000C0C0C000C0C0C000C1C1C100C1C1C100C0C0C000C0C0C000C0C0
      C000C0C0C000BFBFBF00BEBEBE00D3D3D30086E7FF0029D4FF002DD5FF002FD5
      FF0030D6FF0032D6FF0033D6FF0033D6FF0033D6FF0033D6FF0032D6FF0031D6
      FF0030D6FF002ED5FF002BD5FF007DE5FF0086C28600299529002D962D002F97
      2F00309830003299320033993300339A3300339A3300339A3300329932003198
      3100309830002E972E002B952B007DBF7D00D7A68600B8622900B9652D00BA66
      2F00BA673000BB683200BB693300BB6A3300BB6A3300BB6A3300BB693200BA68
      3100BA673000B9662E00B8632B00D4A07D00D4D4D400B8B8B800B9B9B900B9B9
      B900BABABA00BABABA00BABABA00BBBBBB00BBBBBB00BBBBBB00BABABA00BABA
      BA00BABABA00B9B9B900B9B9B900D3D3D30099EBFF0009CEFF000DCFFF000ECF
      FF000FCFFF0010CFFF0011CFFF0011CFFF0012D0FF0011CFFF0011CFFF0010CF
      FF000FCFFF000ECFFF000ACEFF0094E9FF0099CD9900098509000D860D000E87
      0E000F880F001088100011891100118911001289120011891100118811001088
      10000F880F000E870E000A850A0094C99400DEB59900AD4B0900AE4D0D00AF4E
      0E00AF4F0F00AF501000B0511100B0511100B0511200B0511100B0501100AF50
      1000AF4F0F00AF4E0E00AD4B0A00DBB19400E7E7E700B3B3B300B3B3B300B3B3
      B300B4B4B400B4B4B400B4B4B400B4B4B400B4B4B400B4B4B400B4B4B400B4B4
      B400B4B4B400B3B3B300B3B3B300E7E7E700DBF8FF000DCFFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF000DCFFF00DBF8FF00DBEDDB000D860D00008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000D860D00DBEDDB00F3E5DB00AE4E0D00AA440000AA44
      0000AA440000AA440000AA440000AA440000AA440000AA440000AA440000AA44
      0000AA440000AA440000AE4E0D00F3E4DB00FCFCFC00E7E7E700D4D4D400D1D1
      D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1D100D1D1
      D100D1D1D100D4D4D400E7E7E700FCFCFC0000000000DBF8FF0072E3FF0072E3
      FF0072E3FF0072E3FF0072E3FF0072E3FF0072E3FF0072E3FF0072E3FF0072E3
      FF0072E3FF0072E3FF00DBF8FF000000000000000000DBEDDB0072B9720072B9
      720072B9720072B9720072B9720072B9720072B9720072B9720072B9720072B9
      720072B9720072B97200DBEDDB000000000000000000F3E5DB00D0977200D098
      7200D0987200D0987200D0987200D0987200D0987200D0987200D0987200D098
      7200D0987200D0977200F3E5DB0000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFF800100000000FFFF3FFC00000000
      FFFF67FE00000000F00F61FE00000000E01F70FE00000000DFCF747E00000000
      D00F7A3E00000000BF877D1E00000000A1477E8E000000007F637F4600000000
      00E37FA200000000FFF17FD200000000FFF07FE600000000FFF17FFE00000000
      FFFF3FFC00000000FFFF800100000000F9FFFFFFFFFF0000F01F8001FFFF0000
      E0078001F9FF0000C001C001F0FF00008001C001E07F00008001C001C03F0000
      8001C001800F00008001C001000700008000C001000300008001C00102010000
      8001C001870000008007C001CF800000C007C001FFC00000E01FC003FFE10000
      F03FC007FFF30000F87FC00FFFFF000080018001FFFFF7FF00000000FFFFC03F
      00000000FFFFC01F00000000FFFF800700000000C007000300000000CFF70001
      00000000CFE7070100000000D7E783C300000000D80781C000000000C1978060
      00000000D7C7800000000000CFE7C00000000000C007F00100000000F7A7F803
      00000000FFFFFC4780018001FFFFFFCF80018001800180010000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080018001800100000000000000000000000000000000
      000000000000}
  end
end
