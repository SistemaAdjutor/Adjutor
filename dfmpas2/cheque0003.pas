unit cheque0003;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, SqlExpr,SqlClientDataSet, Provider, ImgList,
  DB, DBClient, DBLocal, DBLocalS;

type
  TFrmChequeVisualizar = class(TForm)
    GrpCheques: TGroupBox;
    DBGridCheques: TDBGrid;
    Panel2: TPanel;
    Label17: TLabel;
    SqlCdsCheque: TSQLClientDataSet;
    SqlCdsChequeCHQ_REGISTRO: TIntegerField;
    SqlCdsChequeEMP_CODIGO: TStringField;
    SqlCdsChequeBAN_CODIGO: TStringField;
    SqlCdsChequeCHQ_EMISSAO: TDateField;
    SqlCdsChequeCHQ_BOMPARA: TDateField;
    SqlCdsChequeCHQ_NUMERO: TStringField;
    SqlCdsChequeCHQ_NUMERO_DV: TStringField;
    SqlCdsChequeCHQ_VALOR: TFMTBCdField;
    SqlCdsChequeCHQ_SITUACAO: TStringField;
    SqlCdsChequeCHQ_IMP: TStringField;
    SqlCdsChequeCHQ_TIPO_FAVORECIDO: TStringField;
    SqlCdsChequeCHQ_CODIGO_FAVORECIDO: TStringField;
    SqlCdsChequeCHQ_NOME_FAVORECIDO: TStringField;
    SqlCdsChequeCHQ_LIQUIDAR: TStringField;
    SqlCdsChequeUSU_CODIGO: TIntegerField;
    SqlCdsChequeUSU_LOGIN: TStringField;
    SqlCdsChequeBAN_APELIDO: TStringField;
    SqlCdsChequeCC_NUM_CHEQUE: TStringField;
    SqlCdsChequeCHQ_PAG_REGISTRO: TIntegerField;
    SqlCdsChequeCHQ_OBSERVACAO: TStringField;
    SqlCdsChequeIC_SELECAO: TBooleanField;
    SqlCdsChequeCHQ_EXCLUSAO: TStringField;
    SqlCdsChequeCHQ_MOTIVO_EXCLUSAO: TStringField;
    SqlCdsChequeCHQ_DATA_EXCLUSAO: TDateField;
    SqlCdsChequeCHQ_HORA_EXCLUSAO: TTimeField;
    SqlCdsChequeUSU_CODIGO_EXCLUSAO: TIntegerField;
    SqlCdsChequeUSU_LOGIN_EXCLUSAO: TStringField;
    Dscheque: TDataSource;
    ImageList1: TImageList;
    procedure DBGridChequesDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FrmChequeVisualizar: TFrmChequeVisualizar;

implementation

{$R *.dfm}

procedure TFrmChequeVisualizar.DBGridChequesDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if (not odd(SqlCdsCheque.RecNo)) then
      if not (GdSelected in State) then
         begin
            DBGridCheques.Canvas.Brush.Color := $00FFEFDF;
            DBGridCheques.Canvas.FillRect(rect);
            DBGridCheques.DefaultDrawDataCell(Rect,column.Field,state);
         end;
   //
   if (DBGridCheques.Focused) then
      begin
         if (SqlCdsChequeCHQ_EXCLUSAO.AsString = 'S') then
            DBGridCheques.Canvas.Font.Color:= $0000B900; // coloque aqui a cor desejada
           if (gdSelected in State) then
              DBGridCheques.Canvas.Font.Color:= clWindow;
         DBGridCheques.DefaultDrawDataCell(Rect, DBGridCheques.columns[datacol].field, State);
      end
   else
      begin
         if (SqlCdsChequeCHQ_EXCLUSAO.AsString = 'S') then
            DBGridCheques.Canvas.Font.Color:= $0000B900; // coloque aqui a cor desejada
         DBGridCheques.DefaultDrawDataCell(Rect, DBGridCheques.columns[datacol].field, State);
      end;
   if Column.Field = (SqlCdsChequeIC_SELECAO) then
      begin
         DBGridCheques.Canvas.FillRect(Rect);
         if (SqlCdsChequeIC_SELECAO.AsBoolean) then
            ImageList1.Draw(DBGridCheques.Canvas,Rect.Left+03,Rect.Top+1,2)
         else
            ImageList1.Draw(DBGridCheques.Canvas,Rect.Left+03,Rect.Top+1,0);
      end;
end;

end.
