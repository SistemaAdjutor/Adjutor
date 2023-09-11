{****************************************************************
| Programa...: Men0003- Nome formulario = FormMenuProducao      |
| Objetivo...: Menu de Acesso ao modulo Produção                |
| Analista...: Marcio Neu Pacheco                               |
| Programador: Jackson Neu Pacheco                              |
|                                                               |
| Comentários:                                                  |
|                                                               |
| Criação..........: Jan/1999                                   |
| Ultima Alteração.: Abr/2000                                   |
| Alterado por.....: Márcio                                     |
|                                                               |
****************************************************************}
unit Men0003;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, ExtCtrls, ComCtrls, Buttons, ImgList;

type
  TFormMenuProducao = class(TForm)
    StatusBar: TStatusBar;
    Pntitulo: TPanel;
    MainMenu1: TMainMenu;
    Engenharia: TMenuItem;
    PCP: TMenuItem;
    OrdemProd: TMenuItem;
    Sair1: TMenuItem;
    FatoresdeCusto1: TMenuItem;
    FichaTcnica1: TMenuItem;
    Label5: TLabel;
    N2: TMenuItem;
    ImageList1: TImageList;
    Rotinas1: TMenuItem;
    CalculodeCustosGlobal1: TMenuItem;
    FichadeCusto2: TMenuItem;
    ClulasdeProduo1: TMenuItem;
    ComponentedeClula1: TMenuItem;
    N1: TMenuItem;
    N4: TMenuItem;
    MovimentodaProduo1: TMenuItem;
    N3: TMenuItem;
    PrevisodeConsumo2: TMenuItem;
    MetasdeProduoTUP1: TMenuItem;
    N5: TMenuItem;
    SecoProcesso1: TMenuItem;
    procedure Sair1Click(Sender: tObject);
    procedure BitBtn1Click(Sender: tObject);
    procedure FormActivate(Sender: tObject);
    procedure FatoresdeCusto1Click(Sender: tObject);
    procedure OrdemProdClick(Sender: tObject);
    procedure Linha1Click(Sender: tObject);
    procedure Novo1Click(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FichadeCusto2Click(Sender: tObject);
    procedure CalculodeCustosGlobal1Click(Sender: tObject);
    procedure ClulasdeProduo1Click(Sender: tObject);
    procedure ComponentedeClula1Click(Sender: tObject);
    procedure MovimentodaProduo1Click(Sender: tObject);
    procedure PrevisodeConsumo2Click(Sender: tObject);
    procedure MetasdeProduoTUP1Click(Sender: tObject);
    procedure SecoProcesso1Click(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenuProducao: TFormMenuProducao;

implementation

uses Ftc0001, Osv0001, Pcp0001, ADJ0001, Cus0001, GimpCust,
  Cus0002, CEL0001, Cel0002, Cel0005, CEL0008, Fct0001 , For0001,
  PrevC001, Men0001;

{$R *.DFM}






procedure TFormMenuProducao.Sair1Click(Sender: tObject);
begin
  Close;
end;


procedure TFormMenuProducao.BitBtn1Click(Sender: tObject);
begin
 close;
end;

procedure TFormMenuProducao.FormActivate(Sender: tObject);
begin
 Pntitulo.Caption := dbInicio.Empresa.Razao;
 StatusBar.Panels[2].Text:= DateTimeToStr(date);
end;

procedure TFormMenuProducao.FatoresdeCusto1Click(Sender: tObject);
begin
  try
   try
      FormCusto := TFormCusto.Create(Application);
      FormCusto.ShowModal;
    finally
      FormCusto.Destroy;
      FormCusto := nil; //  nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormMenuProducao.OrdemProdClick(Sender: tObject);
begin
  try
    try
      FormOrdServCentro := TFormOrdServCentro.Create(Application);
      FormOrdServCentro.ShowModal;
    finally
      FormOrdServCentro.Destroy;
      FormOrdServCentro := nil //  nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;
procedure TFormMenuProducao.Linha1Click(Sender: tObject);
begin
  try
    try
      FormFichaTecnica := TFormFichaTecnica.Create(Application);
      FormFichaTecnica.ShowModal;
    finally
      FormFichaTecnica.Destroy;
      FormFichaTecnica := nil //  nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormMenuProducao.Novo1Click(Sender: tObject);
begin
try
    try
      Screen.Cursor := crDefault;
      FormFichaCusto := TFormFichaCusto.Create(Application);
      FormFichaCusto.ShowModal;
    finally
      FormFichaCusto.Destroy;
      FormFichaCusto := nil //  nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormMenuProducao.FormShow(Sender: tObject);
begin
  Left:= 0;
  Top := 0;
  Width :=  801;
  Height := 572;
end;

procedure TFormMenuProducao.FichadeCusto2Click(Sender: tObject);
begin
 try
    try
      FormGimpCusto := TFormGimpCusto.Create(Application);
      FormGimpCusto.ShowModal;
    finally
      FormGimpCusto.Destroy;
      FormGimpCusto := nil //  nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormMenuProducao.CalculodeCustosGlobal1Click(Sender: tObject);
begin
 try
    try
      FormCustoGlobal := TFormCustoGlobal.Create(Application);
      FormCustoGlobal.ShowModal;
    finally
      FormCustoGlobal.Destroy;
      FormCustoGlobal := nil 
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormMenuProducao.ClulasdeProduo1Click(Sender: tObject);
begin
  try
    try
      FormCelula := TFormCelula.Create(Application);
      FormCelula.ShowModal;
    finally
      FormCelula.Destroy;
      FormCelula := nil //  nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormMenuProducao.ComponentedeClula1Click(Sender: tObject);
begin
  try
    try
      FormComponentes := TFormComponentes.Create(Application);
      FormComponentes.ShowModal;
    finally
      FormComponentes.Destroy;
      FormComponentes := nil //  nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormMenuProducao.MovimentodaProduo1Click(Sender: tObject);
begin
 try
    try
      FormMovCelulas := TFormMovCelulas.Create(Application);
      FormMovCelulas.ShowModal;
    finally
      FormMovCelulas.Destroy;
      FormMovCelulas := nil //  nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormMenuProducao.PrevisodeConsumo2Click(Sender: tObject);
begin
try
    try
      FormPrevConsumo := TFormPrevConsumo.Create(Application);
      FormPrevConsumo.ShowModal;
    finally
      FormPrevConsumo.Destroy;
      FormPrevConsumo := nil   //nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormMenuProducao.MetasdeProduoTUP1Click(Sender: tObject);
begin
 try
    try
      FormMetaProd := TFormMetaProd.Create(Application);
      FormMetaProd.ShowModal;
    finally
      FormMetaProd.Destroy;
      FormMetaProd := nil //  nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormMenuProducao.SecoProcesso1Click(Sender: tObject);
begin
try
    try
      FormPCPCadastro := TFormPCPCadastro.Create(Application);
      FormPCPCadastro.ShowModal;
    finally
      FormPCPCadastro.Destroy;
      FormPCPCadastro := nil //  nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end; 
end;

end.
