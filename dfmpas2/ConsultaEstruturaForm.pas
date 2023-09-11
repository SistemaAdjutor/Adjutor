unit ConsultaEstruturaForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaSimplesForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab,
  ACBrBase, ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ComCtrls;

type
  TfrmConsultaEstrutura = class(TfrmBaseDBPesquisaSimples)
    N1: TMenuItem;
    VeraFichaTcnicaDesteItem1: TMenuItem;
    cdsBuscoFTI_REGISTRO: TIntegerField;
    cdsBuscoPRD_REFER: TStringField;
    cdsBuscoPRD_REFER_ITENS: TStringField;
    cdsBuscoPRG_REGISTRO: TIntegerField;
    cdsBuscoFTI_MODIFICADA: TSQLTimeStampField;
    cdsBuscoFTI_UC: TFMTBCDField;
    cdsBuscoFTI_UCMODIFIC: TFMTBCDField;
    cdsBuscoFTI_MODE1: TStringField;
    cdsBuscoFTI_MODE2: TStringField;
    cdsBuscoFTI_MODE3: TStringField;
    cdsBuscoFTI_MODE4: TStringField;
    cdsBuscoFTI_MODE5: TStringField;
    cdsBuscoFTI_MODE6: TStringField;
    cdsBuscoFTI_MODE7: TStringField;
    cdsBuscoFTI_MODE8: TStringField;
    cdsBuscoFTI_PRECOCUSTO: TFMTBCDField;
    cdsBuscoEMP_CODIGO: TStringField;
    cdsBuscoGrade_CC: TStringField;
    cdsBuscoFTI_NIVEL: TIntegerField;
    cdsBuscoFTI_SEQUENCIA: TIntegerField;
    cdsBuscoFTI_REFER_PAI: TStringField;
    cdsBuscoFTI_TIPO_PI: TStringField;
    cdsBuscoPRD_DESCRI: TStringField;
    cdsBuscoPRD_UND: TStringField;
    cdsBuscoPRD_GRADE: TStringField;
    cdsBuscoPTI_SIGLA: TStringField;
    cdsBuscoPRD_PCUSTO: TFMTBCDField;
    cdsBuscoPRG_DESCRICAO: TStringField;
    ed1: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure VeraFichaTcnicaDesteItem1Click(Sender: TObject);
  private
         vRefer: string;
    procedure FiltraPrd;
  public
        Property Referencia: STRING read vRefer Write vRefer ;
  end;

var
  frmConsultaEstrutura: TfrmConsultaEstrutura;

Procedure VisualizaFichaTecnica( pPrd_refer: string  );

implementation

{$R *.dfm}

uses uteis, iniciodb, prd0001;

{ TfrmConsultaEstrutura }

procedure VisualizaFichaTecnica(pPrd_refer: string);
var tcr: TfrmConsultaEstrutura;
begin
     tcr := TfrmConsultaEstrutura.Create(application);
     try
        tcr.Referencia := pPrd_Refer;
        tcr.ShowModal;
     finally
            FreeAndNil( tcr ) ;
     end;


end;

procedure TfrmConsultaEstrutura.FormCreate(Sender: TObject);
begin
     inherited;
     SetTamanhoMinimo(700,980);
     CampoID:='PRD_REFER_ITENS';
     //CampoIDRetorno:='prd_CODIGO';
     ProcedureFiltro:=FiltraPrd;
     aCaption:='Ficha Técnica';
end;

procedure TfrmConsultaEstrutura.FormShow(Sender: TObject);
begin
  inherited;
  ed1.Text:= vRefer+' - '+BuscaUmDadoSqlAsString('select prd_descri from prd0000 where prd_refer='+qStr(vRefer)+ConcatSe(' and ',dbInicio.ExclusivoSql('produtos') ) );
  self.Caption := 'Ficha Técnica do Item '+ed1.text ;
  AbreTabela:=True;
  Filtro; // abre tabelas
end;

procedure TfrmConsultaEstrutura.VeraFichaTcnicaDesteItem1Click(Sender: TObject);
begin
  inherited;
  VisualizaFichaTecnica( CdsBuscoPRD_REFER_ITENS.AsString );
end;

procedure TfrmConsultaEstrutura.btnImprimeClick(Sender: TObject);
begin
  inherited;
  TituloRelAuto:=self.Caption;
  GeraRelatorioAuto(Self);
end;

procedure TfrmConsultaEstrutura.FiltraPrd;
begin
     with qBusco do
     begin
          sql.text :=  'Select F2.*,P1.PRD_DESCRI,P1.PRD_UND,P1.PRD_GRADE,P2.PTI_SIGLA,P1.PRD_PCUSTO, g1.PRG_DESCRICAO '+
                       'from ftc_it01 F2 '+
                       '     left join prd0000 P1 on (f2.prd_refer_itens = p1.prd_refer) '+
                       '     left join PRD_TIPO P2 ON P1.pti_codigo = P2.PTI_CODIGO ' +
                       '     LEFT join PRD_GRADE g1 on g1.PRG_REGISTRO = f2.PRG_REGISTRO '+
                       'WHERE F2.PRD_REFER = ' + qStr(vRefer)+ ' '+
                       ConcatSe( ' and f2.', dbInicio.ExclusivoSql('PRODUTOS') )+' '+
                       'order by F2.PRD_REFER' ;
     end;

end;

end.
