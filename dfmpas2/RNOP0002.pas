unit RNOP0002;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseDbForm,
  Dialogs, SqlExpr, Provider, DB, DBClient, DBLocal, DBLocalS, Grids,
  DBGrids, StdCtrls, Buttons, Mask,  Data.DBXFirebird, SgDbSeachComboUnit,
  Data.FMTBCd, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.ExtCtrls, ACBrETQ;

type
  TFormRNOPGrid = class(TFrmBaseDb)
    GbPesquisa: TGroupBox;
    BitSair: TBitBtn;
    DBGrid1: TDBGrid;
    BitPesquisar: TBitBtn;
    CbOrigemDestino: TComboBox;
    SqlRegra: TClientDataSet;
    DsRegra: TDataSource;
    SqlRegraOPR_REGISTRO: TIntegerField;
    SqlRegraEMP_CODIGO: TStringField;
    SqlRegraIPI_CODIGO: TStringField;
    SqlRegraOPE_CODIGO_ORIGEM: TStringField;
    SqlRegraOPR_AC: TStringField;
    SqlRegraOPR_AL: TStringField;
    SqlRegraOPR_AP: TStringField;
    SqlRegraOPR_AM: TStringField;
    SqlRegraOPR_BA: TStringField;
    SqlRegraOPR_CE: TStringField;
    SqlRegraOPR_DF: TStringField;
    SqlRegraOPR_GO: TStringField;
    SqlRegraOPR_ES: TStringField;
    SqlRegraOPR_MA: TStringField;
    SqlRegraOPR_MT: TStringField;
    SqlRegraOPR_MS: TStringField;
    SqlRegraOPR_MG: TStringField;
    SqlRegraOPR_PA: TStringField;
    SqlRegraOPR_PB: TStringField;
    SqlRegraOPR_PR: TStringField;
    SqlRegraOPR_PE: TStringField;
    SqlRegraOPR_PI: TStringField;
    SqlRegraOPR_RJ: TStringField;
    SqlRegraOPR_RN: TStringField;
    SqlRegraOPR_RS: TStringField;
    SqlRegraOPR_RO: TStringField;
    SqlRegraOPR_RR: TStringField;
    SqlRegraOPR_SP: TStringField;
    SqlRegraOPR_SC: TStringField;
    SqlRegraOPR_SE: TStringField;
    SqlRegraOPR_TO: TStringField;
    SqlRegraOPR_EX: TStringField;
    SqlRegraOPE_DESTINO: TStringField;
    SqlRegraSTB_TRIBUTACAO: TStringField;
    SqlRegraOPR_PERCENTUAL_MVA: TFMTBCdField;
    SqlRegraDATA_CADASTRO: TDateField;
    SqlRegraDATA_ALTERACAO: TDateField;
    SqlRegraOPR_ATIVO: TStringField;
    SqlRegraCFOP_ORIGEM: TStringField;
    SqlRegraCFOP_DESTINO: TStringField;
    SqlRegraOPR_PERCENTUAL_MVA_SIMPLES: TFMTBCdField;
    cbCfop: TSgDbSearchCombo;
    qRegra: TSQLQuery;
    dspRegra: TDataSetProvider;
    pesqNCM: TLabeledEdit;
    cbST: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    cbUF: TComboBox;
    SqlRegraOPR_ORIGEM: TStringField;
    procedure BitPesquisarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure DBGrid1DblClick(Sender: tObject);
    procedure DBGrid1DrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure SqlRegraCFOP_ORIGEMGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure SqlRegraCFOP_DESTINOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure pesqNCMChange(Sender: TObject);
    procedure cbSTChange(Sender: TObject);
    procedure SqlRegraOPR_ORIGEMGetText(Sender: TField; var Text: string; DisplayText: Boolean);

  private

    procedure FiltraRegra;
  public
  end;

var
  FormRNOPGrid: TFormRNOPGrid;

implementation

uses
    uteis, iniciodb;

{$R *.dfm}

procedure TFormRNOPGrid.BitPesquisarClick(Sender: tObject);
begin
     FiltraRegra ;
end;

procedure TFormRNOPGrid.FiltraRegra;
Var wSelect,wOrdem :String;
    WHE: boolean;
///
   procedure SQLADD ( stt: string ) ;
   begin
        if stt<>'' then
        BEGIN
           if whe then
              qRegra.sql.add( 'where '+stt )
           else
              qRegra.sql.add( 'and '+stt );
           whe:=false;
        END;
   end;
///
begin
     WHE:=TRUE;
     sqlRegra.Close;
     qRegra.sql.clear;
     qRegra.sql.add( 'SELECT T1.*, T2.ope_natureza AS CFOP_ORIGEM, T3.ope_natureza AS CFOP_DESTINO');
     qRegra.sql.add( 'FROM OPE_REGRA T1');
     qRegra.sql.add( '     left JOIN ope0000 T2 ON (T2.ope_codigo = T1.ope_codigo_origem)');
     qRegra.sql.add( '     left JOIN ope0000 T3 ON (T3.ope_codigo = T1.ope_destino)');
     if pesqNCM.Text <> '' then
      SQLADD(' ipi_codigo  CONTAINING ' + QuotedStr(pesqNCM.Text)  );
     if cbUF.ItemIndex <> -1 then
      SQLADD(' OPR_'+cbUF.Text + ' = '+QuotedStr('S'));

     if cbST.ItemIndex <> -1 then
      SQLADD(' STB_TRIBUTACAO = '+QuotedStr(cbST.Text));
     if cbCfop.idRetorno <> '' then
     begin
          CASE CbOrigemDestino.ItemIndex OF
          0: SQLADD( camposql ( 't1.ope_codigo_origem', cbCfop.idRetorno ) );
          1: SQLADD( camposql ( 't1.ope_destino', cbCfop.idRetorno ) );
          2: begin SQLADD( camposql ( 't1.ope_codigo_origem', cbCfop.idRetorno ) ); SQLADD( camposql ( 't1.ope_destino', cbCfop.idRetorno ) ); end;
          end;
     end;
     sqladd( ConcatSe( 'T1.', dbInicio.ExclusivoSql('FISCAL')));
     qRegra.sql.add( 'order by t1.OPR_REGISTRO');
//     if delphiaberto then
//        copytoclipboard( qRegra.sql.text );
     sqlRegra.open;
end;

procedure TFormRNOPGrid.FormCreate(Sender: TObject);
begin
     inherited;
     self.Height:=640;
     self.Width:=1040;
end;

procedure TFormRNOPGrid.FormShow(Sender: tObject);
begin
     inherited;
     SqlRegra.Close;
     FiltraRegra;
end;

procedure TFormRNOPGrid.pesqNCMChange(Sender: TObject);
begin
  inherited;
  BitPesquisar.Click
end;

procedure TFormRNOPGrid.SqlRegraCFOP_DESTINOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if sender.isnull and  (not SqlRegraOPE_CODIGO_ORIGEM.isnull) then
     text := 'ERRO'
  Else
     text :=sender.asstring;
end;

procedure TFormRNOPGrid.SqlRegraCFOP_ORIGEMGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if sender.isnull and  (not SqlRegraOPE_DESTINO.isnull) then
     text := 'ERRO'
  Else
     text :=sender.asstring;
end;

procedure TFormRNOPGrid.SqlRegraOPR_ORIGEMGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'N' then
    Text := 'Nacional'
  else
  if Sender.AsString = 'E' then
    Text := 'Estrangeira'
  else
  if Sender.AsString = 'I' then
    Text := 'Indiiferente';


  end;

procedure TFormRNOPGrid.BitSairClick(Sender: tObject);
begin
     ModalResult:=mrCancel;
end;

procedure TFormRNOPGrid.cbSTChange(Sender: TObject);
begin
  inherited;
  BitPesquisar.Click;
end;

procedure TFormRNOPGrid.DBGrid1DblClick(Sender: tObject);
begin
     if not SqlRegraOPR_REGISTRO.isnull then
     begin
          idRetorno := SqlRegraOPR_REGISTRO.asString;
          ModalResult := mrOk;
     end;
end;

procedure TFormRNOPGrid.DBGrid1DrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
///
   procedure checarcoluna ( pField: string );
   var Check: Integer;
       R: TRect;
   begin
        DBGrid1.Canvas.FillRect(Rect);
        Check := 0;
        if SqlRegra.fieldbyname(pField).AsString = 'S' then
           Check := DFCS_CHECKED
        else
           Check := 0;
        R:=Rect;
        TDBGrid(sender).Canvas.Font.Color :=  TDBGrid(sender).Canvas.Brush.Color;
        InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
        DrawFrameControl(DBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
   end;
///
begin
     if (not SqlRegra.IsEmpty) then
     begin

          with column do
          begin
              if (FieldName <> 'OPR_ATIVO') and
                 (FieldName <> 'IPI_CODIGO') and
                 (FieldName <> 'CFOP_ORIGEM') and
                 (FieldName <> 'CFOP_DESTINO') and
                 (FieldName <> 'OPR_ORIGEM') and
                 (FieldName <> 'STB_TRIBUTACAO') and
                 (FieldName <> 'OPR_PERCENTUAL_MVA') then
                 ChecarColuna ( fieldname );
          end;
     end;
end;

procedure TFormRNOPGrid.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
     inherited;
     if (Key = #13) then
        DBGrid1DblClick(Sender);
end;

end.
