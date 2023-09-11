{**************************************************************
 *  Programa...: Osv0003  - Nome formulario = FormOrdServManut
 *  Objetivo...: Manutenção da Ordem de Serviço
 *  Analista...: Márcio Neu Pacheco
 *  Programador: Jackson Neu Pacheco
 *
 *  Comentários:
 *
 *  Criação..........: Set/1999
 *  Ultima Alteração.: Nov/2002
 *  Alterado por.....: Márcio
 *
 ***************************************************************}
unit OsvN0003;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Mask, StdCtrls, Grids, DBGrids, Buttons, RwFunc,
  DBCGrids,  rxToolEdit, RXDBCtrl, ComCtrls, Provider, SqlExpr, DB, DBClient,
  DBLocal, DBLocalS, uteis, iniciodb;

type
  TFormConsultaOSV = class(TForm)
    Grp_Pesquisa: TGroupBox;
    Rd_OS: TRadioButton;
    Rd_Pedido: TRadioButton;
    Rd_Refer: TRadioButton;
    Rd_Descricao: TRadioButton;
    Grp_filtra: TGroupBox;
    Edt_Nome: TEdit;
    BitCancelar: TBitBtn;
    BitPesquisar: TBitBtn;
    procedure BitCancelarClick(Sender: tObject);
    procedure Rd_OSClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure Edt_NomeEnter(Sender: tObject);
    procedure Edt_NomeExit(Sender: tObject);
    procedure Edt_NomeClick(Sender: tObject);
    procedure Edt_NomeKeyPress(Sender: tObject; var Key: Char);
  private
    { Private declarations }
    procedure Busca;
    procedure LayOutPcp;
    procedure mensagens;
  public
    { Public declarations }
  end;

var
  FormConsultaOSV: TFormConsultaOSV;

implementation

uses OsvN0001, DataCad;

{$R *.DFM}


procedure TFormConsultaOSV.BitCancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    FormOrdServCentroNovo.Busca;
    Screen.Cursor := crDefault;
    close;
end;

procedure TFormConsultaOSV.Busca;
begin
    if (Edt_Nome.Text <> '') then
       begin
           Screen.Cursor := crHourGlass;
           try
             if Rd_OS.checked  then
                begin
                    wSeleciona := 'WHERE O1.OSV_CODIGO = '''+Edt_Nome.Text+'''';
                    wOrdem     := 'O1.OSV_CODIGO';
                end;
             if Rd_Pedido.checked  then
                begin
                    wSeleciona := 'WHERE O1.PED_CODIGO = '''+Edt_Nome.Text+'''';
                    wOrdem     := 'O1.PED_CODIGO';
                end;
             if Rd_Refer.checked  then
                begin
                    wSeleciona := 'WHERE O1.PRD_REFER LIKE '''+Edt_Nome.Text+'%''';
                    wOrdem     := 'O1.PRD_REFER';
                end;
             if Rd_Descricao.checked  then
                begin
                    wSeleciona := 'WHERE P1.PRD_DESCRI LIKE '''+Edt_Nome.Text+'%''';
                    wOrdem     := 'P1.PRD_DESCRI';
                end;
             wSql1 := 'SELECT O1.OSV_REGISTRO,O1.Emp_codigo,O1.Osv_codigo,O1.Osv_emissao,O1.Prd_refer,O1.Osv_qtde,O1.Osv_qtde1,O1.Osv_qtde2,O1.Osv_qtde3,O1.Osv_qtde4,O1.Osv_qtde5,O1.Osv_qtde6,O1.Osv_qtde7,O1.Osv_qtde8,';
             wSql2 := 'O1.Osv_status,O1.Osv_impresso,O1.Ped_codigo,O1.Ftc_tup,O1.Osv_precounit,O1.cel_codigo,P1.Prd_descri,P1.Prd_codigo,P1.pgr_codigo From OSV0001 O1 left join PRD0000 P1 ON (O1.PRD_REFER = P1.PRD_REFER) ';
             //
             FormOrdServCentroNovo.CdsOP.Close;
             FormOrdServCentroNovo.CdsOP.PacketRecords := -1;
             FormOrdServCentroNovo.CdsOP.CommandText   := SQLDEF('ORDEMPRODUCAO',wSql1+wSql2,wSeleciona,wOrdem,'O1.');
             FormOrdServCentroNovo.CdsOP.Open;
             if (FormOrdServCentroNovo.CdsOP.IsEmpty) then
                begin
                    Mensagens;
                    Edt_Nome.Text := '';
                    Edt_Nome.SetFocus;
                end
             else
                begin
                    FormOrdServCentroNovo.DbGridOS.SetFocus;
                    close;
                end;
           except on E:EdatabaseError do
              uteis.erro  (pchar('Erro ao Localizar a ordem de produção !'+e.message));
           end;
           Screen.Cursor := crDefault;
       end;
end;

procedure TFormConsultaOSV.LayOutPcp;
begin
    Grp_Pesquisa.TabOrder := 0;
    Grp_filtra.TabOrder   := 1;
    BitPesquisar.TabOrder := 2;
    BitCancelar.TabOrder  := 3;
    if Rd_OS.checked  then
       begin
           Grp_filtra.Caption := 'Informe o Código da O.P.:';
           Edt_Nome.MaxLength := 8;
           Edt_Nome.Width     := 60;
       end;
    if Rd_Pedido.checked  then
       begin
           Grp_filtra.Caption := 'Informe o Código do Pedido:';
           Edt_Nome.MaxLength := 6;
           Edt_Nome.Width     := 45;
       end;
    if Rd_Refer.checked  then
       begin
           Grp_filtra.Caption := 'Informe a Referência do Produto:';
           Edt_Nome.MaxLength := 50;
           Edt_Nome.Width     := 85;
       end;
    if Rd_Descricao.checked  then
       begin
           Grp_filtra.Caption := 'Informe a Referência do Produto:';
           Edt_Nome.MaxLength := 50;
           Edt_Nome.Width     := 264;
       end;
    Edt_Nome.text := '';
    Edt_Nome.SetFocus;
end;

procedure TFormConsultaOSV.Rd_OSClick(Sender: tObject);
begin
    LayOutPcp;
end;

procedure TFormConsultaOSV.FormShow(Sender: tObject);
begin
    Rd_OS.Checked := True;
    LayOutPcp;
end;

procedure TFormConsultaOSV.BitPesquisarClick(Sender: tObject);
begin
    Screen.Cursor := Crhourglass;
    If (Edt_Nome.Text <> '') then
       begin
           Busca;
       end
    else
       begin
           Mensagens;
           Edt_Nome.Text := '';
           Edt_Nome.SetFocus;
       end;
    Screen.Cursor := CrDefault;
end;

procedure TFormConsultaOSV.mensagens;
begin
    if Rd_OS.checked  then
       begin
           if Edt_Nome.Text = '' then
              uteis.aviso('Informe o Código da O.P.!')
           else
              uteis.aviso('Código da O.P. não encontrado !');
       end;
    if Rd_Pedido.checked  then
       begin
           if Edt_Nome.Text = '' then
              uteis.aviso('Informe o Código do Pedido !')
           else
              uteis.aviso('Pedido não encontrado !');
       end;
    if Rd_Refer.checked  then
       begin
           if Edt_Nome.Text = '' then
              uteis.aviso('Informe a Referência do Produto !')
           else
              uteis.aviso('Referência não encontrado !');
       end;
    if Rd_Descricao.checked  then
       begin
           if Edt_Nome.Text = '' then
              uteis.aviso('Informe a Descrição do Produto !')
           else
              uteis.aviso('Descrição do produto não encontrado !');
       end;

end;

procedure TFormConsultaOSV.Edt_NomeEnter(Sender: tObject);
begin
    Edt_Nome.Text := '';
    Edt_Nome.SelectAll;
    FormOrdServCentroNovo.Busca;
    Edt_nome.Color := $0080FFFF;
end;

procedure TFormConsultaOSV.Edt_NomeExit(Sender: tObject);
begin
    Edt_Nome.Color := clWindow;
    if (Rd_OS.checked ) then
        Edt_Nome.Text := StrZero(Edt_Nome.Text,6);
//       Edt_Nome.Text := StrZero(Edt_Nome.Text,6);
end;

procedure TFormConsultaOSV.Edt_NomeClick(Sender: tObject);
begin
    Edt_Nome.SelectAll;
end;

procedure TFormConsultaOSV.Edt_NomeKeyPress(Sender: tObject;
  var Key: Char);
begin
{
    if (Rd_Pedido.checked ) then
       begin
           if not (key in ['0'..'9',#8]) then
              begin
                 //beep;
                 Key := #0;
              end;
       end;
}       
end;

end.
