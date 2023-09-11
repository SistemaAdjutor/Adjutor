unit CID0002;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SqlExpr,SqlClientDataSet, Provider, DB, DBClient, DBLocal, DBLocalS, Grids,
  DBGrids, StdCtrls, Buttons, Data.DBXFirebird, SimpleDS;

type
  TFormCidadeGrid = class(TForm)
    BitCancelar: TBitBtn;
    BitPesquisar: TBitBtn;
    BitSair: TBitBtn;
    GbPesquisa: TGroupBox;
    Edt_nome: TEdit;
    DBGrid1: TDBGrid;
    SqlCdsCidade: TSQLClientDataSet;
    DsCidade: TDataSource;
    SqlCdsCidadeCID_CODIGO: TIntegerField;
    SqlCdsCidadeCID_CIDADE: TStringField;
    SqlCdsCidadeCID_ESTADO: TStringField;
    SqlCdsCidadeCID_COD_IBGE: TIntegerField;
    procedure BitSairClick(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure DBGrid1DblClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure DBGrid1KeyPress(Sender: tObject; var Key: Char);
  private
    { Private declarations }
    FCidade : string;
    FEstado : string;
    FCod_Cidade : Integer;
    procedure SetCidade(const AValues:string);
    procedure SetEstado (const AValues :string);
    procedure SetCod_Cidade (const AValues: integer);
    procedure BotaoPesquisar;
    procedure MostraCidade;
  public
    { Public declarations }
    sTipo:String;
    property Estado :string read FEstado write SetEstado;
    property Cidade: string read FCidade write SetCidade;
    property Cod_Cidade : Integer read FCod_Cidade write SetCod_Cidade;
  end;

var
  FormCidadeGrid: TFormCidadeGrid;

implementation

uses
  Uteis, CID0001, RWFunc, Cli0001, DataCad, For0001, Emp0001, Trp0001;

{$R *.dfm}

procedure TFormCidadeGrid.BitSairClick(Sender: tObject);
begin
   Close;
end;

procedure TFormCidadeGrid.BitPesquisarClick(Sender: tObject);
Var
  wSelect,wOrdem :String;
begin
    {Busca pelo nome}
    if Edt_Nome.Text <> '' then
       begin
           wSelect := 'where A1.CID_CIDADE LIKE ''%'+Edt_nome.Text+'%''';
           wOrdem  := 'A1.CID_CIDADE,A1.CID_ESTADO';
           try
             SqlCdsCidade.Close;
             SqlCdsCidade.CommandText := SqlDef('TABELAS','Select A1.* from CID0000 A1',wSelect,wOrdem,'A1.');
             SqlCdsCidade.Open;
             if SqlCdsCidade.IsEmpty then
                begin
                    uteis.aviso('Nenhuma Cidade Localizada!');
                    Edt_Nome.Text := '';
                    BotaoPesquisar;
                    BitCancelar.Click;
                 end
             else
                begin
                    BotaoPesquisar;
                    DBGrid1.setfocus;
                end;
            except on E:EdataBaseError do
                uteis.erro  (Pchar('Erro ao abrir a tabela de CIDADES !'+e.message));
            end;
       end;
end;

procedure TFormCidadeGrid.BotaoPesquisar;
begin
    if Edt_Nome.Text <> '' Then
       begin
           BitPesquisar.Visible := False;
           BitCancelar .Visible := True;
       end
    else
       begin
           BitPesquisar.Visible := True;
           BitCancelar .Visible := False;
       end;
end;

procedure TFormCidadeGrid.DBGrid1DblClick(Sender: tObject);
begin
   Cidade     := SqlCdsCidadeCID_CIDADE.AsString;
   Estado     := SqlCdsCidadeCID_ESTADO.AsString;
   Cod_Cidade := SqlCdsCidadeCID_CODIGO.AsInteger;

   if (Assigned(FormEmpresa)) then
      begin
         if (not FormEmpresa.CdsEmpresa.IsEmpty) then
            begin
               if (FormEmpresa.CdsEmpresa.State in [dsBrowse])then
                  FormEmpresa.CdsEmpresa.Edit;
               if (FormEmpresa.CdsEmpresa.State in [dsEdit,dsInsert]) then
                  begin
                     if (sTipo = 'E') then //Empresa
                        begin
                           FormEmpresa.CdsEmpresaEMP_CIDADE.AsString  := SqlCdsCidadeCID_CIDADE.AsString;
                           FormEmpresa.CdsEmpresaEMP_UF.AsString      := SqlCdsCidadeCID_ESTADO.AsString;
                           FormEmpresa.CdsEmpresaCID_CODIGO.AsInteger := SqlCdsCidadeCID_CODIGO.AsInteger;
                        end
                     else
                     if (sTipo = 'C') then //Contatdor
                        begin
                           FormEmpresa.CdsEmpresaEMP_CONT_CIDADE.AsString  := SqlCdsCidadeCID_CIDADE.AsString;
                           FormEmpresa.CdsEmpresaEMP_CONT_UF.AsString      := SqlCdsCidadeCID_ESTADO.AsString;
                           FormEmpresa.CdsEmpresaEMP_CONT_CID.AsInteger    := SqlCdsCidadeCID_CODIGO.AsInteger;
                        end;


                  end
            end
         else
            begin
               if (FormEmpresa.CdsEmpresa.State in [dsBrowse])then
                  FormEmpresa.CdsEmpresa.Insert;
               FormEmpresa.CdsEmpresaEMP_CIDADE.AsString  := SqlCdsCidadeCID_CIDADE.AsString;
               FormEmpresa.CdsEmpresaEMP_UF.AsString      := SqlCdsCidadeCID_ESTADO.AsString;
               FormEmpresa.CdsEmpresaCID_CODIGO.AsInteger := SqlCdsCidadeCID_CODIGO.AsInteger;
            end;
         {if (not DataCadastros.CdsEmpresa.IsEmpty) then
            begin
               if (DataCadastros.CdsEmpresa.State in [dsBrowse])then
                  DataCadastros.CdsEmpresa.Edit;
               if (DataCadastros.CdsEmpresa.State in [dsEdit,dsInsert]) then
                  begin
                     if (sTipo = 'E') then //Empresa
                        begin
                           DataCadastros.CdsEmpresaEMP_CIDADE.AsString  := SqlCdsCidadeCID_CIDADE.AsString;
                           DataCadastros.CdsEmpresaEMP_UF.AsString      := SqlCdsCidadeCID_ESTADO.AsString;
                           DataCadastros.CdsEmpresaCID_CODIGO.AsInteger := SqlCdsCidadeCID_CODIGO.AsInteger;
                        end
                     else
                     if (sTipo = 'C') then //Contatdor
                        begin
                           DataCadastros.CdsEmpresaEMP_CONT_CIDADE.AsString  := SqlCdsCidadeCID_CIDADE.AsString;
                           DataCadastros.CdsEmpresaEMP_CONT_UF.AsString      := SqlCdsCidadeCID_ESTADO.AsString;
                           DataCadastros.CdsEmpresaEMP_CONT_CID.AsInteger    := SqlCdsCidadeCID_CODIGO.AsInteger;
                        end;


                  end
            end
         else
            begin
               if (DataCadastros.CdsEmpresa.State in [dsBrowse])then
                  DataCadastros.CdsEmpresa.Insert;
               DataCadastros.CdsEmpresaEMP_CIDADE.AsString  := SqlCdsCidadeCID_CIDADE.AsString;
               DataCadastros.CdsEmpresaEMP_UF.AsString      := SqlCdsCidadeCID_ESTADO.AsString;
               DataCadastros.CdsEmpresaCID_CODIGO.AsInteger := SqlCdsCidadeCID_CODIGO.AsInteger;
            end;}
      end
   else
   if (Assigned(FormCliente)) then
      begin
        if FormCliente.PageControl2.ActivePageIndex <> 0 then
        begin
          FormCliente.cdsClienteEnderCOD_CIDADE.Value := FormCidadeGrid.SqlCdsCidadeCID_CODIGO.Value;
          formCliente.cdsClienteEnderCIDADE.Value := FormCidadeGrid.SqlCdsCidadecid_cidade.Value;
          FormCliente.cdsClienteEnderESTADO.Value := FormCidadeGrid.SqlCdsCidadeCID_ESTADO.Value;
        end;
      end
   else
   if (Assigned(FormTransport)) then
      begin
         if (not DataCadastros.CdsTransportadora.IsEmpty) then
            begin
               if (DataCadastros.CdsTransportadora.State in [dsBrowse])then
                  DataCadastros.CdsTransportadora.Edit;
               if (DataCadastros.CdsTransportadora.State in [dsEdit,dsInsert]) then
                  begin
                     DataCadastros.CdsTransportadoraTRP_CIDADE.AsString  := SqlCdsCidadeCID_CIDADE.AsString;
                     DataCadastros.CdsTransportadoraTRP_UF.AsString      := SqlCdsCidadeCID_ESTADO.AsString;
                     DataCadastros.CdsTransportadoraCID_CODIGO.AsInteger := SqlCdsCidadeCID_CODIGO.AsInteger;
                  end
            end
         else
            begin
               if (DataCadastros.CdsTransportadora.State in [dsBrowse])then
                  DataCadastros.CdsTransportadora.Insert;

               DataCadastros.CdsTransportadoraTRP_CIDADE.AsString  := SqlCdsCidadeCID_CIDADE.AsString;
               DataCadastros.CdsTransportadoraTRP_UF.AsString      := SqlCdsCidadeCID_ESTADO.AsString;
               DataCadastros.CdsTransportadoraCID_CODIGO.AsInteger := SqlCdsCidadeCID_CODIGO.AsInteger;
            end;
      end
   else
    if (Assigned(FormCadCidade) ) then
      begin
         FormCadCidade.EdtCidade_Codigo.Text := SqlCdsCidadeCID_CODIGO.AsString;
         FormCadCidade.BuscaCidade;
         FormCadCidade.EdtCidade_Codigo.SetFocus;
      end;
   Close;
end;

procedure TFormCidadeGrid.BitCancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    MostraCidade;
    Edt_nome.Text := '';
    BotaoPesquisar;
    Edt_nome.SetFocus;
    Screen.Cursor := crDefault;
end;

procedure TFormCidadeGrid.MostraCidade;
begin
    Screen.Cursor := crHourGlass;
    try
      SqlCdsCidade.Close;
      SqlCdsCidade.CommandText := SQLDEF('TABELAS','SELECT A1.* from CID0000 A1','','A1.CID_CIDADE,A1.CID_ESTADO','A1.');
      SqlCdsCidade.Open;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao Abrir a Tabela CID0000 !'+E.MESSAGE));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormCidadeGrid.SetCidade(const AValues: string);
begin
 FCidade := AValues;
end;

procedure TFormCidadeGrid.SetCod_Cidade(const AValues: integer);
begin
 FCod_Cidade:= AValues;
end;

procedure TFormCidadeGrid.SetEstado(const AValues: string);
begin
 FEstado := AValues;
end;

procedure TFormCidadeGrid.FormShow(Sender: tObject);
begin
    Edt_nome.SetFocus;
    BotaoPesquisar;
    MostraCidade;
end;

procedure TFormCidadeGrid.DBGrid1KeyPress(Sender: tObject; var Key: Char);
begin
   if (Key = #13) then
      begin
         Key := #0;
         DBGrid1DblClick(Sender);
      end;
end;

end.

