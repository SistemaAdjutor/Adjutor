unit uDetSaldoFluxo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmDetSaldoFluxo = class(TfrmBaseDBPesquisa)
    cdsBuscoVALOR: TFMTBCDField;
    cdsBuscoBANCO: TStringField;
    cdsBuscoDESCR: TStringField;
    cdsBuscoDATA: TDateField;
    cdsBuscoTOTAL_PREV: TAggregateField;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    fDia: TDate;
    FMultiEmpresa: boolean;
    procedure Filtro;

  public
    PROPERTY DiaSaldo : Tdate read fdia write fdia;
    property MultiEmpresa : boolean read FMultiEmpresa write FMultiEmpresa;
  end;

var
  frmDetSaldoFluxo: TfrmDetSaldoFluxo;


implementation
uses iniciodb, UTEIS;
{$R *.dfm}

{ TfrmDetSaldoFluxo }

procedure TfrmDetSaldoFluxo.Filtro;
Var
  query : string;
begin
with qBusco, sql do
 begin
   query:= '    Select    FPC_VLPARC VALOR, b2.BAN_APELIDO BANCO,CAST ((FPC_VENCTO + COALESCE(bol.BAN_DIASCRED_COBRANCA,0)) AS DATE) DATA , '' PREV RECEBER'' AS DESCR   '+
            '    from FAT_PC01 FT LEFT JOIN BAN0000 Bol ON (FT.BAN_CODIGO = Bol.BAN_CODIGO AND  FPC_TIPODOC = ''BL'''+
            IIF(DBInicio.Exclusivo('BANCOS'), 'AND BOL.EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO),'')+')                '+
            '    LEFT JOIN BAN0000 B2 ON (FT.BAN_CODIGO = B2.BAN_CODIGO '+
             IIF(DBInicio.Exclusivo('BANCOS'), 'AND B2.EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO),'')+')                '+
            '    where FPC_EXCLUSAO = ''N''                                                                         '+
            '    and (FPC_VENCTO + COALESCE(bol.BAN_DIASCRED_COBRANCA,0))    '+
            '     BETWEEN coalesce(b2.BAN_CONCILIACAO_DATA,cast(''2018-12-31'' as date))+1 AND '+ DateToSQL(DiaSaldo-1)+
            iif(not MultiEmpresa,'and ft.EMP_CODIGO ='+QuotedStr(DBInicio.Empresa.EMP_CODIGO),'' ) +
            '    UNION   ALL                                                         '+
            '     Select -PPC_VLPARC, b.ban_apelido, CAST(PPC_VENCTO AS DATE), ''PREV PAGAR'' '+
            '      from PAG_PC01 PG LEFT JOIN BAN0000 B ON (PG.BAN_CODIGO = B.BAN_CODIGO '+
            IIF(DBInicio.Exclusivo('BANCOS'), 'AND B.EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO),'')+')                '+
            '     where PPC_EXCLUSAO = ''N''                                                   '+
            '       and PPC_VENCTO  BETWEEN coalesce(b.BAN_CONCILIACAO_DATA,cast(''2018-12-31'' as date))+1 AND  '+ DateToSQL(DiaSaldo-1) +
            iif(not MultiEmpresa,'and PG.EMP_CODIGO ='+QuotedStr(DBInicio.Empresa.EMP_CODIGO),'' ) +
//            '       and (PG.EMP_CODIGO = :CODIGO_EMPRESA or :CODIGO_EMPRESA = ''999'') '+
            '    UNION  ALL                                                            '+
            '     SELECT BAN_CONCILIACAO_SALDO, BAN_APELIDO, BAN_CONCILIACAO_DATA, ''SALDO BANCO'' '+
            '     FROM BAN0000                                   '+
            '     WHERE BAN_CONCILIACAO_DATA  < '+DateToSQL(DiaSaldo)+
            ConcatSe(' AND ', DBInicio.ExclusivoSql('BANCOS'));
   sql.Clear;
   Add(query) ;

 end;

end;

procedure TfrmDetSaldoFluxo.FormCreate(Sender: TObject);
begin
  inherited;
  self.ProcedureFiltro:=Filtro;
 // Self.CampoID:='ECTE_REGISTRO';
  self.Constraints.MinHeight:= 608;;
  self.Constraints.MinWidth:=540;
  self.Constraints.MaxWidth:=540;
  self.Constraints.MaxHeight:= 0;
  self.width:=540;
  self.height:=608;

end;

procedure TfrmDetSaldoFluxo.FormShow(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

end.
