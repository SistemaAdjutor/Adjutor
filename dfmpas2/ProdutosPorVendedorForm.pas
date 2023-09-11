unit ProdutosPorVendedorForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBPesquisaForm, {{DBXpress,}  FMTBCd, DB, DBClient, Provider,
  SqlExpr,Menus, ExtCtrls, ACBrBase, ACBrCalculadora, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, Buttons, ComCtrls, Mask,  rxToolEdit, StdCtrls,
  JvExMask, RXDBCtrl, Data.DBXInterBase, Data.DBXFirebird, ACBrEnterTab, JvToolEdit;

type
  TFrmProdutosPorVendedor = class(TfrmBaseDBPesquisa)
    CdsBuscoREP_CODIGO: TStringField;
    CdsBuscoPRD_REFER: TStringField;
    CdsBuscoQTDE: TFMTBCdField;
    CdsBuscoQTDEFAT: TFMTBCdField;
    CdsBuscoVENDAS: TIntegerField;
    CdsBuscoPRD_DESCRI: TStringField;
    CdsBuscoPRD_UND: TStringField;
    lbledt1: TLabeledEdit;
    Label2: TLabel;
    Label3: TLabel;
    LabeledEdit1: TLabeledEdit;
    CdsBuscorep_nome: TStringField;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    procedure FormCreate(Sender: tObject);
    procedure CdsBuscoQTDEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormShow(Sender: tObject);
    procedure RelPorVendedor(Sender: tForm);
    procedure CdsBuscoAfterOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);

  private
         gCod_Vendedor: string;
         procedure FiltraPV;
         procedure ConfigCabecalho(Sender: TForm);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProdutosPorVendedor: TFrmProdutosPorVendedor;

implementation

uses uteis, InicioDB, BaseReportForm;

{$R *.dfm}

procedure TFrmProdutosPorVendedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TFrmProdutosPorVendedor.FormCreate(Sender: tObject);
begin
  inherited;
  self.SetTamanhoMinimo(514,1024);
  Self.ProcedureFiltro:=FiltraPV;
  aCaption:='Produtos por Vendedor (ABC)';
  Self.ProcPageSumaryAuto:=RelPorVendedor;
  Self.ProcHeaderBeforePrintAuto:=ConfigCabecalho;
  //Self.RelRodapeAfterPrint:=
  FiltraPV;
end;

procedure TFrmProdutosPorVendedor.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmProdutosPorVendedor := Nil;
end;

procedure TFrmProdutosPorVendedor.ConfigCabecalho( Sender: TForm );
begin
     with TfrmBaseReport(Sender) do
     begin
          PageSumaryAuto.ResetAfterPrint:=False;
          lbLinha1.Caption:='Vendedor: '+gCod_Vendedor+'-'+BuscaUmDadoSqlasString('SELECT REP_NOME FROM REP0000 WHERE REP_CODIGO='+qStr(gCod_Vendedor));
          lbLinha2.Caption:=' ... até ';
          if EmptyDate( DateEdit1.Date ) and EmptyDate( DateEdit2.Date ) then
             lbLinha2.Caption:='Todas as Vendas'
          Else
          if not(EmptyDate( DateEdit1.Date )) and not(EmptyDate( DateEdit2.Date )) then
             lbLinha2.Caption:=' Relativo ao Período de '+DateEdit1.text+' até '+DateEdit2.text
          Else
          if not(EmptyDate( DateEdit1.Date )) then
             lbLinha2.Caption:=' Todas as Vendas a Partir de '+DateEdit1.text
          Else
             lbLinha2.Caption:=' Todas as Vendas até '+DateEdit1.text
     end;

end;

procedure TFrmProdutosPorVendedor.DBGridDblClick(Sender: TObject);
begin
//   inherited; não abre edição
end;

procedure TFrmProdutosPorVendedor.RelPorVendedor( Sender: TForm );
begin
     with TfrmBaseReport(Sender) do
     begin
          if CdsBuscoREP_CODIGO.AsString<>gCod_Vendedor then
          begin
               gCod_Vendedor:=CdsBuscoREP_CODIGO.AsString;
               PageSumaryAuto.ResetAfterPrint:=true ;
               DetailSumaryAuto.Print;

               rpMain.NewPage;
          end;
     end;
end;

procedure TFrmProdutosPorVendedor.FiltraPV;
var lQry: TSQLQuery;
///
   procedure MontaSql1;
   var lFirst: string;
   begin
        with lQry do
        begin
             SQL.Add('SELECT P1.REP_CODIGO, T3.rep_nome');
             SQL.Add('FROM PED0000 P1');
             SQL.Add('     JOIN OPV0000 OP ON P1.OPV_CODIGO = OP.OPV_CODIGO AND OP.OPV_VENDA='+qStr('S')); // vendas
             SQL.Add('     JOIN rep0000 t3 on t3.rep_codigo = p1.rep_codigo and t3.REP_SITUACAO = ''A''');
             SQL.Add('     JOIN ped_it01 ITE ON ITE.PED_CODIGO = p1.PED_CODIGO');
             SQL.Add('     JOIN prd0000 PR ON PR.prd_refer=ITE.prd_refer');
             SQL.Add('WHERE  P1.PED_SITUACAO<>'+qStr('C')); // exclui cancelados
             SQL.Add('       AND P1.EMP_CODIGO='+qStr(dbInicio.Empresa.EMP_CODIGO) );
             IF Trim(lbledt1.Text)<>'' THEN
                 if StrToIntDef(lbledt1.Text,-1)<>-1 then
                    Sql.Add( 'AND '+CampoSql('t3.rep_codigo',lbledt1.Text) )
                 else
                    Sql.Add( 'AND '+CampoSql('t3.rep_nome',lbledt1.Text) );
             SQL.Add('GROUP BY P1.REP_CODIGO, T3.rep_nome')
        end;
   end;
///
  procedure MontaSql(pTipo:String);
   var lFirst: string;
   begin
        with lQry do
        begin
             lFirst:='';
             if StrToIntDef(LabeledEdit1.Text,0)>0 then
                lFirst:='FIRST '+LabeledEdit1.Text;
             SQL.Add(' SELECT '+lFirst+' P1.REP_CODIGO,ITE.prd_refer,Sum(ITE.prf_qtde) as Qtde,Sum(ITE.prf_qtdefat) as QtdeFat,cast( Count(*) as integer) as Vendas,PR.prd_descri,PR.prd_und, T3.rep_nome');
             SQL.Add(' FROM PED0000 P1');
             SQL.Add('     JOIN OPV0000 OP ON P1.OPV_CODIGO = OP.OPV_CODIGO AND OP.OPV_VENDA='+qStr('S')); // vendas
             SQL.Add('     JOIN rep0000 t3 on t3.rep_codigo = p1.rep_codigo and t3.REP_SITUACAO = ''A'' ');
             SQL.Add('     JOIN ped_it01 ITE ON ITE.PED_CODIGO = p1.PED_CODIGO');
             SQL.Add('     JOIN prd0000 PR ON PR.prd_refer=ITE.prd_refer');
             SQL.Add(' WHERE  P1.PED_SITUACAO<>'+qStr('C')); // exclui cancelados
             SQL.Add('   AND P1.EMP_CODIGO='+qStr(dbInicio.Empresa.EMP_CODIGO) );
             SQL.Add(' and P1.REP_CODIGO='+pTipo);
             if Not EmptyDate( DateEdit1.Date ) then
                SQL.Add(' and P1.PED_DTENTRADA >= '+datetosql( DateEdit1.Date ) );
             if Not EmptyDate( DateEdit2.Date ) then
                SQL.Add(' and P1.PED_DTENTRADA <= '+datetosql( DateEdit2.Date ) );
             SQL.Add('GROUP BY P1.REP_CODIGO, ITE.prd_refer, PR.prd_descri, PR.prd_und, T3.rep_nome');
        end;
   end;
///
begin
     lQry := dbInicio.qAux;
     lQry.Close;
     lQry.SQL.Clear;
     MontaSql1;
     if DelphiAberto  then
        CopiarParaAreaTransferencia(lQry.SQL.Text);

     lQry.Open;

     lQry := qBusco;
     lQry.SQL.Clear;

     While not dbInicio.qAux.Eof do
     begin
          if qBusco.sql.Text<>'' then
             qBusco.SQL.Add('UNION ALL');
          MontaSql(qstr(dbInicio.qAux.Fields[0].asstring));
          dbInicio.qAux.Next;
     end;
     dbInicio.qAux.close;
     Filtrados:= ( Trim(lbledt1.Text)<>'' );
end;

procedure TFrmProdutosPorVendedor.CdsBuscoQTDEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := FormatFloat( '###,##0', Sender.AsCurrency);
end;

procedure TFrmProdutosPorVendedor.FormShow(Sender: tObject);
begin
  inherited;
  //AbreTabela:=True;
  Filtro; // abre tabelas
end;

procedure TFrmProdutosPorVendedor.CdsBuscoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  gCod_Vendedor:=CdsBuscoREP_CODIGO.asstring;
end;

end.

