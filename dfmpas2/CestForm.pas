unit CestForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBPesquisaForm, {{DBXpress,} FMTBCd, DB, DBClient, Provider,
  SqlExpr, Menus, ExtCtrls, ACBrBase, ACBrCalculadora, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, Buttons, ComCtrls, StdCtrls, Mask, DBCtrls,
  SgDbLabeledUnit, Data.DBXInterBase, Data.DBXFirebird, ACBrEnterTab;

type
  TfrmCEST = class(TfrmBaseDBPesquisa)
    cbb1: TComboBox;
    lbl1: TLabel;
    CdsBuscoCEST_ID: TIntegerField;
    CdsBuscoCEST_COD: TStringField;
    CdsBuscoCEST_NCM: TStringField;
    CdsBuscoCEST_DESCRICAO: TStringField;
    mnuListar: TPopupMenu;
    Listagem1: TMenuItem;
    N1: TMenuItem;
    ProdutossemCEST1: TMenuItem;
    ProdutoscomCEST1: TMenuItem;
    SqlPrdCest: TSQLQuery;
    SqlPrdCestPRD_REFER: TStringField;
    SqlPrdCestPRD_DESCRI: TStringField;
    SqlPrdCestCEST_COD: TStringField;
    SqlPrdCestPRD_CODIGO: TStringField;
    SqlPrdCestIPI_CODIGO: TStringField;
    lbledt1: TLabeledEdit;
    lbledt2: TLabeledEdit;
    lbledt3: TLabeledEdit;
    procedure FormCreate(Sender: tObject);
    procedure btnNovoClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure btnImprimeClick(Sender: tObject);
    procedure Listagem1Click(Sender: tObject);
    procedure ProdutossemCEST1Click(Sender: tObject);
    procedure ProdutoscomCEST1Click(Sender: tObject);
    procedure btnExtraClick(Sender: tObject);
    procedure btnLimparClick(Sender: tObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    pNcm: string;
    procedure FiltraCEST;
    procedure ListaProdutosCest(pNull: Boolean);
    procedure MontaSqlCestNull(pNull: Boolean);
    procedure SetvNcm(const Value: string);
    procedure AtribuirCEST;
  public
    function GrupoCEST( pNcm,pCharControle: string ): String ;
    Property NCM: string read pNcm Write SetvNcm;
    procedure BotoesAcesso;

  end;

var
  frmCEST: TfrmCEST;

implementation

uses Uteis, InicioDB, EditCESTForm, BaseTelaRelatorioForm;


{$R *.dfm}
procedure TfrmCEST.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfrmCEST.FormCreate(Sender: tObject);
begin
  inherited;
  self.SetTamanhoMinimo(514,900);
  Self.CampoID:='CEST_ID';
  Self.ProcedureFiltro:=FiltraCEST;
  aCaption:='Tabela CEST(Código Especificador da Substituição Tributária)';

  // ADJUTOR 443 (apagar TABELA INUT)
  IF DBInicio.TABELAEXISTE( 'TAB_CEST' ) THEN
     ExecSql('DROP TABLE TAB_CEST');

  pNcm := '';
end;

procedure TfrmCEST.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmCEST := Nil;
end;

procedure TfrmCEST.FormResize(Sender: TObject);
begin
  inherited;
  Width := 781;
  Height := 455;
end;

procedure TfrmCEST.FiltraCEST;
var vOrd: string;
begin
     with qBusco do
     begin
          sql.Clear;
          SQL.Add('Select * from CEST0000');
          if StrToIntDef(lbledt3.Text,-1)=-1 then
             SqlAdd( CampoSql( 'CEST_DESCRICAO',lbledt3.Text) )
          else
             SqlAdd( CampoSql( 'CEST_ID',lbledt3.Text) );
          SqlAdd( CampoSql('CEST_COD',lbledt1.Text));
          SqlAdd( CampoSql('CEST_NCM',GrupoCEST(lbledt2.Text,'=') ));
          CASE cbb1.ItemIndex of
          0: vord := 'CEST_COD';
          1: vord := 'CEST_NCM';
          2: vord := 'CEST_DESCRICAO';
          end;
          sql.Add('Order By '+vOrd);
     end;
end;

procedure TfrmCEST.btnNovoClick(Sender: tObject);
var mtag: integer;
    tcr: TfrmEditCEST;
    flg: boolean;
begin
  inherited;
  mtag := (sender as tComponent).Tag;
  try
     tcr := TfrmEditCEST.create( self );
     case mtag of
     1: flg:=tcr.novo('Novo Registro Tabela CEST') ;
     2: tcr.Consulta(CdsBuscoCEST_ID.asString,'Consulta Registro Tabela CEST');
     3: flg:=tcr.edita(CdsBuscoCEST_ID.asString,'Edição de Registro Tabela CEST');
     4: flg:=tcr.exclui(CdsBuscoCEST_ID.asString,'Exclusão de Registro Tabela CEST');
     end;
     if tcr.ModalResult=mrOk then
     begin
          if CdSBUSCO.Active then
          BEGIN
            CdsBusco.Refresh;
            if trim(tcr.idretorno) <> Trim(CdsBuscoCEST_ID.asstring) then
            begin
                 CdsBusco.Locate( CampoID, tcr.IDRetorno, [loCaseInsensitive] ) ;
            end;
          END;
     end;
  finally
    tcr.close;
    freeandnil(tcr);
  end;
end;

procedure TfrmCEST.FormShow(Sender: tObject);
begin
  inherited;
  AbreTabela:=True;
  Filtro; // abre tabelas
  if assigned(frmCEST) then
     BotoesAcesso;
end;

procedure TfrmCEST.btnImprimeClick(Sender: tObject);
var Ponto : TPoint;
begin
     inherited;
     Ponto := btnImprime.ClientToScreen(Point(0, btnImprime.Height));
     mnuListar.Popup(Ponto.X, Ponto.Y);
end;

procedure TfrmCEST.Listagem1Click(Sender: tObject);
begin
     inherited;
     GeraRelatorioAuto(Sender);
end;

procedure TfrmCEST.ProdutossemCEST1Click(Sender: tObject);
begin
     ListaProdutosCest( False ); // Revisados
end;

procedure TfrmCEST.ProdutoscomCEST1Click(Sender: tObject);
begin
     ListaProdutosCest( True ); // Revisar
end;

procedure TfrmCEST.MontaSqlCestNull( pNull:Boolean );
var vTp: string;
begin
     if pNull then
        vTp := qstr('S')+' or CEST_COD is NULL'  // revisar = 'S'
     else
        vTp := qstr('N');
     SqlPrdCest.Sql.Text := ' select PRD_CODIGO, IPI_CODIGO, PRD_REFER, PRD_DESCRI, CEST_COD '+
                            ' from PRD0000 '+
                            ' where PRD_STATUS='+qStr('A')+
                            '       and EMP_CODIGO='+qStr(dbInicio.empresa.EMP_CODIGO)+
                            '       and ( CEST_REVISAR = '+vTp+') '+ 
                            ' Order BY PRD_REFER';
end;

procedure TfrmCEST.ListaProdutosCest( pNull:Boolean );
var tcr: tFrmBaseTelaRelatorio;
begin
    tcr:= tFrmBaseTelaRelatorio.Create(self);
    try
       MontaSqlCestNull( pNull );
       tcr.Compactar:=True;
       tcr.TituloRelatorio:='Listagem de Produtos Ativos '+iif( pNull, 'SEM', 'COM')+' CEST Atribuido.';
       tcr.query:=SqlPrdCest;
       tcr.ImprimeAuto;
    finally
       FreeAndNil(tcr);
    end;
end;

Function TfrmCEST.GrupoCEST( pNcm,pCharControle: string ): String ;
var vNcm: string;
    vId,vTm: integer;
    vBuscando: boolean;
    vChar : String;
begin
     vNcm := trim( pNCM );
     vTm := Length( vNcm );
     vId := 0;
     vChar:='';
     while vId=0 do
     begin
          vid := BuscaUmDadoSqlasInteger('SELECT CEST_ID FROM CEST0000 WHERE CEST_NCM='+qstr(vNCM));
          if vid=0 then
          begin
               if vtm<=0 then
                  vId:=-1
               Else
               begin
                    dec(vTm);
                    vNCM:=Copy(vNCM,1,vTm);
                    vChar:=pCharControle;
               end;
          end;
     end;
     if vId>0 then
        result := vChar+vNcm //BusCaUmDadoSqlAsString('Select CEST_NCM from CEST0000 where CEST_ID='+INTTOSTR(VID))
     Else
        result := pNCM;
end;

procedure TfrmCEST.BotoesAcesso;
begin
     if assigned(frmCEST) then
     begin
       btnNovo.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,frmCEST).Incluir;
       btnExclui.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,frmCEST).Exluir;
       btnImprime.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,frmCEST).Relatorio;
       btnEdita.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,frmCEST).Alterar;
     end;
end;


procedure TfrmCEST.btnExtraClick(Sender: tObject);
var Ponto : TPoint;
begin
     inherited;
     AtribuirCEST;
end;

procedure TfrmCEST.AtribuirCEST;
var vNCM, vCEST: String ;
    vAtribui: Boolean;
    vQtd1, vQtd2: Integer;
    vQry: TSQLQuery;
begin
  inherited;
  try

     ExecSql('UPDATE PRD0000 SET CEST_REVISAR='+qStr('S')+' WHERE PRD_STATUS='+qStr('A')); // marca todos para revisar;
     Screen.Cursor:=crSQLWait;
     vQry:=TSQLQuery.Create(self);
     vQry.SQLConnection:=DBConn;
     vQry.SQL.Text:='select IPI_CODIGO from prd0000 WHERE PRD_STATUS='+qStr('A')+' group by IPI_CODIGO';
     vQry.Open;
     vQtd1:=0;
     vQtd2:=0;
     BeginTransaction;
     try
        while not vQry.Eof do
        begin
             vNCM := vQry.FIELDS[0].AsString;
             if Length( vNCM )= 8 then
             begin
                  vNCM := GrupoCEST( vNCM, '' );
                  vCEST := BuscaUmDadoSqlAsString('SELECT MIN(CEST_COD) FROM CEST0000 WHERE CEST_NCM='+qStr(vNCM) );
                  vAtribui := BuscaUmDadoSqlAsInteger('Select cast(count(*) as integer) as conta from    CEST0000 WHERE CEST_NCM='+qStr(vNCM))=1;
                  if vAtribui then
                     ExecSql('UPDATE PRD0000 SET CEST_REVISAR='+qStr('N')+', CEST_COD='+qStr(vCEST)+' WHERE PRD_STATUS='+qStr('A')+' AND IPI_CODIGO='+qStr( vQry.FIELDS[0].AsString ) ) // desmarca revisar, escreve CEST_COD
                  Else
                     ExecSql('UPDATE PRD0000 SET CEST_COD='+qStr(vCEST)+' WHERE PRD_STATUS='+qStr('A')+' AND IPI_CODIGO='+qStr( vQry.FIELDS[0].AsString ) ); // mantem revisar, escreve CEST_COD
                  inc(vQtd1);
                  inc(vQtd2);
                  btnExtra.Caption:='Feitos: '+inttostr(vQtd2);
                  application.ProcessMessages;
                  if vQtd1>=50 then
                  begin
                       CommitRetainTransaction;
                       vQtd1:=0;
                  end;
             end;
             vQry.Next;
        end;
        CommitTransaction;
     Except
           RollBackTransaction;
     end;
     vQtd1:=BuscaUmDadoSqlAsInteger('Select cast(count(*) as integer) as conta from    PRD0000 where PRD_STATUS='+qStr('A')+' AND CEST_REVISAR ='+qStr('N'));
     vQtd2:=BuscaUmDadoSqlAsInteger('Select cast(count(*) as integer) as conta from    PRD0000 where PRD_STATUS='+qStr('A')+' AND CEST_REVISAR ='+qStr('S'));
  finally
     vQry.Close;
     FreeAndNil(vQry);
     Screen.Cursor:=crDefault;
     //btnExtra.Caption:='&Atribuir CEST';
     ShowMessage( 'Foram atribuidos automaticamente  '+inttostr(vQtd1)+' registros de produtos com o código CEST'+#13+#13+
                  '* '+inttostr(vQtd2)+' registros precisam ser revisados.'+#13+#13+
                  '** Utilize as listagens de CEST para saber quais registros devem ser revisados!');
  end;

end;

procedure TfrmCEST.SetvNcm(const Value: string);
begin
     pNCM := Value ;
     btnLimpar.Click;
end;

procedure TfrmCEST.btnLimparClick(Sender: tObject);
begin
     inherited;
     lbledt2.text := pNcm;
end;

end.



