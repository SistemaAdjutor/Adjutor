unit AutorizaForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask;
type
  TValidacao = (vPrecoAbaixoCusto, vDescontoMaximo);

type
  TFrmAutoriza = class(TForm)
    lbAviso: TLabel;
    Label3: TLabel;
    EdUsuario: TEdit;
    msksenha: TMaskEdit;
    Label4: TLabel;
    BitConfirmar: TBitBtn;
    BitCancelar: TBitBtn;
    Label1: TLabel;
    procedure BitConfirmarClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
  private
   fTipoValidacao : TValidacao;
   fDescontoMax : double;
   procedure SetTipoValidacao (const value : TValidacao);
   procedure SetDescontoMax (const value : Double);
  public
    property TipoValidacao : TValidacao read  fTipoValidacao write SetTipoValidacao;
    property DescontoMax : double read fDescontoMax write SetDescontoMax;
  end;

var
  FrmAutoriza: TFrmAutoriza;

implementation

uses Uteis, InicioDB;

{$R *.dfm}

procedure TFrmAutoriza.BitConfirmarClick(Sender: tObject);
begin
 if (TipoValidacao = vPrecoAbaixoCusto)  then
 begin
     if dbInicio.BuscaUmDadoSqlAsInteger ( 'Select cast(count(*) as integer) as conta from    usuario_tudo_view where usu_login='+qStr( EdUsuario.Text )+' and usu_senha='+qstr(msksenha.Text)+' and PERMITE_VENDA_ABAIXO_CUSTO='+qstr('S') )>0 then
        ModalResult := mrOk
     Else
         GeraException('Usuário não encontrado ou não autorizado!');

 end
 else if TipoValidacao = vDescontoMaximo then
  begin
     if dbInicio.BuscaUmDadoSqlAsInteger ( 'Select cast(count(*) as integer) as conta from    usuario_tudo_view where usu_login='+qStr( EdUsuario.Text )+' and usu_senha='+qstr(msksenha.Text)+
                                          ' and (USP_DESCONTO_MAX_P = 0 or USP_DESCONTO_MAX_P>= '+FloatToSQL(DescontoMax)+')' )>0 then
        ModalResult := mrOk
     Else
         GeraException('Usuário não encontrado ou não autorizado!');

  end;
end;

procedure TFrmAutoriza.SetDescontoMax(const value: Double);
begin
 fDescontoMax := value;
end;

procedure TFrmAutoriza.SetTipoValidacao(const value: TValidacao);
begin
  fTipoValidacao := value;
end;

procedure TFrmAutoriza.BitCancelarClick(Sender: tObject);
begin
     ModalResult := mrCancel ;
end;

end.
