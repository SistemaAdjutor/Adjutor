unit EFD0001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Gauges, Men0001, DataCad, SqlExpr,SqlClientDataSet,
  Provider, DB, DBClient, DBLocal, DBLocalS,  rxToolEdit, Mask,
  Data.DBXFirebird, SimpleDS, JvExMask, JvToolEdit;

type
  operacao = (VOLTAR,PROXIMO,CONCLUIR);


  TFrmEFD = class(TForm)
    NotebookPrincipal: TNotebook;
    BarraProgresso: TGauge;
    BtnVoltar: TButton;
    BtnProximo: TButton;
    BtnConcluir: TButton;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Image1: TImage;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    MemoFinal: TMemo;
    Panel2: TPanel;
    ImgDominio: TImage;
    Label1: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Image5: TImage;
    Image4: TImage;
    NotebookLayout: TNotebook;
    Panel6: TPanel;
    SQLClientes: TSQLClientDataSet;
    SqlCdsEmpresa: TSQLClientDataSet;
    SQLClientesAlteracao: TSQLClientDataSet;
    SQLFornecedor: TSQLClientDataSet;
    SQLFornecedorAlteracao: TSQLClientDataSet;
    SQLProdutos: TSQLClientDataSet;
    SQLTmp: TSQLClientDataSet;
    SQLNFEntrada: TSQLClientDataSet;
    SQLProdutosComposicao: TSQLClientDataSet;
    SQLNFEntradaProdutos: TSQLClientDataSet;
    SQLNFEntradaParcela: TSQLClientDataSet;
    SQLNFESaida: TSQLClientDataSet;
    SQLNFESaidaProdutos: TSQLClientDataSet;
    SQLNFSaidaParcela: TSQLClientDataSet;
    Label4: TLabel;
    Label5: TLabel;
    FileArqSalvar: TFilenameEdit;
    Label2: TLabel;
    CBClientes: TCheckBox;
    CbFornecedor: TCheckBox;
    CBNotaEntrada: TCheckBox;
    CBNotaSaida: TCheckBox;
    CBProdutos: TCheckBox;
    Dat_Inicio: TJvDateEdit;
    Dat_Final: TJvDateEdit;
    procedure FormCreate(Sender: tObject);
    procedure Button1Click(Sender: tObject);
    procedure BtnVoltarClick(Sender: tObject);
    procedure BtnProximoClick(Sender: tObject);
    procedure BtnConcluirClick(Sender: tObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    PassoAtual,
    QuantidadePassos: Integer;
    procedure Navegador(operacao:operacao);
    procedure DominioSistemas;
  public
    { Public declarations }

  end;

var
  FrmEFD: TFrmEFD;

implementation

uses UFuncoes, RWFunc, iniciodb, Uteis;

{$R *.dfm}

{ TFrmEFD }

procedure TFrmEFD.Navegador(operacao: operacao);
begin
   {Voltar}
   if (operacao = VOLTAR) then
      begin
         if (PassoAtual > 1) then
            begin
               Dec(PassoAtual);
               BarraProgresso.Visible := False;
               BtnProximo.Enabled := True;
               BtnConcluir.Enabled := False;
               NotebookPrincipal.PageIndex := NotebookPrincipal.PageIndex -1;
            end
         else
         if (PassoAtual = 1) then  {Volta a Primeira Pagina}
            begin
               Dec(PassoAtual);
               BtnVoltar.Enabled := False;
               BtnProximo.Enabled := True;
               BtnConcluir.Enabled := False;
               NotebookPrincipal.PageIndex := NotebookPrincipal.PageIndex -1;
            end;
      end
   else
   {proximo}
   if (operacao = PROXIMO) then
      begin
         Inc(PassoAtual);
         NotebookPrincipal.PageIndex := NotebookPrincipal.PageIndex + 1;
         if (QuantidadePassos = PassoAtual) then {Chegou no ultimo}
            begin
               MemoFinal.Text := '';
               BarraProgresso.Progress := 0;
               BarraProgresso.Visible := True;
               BtnVoltar.Enabled := True;
               BtnProximo.Enabled  := False;
               BtnConcluir.Enabled := True;
            end
         else
            begin
               BtnVoltar.Enabled := True;
            end;
      end
   else
   {Concluir}
   if (operacao = CONCLUIR) then
      begin
         DominioSistemas;
      end
   else
end;

procedure TFrmEFD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TFrmEFD.FormCreate(Sender: tObject);
begin
   {Inicializa Variaveis}
   QuantidadePassos := 3;
   {Coloca na Pagina Inicial}
   NotebookPrincipal.PageIndex := 0;
   Dat_Inicio.Date := Date-30;
   Dat_Final.Date := Date;
   FileArqSalvar.FileName := FrmMenu.PathNewRel+'\EFD.txt';
end;

procedure TFrmEFD.FormDestroy(Sender: TObject);
begin
     FrmEFD := Nil;
end;

procedure TFrmEFD.Button1Click(Sender: tObject);
begin
   Close;
end;

procedure TFrmEFD.BtnVoltarClick(Sender: tObject);
begin
   Navegador(VOLTAR);
end;

procedure TFrmEFD.BtnProximoClick(Sender: tObject);
begin
   Navegador(PROXIMO);
end;

procedure TFrmEFD.BtnConcluirClick(Sender: tObject);
begin
   Navegador(CONCLUIR);
end;

procedure TFrmEFD.DominioSistemas;
var
   informacao:WideString;
   wTEXTO:TextFile;
   wSaldoProduto : double;

begin
   //Limpar Campo
   {local do arquivos}
   AssignFile(wTEXTO,FileArqSalvar.FileName);
  {inicializar o arquivo texto}
   RewRite(wTEXTO);
   MemoFinal.Text := '';
   (*EMPRESA*******************************************************************)
   SqlCdsEmpresa.Close;
   SqlCdsEmpresa.CommandText := SQLDEF('TABELAS','Select EM.* from EMP0000 EM ','WHERE EM.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''','EM.EMP_CODIGO','EM.');
   SqlCdsEmpresa.Open;
   (*Registro 0000 - Identificação da empresa*)
   informacao := '|0000|';
   informacao := informacao+ExtrairNumeros(dbInicio.Empresa.CNPJ_CNPF)+'|'; //inscricao da empresa
   MemoFinal.Lines.Add(informacao);
   Writeln(wTEXTO,informacao);
   (*CLIENTES******************************************************************)
   (*Registro 0010 - Cadastro de cliente*)
   if (CBClientes.Checked) then
      begin
         SQLClientes.Close;
         SQLClientes.CommandText := SQLDEF('CLIENTES','select T1.*,T2.CID_COD_IBGE,T2.CID_ESTADO,t3.ICM_ALIQ from CLI0000 T1 LEFT JOIN CID0000 T2 ON (T2.CID_CODIGO = T1.CID_CODIGO) '+
                                                      'left JOIN ICM0000 t3 on (t3.ICM_DESTINO = t2.CID_ESTADO '+ ConcatSe (' and T3.',dbInicio.ExclusivoSql('ICMS'))+'  )',
                                                      'WHERE T1.CLI_CGC <> ''00000000000000''','CLI_CGC','T1.');
         SQLClientes.Open;
         while not SQLClientes.Eof do
            begin
               informacao := '|0010|';
               informacao := informacao+ExtrairNumeros(SQLClientes.FieldByName('CLI_CGC').AsString)+'|'; //inscricao
               informacao := informacao+SQLClientes.FieldByName('CLI_RAZAO').AsString+'|'; //razão social
               informacao := informacao+SQLClientes.FieldByName('CLI_FANTASIA').AsString+'|'; //apelido
               informacao := informacao+SQLClientes.FieldByName('CLI_ENDERE').AsString+'|'; //endereco
               informacao := informacao+RetornaNumeroEnderecoSomenteNumeros(SQLClientes.FieldByName('CLI_ENDERE').AsString)+'|'; //numero do endereço
               informacao := informacao+''+'|'; //complemento
               informacao := informacao+SQLClientes.FieldByName('CLI_BAIRRO').AsString+'|'; //bairro
               informacao := informacao+SQLClientes.FieldByName('CID_COD_IBGE').AsString+'|'; //cod municipio
               informacao := informacao+SQLClientes.FieldByName('CID_ESTADO').AsString+'|'; //uf
               informacao := informacao+''+'|'; //cod pais
               informacao := informacao+SQLClientes.FieldByName('CLI_CEP').AsString+'|'; //cep
               informacao := informacao+SQLClientes.FieldByName('CLI_INSC').AsString+'|'; //inscricao estadual
               informacao := informacao+SQLClientes.FieldByName('CLI_INSCMUNI').AsString+'|'; //inscricao municipal
               informacao := informacao+''+'|'; //inscricao suframa
               informacao := informacao+COPY(SQLClientes.FieldByName('CLI_FONE').AsString,1,3)+'|'; //ddd
               informacao := informacao+COPY(SQLClientes.FieldByName('CLI_FONE').AsString,4,10)+'|'; //telefone
               informacao := informacao+SQLClientes.FieldByName('CLI_FAX').AsString+'|'; //fax
               informacao := informacao+SQLClientes.FieldByName('CLI_DTINICIO').AsString+'|'; //data cadastro
               informacao := informacao+''+'|'; //conta contabil
               informacao := informacao+''+'|'; //conta contabil fornecedor
               informacao := informacao+'N'+'|'; //agropecuario
               informacao := informacao+'7'+'|'; //natureza Juridica
               informacao := informacao+'N'+'|'; //regime apuracao  N= Normal por enquando mas é preciso colocar no cadastro
               if (SQLClientes.FieldByName('CLI_INSC').AsString = '') or (SQLClientes.FieldByName('CLI_INSC').AsString = 'ISENTO') then
                  informacao := informacao+'N'+'|' //contribuinte icms = Não
               else
                  informacao := informacao+'S'+'|'; //contribuinte icms = Sim

               { se contributinte = SE pegar a aliquota do icms do Estado }
               if (SQLClientes.FieldByName('CLI_INSC').AsString = '') or (SQLClientes.FieldByName('CLI_INSC').AsString = 'ISENTO') then
                  informacao := informacao+''+'|' //aliquota icms
               else
                  informacao := informacao+FormatFloat('########0.000',SQLClientes.FieldByName('ICM_ALIQ').AsFloat)+'|'; //aliquota icms

               informacao := informacao+''+'|'; //categoria estabelecimento
               {Adiciona no Memo}
               MemoFinal.Lines.Add(informacao);
               Writeln(wTEXTO,informacao);
               (*Registro 0011 - Cadastro de alterações cadastrais de clientes*)
               SQLClientesAlteracao.Close;
               SQLClientesAlteracao.CommandText := SQLDEF('CLIENTES','select T1.* from CLI0000_ALTER T1 ','WHERE T1.CLI_CODIGO = '+QuotedStr(SQLClientes.FieldByName('CLI_CODIGO').AsString),'','T1.');
               SQLClientesAlteracao.Open;
               while not SQLClientesAlteracao.Eof do
                  begin
                     informacao := '|0011|';
                     informacao := informacao+SQLClientesAlteracao.FieldByName('CLIA_DATA').AsString+'|'; //data da alteracao
                     if (SQLClientesAlteracao.FieldByName('CLIA_CAMPO').AsString = 'CLI_RAZAO') then
                        informacao := informacao+'1'+'|' //campo alterado
                     else
                     if (SQLClientesAlteracao.FieldByName('CLIA_CAMPO').AsString = 'CLI_ENDERE') then
                        informacao := informacao+'2'+'|' //campo alterado
                     else
                     if (SQLClientesAlteracao.FieldByName('CLIA_CAMPO').AsString = 'CLI_BAIRRO') then
                        informacao := informacao+'5'+'|' //campo alterado
                     else
                     if (SQLClientesAlteracao.FieldByName('CLIA_CAMPO').AsString = 'CLI_INSC') then
                        informacao := informacao+'8'+'|' //campo alterado
                     else
                        informacao := informacao+''+'|'; //campo alterado
                     informacao := informacao+SQLClientesAlteracao.FieldByName('CLIA_VALOR_ANTERIOR').AsString+'|'; //valor anterior a alteracao
                     informacao := informacao+SQLClientesAlteracao.FieldByName('CLIA_VALOR_NOVO').AsString+'|'; //valor posterior a alteracao
                     {Adiciona no Memo}
                     MemoFinal.Lines.Add(informacao);
                     Writeln(wTEXTO,informacao);
                     {Proximo Registro}
                     SQLClientesAlteracao.Next;
                  end;
               SQLClientesAlteracao.Close;
               {Proximo Registro}
               SQLClientes.Next;
            end;
         SQLClientes.Close;
      end;

   (*FORNECEDORES**************************************************************)

   (*Registro 0020 - Cadastro de fornecedores*)
   if (CbFornecedor.Checked) then
      begin
         SQLFornecedor.Close;
         SQLFornecedor.CommandText := SQLDEF('FORNECEDORES','select T1.*,T2.CID_COD_IBGE,T2.CID_ESTADO, t3.ICM_ALIQ from FOR0000 T1 LEFT JOIN CID0000 T2 ON (T2.CID_CODIGO = T1.CID_CODIGO) '+
                                             ' left JOIN ICM0000 t3 on (t3.ICM_DESTINO = t2.CID_ESTADO'+ ConcatSe (' and T3.',dbInicio.ExclusivoSql('ICMS'))+')','WHERE T1.FOR_CGC<>''00000000000000''','FOR_CGC','T1.');
         SQLFornecedor.Open;
         while not SQLFornecedor.Eof do
            begin
               informacao := '|0020|';
               informacao := informacao+ExtrairNumeros(SQLFornecedor.FieldByName('FOR_CGC').AsString)+'|'; //inscricao
               informacao := informacao+SQLFornecedor.FieldByName('FOR_RAZAO').AsString+'|'; //razao social
               informacao := informacao+COPY(SQLFornecedor.FieldByName('FOR_RAZAO').AsString,1,10)+'|'; //apelido
               informacao := informacao+SQLFornecedor.FieldByName('FOR_ENDERE').AsString+'|'; //endereco
               informacao := informacao+RetornaNumeroEnderecoSomenteNumeros(SQLFornecedor.FieldByName('FOR_ENDERE').AsString)+'|'; //numero do endereço
               informacao := informacao+''+'|'; //complemento
               informacao := informacao+SQLFornecedor.FieldByName('FOR_BAIRRO').AsString+'|'; //bairro
               informacao := informacao+SQLFornecedor.FieldByName('CID_COD_IBGE').AsString+'|'; //cod municipio
               informacao := informacao+SQLFornecedor.FieldByName('CID_ESTADO').AsString+'|'; //uf
               informacao := informacao+''+'|'; //cod pais
               informacao := informacao+SQLFornecedor.FieldByName('FOR_CEP').AsString+'|'; //cep
               informacao := informacao+SQLFornecedor.FieldByName('FOR_INSC').AsString+'|'; //inscricao estadual
               informacao := informacao+SQLFornecedor.FieldByName('FOR_INSCMUNI').AsString+'|'; //inscricao municipal
               informacao := informacao+''+'|'; //inscricao suframa
               informacao := informacao+COPY(SQLFornecedor.FieldByName('FOR_FONE').AsString,1,3)+'|'; //ddd
               informacao := informacao+COPY(SQLFornecedor.FieldByName('FOR_FONE').AsString,4,10)+'|'; //telefone
               informacao := informacao+SQLFornecedor.FieldByName('FOR_FAX').AsString+'|'; //fax
               informacao := informacao+SQLFornecedor.FieldByName('FOR_DTCADASTRO').AsString+'|'; //data cadastro
               informacao := informacao+''+'|'; //conta contabil
               informacao := informacao+''+'|'; //conta contabil cliente
               informacao := informacao+'N'+'|'; //agropecuario  (S=SIM N=NAO)
               informacao := informacao+'7'+'|'; //natureza juricia
               informacao := informacao+'N'+'|'; //regime apuraçao - fixo temporariamente N= Normal mas ter que vir do cadastro
               if (SQLFornecedor.FieldByName('FOR_INSC').AsString = '') or (SQLFornecedor.FieldByName('FOR_INSC').AsString = 'ISENTO') then
                   informacao := informacao+'N'+'|'  //contribuinte icms = Não
               else
                    informacao := informacao+'S'+'|'; //contribuinte icms  = Sim

               { fazer JOin com Tabela de ICMS pelo estado do fornecedor pegar a aliquota do icms  }
               if (SQLFornecedor.FieldByName('FOR_INSC').AsString = '') or (SQLFornecedor.FieldByName('FOR_INSC').AsString = 'ISENTO') then
                  informacao := informacao+''+'|' //aliquota icms
               else
                  informacao := informacao+FormatFloat('########0.000',SQLFornecedor.FieldByName('ICM_ALIQ').AsFloat)+'|'; //aliquota icms
               informacao := informacao+''+'|'; //categoria estabelecimento
               informacao := informacao+SQLFornecedor.FieldByName('FOR_INSCST').AsString+'|'; //inscricao estadual st
               informacao := informacao+SQLFornecedor.FieldByName('FOR_EMAIL').AsString+'|'; //email

               {Adiciona no Memo}
               MemoFinal.Lines.Add(informacao);
               Writeln(wTEXTO,informacao);
               (*Registro 0021 - Cadastro de alterações cadastrais de fornecedores*)
               SQLFornecedorAlteracao.Close;
               SQLFornecedorAlteracao.CommandText := SQLDEF('FORNECEDORES','select T1.* from FOR0000_ALTER T1 ','WHERE T1.FOR_CODIGO = '+QuotedStr(SQLFornecedor.FieldByName('FOR_CODIGO').AsString),'','T1.');
               SQLFornecedorAlteracao.Open;
               while not SQLFornecedorAlteracao.Eof do
                  begin
                     informacao := '|0021|';
                     informacao := informacao+SQLFornecedorAlteracao.FieldByName('FORA_DATA').AsString+'|'; //data da alteracao
                     if (SQLFornecedorAlteracao.FieldByName('FORA_CAMPO').AsString = 'FOR_RAZAO') then
                        informacao := informacao+'1'+'|' //campo alterado
                     else
                     if (SQLFornecedorAlteracao.FieldByName('FORA_CAMPO').AsString = 'FOR_ENDERE') then
                        informacao := informacao+'2'+'|' //campo alterado
                     else
                     if (SQLFornecedorAlteracao.FieldByName('FORA_CAMPO').AsString = 'FOR_BAIRRO') then
                        informacao := informacao+'5'+'|' //campo alterado
                     else
                     if (SQLFornecedorAlteracao.FieldByName('FORA_CAMPO').AsString = 'FOR_INSC') then
                        informacao := informacao+'8'+'|' //campo alterado
                     else
                        informacao := informacao+''+'|'; //campo alterado
                     informacao := informacao+SQLFornecedorAlteracao.FieldByName('FORA_VALOR_ANTERIOR').AsString+'|'; //valor anterior a alteracao
                     informacao := informacao+SQLFornecedorAlteracao.FieldByName('FORA_VALOR_NOVO').AsString+'|'; //valor posterior a alteracao
                     {Adiciona no Memo}
                     MemoFinal.Lines.Add(informacao);
                     Writeln(wTEXTO,informacao);
                     {Proximo Registro}
                     SQLFornecedorAlteracao.Next;
                  end;
               SQLFornecedorAlteracao.Close;
               {Proximo Registro}
               SQLFornecedor.Next;
            end;
         SQLFornecedor.Close;
   end;
   
   (*Registro 0100 - Cadastro de produtos*)
   if (CBProdutos.Checked) then
      begin
         SQLProdutos.Close;
         SQLProdutos.CommandText := SQLDEF('PRODUTOS','select T1.*, T2.IPI_ALIQ from PRD0000 T1 LEFT JOIN IPI0000 T2 ON (T2.IPI_CODIGO = T1.IPI_CODIGO)','','','T1.');
         SQLProdutos.Open;
         while not SQLProdutos.Eof do
            begin
               wSaldoProduto := 0;
               informacao := '|0100|';
               informacao := informacao+SQLProdutos.FieldByName('PRD_REFER').AsString+'|'; //cod produto
               informacao := informacao+SQLProdutos.FieldByName('PRD_DESCRI').AsString+'|'; //descricao produto
               informacao := informacao+''+'|'; //cod nbm
               informacao := informacao+SQLProdutos.FieldByName('IPI_CODIGO').AsString+'|'; //cod ncm
               informacao := informacao+''+'|'; //cod ncm exterior
               informacao := informacao+SQLProdutos.FieldByName('PRD_CODBARRA').AsString+'|'; //cod barras
               informacao := informacao+''+'|'; //cod imposto importacao
               informacao := informacao+SQLProdutos.FieldByName('PTI_CODIGO').AsString+'|'; //cod grupo produtos
               informacao := informacao+SQLProdutos.FieldByName('PRD_UND').AsString+'|'; //unidade de medida
               //informacao := informacao+IIF(SQLProdutos.FieldByName('PRD_UTILCONV').AsBoolean,'S','N')+'|'; //unidade de medida inventariada diferente da comercializada
               informacao := informacao+'N'+'|'; //unidade de medida inventariada diferente da comercializada
               informacao := informacao+'O'+'|'; //tipo produto
               informacao := informacao+''+'|'; //tipo da arma de fogo
               informacao := informacao+''+'|'; //descricao arma de fogo
               informacao := informacao+''+'|'; //tipo do medicamento
               informacao := informacao+'N'+'|'; //servico tributado pelo issqn
               informacao := informacao+''+'|'; //cod do chassi veiculo
               informacao := informacao+FormatFloat('########0.000',SQLProdutos.FieldByName('PRD_PCUSTO').AsFloat)+'|'; //valor unitario
               informacao := informacao+FormatFloat('########0.00000',SQLProdutos.FieldByName('PRD_ESTOQUE').AsFloat)+'|'; //quantidade inicial estoque
               informacao := informacao+FormatFloat('########0.000',0)+'|'; //valor inicial estoque      ANALISAR
               informacao := informacao+SQLProdutos.FieldByName('STB_TRIBUTACAO').AsString+'|'; //cod situacao tributaria icms
               informacao := informacao+FormatFloat('########0.00',SQLProdutos.FieldByName('PRD_ALIQICM').AsFloat)+'|'; //aliquota icms
               informacao := informacao+FormatFloat('########0.00',SQLProdutos.FieldByName('IPI_ALIQ').AsFloat)+'|'; //alçiquota ipi
               //informacao := informacao+SqlCdsEmpresa.FieldByName('EMP_PERIODOIPI').AsString+'|'; //peridiocidade ipi
               informacao := informacao+'M'+'|'; //peridiocidade ipi  M = mensal e D = decimal
               informacao := informacao+''+'|'; //observacao
               informacao := informacao+'N'+'|'; //exporta produto para dnf
               informacao := informacao+''+'|'; //ex tipi
               informacao := informacao+''+'|'; //dnf - cod da especie produto
               informacao := informacao+''+'|'; //dnf - unidade medida padrao
               informacao := informacao+''+'|'; //dnf - fator de convercao
               informacao := informacao+''+'|'; //dnf - cod produto
               informacao := informacao+''+'|'; //dnf - capacidade volumetrica
               informacao := informacao+''+'|'; //se/dic - cod ean
               informacao := informacao+''+'|'; //se/dic - cod produto relevante
               informacao := informacao+''+'|'; //scanc - gera para scanc
               informacao := informacao+''+'|'; //scanc - cod produto no scanc
               informacao := informacao+''+'|'; //scanc - contem gasolina a
               informacao := informacao+''+'|'; //scanc - tipo produto
               informacao := informacao+''+'|'; //grf-ctb - gera para grf-ctb
               informacao := informacao+''+'|'; //grf-ctb - cod produto
               informacao := informacao+''+'|'; //dief - unidade
               informacao := informacao+''+'|'; //dief - tipo produto/servico
               informacao := informacao+''+'|'; //88st - informe registro 88st sintegra
               informacao := informacao+''+'|'; //88st - cod produto tabela sefaz
               informacao := informacao+''+'|'; //go - informacoes complementares do ipm da pdi
               informacao := informacao+''+'|'; //go - cod produto/servico do ipm da pdi
               informacao := informacao+''+'|'; //go - produto relacionado
               informacao := informacao+''+'|'; //am - cesta basica
               informacao := informacao+''+'|'; //am - cod produto na dam
               informacao := informacao+''+'|'; //rs - produto incluido no campo substituicao tributaria
               informacao := informacao+''+'|'; //rs -  data de inicio da subst tributaria                           ***
               informacao := informacao+''+'|'; //rs - produto com preco tabelado
               informacao := informacao+''+'|'; //rs - valor unitaria da substituicao tributaria
               informacao := informacao+''+'|'; //rs - mva da substituicao tributaria
               informacao := informacao+''+'|'; //rs - grupo da substituicao tributaria
               informacao := informacao+'N'+'|'; //pr - equipamento ecf
               informacao := informacao+''+'|'; //ms - possui incentivo fiscal
               informacao := informacao+''+'|'; //df - produto sujeito ao regime especial
               informacao := informacao+''+'|'; //df - item padrao regime especial
               informacao := informacao+''+'|'; //pe - tipo produto
               informacao := informacao+''+'|'; //sp - controla ressarcimento cat 17/99
               informacao := informacao+''+'|'; //sp - data saldo inicial controle 17/99
               informacao := informacao+''+'|'; //sp - valor unitarios controle cat 17/99
               informacao := informacao+''+'|'; //sp - quantidade controle cat 17/99
               informacao := informacao+''+'|'; //sp - valor final controle cat 17/99
               informacao := informacao+SQLProdutos.FieldByName('SPED_GENCODIGO').AsString+'|'; //sped - genero
               informacao := informacao+SQLProdutos.FieldByName('PRD_UNICODIGO').AsString+'|'; //sped - cod servico
               informacao := informacao+SQLProdutos.FieldByName('SPED_TIPCODIGO').AsString+'|'; //sped - tipo item
               informacao := informacao+''+'|'; //sped - classificacao
               informacao := informacao+''+'|'; //sped - conta contabil estoque - em seu poder
               informacao := informacao+''+'|'; //sped - conta contabil estoque - em poder de terceiros
               informacao := informacao+''+'|'; //sped - conta contabil estoque - de terceiros em seu poder
               informacao := informacao+'0'+'|'; //sped - tipo de receita
               informacao := informacao+''+'|'; //sped - energia eletrica/gas canalizado
               informacao := informacao+FormatDateTime('DD/MM/YYYY',SQLProdutos.FieldByName('PRD_DTCADASTRO').AsDateTime)+'|'; //data cadastro
               informacao := informacao+''+'|'; //produto escriturado no lmc
               informacao := informacao+''+'|'; //cod combustivel conforme tabela df
               informacao := informacao+''+'|'; //cod combustivel conforme tabela anp
               {Adiciona no Memo}
               MemoFinal.Lines.Add(informacao);
               Writeln(wTEXTO,informacao);
             //  (*Registro 0120 - Produtos - Unidades comercializadas*)
             //  informacao := '|0120|';
             //  informacao := informacao+SQLProdutos.FieldByName('PRD_UND').AsString+'|'; //sigla da unidade comercializada
             //  informacao := informacao+FormatFloat('########0.000',iif(SQLProdutos.FieldByName('PRD_UTILCONV').AsString = 'S',SQLProdutos.FieldByName('PRD_FATOR_PROD').AsFloat,0))+ '|'; //fator de conversao
               {Adiciona no Memo}
            //   MemoFinal.Lines.Add(informacao);
            //   Writeln(wTEXTO,informacao);

               (*Registro 0130 - Produtos - Composição*)
               SQLProdutosComposicao.Close;
               SQLProdutosComposicao.CommandText := SQLDEF('TABELAS','select T1.*,t2.PRD_UND from FTC_IT01 T1 left join PRD0000 t2 on (t2.PRD_REFER = t1.PRD_REFER) ','WHERE T1.PRD_REFER = '+QuotedStr(SQLProdutos.FieldByName('PRD_REFER').AsString),'','T1.');
               //SQLTmp.CommandText := 'select T1.* from PRD_UNIDADE T1 ';
               SQLProdutosComposicao.Open;
               while not SQLProdutosComposicao.Eof do
                  begin
                     informacao := '|0130|';
                     informacao := informacao+SQLProdutosComposicao.FieldByName('PRD_REFER_ITENS').AsString+'|'; //cod produto componente
                     informacao := informacao+FormatFloat('########0.000000',SQLProdutosComposicao.FieldByName('FTI_UC').AsFloat)+'|'; //quantidade
                     informacao := informacao+SQLProdutosComposicao.FieldByName('PRD_UND').AsString+'|'; //sigla unidade de medida
                     informacao := informacao+''+'|'; //percentual de perda
                     informacao := informacao+''+'|'; //inicio vigencia
                     informacao := informacao+''+'|'; //fim vigencia
                     MemoFinal.Lines.Add(informacao);
                     Writeln(wTEXTO,informacao);
                     {Proximo Registro}
                     SQLProdutosComposicao.Next;
                  end;
               SQLProdutosComposicao.Close;

               (*Registro 0140 - Produtos - Saldo final*)
               wSaldoProduto := SQLProdutos.FieldByName('PRD_ESTOQUE').AsFloat+SQLProdutos.FieldByName('PRD_ENTRADA').AsFloat-SQLProdutos.FieldByName('PRD_SAIDA').AsFloat;
               if wSaldoProduto > 0 then
                 begin
                 informacao := '|0140|';
                 informacao := informacao+FormatDateTime('DD/MM/YYYY',Dat_Final.Date)+'|'; //data saldo
                 informacao := informacao+FormatFloat('########0.000',SQLProdutos.FieldByName('PRD_ESTOQUE').AsFloat+SQLProdutos.FieldByName('PRD_ENTRADA').AsFloat-SQLProdutos.FieldByName('PRD_SAIDA').AsFloat)+'|'; //quantidade final
                 informacao := informacao+FormatFloat('########0.000',SQLProdutos.FieldByName('PRD_PMEDIO').AsFloat)+'|'; //valor unitario
                 informacao := informacao+FormatFloat('########0.000',((SQLProdutos.FieldByName('PRD_ESTOQUE').AsFloat+SQLProdutos.FieldByName('PRD_ENTRADA').AsFloat-SQLProdutos.FieldByName('PRD_SAIDA').AsFloat)) * (SQLProdutos.FieldByName('PRD_PMEDIO').AsFloat))+'|'; //valor final
                 MemoFinal.Lines.Add(informacao);
                 Writeln(wTEXTO,informacao);
               end;
               {Proximo Registro}
               SQLProdutos.Next;
            end;
         SQLProdutos.Close;
      end;



   (*Registro 0150 - Unidades de medida*)
   if (CBProdutos.Checked) then
      begin
         SQLTmp.Close;
         SQLTmp.CommandText := SQLDEF('TABELAS','select T1.* from PRD_UNIDADE T1 ','','','T1.');
         //SQLTmp.CommandText := 'select T1.* from PRD_UNIDADE T1 ';
         SQLTmp.Open;
         while not SQLTmp.Eof do
            begin
               informacao := '|0150|';
               informacao := informacao+SQLTmp.FieldByName('PRD_UNISIGLA').AsString+'|'; //sigla da unidade comercializada
               informacao := informacao+SQLTmp.FieldByName('PRD_UNIDESCRI').AsString+'|'; //fator de conversao
               {Adiciona no Memo}
               MemoFinal.Lines.Add(informacao);
               Writeln(wTEXTO,informacao);
               {Proximo Registro}
               SQLTmp.Next;
            end;
         SQLTmp.Close;
      end;
   (*Registro 0160 - Unidades de medida*)
   if (CBProdutos.Checked) then
      begin
         SQLTmp.Close;
         SQLTmp.CommandText := SQLDEF('TABELAS','select T1.* from PRD_TIPO T1 ','','','T1.');
         SQLTmp.Open;
         while not SQLTmp.Eof do
            begin
               informacao := '|0160|';
               informacao := informacao+SQLTmp.FieldByName('PTI_CODIGO').AsString+'|'; //codigo
               informacao := informacao+SQLTmp.FieldByName('PTI_DESCRI').AsString+'|'; //descricao
               {Adiciona no Memo}
               MemoFinal.Lines.Add(informacao);
               Writeln(wTEXTO,informacao);
               {Proximo Registro}
               SQLTmp.Next;
            end;
         SQLTmp.Close;
      end;

   (*Registro 1000 - Notas Fiscais de Entrada*)
   if (CBNotaEntrada.Checked) then
      begin
         SQLNFEntrada.Close;
         SQLNFEntrada.CommandText := SQLDEF('PRODUTOS','select T1.*, T2.FOR_CGC, T2.FOR_INSC,T2.FOR_INSCMUNI, T3.CID_COD_IBGE from ENF0001 T1 LEFT JOIN FOR0000 T2 ON (T2.FOR_CODIGO = T1.FOR_CODIGO) LEFT JOIN CID0000 T3 ON (T3.CID_CODIGO = T2.CID_CODIGO)','WHERE T1.ENF_EMISSAO BETWEEN '+QuotedStr(DataAmericana(Dat_Inicio.Text))+' AND '+QuotedStr(DataAmericana(Dat_Final.Text)) ,'','T1.');
         SQLNFEntrada.Open;
         while not SQLNFEntrada.Eof do
            begin
               informacao := '|1000|';
               if Length(trim(SQLNFEntrada.FieldByName('ENF_CHAVE_NFE').AsString)) = 44 then
                     informacao := informacao+'36'+'|' //cod especie    36 = NFe - no sistema Dominio da Materminiun
               else
                     informacao := informacao+'1'+'|'; //cod especie  1 = Nota Fiscal
               informacao := informacao+ExtrairNumeros(SQLNFEntrada.FieldByName('FOR_CGC').AsString)+'|'; //inscricao fornecedor
               informacao := informacao+''+'|'; //cod exclusao da dief
               {Codigos dos acumuladores pela tabela do sistema Dominios  }
               if (SQLNFEntrada.FieldByName('OPE_NATUREZA').AsString = '1101') then //or (SQLNFEntrada.FieldByName('OPE_NATUREZA').AsString = '2101') then
                   informacao := informacao+'309'+'|'; //cod do acumulador  no Dominio  anteriro = 206
               if (SQLNFEntrada.FieldByName('OPE_NATUREZA').AsString = '1949') then //or (SQLNFEntrada.FieldByName('OPE_NATUREZA').AsString = '2949') then
                   informacao := informacao+'309'+'|'; //cod do acumulador   no Dominio
               if (SQLNFEntrada.FieldByName('OPE_NATUREZA').AsString = '1901') then //or (SQLNFEntrada.FieldByName('OPE_NATUREZA').AsString = '2901') then
                   informacao := informacao+'309'+'|' //cod do acumulador   no Dominio
               else
                    informacao := informacao+'309'+'|'; //cod do acumulador  101 = no Dominio esta COMPRA DE MERC A PRAZO
               informacao := informacao+SQLNFEntrada.FieldByName('OPE_NATUREZA').AsString+'|'; //cfop
               informacao := informacao+''+'|'; //seguimento
               informacao := informacao+SQLNFEntrada.FieldByName('ENF_NOTANUMBER').AsString+'|'; //numero documento
               informacao := informacao+SQLNFEntrada.FieldByName('ENF_SERIE').AsString+'|'; //serie
               informacao := informacao+''+'|'; //numero documento final
               informacao := informacao+FormatDateTime('DD/MM/YYYY',SQLNFEntrada.FieldByName('ENF_ENTRADA').AsDateTime)+'|'; //data da entrada
               informacao := informacao+FormatDateTime('DD/MM/YYYY',SQLNFEntrada.FieldByName('ENF_EMISSAO').AsDateTime)+'|'; //data da emissao
               informacao := informacao+FormatFloat('########0.00',SQLNFEntrada.FieldByName('ENF_TOT_NOTA').AsFloat)+'|'; //valor contabil
               informacao := informacao+''+'|'; //valor exclusao da dief
               informacao := informacao+''+'|'; //observacao
               (*Modalidade de Frete*)
               if (SQLNFEntrada.FieldByName('ENF_TIPO_FRETE').AsInteger = 1) then  //CIF PAGO
                  informacao := informacao+'C'+'|'
               else
                  informacao := informacao+'F'+'|'; // FOB A PAGAR e OUTROS
               informacao := informacao+'P'+'|'; //emitente da nota fiscal
               informacao := informacao+''+'|'; //cfop estendido/detalhamento
               informacao := informacao+''+'|'; //cod transferencia de credito
               informacao := informacao+''+'|'; //cod recolhimento do iss retido
               informacao := informacao+''+'|'; //cod recolhimento do irrf
               informacao := informacao+''+'|'; //cod da observacao
               informacao := informacao+''+'|'; //data do visto notas de transf. credito icms
               informacao := informacao+''+'|'; //fato gerador da crf
               informacao := informacao+''+'|'; //fato gerador da irrf
               informacao := informacao+FormatFloat('########0.00',SQLNFEntrada.FieldByName('ENF_VLFRETE').AsFloat)+'|'; //valor frete
               informacao := informacao+FormatFloat('########0.00',SQLNFEntrada.FieldByName('ENF_VLSEGURO').AsFloat)+'|'; //valor do seguro
               informacao := informacao+FormatFloat('########0.00',SQLNFEntrada.FieldByName('ENF_DESP_ACES').AsFloat)+'|'; //valor despesas acessorias
               informacao := informacao+FormatFloat('########0.00',SQLNFEntrada.FieldByName('ENF_VLPIS').AsFloat)+'|'; //valor pis
               informacao := informacao+''+'|'; //cod que identifica o tipo de antecipacao tributaria              
               informacao := informacao+FormatFloat('########0.00',SQLNFEntrada.FieldByName('ENF_VLCOFINS').AsFloat)+'|'; //valor cofins
               informacao := informacao+''+'|'; //valor calculado referente ao tare da nota
               informacao := informacao+''+'|'; //aliquota calculado referente ao tare da nota
               informacao := informacao+FormatFloat('########0.00',SQLNFEntrada.FieldByName('ENF_VLBASESUBTRIB').AsFloat)+'|'; //valor base de calculo do icms st
               informacao := informacao+''+'|'; //entradas cuja saida e isenta
               informacao := informacao+''+'|'; //outras entradas isentas
               informacao := informacao+''+'|'; //valor transporte incluido na base
               informacao := informacao+''+'|'; //cod de ressarcimento
               informacao := informacao+FormatFloat('########0.00',SQLNFEntrada.FieldByName('ENF_TOT_PROD').AsFloat)+'|'; //valor produtos
               informacao := informacao+SQLNFEntrada.FieldByName('CID_COD_IBGE').AsString+'|'; //cod do municipio
               informacao := informacao+SQLNFEntrada.FieldByName('ENF_MODELO_NF').AsString+'|'; //cod modelo do documento fiscal
               informacao := informacao+''+'|'; //cod da situacao tributaria
               informacao := informacao+''+'|'; //sub serie
               informacao := informacao+SQLNFEntrada.FieldByName('FOR_INSC').AsString+'|'; //inscricao estadual fornecedor
               informacao := informacao+SQLNFEntrada.FieldByName('FOR_INSCMUNI').AsString+'|'; //inscricao municipal fornecedor
               informacao := informacao+''+'|'; //cod da operacao e prestacao
               informacao := informacao+''+'|'; //valor a ser deduzido da receita tributavel
               informacao := informacao+''+'|'; //competencia
               informacao := informacao+''+'|'; //operacao
               informacao := informacao+''+'|'; //numero do parecer fiscal
               informacao := informacao+''+'|'; //data do parecer fiscal
               informacao := informacao+''+'|'; //numero da declaracao de importacao
               informacao := informacao+''+'|'; //possui beneficio fiscal
               informacao := informacao+SQLNFEntrada.FieldByName('ENF_CHAVE_NFE').AsString+'|'; //chave da nota fiscal eletronica
               informacao := informacao+''+'|'; //cod recolhimento do fethab
               informacao := informacao+'E'+'|'; //responsavel pelo recolhimento do fethab E = empresa C = cliente
               informacao := informacao+SQLNFEntrada.FieldByName('OPE_NATUREZA').AsString+'|'; //cfop documento fiscal
               informacao := informacao+''+'|'; //tipo de ct-e
               informacao := informacao+''+'|'; //ct-e referencia
               informacao := informacao+''+'|'; //modalidade da importacao
               informacao := informacao+''+'|'; //cod da informacao complementar
               informacao := informacao+''+'|'; //informacao complementar
               informacao := informacao+''+'|'; //classe de consumo
               informacao := informacao+''+'|'; //tipo de ligacao
               informacao := informacao+''+'|'; //grupo tensao
               informacao := informacao+''+'|'; //tipo assinante
               informacao := informacao+''+'|'; //kwh consumido
               informacao := informacao+''+'|'; //valor fornecido/cosumido de gas ou energia eletrica
               informacao := informacao+''+'|'; //valor cobrado de terceiros
               informacao := informacao+''+'|'; //tipo do documento de importacao
               informacao := informacao+''+'|'; //numero do ato concessorio do regime drawback
               informacao := informacao+''+'|'; //natureza do frete pis/cofins
               informacao := informacao+''+'|'; //cst - pis/cofins
               informacao := informacao+''+'|'; //base do credito - pis/cofins
               informacao := informacao+''+'|'; //valor servico/itens - pis/cofins
               informacao := informacao+''+'|'; //base de calculo - pis/cofins
               informacao := informacao+FormatFloat('########0.00',SQLNFEntrada.FieldByName('ENF_ALIQPIS').AsFloat)+'|'; //aliquota de pis
               informacao := informacao+FormatFloat('########0.00',SQLNFEntrada.FieldByName('ENF_ALIQCOFINS').AsFloat)+'|'; //aliquota de cofins
               informacao := informacao+ExtrairNumeros(SQLNFEntrada.FieldByName('ENF_CHAVE_NFESE').AsString)+'|'; //chave da nfse
               informacao := informacao+''+'|'; //numero do processo ou ato concessorio
               informacao := informacao+''+'|'; //origem do processo
               {Adiciona no Memo}
               MemoFinal.Lines.Add(informacao);
               Writeln(wTEXTO,informacao);
               (*Registro 1020 - Notas Fiscais de Entrada - Impostos*)
               (*ICMS 001 *)
               if (SQLNFEntrada.FieldByName('ENF_VL_ICMS').AsFloat > 0) then
                  begin
                     informacao := '|1020|';
                     informacao := informacao+'001'+'|'; //cod do imposto
                     informacao := informacao+''+'|'; //percentual de reducao da base de calculo
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntrada.FieldByName('ENF_BASEICMS').AsFloat)+'|'; //base de calculo
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntrada.FieldByName('ENF_ALIQ_ICMS').AsFloat)+'|'; //aliquota
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntrada.FieldByName('ENF_VL_ICMS').AsFloat)+'|'; //valor do imposto
                     informacao := informacao+''+'|'; //valor de isentas
                     informacao := informacao+''+'|'; //valor de outras
                     informacao := informacao+''+'|'; //valor do ipi
                     informacao := informacao+''+'|'; //valor da substituicao tributaria
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntrada.FieldByName('ENF_VL_ICMS').AsFloat)+'|'; //valor contabil
                     informacao := informacao+''+'|'; //cod de recolhimento do imposto
                     informacao := informacao+''+'|'; //valor nao tributadas
                     informacao := informacao+''+'|'; //valor parcela reduzida
                     MemoFinal.Lines.Add(informacao);
                     Writeln(wTEXTO,informacao);
                  end;
               (*IPI 002*)
               if (SQLNFEntrada.FieldByName('ENF_VL_IPI').AsFloat > 0) then
                  begin
                     informacao := '|1020|';
                     informacao := informacao+'002'+'|'; //cod do imposto
                     informacao := informacao+''+'|'; //percentual de reducao da base de calculo
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntrada.FieldByName('ENF_BASE_IPI').AsFloat)+'|'; //base de calculo
                     informacao := informacao+''+'|'; //aliquota
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntrada.FieldByName('ENF_VL_IPI').AsFloat)+'|'; //valor do imposto
                     informacao := informacao+''+'|'; //valor de isentas
                     informacao := informacao+''+'|'; //valor de outras
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntrada.FieldByName('ENF_VL_IPI').AsFloat)+'|'; //valor do ipi
                     informacao := informacao+''+'|'; //valor da substituicao tributaria
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntrada.FieldByName('ENF_VL_IPI').AsFloat)+'|'; //valor contabil
                     informacao := informacao+''+'|'; //cod de recolhimento do imposto
                     informacao := informacao+''+'|'; //valor nao tributadas
                     informacao := informacao+''+'|'; //valor parcela reduzida
                     MemoFinal.Lines.Add(informacao);
                     Writeln(wTEXTO,informacao);
                  end;



               (*Registro 1030 - Notas Fiscais de Entrada - Estoque*)
               SQLNFEntradaProdutos.Close;
               SQLNFEntradaProdutos.CommandText := SQLDEF('PAGAR','SELECT T1.*,T2.PRD_UND FROM ENF_IT01 T1 LEFT JOIN PRD0000 T2 ON (T1.PRD_REFER = T2.PRD_REFER) ','WHERE T1.ENF_IT_NOTANUMBER = '+QuotedStr(SQLNFEntrada.FieldByName('ENF_NOTANUMBER').AsString),'','T1.');
               //SQLTmp.CommandText := 'select T1.* from PRD_UNIDADE T1 ';
               SQLNFEntradaProdutos.Open;
               while not SQLNFEntradaProdutos.Eof do
                  begin
                     informacao := '|1030|';
                     informacao := informacao+SQLNFEntradaProdutos.FieldByName('PRD_REFER').AsString+'|'; //cod do produto
                     informacao := informacao+FormatFloat('########0.000',SQLNFEntradaProdutos.FieldByName('ENF_QTDE').AsFloat)+'|'; //quantidade
                     informacao := informacao+FormatFloat('########0.000',SQLNFEntradaProdutos.FieldByName('ENF_QTDE').AsFloat*SQLNFEntradaProdutos.FieldByName('ENF_PRECO').AsFloat)+'|'; //valor total
                     informacao := informacao+FormatFloat('########0.000',SQLNFEntradaProdutos.FieldByName('ENF_IT_VLIPI').AsFloat)+'|'; //valor ipi
                     informacao := informacao+FormatFloat('########0.000',SQLNFEntradaProdutos.FieldByName('ENF_IT_BASEIPI').AsFloat)+'|'; //base de calculo
                     informacao := informacao+'1'+'|'; //tipo de lancamento
                     informacao := informacao+FormatDateTime('DD/MM/YYYY',SQLNFEntrada.FieldByName('ENF_EMISSAO').AsDateTime)+'|'; //data
                     informacao := informacao+SQLNFEntradaProdutos.FieldByName('ENF_IT_NUM_DI').AsString+'|'; //numero da di
                     informacao := informacao+SQLNFEntradaProdutos.FieldByName('ENF_IT_NCM').AsString+'|'; //cod da situcao tributaria
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntradaProdutos.FieldByName('ENF_PRECO').AsFloat)+'|'; //valor bruto do produto
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntradaProdutos.FieldByName('ENF_IT_DESCTO').AsFloat)+'|'; //valor do desconto
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntradaProdutos.FieldByName('ENF_IT_BASEICMS').AsFloat)+'|'; //base de calculo do icms
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntradaProdutos.FieldByName('ENF_IT_BASESUBTRIB').AsFloat)+'|'; //base de calculo do icms ST
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntradaProdutos.FieldByName('ENF_ICMSALIQ').AsFloat)+'|'; //aliquota icms
                     informacao := informacao+''+'|'; //produto incentivado
                     informacao := informacao+''+'|'; //codigo apuracao
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntradaProdutos.FieldByName('ENF_IT_VALFRETE').AsFloat)+'|'; //valor frete
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntradaProdutos.FieldByName('ENF_IT_VLSEGURO').AsFloat)+'|'; //valor seguro
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntradaProdutos.FieldByName('ENF_IT_VLDESP_ACES').AsFloat)+'|'; //valor desp acessorias
                     informacao := informacao+''+'|'; //quantidade de gasolina
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntradaProdutos.FieldByName('ENF_ICMS').AsFloat)+'|'; //valor do icms
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntradaProdutos.FieldByName('ENF_IT_VLSUBTRIB').AsFloat)+'|'; //valor sub tributaria
                     informacao := informacao+''+'|'; //valor de isentas de IPI
                     informacao := informacao+''+'|'; //valor de outrar IPI
                     informacao := informacao+''+'|'; //icms nfp
                     informacao := informacao+FormatFloat('########0.000',SQLNFEntradaProdutos.FieldByName('ENF_PRECO').AsFloat)+'|'; //valor unitario
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntradaProdutos.FieldByName('ENF_IT_ALIQSUBTRIB').AsFloat)+'|'; //aliquota do ST
                     informacao := informacao+''+'|'; //codigo tributação IPI
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntradaProdutos.FieldByName('ENF_IPIALIQ').AsFloat)+'|'; //aliquota do IPI
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntradaProdutos.FieldByName('ENF_IT_ISSQN').AsFloat)+'|'; //base de calculo de ISSQN
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntradaProdutos.FieldByName('ENF_IT_ALIQISSQN').AsFloat)+'|'; //aliquota ISSQN
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntradaProdutos.FieldByName('ENF_IT_VLISSQN').AsFloat)+'|'; //valor ISSQN
                     informacao := informacao+SQLNFEntradaProdutos.FieldByName('ENF_CFOP').AsString+'|'; //CFOP
                     informacao := informacao+''+'|'; //serie de fabricação do ECF
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntradaProdutos.FieldByName('ENF_IT_ALIQPIS').AsFloat)+'|'; //aliquota do PIS
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntradaProdutos.FieldByName('ENF_IT_VLPIS').AsFloat)+'|'; //valor da PIS
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntradaProdutos.FieldByName('ENF_IT_ALIQCOFINS').AsFloat)+'|'; //aliquota do Cofins
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntradaProdutos.FieldByName('ENF_IT_VLCOFINS').AsFloat)+'|'; //valor da cofins
                     informacao := informacao+''+'|'; //custo total do produto
                     informacao := informacao+SQLNFEntradaProdutos.FieldByName('ENF_CST_PIS').AsString+'|'; //CST do PIS
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntradaProdutos.FieldByName('ENF_BASEPIS').AsFloat)+'|'; //base de calculo do PIS
                     informacao := informacao+SQLNFEntradaProdutos.FieldByName('ENF_CST_COFINS').AsString+'|'; //CST do Cofins
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntradaProdutos.FieldByName('ENF_BASECOFINS').AsFloat)+'|'; //base de calculo do cofins
                     informacao := informacao+''+'|'; //chassi do veiculo
                     informacao := informacao+''+'|'; //tipo de operação com o veiculo
                     informacao := informacao+''+'|'; //lote do medicamento
                     informacao := informacao+''+'|'; //quantidade de item por lote de medicamento
                     informacao := informacao+''+'|'; //data de validade
                     informacao := informacao+''+'|'; //data de fabricação do medicamento
                     informacao := informacao+''+'|'; //referencia base de calculo
                     informacao := informacao+''+'|'; //valor tabelado maximo
                     informacao := informacao+''+'|'; //numero de serie da arma
                     informacao := informacao+''+'|'; //numero de serie do cano
                     informacao := informacao+''+'|'; //enquadramento do IPI
                     informacao := informacao+''+'|'; //movimentação fisica do produto
                     informacao := informacao+SQLNFEntradaProdutos.FieldByName('PRD_UND').AsString+'|'; //unidade comercializada
                     informacao := informacao+''+'|'; //complemento da CFOP 17/99
                     informacao := informacao+''+'|'; //tanque do combustivel
                     informacao := informacao+FormatFloat('########0.000',SQLNFEntradaProdutos.FieldByName('ENF_PRECO').AsFloat)+'|'; //valor contabil do produto
                     informacao := informacao+''+'|'; //quantidade tributada PIS por unidade de medida
                     informacao := informacao+''+'|'; //Valor Unidade PIS por unidade de medida
                     informacao := informacao+''+'|'; //Valor PIS por unidade de medida
                     informacao := informacao+''+'|'; //quantidade tributada COFINS por unidade de medida
                     informacao := informacao+''+'|'; //valor unidade COFINS por unidade de medida
                     informacao := informacao+''+'|'; //Valor COFINS por unidade de medida
                     informacao := informacao+''+'|'; //base do credito
                     SQLNFEntradaProdutos.Next;
                     MemoFinal.Lines.Add(informacao);
                     Writeln(wTEXTO,informacao);
                  end;
               (*Registro 1500 - Notas Fiscais de Entrada - Parcela*)
               SQLNFEntradaParcela.Close;
               SQLNFEntradaParcela.CommandText := SQLDEF('PAGAR','SELECT T1.* FROM PAG_PC01 t1 join pag0000 t2 on (t2.pag_codigo = t1.pag_codigo)','where t2.pag_numdoc = '+QuotedStr(SQLNFEntrada.FieldByName('ENF_NOTANUMBER').AsString)+' and t2.for_codigo = '+QuotedStr(SQLNFEntrada.FieldByName('FOR_CODIGO').AsString),'','T1.');
               //SQLTmp.CommandText := 'select T1.* from PRD_UNIDADE T1 ';
               SQLNFEntradaParcela.Open;
               while not SQLNFEntradaParcela.Eof do
                  begin
                     informacao := '|1500|';
                     informacao := informacao+FormatDateTime('DD/MM/YYYY',SQLNFEntradaParcela.FieldByName('PPC_VENCTO').AsDateTime)+'|'; //vencimento
                     informacao := informacao+FormatFloat('########0.00',SQLNFEntradaParcela.FieldByName('PPC_VLPARC').AsFloat)+'|'; //valor
                     informacao := informacao+''+'|'; //aliquota CRF
                     informacao := informacao+''+'|'; //valor da CRF
                     informacao := informacao+''+'|'; //valor da IRRF
                     informacao := informacao+''+'|'; //valor ISS retido
                     informacao := informacao+''+'|'; //valor INSS retido
                     informacao := informacao+''+'|'; //valor do FUNRURAL
                     informacao := informacao+''+'|'; //valor do pis retido
                     informacao := informacao+''+'|'; //valor do cofins retido
                     informacao := informacao+''+'|'; //valor da CSOC retido
                     informacao := informacao+''+'|'; //valor da IRRF pessoa fisica
                     MemoFinal.Lines.Add(informacao);
                     Writeln(wTEXTO,informacao);
                     SQLNFEntradaParcela.Next;
                  end;
               {Proximo Registro}
               SQLNFEntrada.Next;
            end;
         SQLNFEntrada.Close;
      end;


   (*Registro 2000 - Notas Fiscais de Saida*)
   if (CBNotaSaida.Checked) then
      begin
         SQLNFESaida.Close;
         SQLNFESaida.CommandText := SQLDEF('RECEBER','select T1.*, T2.CLI_CGC, T2.CLI_UF, T2.CLI_INSC,T2.CLI_INSCMUNI, T3.CID_COD_IBGE, t4.ped_frete from NF0001 T1 LEFT JOIN CLI0000 T2 ON (T2.CLI_CODIGO = T1.CLI_CODIGO) LEFT JOIN CID0000 T3 ON (T3.CID_CODIGO = T2.CID_CODIGO)'+'left join ped0000 t4 on (t4.ped_codigo = t1.ped_codigo)','WHERE T1.nf_status_nfe = ''A'' and T1.NF_EMISSAO BETWEEN '+QuotedStr(DataAmericana(Dat_Inicio.Text))+' AND '+QuotedStr(DataAmericana(Dat_Final.Text)),'','T1.');
         SQLNFESaida.Open;
         while not SQLNFESaida.Eof do
            begin
               informacao := '|2000|'; //
               if Length(trim(SQLNFESaida.FieldByName('NF_CHAVE_NFE').AsString)) = 44 then
                     informacao := informacao+'36'+'|' //cod especie    36 = NFe - no sistema Dominio da Materminiun
               else
                     informacao := informacao+'1'+'|'; //cod especie  1 = Nota Fiscal

               informacao := informacao+ExtrairNumeros(SQLNFESaida.FieldByName('CLI_CGC').AsString)+'|'; //inscricao do cliente
             //  if (SQLNFESaida.FieldByName('OPE_NATUREZA').AsString = '5124') { or (SQLNFESaida.FieldByName('OPE_NATUREZA').AsString = '6124')
             //     or (SQLNFESaida.FieldByName('OPE_NATUREZA').AsString = '5125') or (SQLNFESaida.FieldByName('OPE_NATUREZA').AsString = '6125') then }
             //     informacao := informacao+'510'+'|' //codigo do acumulador  anterior 510
             //  else
                  informacao := informacao+'201'+'|'; //codigo do acumulador anterior 500

               informacao := informacao+SQLNFESaida.FieldByName('OPE_NATUREZA').AsString+'|'; //cfop
               informacao := informacao+''+'|'; //codigo da esclusao da dief
               informacao := informacao+SQLNFESaida.FieldByName('CLI_UF').AsString+'|'; //sigla do estado do cliente
               informacao := informacao+''+'|'; //sequimento
               informacao := informacao+SQLNFESaida.FieldByName('NF_NUM_NFE').AsString+'|'; //numero do documento
               informacao := informacao+SqlCdsEmpresa.FieldByName('EMP_SERIE_NFE').AsString+'|'; //serie
               informacao := informacao+''+'|'; //documento final
               informacao := informacao+FormatDateTime('DD/MM/YYYY',SQLNFESaida.FieldByName('NF_SAIDA').AsDateTime)+'|'; //data saida
               informacao := informacao+FormatDateTime('DD/MM/YYYY',SQLNFESaida.FieldByName('NF_EMISSAO').AsDateTime)+'|'; //data emissão
               informacao := informacao+FormatFloat('########0.00',SQLNFESaida.FieldByName('NF_TOT_NOTA').AsFloat)+'|'; //valor contabil
               informacao := informacao+''+'|'; //valor da exclusao da dief
               informacao := informacao+''+'|'; //observação
               informacao := informacao+SQLNFESaida.FieldByName('CID_COD_IBGE').AsString+'|'; //codigo do municipio
               (*Modalidade de Frete*)
               if (SQLNFESaida.FieldByName('ped_frete').AsString = '') then  //se em branco gravar fob
                  informacao := informacao+'F'+'|'
               else
                  informacao := informacao+SQLNFESaida.FieldByName('ped_frete').AsString+'|';
               informacao := informacao+''+'|'; //cfop estendido
               informacao := informacao+''+'|'; //codigo de transferencia de credito
               informacao := informacao+''+'|'; //codigo de observação
               informacao := informacao+''+'|'; //datado visto notas de transferencia credito ICMS
               informacao := informacao+''+'|'; //codigo da antecipação tributaria
               informacao := informacao+''+'|'; //fato gerador da CRF
               informacao := informacao+''+'|'; //fato gerador da CRFOP
               informacao := informacao+''+'|'; //fato gerador da IRRFP
               informacao := informacao+''+'|'; //tipo de receita
               informacao := informacao+FormatFloat('########0.00',SQLNFESaida.FieldByName('NF_VLFRETE').AsFloat)+'|'; //valor do frete
               informacao := informacao+FormatFloat('########0.00',SQLNFESaida.FieldByName('NF_VLSEGURO').AsFloat)+'|'; //valor do seguro
               informacao := informacao+FormatFloat('########0.00',SQLNFESaida.FieldByName('NF_DESP_ACES').AsFloat)+'|'; //valor das despesas acessorias
               informacao := informacao+FormatFloat('########0.00',SQLNFESaida.FieldByName('NF_TOT_PROD').AsFloat)+'|'; //valor dos produtos
               informacao := informacao+FormatFloat('########0.00',SQLNFESaida.FieldByName('NF_VLBASESUBTRIB').AsFloat)+'|'; //valor da base de calculo da ICMS ST
               informacao := informacao+''+'|'; //outras saidas
               informacao := informacao+''+'|'; //saidas isentas
               informacao := informacao+''+'|'; //saidas isentas cupom fiscal
               informacao := informacao+''+'|'; //saidas isentas nf mod 02
               informacao := informacao+SqlCdsEmpresa.FieldByName('EMP_MODELO_NFE').AsString+'|'; //codigo do modelo do documento fiscal
               informacao := informacao+''+'|'; //codigo fiscal da prestação de serviço
               informacao := informacao+''+'|'; //codigo da ST
               informacao := informacao+''+'|'; //sub serie
               informacao := informacao+''+'|'; //tipo do titulo
               informacao := informacao+''+'|'; //identificação do titulo
               informacao := informacao+SQLNFESaida.FieldByName('CLI_INSC').AsString+'|'; //IE do Cliente
               informacao := informacao+SQLNFESaida.FieldByName('CLI_INSCMUNI').AsString+'|'; //IM do Cliente
               informacao := informacao+SQLNFESaida.FieldByName('NF_CHAVE_NFE').AsString+'|'; //chave da NFE
               informacao := informacao+''+'|'; //codigo da recolhimento FETHAB
               informacao := informacao+'C'+'|'; //responsavel pelo recolhimento FETHAB = E= Empresa C=Cliente
               informacao := informacao+''+'|'; //tipo do CTE
               informacao := informacao+''+'|'; //CTE de Referencia
               informacao := informacao+''+'|'; //codigo da informação complementar
               informacao := informacao+''+'|'; //informação complementar                       FALTA FALTA FALTA
               informacao := informacao+'99'+'|'; //CST - PIS/COFINS
               informacao := informacao+''+'|'; //valor serviço item PIS/COFINS
               informacao := informacao+''+'|'; //base de calculo de PIS/COFINS
               informacao := informacao+FormatFloat('#######0.00',SQLNFESaida.FieldByName('NF_ALIQPIS').AsFloat)+'|'; //aliquota do PIS
               informacao := informacao+FormatFloat('#######0.00',SQLNFESaida.FieldByName('NF_ALIQCOFINS').AsFloat)+'|'; //aliquota do COFINS
               MemoFinal.Lines.Add(informacao);
               Writeln(wTEXTO,informacao);
               (*Registro 2020 - Notas Fiscais de Saida - Impostos*)
               (*ICMS 001*)
               if (SQLNFESaida.FieldByName('NF_VL_ICMS').AsFloat > 0) then
                  begin
                     informacao := '|2020|'; //
                     informacao := informacao+'001'+'|'; //cod do imposto
                     informacao := informacao+FormatFloat('#######0.00',0)+'|'; //percentual de reducao da base de calculo
                     informacao := informacao+FormatFloat('#######0.00',SQLNFESaida.FieldByName('NF_BASEICMS').AsFloat)+'|'; //base de calculo
                     informacao := informacao+FormatFloat('#######0.00',SQLNFESaida.FieldByName('NF_ALIQ_ICMS').AsFloat)+'|'; //aliquota
                     informacao := informacao+FormatFloat('#######0.00',SQLNFESaida.FieldByName('NF_VL_ICMS').AsFloat)+'|'; //valor do imposto
                     informacao := informacao+''+'|'; //valor isentas
                     informacao := informacao+''+'|'; //valor de outras
                     informacao := informacao+FormatFloat('#######0.00',SQLNFESaida.FieldByName('NF_VL_ICMS').AsFloat)+'|'; //valor contabil
                     informacao := informacao+''+'|'; //valor nao tributadas
                     informacao := informacao+''+'|'; //valor parcela reduzida
                     informacao := informacao+''+'|'; //valor do ipi
                     MemoFinal.Lines.Add(informacao);
                     Writeln(wTEXTO,informacao);
                  end;
               (*IPI 002*)
               if (SQLNFESaida.FieldByName('NF_VL_IPI').AsFloat > 0) then
                  begin
                     informacao := '|2020|'; //
                     informacao := informacao+'002'+'|'; //cod do imposto
                     informacao := informacao+FormatFloat('#######0.00',0)+'|'; //percentual de reducao da base de calculo
                     informacao := informacao+FormatFloat('#######0.00',SQLNFESaida.FieldByName('NF_BASE_IPI').AsFloat)+'|'; //base de calculo
                     informacao := informacao+''+'|'; //aliquota
                     informacao := informacao+FormatFloat('#######0.00',SQLNFESaida.FieldByName('NF_VL_IPI').AsFloat)+'|'; //valor do imposto
                     informacao := informacao+''+'|'; //valor isentas
                     informacao := informacao+''+'|'; //valor de outras
                     informacao := informacao+''+'|'; //valor contabil
                     informacao := informacao+''+'|'; //valor nao tributadas
                     informacao := informacao+''+'|'; //valor parcela reduzida
                     informacao := informacao+FormatFloat('#######0.00',SQLNFESaida.FieldByName('NF_VL_IPI').AsFloat)+'|'; //valor do ipi
                     MemoFinal.Lines.Add(informacao);
                     Writeln(wTEXTO,informacao);
                  end;
               (*Registro 2030 - Notas Fiscais de Saida - Estoque*)
               SQLNFESaidaProdutos.Close;
               SQLNFESaidaProdutos.CommandText := SQLDEF('PRODUTOS','SELECT T1.*,T2.STB_TRIBUTACAO, T2.PRD_UND FROM NF_IT01 T1 left join PRD0000 t2 on (t2.PRD_REFER = t1.PRD_REFER)','WHERE T1.NF_IT_NOTANUMER = '+QuotedStr(SQLNFESaida.FieldByName('NF_NOTANUMBER').AsString),'','T1.');
               SQLNFESaidaProdutos.Open;
               while not SQLNFESaidaProdutos.Eof do
                  begin
                     informacao := '|2030|'; //
                     informacao := informacao+SQLNFESaidaProdutos.FieldByName('PRD_REFER').AsString+'|'; //cod do produto
                     informacao := informacao+FormatFloat('########0.000',SQLNFESaidaProdutos.FieldByName('NF_QTDE').AsFloat)+'|'; //quantidade
                     informacao := informacao+FormatFloat('########0.000',SQLNFESaidaProdutos.FieldByName('NF_PRECO').AsFloat+SQLNFESaidaProdutos.FieldByName('NF_IPIVALOR').AsFloat)+'|'; //valor total
                     informacao := informacao+FormatFloat('########0.000',SQLNFESaidaProdutos.FieldByName('NF_IPIVALOR').AsFloat)+'|'; //valor do ipi
                     informacao := informacao+FormatFloat('########0.000',SQLNFESaidaProdutos.FieldByName('NF_PRECO').AsFloat)+'|'; //base de calculo
                     informacao := informacao+'1'+'|'; //tipo de lancamento
                     informacao := informacao+FormatDateTime('DD/MM/YYYY',SQLNFESaida.FieldByName('NF_EMISSAO').AsDateTime)+'|'; //data
                     informacao := informacao+SQLNFESaidaProdutos.FieldByName('STB_TRIBUTACAO').AsString+'|'; //cod da situacao tributaria do icms
                     informacao := informacao+FormatFloat('########0.00',SQLNFESaidaProdutos.FieldByName('NF_PRECO').AsFloat)+'|'; //valor bruto do produto
                     informacao := informacao+FormatFloat('########0.00',SQLNFESaidaProdutos.FieldByName('NF_IDESCTO1').AsFloat)+'|'; //valor do desconto
                     informacao := informacao+FormatFloat('########0.00',SQLNFESaidaProdutos.FieldByName('NF_ICMSBASE').AsFloat)+'|'; //base de calculo do icms
                     informacao := informacao+FormatFloat('########0.00',SQLNFESaidaProdutos.FieldByName('NF_SUBTRIBASE').AsFloat)+'|'; //base de calculo do icms p/ substituicao tribuitaria
                     informacao := informacao+FormatFloat('########0.00',SQLNFESaidaProdutos.FieldByName('NF_ICMSALIQ').AsFloat)+'|'; //aliquota do icms
                     informacao := informacao+''+'|'; //cod do chassi do veiculo
                     informacao := informacao+''+'|'; //produto incentivado
                     informacao := informacao+''+'|'; //cod de apuracao
                     informacao := informacao+''+'|'; //situacao trib. do produto quanto ao ecf
                     informacao := informacao+FormatFloat('########0.00',SQLNFESaidaProdutos.FieldByName('NF_IFRETE').AsFloat)+'|'; //valor do frete
                     informacao := informacao+FormatFloat('########0.00',SQLNFESaidaProdutos.FieldByName('NF_ISEGURO').AsFloat)+'|'; //valor do seguro
                     informacao := informacao+FormatFloat('########0.00',SQLNFESaidaProdutos.FieldByName('NF_IDESP_ACES').AsFloat)+'|'; //valor das despesas acessorias
                     informacao := informacao+''+'|'; //quantidade de gasolina
                     informacao := informacao+FormatFloat('########0.00',SQLNFESaidaProdutos.FieldByName('NF_ICMSVALOR').AsFloat)+'|'; //valor do icms
                     informacao := informacao+FormatFloat('########0.00',SQLNFESaidaProdutos.FieldByName('NF_VLSUBST').AsFloat)+'|'; //valor da subtri
                     informacao := informacao+''+'|'; //valor de isentas ipi
                     informacao := informacao+''+'|'; //valor de outras ipi
                     informacao := informacao+''+'|'; //valor unitario
                     informacao := informacao+FormatFloat('########0.00',SQLNFESaidaProdutos.FieldByName('NF_ALIQSUBTRIB').AsFloat)+'|'; //aliquota da substituyicao tributaria
                     informacao := informacao+''+'|'; //cod de tributacao do ipi
                     informacao := informacao+FormatFloat('########0.00',SQLNFESaidaProdutos.FieldByName('NF_IPIALIQ').AsFloat)+'|'; //aliquota de ipi
                     informacao := informacao+FormatFloat('########0.00',SQLNFESaidaProdutos.FieldByName('NF_IBASEISSQN').AsFloat)+'|'; //base de calculo issqn
                     informacao := informacao+FormatFloat('########0.00',SQLNFESaidaProdutos.FieldByName('NF_IALIQISSQN').AsFloat)+'|'; //aliquota de issqn
                     informacao := informacao+FormatFloat('########0.00',SQLNFESaidaProdutos.FieldByName('NF_IVLISSQN').AsFloat)+'|'; //valor do issqn
                     informacao := informacao+''+'|'; //lote de medicamento
                     informacao := informacao+''+'|'; //data da validade
                     informacao := informacao+''+'|'; //referencia base de calculo
                     informacao := informacao+''+'|'; //valor tabelado/maximo
                     informacao := informacao+''+'|'; //numero de serie da arma
                     informacao := informacao+''+'|'; //numero de serie do cano
                     informacao := informacao+''+'|'; //tipo de operacao com veiculo
                     informacao := informacao+''+'|'; //quantidade cancelada
                     informacao := informacao+''+'|'; //valor do cancelamento
                     informacao := informacao+''+'|'; //isentas de icms
                     informacao := informacao+''+'|'; //nao incidencia de icms
                     informacao := informacao+''+'|'; //valor acumulado adquirido com st
                     informacao := informacao+''+'|'; //data fabricacao medicamento
                     informacao := informacao+''+'|'; //serie de fabricacao do ecf
                     informacao := informacao+SQLNFESaidaProdutos.FieldByName('NF_CST_PIS').AsString+'|'; //cst do pis
                     informacao := informacao+FormatFloat('########0.00',SQLNFESaidaProdutos.FieldByName('NF_BASE_PIS').AsFloat)+'|'; //base de calculo do pis
                     informacao := informacao+FormatFloat('########0.00',SQLNFESaidaProdutos.FieldByName('NF_ALIQPIS').AsFloat)+'|'; //aliquota do pis
                     informacao := informacao+FormatFloat('########0.00',SQLNFESaidaProdutos.FieldByName('NF_VLPIS').AsFloat)+'|'; //valor do pis
                     informacao := informacao+FormatFloat('########0.00',SQLNFESaidaProdutos.FieldByName('NF_CST_COFINS').AsFloat)+'|'; //cst do cofins
                     informacao := informacao+FormatFloat('########0.00',SQLNFESaidaProdutos.FieldByName('NF_BASE_COFINS').AsFloat)+'|'; // base de calculo do cofins
                     informacao := informacao+FormatFloat('########0.00',SQLNFESaidaProdutos.FieldByName('NF_ALIQCOFINS').AsFloat)+'|'; //aliquota do cofins
                     informacao := informacao+FormatFloat('########0.00',SQLNFESaidaProdutos.FieldByName('NF_VLCOFINS').AsFloat)+'|'; //valor do cofins
                     informacao := informacao+''+'|'; //quant. de item por lote de medicamento
                     informacao := informacao+''+'|'; //enquadramento do ipi
                     informacao := informacao+''+'|'; //quantidade(16,5)
                     informacao := informacao+''+'|'; //movimentacao fisica de produto (s/n)
                     informacao := informacao+SQLNFESaidaProdutos.FieldByName('PRD_UND').AsString+'|'; //unidade comercializada
                     informacao := informacao+''+'|'; //cod do bico
                     informacao := informacao+''+'|'; //valor contabil produto
                     informacao := informacao+''+'|'; //quantidade tributada pis por unidade de medida
                     informacao := informacao+''+'|'; //valor unidade pis por unidade de medida
                     informacao := informacao+''+'|'; //valor pis por unidade de medida
                     informacao := informacao+''+'|'; //quantidade tributada cofins por unidade de medida
                     informacao := informacao+''+'|'; //valor unidade cofins por unidade de medida
                     informacao := informacao+''+'|'; //valor cofins por unidade de medida
                     MemoFinal.Lines.Add(informacao);
                     Writeln(wTEXTO,informacao);
                     SQLNFESaidaProdutos.Next;
                  end;
                  (*Registro 2500 - Notas Fiscais de Saida - Parcelas*)
                  SQLNFSaidaParcela.Close;
                  SQLNFSaidaParcela.CommandText := SQLDEF('RECEBER','SELECT * FROM NF_PC01 T1','WHERE T1.FAT_CODIGO = '+QuotedStr(SQLNFESaida.FieldByName('NF_NOTANUMBER').AsString) ,'','T1.');
                  SQLNFSaidaParcela.Open;
                  while not SQLNFSaidaParcela.Eof do
                     begin
                        informacao := '|2500|'; //
                        informacao := informacao+FormatDateTime('DD/MM/YYYY',SQLNFSaidaParcela.FieldByName('FPC_VENCTO').AsDateTime)+'|'; //vencimento
                        informacao := informacao+FormatFloat('########0.00',SQLNFSaidaParcela.FieldByName('FPC_VLPARC').AsFloat)+'|'; //valor
                        informacao := informacao+''+'|'; //aliquota da crf
                        informacao := informacao+''+'|'; //valor da crf
                        informacao := informacao+''+'|'; //valor da irrf
                        informacao := informacao+''+'|'; //valor iss retido
                        informacao := informacao+''+'|'; //valor inss retido
                        informacao := informacao+''+'|'; //aliquota dopis da crfop
                        informacao := informacao+''+'|'; //valor do pis da crfop
                        informacao := informacao+''+'|'; //aliquota da confins da crfop
                        informacao := informacao+''+'|'; //valor da cofins da crfop
                        informacao := informacao+''+'|'; //aliquota da csll da crfop
                        informacao := informacao+''+'|'; //valor da csll da crfop
                        informacao := informacao+''+'|'; //aliquota da irpj da crfop
                        informacao := informacao+''+'|'; //valor da irpj da crfop
                        informacao := informacao+''+'|'; //valor da irrfp
                        informacao := informacao+''+'|'; //valor do pis retido
                        informacao := informacao+''+'|'; //valor do cofins retido
                        informacao := informacao+''+'|'; //valor da csoc retido
                        MemoFinal.Lines.Add(informacao);
                        Writeln(wTEXTO,informacao);
                        SQLNFSaidaParcela.Next;
                     end;
               SQLNFESaida.Next;
            end;
      end;
      CloseFile(wTEXTO);
      ShowMessage('Processo Concluído');




  (*Registro 3000 - Notas Fiscais de Serviço*)
  (*informacao := '|3000|'; //
  informacao := informacao+'cod da especie'+'|'; //cod da especie
  informacao := informacao+'inscricao cliente'+'|'; //inscricao cliente
  informacao := informacao+'sigla do estado do cliente'+'|'; //sigla do estado do cliente
  informacao := informacao+'cod do acumulador'+'|'; //cod do acumulador
  informacao := informacao+'serie'+'|'; //serie
  informacao := informacao+'numero do doc'+'|'; //numero do doc
  informacao := informacao+'segmento'+'|'; //segmento
  informacao := informacao+'doc final'+'|'; // doc final
  informacao := informacao+'data do servico'+'|'; //data do servico
  informacao := informacao+'data da emissao'+'|'; //data da emissao
  informacao := informacao+'valor contabil'+'|'; //valor contabil
  informacao := informacao+'observacao'+'|'; //observacao
  informacao := informacao+'cod da observacao'+'|'; //cod da observacao
  informacao := informacao+'fato gerador da crf'+'|'; //fato gerador da crf
  informacao := informacao+'fato gerador da irrf'+'|'; //fato gerador da irrf
  informacao := informacao+'fato gerador da crfop'+'|'; //fato gerador da crfop
  informacao := informacao+'fato gerador da irrfp'+'|'; //fato gerador da irrfp
  informacao := informacao+'cod do municipio'+'|'; //cod do municipio
  informacao := informacao+'cod do modelo do doc'+'|'; //cod do modelo do doc
  informacao := informacao+'cod fiscal da prestacao de servico'+'|'; //cod fiscal da prestacao de servico
  informacao := informacao+'inscricao estadual do cliente'+'|'; //inscricao estadual do cliente
  informacao := informacao+'inscricao municipal do cliente'+'|'; //inscricao municipal do cliente
  MemoFinal.Lines.Add(informacao); *)

  (*Registro 3030 - Notas Fiscais de Serviço - Itens*)
  (*informacao := '|3030|'; //
  informacao := informacao+'cod do produto'+'|'; //cod do produto
  informacao := informacao+'data da movimentacao'+'|'; //data da movimentacao
  informacao := informacao+'quantidade'+'|'; //quantidade
  informacao := informacao+'valor do produto'+'|'; //valor do produto
  informacao := informacao+'valor do desconto'+'|'; //valor do desconto
  informacao := informacao+'valor unitario'+'|'; //valor unitario
  informacao := informacao+'cst do issqn'+'|'; //cst do issqn
  informacao := informacao+'base de calculo do issqn'+'|'; //base de calculo do issqn
  informacao := informacao+'aliquota do issqn'+'|'; //aliquota do issqn
  informacao := informacao+'valor do issqn'+'|'; //valor do issqn
  informacao := informacao+'isentas do issqn'+'|'; //isentas do issqn
  informacao := informacao+'nao incidencia de issqn'+'|'; //nao incidencia de issqn
  informacao := informacao+'iss retido'+'|'; //iss retido
  informacao := informacao+'quantidade cancelada'+'|'; //quantidade cancelada
  informacao := informacao+'valor de cancelamento'+'|'; //valor de cancelamento
  informacao := informacao+'cst do pis'+'|'; //cst do pis
  informacao := informacao+'base de calculo do pis'+'|'; //base de calculo do pis
  informacao := informacao+'aliquota do pis'+'|'; //aliquota do pis
  informacao := informacao+'valor do pis'+'|'; //valor do pis
  informacao := informacao+'cst do cofins'+'|'; //cst do cofins
  informacao := informacao+'base de calculo do cofins'+'|'; //base de calculo do cofins
  informacao := informacao+'aliquota do cofins'+'|'; //aliquota do cofins
  informacao := informacao+'valor do cofins'+'|'; //valor do cofins
  MemoFinal.Lines.Add(informacao);*)
  
  (*Registro 3040 - Notas Fiscais de Serviço - Informações Municipais*)
  (*informacao := '|3040|'; //
  informacao := informacao+'cod da tabela municipal'+'|'; //cod da tabela municipal
  informacao := informacao+'cod do item da tabela'+'|'; //cod do item da tabela
  informacao := informacao+'descricao livre'+'|'; //descricao livre
  MemoFinal.Lines.Add(informacao);*)

  (*Registro 3500 - Notas Fiscais de Serviço - Parcelas*)
  (*informacao := '|3500|'; //
  informacao := informacao+'vencimento'+'|'; //vencimento
  informacao := informacao+'valor'+'|'; //valor
  informacao := informacao+'aliquota da crf'+'|'; //aliquota da crf
  informacao := informacao+'valor da crf'+'|'; //valor da crf
  informacao := informacao+'valor da irrf'+'|'; //valor da irrf
  informacao := informacao+'valor iss retido'+'|'; //valor iss retido
  informacao := informacao+'valor inss retido'+'|'; //valor inss retido
  informacao := informacao+'aliquota do pis da crfop'+'|'; //aliquota do pis da crfop
  informacao := informacao+'valor do pis da crfop'+'|'; //valor do pis da crfop
  informacao := informacao+'aliquota da cofins da crfop'+'|'; //aliquota da cofins da crfop
  informacao := informacao+'valor da cofins da crfop'+'|'; //valor da cofins da crfop
  informacao := informacao+'aliquota da csll da crfop'+'|'; //aliquota da csll da crfop
  informacao := informacao+'valor da csll da crfop'+'|'; //valor da csll da crfop
  informacao := informacao+'aliquota da irpj da crfop'+'|'; //aliquota da irpj da crfop
  informacao := informacao+'valor da irpj da crfop'+'|'; //valor da irpj da crfop
  informacao := informacao+'valor da irrfp'+'|'; //valor da irrfp
  informacao := informacao+'valor do pis retido'+'|'; //valor do pis retido
  informacao := informacao+'valor do cofins retido'+'|'; //valor do cofins retido
  informacao := informacao+'valor da csoc retido'+'|'; //valor da csoc retido
  MemoFinal.Lines.Add(informacao);      *)
  
  (*Registro 5100 - Recebimentos - Notas Ficais de Entrada*)
  (*informacao := '|5100|'; //
  informacao := informacao+'cod da especie da nota'+'|'; //cod da especie da nota
  informacao := informacao+'serie da nota'+'|'; //serie da nota
  informacao := informacao+'sub-serie da nota'+'|'; //sub-serie da nota
  informacao := informacao+'numero doc'+'|'; //numero doc
  informacao := informacao+'data de vencimento da parcela'+'|'; //data de vencimento da parcela
  informacao := informacao+'data do pagamento'+'|'; //data do pagamento
  informacao := informacao+'valor recebido (total)'+'|'; //valor recebido ( total)
  informacao := informacao+'valor juros'+'|'; //valor juros
  informacao := informacao+'valor multa'+'|'; //valor multa
  informacao := informacao+'valor desconto'+'|'; //valor desconto
  informacao := informacao+'valor devolucao'+'|'; //valor devolucao
  informacao := informacao+'valor pis'+'|'; //valor pis
  informacao := informacao+'valor cofins'+'|'; //valor cofins
  informacao := informacao+'valor csoc'+'|'; //valor csoc
  informacao := informacao+'valor crf'+'|'; //valor crf
  informacao := informacao+'valor irrf'+'|'; //valor irrf
  informacao := informacao+'valor do irrfp'+'|'; //valor do irrfp
  MemoFinal.Lines.Add(informacao);        *)
  
  (*Registro 5200 - Recebimentos - Notas Ficais de Saida*)
  (*informacao := '|5200|'; //
  informacao := informacao+'cod da especie da nota'+'|'; //cod da especie da nota
  informacao := informacao+'serie da nota'+'|'; //serie da nota
  informacao := informacao+'sub-serie da nota'+'|'; //sub-serie da nota
  informacao := informacao+'numero doc'+'|'; //numero doc
  informacao := informacao+'data de vencimento da parcela'+'|'; //data de vencimento da parcela
  informacao := informacao+'data do pagamento'+'|'; //data do pagamento
  informacao := informacao+'valor recebido (total)'+'|'; //valor recebido ( total)
  informacao := informacao+'valor juros'+'|'; //valor juros
  informacao := informacao+'valor multa'+'|'; //valor multa
  informacao := informacao+'valor desconto'+'|'; //valor desconto
  informacao := informacao+'valor devolucao'+'|'; //valor devolucao
  informacao := informacao+'valor pis'+'|'; //valor pis
  informacao := informacao+'valor cofins'+'|'; //valor cofins
  informacao := informacao+'valor csoc'+'|'; //valor csoc
  informacao := informacao+'valor irrf'+'|'; //valor irrf
  informacao := informacao+'valor do pis da crfop'+'|'; //valor do pis da crfop
  informacao := informacao+'valor da cofins da crfop'+'|'; //valor da cofins da crfop
  informacao := informacao+'valor da csoc da crfop'+'|'; //valor da csoc da crfop
  informacao := informacao+'valor da irpj da crfop'+'|'; //valor da irpj da crfop
  informacao := informacao+'valor do irrfp'+'|'; //valor do irrfp
  MemoFinal.Lines.Add(informacao);  *)
  
  (*Registro 5300 - Recebimentos - Notas Ficais de Serviço*)
  (*informacao := '|5300|'; //
  informacao := informacao+'cod da especie da nota'+'|'; //cod da especie da nota
  informacao := informacao+'serie da nota'+'|'; //serie da nota
  informacao := informacao+'sub-serie da nota'+'|'; //sub-serie da nota
  informacao := informacao+'numero doc'+'|'; //numero doc
  informacao := informacao+'data de vencimento da parcela'+'|'; //data de vencimento da parcela
  informacao := informacao+'data do pagamento'+'|'; //data do pagamento
  informacao := informacao+'valor recebido (total)'+'|'; //valor recebido ( total)
  informacao := informacao+'valor juros'+'|'; //valor juros
  informacao := informacao+'valor multa'+'|'; //valor multa
  informacao := informacao+'valor desconto'+'|'; //valor desconto
  informacao := informacao+'valor devolucao'+'|'; //valor devolucao
  informacao := informacao+'valor pis'+'|'; //valor pis
  informacao := informacao+'valor cofins'+'|'; //valor cofins
  informacao := informacao+'valor csoc'+'|'; //valor csoc
  informacao := informacao+'valor irrf'+'|'; //valor irrf
  informacao := informacao+'valor do pis da crfop'+'|'; //valor do pis da crfop
  informacao := informacao+'valor da cofins da crfop'+'|'; //valor da cofins da crfop
  informacao := informacao+'valor da csoc da crfop'+'|'; //valor da csoc da crfop
  informacao := informacao+'valor da irpj da crfop'+'|'; //valor da irpj da crfop
  informacao := informacao+'valor do irrfp'+'|'; //valor do irrfp
  MemoFinal.Lines.Add(informacao);     *)

end;

end.
