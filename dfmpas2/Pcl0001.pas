{**************************************************************
*  Programa...: PCL0001  - Nome formulario = FormParcelas    
*  Objetivo...: Criação de Parcelas p/ Contas(Pagar/Receber) 
*  Analista...: Márcio Neu Pacheco                           
*  Programador: Jackson Neu Pacheco                          
*                                                            
*  Comentários:                                              
*                                                            
*  Criação..........: Jan/99
*  Ultima Alteração.: mai/01
*  Alterado por.....: Márcio                                       
*
  Migraçao interbase
  Migração .......... :AGo/2003
  Migrado po ........ :Rodrigo Ramos
**************************************************************}
unit Pcl0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Db, DBTables, RwFunc,
  Provider, SqlExpr,SqlClientDataSet, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, DBClient, DBLocal, DBLocalS, ppBands, ppCache, ppModule,
  raCodMod, ppCtrls, ppVar, ppPrnabl, Grids, DBGrids, Data.DBXFirebird,
  ppDesignLayer, ppParameter, SimpleDS ;

type
  TFormParcelas = class(TForm)
    DBNavigator1: TDBNavigator;
    DbChkPCL_DISPONIVEL: TDBCheckBox;
    SqlCdsRelParcelas: TSQLClientDataSet;
    DsRelParcelas: TDataSource;
    ppDBRelParcelas: TppDBPipeline;
    ppRPRelParcelas01: TppReport;
    SqlCdsRelParcelasPCL_CODIGO: TStringField;
    SqlCdsRelParcelasPCL_NOME: TStringField;
    SqlCdsRelParcelasPCL_DESCTO: TFMTBCdField;
    SqlCdsRelParcelasPCL_MULTA: TFMTBCdField;
    SqlCdsRelParcelasPCL_JUROS: TFMTBCdField;
    SqlCdsRelParcelasPCL_NPARCELAS: TSmallintField;
    SqlCdsRelParcelasPCL_DIASENTREP: TSmallintField;
    SqlCdsRelParcelasPCL_MANTERDIA: TStringField;
    SqlCdsRelParcelasPCL_CARENC_PRI: TSmallintField;
    SqlCdsRelParcelasPCL_OBS: TStringField;
    SqlCdsRelParcelasPCL_DISPONIVEL: TStringField;
    SqlCdsRelParcelasEMP_CODIGO: TStringField;
    pp00HeaderBand2: TppHeaderBand;
    ppLine5: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppLine6: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    pp00DetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    pp00SummaryBand2: TppSummaryBand;
    ppLine9: TppLine;
    ppLabel25: TppLabel;
    ppDBCalc2: TppDBCalc;
    raCodeModule2: TraCodeModule;
    Bit_Lista: TBitBtn;
    Bit_Relatorio: TBitBtn;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    grpInformacoes: TGroupBox;
    DbePcl_nome: TDBEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    EdtPCL_CODIGO: TEdit;
    grp1: TGroupBox;
    rbFixas: TRadioButton;
    grp2: TGroupBox;
    rbVariavel: TRadioButton;
    lbl3: TLabel;
    DbePCL_NPARCELAS: TDBEdit;
    lbl4: TLabel;
    DbePCL_DIASENTREP: TDBEdit;
    lbl5: TLabel;
    DbePCL_CARENCIA: TDBEdit;
    dbchkPCL_MANTERDIA1: TDBCheckBox;
    grpObservacao: TGroupBox;
    dbedtPCL_OBS: TDBEdit;
    lbl6: TLabel;
    dbedtDbePcl_Descto: TDBEdit;
    lbl7: TLabel;
    lbl8: TLabel;
    dbedtDbePCL_MULTA: TDBEdit;
    lbl9: TLabel;
    dbedtDbePCL_Juros: TDBEdit;
    dbgrdDias: TDBGrid;
    btnAdicionar: TSpeedButton;
    btnRetirar: TSpeedButton;
    dsParcelaVariavel: TDataSource;
    CdsParcelaVariavel: TSQLClientDataSet;
    lbl11: TLabel;
    SqlCdsRelParcelasPCL_PERCENTUAL_PRIMEIRA_P: TFMTBCdField;
    SqlCdsRelParcelasPCL_TIPO: TStringField;
    CdsParcelaVariavelPCP_REGISTRO: TIntegerField;
    CdsParcelaVariavelEMP_CODIGO: TStringField;
    CdsParcelaVariavelPCL_CODIGO: TStringField;
    CdsParcelaVariavelPCP_DIA: TIntegerField;
    lbl10: TLabel;
    dbedtPCL_PERCENTUAL_PRIMEIRA_P: TDBEdit;
    dbrgrpPCL_MODALIDADE: TDBRadioGroup;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label4: TLabel;
    dbedtValorMinimoVenda: TDBEdit;
    procedure MudaCorCampos(Sender: tObject);
    procedure DesabilitaBotoes;
    procedure HabilitaBotoes;
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure FormShow(Sender: tObject);
    procedure VerificaEdicao;
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EdtPCL_CODIGOKeyPress(Sender: tObject; var Key: Char);
    procedure EdtPCL_CODIGOExit(Sender: tObject);
    procedure EdtPCL_CODIGOEnter(Sender: tObject);
    procedure BuscaParcelas;
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure Bit_ListaClick(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure rbFixasEnter(Sender: tObject);
    procedure rbVariavelEnter(Sender: tObject);
    procedure btnRetirarClick(Sender: tObject);
    procedure btnAdicionarClick(Sender: tObject);
    procedure EdtPCL_CODIGOChange(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbrgrpPCL_MODALIDADEClick(Sender: TObject);

  private
    { Private declarations }
    {campos}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
  public
    { Public declarations }
    procedure BotoesAcesso;
  end;

var
  FormParcelas: TFormParcelas;

implementation

{$R *.DFM}

uses Uteis, DataCad, Pcl0002, Men0001, ufrmpreviewrb, iniciodb;


procedure  TFormParcelas.MudaCorCampos(Sender: tObject);
begin
  {cor dos campos TDBEdit}
   if Assigned(CampoDbEdit) then
      begin
         CampoDbEdit.color := clWindow;
      end;
   if ActiveControl is TDBEdit then
      begin
         if TDBEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TDBEdit(ActiveControl).color := $0080FFFF;
         CampoDbEdit := TDBEdit(ActiveControl);
      end
   else
      begin
         CampoDbEdit := nil;
      end;
   {CampoEdit :TEdit}
   if Assigned(CampoEdit) then
      begin
         CampoEdit.color := clWindow;
      end;
   if ActiveControl is TEdit then
      begin
         if TEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TEdit(ActiveControl).color := $0080FFFF;
         CampoEdit := TEdit(ActiveControl);
      end
   else
      begin
         CampoEdit := nil;
      end;
end;

procedure TFormParcelas.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormParcelas.BotoesAcesso;
begin
     if assigned(FormParcelas) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosPrazos de Pagamento',DBInicio.Usuario.CODIGO,FormParcelas).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosPrazos de Pagamento',DBInicio.Usuario.CODIGO,FormParcelas).Exluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('CadastrosPrazos de Pagamento',DBInicio.Usuario.CODIGO,FormParcelas).Relatorio;
       DataCadastros.DsParcelas.AutoEdit := Uteis.AcessoUsuario('CadastrosPrazos de Pagamento',DBInicio.Usuario.CODIGO,FormParcelas).Alterar;
     end;
end;

procedure TFormParcelas.Bit_novoClick(Sender: tObject);
begin
      DataCadastros.CdsParcelas.Insert;
      EdtPcl_Codigo.Enabled := false;
      EdtPCL_CODIGO.Text := '000';
      screen.cursor := crdefault;
      DataCadastros.CdsParcelasPCL_DISPONIVEL.AsString := 'S';
      DataCadastros.CdsParcelasPCL_MANTERDIA.AsString  := 'N';
      DataCadastros.CdsParcelasPCL_MODALIDADE.AsString  := '1';
      DesabilitaBotoes;
      uteis.HabilitaIncluir('CadastrosPrazos de Pagamento',DBInicio.Usuario.CODIGO,FormParcelas);
      DBePcl_Nome.setfocus;

end;

procedure TFormParcelas.HabilitaBotoes;
begin
    Bit_novo.Enabled := True;
    Bit_Excluir.Enabled := True;
    Bit_Sair.Visible := True;
    Bit_Relatorio.Enabled := True;
    Bit_Gravar.Enabled := False;
    Bit_Cancelar.Visible := False;
    DbNavigator1.Enabled := True;
    BotoesAcesso;
end;

procedure TFormParcelas.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled := False;
    Bit_Excluir.Enabled := False;
    Bit_Sair.Visible := False;
    Bit_Relatorio.Enabled := False;
    Bit_Gravar.Enabled := True;
    Bit_Cancelar.Visible := True;
    DbNavigator1.Enabled := False;

end;

procedure TFormParcelas.Bit_ExcluirClick(Sender: tObject);
begin

  if not (DataCadastros.CdsParcelas.IsEmpty ) and
  (DataCadastros.CdsParcelasPCL_CODIGO.AsString <> '')  then
  begin
    if DBInicio.BuscaUmDadoSqlAsInteger('SELECT FIRST 1 PCL_CODIGO FROM PED0000 WHERE PCL_CODIGO = '
          +QuotedStr(DataCadastros.CdsParcelasPCL_CODIGO.Asstring)) > 0 then
      GeraException('Não pode excluir pois existe pedido que usa este prazo.');
  end ;
   Screen.cursor :=crHourglass;
  if DataCadastros.CdsParcelas.RecordCount = 0 Then
   begin
       messageBeep (MB_ICONEXCLAMATION);
       uteis.aviso('Não Existe Parcela Cadastrada!');
       Screen.cursor := crDefault;
       exit;
   end;
  if uteis.confirmacao ( 'Deseja Excluir este Parcelamento')= idYes then
   begin
       DataCadastros.CdsParcelas.Delete;
       DataCAdastros.CdsParcelas.ApplyUpdates(0);
   end;
  if DataCadastros.CdsParcelas.RecordCount = 0 then
   Begin
       DataCadastros.DsParcelas.AutoEdit := False;
   end;
  EdtPCL_CODIGO.Text := DataCadastros.CdsParcelasPCL_CODIGO.AsString;
  EdtPCL_CODIGO.SetFocus;

  Screen.cursor := crDefault;
end;

procedure TFormParcelas.Bit_GravarClick(Sender: tObject);
begin
    if (DbePCL_NPARCELAS.Field.AsCurrency = 0)and(rbFixas.Checked) then
      begin
          uteis.erro  ('É preciso informar o número de parcelas');
          DbePCL_NPARCELAS.SetFocus;
          exit;
      end;
    if (DbePCL_DIASENTREP.Field.AsCurrency = 0)and(rbFixas.Checked) then
      begin
          uteis.erro  ('É preciso informar o número de dias entre as parcelas');
          DbePCL_DIASENTREP.SetFocus;
          exit;
      end;
    // somente a vista poderá conter carencia zero
    if (DbePCL_DIASENTREP.Field.AsCurrency > 1) and (DbePCL_CARENCIA.Field.AsCurrency = 0)and(rbFixas.Checked)then
      begin
          uteis.erro  ('É preciso informar a carência de dias na 1a.parcela');
          DbePCL_CARENCIA.SetFocus;
          exit;
      end;
     if StrToIntDef( EdtPCL_CODIGO.Text,0)=0 then
        EdtPCL_CODIGO.Text:=sTRzERO( DBiNICIO.GetNextSequence('GEN_PCL0000_CODIGO'),3);
     DataCadastros.CdsParcelasPCL_CODIGO.AsString := StrZero ( EdtPCL_CODIGO.Text, 3);
      DataCadastros.CdsParcelasPCL_CODIGO.AsString := StrZero(EdtPCL_CODIGO.Text,EdtPcl_codigo.MaxLength);
      DataCadastros.CdsParcelasEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      DataCadastros.CdsParcelasPCL_TIPO.AsString   := IIF(rbFixas.Checked, 'F','V');
      DataCadastros.CdsParcelas.Post;
      DataCadastros.CdsParcelas.ApplyUpdates(0);
      DataCadastros.DsParcelas.AutoEdit := true;
      HabilitaBotoes;
      EdtPcl_codigo.Enabled := true;
      EdtPcl_codigo.Text    := StrZero(DataCadastros.CdsParcelasPCL_CODIGO.AsString,EdtPcl_codigo.MaxLength);
      EdtPCL_CODIGO.SetFocus;
end;

procedure TFormParcelas.Bit_CancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    DataCadastros.CdsParcelas.Cancel;
    if DataCadastros.CdsParcelas.IsEmpty then
       Begin
           DataCadastros.DsParcelas.AutoEdit := False;
       end;
    EdtPcl_Codigo.Enabled := true;
    EdtPcl_codigo.Text := StrZero(DataCadastros.CdsParcelasPCL_CODIGO.AsString,EdtPCL_CODIGO.MaxLength);   
    EdtPCL_CODIGO.SetFocus;
    HabilitaBotoes;
    Screen.Cursor := crDefault;
end;

procedure TFormParcelas.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    VerificaEdicao;
    Try
      DataCadastros.CdsParcelas.Close;
      SqlCdsRelParcelas.Close;
    except on E:EdatabaseError do
       uteis.erro  (pchar('Não Posso Fechar as Tabelas !'+e.message));
    end;
end;
procedure TFormParcelas.FormDestroy(Sender: TObject);
begin
     FormParcelas := Nil;
end;

procedure TFormParcelas.FormShow(Sender: tObject);
begin
    Left := 130;
    Top  := 155;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    screen.cursor := crHourglass;
    Try
      DataCadastros.CdsParcelas.Close;
      DataCadastros.CdsParcelas.CommandText := SQLDEF('TABELAS','SELECT * FROM PCL0000','','PCL_CODIGO','');
      DataCadastros.CdsParcelas.Open;
      if DataCadastros.CdsParcelas.IsEmpty  then
         DataCadastros.DsParcelas.AutoEdit := false;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao abrir tabela Representantes !'+e.message));
    end;
    HabilitaBotoes;
    EdtPCL_CODIGO.Text := DataCadastros.CdsParcelasPCL_CODIGO.AsString;
    EdtPCL_CODIGO.SetFocus;
    Screen.Cursor := crDefault;
end;

procedure TFormParcelas.VerificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DataCadastros.CdsParcelas.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  Bit_Gravar.Click;
              end
           else
              begin
                  Bit_Cancelar.Click;
              end;
       end;
    screen.cursor := crDefault;
end;

procedure TFormParcelas.Bit_RelatorioClick(Sender: tObject);
begin
    Screen.Cursor := crHourglass;
    try
      SqlCdsRelParcelas.Close;
      SqlCdsRelParcelas.CommandText:=SQLDEF('TABELAS','SELECT P1.* FROM PCL0000 P1','where P1.PCL_DISPONIVEL = ''S''','P1.PCL_NOME','P1.');
      SqlCdsRelParcelas.Open;
      LBL_00_EMPRESA.Caption := dbInicio.Empresa.Razao;
      LBL_00_LTITULO1.Caption:= 'RELATÓRIO GERAL DE PARCELAS';
      LBL_00_LTITULO2.Caption:= 'ORDEM POR NOME';
      ppRPRelParcelas01.DeviceType:='Screen';
      RBuilderPreview(ppRPRelParcelas01);
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Erro ao gerar o relatório !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormParcelas.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
     Action := CaFree;
     Screen.OnActiveControlChange := NIL;
     //Close;
end;

procedure TFormParcelas.EdtPCL_CODIGOKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormParcelas.EdtPCL_CODIGOExit(Sender: tObject);
begin
    EdtPCL_Codigo.Text := StrZero(EdtPCL_Codigo.Text,EdtPCL_Codigo.MaxLength);
    if (DataCadastros.CdsParcelas.State in [dsBrowse]) and not (DataCadastros.CdsParcelas.IsEmpty) then
       begin
           BuscaParcelas;
       end;
end;

procedure TFormParcelas.EdtPCL_CODIGOEnter(Sender: tObject);
begin
    EDTPCL_CODIGO.SelectAll;
end;

procedure TFormParcelas.BuscaParcelas;
begin
    EdtPCL_CODIGO.Text := StrZero(EdtPCL_CODIGO.Text,EdtPCL_CODIGO.MaxLength);
    if DataCadastros.CdsParcelas.Locate('PCL_CODIGO',EdtPCL_CODIGO.Text,[])= False then
       begin
           Messagebeep($ffffffff);
           uteis.aviso('Código do Parcelamento não cadastrado!!!');
           EdtPCL_CODIGO.SetFocus;
       end
end;

procedure TFormParcelas.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    EdtPCL_CODIGO.Text := DataCadastros.CdsParcelasPCL_CODIGO.AsString;
end;

procedure TFormParcelas.dbrgrpPCL_MODALIDADEClick(Sender: TObject);
begin
  if dbrgrpPCL_MODALIDADE.ItemIndex = 2 then
  begin
    DataCadastros.CdsParcelasPCL_NOME.AsString := 'SEM PAGAMENTO';
    DbePcl_nome.ReadOnly := True;
  end
  else
    DbePcl_nome.ReadOnly := False;
end;

procedure TFormParcelas.Bit_ListaClick(Sender: tObject);
begin
    try
      try
        FormParcelasGrid := TFormParcelasGrid.Create(Application);
        FormParcelasGrid.ShowModal;
      finally
        FormParcelasGrid.Destroy;
        FormParcelasGrid := nil; //  nil é - From Assigned = False
        EdtPCL_CODIGO.SetFocus;
        rbFixas.Checked := True;
        rbVariavel.Checked := DataCadastros.CdsParcelasPCL_TIPO.AsString = 'V';

        CdsParcelaVariavel.Close;
        if (EdtPCL_CODIGO.Text <> '000') then
           begin
              CdsParcelaVariavel.CommandText:=SQLDEF('TABELAS','SELECT P1.* FROM PCL_PARCELA P1','where P1.PCL_CODIGO = '+QuotedStr(EdtPCL_CODIGO.Text),'P1.PCP_DIA','P1.');
              CdsParcelaVariavel.Open;
           end
        else
           begin
              CdsParcelaVariavel.CommandText:=SQLDEF('TABELAS','SELECT P1.* FROM PCL_PARCELA P1','where P1.PCL_CODIGO = '+QuotedStr('-1'),'P1.PCP_DIA','P1.');
              CdsParcelaVariavel.Open;
           end;
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormParcelas.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       begin
//          if Bit_Cancelar.Visible then
//             Bit_Cancelar.Click
//          else
//          if Bit_Sair.Visible then
//             Bit_Sair.Click;
          close;
          key := #0;
       end;
end;

procedure TFormParcelas.rbFixasEnter(Sender: tObject);
begin
   if DataCadastros.CdsParcelas.State in [dsBrowse] then
       DataCadastros.CdsParcelas.Edit;

end;

procedure TFormParcelas.rbVariavelEnter(Sender: tObject);
begin
   if DataCadastros.CdsParcelas.State in [dsBrowse] then
       DataCadastros.CdsParcelas.Edit;
end;

procedure TFormParcelas.btnRetirarClick(Sender: tObject);
begin
   if (not CdsParcelaVariavel.IsEmpty) then
      begin
         if (uteis.confirmacao ( 'Gostaria de excluir o dia?')=mrYes) then
            begin
               CdsParcelaVariavel.Delete;
               CdsParcelaVariavel.ApplyUpdates(0);
            end;

      end;
end;

procedure TFormParcelas.btnAdicionarClick(Sender: tObject);
var
   iDia:Integer;
   sRetorno:string;
begin
  if rbVariavel.Checked = False then
    begin
    uteis.aviso('Este procedimento é possível somente se estiver marcado parcelamento variável');
    exit
    end;

   if (EdtPCL_CODIGO.Text <> '000') then
      begin
         try
            sRetorno := InputBox('Informe o Dia', 'Quantidade de Dias:', '');
            if (sRetorno = '') then
               Exit
            else
               iDia := StrToInt(sRetorno);    
         except
            btnAdicionarClick(Self);
         end;
         //Verifica se Dia já foi digitado
         dataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=SQLDEF('TABELAS','SELECT P1.* FROM PCL_PARCELA P1','where P1.PCL_CODIGO = '+QuotedStr(EdtPCL_CODIGO.Text)+' and P1.PCP_DIA = '+IntToStr(iDia),'P1.PCP_DIA','P1.');
         dataCadastros.sqlUpdate.Open;
         if (not dataCadastros.sqlUpdate.IsEmpty) then
            begin
               uteis.aviso('Dia já informado');
               btnAdicionarClick(Self);
            end
         else
            begin
               dataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :='INSERT INTO PCL_PARCELA (EMP_CODIGO,PCL_CODIGO,PCP_DIA) VALUES ('+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+QuotedStr(EdtPCL_CODIGO.Text)+','+IntToStr(iDia)+')';
               dataCadastros.sqlUpdate.Execsql;

               CdsParcelaVariavel.Close;
               CdsParcelaVariavel.CommandText:=SQLDEF('TABELAS','SELECT P1.* FROM PCL_PARCELA P1','where P1.PCL_CODIGO = '+QuotedStr(EdtPCL_CODIGO.Text),'P1.PCP_DIA','P1.');
               CdsParcelaVariavel.Open;

               if DataCadastros.CdsParcelas.State in [dsBrowse] then
                  DataCadastros.CdsParcelas.Edit;
               DataCadastros.CdsParcelasPCL_NPARCELAS.AsInteger := CdsParcelaVariavel.RecordCount;
               //rbVariavel.Checked := True;

            end;
      end;
end;

procedure TFormParcelas.EdtPCL_CODIGOChange(Sender: tObject);
begin
   rbFixas.Checked := True;
   rbVariavel.Checked := DataCadastros.CdsParcelasPCL_TIPO.AsString = 'V';

   CdsParcelaVariavel.Close;
   if (EdtPCL_CODIGO.Text <> '000') then
      begin
         CdsParcelaVariavel.CommandText:=SQLDEF('TABELAS','SELECT P1.* FROM PCL_PARCELA P1','where P1.PCL_CODIGO = '+QuotedStr(EdtPCL_CODIGO.Text),'P1.PCP_DIA','P1.');
         CdsParcelaVariavel.Open;
      end
   else
      begin
         CdsParcelaVariavel.CommandText:=SQLDEF('TABELAS','SELECT P1.* FROM PCL_PARCELA P1','where P1.PCL_CODIGO = '+QuotedStr('-1'),'P1.PCP_DIA','P1.');
         CdsParcelaVariavel.Open;
      end;
end;

end.
