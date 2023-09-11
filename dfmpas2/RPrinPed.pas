unit RPrinPed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, RPrint, StdCtrls, Buttons;

type
  TFormRPrintPedido = class(TForm)
    RPrintPedido: TRPrint;
    TbPedidoRP: TTable;
    DsPedidoRP: TDataSource;
    TbClienteRP: TTable;
    DsclienteRP: TDataSource;
    TbRepresRP: TTable;
    DsRepresRp: TDataSource;
    TbTranspRP: TTable;
    DsTRanspRP: TDataSource;
    TbProdutoRP: TTable;
    DsProdutoRP: TDataSource;
    TbPedidoRPPED_CODIGO: TStringField;
    TbPedidoRPCLI_CODIGO: TStringField;
    TbPedidoRPREP_CODIGO: TStringField;
    TbPedidoRPPED_DTENTRADA: TDateTimeField;
    TbPedidoRPPED_COMIS1: TFloatField;
    TbPedidoRPPED_COMIS2: TFloatField;
    TbPedidoRPPED_COMIS3: TFloatField;
    TbPedidoRPPCL_CODIGO: TStringField;
    TbPedidoRPPED_DESCTOVL: TFloatField;
    TbPedidoRPPED_DESCTOPC: TFloatField;
    TbPedidoRPTRP_CODIGO: TStringField;
    TbPedidoRPPED_FRETE: TStringField;
    TbPedidoRPTRP_REDESP: TStringField;
    TbPedidoRPPED_OBSNOTA: TStringField;
    TbPedidoRPPED_SITUACAO: TStringField;
    TbPedidoRPPED_VLTOTAL: TFloatField;
    TbPedidoRPPED_VLFATURADO: TFloatField;
    TbPedidoRPPED_FATURAS: TStringField;
    TbPedidoRPPED_SITCRED: TStringField;
    TbPedidoRPPED_OBSGERAL: TMemoField;
    TbPedidoRPPED_DTMIN_ATD: TDateTimeField;
    TbPedidoRPPED_DTLIM_ATD: TDateTimeField;
    TbPedidoRPPED_DTSAIDA: TDateTimeField;
    TbPedidoRPPED_PRIORIDADE: TStringField;
    TbPedidoRPEMP_CODIGO: TStringField;
    TbClienteRPCLI_CODIGO: TStringField;
    TbClienteRPCLI_RAZAO: TStringField;
    TbClienteRPREG_CODIGO: TStringField;
    TbClienteRPCLI_ATIVIDADE: TStringField;
    TbClienteRPCLI_PORTE: TStringField;
    TbClienteRPCLI_ENDERE: TStringField;
    TbClienteRPCLI_BAIRRO: TStringField;
    TbClienteRPCLI_CIDADE: TStringField;
    TbClienteRPCLI_CEP: TStringField;
    TbClienteRPCLI_CXPOST: TStringField;
    TbClienteRPCLI_EMAIL: TStringField;
    TbClienteRPCLI_HOME: TStringField;
    TbClienteRPCLI_FONE: TStringField;
    TbClienteRPCLI_FAX: TStringField;
    TbClienteRPTRP_CODIGO: TStringField;
    TbClienteRPCLI_INSC: TStringField;
    TbClienteRPCLI_CGC: TStringField;
    TbClienteRPCLI_PESSOA: TStringField;
    TbClienteRPCLI_CONTATO: TStringField;
    TbClienteRPCLI_FUNCONT: TStringField;
    TbClienteRPREP_CODIGO: TStringField;
    TbClienteRPCLI_DTINICIO: TDateTimeField;
    TbClienteRPCLI_DTULTCOM: TDateTimeField;
    TbClienteRPCLI_ENDENTR: TStringField;
    TbClienteRPCLI_CIDENTR: TStringField;
    TbClienteRPCLI_CEPENTR: TStringField;
    TbClienteRPCLI_ENDFAT: TStringField;
    TbClienteRPCLI_CIDFAT: TStringField;
    TbClienteRPCLI_CEPFAT: TStringField;
    TbClienteRPCLI_OBS: TStringField;
    TbClienteRPCLI_UF: TStringField;
    TbClienteRPCLI_UFENTR: TStringField;
    TbClienteRPCLI_UFFAT: TStringField;
    TbClienteRPEMP_CODIGO: TStringField;
    TbRepresRPREP_CODIGO: TStringField;
    TbRepresRPREP_GRUPO: TStringField;
    TbRepresRPREG_CODIGO: TStringField;
    TbRepresRPREP_FUNCAO: TStringField;
    TbRepresRPREP_SUPERVISAO: TStringField;
    TbRepresRPREP_RAZAO: TStringField;
    TbRepresRPREP_NOME: TStringField;
    TbRepresRPREP_ENDERE: TStringField;
    TbRepresRPREP_CIDADE: TStringField;
    TbRepresRPREP_UF: TStringField;
    TbRepresRPREP_CEP: TStringField;
    TbRepresRPREP_FONE: TStringField;
    TbRepresRPREP_FAX: TStringField;
    TbRepresRPREP_EMAIL: TStringField;
    TbRepresRPREP_TIPO: TStringField;
    TbRepresRPREP_SITUACAO: TStringField;
    TbRepresRPREP_OBS: TMemoField;
    TbRepresRPREP_QUOTA: TFloatField;
    TbRepresRPREP_NDEPEND: TSmallintField;
    TbRepresRPREP_DTNASC: TDateTimeField;
    TbRepresRPREP_INSC: TStringField;
    TbRepresRPREP_CGC: TStringField;
    TbRepresRPEMP_CODIGO: TStringField;
    TbTranspRPTRP_CODIGO: TStringField;
    TbTranspRPTRP_RAZAO: TStringField;
    TbTranspRPTRP_ENDERE: TStringField;
    TbTranspRPTRP_CIDADE: TStringField;
    TbTranspRPTRP_UF: TStringField;
    TbTranspRPTRP_CEP: TStringField;
    TbTranspRPTRP_CGC: TStringField;
    TbTranspRPTRP_INSC: TStringField;
    TbTranspRPTRP_FONE: TStringField;
    TbTranspRPTRP_FAX: TStringField;
    TbTranspRPTRP_EMAIL: TStringField;
    TbTranspRPTRP_CONTATO: TStringField;
    TbTranspRPEMP_CODIGO: TStringField;
    TbTranspRPTRP_HOME: TStringField;
    TbProdutoRPPRD_CODIGO: TStringField;
    TbProdutoRPPRD_DESCRI: TStringField;
    TbProdutoRPPRD_REFER: TStringField;
    TbProdutoRPPRD_UND: TStringField;
    TbProdutoRPPRD_EMBALA: TStringField;
    TbProdutoRPPGR_CODIGO: TStringField;
    TbProdutoRPPTI_CODIGO: TStringField;
    TbProdutoRPIPI_CODIGO: TStringField;
    TbProdutoRPPRD_ALIQICM: TFloatField;
    TbProdutoRPLIN_CODIGO: TStringField;
    TbProdutoRPPRD_COMPL: TStringField;
    TbProdutoRPPRD_CARACT: TMemoField;
    TbProdutoRPPRD_MINIMO: TFloatField;
    TbProdutoRPPRD_PCUSTO: TFloatField;
    TbProdutoRPPRD_PVENDA: TFloatField;
    TbProdutoRPPRD_PMEDIO: TFloatField;
    TbProdutoRPPRD_ESTOQUE: TFloatField;
    TbProdutoRPPRD_SAIDA: TFloatField;
    TbProdutoRPPRD_PENDENTE: TFloatField;
    TbProdutoRPFOR_CODIGO: TStringField;
    TbProdutoRPPRD_ENTRADA: TFloatField;
    TbProdutoRPPRD_MAXIMO: TFloatField;
    TbProdutoRPPRD_ICMSUBS: TFloatField;
    TbProdutoRPPRD_UTILCONV: TBooleanField;
    TbProdutoRPPRD_UNDCOMP: TStringField;
    TbProdutoRPPRD_PESOKg: TFloatField;
    TbProdutoRPPRD_FATORC: TFloatField;
    TbProdutoRPPRD_DIVMULT: TStringField;
    TbProdutoRPEMP_CODIGO: TStringField;
    TbProdutoRPPRD_DTPCUSTO: TDateTimeField;
    PrinterPedido: TPrinterSetupDialog;
    BitPedidoRp: TBitBtn;
    TbItenPedidoRP: TTable;
    DsItenPedidoRP: TDataSource;
    TbParcelaRP: TTable;
    DataSource1: TDataSource;
    TbParcelaRPPCL_CODIGO: TStringField;
    TbParcelaRPPCL_NOME: TStringField;
    TbParcelaRPPCL_DESCTO: TFloatField;
    TbParcelaRPPCL_MULTA: TFloatField;
    TbParcelaRPPCL_JUROS: TFloatField;
    TbParcelaRPPCL_NPARCELAS: TSmallintField;
    TbParcelaRPPCL_DIASENTREP: TSmallintField;
    TbParcelaRPPCL_MANTERDIA: TBooleanField;
    TbParcelaRPPCL_CARENC_PRI: TSmallintField;
    TbParcelaRPPCL_OBS: TStringField;
    TbParcelaRPPCL_DISPONIVEL: TBooleanField;
    TbItenPedidoRPREG: TAutoIncField;
    TbItenPedidoRPPED_CODIGO: TStringField;
    TbItenPedidoRPPRD_CODIGO: TStringField;
    TbItenPedidoRPPRF_QTDE: TFloatField;
    TbItenPedidoRPPRF_PRECO: TFloatField;
    TbItenPedidoRPPRF_SITUACAO: TStringField;
    TbItenPedidoRPEMP_CODIGO: TStringField;
    TbItenPedidoRPFATURA_CI: TBooleanField;
    TbItenPedidoRPPRD_REFER: TStringField;
    TbItenPedidoRPPRF_IPIALIQ: TFloatField;
    TbParametroRP: TTable;
    TbParametroRPPMT_COMIS_GRP: TBooleanField;
    TbParametroRPPMT_COMIS_REP: TFloatField;
    TbParametroRPPMT_COMIS_SUP: TFloatField;
    TbParametroRPPMT_COMIS_GER: TFloatField;
    TbParametroRPPMT_PAGTO_COM_TP: TStringField;
    TbParametroRPPMT_COMIS_QUINZ: TBooleanField;
    TbParametroRPPMT_1QZ_DIAS: TStringField;
    TbParametroRPPMT_2QZ_DIAS: TStringField;
    TbParametroRPPMT_BORDERO_COM: TStringField;
    TbParametroRPPMT_NUMER_PEDIDO: TStringField;
    TbParametroRPPMT_DPL_IPI_NA1D: TBooleanField;
    TbParametroRPPMT_ATUALIZ_ESTONF: TBooleanField;
    TbParametroRPPMT_QTDE_DECIMAIS: TStringField;
    TbParametroRPPMT_PED_IMPORTANTE: TMemoField;
    procedure FormShow(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure BitPedidoRpClick(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRPrintPedido: TFormRPrintPedido;

implementation

uses Database;

{$R *.DFM}







procedure TFormRPrintPedido.FormShow(Sender: tObject);
begin
  try
    TbPedidoRP.Open;
  except
    uteis.erro  ('Impossível Abrir Tabela de PedidoRP');
  end;
  //
  try
    TbClienteRP.Open;
  except
    uteis.erro  ('Impossível Abrir Tabela de ClienteRP');
  end;
  //
  try
    TbRepresRP.Open;
  except
    uteis.erro  ('Impossível Abrir Tabela de RepresentanteRP');
  end;
  //
  try
    TbTranspRP.Open;
  except
    uteis.erro  ('Impossível Abrir Tabela de TransportadoraRP');
  end;
  //
  try
    TbProdutoRP.Open;
  except
    uteis.erro  ('Impossível Abrir Tabela de ProdutoRP');
  end;
  //
  try
    TbItenPedidoRP.Open;
  except
    uteis.erro  ('Impossível Abrir Tabela de Itens do PedidoRP');
  end;
  //
  try
    TbParcelaRP.Open
  except
    uteis.erro  ('Impossível Abrir Tabela de ParcelaRP');
  end;
  //
  try
    Datamodulo.TbProduto.Open;
  except
    uteis.erro  ('Impossível Abrir Tabela de Produto');
  end;
  //
  try
    Datamodulo.TbFichaTec.Open;
  except
    uteis.erro  ('Impossível Abrir Tabela de Ficha Tecnica');
  end;
  //
  try
    Datamodulo.TbEmpresa.IndexName := 'XEMP_CODI';
    Datamodulo.TbEmpresa.Open;
  except
    uteis.erro  ('Impossível Abrir Tabela de Empresa');
  end;
end;

procedure TFormRPrintPedido.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
  try
    TbPedidoRP.Close;
  except
    uteis.erro  ('Impossível Fechar Tabela de PedidoRP');
  end;
  //
  try
    TbClienteRP.Close;
  except
    uteis.erro  ('Impossível Fechar Tabela de ClienteRP');
  end;
  //
  try
    TbRepresRP.Close;
  except
    uteis.erro  ('Impossível Fechar Tabela de RepresentanteRP');
  end;
  //
  try
    TbTranspRp.Close;
  except
    uteis.erro  ('Impossível Fechar Tabela de TransportadoraRp');
  end;
  //
  try
    TbProdutoRp.Close;
  except
    uteis.erro  ('Impopssível Fechar Tabela de ProdutoRP');
  end;
  //
  try
    TbItenPedidoRP.Close;
  except
    uteis.erro  ('Impossível Fechar Tabela de Itens do PedidoRP');
  end;
  //
  try
    TbParcelaRp.Close;
  except
    uteis.erro  ('Impossível Fechar Tabela de ParcelaRP');
  end;
  //
  try
    Datamodulo.TbProduto.Close;
  except
    uteis.erro  ('Impossível Fechar Tabela de Produto');
  end;
  //
  try
    Datamodulo.TbFichaTec.Close;
  except
    uteis.erro  ('Impossível Fechar Tabela de Ficha Tecnica');
  end;
  //
  try
    Datamodulo.TbEmpresa.Close;
  except
    uteis.erro  ('Impossível Fechar Tabela de Empresa');
  end;
end;

procedure TFormRPrintPedido.BitPedidoRpClick(Sender: tObject);
var
  WLinha_Descri:Integer;
  WCGC:String;
  Wvalor_total:string;
  WPRECO, WTOT_PRECO, WTOT_QTDE, WTOT_UNITARIO, WTOT_IPI, WTOT_GERAL, WTOT_GERAL_FINAL:Double;
begin
  PrinterPedido.Execute;
  RPrintPedido.BeginDoc;
  RPrintPedido.NewPos(2, 1);
  RPrintPedido.Out('------------------------------------------------------------------------------------------------------------', 70, [pcLineFeed]);
  //
  RPrintPedido.Font.Size := 14;
  RprintPedido.NewPos(3, 1);
  Datamodulo.TbEmpresa.FindKey([TbPedidoRPEMP_CODIGO.Value]);
  RPrintPedido.Out(Datamodulo.TbEmpresaEMP_FANTASIA.AsString, 40,[pcLineFeed]);
  RPrintPedido.Font.Size := 8;
  //
  RPrintPedido.Newpos(4,2);
  RPrintPedido.Out(Datamodulo.TbEmpresaEMP_ENDERE.AsString, 45,[]);
  //
  RPrintPedido.NewPos(4, 80);
  RPrintPedido.Out('PEDIDO Nº:', 12,[]);
  //
  RPrintPedido.Newpos(4, 91);
  RPrintpedido.Out(TbPedidoRPPED_CODIGO.AsString, 6, [pcLineFeed, pcBold]);
  //
  RPrintPedido.NewPos(5, 1);
  RPrintPedido.Out(Datamodulo.TbEmpresaEMP_CEP.AsString, 8, []);
  //
  RPrintPedido.NewPos(5, 12);
  RPrintPedido.Out(Datamodulo.TbEmpresaEMP_CIDADE.AsString, 30, []);
  //
  RPrintPedido.NewPos(5, 20);
  RPrintpedido.Out(Datamodulo.TbEmpresaEMP_UF.AsString, 2, []);
  //
  RPrintPedido.NewPos(5, 35);
  RPrintPedido.Out('Fone:', 5, []);
  //
  //
  RPrintPedido.NewPos(5, 40);
  RPrintPedido.Out(Datamodulo.TbEmpresaEMP_FONE.AsString, 11, []);
  //
  RPrintPedido.NewPos(5, 55);
  RPrintPedido.Out('Fax:', 4, []);
  //
  RPrintPedido.NewPos(5, 60);
  RPrintPedido.Out(Datamodulo.TbEmpresaEMP_FAX.AsString, 11, [pcLineFeed]);
  //
  RPrintPedido.NewPos(6, 1);
  Rprintpedido.Out('Home Page:', 9, []);
  //
  RPrintPedido.NewPos(6, 12);
  RPrintPedido.Out(Datamodulo.TbEmpresaEMP_EMAIL.AsString, 35, []);
  //
  RPrintPedido.NewPos(6, 40);
  RPrintPedido.Out('E-mail:', 5, []);
  //
  RPrintPedido.NewPos(6, 48);
  RPrintPedido.Out(Datamodulo.TbEmpresaEMP_HOME.AsString, 35, [pcLineFeed]);
  //
  RPrintPedido.NewPos(7, 1);
  RPrintPedido.Out('------------------------------------------------------------------------------------------------------------', 70, [pcLineFeed]);

  //
  RPrintPedido.NewPos(8, 1);
  RPrintPedido.Out('Data ENTRADA do Pedido:', 29, []);

  RPrintPedido.NewPos(8, 26);
  RPrintPedido.Out(TbPedidoRPPED_DTENTRADA.AsString, 8,[]);

  RPrintPedido.NewPos(8, 60);
  RPrintPedido.Out(TbPedidoRPPED_DTMIN_ATD.AsString, 13, [pcLineFeed]);

  //sequencia de impressão da tabela de cliente.
  RPrintPedido.NewPos(9, 1);
  RPrintPedido.Out('Cliente        :', 7, []);

  RPrintPedido.NewPos(9, 18);
  RPrintPedido.Out(TbClienteRPCLI_RAZAO.AsString, 45, []);

  RPrintPedido.NewPos(9, 65);
  RPrintPedido.Out('Ramo       :', 10, [pcLineFeed]);
  //campo do ramo
  RPrintPedido.NewPos(10, 1);
  RPrintPedido.Out('Endereço       :',5 ,[]);

  RPrintPedido.NewPos(10, 18);
  RPrintPedido.Out(TbClienteRPCLI_ENDERE.AsString, 40, []);

  RPrintPedido.NewPos(10, 65);
  RPrintPedido.Out('Bairro     :', 8, []);

  RPrintPedido.NewPos(10, 78);
  RPrintPedido.Out(TbClienteRPCLI_BAIRRO.AsString, 25, [pcLineFeed]);
  // espaço reservado para o campo ramo do cliente que ainda não tem  a tabela.
  RPrintPedido.NewPos(11, 1);
  RPrintPedido.Out('Cidade         :', 6, []);

  RPrintPedido.NewPos(11, 18);
  RPrintPedido.Out(TbClienteRPCLI_CIDADE.AsString, 30, []);

  RPrintPedido.NewPos(11, 65);
  RPrintPedido.Out('Estado     :', 8, []);

  RPrintPedido.NewPos(11, 78);
  RPrintPedido.Out(TbClienteRPCLI_UF.AsString, 2, []);

  RPrintPedido.NewPos(11, 82);
  RPrintPedido.Out('Cep:', 4, [pcLineFeed]);

  RPrintPedido.NewPos(11, 87);
  RPrintPedido.Out(TbClienteRPCLI_CEP.AsString, 9, [pcLineFeed]);

  //Tem que arrumar as mascaras dos campos cgc e cpf.
  RPrintPedido.NewPos(12, 1);
  RPrintPedido.Out('CGC/CPF        :', 7, []);

  RPrintPedido.NewPos(12, 18);
   if TbClienteRPCLI_CGC.Value = 'J' then
     RPrintPedido.Out(Format(TbClienteRPCLI_CGC.Value,['999.999.999-99;0;_']), 18, [PcLineFeed])
  else
    RPrintPedido.Out(Format(TbClienteRPCLI_CGC.Value,['999.999.999-99;0;_']), 18, [pcLineFeed]);
  //
  RPrintPedido.NewPos(12, 65);
  RPrintPedido.Out('Inscr.Est  :', 10, []);

  RPrintPedido.NewPos(12, 78);
  RPrintPedido.Out(TbClienteRPCLI_INSC.AsString, 14, [pcLineFeed]);

  //
  RPrintPedido.NewPos(13, 1);
  RPrintPedido.Out('Contato        :',10, []);

  RPrintPedido.NewPos(13, 18);
  RPrintPedido.Out(TbClienteRPCLI_CONTATO.AsString, 25, []);

  RPrintPedido.NewPos(13, 65);
  RPrintPedido.Out('Fone       :', 5, []);

  RPrintPedido.NewPos(13, 78);
  RPrintPedido.Out(TbClienteRPCLI_FONE.AsString, 11, []);

  RPrintPedido.NewPos(13, 92);
  RPrintPedido.Out('Fax:', 4, []);

  RPrintPedido.NewPos(13, 97);
  RPrintPedido.Out(TbClienteRPCLI_FAX.AsString, 11, [pcLineFeed]);
  //
  RPrintPedido.NewPos(14, 1);
  RPrintPedido.Out('Vendedor       :', 10, []);

  RPrintPedido.NewPos(14, 18);
  RPrintPedido.Out(TbRepresRPREP_CODIGO.AsString, 3, []);

  RPrintPedido.NewPos(14, 23);
  RPrintPedido.Out(DaTamodulo.TbEmpresaEMP_FANTASIA.AsString, 40, [pcLineFeed]);

  //
  RPrintPedido.NewPos(15, 1);
  RPrintPedido.Out('Transportadora :', 15, []);

  RPrintPedido.NewPos(15, 18);
  RPrintPedido.Out(TbTranspRPTRP_CODIGO.AsString, 3, []);
  //
  RPrintPedido.NewPos(15, 22);
  RPrintPedido.out(TbTranspRPTRP_RAZAO.AsString, 45, []);
  //
  RPrintPedido.NewPos(15, 65);
  RPrintPedido.Out('Frete      :', 6, []);

  RPrintPedido.NewPos(15, 78);
  RPrintPedido.Out(TbPedidoRPPED_FRETE.AsString, 1, []);

  RPrintPedido.NewPos(15, 83);
  RPrintPedido.Out(TbTranspRpTRP_FONE.AsString, 11, [pcLineFeed]);

  //
  RPrintPedido.NewPos(16, 1);
  RPrintPedido.Out('Redespacho     :', 12, []);
  //
  if TbTranspRP.FindKey([TbPedidoRPTRP_REDESP.Value]) = True then
  RPrintPedido.NewPos(16, 18);
  RPrintpedido.Out(TbPedidoRPTRP_REDESP.AsString, 3, []);

  RPrintPedido.NewPos(16, 65);
  RPrintPedido.Out('Frete      :', 6, []);

  RPrintPedido.NewPos(16, 78);
  RPrintPedido.Out(TbPedidoRPPED_FRETE.AsString, 1, []);

  RPrintPedido.NewPos(16, 83);
  RPrintPedido.Out(TbTranspRPTRP_FONE.AsString, 11, [pcLineFeed]);
  //
  RPrintPedido.NewPos(17, 1);
  RPrintPedido.Out('End. Entrega   :', 10, []);

  RPrintPedido.NewPos(17, 18);
  RPrintPedido.Out(TbClienteRPCLI_ENDENTR.AsString, 40, []);

//  RPrintPedido.NewPos(16, 65);
//  RPrintPedido.Out('Bairro :', 6, []); ESTÁ EM COMENTARIO PORQUE TALVES NÃO
//  RPrintPedido.NewPos(16, 74);         VAI TER NO PEDIDO.
//  RPrintPedido.Out(TbclienteRPCLI_BAIRRO.AsString, 25, [pcLineFeed]);

  // CAMPOS DA ENTREGA DOS PRODUTOS.
  RPrintPedido.NewPos(18, 1);
  RPrintPedido.Out('Cidade         :', 7, []);

  RPrintPedido.NewPos(18, 18);
  RPrintPedido.Out(TbClienteRPCLI_CIDENTR.AsString, 30, []);

  RPrintPedido.NewPos(18, 65);
  RPrintPedido.Out('Estado     :', 8, []);

  RPrintPedido.NewPos(18, 78);
  RPrintPedido.Out(TbClienteRPCLI_UFENTR.AsString, 2, []);

  RPrintPedido.NewPos(18, 81);
  RPrintPedido.Out('Cep:', 4, []);

  RPrintPedido.NewPos(18, 86);
  RPrintPedido.Out(TbClienteRPCLI_CEPENTR.AsString, 8, [pcLineFeed]);

  //
  RPrintPedido.NewPos(19, 1);
  RPrintPedido.Out('Pça de Pagto   :', 12, []);

  RPrintPedido.NewPos(19, 18);
  RPrintPedido.Out(TbClienteRPCLI_ENDFAT.AsString, 40, [pcLineFeed]);

//  RPrintPedido.NewPos(18, 65);
//  RPrintPedido.Out('Bairro :', 7, []); mesma coisa do enderço de entrega.
//  RPrintPedido.NewPos(18, 70);
  RPrintPedido.NewPos(20, 1);
  RPrintPedido.Out('Cidade         :', 6, []);

  RPrintPedido.NewPos(20, 18);
  RPrintPedido.Out(TbClienteRPCLI_CIDFAT.AsString, 30, []);

  RPrintPedido.NewPos(20, 65);
  RPrintPedido.Out('Estado     :', 6, []);

  RPrintPedido.NewPos(20, 78);
  RPrintPedido.Out(TbClienteRPCLI_UFFAT.AsString, 2, []);

  RPrintPedido.NewPos(20, 81);
  RPrintPedido.Out('Cep:', 4, []);

  RPrintPedido.NewPos(20, 86);
  RPrintPedido.Out(TbClienteRPCLI_CEPFAT.AsString, 8, [pcLineFeed]);
  //
  RPrintPedido.NewPos(21, 1);
  RPrintPedido.Out('Cond. de Pagto :', 15, []);

  if TbParcelaRP.FindKey([TbPedidoRPPCL_CODIGO]) then
  RPrintPedido.NewPos(21, 28);
  RPrintPedido.Out(TbParcelaRPPCL_NOME.AsString, 35, [pclineFeed]);

  RPrintPedido.NewPos(22, 1);
  RPrintPedido.Out('============================================================================================================', 70, [pcLineFeed]);
//  RPrintPedido.NewPos(22, 1);
//  RPrintPedido.Out('------------------------------------------------------------------------------------------------------------', 70, [pcLineFeed]);
  //
  RPrintPedido.NewPos(23, 1);
  RPrintPedido.Out('REF', 3, []);

  RPrintPedido.NewPos(23, 12);
  RPrintPedido.Out('QUANT.', 6, []);

  //RPrintPedido.NewPos(22, 17);
  //RPrintPedido.Out('PESO', 5, []);
  RPrintPedido.NewPos(23, 20);
  RPrintPedido.Out('DESCRIMINAR', 10, []);

  RPrintPedido.NewPos(23, 70);
  RPrintPedido.Out('PREÇO', 5, []);

  RPrintPedido.NewPos(23, 90);
  RPrintPedido.Out('PREÇO', 5, []);

  RPrintPedido.NewPos(23, 100);
  RPrintPedido.Out('IPI', 3 ,[pcLineFeed]);
  //
//  RPrintPedido.NewPos(23, 65);
//  RPrintPedido.out('UNITÁRIO', 9, []);// UNITARIO DO PRIMEIRO PEÇO.
  RPrintPedido.NewPos(24, 90);
  RPrintPedido.Out('TOTAL', 5, [pcLineFeed]);//TOTAL DO SEGUNDO PREÇO.

  RprintPedido.NewPos(25, 1);
  RPrintPedido.Out('------------------------------------------------------------------------------------------------------------', 70, [pcLineFeed]);
  //
   WTOT_GERAL := 0;
   WTOT_IPI := 0;
   WTOT_PRECO := 0;
   WTOT_QTDE := 0;
   WTOT_UNITARIO := 0;
   TbItenPedidoRP.First;
   WLinha_Descri := 26;
   while (TbPedidoRPPED_CODIGO.Value = TbItenPedidoRPPED_CODIGO.Value) and not(TbItenPedidoRP.Eof) do
      begin
       // procurar descricao do produto pelo ídice
        TbProdutoRP.FindKey([TbItenPedidoRPPRD_REFER.Value]);
        //
      RprintPedido.NewPos(WLinha_Descri, 1);
      RPrintPedido.Out(TbItenPedidoRPPRD_REFER.AsString, 11, []);
      //
      RPrintPedido.NewPos(WLinha_Descri, 3);
      RPrintPedido.Out(TbItenPedidoRPPRF_QTDE.AsString, 15, [pcRight]);
      //
      Rprintpedido.NewPos(WLinha_Descri, 20);
      RPrintPedido.Out(TbProdutoRPPRD_DESCRI.AsString, 40, []);
      //
      RPrintPedido.NewPos(WLinha_Descri, 63);
      WPRECO := TbItenPedidoRPPRF_PRECO.Value;//campo preço
      RPrintPedido.Out(FloatToStrF(WPreco,ffNumber, 11, 3), 13, [pcRight]);
      //RPrintPedido.NewPos(26, 60);
     // RPrintPedido.Out(TbItenPedidoRPPRF_PRECO.AsString, 15, [pcLineFeed, pcRight]);
      //
      RPrintPedido.NewPos(WLinha_Descri, 83);//Preço total
      WTOT_UNITARIO := (TbItenPedidoRPPRF_QTDE.Value*TbItenPedidoRPPRF_PRECO.Value);
      RPrintPedido.Out(FloatToStrF(WTOT_UNITARIO,ffNumber, 11, 2), 13, [pcRight]);
      //
      RPrintPedido.NewPos(WLinha_Descri, 92);
      RPrintPedido.Out(TbItenPedidoRPPRF_IPIALIQ.AsString, 12,[pcRight, pcLineFeed]);
      //
      WTOT_QTDE := (WTOT_QTDE + TbItenPedidoRPPRF_QTDE.Value);// soma o total dos produtos.
      WTOT_IPI := WTOT_IPI +(WTOT_UNITARIO*TbItenPedidoRPPRF_IPIALIQ.Value/100);// faz calculo do valor do IPI.
      WTOT_PRECO := (WTOT_PRECO+WTOT_UNITARIO);// calculo do SubTotal e Soma do rodape de total.
      WTOT_GERAL := (WTOT_UNITARIO+WTOT_GERAL);// FAZ CALCULO DO PREÇO TOTAL
      WTOT_GERAL_FINAL := (WTOT_IPI+WTOT_GERAL);
      //
      WLinha_Descri := WLinha_Descri + 1;
      TbItenPedidoRP.Next;


      end;
      //
      RPrintPedido.NewPos(57, 1);
      RPrintPedido.Out('--------------------------------------------------------------------------------------------------------',70,[pcLineFeed]);

      RPrintPedido.NewPos(58, 2);
      RPrintPedido.Out('Total:', 5, []);
      //
      RprintPedido.NewPos(58, 12);
      WTOT_QTDE := (WTOT_QTDE + TbItenPedidoRPPRF_QTDE.Value);
      RPrintPedido.Out(FloatToStrF(WTOT_QTDE, ffNumber, 11, 0), 13, []);

      RPrintPedido.NewPos(58, 70);
      RPrintPedido.Out('Soma:', 5, []);

      RPrintPedido.NewPos(58, 83);
      //WTOT_PRECO := (WTOT_PRECO+WTOT_UNITARIO);
      RPrintPedido.Out(FloatToStrF(WTOT_PRECO, ffNumber, 11, 3), 13, [pcRight, pcLineFeed]);

      RPrintPedido.NewPos(59, 1);
      RPrintPedido.Out('========================================================================================================', 70, [pcLineFeed]);
      //
      RPrintPedido.NewPos(60, 1);
      RPrintpedido.Out('Desconto:', 8, []);
      //campo

      RPrintPedido.NewPos(60, 70);
      RPrintPedido.Out('IPI:', 4, []);
      //
      RprintPedido.NewPos(60, 83);//Valor total do ipi
      WTOT_IPI := WTOT_IPI +(WTOT_UNITARIO*TbItenPedidoRPPRF_IPIALIQ.Value/100);
      RPrintPedido.Out(FloatToStrF(WTOT_IPI, ffNumber, 11, 3), 13, [pcRight, pcLineFeed]);
      //
      RPrintPedido.NewPos(61, 1);
      RprintPedido.Out('Observação Pedido:', 15, []);
      //
      RPrintPedido.NewPos(61, 70);
      RPrintPedido.Out('SUBTOTAL:', 8, []);
      //
      RPrintPedido.NewPos(61, 83);
      //WTOT_PRECO := (WTOT_PRECO+WTOT_UNITARIO);
      RPrintPedido.Out(FloatToStrF(WTOT_PRECO, ffNumber, 11, 3), 13, [pcRight, pcLineFeed]);
      //
      RPrintPedido.NewPos(62, 70);
      RPrintPedido.Out('DESCONTO:', 8, [pcLineFeed]);
      //
      RPrintPedido.NewPos(62, 1);
      RprintPedido.Out('Observação Nota:', 15, [pcLineFeed]);
      //
      RPrintPedido.NewPos(62, 18);
      RPrintpedido.Out(TbPedidoRPPED_OBSNOTA.AsString, 60, []);
      //
      RPrintPedido.NewPos(63, 70);
      RprintPedido.Out('TOTAL:', 5, []);
      //
      RPrintPedido.NewPos(63, 83);
      //WTOT_GERAL := (WTOT_IPI+WTOT_PRECO);
      RPrintPedido.Out(FloatToStrF(WTOT_GERAL_FINAL, ffNumber, 11, 3), 13, [pcRight, pcLineFeed]);

      RPrintPedido.NewPos(64, 1);
      RPrintPedido.Out('========================================================================================================', 70, []);
      //
      RPrintPedido.NewPos(66, 1);
      RPrintPedido.Out('OBS:', 4, []);
      //
      RprintPedido.NewPos(66, 5);
      RPrintPedido.Out(TbParametroRPPMT_PED_IMPORTANTE.AsString, 300, []);
      //
  RPrintPedido.endDoc;//Final da impressão do pedido.
end;

end.
