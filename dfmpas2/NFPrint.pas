unit NFPrint;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, RPrint, ExtCtrls;

type
  TFormPrintNF = class(TForm)
    Panel1: TPanel;
    RPrintNFiscal: TRPrint;
    TbNFiscal: TTable;
    TbNFiscalIten: TTable;
    TbNFiscalItenNF_NUMERO: TStringField;
    TbNFiscalItenPRD_REFER: TStringField;
    TbNFiscalItenPRD_QTDE: TFloatField;
    TbNFiscalItenPRD_PRECO: TFloatField;
    TbNFiscalItenPRD_UNIDADE: TStringField;
    TbNFiscalItenIPI_ALIQ: TFloatField;
    TbNFiscalItenPRD_ICMS: TFloatField;
    TbNFiscalItenPRD_DESCRI: TStringField;
    TbNFiscalItenEMP_CODIGO: TStringField;
    TbNFiscalItenIPI_APELIDO: TStringField;
    TbNFParce: TTable;
    TbNFParceNF_NUMERO: TStringField;
    TbNFParcePC_SEQUENC: TSmallintField;
    TbNFParcePC_VALOR: TFloatField;
    TbNFParcePC_VENCTO: TDateTimeField;
    TbNFParceEMP_CODIGO: TStringField;
    PrinterSetupDialog1: TPrinterSetupDialog;
    BitNFiscal: TBitBtn;
    BitSair: TBitBtn;
    TbNFiscalNF_NU_NOTA: TStringField;
    TbNFiscalNF_EMISSAO: TDateTimeField;
    TbNFiscalNF_SAIDA: TDateTimeField;
    TbNFiscalBAN_CODIGO: TStringField;
    TbNFiscalOPE_CODIGO: TStringField;
    TbNFiscalNF_PEDIDO: TStringField;
    TbNFiscalNF_REPRES: TStringField;
    TbNFiscalNF_CODCLI: TStringField;
    TbNFiscalNF_NOMECLI: TStringField;
    TbNFiscalNF_ENDCLI: TStringField;
    TbNFiscalNF_CIDCLI: TStringField;
    TbNFiscalNF_ESTCLI: TStringField;
    TbNFiscalNF_BAICLI: TStringField;
    TbNFiscalNF_CEPCLI: TStringField;
    TbNFiscalNF_FONCLI: TStringField;
    TbNFiscalNF_ENDENT: TStringField;
    TbNFiscalNF_CIDENT: TStringField;
    TbNFiscalNF_ESTENT: TStringField;
    TbNFiscalNF_CEPENT: TStringField;
    TbNFiscalNF_ENDCOB: TStringField;
    TbNFiscalNF_CIDCOB: TStringField;
    TbNFiscalNF_ESTCOB: TStringField;
    TbNFiscalNF_CEPCOB: TStringField;
    TbNFiscalNF_INSCRI: TStringField;
    TbNFiscalNF_CGC: TStringField;
    TbNFiscalTRP_CODIGO: TStringField;
    TbNFiscalNF_PLACAVE: TStringField;
    TbNFiscalNF_FRETE: TStringField;
    TbNFiscalNF_QTDE: TFloatField;
    TbNFiscalNF_PESOBRU: TFloatField;
    TbNFiscalNF_PESOLIQ: TFloatField;
    TbNFiscalNF_BASEICMS: TFloatField;
    TbNFiscalNF_VLICMS: TFloatField;
    TbNFiscalNF_TOT_PROD: TFloatField;
    TbNFiscalNF_TOT_NOTA: TFloatField;
    TbNFiscalNF_VLIPI: TFloatField;
    TbNFiscalNF_DESCTO: TFloatField;
    TbNFiscalNF_ESPECIE: TStringField;
    TbNFiscalNF_MARCA: TStringField;
    TbNFiscalNF_NUMERO: TStringField;
    TbNFiscalNF_ENTR_SAID: TStringField;
    TbNFiscalNF_IMPRESS: TStringField;
    TbNFiscalNF_TRP_NOME: TStringField;
    TbNFiscalNF_TRP_FONE: TStringField;
    TbNFiscalNF_TRP_REDESP: TStringField;
    TbNFiscalNF_TRP_RNOME: TStringField;
    TbNFiscalNF_TRP_RFONE: TStringField;
    TbNFiscalNF_OBSPED: TStringField;
    TbNFiscalNF_OBS: TStringField;
    TbNFiscalNF_OBSOPE: TStringField;
    procedure BitNFiscalClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure BitSairClick(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrintNF: TFormPrintNF;

implementation

uses Database;

{$R *.DFM}







procedure TFormPrintNF.BitNFiscalClick(Sender: tObject);
var
  WLinha:Integer;
  WVL_UNI, WVL_TOT, WVL_IPI, WCALC_ICMS, WVL_ICMS, WVL_TOT_PRD, WVL_TOT_NOTA, WSoma,
  WPES_LIQ, WPES_BRUT :String;
begin
 PrinterSetupdialog1.Execute;
  RPrintNFiscal.BeginDoc;
  while (not TbNFiscal.EOF) do
    begin
    if TbNFiscalNF_IMPRESS.Text = 'S' then
       TbNFiscal.Next;
    //
    if TbNFiscalNF_ENTR_SAID.VAlue = 'S' then
      begin
        RPrintNFiscal.NewPos(2, 69);
      end
    else
      begin
         RPrintNFiscal.NewPos(2, 90);
      end;
    RPrintNFiscal.Out(TbNFiscalNF_ENTR_SAID.AsString, 1, []);

    RPrintNFiscal.Font.Size := 12;
    RPrintNFiscal.NewPos(2, 102);
    RPrintNFiscal.Out(TbNFiscalNF_NU_NOTA.AsString, 6, [pcBold, pcRight, pcLineFeed]);
    RPrintNFiscal.Font.Size := 8;
    // Espaço reservado para o campo natureza da operação
    //
    RPrintNFiscal.NewPos(8, 42);
    RPrintNFiscal.Out(TbNFiscalOPE_CODIGO.AsString, 3, [pcLineFeed]);
    // Destinatário / Remetente.
    RPrintNFiscal.NewPos(11, 2);
    RPrintNFiscal.Out(TbNFiscalNF_NOMECLI.AsString, 45, []);
    //
    RPrintNFiscal.NewPos(11, 75);
    RPrintNFiscal.Out(TbNFiscalNF_CGC.AsString, 14, []);
    RPrintNFiscal.NewPos(11, 101);
    RPrintNFiscal.Out(TbNFiscalNF_EMISSAO.AsString, 8, [pcLineFeed]);

    RPrintNFiscal.NewPos(14, 2);
    RPrintNFiscal.Out(TbNFiscalNF_ENDCLI.AsString, 40, []);
    RPrintNFiscal.NewPos(14, 62);
    RPrintNFiscal.Out(TbNFiscalNF_BAICLI.AsString, 25, []);
    RPrintNFiscal.NewPos(14, 87);
    RPrintNFiscal.Out(TbNFiscalNF_CEPCLI.AsString, 15, []);
    RprintNFiscal.NewPos(14, 101);
    RPrintNFiscal.Out(TbNFiscalNF_SAIDA.AsString, 8, [pcLineFeed]);
    //
    RPrintNFiscal.NewPos(16, 2);
    RPrintNFiscal.Out(TbNFiscalNF_CIDCLI.AsString, 30, []);
    RPrintNFiscal.NewPos(16, 55);
    RPrintNFiscal.Out(TbNFiscalNF_FONCLI.AsString, 11, []);
    RPrintNFiscal.NewPos(16, 70);
    RPrintNFiscal.Out(TbNFiscalNF_ESTCLI.AsString, 2, []);
    RPrintNFiscal.NewPos(16, 80);
    RPrintNFiscal.Out(TbNFiscalNF_INSCRI.AsString, 14, [pcLineFeed]);
    //Nota físcal da Inquibra não tem estes campos por isso deixei em comentário !!!
{    RPrintNFiscal.NewPos(17, 1);
    RPrintNFiscal.Out(TbNfiscalNF_CEPCLI.AsString, 15, []);
    RPrintNFiscal.NewPos(17, 14);
    RPrintNFiscal.Out(TbNFiscalNF_CIDCOB.AsString, 30, []);
    RPrintNFiscal.NewPos(17, 50);
    RPrintNFiscal.Out(TbNFiscalNF_ENDCOB.AsString, 40, [pcLineFeed]);}
    //Fatura
    RPrintNFiscal.NewPos(20, 14);
    RPrintNFiscal.Out(TbNFiscalNF_NU_NOTA.AsString, 6, []);
    //
    TbNFParce.FindKey([TbNFiscalNF_NU_NOTA.Value]);
    while (TbNFParceNF_NUMERO.Value = TbNFiscalNF_NU_NOTA.value) and not (TbNFParce.Eof) do
      begin
      //Imprime Vencimento e Valor do parcelamento da Fatura
      RPrintNFiscal.NewPos(19, 45);
      RPrintNFiscal.Out(TbNFParcePC_Vencto.AsString, 8, []);
      RPrintNFiscal.NewPos(19, 110);
      RPrintNFiscal.Out(TbNFParcePC_Valor.AsSTring, 8, [pcRight]);
      RPrintNFiscal.NewPos(19, 115);
      RPrintNFiscal.Out(TbNFiscalNF_NU_NOTA.AsString, 6, []);
      RPrintNFiscal.NewPos(19, 117);
      RPrintNFiscal.Out(TbNFiscalNF_NU_NOTA.AsString, 6, []);
      RPrintNFiscal.NewPos(19, 145);
      RPrintNFiscal.Out(TbNFParcePC_Vencto.AsString, 8, []);
      RPrintNFiscal.NewPos(19, 205);
      RPrintNFiscal.Out(TbNFParcePC_Valor.AsString, 8, [pcRight, pcLineFeed]);
      //
      TbNFParce.Next;
      end;
      //Dados do produto.
    TbNFiscalIten.FindKey([TbNFiscalNF_NU_NOTA.Value]);
    WLinha:=30;
    while (TbNFiscalNF_NU_NOTA.Value = TbNFiscalItenNF_NUMERO.value) and not(TbNFiscalIten.Eof) do
      begin
       // procurar descricao do produto pelo ídice
        Datamodulo.TbProduto.IndexName := 'XPRD_REFE';
        Datamodulo.TbProduto.FindKey([TbNFiscalItenPrd_Refer.Text]);
       {imprimo registro}
        RPrintNFiscal.NewPos(WLinha, 2);
        RPrintNFiscal.Out(TbNFiscalItenPRD_REFER.AsString, 4, [pcLineFeed]);
        RPrintNFiscal.NewPos(WLinha, 14);
        RPrintNFiscal.Out(Datamodulo.TbProdutoPRD_DESCRI.AsString, 40, [pcLineFeed]);
        RPrintNFiscal.NewPos(WLinha, 63);
        RPrintNFiscal.Out(TbNFiscalItenIPI_APELIDO.AsString, 1, [pcLineFeed]);
        RPrintNFiscal.NewPos(WLinha, 69);
        RPrintNFiscal.Out(TbNFiscalItenPRD_UNIDADE.AsString, 3, [pcLineFeed]);
        RPrintNFiscal.NewPos(WLinha, 70);
        RPrintNFiscal.Out(TbNFiscalItenPRD_QTDE.AsString, 8, [pcRight ,pcLineFeed]);
        RPrintNFiscal.NewPos(WLinha, 79);
        //Converção de String p/ Float para criar máscara.
        //Exeplo do objeto para converçao SPop := FloatToStrF(PopTotal, ffNumber, 12, 0);

        WVL_UNI := FloatToStrF(TbNFiscalItenPRD_PRECO.Value, ffNumber, 9, 2);
        RPrintNFiscal.Out(WVL_UNI, 8, [pcRight,pcLineFeed]);
        //
        RPrintNFiscal.NewPos(WLinha, 84);
        WVL_TOT := FloatToStrF(TbNFiscalItenPRD_PRECO.Value * TbNFiscalItenPRD_QTDE.VAlue, ffNumber, 12, 2);
        RPrintNFiscal.Out(WVL_TOT, 13, [pcRight, pcLineFeed]);
        WSoma := WSoma + WVL_TOT;// falta fazer.
        //
        RPrintNFiscal.NewPos(WLinha, 98);
        RPrintNFiscal.Out(TbNFiscalItenPRD_ICMS.AsString, 3, [pcRight ,pcLineFeed]);

        RPrintNFiscal.NewPos(WLinha, 102);
        RPrintNFiscal.Out(TbNFiscalItenIPI_ALIQ.AsString, 2, [pcRight ,pcLineFeed]);//pcLiFeed Temporario por falta do campo valor do IPI.

        //Faz o calculo do valor do IPI
        RPrintNFiscal.NewPos(WLinha, 106);
        RPrintNFiscal.Out(TbNFiscalNF_VLIPI.AsString, 8, [pcRight, pcLineFeed]);
        TbNFiscalIten.Next;
        WLinha := WLinha + 1;
      end;

      //Calculo do imposto.
      RPrintNFiscal.NewPos(64, 8);
      WCALC_ICMS := FloatToStrF(TbNFiscalNF_VLICMS.Value, ffNumber,7 ,3);
      RPrintNFiscal.Out(WCALC_ICMS, 10, [pcRight]);

      RPrintNFiscal.NewPos(64, 26);
      WVL_ICMS := FloatToStrF(TbNFiscalNF_BASEICMS.Value, ffNumber,7 ,3);
      RPrintNFiscal.Out(WVL_ICMS, 10, [pcRight]);

      RPrintNFiscal.NewPos(64, 88);
      WVL_TOT_PRD := FloatToStrF(TbNFiscalNF_TOT_PROD.Value, ffNumber, 12, 2);
      RprintNFiscal.Out(WVL_TOT_PRD, 13, [pcRight, pcLineFeed]);
      //
      RPrintNFiscal.NewPos(67, 88);
      WVL_TOT_NOTA := FloatToStrF(TbNFiscalNF_TOT_NOTA.Value, ffNumber, 12, 2);
      RPrintNFiscal.Out(WVL_TOT_NOTA, 13,[pcRight, pcLineFeed]);


      //Campos Da parte de Transportador / volume Transportados.
      RPrintNFiscal.NewPos(71, 2);
      RPrintNFiscal.Out(TbNFiscalTRP_CODIGO.AsString, 3,[]);
      RPrintNFiscal.NewPos(71, 6);
      RPrintNFiscal.Out(TbNFiscalNF_TRP_RNOME.AsString, 40, []);
      RPrintNFiscal.NewPos(71, 44);
      RPrintNFiscal.Out(TbNFiscalNF_TRP_FONE.AsString, 11, []);
      RPrintNFiscal.NewPos(71, 68);
      RPrintNFiscal.Out(TbNFiscalNF_FRETE.AsString, 1, []);
      RPrintNFiscal.NewPos(71, 73);
      RPrintNFiscal.Out(TbNFiscalNF_PLACAVE.AsString, 8, []);
      RPrintNFiscal.NewPos(71, 83);
      RPrintNFiscal.Out(Datamodulo.TbTransportTRP_UF.AsString, 2, []);
      //
      //Faz a procura pelo codigo da transportadora na tabela de transportadora.
      Datamodulo.TbTransport.FindKey([TbNFiscalTRP_CODIGO.Text]);
      //Faz a procura pelo codigo da transportadora na tabela de transportadora.
      RPrintNFiscal.NewPos(71, 90);
      RPrintNfiscal.Out(Datamodulo.TbTransportTRP_CGC.AsString, 14, [pcRight, pcLineFeed]);
      //
      RPrintNFiscal.NewPos(73, 2);
      RPrintNFiscal.Out(Datamodulo.TbTransportTRP_ENDERE.AsString, 40, []);
      RPrintNFiscal.NewPos(73, 58);
      RPrintNFiscal.Out(DAtamodulo.TbTransportTRP_CIDADE.AsString, 30, []);
      RPrintNFiscal.NewPos(73,83);
      RPrintNFiscal.Out(Datamodulo.TbTransportTRP_UF.AsString, 2, []);
      RPrintNFiscal.NewPos(73, 90);
      RPrintNFiscal.Out(Datamodulo.TbTransportTRP_INSC.AsString, 14, [pcRight, pcLineFeed]);
      //
      RPrintNFiscal.NewPos(75, 19);
      RPrintNFiscal.Out(TbNFiscalNF_ESPECIE.AsString, 15, []);
      RPrintNFiscal.NewPos(75, 43);
      RPrintNFiscal.Out(TbNFiscalNF_MARCA.AsString, 10, []);
      RPrintNFiscal.NewPos(75, 85);
      WPES_BRUT := FloatToStrF(TbNFiscalNF_PESOBRU.Value, ffNumber, 6, 3);
      RPrintNFiscal.Out(WPES_BRUT, 8, [pcRight]);
      RPrintNFiscal.NewPos(75, 97);
      WPES_LIQ := FloatToStrF(TbNFiscalNF_PESOLIQ.Value, ffNumber, 6, 3);
      RPrintNFiscal.Out(WPES_LIQ, 8, [pcRight, pcLineFeed]);
      //
      RPrintNFiscal.Font.Size := 12;
      RPrintNFiscal.NewPos(93, 100);
      RPrintNFiscal.Out(TbNFiscalNF_NU_NOTA.AsString, 6, [pcBold, pcRight]);
      RPrintNFiscal.Font.Size := 8;
      RprintNFiscal.EndDoc;
      TbNFiscal.Next;
    end;
  //RprintNFiscal.EndDoc;
end;


procedure TFormPrintNF.FormShow(Sender: tObject);
begin
  try
    TbNFiscal.Open;
  except
    uteis.erro  ('Impossivel acessar a tabela de "Nota físcal"! ');
  end;
  //
  try
    TbNFiscalIten.Open;
  except
    uteis.erro  ('Impossível acessar a tabela de "Itens da nota físcal"!');
  end;
  //
  try
    TbNFParce.Open;
  except
    uteis.erro  ('Impossível acessar a tabela de "Parcelas da nota físcal"!');
  end;
  //
  try
    Datamodulo.TbProduto.Open;
  Except
    uteis.erro  ('Impossível acessar a tabela de "Produtos"!');
  end;
  //
  try
    Datamodulo.TbTransport.IndexName := 'XTRP_CODI';
    Datamodulo.TbTransport.Open;
  except
    uteis.erro  ('Impossível acessar a tabela de "Transportadora"!');
  end;

end;

procedure TFormPrintNF.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
  try
    TbNFiscal.Close;
  except
    uteis.erro  ('Impossível fechar a tabela de "Nota físcal"!');
  end;
  //
  try
    TbNFiscalIten.Close;
  except
    uteis.erro  ('Ipossível fechar a tabela de "Itens da nota físcal"!');
  end;
  //
  try
    TbNFParce.Close;
  except
    uteis.erro  ('Impossível fechar tabela de "Parcelas da nota físcal"!');
  end;
  //
  try
    Datamodulo.TbProduto.Close;
  except
    uteis.erro  ('Impossível fechar tabela de "Produto"!');
  end;
  //
  try
    Datamodulo.TbTransport.Close;
  except
    uteis.erro  ('Impossível fechar tabela de "Transportadora"!');
  end;

end;

procedure TFormPrintNF.BitSairClick(Sender: tObject);
begin
  Close;
end;

end.
