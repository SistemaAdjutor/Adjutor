unit uPesqRenovacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, SgDbSeachComboUnit, JvExStdCtrls, JvCombobox, JvDBSearchComboBox, Vcl.DBCtrls, ComboBoxRW, frxExportDOCX, frxClass,
  frxExportPDF, frxDBSet, frxRich, frxExportBaseDialog;

type
  TFrmPesqRenovacao = class(TfrmBaseDBPesquisa)
    cdsBuscocli_codigo: TStringField;
    cdsBuscocli_razao: TStringField;
    cdsBuscoCLI_DTULTCOM: TSQLTimeStampField;
    cdsBuscoULTVENCIMENTO: TSQLTimeStampField;
    cdsBuscoNovaTarefa: TBooleanField;
    cdsBuscoDiasPosVendas: TIntegerField;
    cdsBuscoULTPARCELA: TFMTBCDField;
    cdsBuscoDiasPreVcto: TIntegerField;
    Label1: TLabel;
    edVendedorCodigo: TEdit;
    edVendedor: TSgDbSearchCombo;
    qRep: TSQLQuery;
    chkVenda30: TCheckBox;
    chkVcto30dias: TCheckBox;
    chkVcto60: TCheckBox;
    chkVendas60: TCheckBox;
    cdsBuscoREP_CODIGO: TStringField;
    chkVencida: TCheckBox;
    cdsBuscoNPARCELA: TIntegerField;
    cdsBuscoREP_RAZAO: TStringField;
    btnCriarTarefa: TSpeedButton;
    chkVendas90: TCheckBox;
    cdsBuscorep_nome: TStringField;
    chkClienteAtrasos: TCheckBox;
    cdsBuscoVencimento: TSQLTimeStampField;
    cdsBuscoBANCO: TStringField;
    cdsBuscoSTATUS: TStringField;
    labStatus: TLabel;
    cbStatus: TComboBox;
    Label2: TLabel;
    CbBancos: TComboBoxRw;
    chkDiasVariaveis: TCheckBox;
    edDias: TEdit;
    qCli: TSQLQuery;
    Label3: TLabel;
    EdClienteCodigo: TEdit;
    PesqCliente: TSgDbSearchCombo;
    edtAtrasos: TEdit;
    lbAtrasos: TLabel;
    pmMenu: TPopupMenu;
    Enviarcartadecobranaporemail1: TMenuItem;
    frxCartaCobranca: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxDOCXExport1: TfrxDOCXExport;
    cdsCarta: TClientDataSet;
    cdsCartaFPC_VENCTO: TSQLTimeStampField;
    cdsCartaFPC_DTEMIS: TSQLTimeStampField;
    cdsCartaFPC_NUMER: TStringField;
    cdsCartaFPC_VLPARC: TFMTBCDField;
    cdsCartaFPC_COBNUM: TStringField;
    cdsCartaFPC_JUROS: TFMTBCDField;
    cdsCartaFPC_MULTA: TFMTBCDField;
    frxDBDataset1: TfrxDBDataset;
    miImpcartaCobranca: TMenuItem;
    dspCarta: TDataSetProvider;
    cdsCartaCLI_CODIGO: TStringField;
    cdsCartaCLI_ENDERE: TStringField;
    cdsCartaCLI_BAIRRO: TStringField;
    cdsCartaCLI_CIDADE: TStringField;
    cdsCartaCLI_CEP: TStringField;
    cdsCartaCLI_RAZAO: TStringField;
    cdsCartaCLI_UF: TStringField;
    frxRichObject1: TfrxRichObject;
    cdsCartaCLI_EMAIL: TStringField;
    cdsCartaBAN_JUROMES: TFMTBCDField;
    cdsCartaBAN_MULTA: TFMTBCDField;
    cdsCartaatrasos: TIntegerField;
    cdsBuscoFPC_ENVIADO_CARTA: TStringField;
    cdsCartaNF_NUM_NFE: TIntegerField;
    cdsCartaNFSE: TStringField;
    cdsBuscoFPC_VLPARC: TFMTBCDField;
    cdsBuscoFPC_NUMER: TStringField;
    lblCobranca: TLabel;
    chkClientesCadastradosSemCompras: TCheckBox;
    cdsCartaFAT_REGISTRO: TIntegerField;
    cdsBuscoFAT_CODIGO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridCellClick(Column: TColumn);
    procedure cdsBuscoCalcFields(DataSet: TDataSet);
    procedure edVendedorSelect(Sender: TObject);
    procedure cdsBuscoFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure ChkAcaoonClick(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure cdsBuscoNovaTarefaGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnLimparClick(Sender: TObject);
    procedure btnCriarTarefaClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure EdClienteCodigoExit(Sender: TObject);
    procedure EdClienteCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdClienteCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure PesqClienteSelect(Sender: TObject);
    procedure PesqClienteButtonClick(Sender: TObject);
    procedure edtAtrasosKeyPress(Sender: TObject; var Key: Char);
    procedure Enviarcartadecobranaporemail1Click(Sender: TObject);
    procedure frxCartaCobrancaGetValue(const VarName: string; var Value: Variant);
    procedure cdsCartaCalcFields(DataSet: TDataSet);
    procedure cdsBuscoFPC_ENVIADO_CARTAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure chkClientesCadastradosSemComprasClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
   Pesquisando : Boolean;
   procedure Filtro;

   procedure ValidarTarefas;
   procedure GravarTarefas(const assunto: WideString  ; prazo : TDateTime);
  end;

var
  FrmPesqRenovacao: TFrmPesqRenovacao;

implementation

uses  uteis, pesquisaclientesform, InicioDB,DateUtils, urenovacao, cli0001, EMAIL0001, UFUNCOES ;

{$R *.dfm}


{ TfrmBaseDBPesquisa1 }

procedure TFrmPesqRenovacao.btnCriarTarefaClick(Sender: TObject);
var
  tcr  :TFrmRenovar;

begin
  inherited;
  ValidarTarefas;
  tcr := TFrmRenovar.Create(self);

  if chkClienteAtrasos.Checked then
  begin
    tcr.mAssunto.Lines.Clear;
    tcr.mAssunto.Lines.Add('INICIADO PROCESSO DE COBRANÇA');
    tcr.mAssunto.Lines.Add('');
    tcr.mAssunto.Lines.Add('FATURAS');
    cdsBusco.DisableControls;
    cdsBusco.Filtered:= False;
    cdsBusco.Filter:= 'NovaTarefa =true';
    cdsBusco.Filtered:= true  ;
    if cdsBusco.RecordCount = 0  then
    begin
      cdsBusco.Filtered:= False;
      GeraException('Selecione ao menos um cliente');
    end;

    cdsBusco.First;
    while not cdsBusco.eof do
    begin
      tcr.mAssunto.Lines.Add(cdsBuscoFAT_CODIGO.AsString + ' - VENCIMENTO: ' + cdsBuscoULTVENCIMENTO.AsString );
      cdsBusco.Next;
    end;

  end;

  try
     if tcr.ShowModal = mrOk then
     begin
       try
        GravarTarefas(tcr.assunto,tcr.Prazo);
        ShowMessage('Tarefa(s) criada(s) com sucesso.');
       except
         raise;
       end;
       cdsBusco.Filtered:= False;
       cdsbusco.EnableControls;
       btnPesquisa.Click;
     end;


  finally
    tcr.Free;
  end;

end;

procedure TFrmPesqRenovacao.btnLimparClick(Sender: TObject);
begin

  if dbInicio.Empresa.fCODIGO_REPRES = '000' then
    edVendedor.idRetorno := '';
  chkVenda30.Checked := False;
  chkVendas60.Checked := False;
  chkVcto30dias.Checked := False;
  chkVcto60.Checked := False;
  inherited;
end;

procedure TFrmPesqRenovacao.btnNovoClick(Sender: TObject);
begin
  CampoID := 'CLI_CODIGO';
  inherited;
end;

procedure TFrmPesqRenovacao.btnPesquisaClick(Sender: TObject);
begin
  if Pesquisando then
    exit ;
  inherited;

end;

procedure TFrmPesqRenovacao.cdsBuscoCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsBuscoCLI_DTULTCOM.AsDateTime = 0  then
     cdsBuscoDiasPosVendas.AsInteger := 0
  else
    cdsBuscoDiasPosVendas.AsInteger :=  DaysBetween(cdsBuscoCLI_DTULTCOM.AsDateTime, Date)      ;
  if cdsBuscoULTVENCIMENTO.AsDateTime > date then
    cdsBuscoDiasPreVcto.AsInteger := DaysBetween(date,cdsBuscoULTVENCIMENTO.AsDateTime)
  else
    cdsBuscoDiasPreVcto.AsInteger := 0;
end;

procedure TFrmPesqRenovacao.cdsBuscoFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  if chkVcto30dias.Checked then
    Accept := ( DataSet.FieldByName('DiasPreVcto').AsInteger<=30) and (DataSet.FieldByName('DiasPreVcto').AsInteger> 0)
 else if chkVcto60.Checked then
    Accept := ( DataSet.FieldByName('DiasPreVcto').AsInteger<=60) and (DataSet.FieldByName('DiasPreVcto').AsInteger> 0)

 else if chkVenda30.Checked then
    Accept := ( DataSet.FieldByName('DiasPosVendas').AsInteger>=30)
 else if chkVendas60.Checked then
   Accept := ( DataSet.FieldByName('DiasPosVendas').AsInteger>=60)
 else if chkVendas90.Checked then
   Accept := ( DataSet.FieldByName('DiasPosVendas').AsInteger>=90)
 else if chkDiasVariaveis.Checked then
   Accept := ( DataSet.FieldByName('DiasPosVendas').AsInteger>= StrToIntDef(edDias.Text,0) )

 else if chkVencida.Checked then
   Accept := (DataSet.FieldByName('ULTVENCIMENTO').AsDateTime < date) and  ( DataSet.FieldByName('ULTVENCIMENTO').AsDateTime <> 0)

 else
   accept := True;
end;

procedure TFrmPesqRenovacao.cdsBuscoFPC_ENVIADO_CARTAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'S' then
    Text := 'Sim'
  else if Sender.IsNull or (Sender.AsString = 'N') then
    text := 'Não';


end;

procedure TFrmPesqRenovacao.cdsBuscoNovaTarefaGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  text := EmptyStr;
end;

procedure TFrmPesqRenovacao.cdsCartaCalcFields(DataSet: TDataSet);
begin
  inherited;

  // multa não importa o tempo de atraso
  if not DataSet.FieldByName('BAN_MULTA').IsNull and (DataSet.FieldByName('BAN_MULTA').AsFloat >0) then
    DataSet.FieldByName('fpc_multa').AsFloat := DataSet.FieldByName('fpc_vlparc').AsFloat * DataSet.FieldByName('BAN_MULTA').AsFloat/100
  else
    DataSet.FieldByName('fpc_multa').AsFloat := 0 ;
  if not DataSet.FieldByName('BAN_JUROMES').IsNull and (DataSet.FieldByName('BAN_JUROMES').AsFloat >0) then
     // parcela x  (juros /30 dias)/100  x atrasos
    DataSet.FieldByName('fpc_juros').AsFloat := RoundTo((DataSet.FieldByName('fpc_vlparc').AsFloat * RoundTo(DataSet.FieldByName('BAN_JUROMES').AsFloat/30) * DataSet.FieldByName('atrasos').AsInteger)/100)
  else
    DataSet.FieldByName('fpc_juros').AsFloat := 0 ;

end;

procedure TFrmPesqRenovacao.chkClientesCadastradosSemComprasClick(Sender: TObject);
begin
  inherited;
  chkVenda30.Checked := False;
  chkVendas60.Checked := False;
  chkVcto30dias.Checked := False;
  chkVcto60.Checked := False;
  chkVencida.Checked := False;
  chkVendas90.Checked := False;
  chkDiasVariaveis.Checked := False;
  chkClienteAtrasos.Checked := False;
  btnPesquisa.Click;
end;

procedure TFrmPesqRenovacao.ChkAcaoonClick(Sender: TObject);
var pesquisaAtrado : boolean;
begin
  inherited;
  if TCheckBox(Sender).Checked then
  begin
     lblCobranca.Caption := 'Para Clientes em atraso, clique com o botão direito do mouse para enviar a carta de cobrança.';
     edtAtrasos.Visible := chkClienteAtrasos.Checked;
     lbAtrasos.Visible  := chkClienteAtrasos.Checked;
     chkVenda30.OnClick := nil;
     chkVendas60.OnClick := nil;
     chkVcto30dias.OnClick := nil;
     chkVcto60.OnClick := nil;
     chkVencida.OnClick := nil;
     chkVendas90.OnClick := nil;
     chkDiasVariaveis.OnClick := nil;
     chkClienteAtrasos.OnClick := nil;
     chkVenda30.Checked := False;
     chkVendas60.Checked := False;
     chkVcto30dias.Checked := False;
     chkVcto60.Checked := False;
     chkVencida.Checked := False;
     chkVendas90.Checked := False;
     chkDiasVariaveis.Checked := False;
     pesquisaAtrado := chkClienteAtrasos.Checked;
     chkClienteAtrasos.Checked := False;

     TCheckBox(Sender).Checked := True;

     chkVenda30.OnClick := ChkAcaoonClick;
     chkVendas60.OnClick := ChkAcaoonClick;
     chkVcto30dias.OnClick := ChkAcaoonClick;
     chkVcto60.OnClick := ChkAcaoonClick;
     chkVencida.OnClick := ChkAcaoonClick;
     chkVendas90.OnClick := ChkAcaoonClick;
     chkDiasVariaveis.OnClick := ChkAcaoonClick;
     chkClienteAtrasos.OnClick := ChkAcaoonClick;

  end
  else
    lblCobranca.Caption := '';


  if chkClienteAtrasos.Checked or pesquisaAtrado then
     btnPesquisa.Click
  else if not (chkVenda30.Checked or  chkVendas60.Checked or chkVcto30dias.Checked
             or chkVcto60.Checked or chkVencida.Checked or chkVendas90.Checked  or chkDiasVariaveis.Checked or
             chkClienteAtrasos.Checked)

   then
  begin
    cdsBusco.Filtered := False;
    btnPesquisa.Click;
  end
  else
  begin
    cdsBusco.Filtered := False;
    cdsBusco.Filtered := True;
  end;
  cbStatus.Visible :=  chkClienteAtrasos.Checked ;
  labStatus.Visible := chkClienteAtrasos.Checked;

end;

procedure TFrmPesqRenovacao.DBGridCellClick(Column: TColumn);
begin
  inherited;
  if not (cdsBusco.IsEmpty) and (Column.FieldName = 'NovaTarefa') then
  begin
      if  not (cdsBusco.State in dsEditModes)  then
        cdsBusco.Edit;
     cdsBuscoNovaTarefa.AsBoolean :=  not cdsBuscoNovaTarefa.AsBoolean;
     cdsBusco.Post;
  end;
end;

procedure TFrmPesqRenovacao.DBGridDblClick(Sender: TObject);
begin
  inherited;
  if not cdsBusco.IsEmpty then
  begin
    if not assigned(FormCliente) then
    begin
      FormCliente := TFormCliente.Create(Application);
      FormCliente.BotoesAcesso;
      FormCliente.BringToFront;
      FormCliente.BuscaCliente(cdsBuscocli_codigo.AsString );
      if (MDIChildCount > 1) then
        SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
      else
       FormCliente.Top := 0;
    end;
  end;
end;

procedure TFrmPesqRenovacao.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
Check: Integer;
R: TRect;
begin

  if not cdsBusco.IsEmpty then
  begin
    if Column.FieldName = 'NovaTarefa' then
    begin
      TDBGrid(Sender).Canvas.FillRect(Rect);
      if cdsbusco.FindField('NovaTarefa').AsBoolean then
          Check := DFCS_CHECKED
      else
          Check := 0;
      R:=Rect;
      InflateRect(R,-2,-2); //Diminui o tamanho do CheckBox
      TDBGrid(sender).Canvas.Font.Color :=  TDBGrid(sender).Canvas.Brush.Color;
      DrawFrameControl(TDBGrid(Sender).Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or Check);
    end;
  end;


end;

procedure TFrmPesqRenovacao.EdClienteCodigoExit(Sender: TObject);
begin
  inherited;
  edClienteCodigo.Text:=StrZero(EdClienteCodigo.Text,5);
  if edClienteCodigo.Text<>'00000' then
  begin
      PesqCliente.idRetorno:=edClienteCodigo.Text;
      if PesqCliente.idRetorno='' then
         GeraException('Cliente não localizado com o código informado');

  end
  Else
  begin
      edClienteCodigo.clear;
      PesqCliente.Clear;
  end;
  btnPesquisa.Click;
end;

procedure TFrmPesqRenovacao.EdClienteCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
      PesqCliente.Button.Click;
end;

procedure TFrmPesqRenovacao.EdClienteCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Pos(key,'1234567890'+#8)=0 then
     key := #0;
end;

procedure TFrmPesqRenovacao.edtAtrasosKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['1','2','3','4','5','6','7','8','9','0']) then
     key := #0;
end;

procedure TFrmPesqRenovacao.edVendedorSelect(Sender: TObject);
begin
  inherited;
  if edVendedor.idRetorno <> '' then
   edVendedorCodigo.Text := edVendedor.idRetorno;
  btnPesquisa.Click;
end;

procedure TFrmPesqRenovacao.Enviarcartadecobranaporemail1Click(Sender: TObject);
var
 email : string;
 msg: String;
 tcr : TfrmEMAIL0001;
 Dias :String;
 clone : TClientDataSet;
begin
  inherited;

  try
    if edtAtrasos.Text = '' then
      Dias := '5'
    else
      Dias := edtAtrasos.Text;
      cdsCarta.CLOSE;
      OpenAux3(' SELECT fat_registro, cast(datediff (day, FPC_VENCTO, CURRENT_DATE) as integer) atrasos, FPC_VENCTO, FPC_DTEMIS, FPC_NUMER, FPC_VLPARC,FPC_COBNUM, '+ //FPC_JUROS, FPC_MULTA
               ' CL.CLI_CODIGO, CL.CLI_ENDERE, CL.CLI_BAIRRO, CL.CLI_CEP, CL.CLI_CIDADE, CL.CLI_RAZAO, CL.CLI_UF, CL.CLI_EMAIL, BAN_JUROMES, BAN_MULTA, nf.NF_NUM_NFE, '+
               ' COALESCE(                                                       '+
               '         (SELECT first 1 nfse_num_danfse FROM NFSE_FATPC nsp        '+
               '         INNER JOIN NFSERVICO se ON (se.NFSE_CODIGO = nsp.NFSE_CODIGO) '+
               '         WHERE nsp.FAT_CODIGO = FAT.fat_codigo                    '+
               '         AND nsp.FPC_NUMER = FAT.FPC_NUMER                         '+
               '         AND nsp.EMP_CODIGO = FAT.EMP_CODIGO                       '+
               '         AND NFSE_DTCANCELADO IS NULL                             '+
               '), '''') as NFSE     '+
               ' FROM FAT_PC01 FAT JOIN CLI0000 CL ON (CL.CLI_CODIGO = FAT.CLI_CODIGO) '+
               ' LEFT JOIN NF0001 nf ON (nf.NF_NOTANUMBER = fat.FAT_CODIGO AND nf.EMP_CODIGO = fat.EMP_CODIGO)  '+
               '  LEFT JOIN BAN0000 BA ON (BA.BAN_CODIGO = FAT.BAN_CODIGO) ' +
               '  WHERE CL.CLI_CODIGO = '+  (cdsBuscocli_codigo.AsString)    +
               '  AND FPC_SITPAG = ''P'' '+
               '  AND FPC_EXCLUSAO = ''N'' '+
               '  AND datediff (day, FPC_VENCTO, CURRENT_DATE) >  '+DIAS);

      if qaux3.IsEmpty then
        raise Exception.Create('Não há atrasos');
       cdsCarta.Open;
      clone := TClientDataSet.Create(Self);
      try
        clone.CloneCursor(cdsCarta,true);
        clone.First;
        while not clone.Eof do
        begin
          if (clone.FieldByName('NFSE').AsString <> EmptyStr) and (clone.FieldByName('NF_NUM_NFE').AsString <> '0' )
          and (clone.FieldByName('NF_NUM_NFE').AsString <> EmptyStr)          then
            if cdsCarta.Locate('NF_NUM_NFE;NFSE',VarArrayOf(['0',clone.FieldByName('NFSE').AsString]),[])  then
               cdsCarta.Delete;


          clone.Next;
        end;
      finally
        clone.Free;
      end;



      TfrxPictureView(frxCartaCobranca.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
      if TMenuItem(sender).Name='miImpcartaCobranca' then
      begin
         frxCartaCobranca.ShowReport();
         exit;
      end;
      if dbInicio.Empresa.EmailUserNameFinanceiro = '' then
        raise Exception.Create('Não configurado email do financeiro. Preencha o envio de email no cadastro de empresa.');



       tcr := TfrmEmail0001.Create(Nil);
       try
          try
           CreateDirectory(PWideChar(dbInicio.SistemaLocal+'carta'), nil);
          except
          end;
          frxPDFExport1.DefaultPath := dbInicio.SistemaLocal+'carta';
          frxPDFExport1.FileName    := 'Carta'+qaux3.FieldByName('CLI_CODIGO').AsString + '.pdf';
          frxPDFExport1.ShowDialog  := False;
          frxCartaCobranca.PrepareReport();
          frxCartaCobranca.Export(frxPDFExport1);

          tcr.modulo := 'CRM Renovação';
          tcr.titulo := ' Nº ' + qAux3.FieldByName('NF_NUM_NFE').AsString  + ' - R$ ' +  FormatFloat('##0.00', qaux3.FieldByName('FPC_VLPARC').AsFloat);

          tcr.sClienteCodigo :=  qaux3.FieldByName('cli_codigo').AsString;
          tcr.sCaminhoArquivo := frxPDFExport1.FileName;
          tcr.email_de_enviado := dbInicio.Empresa.EmailUserNameFinanceiro;
          tcr.ssenha := Trim(dbInicio.Empresa.EmailPassworldFinanceiro);
          tcr.nome_envio := DBInicio.Empresa.RAZAO;
          tcr.sEmailCliente   := qaux3.FieldByName('CLI_EMAIL').AsString+';'+DBInicio.Empresa.EmailInterno;
          tcr.sAssunto        := 'Cobrança  de '+dbInicio.Empresa.FANTASIA + ' para ' +qaux3.FieldByName('CLI_RAZAO').asstring  ;

          tcr.MMsg.Lines.Add('');
          tcr.MMsg.Lines.Add('OLÁ '+ qaux3.FieldByName('CLI_RAZAO').AsString+ ', tudo bem por ai ? ');
          tcr.MMsg.Lines.Add('');

          tcr.MMsg.Lines.Add('Solicito gentileza verificar o (s) boleto (s) que consta em aberto em nosso sistema até o momento.');
          tcr.MMsg.Lines.Add('Se porventura já ocorreu o pagamento por favor entre em contato conosco para regularização.');
          tcr.MMsg.Lines.Add('ATENCIOSAMENTE ');


          tcr.MMsg.Lines.Add('');
          tcr.MMsg.Lines.Add(' '+DBInicio.empresa.FANTASIA);
          tcr.ProcessarInformacoes;
          if tcr.ssucesso  then
          begin
            GravaHistoricoEmail(tcr.modulo, tcr.EdMail.Text,  tcr.titulo, 'C', qaux3.FieldByName('CLI_CODIGO').AsString, Now, DBInicio.Usuario.CODIGO, tcr.sCaminhoArquivo);
            email:=  tcr.EdMail.Text;
            msg := 'Email enviado a '+email+' com sucesso';
            qAux3.First;
            while not qAux3.eof do
            begin
              ExecSql('update FAT_PC01 set FPC_ENVIADO_CARTA = ''S'' WHERE FAT_REGISTRO = ' + qAux3.FieldByName('FAT_REGISTRO').AsString );
              qAux3.Next;
            end;
            btnPesquisa.Click;
          end;
       finally
         FreeAndNil(tcr);
       end;
      Screen.Cursor := crHourGlass;

  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmPesqRenovacao.Filtro;
var DiasAtrasos :string;
begin
  if Pesquisando then
   exit ;
  with qBusco do
	begin
    if chkClienteAtrasos.Checked then
    begin
      if edtAtrasos.Text = '' then
        DiasAtrasos := '5'
      else
        DiasAtrasos := edtAtrasos.Text;
    end;
    sql.Clear;
    sql.Add('SELECT ' + iif(chkClienteAtrasos.Checked, 'PC.FAT_CODIGO', ' ''0'' AS FAT_CODIGO')  + ', cl.CLI_CODIGO, CLI_RAZAO, CLI_DTULTCOM ,      '+
            '(SELECT  max(FPC_VENCTO) FROM FAT_PC01 pc        ' +
            ' WHERE pc.CLI_CODIGO = cl.CLI_CODIGO '             +
             ConcatSe(' AND PC.', dbinicio.ExclusivoSql('RECEBER')) +
            ' AND FPC_EXCLUSAO = ''N'') AS ULTVENCIMENTO, '+
            '(SELECT  MAX(FPC_VLPARC) FROM FAT_PC01 pc                                        '+
            ' WHERE pc.CLI_CODIGO = cl.CLI_CODIGO AND FPC_EXCLUSAO = ''N''                    '+
             ConcatSe(' AND PC.', dbinicio.ExclusivoSql('RECEBER')) +
            ' AND FPC_EXCLUSAO = ''N'' '+
            ' AND FPC_VENCTO =   ( SELECT  max(FPC_VENCTO) FROM FAT_PC01 pc                   '+
            '                       WHERE pc.CLI_CODIGO = cl.CLI_CODIGO                      '+
                                     ConcatSe(' AND PC.', dbinicio.ExclusivoSql('RECEBER')) +
                                     ' AND FPC_EXCLUSAO = ''N'' '+
                                     '              ) ) AS ULTPARCELA,     '+
            '  (SELECT  MAX(FPC_NPARCELAS) FROM FAT_PC01 pc                                   '+
            '   WHERE pc.CLI_CODIGO = cl.CLI_CODIGO AND FPC_EXCLUSAO = ''N''                  '+
               ConcatSe(' AND PC.', dbinicio.ExclusivoSql('RECEBER')) +
            '   AND FPC_EXCLUSAO = ''N'' '+
            '   AND FPC_VENCTO =   ( SELECT  max(FPC_VENCTO) FROM FAT_PC01 pc                 '+
            '                         WHERE pc.CLI_CODIGO = cl.CLI_CODIGO'+
                                     ConcatSe(' AND PC.', dbinicio.ExclusivoSql('RECEBER')) +
                                     ' AND FPC_EXCLUSAO = ''N'' '+
            '  ) ) AS NPARCELA,     '+
            '   cl.REP_CODIGO,  rp.rep_nome, rp.REP_RAZAO,                                    '+
            '    (SELECT MAX(PED_DTENTRADA) FROM PED0000 pe                                   '+
            '   WHERE PE.CLI_CODIGO = CL.CLI_CODIGO'+
              ConcatSe(' AND ', dbinicio.ExclusivoSql('PEDIDOS')) +       ' ) ULTPEDIDO ,     ');
      If chkClienteAtrasos.Checked then
         sql.Add('FPC_VLPARC, FPC_NUMER, FPC_ENVIADO_CARTA,  FPC_VENCTO vencimento,  BAN_APELIDO as BANCO, FPC_STATUS as status ')
      else
         sql.Add(' (select sum (FPC_VLPARC - COALESCE(FPC_VLPAGO,0) ) from FAT_PC01 PC where pc.CLI_CODIGO = cl.CLI_CODIGO AND FPC_EXCLUSAO = ''N''  AND FPC_SITPAG = ''P'' AND FPC_VENCTO < CURRENT_DATE) AS FPC_VLPARC, '+
         ' '''' FPC_NUMER, ''N'' AS FPC_ENVIADO_CARTA, cast(null as timestamp) vencimento,  BAN_APELIDO AS BANCO, '''' as Status  ');
       sql.Add(' FROM CLI0000 cl                                                                 '+
               ' LEFT JOIN  REP0000 rp ON (rp.REP_CODIGO = cl.REP_CODIGO) ');

     If chkClienteAtrasos.Checked then
       sql.Add(' JOIN FAT_PC01 PC ON (' +
               ' FPC_SITPAG = ''P''  '+
               ' AND pc.CLI_CODIGO = cl.CLI_CODIGO  '+
               ' AND FPC_EXCLUSAO = ''N'' '+
               ConcatSe(' AND PC.', dbinicio.ExclusivoSql('RECEBER')) +
              ' AND datediff (day, FPC_VENCTO, CURRENT_DATE) > '+DiasAtrasos+'    )'+
             ' LEFT JOIN  BAN0000 B ON (B.BAN_CODIGO = PC.BAN_CODIGO ) '  )
      else
       sql.Add('LEFT JOIN  BAN0000 B ON (B.BAN_CODIGO = cl.BAN_CODIGO) ');
//       ')
//       SqlAdd('EXISTS (SELECT FPC_VENCTO,CLI_CODIGO FROM FAT_PC01 PC '+
//              ' WHERE FPC_SITPAG = ''P''  '+
//              ' AND pc.CLI_CODIGO = cl.CLI_CODIGO  '+
//              ' AND FPC_EXCLUSAO = ''N'' '+
//              ConcatSe(' AND PC.', dbinicio.ExclusivoSql('RECEBER')) +
//              ' AND datediff (day, FPC_VENCTO, CURRENT_DATE) > 5    ) ');

     // TEVE COMPRA
   //  SqlAdd(' CLI_DTULTCOM IS NOT NULL');
     if not chkClientesCadastradosSemCompras.Checked then
       SqlAdd(' CLI_INATIVO = ''A'' ');// and CLI_DTULTCOM IS NOT NULL    ');

     if chkClientesCadastradosSemCompras.Checked then
       SqlAdd(' cl.CLI_CODIGO NOT IN (SELECT pd.CLI_CODIGO FROM PED0000 pd ORDER BY pd.CLI_CODIGO) ');


     //NÃO TEVE TAREFA ASSOCIADA
     SqlAdd(' (SELECT cast(COUNT(1) as integer) FROM TAREFAS_CRM CR                           '+
            '  WHERE TRF_NIVEL =2 AND TRF_ACAO = 4                                            '+
             ConcatSe(' AND ', dbinicio.ExclusivoSql('PEDIDOS')) +
            '  AND TRF_EXCLUIDO = ''N'' AND CR.CLI_CODIGO = CL.CLI_CODIGO  ) =0               ');
//            ' ORDER BY CLI_DTULTCOM DESC                                                      ');

     If (chkClienteAtrasos.Checked)  and  (cbStatus.ItemIndex <> -1)  then
        SqlAdd('FPC_STATUS =' + QuotedStr(cbStatus.Text));
     if CbBancos.idRetorno <> '' then
      SqlAdd(' B.BAN_APELIDO =  ' +QuotedStr(CbBancos.idRetorno));
     if edVendedor.idRetorno <> '' then
       SqlAdd('cl.REP_CODIGO = ' +QuotedStr(edVendedor.idRetorno) );
      if PesqCliente.idRetorno <> '' then
        SqlAdd('CL.CLI_CODIGO = '+QuotedStr(PesqCliente.idRetorno));
     SqlAdd(ConcatSe(' CL.', dbinicio.ExclusivoSql('CLIENTES')) );
  end;
  if dbInicio.IsDesenvolvimento then
    copyToClipboard(qBusco.Sql.Text);
end;

procedure TFrmPesqRenovacao.FormClose(Sender: TObject; var Action: TCloseAction);
var
  nome: string;
begin
  inherited;
  nome:= 'frmPesqRenovacao.DBGrid.grid';
  dbgrid.Columns.SaveToFile(dbInicio.SistemaLocal+'settings\'+nome);
  Action := caFree;
end;

procedure TFrmPesqRenovacao.FormCreate(Sender: TObject);
begin
  inherited;
  Self.ProcedureFiltro:=Filtro;
  self.Constraints.MinHeight:= 612;;
  self.Constraints.MinWidth:=1109;
  self.Constraints.MaxHeight:= 0;
  self.width:=1109;
  self.height:=612;
  Pesquisando:= True;
  if dbInicio.Empresa.fCODIGO_REPRES <> '000' then
  begin
    edVendedor.Enabled :=  not DBInicio.Empresa.VisualizaPedidos_CRM;
    edVendedorCodigo.Enabled :=  not DBInicio.Empresa.VisualizaPedidos_CRM;
    edVendedor.idRetorno := dbInicio.Empresa.fCODIGO_REPRES;
  end;


  chkVcto30dias.Checked := True;
  Pesquisando:= False;
  btnPesquisa.Click;
  cdsBusco.Filtered := False;
  cdsBusco.Filtered := True;

end;

procedure TFrmPesqRenovacao.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmPesqRenovacao := nil;
end;

procedure TFrmPesqRenovacao.FormShow(Sender: TObject);
var
  nome: string;
begin
  inherited;
  AbreTabela:=True;
  lblCobranca.Caption := '';
  nome:= 'frmPesqRenovacao.DBGrid.grid';
  if FileExists(nome) then
    dbgrid.Columns.LoadFromFile(dbInicio.SistemaLocal+'settings\'+nome);

  //Filtro; // abre tabelas
end;

procedure TFrmPesqRenovacao.frxCartaCobrancaGetValue(const VarName: string; var Value: Variant);
var ano , mes, dia: word;
begin
  inherited;
  if VarName = 'EMPRESA' then
  begin
     Value := DBInicio.Empresa.RAZAO;
     exit;
  end;
  if VarName = 'INSCEST' then
  begin
     Value := DBInicio.Empresa.INSC_EST ;
     exit;
  end;
  if VarName = 'CNPJ' then
  begin
     Value := MascaraCNPJ_CPF( DBInicio.Empresa.CNPJ_CNPF);
     exit;
  end;
  if VarName = 'ENDERECO' then
  begin
     Value := DBInicio.Empresa.ENDERECO;
     exit;
  end;
  if VarName = 'CEP' then
  begin
     Value := DBInicio.Empresa.CEP;
     exit;
  end;
  if VarName = 'CIDADE' then
  begin
     Value := DBInicio.Empresa.CIDADE;
     exit;
  end;
  if VarName = 'ESTADO' then
  begin
     Value := DBInicio.Empresa.UF;
     exit;
  end;
  if VarName = 'EMAIL' then
  begin
     Value := DBInicio.Empresa.EMAIL;
     exit;
  end;
  if VarName = 'HOME' then
  begin
     Value := DBInicio.Empresa.HOME_PAGE;
     exit;
  end;
  if VarName = 'FONE' then
  begin
     Value := DBInicio.Empresa.FONE;
     exit;
  end;
  if VarName = 'FAX' then
  begin
     Value := DBInicio.Empresa.FAX;
     exit;
  end;
  if VarName = 'DataExtenso' then
  begin

    Value := DataExtenso(date);

  end;

end;

procedure TFrmPesqRenovacao.GravarTarefas(const assunto: WideString; prazo: TDateTime);
var clone : TClientDataSet;
 sql :String;
 registro : integer;
 email,fone :string;
begin
 clone := TClientDataSet.Create(Self);
 try
   clone.CloneCursor(cdsBusco,false);
   clone.Filtered := False;
   clone.Filter := 'NovaTarefa=true';
   clone.Filtered:= True;
   clone.First;
   while not clone.Eof do
   begin
    OpenAux('select CLI_EMAIL, CLI_FONE from cli0000 where cli_codigo  = ' + QuotedStr( clone.FieldByName('CLI_CODIGO').AsString)+
      ConcatSe(' and ' , DBInicio.ExclusivoSql('CLIENTES')));
    email := qaux.FieldByName('cli_email').AsString;
    fone := qaux.FieldByName('CLI_FONE').AsString;

    registro:=  GetNextSequence('GEN_TAREFAS');
    sql:= 'INSERT INTO tarefas_crm (TRF_REGISTRO, TRF_DATA_REGISTRO, EMP_CODIGO, REP_CODIGO, TRF_PRAZO, TRF_ASSUNTO, TRF_FINALIZADA, TRF_EXCLUIDO, '+
          ' TRF_NIVEL, CLI_CODIGO, TRF_ACAO , TRF_ORIGEM,TRF_EMAILCONTATO,TRF_CONTATOFONE  )'+
          ' VALUES ('+IntToStr(REGISTRO)+','+ DateTimeToSQL(now) + ','+ QuotedStr(DBInicio.Empresa.EMP_CODIGO)+ ','+
          QuotedStr(clone.FieldByName('REP_CODIGO').AsString)+', '+DateTimeToSQL(prazo)+',' +QuotedStr(assunto) + ','+
          QuotedStr('N')+','+QuotedStr('N')+',2,'+QuotedStr(clone.FieldByName('CLI_CODIGO').AsString)+ ','+
          '4,0,'+ QuotedStr(email)+','+ QuotedStr(fone)+')';

    try
     ExecSql(SQL);
    except
      raise
    end;



    clone.Next;
   end;
 finally
   clone.Free;
 end;

end;



procedure TFrmPesqRenovacao.PesqClienteButtonClick(Sender: TObject);
var tcr : tFrmPesquisaClientes;
begin
  inherited;
    tcr:= tFrmPesquisaClientes.Create(self);
    try
        tcr.ShowModal;
        if tcr.modalresult = mrok then
           PesqCliente.idRetorno := tcr.IDRetorno;
    finally
         FreeAndNil(tcr);
    end;

end;

procedure TFrmPesqRenovacao.PesqClienteSelect(Sender: TObject);
begin
  inherited;
  if PesqCliente.IdRetorno <> '' then
    EdClienteCodigo.Text := PesqCliente.IdRetorno
  else
  begin
   PesqCliente.Clear;
   EdClienteCodigo.Clear;

  end;
end;

procedure TFrmPesqRenovacao.ValidarTarefas;
var clone: TClientDataSet;
begin
  clone := TClientDataSet.Create(self);
  try
    clone.CloneCursor(cdsBusco,false);
    clone.Filtered:= False;
    clone.Filter:= 'NovaTarefa =true';
    clone.Filtered:= true  ;
    if clone.RecordCount = 0  then
      GeraException('Selecione ao menos um cliente');

  finally
   FreeAndNil(clone);
  end;
end;

end.
