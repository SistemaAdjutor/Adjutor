unit Osv0002B;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,  rxToolEdit, Mask,
   rxCurrEdit, DB;

type
  TFormOrdServGerar = class(TForm)
    Pan_Menu: TPanel;
    Bit_Sair: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox3: TGroupBox;
    Rad_OA: TRadioButton;
    RAD_OR: TRadioButton;
    RAD_OP: TRadioButton;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DtEmissao: TDateEdit;
    Bit_Gerar: TBitBtn;
    Edt_Lote: TEdit;
    CurrQtde: TCurrencyEdit;
    procedure FormShow(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_GerarClick(Sender: tObject);
    procedure DtEmissaoExit(Sender: tObject);
    procedure CurrQtdeEnter(Sender: tObject);
    procedure DtEmissaoEnter(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOrdServGerar: TFormOrdServGerar;

implementation

uses DataCad, Men0001, RWFunc;

{$R *.dfm}





procedure TFormOrdServGerar.FormShow(Sender: tObject);
begin
    Left := 100;
    Top  := 287;
    Edt_Lote.Text  := SequenciadorPRC(DataCadastros.SQLConnection1,dbInicio.Empresa.EMP_CODIGO, 'LOTE0000', 'LOTE_CODIGO', 0);
    Edt_Lote.Text  := StrZero(Edt_Lote.Text,Edt_Lote.MaxLength);
    DtEmissao.Date := now;
end;

procedure TFormOrdServGerar.Bit_SairClick(Sender: tObject);
begin
    SequenciadorPRC(DataCadastros.SQLConnection1, dbInicio.Empresa.EMP_CODIGO,'LOTE0000', 'LOTE_CODIGO', 1, Edt_Lote.Text);
    Close;
end;

procedure TFormOrdServGerar.Bit_GerarClick(Sender: tObject);
begin
    screen.Cursor := crHourGlass;
    try
      try
        if (RAD_OA.checked ) then
           begin

           end;
        if (RAD_OR.checked ) then
           begin

           end;
        if (RAD_OP.checked ) then
           begin

           end;
        if (CurrQtde.Value>0) then
           begin

           end;
      except on E:EDataBaseError do
         uteis.erro  (pchar('Erro ao limpar as tabelas ! '+e.message));
      end;
    finally
       {Limpado a tabela PSV_GRUPO}
       DataCadastros.sqlUpdate.close;
       DataCadastros.SqlUpdate.sql.text :='DELETE FROM PSV_GRUPO';
       DataCadastros.sqlUpdate.Execsql;
       {Limpado a tabela PSV_IT02}
       DataCadastros.sqlUpdate.close;
       DataCadastros.SqlUpdate.sql.text :='DELETE FROM PSV_IT02';
       DataCadastros.sqlUpdate.Execsql;
       {Atualizando os Generators}
       DataCadastros.sqlUpdate.close;
       DataCadastros.SqlUpdate.sql.text :='SET GENERATOR GEN_PSVGRUPO TO 0';
       DataCadastros.sqlUpdate.Execsql;
       //
       DataCadastros.sqlUpdate.close;
       DataCadastros.SqlUpdate.sql.text :='SET GENERATOR GEN_PS2ITENS TO 0';
       DataCadastros.sqlUpdate.Execsql;
       Close;
    end;
end;

procedure TFormOrdServGerar.DtEmissaoExit(Sender: tObject);
begin
    DtEmissao.Text := PreenchaData(DtEmissao.Text);
end;

procedure TFormOrdServGerar.CurrQtdeEnter(Sender: tObject);
begin
    CurrQtde.SelectAll;
end;

procedure TFormOrdServGerar.DtEmissaoEnter(Sender: tObject);
begin
    DtEmissao.SelectAll;
end;

end.
