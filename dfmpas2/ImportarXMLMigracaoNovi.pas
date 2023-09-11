unit ImportarXMLMigracaoNovi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBCd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, RxToolEdit,
  Vcl.ComCtrls, ACBrDFe, ACBrNFe, pcnConversao, pcnConversaoNFe, ACBrETQ, StrUtils, Datasnap.DBClient, Datasnap.Provider;

type
  TfrmImportarXMLMigracaoNovi = class(TfrmBaseDB)
    ListViewLNK: TListView;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DirectoryEdit1: TDirectoryEdit;
    Button1: TButton;
    lbQtd: TLabel;
    Button2: TButton;
    Panel3: TPanel;
    acbrnf1: TACBrNFe;
    lbCntFornecedor: TLabel;
    lbCntCliente: TLabel;
    lbCntTranspotadora: TLabel;
    lbCntTPParcela: TLabel;
    lbCntProduto: TLabel;
    lbCntFatura: TLabel;
    lbCntParcela: TLabel;
    lbCntParcelaFat: TLabel;
    lbCntNF: TLabel;
    lbCntItemNF: TLabel;
    lbCntPed: TLabel;
    lbCntItemPED: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ListView1: TListView;
    ListView2: TListView;
    dspXML: TDataSetProvider;
    qXML: TSQLQuery;
    qXMLNFX_REGISTRO: TIntegerField;
    qXMLEMP_CODIGO: TIntegerField;
    qXMLNF_REGISTRO: TIntegerField;
    qXMLNFX_XML: TBlobField;
    qXMLNFX_XML_RECIBO: TBlobField;
    CdsXML: TClientDataSet;
    CdsXMLNFX_REGISTRO: TIntegerField;
    CdsXMLEMP_CODIGO: TIntegerField;
    CdsXMLNF_REGISTRO: TIntegerField;
    CdsXMLNFX_XML: TBlobField;
    CdsXMLNFX_XML_RECIBO: TBlobField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    pCnpj: string;
    pOpeInt, pOpeExt: string;
    CntFornecedor, cntFornecedorUpd: integer;
    CntCliente, cntClienteUpd: integer;
    CntTranspotadora: integer;
    CntTPParcela: integer;
    CntFatura: integer;
    CntParcela: integer;
    CntParcelaFat: integer;
    CntItemNF: integer;
    CntItemPED: integer;
    CntNF: integer;
    CntPed: integer;
    CntProduto, cntProdutosUpd: Integer; // produtos incluidos e produtos atualizados
    prMotivo : string;
    procedure SearchXML(Dir: String);
    procedure ProcessaNota;
    function InsereFornecedor:string;
    function InsereCliente: string;
    Procedure InsereNFE ( pCodPessoa, pCodTransp:string );
    function InsereTransportadora: string;
    function InsereReceber( prNfRegistro,pCodPessoa,pPedCodigo,pOpeCodigo: string ) :string;
    function GetOperFisc( I:integer ):string;
    procedure InsereItensNFE(result: string; var vBaseIpi: currency; pPedCodigo:string );
    function InsereProduto( i: integer): string;
    Procedure AtualizaProduto (const  i : integer ; const pCodProd: string );
    procedure AtualizarSequenciadores;
  public

  end;

var
  frmImportarXMLMigracaoNovi: TfrmImportarXMLMigracaoNovi;

implementation

uses uteis, iniciodb;

{$R *.dfm}

procedure TfrmImportarXMLMigracaoNovi.AtualizarSequenciadores;
var nomevar : string;
begin
  try
    //PEDIDOS
    //PEGAR O MAXIMO
    OpenAux(' SELECT MAX(CAST(PED_CODIGO AS integer)) AS PED_CODIGO FROM PED0000 '+
            ' where  PED_CODIGO IS NOT NULL AND PED_CODIGO <> '''' ' +
            ConcatSe(' and ',DBInicio.ExclusivoSql('PEDIDOS'))  );
    //VERIFICAR SE HÁ SEQUENCIADOR
    OpenAux2('select * from sys_sequenciador '+
             ' WHERE SEQUENCIA_TABELA = ''PED0000'' '+
             ' AND SEQUENCIA_CAMPO = ''PED_CODIGO'' '+
             iif(DBInicio.Exclusivo('PEDIDOS'), ' AND SEQUENCIA_EMPRESA = '+QuotedStr(dbinicio.Empresa.EMP_CODIGO) ,''));

    if qAux2.IsEmpty then
      ExecSql(' INSERT INTO sys_sequenciador  (SEQUENCIA_EMPRESA, SEQUENCIA_TABELA, SEQUENCIA_CAMPO, SEQUENCIA_VALOR) ' +
              ' VALUES (' +QuotedStr(DBInicio.Empresa.EMP_CODIGO) +','+ QuotedStr('PED0000')+','+QuotedStr('PED_CODIGO')+ ','+
              qAux.FieldByName('ped_codigo').AsString+')'
              )
    else
      ExecSql('update sys_sequenciador' +
              ' set  SEQUENCIA_VALOR = '+qAux.FieldByName('ped_codigo').AsString+
              '  WHERE SEQUENCIA_TABELA = ''PED0000'' '+
              ' AND SEQUENCIA_CAMPO = ''PED_CODIGO'' ' +
             iif(DBInicio.Exclusivo('PEDIDOS'), ' AND SEQUENCIA_EMPRESA = '+QuotedStr(dbinicio.Empresa.EMP_CODIGO) ,''));

     // notas fiscais
     OpenAux(' SELECT MAX(CAST(NF_NOTANUMBER AS integer)) as NF_NOTANUMBER, OPE_ESCRITA FROM NF0001 nf JOIN OPE0000 op ON (op.OPE_CODIGO = nf.OPE_CODIGO '+
             ConcatSe(' and op.', DBInicio.ExclusivoSql('OPERACAOFISCAL'))  +  ') '+
             ' WHERE nf.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO)+
             ' GROUP BY OPE_ESCRITA');
     qAux.first;
     while not qaux.Eof do
     begin
       //notas com escrita fiscal
       if (qaux.FieldByName('OPE_ESCRITA').AsString = 'S') then
         nomevar := 'NF_NOTANUMBER_S'
       else
         nomevar := 'NF_NOTANUMBER_N';
        //ve se já existe sequenciador
        OpenAux2('select * from sys_sequenciador '+
             ' WHERE SEQUENCIA_TABELA = ''NF0001'' '+
             ' AND SEQUENCIA_CAMPO = '+QuotedStr(nomevar) +
             ' AND SEQUENCIA_EMPRESA = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
       if qAux2.IsEmpty then
         ExecSql(' INSERT INTO sys_sequenciador  (SEQUENCIA_EMPRESA, SEQUENCIA_TABELA, SEQUENCIA_CAMPO, SEQUENCIA_VALOR) ' +
                 ' VALUES (' +QuotedStr(DBInicio.Empresa.EMP_CODIGO) +','+ QuotedStr('NF0001')+','+QuotedStr(nomevar)+ ','+
                 qAux.FieldByName('NF_NOTANUMBER').AsString+')'
                 )
       else
         ExecSql( 'UPDATE sys_sequenciador '+
           'SET sequencia_valor = ' + qAux.FieldByName('NF_NOTANUMBER').AsString +
           ' WHERE sequencia_empresa = ' + QStr(dbInicio.Empresa.EMP_CODIGO) +
           ' AND sequencia_tabela = '+qStr('NF0001')+
           ' AND sequencia_campo = '+qStr(nomevar) );

       qaux.Next;
     end;




  except
     // silencioso
  end;
end;

procedure TfrmImportarXMLMigracaoNovi.Button1Click(Sender: TObject);
begin
    inherited;
    Panel3.Visible:=False;
    PageControl1.Visible:=False;
    Button2.Enabled := False;
    if not DirectoryExists( DirectoryEdit1.Text ) then
       GeraException( 'Pasta não existe!')
    Else
    begin
         lbQtd.Caption:='Buscando...';
         ListViewLNK.Items.clear;
         SearchXML( DirectoryEdit1.Text );
         lbQtd.Caption:='Encontrados '+ListViewLNK.Items.count.ToString+' arquivos XML.';
         Button2.Enabled := ListViewLNK.Items.count>0;
    end;
end;

procedure TfrmImportarXMLMigracaoNovi.Button2Click(Sender: TObject);
var x, y : integer;
    flnm: string ;
begin

     inherited;

     y := ListViewLNK.Items.count - 1;
     CntFornecedor:= 0;
     cntFornecedorUpd := 0 ;
     CntCliente:= 0;
     cntClienteUpd := 0 ;
     CntTranspotadora:= 0;
     CntTPParcela:= 0;
     CntFatura:= 0;
     CntParcela:= 0;
     CntParcelaFat:= 0;
     CntItemNF:= 0;
     CntItemPED:= 0;
     CntNF := 0;
     CntPed := 0;
     CntProduto := 0;
     cntProdutosUpd := 0 ;
     Panel3.Visible := True ;

     ListView1.Items.clear;
     ListView2.Items.clear;

     for x := 0 to y do
     begin
          flnm := ListViewLNK.Items[x].SubItems[0] + ListViewLNK.Items[x].Caption;
          lbQtd.Caption:='Importando: '+flnm ;
          application.ProcessMessages;

          acbrnf1.Notasfiscais.clear;
          acbrnf1.NotasFiscais.LoadFromFile(flnm);

          prMotivo := '';
          if acbrnf1.Notasfiscais.count>0  then
          begin
                  if dbinicio.Nfe.AmbienteWebService = tpProducao then
                    acbrnf1.NotasFiscais.Items[0].NFe.ProcNfe.tpAmb := taProducao;

                  //if acbrnf1.NotasFiscais.Items[0].NFe.ide.tpnf=tnSaida then
                  //begin

                  begintransaction;
                  try
                     ProcessaNota;
                     committransaction;
                  Except
                        rollbacktransaction;
                        prMotivo:='Erros ao processar XML';
                        raise;
                  end;

                  lbCntFornecedor.Caption:='Fornecedores: '+CntFornecedor.ToString + ' , atualizados : '+ CntFornecedorUpd.ToString;
                  lbCntCliente.Caption:='Clientes: '+CntCliente.ToString + ' , atualizados : '+ cntclienteUpd.ToString;
                  lbCntTranspotadora.Caption:='Transpotadoras: '+CntTranspotadora.ToString;
                  lbCntTPParcela.Caption:='Tipo Parcelamento: '+CntTPParcela.ToString;
                  lbCntProduto.Caption:='Produtos incluidos: '+CntProduto.ToString + ', atualizados : '+ cntProdutosUpd.ToString ;
                  lbCntFatura.Caption:='(C.Receber) Faturas: '+CntFatura.ToString;
                  lbCntParcela.Caption:='(C.Receber) Parcelas: '+CntParcela.ToString;
                  lbCntParcelaFat.Caption:='(Nota Fiscal) Parcelas: '+CntParcelaFat.ToString;
                  lbCntNF.Caption:='Notas Fiscais: '+CntNF.ToString;
                  lbCntItemNF.Caption:='Notas Fiscais Itens: '+CntItemNF.ToString;
                  lbCntPed.Caption:='Pedidos: '+CntPED.ToString;
                  lbCntItemPED.Caption:='Pedidos Itens: '+CntItemPED.ToString;
                  application.ProcessMessages;

              //end;
              //Else
              //    prMotivo := 'NFe.ide.tpnf <> tnSaida';

          end
          Else
              prMotivo := 'xml <> NFe.';

          if prMotivo='' then
          begin

               With ListView1.Items.Add do
                    Caption := ListViewLNK.Items[x].SubItems[0] + ListViewLNK.Items[x].Caption;

          end
          else
          With ListView2.Items.Add, SubItems do
          begin
               Caption := ListViewLNK.Items[x].SubItems[0] + ListViewLNK.Items[x].Caption;
               Add(prMotivo);
          end;

     end;
     AtualizarSequenciadores;
     lbQtd.Caption:='Atualizando Razão social do Cliente...';
     Application.ProcessMessages;
     ExecSql('UPDATE CLI0000 SET CLI_RAZAO = UPPER(CLI_RAZAO)');
     lbQtd.Caption:='Atualizando Endereço do Cliente...';
     Application.ProcessMessages;
     ExecSql('UPDATE CLI0000 SET CLI_ENDERE = UPPER(CLI_ENDERE)');
     lbQtd.Caption:='Atualizando Bairro do Cliente...';
     Application.ProcessMessages;
     ExecSql('UPDATE CLI0000 SET CLI_BAIRRO = UPPER(CLI_BAIRRO)');
     lbQtd.Caption:='Atualizando Cidade do Cliente...';
     Application.ProcessMessages;
     ExecSql('UPDATE CLI0000 SET CLI_CIDADE = UPPER(CLI_CIDADE)');

     lbQtd.Caption:='Atualizando Razão social da transportadora...';
     Application.ProcessMessages;
     ExecSql('UPDATE TRP0000 SET TRP_RAZAO = UPPER(TRP_RAZAO)');
     lbQtd.Caption:='Atualizando Endereço da transportadora...';
     Application.ProcessMessages;
     ExecSql('UPDATE TRP0000 SET TRP_ENDERE = UPPER(TRP_ENDERE)');
     lbQtd.Caption:='Atualizando Bairro da transportadora...';
     Application.ProcessMessages;
     ExecSql('UPDATE TRP0000 SET TRP_BAIRRO = UPPER(TRP_BAIRRO)');
     lbQtd.Caption:='Atualizando Cidade da transportadora...';
     Application.ProcessMessages;
     ExecSql('UPDATE TRP0000 SET TRP_CIDADE = UPPER(TRP_CIDADE)');

     lbQtd.Caption:='Pronto...';
     application.ProcessMessages;
     PageControl1.align:=alClient;

     PageControl1.Visible:=True;
end;

function TfrmImportarXMLMigracaoNovi.InsereFornecedor:string;
var sCodigoCidade, sCgc: String ;
  fone: string;
begin
     sCgc := acbrnf1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
     result := BuscaUmDadoSqlAsString( 'select for_codigo from for0000 where for_cgc='+qStr(sCgc)+ConcatSe(' and ',dbinicio.ExclusivoSql('FORNECEDORES'))  );
     if (RESULT = '') AND (DBInicio.Usuario.USERNAME = 'ADM') and (DBInicio.Usuario.SENHAPADRAO = DBInicio.Usuario.PSW) then
         RESULT := BuscaUmDadoSqlAsString(' SELECT FOR_CODIGO, rand(),t1.* FROM for0000 t1 ' +ConcatSe(' where ',dbinicio.ExclusivoSql('FORNECEDORES')) + ' ORDER BY 2 ' );
     if result='' then
     begin
         sCodigoCidade := BuscaUmDadoSqlasString ( 'SELECT CID_CODIGO FROM CID0000 WHERE CID_COD_IBGE = '+IntToStr(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun) );

         result := strzero( dbInicio.GetNextSequence('GEN_FOR0000_CODIGO'), 4 );
         if acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone <> '' then
         begin
           if Copy(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone,1,1) <> '0' then
             fone := '0'+ (acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone)
           else
             fone :=  acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone ;

         end ;
         ExecSql ( 'insert into for0000 ( for_codigo, for_cgc, for_razao, FOR_ATUALIZA_PCUSTO, FOR_ATUALIZA_PVENDA, FOR_DTCADASTRO, ' +
                   '                      FOR_ENDERE, FOR_CIDADE, FOR_UF, FOR_CEP, FOR_FONE, FOR_INSC, FOR_BAIRRO, FOR_INSCST, '+
                   '                      FOR_ATIVO, EMP_CODIGO, CID_CODIGO ) '+
                   'values ( '+qStr( result )+', '+ //for_codigo,
                   '         '+qStr( sCgc )+', '+ //for_cgc,
                   '         '+qStr( Copy( UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Emit.xNome),1,40) )+', '+ //for_razao,
                   '         '+qStr('S')+', '+ //FOR_ATUALIZA_PCUSTO,
                   '         '+qStr('S')+', '+ //FOR_ATUALIZA_PVENDA,
                   '         '+DateToSql( date )+', '+ //FOR_DTCADASTRO,
                   '         '+qStr(Copy( UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr+','+acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro),1,40))+', '+ //FOR_ENDERE,
                   '         '+qStr(Copy( UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun),1,30))+', '+ //FOR_CIDADE,
                   '         '+qStr(UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF))+', '+ //FOR_UF,
                   '         '+qStr(IntToStr(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP))+', '+ //FOR_CEP,
                   '         '+qStr( Copy(ExtrairNumeros(fone),1,11))+', '+ //FOR_FONE,
                   '         '+qStr(acbrnf1.NotasFiscais.Items[0].NFe.Emit.IE)+', '+ //FOR_INSC,
                   '         '+qStr(Copy( UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro),1,30))+', '+ //FOR_BAIRRO,
                   '         '+qStr( acbrnf1.NotasFiscais.Items[0].NFe.Emit.IEST )+', '+ //FOR_INSCST,
                   '         '+qStr('A')+', '+ //FOR_ATIVO,
                   '         '+qStr(DBINICIO.Empresa.EMP_CODIGO {emp_codigo})+', '+ //EMP_CODIGO,
                   '         '+qStr( sCodigoCidade )+')' ); //CID_CODIGO
         Inc( CntFornecedor );
     end
     else
     begin
        sCodigoCidade := BuscaUmDadoSqlasString ( 'SELECT CID_CODIGO FROM CID0000 WHERE CID_COD_IBGE = '+IntToStr(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun) );
        if acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone <> '' then
        begin
          if Copy(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone,1,1) <> '0' then
            fone := '0'+ (acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone)
          else
            fone :=  acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone ;
        end ;
         if (DBInicio.Usuario.USERNAME = 'ADM')  and (DBInicio.Usuario.SENHAPADRAO = DBInicio.Usuario.PSW) then
         begin
           ExecSql ( 'update for0000 '  +
                    ' set for_razao = for_razao '+
                iif(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr <>'',
                        ' , FOR_ENDERE = '+qStr(Copy( UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr+','+acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro),1,40)),'')+
                iif(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun<> '', ', FOR_CIDADE = '+ qStr(Copy( UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun),1,30)),'')+
                ', FOR_UF = '+ qStr(UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF)) +
                iif(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP>0, ' , FOR_CEP = '+ qStr(IntToStr(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP)),'')+
                iif(fone <> '',' , FOR_FONE = '+ qStr( Copy(ExtrairNumeros(fone),1,11)) ,'')+
                iif(acbrnf1.NotasFiscais.Items[0].NFe.Emit.IE <>'',' , FOR_INSC = '+ qStr(acbrnf1.NotasFiscais.Items[0].NFe.Emit.IE) ,'') +
                iif(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro <> '', ' , FOR_BAIRRO ='+qStr(Copy( UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro),1,30)),'')+
                iif(acbrnf1.NotasFiscais.Items[0].NFe.Emit.IEST <>'', ', FOR_INSCST = '+ qStr( acbrnf1.NotasFiscais.Items[0].NFe.Emit.IEST ) ,'')+
                iif(sCodigoCidade<>'', ' , CID_CODIGO  = ' +qStr( sCodigoCidade ),'')+
                ' where for_codigo = '+ QuotedStr(result));
         end
         else
         begin
           ExecSql ( 'update for0000 '  +
                iif( acbrnf1.NotasFiscais.Items[0].NFe.Emit.xNome<>'', 'set  for_razao = ' + qStr( Copy( UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Emit.xNome),1,40) ),'set  for_razao = trim( for_razao )')+
                iif(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr <>'',
                        ' , FOR_ENDERE = '+qStr(Copy( UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr+','+acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro),1,40)),'')+
                iif(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun<> '', ', FOR_CIDADE = '+ qStr(Copy( UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun),1,30)),'')+
                ', FOR_UF = '+ qStr(UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF)) +
                iif(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP>0, ' , FOR_CEP = '+ qStr(IntToStr(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP)),'')+
                iif(fone <> '',' , FOR_FONE = '+ qStr( Copy(ExtrairNumeros(fone),1,11)) ,'')+
                iif(acbrnf1.NotasFiscais.Items[0].NFe.Emit.IE <>'',' , FOR_INSC = '+ qStr(acbrnf1.NotasFiscais.Items[0].NFe.Emit.IE) ,'') +
                iif(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro <> '', ' , FOR_BAIRRO ='+qStr(Copy( UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro),1,30)),'')+
                iif(acbrnf1.NotasFiscais.Items[0].NFe.Emit.IEST <>'', ', FOR_INSCST = '+ qStr( acbrnf1.NotasFiscais.Items[0].NFe.Emit.IEST ) ,'')+
                iif(sCodigoCidade<>'', ' , CID_CODIGO  = ' +qStr( sCodigoCidade ),'')+
                ' where for_codigo = '+ QuotedStr(result));
         end;




        Inc( cntFornecedorUpd );
     end;

end;

function TfrmImportarXMLMigracaoNovi.InsereCliente: string;
var sCodigoCidade, sCgc, sCliFinal, sPais, sPessoa, sOpe,fone : String ;
sql: string;
begin
     fone := '';
     sCgc := acbrnf1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF;
     result := BuscaUmDadoSqlAsString( 'select cli_codigo from cli0000 where cli_cgc='+qStr(sCgc)+ConcatSe(' and ',dbinicio.ExclusivoSql('CLIENTES')) );
     if (RESULT = '') AND (DBInicio.Usuario.USERNAME = 'ADM')  and (DBInicio.Usuario.SENHAPADRAO = DBInicio.Usuario.PSW) then
         RESULT := BuscaUmDadoSqlAsString(' SELECT CLI_CODIGO, rand(),t1.* FROM CLI0000 t1 ' +ConcatSe(' where ',dbinicio.ExclusivoSql('CLIENTES')) + ' ORDER BY 2 ' );

     if result='' then
     begin
          sCodigoCidade := BuscaUmDadoSqlasString ( 'SELECT CID_CODIGO FROM CID0000 WHERE CID_COD_IBGE = '+IntToStr(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun) );
          result := strzero( dbInicio.GetNextSequence('GEN_CLI0000_CODIGO'), 5 );

          if acbrnf1.NotasFiscais.Items[0].NFe.Dest.indIEDest= inNaoContribuinte then
             sCliFinal:='S'
          Else
             sCliFinal:='N';

          if UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xPais)='BRASIL' then
             sPais:='N'
          Else
             sPais:='I';

          if Length(sCgc)<14 then
             sPessoa:='F'
          Else
             sPessoa:='J';

          if (dbInicio.Empresa.UF <> acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF) then
             sOpe := pOpeExt
          Else
             sOpe := pOpeInt;
          if acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.fone <> '' then
          begin
            if copy(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.fone,1,1) <> '0' then
              fone:= '0' +acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.fone
            else
              fone := acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.fone;
          end;

          if acbrnf1.NotasFiscais.Items[0].NFe.Dest.xNome <> '' then
          begin
            sql:= 'insert into CLI0000 ( CLI_codigo, CLI_cgc, CLI_razao, CLI_DTINICIO, CLI_ENDERE, CLI_CIDADE, CLI_UF, cli_consfinal, CLI_PAIS, CLI_PESSOA, '+
                   '                      CLI_CEP, CLI_FONE, CLI_INSC, CLI_BAIRRO, CLI_INATIVO, EMP_CODIGO, cli_email, cli_suframa, cli_inscmuni, CID_CODIGO, '+
                   '                      CLI_CLASSE_CLI_FOR, CLI_PORTE, CLI_PROTESTAR, PAI_CODIGO, OPE_CODIGO, CLI_CONSU_PROPRIO, CLI_TABPRECO ) '+
                   'values ( '+qStr( result )+', '+ //for_codigo,
                   '         '+qStr( sCgc )+', '+ //for_cgc,
                   '         '+qStr( UTF8Encode(Copy( UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.xNome),1,55)) )+', '+
                   '         '+DateToSql( date )+', '+ //FOR_DTCADASTRO,
                   '         '+qStr( Copy( UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xLgr+','+acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.nro),1,50))+', '+ //FOR_ENDERE,
                   '         '+qStr( Copy( UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun),1,30))+', '+ //FOR_CIDADE,
                   '         '+qStr(UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF))+', '+ //FOR_UF,
                   '         '+qStr(sCliFinal)+', '+
                   '         '+qStr(sPais)+', '+
                   '         '+qStr(sPessoa)+', '+
                   '         '+qStr(IntToStr(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.CEP))+', '+ //FOR_CEP,
                   '         '+qStr( Copy(ExtrairNumeros(fone),1,11))+', '+ //FOR_FONE,
                   '         '+qStr(acbrnf1.NotasFiscais.Items[0].NFe.Dest.IE)+', '+ //cli_INSC,
                   '         '+qStr( Copy(UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro),1,25))+', '+ //FOR_BAIRRO,
                   '         '+qStr('A')+', '+ //FOR_ATIVO,
                   '         '+qStr(DBInicio.empresa.EMP_CODIGO {emp_codigo})+', '+ //EMP_CODIGO,
                   '         '+qStr( Copy( acbrnf1.NotasFiscais.Items[0].NFe.Dest.email,1,150))+', '+ //cli_email,
                   '         '+qStr(UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.isuf))+', '+ //cli_suframa,
                   '         '+qStr(UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.IM))+', '+ //cli_inscmuni,
                   '         '+ iif(sCodigoCidade='','null',qStr(sCodigoCidade) )+', '+ //CID_CODIGO, '+
                   '         '+qStr( 'C' )+', '+ // CLI_CLASSE_CLI_FOR,
                   '         '+qStr( 'P' )+', '+ // CLI_PORTE,
                   '         '+qStr( 'N' )+', '+ //CLI_PROTESTAR,
                   '         '+qStr( acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cPais.TOSTRING )+', '+ //PAI_CODIGO,
                   '         '+qStr( sOpe )+', '+ // OPE_CODIGO,
                   '         '+qStr(sCliFinal)+', '+ // CLI_CONSU_PROPRIO,
                   '         '+qStr( 'T1' )+' )';  // CLI_TABPRECO
             ExecSql (sql);
            inc( CntCliente );
          end;
     end // cliente já cadastrado, atualizar
     Else if acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xLgr <> '' then
     begin
       sCodigoCidade := BuscaUmDadoSqlasString ( 'SELECT CID_CODIGO FROM CID0000 WHERE CID_COD_IBGE = '+IntToStr(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun) );
       if UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xPais)='BRASIL' then
         sPais:='N'
       Else
         sPais:='I';
       if acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.fone <> '' then
       begin
         if copy(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.fone,1,1) <> '0' then
           fone:= '0' +acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.fone
         else
           fone := acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.fone;
       end;
       if (dbInicio.Empresa.UF <> acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF) then
         sOpe := pOpeExt
       Else
         sOpe := pOpeInt;
       if (DBInicio.Usuario.USERNAME = 'ADM')  and (DBInicio.Usuario.SENHAPADRAO = DBInicio.Usuario.PSW) then
       begin
          ExecSql ('update CLI0000' +
                  '   set CLI_ENDERE = '  +QuotedStr( Copy( UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xLgr+','+acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.nro),1,50))+
                  iif(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun<>'',
                   '      , CLI_CIDADE = '+ QuotedStr( Copy( UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun),1,30)),'')+
                   iif(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF<> '',
                  '      , CLI_UF     = '+ QuotedStr(UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF)),'')+
                  iif(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.CEP>0,
                  '      , CLI_CEP    = '+ QuotedStr(IntToStr(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.CEP)),'')+
                  '      , CLI_PAIS   = '+ qStr(sPais)+
                  iif(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro<>'',
                  '      , CLI_BAIRRO = '+ QuotedStr(( Copy(UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro),1,25))),'')+
                  iif(fone<>'',' , CLI_FONE   = '+ QuotedStr( Copy(ExtrairNumeros(fone),1,11)),'')+
                  iif(sCodigoCidade <> '',
                  '      , CID_CODIGO = '+QuotedStr( sCodigoCidade ),'') +
                  iif(acbrnf1.NotasFiscais.Items[0].NFe.Dest.IE<>'',', cli_INSC = '+QuotedStr(acbrnf1.NotasFiscais.Items[0].NFe.Dest.IE),'')+
                  iif(acbrnf1.NotasFiscais.Items[0].NFe.Dest.isuf<> '',', cli_suframa = '+QuotedStr(UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.isuf)),'')+
                  iif(acbrnf1.NotasFiscais.Items[0].NFe.Dest.IM<> '',', cli_inscmuni = '+qStr(UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.IM)),'')+
                  iif(sOpe<>'', ', OPE_CODIGO = '+ sOpe,'')+
                  ' WHERE CLI_CODIGO  = '+QuotedStr(RESULT) +
                  ConcatSe(' AND ',DBInicio.ExclusivoSql('CLIENTES'))
                  );
        end
        else
       begin
         ExecSql ('update CLI0000' +
                  '   set CLI_ENDERE = '  +QuotedStr( Copy( UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xLgr+','+acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.nro),1,50))+
                  iif(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun<>'',
                   '      , CLI_CIDADE = '+ QuotedStr( Copy( UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun),1,30)),'')+
                   iif(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF<> '',
                  '      , CLI_UF     = '+ QuotedStr(UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF)),'')+
                  iif(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.CEP>0,
                  '      , CLI_CEP    = '+ QuotedStr(IntToStr(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.CEP)),'')+
                  '      , CLI_PAIS   = '+ qStr(sPais)+
                  iif(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro<>'',
                  '      , CLI_BAIRRO = '+ QuotedStr(( Copy(UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro),1,25))),'')+
                  iif(fone<>'',' , CLI_FONE   = '+ QuotedStr( Copy(ExtrairNumeros(fone),1,11)),'')+
                  iif(sCodigoCidade <> '',
                  '      , CID_CODIGO = '+QuotedStr( sCodigoCidade ),'') +
                  iif(acbrnf1.NotasFiscais.Items[0].NFe.Dest.xNome<>'',', CLI_razao = '+ QuotedStr(Copy( UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.xNome),1,55)) ,'')+
                  iif(acbrnf1.NotasFiscais.Items[0].NFe.Dest.email<>'',', cli_email = '+ qStr( Copy( acbrnf1.NotasFiscais.Items[0].NFe.Dest.email,1,150)),'')+
                  iif(acbrnf1.NotasFiscais.Items[0].NFe.Dest.IE<>'',', cli_INSC = '+QuotedStr(acbrnf1.NotasFiscais.Items[0].NFe.Dest.IE),'')+
                  iif(acbrnf1.NotasFiscais.Items[0].NFe.Dest.isuf<> '',', cli_suframa = '+QuotedStr(UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.isuf)),'')+
                  iif(acbrnf1.NotasFiscais.Items[0].NFe.Dest.IM<> '',', cli_inscmuni = '+qStr(UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.IM)),'')+
                  iif(sOpe<>'', ', OPE_CODIGO = '+ sOpe,'')+
                  ' WHERE CLI_CODIGO  = '+QuotedStr(RESULT) +
                  ConcatSe(' AND ',DBInicio.ExclusivoSql('CLIENTES'))
                  );






       end;

        inc( cntClienteUpd );

     end;


end;

function TfrmImportarXMLMigracaoNovi.InsereTransportadora:string;
var sCodigoCidade, sCgc: String ;
begin
     sCgc := acbrnf1.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF;
     if sCgc='' then
        Result := ''
     Else
     begin
          result := BuscaUmDadoSqlAsString( 'select trp_codigo from trp0000 where trp_cgc='+qStr(sCgc)+ConcatSe(' and ',dbinicio.ExclusivoSql('TRANSPORTADORAS')) );
          if result='' then
          begin
               if (acbrnf1.NotasFiscais.Items[0].NFe.Transp.Transporta.xMun<>'') and (acbrnf1.NotasFiscais.Items[0].NFe.Transp.Transporta.UF<>'') then
               begin
                    sCodigoCidade := BuscaUmDadoSqlasString ( 'SELECT CID_CODIGO FROM CID0000 '+
                                                              'WHERE CID_CIDADE = '+qStr( TiraAcento( acbrnf1.NotasFiscais.Items[0].NFe.Transp.Transporta.xMun, True) )+' '+
                                                              '      AND CID_ESTADO='+qStr( acbrnf1.NotasFiscais.Items[0].NFe.Transp.Transporta.UF ) ) ;
                    if sCodigoCidade='' then
                       sCodigoCidade:='Null'
                    Else

                       sCodigoCidade:= qStr( sCodigoCidade );
               end
               Else
                  sCodigoCidade := 'Null';
               result := strzero( dbInicio.GetNextSequence('GEN_TRP0000_CODIGO'), 3 );

               EXECSQL( 'insert into trp0000 ( TRP_CODIGO, TRP_RAZAO, TRP_ENDERE, TRP_CIDADE, TRP_UF, TRP_CGC, '+
                        '                      TRP_INSC, EMP_CODIGO, TRP_ATIVO, CID_CODIGO ) '+
                        'values ( '+qStr( result )+', '+
                        '         '+qStr( Copy(UpperCase ( acbrnf1.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome ),1,45))+', '+
                        '         '+qStr( UpperCase ( copy(acbrnf1.NotasFiscais.Items[0].NFe.Transp.Transporta.xEnder,1,40) ))+', '+
                        '         '+qStr( Copy(UpperCase ( acbrnf1.NotasFiscais.Items[0].NFe.Transp.Transporta.xMun ),1,30))+', '+
                        '         '+qStr( UpperCase ( acbrnf1.NotasFiscais.Items[0].NFe.Transp.Transporta.UF ))+', '+
                        '         '+qStr(sCgc)+', '+
                        '         '+qStr( UpperCase ( acbrnf1.NotasFiscais.Items[0].NFe.Transp.Transporta.IE ))+', '+
                        '         '+qStr(DBInicio.Empresa.EMP_CODIGO {emp_codigo})+', '+ //EMP_CODIGO,
                        '         '+qStr('A')+', '+ //FOR_ATIVO,
                        '         '+sCodigoCidade+') '+
                        iif ( DelphiAberto, '/*  cidade -> '+acbrnf1.NotasFiscais.Items[0].NFe.Transp.Transporta.xMun+'/'+acbrnf1.NotasFiscais.Items[0].NFe.Transp.Transporta.UF+' */', '' ) );
               Inc( CntTranspotadora );

          end;
     end;
end;

function TfrmImportarXMLMigracaoNovi.GetOperFisc( I:integer ):string;
var prCfop: string ;
begin
      prCfop := acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.cfop;
      result := BuscaUmDadoSqlasString( 'select ope_codigo from ope0000 where ope_natureza='+qStr(prCfop)+ConcatSe(' and ',dbinicio.ExclusivoSql('OPERACAOFISCAL'))  );
      if result='' then
      begin
           result := StrZero( dbInicio.GetNextSequence('gen_ope0000_codigo'),3);
           ExecSql( 'insert into ope0000 ( EMP_CODIGO, OPE_CODIGO, OPE_NATUREZA, OPE_TIPO, OPE_ESCRITA, OPE_DESCRI ) '+
                    'values ( '+qStr(DBINICIO.Empresa.EMP_CODIGO {emp_codigo})+', '+
                    '         '+qStr(result)+', '+
                    '         '+qStr(prCfop)+', '+
                    '         '+qStr('S')+', '+
                    '         '+qStr('S')+', '+
                    '         '+qStr( copy ( acbrnf1.NotasFiscais.Items[0].NFe.ide.natop, 1, 55) )+' )' );
      end;
end;

function TfrmImportarXMLMigracaoNovi.InsereReceber( prNfRegistro, pCodPessoa,pPedCodigo, pOpeCodigo: string ) :string;
var x, y, lFatReg, sDifDias:INTEGER;
    sDtEmi, sDtVenc: tDateTime;
    sValo: currency ;
    sDescr, sPclCodigo, wFatura: string ;
begin

     wfatura := strzero( acbrnf1.NotasFiscais.Items[0].NFe.Ide.nNF,6);
     sDtEmi := acbrnf1.NotasFiscais.Items[0].NFe.IDE.dEmi;
     y:=acbrnf1.NotasFiscais.Items[0].NFe.cobr.dup.count - 1;

     sPclCodigo := '001'; // a vista
     if acbrnf1.NotasFiscais.Items[0].NFe.IDE.IndPag<>ipVista then
     begin
           sDescr:='';

           for x := 0 to y do
               sDescr:= trim( ConcatSe( sDescr, '+') )+StrZero( acbrnf1.NotasFiscais.Items[0].NFe.cobr.dup[x].dVenc - sDtEmi, 2);

           if sDescr<>'' then
           begin
               sDescr := Copy( sDescr,1,35 );
               sPclCodigo := BuscaUmDadoSqlAsString('select min(pcl_codigo) from pcl0000 where pcl_nome='+qStr(sDescr));
               if sPclCodigo='' then
               begin
                    sPclCodigo := StrZero( DBiNICIO.GetNextSequence('GEN_PCL0000_CODIGO'),3);
                    ExecSql( 'insert into pcl0000( PCL_CODIGO, PCL_NOME, PCL_DESCTO, PCL_MULTA, PCL_JUROS, PCL_NPARCELAS, PCL_MANTERDIA, '+
                             '                     PCL_DISPONIVEL, PCL_MODALIDADE, PCL_TIPO, EMP_CODIGO)  '+
                             'values ( '+qStr(sPclCodigo)+', '+
                             '         '+qStr(sDescr)+', '+
                             '         0,0,0,'+IntTostr(y+1)+', '+
                             '         '+qStr('N')+', '+
                             '         '+qStr('S')+', '+
                             '         '+qStr('1')+', '+
                             '         '+qStr('V')+', '+
                             '         '+qStr(dbinicio.Empresa.EMP_CODIGO {emp_codigo})+' )');
                    Inc( CntTPParcela );
                    for x := 0 to y do
                    begin
                         sDifDias := Trunc ( acbrnf1.NotasFiscais.Items[0].NFe.cobr.dup[x].dVenc - sDtEmi ) ;
                         ExecSql( 'INSERT INTO PCL_PARCELA (EMP_CODIGO,PCL_CODIGO,PCP_DIA) '+
                                  'VALUES ('+qStr(DBInicio.Empresa.EMP_CODIGO {emp_codigo})+','+qStr(sPclCodigo)+','+IntToStr(sDifDias)+')' );
                    end;
               end;
           end;
     end;

     if BuscaUmDadoSqlAsDateTime('Select CLI_DTULTCOM from cli0000 where cli_codigo='+qStr( pCodPessoa ))<sDtEmi  then
        ExecSql( 'Update cli0000 set CLI_DTULTCOM = '+DateToSql( sDtEmi )+' where cli_codigo='+qStr( pCodPessoa ) );

     lFatReg := dbInicio.GetNextSequence('GEN_FAT0000_REGISTRO');
     if (acbrnf1.NotasFiscais.Items[0].NFe.cobr.fat.vLiq = 0) then
      sValo := acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF
     else
       sValo := acbrnf1.NotasFiscais.Items[0].NFe.cobr.fat.vLiq;

     ExecSql('INSERT INTO FAT0000 ( FAT_REGISTRO, FAT_CODIGO, NF_NUM_NFE, PCL_CODIGO, OPV_CODIGO, FAT_DTEMIS, CLI_CODIGO, REP_CODIGO, PED_CODIGO, ' +
             '                      FAT_PREVISAO, FAT_EXCLUSAO, FAT_OPERUF, FAT_LIVRO, FAT_VL_LIQ, FAT_VLFAT, EMP_CODIGO, OPE_CODIGO, FAT_OPERACAO, '+
             '                      CCT_CODIGO, FAT_VL_IPI, FAT_BASEICMS, FAT_BASESUB, FAT_ICMSRET ) '+
             'VALUES ( '+IntToStr( lFatReg )+', '+      //FAT_REGISTRO,
             '         '+qStr( wfatura )+', '+ //FAT_CODIGO,
             '         '+qStr( wfatura )+', '+ //NF_NUM_NFE,
             '         '+qStr( sPclCodigo )+', '+ // PCL_CODIGO,
             '         15, '+ //OPV_CODIGO,
             '         '+DateToSql( sDtEmi )+', '+ //FAT_DTEMIS,
             '         '+qStr( pCodPessoa )+', '+ //CLI_CODIGO,
             '         '+qStr( '001' )+', '+ //REP_CODIGO,
             '         '+qStr( pPedCodigo )+', '+ //PED_CODIGO,
             '         '+qStr( 'N' )+', '+  //FAT_PREVISAO,
             '         '+qStr( 'N' )+', '+ //FAT_EXCLUSAO,
             '         '+qStr(UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF))+', '+ //FAT_OPERUF,
             '         '+qStr( 'S' )+', '+ //FAT_LIVRO,
             '         '+FloatToSql( svalo )+', '+ //FAT_VL_LIQ,
             '         '+FloatToSql( svalo )+', '+ //FAT_VLFAT,
             '         '+qStr(DBInicio.empresa.EMP_CODIGO {emp_codigo} )+', '+ //EMP_CODIGO,
             '         '+qStr( pOpeCodigo )+', '+ //OPE_CODIGO,
             '         '+qStr( pOpeCodigo )+', '+ //FAT_OPERACAO,
             '         '+qStr( '003' )+', '+   //CCT_CODIGO,
             '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI )+', '+ //FAT_VL_IPI,
             '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC )+', '+ //FAT_BASEICMS,
             '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBCST )+', '+ //FAT_BASESUB,
             '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST )+' )' ); //FAT_ICMSRET
             Inc( CntFatura );

     for x := 0 to y do
     with acbrnf1.NotasFiscais.Items[0].NFe.cobr.dup[x] do
     begin
          //sNum := nDup;
          sDtVenc := dVenc;
          sValo := vDup;

          ExecSql( 'insert into FAT_PC01 ( FAT_CODIGO, REP_CODIGO, FPC_DTEMIS, USU_CODIGO, USU_LOGIN, cct_codigo, FPC_NPARCELAS, FPC_NUMER, ' +
                   '                       FPC_VLPARC, FPC_VENCTO, cli_codigo, FPC_SITPAG, FPC_STATUS, FPC_IMPDUP, FPC_STATUS_REMESSA, FPC_DESCONTADO, '+
                   '                       FPC_EXCLUSAO, FPC_CONFIRMADEVOLUCAO, FPC_PREVISAO, FPC_COBTIPO, FPC_TIPODOC, FAT_REGISTRO, EMP_CODIGO ) '+
                   'values ( '+qStr( wfatura )+', '+ //FAT_CODIGO,
                   '         '+qStr( '001' )+', '+ //REP_CODIGO,
                   '         '+DateToSql( sDtEmi )+', '+ //FPC_DTEMIS,
                   '         0, '+qStr( 'NOVI' )+', '+ // USU_CODIGO, USU_LOGIN,
                   '         '+qStr( '003' )+', '+   //CCT_CODIGO,
                   '         '+qStr( StrZero( y+1, 2 ) )+', '+ //FPC_NPARCELAS,
                   '         '+qStr( StrZero( x+1, 2 ) )+', '+ // FPC_NUMER,
                   '         '+FloatToSql( sValo )+', '+ //FPC_VLPARC,
                   '         '+DateToSql( sDtVenc )+', '+ //FPC_VENCTO,
                   '         '+qStr( pCodPessoa )+', '+ //CLI_CODIGO,
                   '         '+qStr( 'P' )+', '+ //FPC_SITPAG,
                   '         '+qStr( 'Pendente' )+', '+ //FPC_STATUS,
                   '         '+qStr( 'N' )+', '+ //FPC_IMPDUP,
                   '         '+qStr( 'N' )+', '+ //FPC_STATUS_REMESSA,
                   '         '+qStr( 'N' )+', '+ //FPC_DESCONTADO,
                   '         '+qStr( 'N' )+', '+ //FPC_EXCLUSAO,
                   '         '+qStr( 'N' )+', '+ //FPC_CONFIRMADEVOLUCAO,
                   '         '+qStr( 'N' )+', '+ //FPC_PREVISAO,
                   '         '+qStr( 'CT' )+', '+ //FPC_COBTIPO,
                   '         '+qStr( 'OU' )+', '+ //FPC_TIPODOC
                   '         '+qStr( dbInicio.GetNextSequence( 'GEN_FAT_PC01_REGISTRO').ToString )+', '+
                   '         '+qStr( dbinicio.Empresa.EMP_CODIGO )+' )' );
          Inc( CntParcela );

          ExecSql( 'insert into NF_PC01 ( FAT_CODIGO, FPC_NUMER, REP_CODIGO, FPC_DTEMIS, FPC_NPARCELAS, '+
                   '                      FPC_COBTIPO, FPC_TIPODOC, FPC_SITPAG, FPC_STATUS, FPC_VENCTO, '+
                   '                      FPC_VLPARC, CLI_CODIGO, FPC_JUROS, FPC_MULTA, FPC_VL_RET, '+
                   '                      EMP_CODIGO, FPC_PREVISAO, FPC_STATUS_REMESSA, '+
                   '                      FPC_DESCONTADO, FPC_CONFIRMADEVOLUCAO, FPC_EXCLUSAO, USU_CODIGO, USU_LOGIN ) '+
                   'values ( '+qStr( wfatura )+', '+
                   '         '+qStr( StrZero( x+1, 2 ) )+', '+ // FPC_NUMER,
                   '         '+qStr( '001' )+', '+ //REP_CODIGO,
                   '         '+DateToSql( sDtEmi )+', '+ //FPC_DTEMIS,
                   '         '+qStr( StrZero( y+1, 2 ) )+', '+ //FPC_NPARCELAS,
                   '         '+qStr( 'CT' )+', '+ //FPC_COBTIPO,
                   '         '+qStr( 'OU' )+', '+ //FPC_TIPODOC
                   '         '+qStr( 'P' )+', '+ //FPC_SITPAG,
                   '         '+qStr( 'Pendente' )+', '+ //FPC_STATUS,
                   '         '+DateToSql( sDtVenc )+', '+ //FPC_VENCTO,
                   '         '+FloatToSql( sValo )+', '+ //FPC_VLPARC,
                   '         '+qStr( pCodPessoa )+', '+ //CLI_CODIGO,
                   '         0,0,0, '+ // FPC_JUROS, FPC_MULTA, FPC_VL_RET, '
                   '         '+qStr( dbinicio.Empresa.EMP_CODIGO )+', '+  //EMP_CODIGO
                   '         '+qStr( 'N' )+', '+ //FPC_PREVISAO,
                   '         '+qStr( 'N' )+', '+ //FPC_STATUS_REMESSA,
                   '         '+qStr( 'N' )+', '+ //FPC_DESCONTADO,
                   '         '+qStr( 'N' )+', '+ //FPC_CONFIRMADEVOLUCAO,
                   '         '+qStr( 'N' )+', '+ //FPC_EXCLUSAO,
                   '         0, '+qStr( 'NOVI' )+' )' ); // USU_CODIGO, USU_LOGIN,
          Inc( CntParcelaFat );


     end;

     Result := sPclCodigo;
end;

Procedure TfrmImportarXMLMigracaoNovi.AtualizaProduto (const i : integer; const pCodProd: string);
//pCodProd, pCest : string; const pQtd:Currency; const ncm : string );
begin
     ExecSql( 'update prd0000 set prd_saida = prd_saida + '+floattosql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.qCom )+
              IIF(acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.ncm <> '',', IPI_CODIGO = '+QuotedStr(acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.ncm ),'')+
              iif(acbrnf1.NotasFiscais.Items[0].NFe.det[I].prod.CEST<>'',', CEST_COD='+qStr( acbrnf1.NotasFiscais.Items[0].NFe.det[I].prod.CEST ),'')+
              ' , prd_descri = '+ quotedStr(cOPY(acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.xProd,1,100)) +
              ' , STB_TRibutacao = '+qStr( CSTICMSToStr( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMS.CST ) )+
              ' , prd_origem = '+ OrigToStr(acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMS.orig) +
              ' , PRD_CSTPISCOFINS = '+ qStr( CSTCOFINSToStr( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.COFINS.CST ) )+
              ' , PRD_CODBARRA = ' + qStr(COPY(acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.cEAN,1,13))+
              ' where prd_codigo='+qStr(pCodProd) );
  Inc(cntProdutosUpd);
end;

Function TfrmImportarXMLMigracaoNovi.InsereProduto( i: integer): string;
var lRefer: string ;
begin
     if acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.ncm <> '' then
       if BuscaUmDadoSqlAsInteger('SELECT cast(count(1) as integer) FROM IPI0000 WHERE IPI_CODIGO = '+QuotedStr(acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.ncm)) = 0 then
          ExecSql( 'insert into IPI0000 (ipi_codigo, EMP_CODIGO) values ('+QuotedStr(acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.ncm) +','+
                    QuotedStr(DBInicio.Empresa.EMP_CODIGO)+ ')');


     lRefer := COPY(acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.cProd,1,20);
     result := BuscaUmdadoSqlAsString( 'select prd_codigo from prd0000 where prd_refer='+qStr( lRefer ) +  ConcatSe(' and ',dbinicio.ExclusivoSql('PRODUTOS')) );

     if (RESULT = '') AND (DBInicio.Usuario.USERNAME = 'ADM')  and (DBInicio.Usuario.SENHAPADRAO = DBInicio.Usuario.PSW) then
         RESULT := BuscaUmDadoSqlAsString(' SELECT prd_CODIGO, rand(),t1.* FROM prd0000 t1 ' +ConcatSe(' where ',dbinicio.ExclusivoSql('PRODUTOS')) + ' ORDER BY 2 ' );

     if result='' then
     begin
          result := StrZero( dbInicio.GetNextSequence('GEN_PRD_CODIGO') , 5);
          ExecSql( 'insert into prd0000 ( prd_codigo, prd_refer, prd_status, prd_dtcadastro, prd_descri, prd_und, PGR_CODIGO, ' +
                   '                      PTI_CODIGO, IPI_CODIGO, LIN_CODIGO, emp_codigo, STB_TRibutacao, prd_origem, prd_prodserv, '+
                   '                      PRD_GERENCIA_LOTE, prd_grade_obrigatorio, cest_cod, PRD_CSTPISCOFINS, PRD_CODBARRA, prd_saida )'+
                   'values ( '+qStr(Result)+', '+
                   '         '+qStr(lRefer)+', '+
                   '         '+qStr('A')+', '+
                   '         '+DateToSql( acbrnf1.NotasFiscais.Items[0].NFe.IDE.dEmi )+', '+
                   '         '+qStr(cOPY(acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.xProd,1,100))+', '+
                   '         '+qStr(COPY(acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.uCom,1,3))+', '+
                   '         '+qStr('002')+', '+
                   '         '+qStr('005')+', '+
                   '         '+qStr(acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.ncm)+', '+
                   '         '+qStr('001')+', '+
                   '         '+qStr(dbinicio.Empresa.EMP_CODIGO {emp_codigo})+', '+ //EMP_CODIGO,
                   '         '+qStr( CSTICMSToStr( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMS.CST ) )+', '+ //STB_TRibutacao
                   '         '+OrigToStr(acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMS.orig)+', '+       //prd_origem
                   '         '+qStr('P')+', '+
                   '         '+qStr('N')+', '+
                   '         '+qStr('N')+', '+
                   '         '+qStr(acbrnf1.NotasFiscais.Items[0].NFe.det[I].prod.CEST)+', '+
                   '         '+qStr( CSTCOFINSToStr( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.COFINS.CST ) )+', '+
                   '         '+qStr(COPY(acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.cEAN,1,13))+', '+
                   '         '+floattosql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.qCom )+') ');

         Inc(CntProduto);
     end
     Else
       AtualizaProduto ( i, Result);
end;

procedure TfrmImportarXMLMigracaoNovi.InsereItensNFE ( result: string; var vBaseIpi: currency; pPedCodigo:string );
var I, y:integer;
    lNfRegistro, lCodProduto: string;
begin
     vBaseIpi:=0;
     y := acbrnf1.NotasFiscais.Items[0].NFe.det.count -1 ;

     for I := 0 to y do
       begin
           LCodProduto := InsereProduto( I );
           vBaseIPI:=vBaseIPI + acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.IPI.vBC;
           lNfRegistro:= dbInicio.GetNextSequence('gen_NF_IT01').tostring;

           ExecSql( ' Insert into NF_IT01 ( nf_registro , emp_codigo, USU_CODIGO, AMX_CODIGO_DESTINO, PRD_CODIGO, NF_IT_NOTANUMER, '+
                    '                       PRD_REFER, PRD_DESCRI, PRD_COMPL_DESCRI, PED_CODIGO, NF_QTDE, NF_IFRETE, '+
                    '                       NF_IDESP_ACES, NF_ISEGURO, NF_IDESCTO1, CEST_COD, '+
                    '                       NF_PRECO, NF_ALIQDOSIMPLES, '+
                    '                       NF_CREDICMSDOSIMPLES, NF_ICMSBASE, NF_ICMSALIQ, NF_ICMSVALOR, NF_ICMSREDUCAOPERC,' +
                    '                       NF_IPIBASE, NF_IPIVALOR, IPI_CODIGO, NF_IPIALIQ, NF_IPI_POR_UNIDADE, NF_SUBTRIBASE, ' +
                    '                       NF_ALIQSUBTRIB, NF_VLSUBST, NF_MVAPERC, '+
                    '                       NF_FLAG_ATUALIZA_ESTOQUE, NF_PRODUTO_AGREGADO, OPE_CODIGO, NTP_CFOP, '+
                    '                       STB_TRIBUTACAO, NF_BASE_PIS, NF_ALIQPIS, NF_VLPIS, NF_BASE_COFINS, NF_ALIQCOFINS, '+
                    '                       NF_VLCOFINS, NF_VALOR_BCICMS_DESTINO, NF_PERC_FCP, NF_ALIQ_ICMS_INTERNA_DESTINO, '+
                    '                       NF_ALIQ_ICMS_INTERESTADUAL, NF_PERC_PARTILHA_DESTINO, '+
                    '                       NF_VALOR_FCP, NF_VALOR_PARTILHA_DESTINO, NF_VALOR_PARTILHA_ORIGEM,nf_totalitem ) '+
                    ' values ( '+qStr(lNfRegistro)+', '+  //nf_registro ,
                    '          '+qStr(dbinicio.Empresa.EMP_CODIGO {emp_codigo})+', '+ //emp_codigo,
                    '          '+DBInicio.Usuario.CODIGO+','+  //USU_CODIGO,
                    '          '+qStr('0001')+', '+ // amx_codigo
                    '          '+qStr(lCodProduto)+', '+ //PRD_CODIGO,
                    '          '+qStr( strzero( acbrnf1.NotasFiscais.Items[0].NFe.Ide.nNF,6) )+', '+ //NF_IT_NOTANUMER, '+
                    '          '+qStr( COPY(acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.cProd,1,20) )+', '+ //PRD_REFER,
                    '          '+qStr( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.xProd )+', '+ //PRD_DESCRI,
                    '          '+qStr( COPY(acbrnf1.NotasFiscais.Items[0].NFe.det[I].InfAdProd,1,150) )+', '+ //PRD_COMPL_DESCRI,
                    '          '+qStr( pPedCodigo )+', '+ //PED_CODIGO,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.qCom )+', '+ //NF_QTDE,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.vFrete )+', '+ //NF_IFRETE, '+
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.vOutro )+', '+ //NF_IDESP_ACES,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.vSeg )+', '+ //NF_ISEGURO,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.vDesc )+', '+ //NF_IDESCTO1,
                    '          '+qStr( acbrnf1.NotasFiscais.Items[0].NFe.det[I].prod.CEST)+', '+ //CEST_COD, '+
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.vUnCom )+', '+ //NF_PRECO,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].imposto.ICMS.pCredSN )+', '+ //NF_ALIQDOSIMPLES, '+
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].imposto.ICMS.vCredICMSSN )+', '+ //NF_CREDICMSDOSIMPLES,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMS.vBC )+', '+ //NF_ICMSBASE,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMS.pICMS )+', '+ //NF_ICMSALIQ,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMS.vICMS )+', '+ // NF_ICMSVALOR,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMS.pRedBC )+', '+ //NF_ICMSREDUCAOPERC,' +
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.IPI.vBC )+', '+ //NF_IPIBASE,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.IPI.vIPI )+', '+ //NF_IPIVALOR,
                    '          '+qStr(acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.ncm)+', '+ //IPI_CODIGO,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.IPI.pIPI )+', '+ //NF_IPIALIQ,
                    '          ' + iif(acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.IPI.vUnid > 0, QuotedStr('S'), QuotedStr('N') )+', '+ //NF_IPI_POR_UNIDADE,
//                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.IPI.vUnid )+', '+ //NF_IPI_POR_UNIDADE,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMS.vBCST )+', '+ //NF_SUBTRIBASE, ' +
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMS.pICMSST )+', '+ //NF_ALIQSUBTRIB,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMS.vICMSST )+', '+ //NF_VLSUBST,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMS.pMVAST )+', '+ //NF_MVAPERC, '+
                    '          '+qStr('S')+', '+  //NF_FLAG_ATUALIZA_ESTOQUE,
                    '          '+qStr('N')+', '+  //NF_PRODUTO_AGREGADO,
                    '          '+qStr( GetOperFisc(I) )+', '+ //OPE_CODIGO,
                    '          '+qStr( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.cfop)+', '+ //NTP_CFOP, '+
                    '          '+qStr( CSTICMSToStr( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMS.CST ) )+', '+ //STB_TRIBUTACAO,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.PIS.vBC )+', '+ //NF_BASE_PIS,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.PIS.pPis )+', '+ //NF_ALIQPIS,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.PIS.vPis )+', '+ //NF_VLPIS,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.COFINS.vBC )+', '+ //NF_BASE_COFINS,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.COFINS.pCOFINS )+', '+ //NF_ALIQCOFINS, '+
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.COFINS.vCOFINS )+', '+   //NF_VLCOFINS,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMSUFDest.vBCUFDest )+', '+ //NF_VALOR_BCICMS_DESTINO,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMSUFDest.pFCPUFDest )+', '+ //NF_PERC_FCP,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMSUFDest.pICMSUFDest )+', '+ //NF_ALIQ_ICMS_INTERNA_DESTINO, '+
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMSUFDest.pICMSInter )+', '+  //NF_ALIQ_ICMS_INTERESTADUAL,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMSUFDest.pICMSInterPart )+', '+ //NF_PERC_PARTILHA_DESTINO,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMSUFDest.vFCPUFDest )+', '+ //NF_VALOR_FCP,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMSUFDest.vICMSUFDest )+', '+ //NF_VALOR_PARTILHA_DESTINO,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMSUFDest.vICMSUFRemet )+','+
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.vProd)+' )'); //NF_VALOR_PARTILHA_ORIGEM
           Inc( CntItemNF );



           ExecSql( ' INSERT INTO ped_it01 ( PRF_REGISTRO, PED_CODIGO, PRD_CODIGO, PRD_REFER, PRF_QTDE, PRF_QTDEFAT, PRF_QUANT_TRIB, PRF_PRECO, PRF_PRECO_ORIGINAL, '+
                    '                        PRF_PRECO_BRUTO, PRF_IPIALIQ, PRF_VALOR_ST, PRF_ICMSALIQ, PRF_PRDDESCRI, USU_CODIGO, EMP_CODIGO,'+
                    '                        PRF_FLAG_ATUALIZA_ESTOQUE, PRF_ORIGEM_ITEM, PRF_PRODUTO_AGREGADO,'+
                    '                        PRF_VALOR_ICMS,  AMX_CODIGO_DESTINO, AMX_CODIGO_origem, PRDCO_CODIGO_ORIGINAL ) '+
                    ' values ( '+dbInicio.GetNextSequence('GEN_ITEM_PEDIDO').ToString+', '+ // PRF_REGISTRO,
                    '          '+qStr(pPedCodigo)+', '+ //PED_CODIGO,
                    '          '+qstr(lCodProduto)+', '+ //PRD_CODIGO,
                    '          '+qStr( COPY(acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.cProd,1,20) )+', '+ //PRD_REFER,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.qCom )+', '+ //PRF_QTDE
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.qCom )+', '+ //PRF_QTDEFAT,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.qTrib )+', '+ //PRF_QUANT_TRIB,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.vUnCom )+', '+ //PRF_PRECO,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.vUnCom )+', '+ //PRF_PRECO_ORIGINAL,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.vUnCom )+', '+ //PRF_PRECO_BRUTO,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.IPI.pIPI )+', '+ //PRF_IPIALIQ,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMS.vICMSST )+', '+//PRF_VALOR_ST,
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMS.pICMS )+', '+ //PRF_ICMSALIQ,
                    '          '+qStr( COPY(acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.xProd,1,100) )+', '+ //PRF_PRDDESCRI,
                    '          '+ DBInicio.Usuario.CODIGO +','+ //USU_CODIGO,
                    '          '+qStr(dbinicio.Empresa.EMP_CODIGO {emp_codigo})+', '+
                    '          '+qStr('S')+', '+ //PRF_FLAG_ATUALIZA_ESTOQUE,
                    '          '+OrigToStr(acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMS.orig)+', '+ //PRF_ORIGEM_ITEM,
                    '          '+qStr('N')+', '+ //PRF_PRODUTO_AGREGADO,'+
                    '          '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.det[I].Imposto.ICMS.vICMS )+', '+ //PRF_VALOR_ICMS,
                    '          '+qStr('0001')+', '+ // AMX_CODIGO_DESTINO ) '+
                    '          '+qStr('0001')+', '+        //AMX_CODIGO_ORIGEM
                    '          '+QuotedStr(  acbrnf1.NotasFiscais.Items[0].NFe.det[I].Prod.cProd)+    ' )' ); // PRDCO_CODIGO_ORIGINAL ) '+
           Inc( CntItemPED );
       end;
end;

Procedure TfrmImportarXMLMigracaoNovi.InsereNFE ( pCodPessoa, pCodTransp:string );
var sPclCodigo, sPedCodigo, sopCodigo, sNfRegistro, sttnfe: string;
    vBaseIpi: currency ;
begin

     sNfRegistro := dbInicio.GetNextSequence('GEN_NF_REGISTRO').ToString;
     sPedCodigo := StrZero( dbInicio.GetNextSequence('GEN_PEDIDO'), 6);
     sopCodigo := GetOperFisc(0) ;

     if acbrnf1.NotasFiscais.Items[0].NFe.ide.finnfe=fnNormal then
        sPclCodigo:=InsereReceber( sNfRegistro, pCodPessoa, sPedCodigo, sOpCodigo );

     vBaseIpi := 0 ;

     InsereItensNFE ( sNfRegistro, vBaseIpi, sPedCodigo );

     if acbrnf1.NotasFiscais.Items[0].NFe.ProcNfe.cStat=100 then
        sttnfe:='A'
     Else
        sttnfe:='R';

     ExecSql( 'insert into nf0001 (  NF_REGISTRO, nf_cancelada, EMP_CODIGO, CLI_CODIGO, NF_NOTANUMBER, nf_status_nfe, nf_enviado_nfe_email, NF_EMAIL_ENVIO_NFE, ' +
              '                      NF_CHAVE_NFE, NF_NUM_NFE, NF_EMISSAO, NF_SAIDA, NF_HORASAIDA, ped_codigo, '+
              '                      NF_VLFRETE, NF_DESP_ACES, NF_SERIE, NF_VLSEGURO, NF_IMPRESS, ' +
              '                      NF_VL_DESCTO, NF_ALIQ_ICMS, NF_BASE_IPI, NF_VL_IPI, NF_VALORTOT_PIS, NF_VALORTOT_COFINS, '+
              '                      NF_VLBASESUBTRIB, NF_VL_SUBTRIB, NF_TOT_PROD, NF_TOT_NOTA, NF_BASEICMS, NF_VL_ICMS, NF_OBSERVACAO, '+
              '                      OPE_CODIGO, NF_TIPO_FRETE, OPE_NATUREZA, NF_PLACAVE, NF_UFVEICULO, NF_VENDA_FATURADA,NF_ENTR_SAID, NF_MODELO_NF,NF_TIPONOTA  ) '+
              'values ( '+sNfRegistro+', '+  //NF_REGISTRO,
              '         '+qStr('N')+', '+
              '         '+qStr( dbinicio.Empresa.EMP_CODIGO {emp_codigo})+', '+ //EMP_CODIGO,
              '         '+qStr( pCodPessoa)+', '+ //CLI_CODIGO,
              '         '+qStr( strzero( acbrnf1.NotasFiscais.Items[0].NFe.Ide.nNF,6) )+', '+ //NF_NOTANUMBER,
              '         '+qStr( sttnfe )+', '+ //nf_status_nfe,
              '         '+qStr( 'S')+', '+ //nf_enviado_nfe_email,
              '         '+qStr( UpperCase(acbrnf1.NotasFiscais.Items[0].NFe.Dest.email))+', '+ //NF_EMAIL_ENVIO_NFE, ' +
              '         '+qStr( acbrnf1.NotasFiscais.Items[0].NFe.ProcNfe.chNFe)+', '+  //NF_CHAVE_NFE,
              '         '+qStr( strzero( acbrnf1.NotasFiscais.Items[0].NFe.Ide.nNF,6) )+', '+ //NF_NUM_NFE,
              '         '+DATETOSQL(acbrnf1.NotasFiscais.Items[0].NFe.IDE.DeMI)+', '+ //NF_EMISSAO,
              '         '+DATETOSQL(acbrnf1.NotasFiscais.Items[0].NFe.IDE.dSaiEnt)+', '+ //NF_SAIDA,
              '         '+timetosql(acbrnf1.NotasFiscais.Items[0].NFe.IDE.hSaiEnt)+', '+ //NF_HORASAIDA,
              '         '+qStr(sPedCodigo)+', '+ //ped_codigo, '+
              '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.total.icmstot.vFrete )+', '+ //NF_VLFRETE,
              '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.total.icmstot.vOutro )+', '+ //DESP_ACES,
              '         '+qStr( acbrnf1.NotasFiscais.Items[0].NFe.ide.serie.toString )+', '+ //NF_SERIE,
              '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg )+', '+ //NF_VLSEGURO, ' +
              '         '+qStr('S')+', '+ //NF_IMPRESS
              '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc )+', '+ //ENF_VL_DESCTO,
              '         0, '+ //ENF_ALIQ_ICMS,
              '         '+FloatToSql( vBaseIPI )+', '+ //ENF_BASE_IPI,
              '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI )+', '+ //ENF_VL_IPI,
              '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS )+', '+ //ENF_VLPIS,
              '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vCOFINS )+', '+ //ENF_VLCOFINS, '+
              '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBCST )+', '+ //ENF_VLBASESUBTRIB,
              '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST )+', '+ //ENF_VL_SUBTRIB,
              '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPROD )+', '+ //ENF_TOT_PROD,
              '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF )+', '+ //ENF_TOT_NOTA,
              '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC )+', '+ //ENF_BASEICMS,
              '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS  )+', '+ //ENF_VL_ICMS,
              '         '+qStr( COPY(acbrnf1.NotasFiscais.Items[0].NFe.InfAdic.InfCpl,1,100) )+', '+ //NF_OBSERVACAO, '+
              '         '+qStr( sOpCodigo )+', '+ //OPE_CODIGO,
              '         '+qStr( modFreteToStr( acbrnf1.NotasFiscais.Items[0].NFe.Transp.ModFrete ))+', '+ //NF_TIPO_FRETE,
              '         '+qStr( acbrnf1.NotasFiscais.Items[0].NFe.det[0].Prod.cfop )+', '+ //OPE_NATUREZA
              '         '+qStr( acbrnf1.NotasFiscais.Items[0].NFe.Transp.VeicTransp.placa )+', '+ //NF_PLACAVE,
              '         '+qStr( acbrnf1.NotasFiscais.Items[0].NFe.Transp.VeicTransp.uf )+ ','+ QuotedStr('S')+ ','+
              '         '+qStr(IIF(acbrnf1.NotasFiscais.Items[0].NFe.Ide.tpNF = tnEntrada, 'E','S'))+ ','+
              '         '+qstr(IntToStr(acbrnf1.NotasFiscais.Items[0].NFe.Ide.modelo))+ ','+ //NF_UFVEICULO
              '         '+QuotedStr('P')+//NF_TIPONOTA
                            ' )' );


     CdsXML.Close;
     qXML.CommandText := 'SELECT NFX_REGISTRO,EMP_CODIGO,NF_REGISTRO, NFX_XML,NFX_XML_RECIBO FROM NF0001_XML where 1=0';
     CdsXML.Open;
     CdsXML.Insert;
     cdsXMLNFX_REGISTRO.AsInteger := GetNextSequence('GEN_NF0001_XML_ID') ;
     cdsXMLEMP_CODIGO.AsInteger := StrToInt(dbInicio.Emp_Codigo);
     CdsXMLNF_REGISTRO.AsInteger :=  StrToInt(sNfRegistro);
     CdsXMLNFX_XML_RECIBO.AsString := UTF8Encode(acbrnf1.WebServices.Retorno.Recibo);
     CdsXML.FieldByName('NFX_XML').AsString := UTF8Encode( acbrnf1.NotasFiscais.Items[0].XMLAssinado);
     CdsXML.ApplyUpdates(0);





     Inc( CntNF );

     ExecSql( 'insert into ped0000 (  PED_OBSERVACAO_NOTA, PED_OS, TRP_CODIGO, PED_STATUS_ANALISE_CREDITO, FPG_REGISTRO, PED_CODIGO, '+
              '                       AMX_CODIGO, PED_DTENTRADA, PED_VLTOTAL_LIQ, PED_VLTOTAL_BRUTO,PED_VLFATURADO, PED_SITUACAO, PED_DESCTOVL, '+
              '                       OPE_CODIGO, ped_vlfrete, ped_desp_aces, ped_vlseguro, ped_registro, id_pedido, '+
              '                       CLI_CODIGO, OPV_CODIGO, PCL_CODIGO, REP_CODIGO, EMP_CODIGO, PED_FRETE ) '+
              'VALUES ( '+qStr( COPY(acbrnf1.NotasFiscais.Items[0].NFe.InfAdic.InfCpl,1,100) )+', '+ //PED_OBSERVACAO_NOTA,
              '         '+qStr( 'N' )+', '+ // ped_os
              '         '+qStr( pCodTransp )+', '+ //TRP_CODIGO,
              '         '+qStr( 'L' )+', '+ //PED_STATUS_ANALISE_CREDITO,
              '         4, '+ //FPG_REGISTRO,
              '         '+qStr( sPedCodigo ) +', '+
              '         '+qStr('0001')+', '+ // amx_codigo
              '         '+DateToSql( acbrnf1.NotasFiscais.Items[0].NFe.IDE.dEmi )+', '+
              '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPROD )+', '+ //PED_VLTOTAL_LIQ,
              '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPROD )+', '+ //PED_VLTOTAL_BRUTO,
              '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPROD )+', '+ //PED_VLFATURADO,
              '         '+qStr('T')+', '+ //PED_SITUACAO,
              '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc )+', '+ // PED_DESCTOVL
              '         '+qStr( sOpCodigo )+', '+ //OPE_CODIGO,
              '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.total.icmstot.vFrete )+', '+ // ped_vlfrete
              '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.total.icmstot.vOutro )+', '+ //ped_desp_aces
              '         '+FloatToSql( acbrnf1.NotasFiscais.Items[0].NFe.total.icmstot.vSeg )+', '+ //ped_vlseguro
              '         '+sPedCodigo+', '+
              '         '+dbInicio.GetNextSequence('gen_id_pedido').ToString+', '+
              '         '+qStr( pCodPessoa)+', '+
              '         15, '+ //OPV_CODIGO,
              '         '+qStr( sPclCodigo )+', '+
              '         '+qStr( '001' )+', '+ //ped_repcodigo
              '         '+qStr( dbinicio.empresa.EMP_CODIGO {emp_codigo})+', '+ //EMP_CODIGO,
              '         '+qStr( modFreteToStr( acbrnf1.NotasFiscais.Items[0].NFe.Transp.ModFrete ) )+' )' ); //PED_FRETE
     Inc( CntPed );

end;

procedure TfrmImportarXMLMigracaoNovi.ProcessaNota;
var sCodPessoa, sCodTransp, sNumNF: string;
var i : integer;
begin

     if acbrnf1.NotasFiscais.Items[0].NFe.ProcNfe.tpAmb = taProducao then
     begin
         if (pCnpj = acbrnf1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF) OR (MatchStr(DBInicio.Usuario.USERNAME,['ADM','NOVI'])) then
         BEGIN
              sNumNF := strzero( acbrnf1.NotasFiscais.Items[0].NFe.Ide.nNF,6);
              if sNumNF<>'000000' then
              begin
                   dbinicio.ExecSql('execute block as              '+
                                    ' declare variable x integer;  '+
                                    ' begin'+
                                    ' SELECT max(prd0000.prd_codigo) from prd0000 into x; '+
                                    ' execute statement  '+QuotedStr('set generator GEN_PRD_CODIGO to ') +' || (x+1); '+
                                    ' end; '+
                                   '  ');
                   if BuscaUmDadoSqlasInteger('Select cast(count(*) as integer) as conta from    nf0001 where emp_codigo = '+QuotedStr(dbinicio.empresa.EMP_CODIGO)+ ' and NF_NOTANUMBER='+qStr( sNumNF ))=0 then
                   begin

                        if acbrnf1.NotasFiscais.Items[0].NFe.ide.tpnf=tnSaida then
                           sCodPessoa:=InsereCliente
                        else
                        begin
                             sCodPessoa:=InsereCliente;
                             InsereFornecedor ;
                        end;

                        sCodTransp:=InsereTransportadora;
                        InsereNFE ( sCodPessoa, sCodTransp );
                   end // se já tem nota cadastraddo no sistema, atualizar cliente e produto
                   Else
                   begin
                     if acbrnf1.NotasFiscais.Items[0].NFe.ide.tpnf=tnSaida then
                        sCodPessoa:=InsereCliente  ;
                     for I := 0 to acbrnf1.NotasFiscais.Items[0].NFe.det.count -1 do
                         InsereProduto(i);
                       prMotivo := 'Registro NF já existe na base. Atualizando cadastros';


                   end;

              end
              Else
                  prMotivo:='NumNF=000000';
         END
         Else
         begin
             InsereFornecedor;
             InsereTransportadora;
         end;
     end
     Else
         prMotivo := 'NFe.ProcNfe.tpAmb<>taProducao' ;
     acbrnf1.NotasFiscais.Clear;
end;

procedure TfrmImportarXMLMigracaoNovi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfrmImportarXMLMigracaoNovi.FormCreate(Sender: TObject);
begin
    inherited;
    lbQtd.Caption:='Pronto...';
    DirectoryEdit1.Text := ExtractFileDir(Application.ExeName);
    Button2.Enabled := False;
    pCnpj := ExtrairNumeros(DBInicio.Empresa.CNPJ_CnPF);

    openAux( 'select OPE_CODIGO_DENTRO, OPE_CODIGO_FORA from EMP0000 WHERE EMP_CODIGO = '+QuotedStr(DBInicio.empresa.EMP_CODIGO {emp_codigo}) );
    pOpeInt := qAux.Fields[0].AsString;
    pOpeExt := qAux.Fields[1].AsString;
    qAux.Close;
end;

procedure TfrmImportarXMLMigracaoNovi.FormDestroy(Sender: TObject);
begin
  inherited;
  frmImportarXMLMigracaoNovi := Nil;
end;

procedure TfrmImportarXMLMigracaoNovi.SearchXML(Dir: String);
Var ProcLNK, DirSearch: TSearchRec;
    Tipo: String[3];
    FindResult:integer;
///
  function IsDirNotation(DirName: String): Boolean;
  begin
       Result := (DirName = '.') or (DirName = '..');
  end;
///
begin


     if Dir[Length(Dir)] <> '\' then
        Dir := Dir + '\';

     FindResult := FindFirst(Dir+'*.xml', faArchive, ProcLNK); // busca arquivos

     try
        While FindResult = 0 do
        begin
             With ListViewLNK.Items.Add, SubItems do
             begin
                  Tipo := Copy(ExtractFileExt(ProcLNK.Name), 2, 4);
                  Caption := ProcLNK.Name;
                  Add(Dir);
             end;
             application.ProcessMessages;
             FindResult := FindNext(ProcLNK);
        end;

        FindResult := FindFirst(Dir+'*.*', faDirectory, DirSearch); // busca sub-pastas
        While FindResult = 0 do
        begin
             if ((DirSearch.Attr and faDirectory) = faDirectory) and (not IsDirNotation(DirSearch.Name)) then
                SearchXML(Dir+DirSearch.Name );
             FindResult := FindNext(DirSearch);
        end;

     finally
            FindClose(ProcLNK);
     end;
end;

end.


