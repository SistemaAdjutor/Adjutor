unit uRecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask,  rxToolEdit,  rxCurrEdit, Buttons, ACBrBase,
  ACBrExtenso, frxClass, jpeg, DB, frxExportRTF, frxExportXLS, frxExportPDF;

type
  TFrmRecibo = class(TForm)
    grpTipo: TGroupBox;
    rbRecebimento: TRadioButton;
    rbPagamento: TRadioButton;
    BitBtn2: TBitBtn;
    Bit_Sair: TBitBtn;
    grpValor: TGroupBox;
    CurValor: TCurrencyEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    mmoValor: TMemo;
    edtNumero: TEdit;
    GroupBox3: TGroupBox;
    edtRecebemosPagamos: TEdit;
    GroupBox4: TGroupBox;
    mmoReferente: TMemo;
    GroupBox5: TGroupBox;
    edtLocal: TEdit;
    GroupBox6: TGroupBox;
    edtEmitente: TEdit;
    ACBrExtenso1: TACBrExtenso;
    frxRecibo: TfrxReport;
    btnMais: TSpeedButton;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    procedure Bit_SairClick(Sender: tObject);
    procedure CurValorChange(Sender: tObject);
    procedure frxReciboGetValue(const VarName: String; var Value: Variant);
    procedure BitBtn2Click(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure btnMaisClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    stream:TStream;
    JpedImage:TJPEGImage;
    MinhaImagem:TJPEGImage;

  public
    { Public declarations }
    dataRecebimento:TDate;
    procedure BotoesAcesso;
  end;

var
  FrmRecibo: TFrmRecibo;

implementation

uses Men0001, DataCad, UFuncoes, RWFunc, iniciodb, Uteis;

{$R *.dfm}

procedure TFrmRecibo.Bit_SairClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmRecibo.BotoesAcesso;
begin
     if Assigned(FrmRecibo) then
     begin
          BitBtn2.Enabled := Uteis.AcessoUsuario('FinanceiroEmissão de Recibo',DBInicio.Usuario.CODIGO,FrmRecibo).Relatorio;
end;
end;

procedure TFrmRecibo.CurValorChange(Sender: tObject);
begin
   ACBrExtenso1.Valor := CurValor.Value;
   mmoValor.Text := ACBrExtenso1.Texto;
end;

procedure TFrmRecibo.frxReciboGetValue(const VarName: String;
  var Value: Variant);
begin

  if (VarName  = 'RAZAO') then
     Value := dbInicio.Empresa.FANTASIA
  else
  if (VarName  = 'ENDERECO') then
     Value := dbInicio.Empresa.ENDERECO
  else
  if (VarName  = 'CEP') then
     Value := dbInicio.Empresa.CEP
  else
  if (VarName  = 'CIDADE') then
     Value := dbInicio.Empresa.CIDADE
  else
  if (VarName  = 'UF') then
     Value := dbInicio.Empresa.UF
  else
  if (VarName  = 'FONE') then
     Value := dbInicio.Empresa.FONE
  else
  if (VarName  = 'EMAIL') then
     Value := dbInicio.Empresa.EMAIL
  else
  if (VarName  = 'CNPJ') then
     Value := dbInicio.Empresa.CNPJ_CNPF
  else
  if (VarName  = 'INSCR') then
     Value := dbInicio.Empresa.INSC_EST
  else
  if (VarName  = 'RECIBO') then
     begin
         if (rbRecebimento.Checked) then
            Value := 'RECIBO DE RECEBIMENTO'
         else
            Value := 'RECIBO DE PAGAMENTO'
     end
  else
  if (VarName  = 'NUMERO') then
     Value := edtNumero.Text
  else
  if (VarName  = 'VALOR') then
     Value := CurValor.Value
  else
  if (VarName  = 'TERMO') then
     begin
         if (rbRecebimento.Checked) then
            Value := 'RECEBEMOS DE '
         else
            Value := 'PAGAMOS PARA '
     end
  else
  if (VarName  = 'RECEBIDO') then
     Value := edtRecebemosPagamos.Text
  else
  if (VarName  = 'VALOREXTENSO') then
     Value := mmoValor.Text
  else
  if (VarName  = 'REFERENTE') then
     Value := mmoReferente.Text
  else
  if (VarName  = 'LOCAL') then
     Value := edtLocal.Text
  else
  if (VarName  = 'EMITENTE') then
     begin
         if (rbRecebimento.Checked) then
            Value := edtEmitente.Text
         else
            Value := edtRecebemosPagamos.Text;
     end;


  DataCadastros.sqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text :='SELECT EMP_LOGO FROM EMP0000 WHERE EMP_CODIGO ='+QuotedStr(dbInicio.Empresa.EMP_CODIGO);
  DataCadastros.sqlUpdate.Open;
  if (not DataCadastros.sqlUpdate.IsEmpty) then
     begin
        if (DataCadastros.sqlUpdate.FieldByName('EMP_LOGO').AsString <> '') then
           begin
              stream := TMemoryStream.Create;
              stream := DataCadastros.sqlUpdate.CreateBlobStream(DataCadastros.sqlUpdate.FieldByName('EMP_LOGO'),bmRead);
              //FrmMenu.ImglogoMenu.saPicture.sa
              MinhaImagem := TJPEGImage.Create;
              MinhaImagem.LoadFromStream(stream);
              MinhaImagem.SaveToStream(stream);
              TfrxPictureView(frxRecibo.FindObject('LogoEmpresa')).Picture.Assign(MinhaImagem);
           end;
     end;
end;

procedure TFrmRecibo.BitBtn2Click(Sender: tObject);
begin
   frxRecibo.ShowReport;
end;

procedure TFrmRecibo.FormShow(Sender: tObject);
begin
   edtLocal.Text := DataExtenso(dataRecebimento);
   edtNumero.Text := IntToStr(Retornar_Codigo('GEN_RECIBO',1));
   edtEmitente.Text := dbInicio.Empresa.FANTASIA;

   Width := 688;
   Height := 471;
end;

procedure TFrmRecibo.btnMaisClick(Sender: tObject);
begin
   edtNumero.Text := IntToStr(Retornar_Codigo('GEN_RECIBO',1));
end;

procedure TFrmRecibo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TFrmRecibo.FormCreate(Sender: tObject);
begin
   dataRecebimento := Date;
end;

procedure TFrmRecibo.FormDestroy(Sender: TObject);
begin
     FrmRecibo := Nil;
end;

procedure TFrmRecibo.FormResize(Sender: TObject);
begin
   Width := 688;
   Height := 471;
end;

end.
