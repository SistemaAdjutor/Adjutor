unit uPedidoTipoInicial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, basedbform,
  Dialogs, StdCtrls, Grids, DBGrids, DB, Buttons, SqlExpr, Provider,
  DBClient, DBLocal, DBLocalS, ClipBrd, Data.DBXFirebird, SimpleDS,
  ACBrEnterTab, ACBrBase, ACBrCalculadora, ACBrETQ, Data.FMTBCd, BaseForm;

  
  
type
  TFrmPedidoTipoInicial = class(TFrmBaseDB)
    GroupBox1: TGroupBox;
    Bit_Gravar: TBitBtn;
    dsTipoPedido: TDataSource;
    DbGradeItemPedido: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    CdsTipoPedido: TClientDataSet;
    CdsTipoPedidoOPV_CODIGO: TIntegerField;
    CdsTipoPedidoOPV_DESCRICAO: TStringField;
    CdsTipoPedidoOPV_TIPO: TStringField;
    CdsTipoPedidoEMP_CODIGO: TStringField;
    CdsTipoPedidoOPV_ATESTOQUE: TStringField;
    CdsTipoPedidoAMX_DESTINO: TStringField;
    CdsTipoPedidoAMX_ORIGEM: TStringField;
    CdsTipoPedidoOPV_TIPOPADRAO: TStringField;
    CdsTipoPedidoOPV_SERVICO: TStringField;
    CdsTipoPedidoOPV_VENDA: TStringField;
    CdsTipoPedidoOPV_ORCAMENTO: TStringField;
    CdsTipoPedidoOPV_CALCULA_ST: TStringField;
    qTipoPedido: TSQLQuery;
    dspTipoPedido: TDataSetProvider;
    procedure DbGradeItemPedidoDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DbGradeItemPedidoDblClick(Sender: tObject);
    procedure DbGradeItemPedidoKeyPress(Sender: tObject; var Key: Char);
    procedure Bit_GravarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
  private
    procedure Seleciona;
  public
  end;

var
  FrmPedidoTipoInicial: TFrmPedidoTipoInicial;

implementation

uses
  uPedido, RWFunc,  Uteis, InicioDb, uPedidoWebAcao, uAvisos;

{$R *.dfm}

procedure TFrmPedidoTipoInicial.DbGradeItemPedidoDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
   Check: Integer;
   R: TRect;
begin
     if Column.FieldName = 'OPV_SERVICO' then
     begin
               DbGradeItemPedido.Canvas.FillRect(Rect);
               Check := 0;
               if CdsTipoPedidoOPV_SERVICO.AsString = 'S' then
                  Check := DFCS_CHECKED
               else
                  Check := 0;
               R:=Rect;
               InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
               DrawFrameControl(DbGradeItemPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
     end
     Else
     if Column.FieldName = 'OPV_ATESTOQUE' then
     begin
               DbGradeItemPedido.Canvas.FillRect(Rect);
               Check := 0;
               if CdsTipoPedidoOPV_ATESTOQUE.AsString = 'S' then
                  Check := DFCS_CHECKED
               else
                  Check := 0;
               R:=Rect;
               InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
               DrawFrameControl(DbGradeItemPedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
     end;

end;

procedure TFrmPedidoTipoInicial.Seleciona;
begin



  if dbInicio.BuscaUmDadoSqlAsString('SELECT PMT_BLOQ_PED_VENDA_FAT_ATRASO FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO) ) = 'S' then
  begin
    if BloqueiaPedidoVendaFaturaAtraso(frmPedido.edCliente.idRetorno, frmPedido.EdPrazoCodigo.Text) then
    begin
      frmPedido.LimparCampos(False);
      Abort;
    end
    else
      uAvisos.ClientePossuiFaturasAtrasadas(frmPedido.edCliente.idRetorno,'CLIM_VENDA');
  end
  else
    uAvisos.ClientePossuiFaturasAtrasadas(frmPedido.edCliente.idRetorno,'CLIM_VENDA');






  if (BuscaUmDadoSqlAsString('SELECT OPV_ESTOQUE_REMESSAINDUS FROM opv0000 o WHERE opv_codigo = ' + CdsTipoPedidoOPV_CODIGO.AsString) = 'S')
  and (BuscaUmDadoSqlAsString('SELECT OPV_VENDA FROM opv0000 o WHERE opv_codigo = ' + CdsTipoPedidoOPV_CODIGO.AsString) = 'N')
  and (BuscaUmDadoSqlAsString('SELECT AMX_DESCRI FROM ALMOX0000 WHERE AMX_CNPJ_PART = ' + QuotedStr(RetirarMascaraCNPJ_INSC(FrmPedido.EdCnpj.Text))) = '')
  then
  begin
   uteis.aviso('Pedido de Industrização tem que ter um Almoxarifado cadastrado para o cliente do pedido');
   Exit;
  end;

  idRetorno := CdsTipoPedidoOPV_CODIGO.AsString;
  if (Assigned(FrmPedidoWebAcao)) then
  begin
     FrmPedidoWebAcao.sTipoCodigo := CdsTipoPedidoOPV_CODIGO.AsString;
     FrmPedidoWebAcao.sTipoDescricao := CdsTipoPedidoOPV_DESCRICAO.AsString;
     FrmPedidoWebAcao.bTipoServico := CdsTipoPedidoOPV_SERVICO.AsString = 'S';
  end
  else
     FrmPedido.BuscaTipoPedido(CdsTipoPedidoOPV_CODIGO.AsInteger);
  Close;

end;

procedure TFrmPedidoTipoInicial.DbGradeItemPedidoDblClick(Sender: tObject);
begin
     Seleciona;
end;

procedure TFrmPedidoTipoInicial.DbGradeItemPedidoKeyPress(Sender: tObject;
  var Key: Char);
begin
     if (Key = #13) then
     begin
         Key := #0;
         Seleciona;
     end;
end;

procedure TFrmPedidoTipoInicial.Bit_GravarClick(Sender: tObject);
begin
     Seleciona;
end;

procedure TFrmPedidoTipoInicial.FormShow(Sender: tObject);
var
   sCodigoAnterior,
   sQuery:String;
begin
    inherited;

    CdsTipoPedido.Close;
    if (Assigned(FrmPedidoWebAcao)) then
    begin
         sCodigoAnterior := FrmPedidoWebAcao.sTipoCodigo;
         qTipoPedido.Sql.Text := 'SELECT t1.* FROM OPV0000 t1 '+
                                 'WHERE OPV_ATESTOQUE = '+qStr('N')+
                                 // ConcatSe( ' and t1.', dbInicio.ExclusivoSql( 'CLIENTES' ) )+
                                 ConcatSe( ' and t1.', dbInicio.ExclusivoSql( 'TABELAS' ) )+
                                 ' ORDER BY t1.OPV_DESCRICAO';

    end
    else
    begin
         sCodigoAnterior := FrmPedido.SqlCdsTipoPedidoOPV_CODIGO.AsString;
         qTipoPedido.Sql.Text := 'SELECT t1.* FROM OPV0000 t1 '+
                                 ' WHERE (OPV_PEDIDOINTERNO ='+ QuotedStr('N')+ ' OR OPV_PEDIDOINTERNO IS NULL )' +
                                 iif(NOT DBInicio.Empresa.USP_PERMITE_ALTER_TIPO,
                                 ' AND (OPV_ORCAMENTO =  ''S'' OR OPV_CODIGO = '+IntToStr(DBInicio.Empresa.USP_OPV_CODIGO)+')','' ) +
                                 // ConcatSe( ' and t1.', dbInicio.ExclusivoSql( 'CLIENTES' ) )+
                                 ConcatSe( ' and t1.', dbInicio.ExclusivoSql( 'TABELAS' ) )+
                                 ' ORDER BY t1.OPV_DESCRICAO';
    end;

    CdsTipoPedido.Open;
    if (sCodigoAnterior <> '') then
       CdsTipoPedido.Locate('OPV_CODIGO',sCodigoAnterior,[]);

end;

end.






