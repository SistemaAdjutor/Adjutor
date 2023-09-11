unit uEtiquetaFinalizacaoProcesso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, frxClass,
  frxDBSet, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab;

type
  TfrmEtiquetaFinalizacaoProcesso = class(TfrmBaseDBFDAC)
    rgEtiqueta: TRadioGroup;
    frxModelo1: TfrxReport;
    btImprimir: TBitBtn;
    qModelo1: TFDQuery;
    frxDBModelo1: TfrxDBDataset;
    qModelo1EDIDENTIFICACAO: TStringField;
    qModelo1CLI_FANTASIA: TStringField;
    qModelo1PRD_REFER: TStringField;
    qModelo1PRD_DESCRI: TStringField;
    qModelo1EDPESOUNITARIO: TFMTBCDField;
    qModelo1EDPESOBRUTOPALLET: TFMTBCDField;
    qModelo1EDTARAPALLET: TBCDField;
    qModelo1EDPESOBRUTO: TFMTBCDField;
    qModelo1EDPESOTARA: TBCDField;
    qModelo1EDQUANTIDADE: TFMTBCDField;
    qModelo1EDUM: TStringField;
    qModelo1EDVOLUME: TFMTBCDField;
    qModelo1EDPESOLIQUIDO: TFMTBCDField;
    procedure frxModelo1BeginDoc(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure frxModelo1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    var
      iopNOrdem, fabCodigo : string
    { Public declarations }
  end;

var
  frmEtiquetaFinalizacaoProcesso: TfrmEtiquetaFinalizacaoProcesso;

implementation

{$R *.dfm}

uses InicioDB, uDadosEtiquetaPallet, Uteis;

procedure TfrmEtiquetaFinalizacaoProcesso.btImprimirClick(Sender: TObject);
var
  sql: string;
begin
  inherited;
  if rgEtiqueta.ItemIndex = 0 then
  begin
    if not Assigned( frmDadosEtiquetaPallet) then
      frmDadosEtiquetaPallet := TfrmDadosEtiquetaPallet.Create(application);

      sql :=
         ' SELECT ' +
         '   iop_nordem AS edIdentificacao, ' +
         '   cl.CLI_FANTASIA, ' +
         '   P1.PRD_REFER, ' +
         '   P1.PRD_DESCRI, ' +
         '   P1.PRD_PESOLIQ AS edPesoUnitario, ' +
         '   ' + FloatToSQL(StrToFloat(frmDadosEtiquetaPallet.edPesoBrutoPallet.Text)) + ' + FAB_PRODUZIDA AS edPesoBrutoPallet, ' +
         '   ' + FloatToSQL(StrToFloat(frmDadosEtiquetaPallet.edTaraPallet.Text)) + '  AS edTaraPallet, ' +
         '   FAB_PRODUZIDA AS edPesoBruto, ' +
         '   ' + FloatToSQL(StrToFloat(frmDadosEtiquetaPallet.edPesoTara.Text)) + ' AS edPesoTara, ' +
         '   FB.FAB_PRODUZIDA AS edQuantidade, ' +
         '   P1.PRD_UND AS edUM, ' +
         '   CASE P1.PRD_PESOLIQ ' +
	       '     WHEN NULL THEN FAB_PRODUZIDA ' +
         '   	 WHEN 0 THEN FAB_PRODUZIDA ' +
         '   	 ELSE FAB_PRODUZIDA / P1.PRD_PESOLIQ ' +
         '   END AS edVolume, ' +
         '   FAB_PRODUZIDA AS edPesoLiquido ' +
         ' FROM ' +
         '   FABRICACAO FB ' +
         ' INNER JOIN PRD0000 P1 ON	(P1.PRD_CODIGO = fb.PRD_CODIGO) ' +
         ' INNER JOIN ITEM_ORDEMPRODUCAO OS ON	(OS.iop_CODIGO = FB.iop_CODIGO AND P1.PRD_codigo = os.PRD_codigo) ' +
         ' INNER JOIN ORDEMPRODUCAO OPR ON (OPR.OPR_CODIGO = OS.OPR_CODIGO) ' +
         ' INNER JOIN OPERACOES OP ON (OP.OPE_CODIGO = FB.OPE_CODIGO) ' +
         ' JOIN CLI0000 cl ON (cl.CLI_CODIGO = opr.CLI_CODIGO) ' +
         ' WHERE ' +
         '   opr.EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO) +
         '   AND iop_nordem = ' + QuotedStr(iopNOrdem)  +
         '   AND FAB_CODIGO = ' + fabCodigo+
         ' ORDER BY ' +
         '   SEQUENCIA ';
      qModelo1.Close;
      qModelo1.SQL.Text := sql;
      if DBInicio.IsDesenvolvimento then
        CopyToClipBoard(sql);
      qModelo1.Open;

    frmDadosEtiquetaPallet.edIdentificacao.Text := qModelo1EDIDENTIFICACAO.AsString;
    frmDadosEtiquetaPallet.edPesoUnitario.Value := qModelo1EDPESOUNITARIO.AsFloat;
    frmDadosEtiquetaPallet.edPesoBrutoPallet.Value := qModelo1EDPESOBRUTOPALLET.AsFloat;
    frmDadosEtiquetaPallet.edTaraPallet.Value := qModelo1EDTARAPALLET.AsFloat;
    frmDadosEtiquetaPallet.edPesoBruto.Value := qModelo1EDPESOBRUTO.AsFloat;
    frmDadosEtiquetaPallet.edPesoTara.Value := qModelo1EDPESOTARA.AsFloat;
    frmDadosEtiquetaPallet.edQuantidade.Value := qModelo1EDQUANTIDADE.AsFloat;
    frmDadosEtiquetaPallet.edUM.Text := qModelo1EDUM.AsString;
    frmDadosEtiquetaPallet.edVolume.Value := qModelo1EDVOLUME.AsFloat;
    frmDadosEtiquetaPallet.edPesoLiquido.Value := qModelo1EDPESOLIQUIDO.AsFloat;


    if frmDadosEtiquetaPallet.ShowModal = mrOk then
      frxModelo1.ShowReport();
    FreeAndNil(frmDadosEtiquetaPallet);
  end;
end;

procedure TfrmEtiquetaFinalizacaoProcesso.frxModelo1BeginDoc(Sender: TObject);
var
  zona : TBitmap;
begin
  inherited;
  zona := TBitmap.Create;
  zona.LoadFromFile(dbInicio.SistemaLocal+'fotos\ZonaFranca.bmp');
  TfrxPictureView(frxModelo1.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
  TfrxPictureView(frxModelo1.FindObject('LogoZonaFranca')).Picture.Assign(zona);


end;

procedure TfrmEtiquetaFinalizacaoProcesso.frxModelo1GetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if VarName = 'EMPRESA' then
    Value := DBInicio.Empresa.FANTASIA;
  if VarName = 'ENDERECO' then
    Value := DBInicio.Empresa.ENDERECO + ' - ' + DBInicio.Empresa.BAIRRO + ' - ' + DBInicio.Empresa.CIDADE + ' - ' + DBInicio.Empresa.UF + ' - Brasil' ;
  if VarName = 'FONE' then
    Value := DBInicio.Empresa.FONE + ' - ' + DBInicio.Empresa.HOME_PAGE;
  if VarName = 'USUARIO' then
    Value := DBInicio.Usuario.NOME;
  if VarName = 'CLI_FANTASIA' then
    Value := qModelo1CLI_FANTASIA.AsString;
  if VarName = 'PRD_REFER' then
    Value := qModelo1PRD_REFER.AsString + ' - ' + qModelo1PRD_DESCRI.AsString;
  if VarName = 'EDIDENTIFICACAO' then
    Value := frmDadosEtiquetaPallet.edIdentificacao.Text;
  if VarName = 'EDPESOUNITARIO' then
    Value := frmDadosEtiquetaPallet.edPesoUnitario.Value;
  if VarName = 'EDPESOBRUTOPALLET' then
    Value := frmDadosEtiquetaPallet.edPesoBrutoPallet.Value;
  if VarName = 'EDTARAPALLET' then
    Value := frmDadosEtiquetaPallet.edTaraPallet.Value;
  if VarName = 'EDPESOBRUTO' then
    Value := frmDadosEtiquetaPallet.edPesoBruto.Value;
  if VarName = 'EDPESOTARA' then
    Value := frmDadosEtiquetaPallet.edPesoTara.Value;
  if VarName = 'EDQUANTIDADE' then
    Value := frmDadosEtiquetaPallet.edQuantidade.Value;
  if VarName = 'EDUM' then
    Value := frmDadosEtiquetaPallet.edUM.Text;
  if VarName = 'EDVOLUME' then
    Value := frmDadosEtiquetaPallet.edVolume.Value;
  if VarName = 'EDPESOLIQUIDO' then
    Value := frmDadosEtiquetaPallet.edPesoLiquido.Value;
end;

end.
