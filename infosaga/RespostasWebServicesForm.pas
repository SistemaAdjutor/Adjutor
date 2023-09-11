unit RespostasWebServicesForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, ACBrBase, ACBrCalculadora,
  Vcl.ExtCtrls, Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons;

type
  TFrmRespostasWebServices = class(TfrmBase)
    Panel1: TPanel;
    btSair: TSpeedButton;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    MemoResp: TMemo;
    TabSheet6: TTabSheet;
    TabSheet10: TTabSheet;
    memoRespWS: TMemo;
    Panel2: TPanel;
    WBResposta: TWebBrowser;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRespostasWebServices: TFrmRespostasWebServices;

implementation

{$R *.dfm}

procedure TFrmRespostasWebServices.btSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrmRespostasWebServices.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  MemoResp.Clear;
  MemoRespWS.Clear;
  wbResposta.Navigate('about:blank') ;
end;

procedure TFrmRespostasWebServices.FormCreate(Sender: TObject);
begin
    inherited;
    SetTamanhoMaximo(310,430);
    SetTamanhoMinimo(310,430);
end;

procedure TFrmRespostasWebServices.FormShow(Sender: TObject);
begin
  inherited;
  PageControl2.ActivePageIndex:=0;
  Self.Caption := 'Respostas';
end;

end.
