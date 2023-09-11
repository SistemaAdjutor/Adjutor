unit Nfs0002;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, BASEDBFORM,
    RwFunc, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids, DBGrids,
    db,  rxToolEdit,  rxCurrEdit, RXDBCtrl, Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal,
    DBLocalS, Menus, ImgList, Math, Data.DBXFirebird, System.ImageList, SimpleDS, Data.FMTBCd, ACBrEnterTab, ACBrBase, ACBrCalculadora, JvExMask, JvToolEdit;

type
  TFormNfPagar = class(TfrmBaseDB)
    GroupBox2: TGroupBox;
    Label5: TLabel;
    CurrVlNf: TCurrencyEdit;
    EdtNotaFiscal: TEdit;
    Label9: TLabel;
    EdtCodPagar: TEdit;
    EdtParcela: TEdit;
    Bit_Cancelar: TBitBtn;
    PopupMenu1: TPopupMenu;
    Alterar1: TMenuItem;
    Quitar1: TMenuItem;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    DbGridParcelas: TDBGrid;
    DsPagarParcGrid: TDataSource;
    SqlCdsPagarParc: TSQLClientDataSet;
    SqlCdsPagarParcPAG_REGISTRO: TIntegerField;
    SqlCdsPagarParcPAG_CODIGO: TStringField;
    SqlCdsPagarParcPPC_NUMER: TStringField;
    SqlCdsPagarParcPPC_VLPARC: TFMTBCdField;
    SqlCdsPagarParcPPC_VLPAGO: TFMTBCdField;
    SqlCdsPagarParcPPC_STATUS: TStringField;
    SqlCdsPagarParcBAN_CODIGO: TStringField;
    SqlCdsPagarParcBAN_APELIDO: TStringField;
    SqlCdsPagarParcPPC_SITPAG: TStringField;
    SqlCdsPagarParcPPC_VENCTO: TSQLTimeStampField;
    SqlCdsPagarParcPPC_PAGTO: TSQLTimeStampField;
    SqlCdsPagarParcPPC_PREVISAO: TStringField;
    SqlCdsPagarParcPPC_EXCLUSAO: TStringField;
    SqlCdsPagarParcPPC_DESCTO: TFMTBCdField;
    SqlCdsPagarParcPPC_JUROS: TFMTBCdField;
    SqlCdsPagarParcPPC_MULTA: TFMTBCdField;
    SqlCdsPagarParcCCPendente: TFloatField;
    SqlCdsPagarParcPPC_OBS: TStringField;
    DsPagamentos: TDataSource;
    CdSPagamentos: TSQLClientDataSet;
    CdSPagamentosPAP_REGISTRO: TIntegerField;
    CdSPagamentosPAG_DATA_PAGAMENTO: TDateField;
    CdSPagamentosPAG_VALOR: TFMTBCdField;
    CdSPagamentosPAG_DESCONTO: TFMTBCdField;
    CdSPagamentosPAG_JUROS: TFMTBCdField;
    CdSPagamentosPAG_MULTA: TFMTBCdField;
    CdSPagamentosPAG_PAGO: TFMTBCdField;
    CdSPagamentosBAN_CODIGO: TStringField;
    CdSPagamentosBAN_RAZAO: TStringField;
    CdSPagamentosFPG_REGISTRO: TIntegerField;
    CdSPagamentosFPG_DESCRICAO: TStringField;
    CdSPagamentosUSU_CODIGO: TIntegerField;
    CdSPagamentosUSU_NOME: TStringField;
    GroupBox4: TGroupBox;
    Image1: TImage;
    Label38: TLabel;
    Image4: TImage;
    Label41: TLabel;
    Image2: TImage;
    Label39: TLabel;
    Image3: TImage;
    Label40: TLabel;
    Image5: TImage;
    Label42: TLabel;
    ImageList1: TImageList;
    PainelAltera: TPanel;
    GroupBox5: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    CurrValor: TCurrencyEdit;
    PopupMenu2: TPopupMenu;
    EstornaBaixa1: TMenuItem;
    Bit_Sair: TBitBtn;
    EdVencimento: TJvDateEdit;
    procedure FormShow(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure DBGridParcelasDblClick(Sender: tObject);
    procedure DBGridParcelasKeyPress(Sender: tObject; var Key: Char);
    procedure DsPagarParcGridDataChange(Sender: tObject; Field: TField);
    procedure DbGridParcelasDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure SqlCdsPagarParcCalcFields(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: tObject);
    procedure BitBtn1Click(Sender: tObject);
    procedure Quitar1Click(Sender: tObject);
    procedure Alterar1Click(Sender: tObject);
    procedure EstornaBaixa1Click(Sender: tObject);
    procedure EdVencimentoExit(Sender: tObject);
  private
    procedure Alterar_Parcelas;
    procedure BuscaPagamentos;
    procedure BuscaParcelas;
    procedure Baixa;
    procedure EstornarBaixa;
  public
    {Public declarations}
    wIncluir : Boolean;
  end;

var
  FormNfPagar: TFormNfPagar;

implementation

uses Uteis, Nfs0001, DataMov, DataCad, Men0001, Pag0007, uFinanceiroDao, iniciodb;

{$R *.DFM}

procedure TFormNfPagar.FormShow(Sender: tObject);
Var
  wCodigoPagar, wNParc, wintervalo, I: Integer;
  wAux        : Double;
  wValor, wEntrada      : Currency; // Guarda o Valor da Parcela
  wVlNota     : Double;   // Desconta o Valor da Retencao
  wdia,wmes,wano,wdiaAux:string;
  wvencto  : TDateTime;
begin
     inherited;

     EdtNotaFiscal.Text    := FormNfEntrada.EdtNota.Text;
     CurrVlNf.Value        := FormNfEntrada.NTotalGeral.Value;
     if wIncluir then
     begin
             EdtCodPagar.Text := SequenciadorPRC(DataCadastros.SQLConnection1,dbInicio.Empresa.EMP_CODIGO, 'PAG0000', 'PAG_CODIGO', 0);
             EdtCodPagar.Text := StrZero(EdtCodPagar.Text,EdtCodPagar.MaxLength);
             DataCadastros.sqlUpdate.Close;
             DataMovimento.CdsPagar.close;
             DataMovimento.CdsPagar.CommandText := SQLDEF('PAGAR','Select P1.* from PAG0000 P1 ','where P1.PAG_CODIGO = '''+StrZero(IntToStr(wCodigoPagar),EdtCodPagar.MaxLength)+'''','P1.PAG_CODIGO','P1.');
             DataMovimento.CdsPagar.Open;

             if DataMovimento.CdsPagar.IsEmpty  then
             begin
                    DataMovimento.CdsPagar.Insert;
                    DataMovimento.CdsPagarPAG_CODIGO.AsString   := EdtCodPagar.Text;
                    DataMovimento.CdsPagarPAG_NUMDOC.AsString   := EdtNotaFiscal.Text;
                    DataMovimento.CdsPagarPAG_DTEMIS.AsDateTime := FormNfEntrada.DbeENF_EMISSAO.Date;
                    DataMovimento.CdsPagarFOR_CODIGO.AsString   := FormNfEntrada.EdtFor_Codigo.Text;
                    DataMovimento.CdsPagarPAG_VLNOTA.AsCurrency := CurrVlNf.Value;
                    DataMovimento.CdsPagarPAG_TIPO.AsString     := 'NF';
                    DataMovimento.CdsPagarPAG_PREVISAO.AsString := 'N';
                    DataMovimento.CdsPagarCCT_CODIGO.AsString   := FormNfEntrada.DbeCCT_CODIGO.Text;
                    DataMovimento.CdsPagarFOR_CODIGO.AsString   := FormNfEntrada.EdtFor_Codigo.Text;
                    DataMovimento.CdsPagarPAG_EXCLUSAO.AsString := 'N';
                    DataMovimento.CdsPagarEmp_Codigo.AsString   := dbInicio.Empresa.EMP_CODIGO;
                    DataMovimento.CdsPagar.Post;
                    DataMovimento.CdsPagar.ApplyUpdates(0);
                    EdtCodPagar.text := StrZero(DataMovimento.CdsPagarPAG_CODIGO.AsString,EdtCodPagar.MaxLength);

                    wVlNota := Uteis.RoundTo (CurrVlNf.Value, -2);

                    //Calcula Parcelas
                    if (FormNfEntrada.SqlCdsPclPCL_TIPO.AsString = 'F') then //Fixo
                    begin
                          {Pega a Qtde de parcelas}
                          wNParc := FormNfEntrada.SqlCdsPclPCL_NPARCELAS.AsInteger;
                          {Guarda o Valor da nota = valor da nota - o valor da retencao}
                          wValor := DataMovimento.CdsPagarPAG_VLNOTA.AsCurrency;
                          //Entrada
                          wEntrada := 0;
                          if (FormNfEntrada.SqlCdsPclPCL_PERCENTUAL_PRIMEIRA_P.AsCurrency > 0) then
                          begin
                                wEntrada := wValor * (FormNfEntrada.SqlCdsPclPCL_PERCENTUAL_PRIMEIRA_P.AsCurrency / 100);
                                wValor := wValor - wEntrada;
                          end;

                          wvalor:=int(100*(wvalor/(iif(wEntrada > 0,iif(wNParc > 1,wNParc-1,wNParc),wNParc))))/100;

                          wvalor := Uteis.RoundTo (wvalor, -2);

                          waux := (wVlNota - ((wvalor * (iif(wEntrada > 0,iif(wNParc > 1,wNParc-1,wNParc),wNParc)))+wEntrada));
                          
                          {Nº de dias entre parcelas}
                          wintervalo := FormNfEntrada.SqlCdsPclPCL_DIASENTREP.AsInteger;
                          For I:= 1 TO wNParc do
                            begin
                                {se 1ª parcela}
                                if I = 1 then
                                   begin
                                       wVencto := FormNfEntrada.DbeENF_EMISSAO.Date;
                                       {Vencimento da 1ª}
                                       wVencto := wVencto + (FormNfEntrada.SqlCdsPclPCL_CARENC_PRI.AsInteger);
                                   end
                                   {Se não for a 1ª parcela}
                                else
                                   begin
                                       {Caso não manter-se dia do vencimento}
                                       if FormNfEntrada.SqlCdsPclPCL_MANTERDIA.AsString = 'N' then
                                          begin
                                              wVencto := wVencto + wIntervalo;
                                          end
                                          {Caso manter dia do vencimento}
                                       else
                                          begin
                                              {Desmenbra data da variável }
                                              wDia:= FormatDateTime('dd',wVencto);
                                              wDiaAux := Wdia;
                                              wMes:= FormatDateTime('mm',wVencto);
                                              wAno:= FormatDateTime('yyyy',wVencto);
                                              {Incrementa meses da data }      {Ex: se interv 60 = 2 meses}
                                              wMes := IntToStr(StrToInt(wMes) + (wIntervalo div 30));
                                              {IFs que verifican validade de datas}
                                              IF (WMes = '2') and ((WDia = '29') or (WDia = '30') or (WDia = '31')) then
                                                 WDia := '28';
                                              IF (WMes = '4') and (WDia = '31') then
                                                 WDia := '30';
                                              IF (WMes = '6') and (WDia = '31') then
                                                 WDia := '30';
                                              IF (WMes = '9') and (WDia = '31') then
                                                 WDia := '30';
                                              IF (WMes = '11') and (WDia = '31') then
                                                 WDia := '30';
                                                 {se mes passar do ano corrente}                               {ou passar um ano, ou mais}
                                              if (((StrToInt(WMes) div 12)=1)and((StrToInt(WMes) mod 12)>0))or ((StrToInt(WMes) div 12)>1)   then
                                                 Begin
                                                     {se sobra meses}
                                                     if (StrToInt(WMes) mod 12)>0 then
                                                        begin
                                                            WAno := IntToStr(StrToInt(WAno)+ StrToInt(WMes) div 12);
                                                            {a sobra da divisão equivale ao mes}  {Ex:14 div 12 = fevereiro}
                                                            WMes := StrZero(IntToStr(StrToInt(WMes) mod 12),2);
                                                        end
                                                     else
                                                        begin
                                                            {Ex:24 meses div por 12 = 2anos}{-1 porque não passou de dezembro}
                                                            WAno := IntToStr(StrToInt(WAno)+ (StrToInt(WMes) div 12)-1);
                                                        end;
                                                 end;
                                              {Passa vencto correto}
                                              WVencto := StrToDateTime(WDia+'/'+StrZero(WMes,2)+'/'+WAno);
                                              WDia := WDiaAux;
                                          end;
                                   end;
                                {Grava na na tabela PAG_PC01}
                                if (wNParc>1) then
                                   begin
                                       wSeleciona := ' where P1.PAG_CODIGO = '''+EdtCodPagar.text+''' and P1.PPC_NUMER = '''+StrZero(IntToStr(I),EdtParcela.MaxLength)+''''
                                   end
                                else
                                   wSeleciona := ' where P1.PAG_CODIGO = '''+EdtCodPagar.text+'''';
                                DataMovimento.CdsPagarParc.Close;
                                DataMovimento.CdsPagarParc.CommandText := SQLDEF('PAGAR','select P1.*,BAN_APELIDO from PAG_PC01 P1 LEFT JOIN BAN0000 B1 ON P1.BAN_CODIGO = B1.BAN_CODIGO ',wSeleciona,'P1.PAG_CODIGO,P1.PPC_NUMER','P1.');
                                DataMovimento.CdsPagarParc.Open;
                                if (DataMovimento.CdsPagarParc.IsEmpty = true) then
                                   begin
                                       DataMovimento.CdsPagarParc.Insert;
                                       DataMovimento.CdsPagarParcPAG_CODIGO.AsString     := EdtCodPagar.Text;
                                       if (wNParc>1) then
                                          DataMovimento.CdsPagarParcPPC_NUMER.AsString   := StrZero(IntToStr(I),2);
                                       DataMovimento.CdsPagarParcCCT_CODIGO.AsString     := FormNfEntrada.DbeCCT_CODIGO.Text;
                                       DataMovimento.CdsPagarParcPPC_NPARCELAS.AsInteger := FormNfEntrada.SqlCdsPclPCL_NPARCELAS.AsInteger;

                                       if (wEntrada > 0)and(I = 1) then
                                          DataMovimento.CdsPagarParcPPC_VLPARC.AsCurrency   := wEntrada
                                       else
                                          DataMovimento.CdsPagarParcPPC_VLPARC.AsCurrency   := wValor;
                                       DataMovimento.CdsPagarParcCCT_CODIGO.AsString     := FormNfEntrada.DbeCCT_CODIGO.Text;
                                       DataMovimento.CdsPagarParcPPC_SITPAG.AsString     := 'P';
                                       DataMovimento.CdsPagarParcPPC_STATUS.AsString     := 'Pendente';
                                       DataMovimento.CdsPagarParcPPC_FORMA.AsString      := 'C';
                                       DataMovimento.CdsPagarParcPPC_PREVISAO.AsString   := 'N';
                                       DataMovimento.CdsPagarParcPPC_EXCLUSAO.AsString   := 'N';
                                       DataMovimento.CdsPagarParcPCX_CODIGO.AsString     := FormNfEntrada.DbePCX_CODIGO.Text;
                                       if Waux <> 0 then
                                          begin
                                              DataMovimento.CdsPagarParcPPC_VLPARC.AsCurrency := (DataMovimento.CdsPagarParcPPC_VLPARC.AsCurrency + waux);
                                              Waux := 0;
                                          end;
                                       DataMovimento.CdsPagarParcPPC_VENCTO.AsDateTime   := wVencto;
                                       DataMovimento.CdsPagarParcFOR_CODIGO.AsString     := FormNfEntrada.EdtFor_Codigo.Text;
                                       DataMovimento.CdsPagarParcPPC_DTEMIS.AsDateTime   := FormNfEntrada.DbeENF_EMISSAO.Date;
                                       DataMovimento.CdsPagarParcPAG_NUMDOC.AsString     := EdtNotaFiscal.Text;
                                       DataMovimento.CdsPagarParcEmp_CODIGO.AsString     := dbInicio.Empresa.EMP_CODIGO;
                                       DataMovimento.CdsPagarParc.ApplyUpdates(0);
                                   end;
                            end;


                       end
                    else
                    if (FormNfEntrada.SqlCdsPclPCL_TIPO.AsString = 'V') then //Variável
                       begin
                           //Busca o Intervalo das parcelas
                          DataCadastros.sqlUpdate.Close;
                          DataCadastros.SqlUpdate.sql.text := 'SELECT P1.* '+
                                                              'FROM PCL_PARCELA P1 '+
                                                              'where P1.PCL_CODIGO = '+qStr(FormNfEntrada.SqlCdsPclPCL_CODIGO.AsString)+
                                                              ConcatSe( ' and p1.', dbInicio.ExclusivoSql('TABELAS') )+
                                                              ' order by P1.PCP_DIA' ;
                          DataCadastros.sqlUpdate.Open;


                          wNParc := dbInicio.BuscaUmDadoSqlAsInteger( 'SELECT P1.PCL_NPARCELAS '+
                                                                      'FROM PCL0000 P1 '+
                                                                      'where P1.PCL_CODIGO = '+qStr(FormNfEntrada.SqlCdsPclPCL_CODIGO.AsString)+
                                                                      ConcatSe( ' and p1.', dbInicio.ExclusivoSql('TABELAS') ) );


                          wValor := DataMovimento.CdsPagarPAG_VLNOTA.AsCurrency;
                          //Entrada
                          wEntrada := 0;
                          if (FormNfEntrada.SqlCdsPclPCL_PERCENTUAL_PRIMEIRA_P.AsCurrency > 0) then
                             begin
                                wEntrada := wValor * (FormNfEntrada.SqlCdsPclPCL_PERCENTUAL_PRIMEIRA_P.AsCurrency / 100);
                                wValor := wValor - wEntrada;
                             end;
                          //
                          {calcula valor das parcelas c/ duas casas decimais sem arredondamento}
                          wvalor:=int(100*(wvalor/(iif(wEntrada > 0,iif(wNParc > 1,wNParc-1,wNParc),wNParc))))/100;

                          wvalor := Uteis.RoundTo (wvalor, -2);

                          waux := (wVlNota - ((wvalor * (iif(wEntrada > 0,iif(wNParc > 1,wNParc-1,wNParc),wNParc)))+wEntrada));

                          {Nº de dias entre parcelas}
                          wintervalo := FormNfEntrada.SqlCdsPclPCL_DIASENTREP.AsInteger;
                          while (not DataCadastros.sqlUpdate.Eof) do
                            begin
                                I := I +1;
                                {se 1ª parcela}
                                if I = 1 then
                                   begin
                                       wVencto := FormNfEntrada.DbeENF_EMISSAO.Date;
                                       {Vencimento da 1ª}
                                       wVencto := FormNfEntrada.DbeENF_EMISSAO.Date + DataCadastros.sqlUpdate.FieldByName('PCP_DIA').AsInteger;
                                   end
                                   {Se não for a 1ª parcela}
                                else
                                   begin
                                       {Caso não manter-se dia do vencimento}
                                       if FormNfEntrada.SqlCdsPclPCL_MANTERDIA.AsString = 'N' then
                                          begin
                                              wVencto := FormNfEntrada.DbeENF_EMISSAO.Date + DataCadastros.sqlUpdate.FieldByName('PCP_DIA').AsInteger;
                                          end
                                          {Caso manter dia do vencimento}
                                       else
                                          begin
                                              {Desmenbra data da variável }
                                              wDia:= FormatDateTime('dd',wVencto);
                                              wDiaAux := Wdia;
                                              wMes:= FormatDateTime('mm',wVencto);
                                              wAno:= FormatDateTime('yyyy',wVencto);
                                              {Incrementa meses da data }      {Ex: se interv 60 = 2 meses}
                                              wMes := IntToStr(StrToInt(wMes) + (wIntervalo div 30));
                                              {IFs que verifican validade de datas}
                                              IF (WMes = '2') and ((WDia = '29') or (WDia = '30') or (WDia = '31')) then
                                                 WDia := '28';
                                              IF (WMes = '4') and (WDia = '31') then
                                                 WDia := '30';
                                              IF (WMes = '6') and (WDia = '31') then
                                                 WDia := '30';
                                              IF (WMes = '9') and (WDia = '31') then
                                                 WDia := '30';
                                              IF (WMes = '11') and (WDia = '31') then
                                                 WDia := '30';
                                                 {se mes passar do ano corrente}                               {ou passar um ano, ou mais}
                                              if (((StrToInt(WMes) div 12)=1)and((StrToInt(WMes) mod 12)>0))or ((StrToInt(WMes) div 12)>1)   then
                                                 Begin
                                                     {se sobra meses}
                                                     if (StrToInt(WMes) mod 12)>0 then
                                                        begin
                                                            WAno := IntToStr(StrToInt(WAno)+ StrToInt(WMes) div 12);
                                                            {a sobra da divisão equivale ao mes}  {Ex:14 div 12 = fevereiro}
                                                            WMes := StrZero(IntToStr(StrToInt(WMes) mod 12),2);
                                                        end
                                                     else
                                                        begin
                                                            {Ex:24 meses div por 12 = 2anos}{-1 porque não passou de dezembro}
                                                            WAno := IntToStr(StrToInt(WAno)+ (StrToInt(WMes) div 12)-1);
                                                        end;
                                                 end;
                                              {Passa vencto correto}
                                              //WVencto := StrToDateTime(WDia+'/'+StrZero(WMes,2)+'/'+WAno);
                                              WDia := WDiaAux;
                                          end;
                                   end;
                                {Grava na na tabela PAG_PC01}
                                if (wNParc>1) then
                                   begin
                                       wSeleciona := ' where P1.PAG_CODIGO = '''+EdtCodPagar.text+''' and P1.PPC_NUMER = '''+StrZero(IntToStr(I),EdtParcela.MaxLength)+''''
                                   end
                                else
                                   wSeleciona := ' where P1.PAG_CODIGO = '''+EdtCodPagar.text+'''';
                                DataMovimento.CdsPagarParc.Close;
                                DataMovimento.CdsPagarParc.CommandText := SQLDEF('PAGAR','select P1.*,BAN_APELIDO from PAG_PC01 P1 LEFT JOIN BAN0000 B1 ON P1.BAN_CODIGO = B1.BAN_CODIGO ',wSeleciona,'P1.PAG_CODIGO,P1.PPC_NUMER','P1.');
                                DataMovimento.CdsPagarParc.Open;
                                if (DataMovimento.CdsPagarParc.IsEmpty = true) then
                                   begin
                                       DataMovimento.CdsPagarParc.Insert;
                                       DataMovimento.CdsPagarParcPAG_CODIGO.AsString     := EdtCodPagar.Text;
                                       if (wNParc>1) then
                                          DataMovimento.CdsPagarParcPPC_NUMER.AsString   := StrZero(IntToStr(I),2);
                                       DataMovimento.CdsPagarParcCCT_CODIGO.AsString     := FormNfEntrada.DbeCCT_CODIGO.Text;
                                       DataMovimento.CdsPagarParcPPC_NPARCELAS.AsInteger := FormNfEntrada.SqlCdsPclPCL_NPARCELAS.AsInteger;

                                       if (wEntrada > 0)and(I = 1) then
                                          DataMovimento.CdsPagarParcPPC_VLPARC.AsCurrency   := wEntrada
                                       else
                                          DataMovimento.CdsPagarParcPPC_VLPARC.AsCurrency   := wValor;
                                       DataMovimento.CdsPagarParcCCT_CODIGO.AsString     := FormNfEntrada.DbeCCT_CODIGO.Text;
                                       DataMovimento.CdsPagarParcPPC_SITPAG.AsString     := 'P';
                                       DataMovimento.CdsPagarParcPPC_STATUS.AsString     := 'Pendente';
                                       DataMovimento.CdsPagarParcPPC_FORMA.AsString      := 'C';
                                       DataMovimento.CdsPagarParcPPC_PREVISAO.AsString   := 'N';
                                       DataMovimento.CdsPagarParcPPC_EXCLUSAO.AsString   := 'N';
                                       if Waux <> 0 then
                                          begin
                                              DataMovimento.CdsPagarParcPPC_VLPARC.AsCurrency := (DataMovimento.CdsPagarParcPPC_VLPARC.AsCurrency + waux);
                                              Waux := 0;
                                          end;
                                       DataMovimento.CdsPagarParcPPC_VENCTO.AsDateTime   := wVencto;
                                       DataMovimento.CdsPagarParcFOR_CODIGO.AsString     := FormNfEntrada.EdtFor_Codigo.Text;
                                       DataMovimento.CdsPagarParcPPC_DTEMIS.AsDateTime   := FormNfEntrada.DbeENF_EMISSAO.Date;
                                       DataMovimento.CdsPagarParcPAG_NUMDOC.AsString     := EdtNotaFiscal.Text;
                                       DataMovimento.CdsPagarParcEmp_CODIGO.AsString     := dbInicio.Empresa.EMP_CODIGO;
                                       DataMovimento.CdsPagarParc.ApplyUpdates(0);
                                   end;
                                DataCadastros.sqlUpdate.Next;
                            end;

                       end;


                    BuscaParcelas;
                end;
         end
      else
          BuscaParcelas;

end;

procedure TFormNfPagar.Bit_CancelarClick(Sender: tObject);
begin
    if uteis.confirmacao ( ('Deseja excluir o lançamento no contas à pagar dessa nota ? '))=mrYes then
       begin
          {Verifica se ja não tem parcelas liquidadas para não exluir neste casol}
           DataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','Select PAG_NUMDOC,FOR_CODIGO,PPC_SITPAG FROM PAG_PC01','where PAG_NUMDOC = '''+FormNfEntrada.EdtNota.Text+''' AND PPC_SITPAG = ''L'' AND FOR_CODIGO = '''+FormNfEntrada.EdtFor_Codigo.Text+'''','','');
           DataCadastros.sqlUpdate.Open;
           // senão enocntrou nenhum parcela liquidada
           if DataCadastros.sqlUpdate.IsEmpty = True then
              begin
               {Excluindo os parcelamentos}
               DataCadastros.sqlUpdate.close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','DELETE FROM PAG_PAGAMENTO T1','WHERE T1.PAG_REGISTRO IN (SELECT T2.PAG_REGISTRO FROM PAG_PC01 T2 WHERE T2.PAG_CODIGO = '''+EdtCodPagar.Text+''')','','T1.');
               DataCadastros.sqlUpdate.Execsql;

               {Excluindo os parcelamentos}
               DataCadastros.sqlUpdate.close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','Delete from PAG_PC01','where PAG_CODIGO = '''+EdtCodPagar.Text+'''','','');
               DataCadastros.sqlUpdate.Execsql;
               {Excluindo o Lançamento no Contas a Pagar}
               DataCadastros.sqlUpdate.close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','Delete from PAG0000','where PAG_CODIGO = '''+EdtCodPagar.Text+'''','','');
               DataCadastros.sqlUpdate.Execsql;
               FormNfEntrada.wLancadoPagar := False;
               wIncluir := False;
              SqlCdsPagarParc.Refresh;
             end
           else
             uteis.aviso('Impossível excluir parcelas do contas à pagar, existe parela(s) que já está liquida(s)');

       end
    else
       begin
       end;
    DbGridParcelas.SetFocus;
end;

procedure TFormNfPagar.Bit_GravarClick(Sender: tObject);
var
   rValorNota,
   rValorLancado:Currency;
begin
     rValorNota := CurrVlNf.Value;
     rValorLancado := 0;

     SqlCdsPagarParc.DisableControls;
     SqlCdsPagarParc.First;
     while (not SqlCdsPagarParc.Eof) do
     begin
         rValorLancado := rValorLancado + SqlCdsPagarParcPPC_VLPARC.AsCurrency;
         SqlCdsPagarParc.Next;
     end;
     SqlCdsPagarParc.First;
     SqlCdsPagarParc.EnableControls;

     if (not SqlCdsPagarParc.IsEmpty)and(rValorNota <> rValorLancado) then
         uteis.aviso(pchar('Há uma diferença de valores:'+#10#13+
                     'Valor da Nota: '+FormatFloat('###,###,##0.00',rValorNota)+#10#13+
                     'Valor Lançado: '+FormatFloat('###,###,##0.00',rValorLancado)+#10#13 +#10#13+
                     '    Diferença: '+FormatFloat('###,###,##0.00',rValorNota-rValorLancado) ))
     elsE
     begin
        if DataMovimento.CdsPagarParc.State in [dsEdit] then
           DataMovimento.CdsPagarParc.ApplyUpdates(0);
        DataMovimento.CdsPagarParc.Close;
        wIncluir := False;
        EdtParcela.Text := '';
        FormNfEntrada.wLancadoPagar := true;
        BuscaParcelas;
     end;
end;

procedure TFormNfPagar.Bit_SairClick(Sender: tObject);
var
   rValorNota,
   rValorLancado:Currency;
begin
   rValorNota := CurrVlNf.Value;
   rValorLancado := 0;
   //
   SqlCdsPagarParc.DisableControls;
   SqlCdsPagarParc.First;
   while (not SqlCdsPagarParc.Eof) do
   begin
         rValorLancado := rValorLancado + SqlCdsPagarParcPPC_VLPARC.AsCurrency;
         SqlCdsPagarParc.Next;
   end;
   SqlCdsPagarParc.First;
   SqlCdsPagarParc.EnableControls;

   if (not SqlCdsPagarParc.IsEmpty)and(rValorNota <> rValorLancado) then
   begin
         uteis.aviso(pchar('Há uma diferença de valores:'+#10#13+
                     'Valor da Nota: '+FormatFloat('###,###,##0.00',rValorNota)+#10#13+
                     'Valor Lançado: '+FormatFloat('###,###,##0.00',rValorLancado)+#10#13 +#10#13+
                     '    Diferença: '+FormatFloat('###,###,##0.00',rValorNota-rValorLancado) ));
   end
   else
   begin
         Close;
         wIncluir := False;
   end;
end;

procedure TFormNfPagar.DBGridParcelasDblClick(Sender: tObject);
begin
    Alterar_Parcelas;
end;

procedure TFormNfPagar.DBGridParcelasKeyPress(Sender: tObject;
  var Key: Char);
begin
    if (key=#13) then
       begin
           Alterar_Parcelas;
           key :=#0;
       end;
end;

procedure TFormNfPagar.Alterar_Parcelas;
begin
   if (SqlCdsPagarParc.IsEmpty) then
      begin
         uteis.aviso('Não existe parcela para ser alterada');
      end
   else
   if (SqlCdsPagarParcPPC_VLPAGO.AsCurrency > 0) then
      begin
         uteis.aviso('Não se pode alterar parcelas que já possuem pagamentos');
      end
   else
      begin
         EdVencimento.Date := SqlCdsPagarParcPPC_VENCTO.AsDateTime;
         CurrValor.Value := SqlCdsPagarParcPPC_VLPARC.AsCurrency;
         PainelAltera.Visible := True;
         EdVencimento.SetFocus;
         EdVencimento.SelectAll;
         SqlCdsPagarParc.Refresh;
      end;



    (*GrpParcelas.Enabled := True;
    EdtParcela.Text := SqlCdsParcelasPPC_NUMER.AsString;
    DataMovimento.CdsPagarParc.Close;
    DataMovimento.CdsPagarParc.CommandText := SQLDEF('PAGAR','select P1.*,BAN_APELIDO from PAG_PC01 P1 LEFT JOIN BAN0000 B1 ON P1.BAN_CODIGO = B1.BAN_CODIGO ','where P1.PAG_REGISTRO = '''+SqlCdsParcelasPAG_REGISTRO.Text+'''','','P1.');
    DataMovimento.CdsPagarParc.Open;
    if DataMovimento.CdsPagarParc.IsEmpty = False then
       begin
           DataMovimento.CdsPagarParc.Edit;
           DtVencto.Text   := DataMovimento.CdsPagarParcPPC_VENCTO.AsString;
           CurrValor.Value := DataMovimento.CdsPagarParcPPC_VLPARC.AsCurrency;
           DtPagto.Text    := DataMovimento.CdsPagarParcPPC_PAGTO.AsString;
       end;
    DesabilitaBotoes;
    DtVencto.SetFocus;
    DtVencto.SelectAll; *)
end;

procedure TFormNfPagar.DsPagarParcGridDataChange(Sender: tObject;
  Field: TField);
begin
   BuscaPagamentos;
end;

procedure TFormNfPagar.BuscaPagamentos;
begin
   CdSPagamentos.Close;
   if (not SqlCdsPagarParc.IsEmpty) then
      begin
         wSql1      := 'SELECT '+
                       '    t1.PAP_REGISTRO,'+
                       '    T1.PAG_DATA_PAGAMENTO,'+
                       '    T1.PAG_VALOR,'+
                       '    T1.PAG_DESCONTO,'+
                       '    T1.PAG_JUROS,'+
                       '    T1.PAG_MULTA,'+
                       '    T1.PAG_PAGO,'+
                       '    T1.BAN_CODIGO,'+
                       '    T2.BAN_RAZAO,'+
                       '    T1.FPG_REGISTRO,'+
                       '    T3.FPG_DESCRICAO,'+
                       '    T1.USU_CODIGO, '+
                       '    t4.USU_NOME '+
                       'FROM '+
                       'PAG_PAGAMENTO T1 '+
                       'JOIN BAN0000 T2 ON (T2.BAN_CODIGO = T1.BAN_CODIGO) '+
                       'JOIN FORMA_PAGAMENTO T3 ON (T3.FPG_REGISTRO = T1.FPG_REGISTRO) '+
                       'JOIN USUARIO T4 ON (T4.USU_CODIGO = T1.USU_CODIGO)';
         wSeleciona := 'WHERE T1.PAG_REGISTRO = '+SqlCdsPagarParcPAG_REGISTRO.AsString;
         wOrdem     := 'T1.PAG_DATA_PAGAMENTO';
         CdSPagamentos.CommandText := SQLDEF('PAGAR',wSql1,wSeleciona,wOrdem,'T1.');
         CdSPagamentos.Open;
      end;
end;

procedure TFormNfPagar.BuscaParcelas;
begin

      SqlCdsPagarParc.PacketRecords := -1;
      wSql1 := 'Select PG.PAG_REGISTRO,PG.PAG_CODIGO,PG.PPC_NUMER,PG.PPC_VLPARC,CASE WHEN (pg.PPC_EXCLUSAO = ''S'') THEN ''REGISTRO EXCLUÍDO: ''||pg.PPC_MOTIVO_EXCLUSAO ELSE pg.PPC_OBS END AS PPC_OBS,PG.PPC_VENCTO,PG.PPC_DESCTO,'+
               'PG.PPC_JUROS,PG.PPC_MULTA,PG.PPC_PAGTO,PG.PPC_VLPAGO,PG.PPC_STATUS,PG.PPC_SITPAG,PG.PPC_PREVISAO,PG.PPC_EXCLUSAO,PG.BAN_CODIGO,BAN.BAN_APELIDO FROM PAG_PC01 PG ';
      wSql2 := 'Left Join BAN0000 BAN ON PG.BAN_CODIGO = BAN.BAN_CODIGO ';

      SqlCdsPagarParc.Close;
      SqlCdsPagarParc.CommandText :=SQLDEF('PAGAR',wSql1+wSql2,'WHERE PG.PAG_CODIGO = '''+EdtCodPagar.Text+'''','PG.PPC_VENCTO,PG.PPC_NUMER','PG.');
      SqlCdsPagarParc.Open;
    DbGridParcelas.SetFocus;
end;

procedure TFormNfPagar.DbGridParcelasDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if (not SqlCdsPagarParc.IsEmpty) then
      begin
         if SqlCdsPagarParcPPC_EXCLUSAO.AsString = 'S' then
             DbGridParcelas.Canvas.Font.Color:= $0000B900; // coloque aqui a cor desejada

         if Column.Field = (SqlCdsPagarParcPPC_SITPAG) then
            begin
              DbGridParcelas.Canvas.FillRect(Rect);
              if (SqlCdsPagarParcPPC_EXCLUSAO.AsString = 'S') then
                ImageList1.Draw(DbGridParcelas.Canvas,Rect.Left+03,Rect.Top+1,6)
              else
              //0 = amarelo (parcial) | 1 = azul | = 2 cinza (previsao) | 3 = preto (pendente) | 4 = vermelho (vencida) | 5 = verde (liquidada)
              if (SqlCdsPagarParcPPC_PREVISAO.AsString = 'S') then
                ImageList1.Draw(DbGridParcelas.Canvas,Rect.Left+03,Rect.Top+1,3)
              else
              if ((SqlCdsPagarParcCCPendente.AsCurrency > 0) and (SqlCdsPagarParcPPC_VENCTO.AsDateTime < Date)) then
                ImageList1.Draw(DbGridParcelas.Canvas,Rect.Left+03,Rect.Top+1,4)
              else
              if ((SqlCdsPagarParcCCPendente.AsCurrency > 0) and (SqlCdsPagarParcCCPendente.AsCurrency < SqlCdsPagarParcPPC_VLPARC.AsCurrency)) then
                ImageList1.Draw(DbGridParcelas.Canvas,Rect.Left+03,Rect.Top+1,0)
              else
              if ((SqlCdsPagarParcCCPendente.AsCurrency = SqlCdsPagarParcPPC_VLPARC.AsCurrency) and (SqlCdsPagarParcPPC_VENCTO.AsDateTime >= Date)) then
                ImageList1.Draw(DbGridParcelas.Canvas,Rect.Left+03,Rect.Top+1,5)
              else
              if (SqlCdsPagarParcCCPendente.AsCurrency = 0) then
                ImageList1.Draw(DbGridParcelas.Canvas,Rect.Left+03,Rect.Top+1,1);
            end;
      end;
end;

procedure TFormNfPagar.SqlCdsPagarParcCalcFields(DataSet: TDataSet);
begin
   if (SqlCdsPagarParcPPC_EXCLUSAO.AsString = 'S') then
      SqlCdsPagarParcCCPendente.AsCurrency := 0
   else
      SqlCdsPagarParcCCPendente.AsCurrency := SqlCdsPagarParcPPC_VLPARC.AsCurrency - SqlCdsPagarParcPPC_VLPAGO.AsCurrency + SqlCdsPagarParcPPC_JUROS.AsCurrency + SqlCdsPagarParcPPC_MULTA.AsCurrency - SqlCdsPagarParcPPC_DESCTO.AsCurrency;

end;

procedure TFormNfPagar.BitBtn2Click(Sender: tObject);
begin
   PainelAltera.Visible := False;
end;

procedure TFormNfPagar.BitBtn1Click(Sender: tObject);
begin
   if (EdVencimento.Text = '  /  /    ') then
      begin
         uteis.aviso('Informe o Vencimento');
         EdVencimento.SetFocus;
         EdVencimento.SelectAll;
      end
   else
   if (CurrValor.Value <= 0) then
      begin
         uteis.aviso('Informe um valor válido');
         CurrValor.SetFocus;
         CurrValor.SelectAll;
      end
   else
      begin
         //sql de alteração de parcela
         DataCadastros.sqlUpdate.close;
         DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','UPDATE PAG_PC01 SET PPC_VLPARC = '+ValorAmericano(CurrValor.Text)+', PPC_VENCTO = '+QuotedStr(DataAmericana(EdVencimento.Text))+'','where PAG_REGISTRO = '+SqlCdsPagarParcPAG_REGISTRO.AsString,'','');
         DataCadastros.sqlUpdate.Execsql;
         SqlCdsPagarParc.Refresh; 
         PainelAltera.Visible := False;
         DbGridParcelas.SetFocus;
      end;
end;

procedure TFormNfPagar.Quitar1Click(Sender: tObject);
begin
   Baixa;
end;

procedure TFormNfPagar.Baixa;
begin
   if (SqlCdsPagarParc.IsEmpty) then
      begin
         uteis.aviso('Não existe parcela para ser baixada');
      end
   else
   if (SqlCdsPagarParcPPC_SITPAG.AsString = 'L') then
      begin
         uteis.aviso('Parcela já quitada');
      end
   else
      begin
         FormContasPagarBaixa := TFormContasPagarBaixa.Create(Application);
         try
            //Adiciona parcelas a serem baixadas
            FormContasPagarBaixa.CdSPagamento.Insert;
            FormContasPagarBaixa.CdSPagamentoFatRegistro.AsString := SqlCdsPagarParcPAG_REGISTRO.AsString;
            FormContasPagarBaixa.CdSPagamentoFatura.AsString := SqlCdsPagarParcPAG_CODIGO.AsString;
            FormContasPagarBaixa.CdSPagamentoParcela.AsString := SqlCdsPagarParcPPC_NUMER.AsString;
            FormContasPagarBaixa.CdSPagamentoVencimento.AsString := SqlCdsPagarParcPPC_VENCTO.AsString;
            FormContasPagarBaixa.CdSPagamentoValor.AsString := SqlCdsPagarParcPPC_VLPARC.AsString;
            FormContasPagarBaixa.CdSPagamentoPendente.AsString := SqlCdsPagarParcCCPendente.AsString;
            FormContasPagarBaixa.CdSPagamentoBaixar.AsString := SqlCdsPagarParcCCPendente.AsString;
            FormContasPagarBaixa.CdSPagamentoDesconto.AsFloat := 0;
            FormContasPagarBaixa.CdSPagamentoJuros.AsFloat := 0;
            FormContasPagarBaixa.CdSPagamentoMulta.AsFloat := 0;
            FormContasPagarBaixa.CdSPagamentoRecebido.AsString := SqlCdsPagarParcCCPendente.AsString;
            FormContasPagarBaixa.CdSPagamentoCliente.AsString := FormNfEntrada.PesqFornecedor.CDS.FieldByName('FOR_RAZAO').AsString;
            FormContasPagarBaixa.CdSPagamento.Post;
            FormContasPagarBaixa.ShowModal;
         finally
            FormContasPagarBaixa.Destroy;
            FormContasPagarBaixa := Nil;
         end;
         SqlCdsPagarParc.Refresh;
      end;
end;

procedure TFormNfPagar.Alterar1Click(Sender: tObject);
begin
   Alterar_Parcelas;
end;

procedure TFormNfPagar.EstornaBaixa1Click(Sender: tObject);
begin
   EstornarBaixa;
end;

procedure TFormNfPagar.EstornarBaixa;
begin
   if (not CdSPagamentos.IsEmpty) then
      if (uteis.confirmacao ( 'Confirma o estorno do Pagamento?')=mrYes) then
         begin
            ContasPagarEstornaBaixa(CdSPagamentosPAP_REGISTRO.AsString);
            SqlCdsPagarParc.Refresh;
         end;
end;

procedure TFormNfPagar.EdVencimentoExit(Sender: tObject);
begin
    if EdVencimento.text <> '  /  /    ' then
       begin
           if not TestaDataStr(EdVencimento.Text) then
              begin
                  EdVencimento.Date := Now;
                  EdVencimento.setfocus;
              end;
       end;
end;

end.



