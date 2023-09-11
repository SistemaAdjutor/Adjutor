unit Fat0005;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBCd, DB, DBClient, Provider, SqlExpr, StdCtrls, Buttons,
  Grids, DBGrids, RwSQLComando, Mask,  rxToolEdit,  rxCurrEdit, ExtCtrls;

type
  TFrmInformativoNF = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    BitSair: TBitBtn;
    SqlInfNF: TSQLDataSet;
    DspInfNF: TDataSetProvider;
    CdsInfNF: TClientDataSet;
    DsInfNF: TDataSource;
    Panel1: TPanel;
    SqlInfNFOPE_NATUREZA: TStringField;
    SqlInfNFOPE_DESCRI: TStringField;
    SqlInfNFPRODUTO: TFMTBCdField;
    SqlInfNFBASE_ICMS: TFMTBCdField;
    SqlInfNFVALOR_ICMS: TFMTBCdField;
    SqlInfNFBASE_ICMS_ST: TFMTBCdField;
    SqlInfNFVALOR_ICMS_ST: TFMTBCdField;
    SqlInfNFVALOR_IPI: TFMTBCdField;
    SqlInfNFVALOR_FRETE: TFMTBCdField;
    SqlInfNFVALOR_SEGURO: TFMTBCdField;
    SqlInfNFVALOR_DESPESAS: TFMTBCdField;
    CdsInfNFOPE_NATUREZA: TStringField;
    CdsInfNFOPE_DESCRI: TStringField;
    CdsInfNFPRODUTO: TFMTBCdField;
    CdsInfNFBASE_ICMS: TFMTBCdField;
    CdsInfNFVALOR_ICMS: TFMTBCdField;
    CdsInfNFBASE_ICMS_ST: TFMTBCdField;
    CdsInfNFVALOR_ICMS_ST: TFMTBCdField;
    CdsInfNFVALOR_IPI: TFMTBCdField;
    CdsInfNFVALOR_FRETE: TFMTBCdField;
    CdsInfNFVALOR_SEGURO: TFMTBCdField;
    CdsInfNFVALOR_DESPESAS: TFMTBCdField;
    CurBaseICms: TCurrencyEdit;
    CurValorIcms: TCurrencyEdit;
    CurBaseIcmsST: TCurrencyEdit;
    CurValorIcmsSt: TCurrencyEdit;
    CurValorIPI: TCurrencyEdit;
    CurValorFrete: TCurrencyEdit;
    CurValorSeguro: TCurrencyEdit;
    CurValorDespesas: TCurrencyEdit;
    CurProdutos: TCurrencyEdit;
    Panel2: TPanel;
    chkAutorizadas: TCheckBox;
    chkCanceladas: TCheckBox;
    procedure DBGrid1DrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitSairClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure FormShow(Sender: tObject);
    procedure query;
    procedure chkAutorizadasClick(Sender: TObject);
    procedure chkCanceladasClick(Sender: TObject);
  private
////    { Private declarations }
  public
    { Public declarations }
    sCondicao : String;
  end;

var
  FrmInformativoNF: TFrmInformativoNF;

implementation

uses Uteis, DataCad, Men0001, iniciodb;

{$R *.dfm}


procedure TFrmInformativoNF.chkAutorizadasClick(Sender: TObject);
begin
  if chkAutorizadas.Checked and chkCanceladas.Checked then
   chkCanceladas.Checked := False  ;
  query;
end;

procedure TFrmInformativoNF.chkCanceladasClick(Sender: TObject);
begin
  if chkAutorizadas.Checked and chkCanceladas.Checked then
   chkAutorizadas.Checked := False  ;
  query;
end;

procedure TFrmInformativoNF.DBGrid1DrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if (not odd(CdsInfNF.RecNo)) then
      if not (GdSelected in State) then
         begin
             DBGrid1.Canvas.Brush.Color := $00FFEFDF;
             DBGrid1.Canvas.FillRect(rect);
             DBGrid1.DefaultDrawDataCell(Rect,column.Field,state);
         end;
end;

procedure TFrmInformativoNF.BitSairClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmInformativoNF.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
   CdsInfNF.Close;
end;

procedure TFrmInformativoNF.FormShow(Sender: tObject);
begin
  query;

end;

procedure TFrmInformativoNF.query;
var where : string;
begin
   where := sCondicao;
   where := StringReplace(where, 'N2.', 't3.',[rfReplaceAll, rfIgnoreCase]);
   where := StringReplace(where, 'C1.', 't3.',[rfReplaceAll, rfIgnoreCase]);
   if chkAutorizadas.Checked then
   begin
     where := where + ' AND T2.OPE_SEMVLCOM = '+QuotedStr('N') ;
     where := where + 'AND T3.NF_STATUS_NFE =  '+ QuotedStr('A')  ;
   end;
   if chkCanceladas.Checked then
     where := where + 'AND T3.NF_STATUS_NFE =  '+ QuotedStr('C')  ;
   try
     Screen.Cursor := crHourGlass;
     {Monta Sql}
     FrmMenu.RwSqlGeralCmd.MontarSql      := False;
     FrmMenu.RwSqlGeralCmd.ResetaCampos   := True;
     FrmMenu.RwSqlGeralCmd.CodigoEmpresa  := StrToInt(dbInicio.Empresa.EMP_CODIGO);
     FrmMenu.RwSqlGeralCmd.MultiEmpresa   := True;
     FrmMenu.RwSqlGeralCmd.Apelido        := 't3.';
     FrmMenu.RwSqlGeralCmd.TipoSql        := Consultar;
     FrmMenu.RwSqlGeralCmd.Campos         := 'T2.OPE_NATUREZA, '+
                                             'T2.OPE_DESCRI,  '+
                                             'SUM(NF_TOT_PROD) AS produto, '+
                                             'SUM(NF_BASEICMS) AS base_icms, '+
                                             'SUM(NF_VL_ICMS) AS valor_icms, '+
                                             'SUM(NF_VLBASESUBTRIB) AS base_icms_st, '+
                                             'SUM(NF_VL_SUBTRIB) AS valor_icms_st, '+
                                             'SUM(NF_VL_IPI) AS valor_ipi, '+
                                             'SUM(NF_VLFRETE) AS valor_frete, '+
                                             'SUM(NF_VLSEGURO) AS valor_seguro, '+
                                             'SUM(NF_DESP_ACES) AS valor_despesas';
     FrmMenu.RwSqlGeralCmd.Tabela         := 'nf0001';
     FrmMenu.RwSqlGeralCmd.Compartilhar   := 'RECEBER';
     FrmMenu.RwSqlGeralCmd.UniaoTabelas   := '';
     FrmMenu.RwSqlGeralCmd.Condicao       := where;
     FrmMenu.RwSqlGeralCmd.UniaoTabelas   := ' left JOIN OPE0000 T2 ON (T2.OPE_CODIGO = T3.OPE_CODIGO)';
                                             //' join nf0001 t3 on (t3.nf_notanumber = t1.nf_it_notanumer and T3.EMP_CODIGO = T1.EMP_CODIGO and '+sCondicao+')'+


     FrmMenu.RwSqlGeralCmd.CamposAgrupar  := 'T2.OPE_NATUREZA,T2.OPE_DESCRI';
     FrmMenu.RwSqlGeralCmd.CamposOrdernar := 'T2.OPE_NATUREZA';
     //
     FrmMenu.RwSqlGeralCmd.MontarSql      := True;
     //
     CdsInfNF.Close;
     CdsInfNF.CommandText := FrmMenu.RwSqlGeralCmd.ComandoSql;
     CdsInfNF.Open;
     CurProdutos.Clear;
     CurBaseICms.Clear;
     CurValorIcms.Clear;
     CurBaseIcmsST.Clear;
     CurValorIcmsSt.Clear;
     CurValorIPI.Clear;
     CurValorFrete.Clear;
     CurValorSeguro.Clear;
     CurValorDespesas.Clear;

     if (not CdsInfNF.IsEmpty) then
        begin
           CdsInfNF.DisableControls;
           CdsInfNF.First;
           while (not CdsInfNF.Eof) do
            begin
               CurProdutos.Value      := CurProdutos.Value      +  CdsInfNFPRODUTO.AsCurrency;
               CurBaseICms.Value      := CurBaseICms.Value      +  CdsInfNFBASE_ICMS.AsCurrency;
               CurValorIcms.Value     := CurValorIcms.Value     +  CdsInfNFVALOR_ICMS.AsCurrency;
               CurBaseIcmsST.Value    := CurBaseIcmsST.Value    +  CdsInfNFBASE_ICMS_ST.AsCurrency;
               CurValorIcmsSt.Value   := CurValorIcmsSt.Value   +  CdsInfNFVALOR_ICMS_ST.AsCurrency;
               CurValorIPI.Value      := CurValorIPI.Value      +  CdsInfNFVALOR_IPI.AsCurrency;
               CurValorFrete.Value    := CurValorFrete.Value    +  CdsInfNFVALOR_FRETE.AsCurrency;
               CurValorSeguro.Value   := CurValorSeguro.Value   +  CdsInfNFVALOR_SEGURO.AsCurrency;
               CurValorDespesas.Value := CurValorDespesas.Value +  CdsInfNFVALOR_DESPESAS.AsCurrency;
               CdsInfNF.Next;
            end;
           CdsInfNF.First;
           CdsInfNF.EnableControls;
        end;
     Screen.Cursor := crDefault;
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Erro ao calcular os totais da CFOP !'+#13#10+
                     'Mensagem erro: '+e.Message));
       end;
   end;
end;

end.
