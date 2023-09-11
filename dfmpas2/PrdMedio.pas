unit PrdMedio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask,  rxToolEdit, ComCtrls, Buttons,RwFunc,DB,
  Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, Grids, DBGrids, FMTBCd, Data.DBXFirebird, SimpleDS, JvExMask, JvToolEdit;

type
  TFormRecalculaPMedio = class(TForm)
    PossBar: TProgressBar;
    Grp01: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    RadGroup: TRadioGroup;
    BitConfirmar: TBitBtn;
    BitCancelar: TBitBtn;
    SqlCdsMedia: TSQLClientDataSet;
    LabCustoAtivo: TLabel;
    SqlCdsMediaPRD_REFER: TStringField;
    SqlCdsMediaENF_QTDE: TFMTBCdField;
    SqlCdsMediaENF_PRECO: TFMTBCdField;
    SqlCdsMediaCUSTO: TFMTBCdField;
    SqlCdsMediaCUSTO_MEDIO: TFMTBCdField;
    SqlCdsMediaCUSTO_SEM_IMPOSTOS: TFMTBCdField;
    SqlCdsMediaCUSTO_AGREGADO: TFMTBCdField;
    EditDataI: TJvDateEdit;
    EditDataF: TJvDateEdit;
    procedure FormShow(Sender: tObject);
    procedure EditDataIExit(Sender: tObject);
    procedure EditDataFExit(Sender: tObject);
    procedure BitConfirmarClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure RadGroupClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure FormCreate(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRecalculaPMedio: TFormRecalculaPMedio;

implementation

uses DataCad, Men0001, uteis, iniciodb;

{$R *.dfm}

procedure TFormRecalculaPMedio.FormShow(Sender: tObject);
begin
    Left := 250;
    top  := 176;
   if RadGroup.ItemIndex = 0 then
      Grp01.Enabled := false
   else
      Grp01.Enabled := True;
end;

procedure TFormRecalculaPMedio.EditDataIExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'RadGroup') then
       begin
           EditDataI.Clear;
           EditDataF.Clear;
           exit;
       end;
    if not TestaDataStr(EditDataI.Text) then
          EditDataI.setfocus;

end;

procedure TFormRecalculaPMedio.EditDataFExit(Sender: tObject);
begin
    if not TestaDataStr(EditDataF.Text) then
       EditDataF.setfocus;
end;

procedure TFormRecalculaPMedio.BitConfirmarClick(Sender: tObject);
var
wMedia : Currency;
begin
    Screen.Cursor := crHourGlass;
    // 1 = preco media entre datas
    if RadGroup.ItemIndex = 1 then
       begin
           if (EditDataI.Text = '') or (EditDataF.Text = '') then
              begin
                  uteis.aviso('Deve informar um periódo !');
                  if EditDataI.text = '' then
                     EditDataI.SetFocus
                  else
                     EditDataF.SetFocus;
              end
           else
              begin
                  wSeleciona := ' AND T2.enf_entrada BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+''' ';
              end;
       end
    else
       // tudo
       begin
           wSeleciona := '';
       end;
    try
      SqlCdsMedia.Close;

      if Share('PRODUTOS')='C' then
         begin
           SqlCdsMedia.CommandText := 'SELECT '+
                                      '    T1.prd_refer, '+
                                      '    sum( T1.enf_qtde ) as enf_qtde, '+
                                      '    sum( T1.enf_preco ) as enf_preco, '+
                                      '    sum( (cast(T1.enf_qtde * T1.ENF_CUSTO AS numeric(18,4) )))  AS CUSTO, '+
                                      '    (cast(sum( (cast(T1.enf_qtde * T1.ENF_CUSTO AS numeric(18,4) ))) / '+
                                      '    sum( T1.enf_qtde ) AS numeric(18,4) ))  AS CUSTO_MEDIO, '+
                                      '    cast((sum( (cast(T1.enf_qtde * T1.ENF_CUSTO AS numeric(18,4) ))) - '+
                                      '    sum( (coalesce(T1.enf_it_valfrete,0) + coalesce(T1.enf_it_vldesp_aces,0) + '+
                                      '    coalesce(T1.enf_it_vlseguro,0) + coalesce(T1.enf_it_vlipi,0) + coalesce(T1.enf_it_vlsubtrib,0) ) )) '+
                                      '    / sum( T1.enf_qtde ) AS numeric(18,4) ) AS CUSTO_SEM_IMPOSTOS, '+
                                      '    cast((sum( (cast(T1.enf_qtde * T1.ENF_CUSTO AS numeric(18,4) ))) '+
                                      '    + sum( (coalesce(T1.enf_it_valfrete,0) + coalesce(T1.enf_it_vldesp_aces,0) '+
                                      '    + coalesce(T1.enf_it_vlseguro,0) + coalesce(T1.enf_it_vlipi,0) + coalesce(T1.enf_it_vlsubtrib,0) '+
                                      '    ) ))  / sum( T1.enf_qtde ) AS numeric(18,4) ) AS CUSTO_agregado'+
                                      ' FROM '+
                                      'enf_it01 T1 '+
                                      'join enf0001 T2 ON T2.enf_notanumber = T1.enf_it_notanumber AND T2.for_codigo = T1.for_codigo '+wSeleciona+
                                      'WHERE T1.enf_atualiza_preco = ''S'' '+
                                      'group by T1.prd_refer '+
                                      'ORDER BY T1.prd_refer';
        end
      else
         begin
            SqlCdsMedia.CommandText := 'SELECT '+
                                      '    T1.prd_refer, '+
                                      '    sum( T1.enf_qtde ) as enf_qtde, '+
                                      '    sum( T1.enf_preco ) as enf_preco, '+
                                      '    sum( (cast(T1.enf_qtde * T1.ENF_CUSTO AS numeric(18,4) )))  AS CUSTO, '+
                                      '    (cast(sum( (cast(T1.enf_qtde * T1.ENF_CUSTO AS numeric(18,4) ))) / '+
                                      '    sum( T1.enf_qtde ) AS numeric(18,4) ))  AS CUSTO_MEDIO, '+
                                      '    cast((sum( (cast(T1.enf_qtde * T1.ENF_CUSTO AS numeric(18,4) ))) - '+
                                      '    sum( (coalesce(T1.enf_it_valfrete,0) + coalesce(T1.enf_it_vldesp_aces,0) + '+
                                      '    coalesce(T1.enf_it_vlseguro,0) + coalesce(T1.enf_it_vlipi,0) + coalesce(T1.enf_it_vlsubtrib,0) ) )) '+
                                      '    / sum( T1.enf_qtde ) AS numeric(18,4) ) AS CUSTO_SEM_IMPOSTOS, '+
                                      '    cast((sum( (cast(T1.enf_qtde * T1.ENF_CUSTO AS numeric(18,4) ))) '+
                                      '    + sum( (coalesce(T1.enf_it_valfrete,0) + coalesce(T1.enf_it_vldesp_aces,0) '+
                                      '    + coalesce(T1.enf_it_vlseguro,0) + coalesce(T1.enf_it_vlipi,0) + coalesce(T1.enf_it_vlsubtrib,0) '+
                                      '    ) ))  / sum( T1.enf_qtde ) AS numeric(18,4) ) AS CUSTO_agregado'+
                                       ' FROM '+
                                       'enf_it01 T1 '+
                                       'join enf0001 T2 ON T2.enf_notanumber = T1.enf_it_notanumber AND T2.for_codigo = T1.for_codigo '+wSeleciona+
                                       'WHERE T1.enf_atualiza_preco = ''S'' and T1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+''''+
                                       'group by T1.prd_refer '+
                                       'ORDER BY T1.prd_refer';

         end;

      SqlCdsMedia.Open;

      if not SqlCdsMedia.IsEmpty then
         begin
             SqlCdsMedia.First;
             PossBar.Min := 0;
             PossBar.Max := SqlCdsMedia.RecordCount;
             SqlCdsMedia.DisableControls;
             while not SqlCdsMedia.Eof do
              begin
                  try
                    DataCadastros.CdsProdutos.close;
                    DataCadastros.CdsProdutos.CommandText := SQLDEF('PRODUTOS','Select P1.* from PRD0000 P1 ','WHERE P1.PRD_REFER = '''+SqlCdsMediaPRD_REFER.AsString+'''','P1.PRD_REFER','P1.');
                    DataCadastros.CdsProdutos.Open;
                    if DataCadastros.CdsProdutos.IsEmpty = false then
                       begin
                           wMedia := 0;
                           DataCadastros.CdsProdutos.Edit;
                           //Por custo liquido
                           if dbInicio.Empresa.wCalcularPM = 0 then
                              begin
                                 DataCadastros.CdsProdutosPRD_PMEDIO.AsCurrency := SqlCdsMediaCUSTO_MEDIO.AsCurrency;
                                 if (DataCadastros.CdsProdutosPRD_PMEDIO.AsCurrency = 0) then
                                    DataCadastros.CdsProdutosPRD_PMEDIO.AsCurrency := DataCadastros.CdsProdutosPRD_PCUSTO.AsCurrency;
                              end
                           else
                           //por custo agregado
                           if dbInicio.Empresa.wCalcularPM = 1 then
                              begin
                                 DataCadastros.CdsProdutosPRD_PMEDIO.AsCurrency := SqlCdsMediaCUSTO_AGREGADO.AsCurrency;
                                 if (DataCadastros.CdsProdutosPRD_PMEDIO.AsCurrency = 0) then
                                   DataCadastros.CdsProdutosPRD_PMEDIO.AsCurrency := DataCadastros.CdsProdutosPRD_CUSTOCOMIPI.AsCurrency;
                              end
                           else
                           //por custo sem imposto
                           if dbInicio.Empresa.wCalcularPM = 2 then
                              begin
                                 DataCadastros.CdsProdutosPRD_PMEDIO.AsCurrency  :=  SqlCdsMediaCUSTO_SEM_IMPOSTOS.AsCurrency;
                                 if (DataCadastros.CdsProdutosPRD_PMEDIO.AsCurrency = 0) then
                                    DataCadastros.CdsProdutosPRD_PMEDIO.AsCurrency := DataCadastros.CdsProdutosPRD_CUSTO_CREDITO.AsCurrency;
                              end;

                           // nao calcular aqui, ficou somente na entrada de nota - DataCadastros.CdsProdutosPRD_CUSTO_CREDITO.AsCurrency := SqlCdsMediaCUSTO_SEM_IMPOSTOS.AsCurrency;



                           //
                           (*if dbInicio.Empresa.wCalcularPM = 0 then
                              DataCadastros.CdsProdutosPRD_PMEDIO.AsCurrency := iif(wMedia=0,DataCadastros.CdsProdutosPRD_PCUSTO.AsCurrency,wMedia);
                           if dbInicio.Empresa.wCalcularPM = 1 then
                              DataCadastros.CdsProdutosPRD_PMEDIO.AsCurrency := iif(wMedia=0,DataCadastros.CdsProdutosPRD_CUSTOCOMIPI.AsCurrency,wMedia);
                           if dbInicio.Empresa.wCalcularPM = 2 then
                             DataCadastros.CdsProdutosPRD_PMEDIO.AsCurrency  := iif(wMedia=0,DataCadastros.CdsProdutosPRD_CUSTO_CREDITO.AsCurrency,wMedia);
                           // gravar zero em campos null
                           if DataCadastros.CdsProdutosPRD_CUSTO_CREDITO.IsNull then
                              DataCadastros.CdsProdutosPRD_CUSTO_CREDITO.AsCurrency := 0;
                           if DataCadastros.CdsProdutosPRD_CUSTOCOMIPI.IsNull then
                              DataCadastros.CdsProdutosPRD_CUSTOCOMIPI.AsCurrency   := 0;   *)

                           DataCadastros.CdsProdutos.ApplyUpdates(0);
                       end;

                    DataCadastros.CdsProdutos.close;
                    SqlCdsMedia.Next;
                    PossBar.Position := PossBar.Position +1;
                  except on E:EDataBaseError do
                      uteis.erro  (pchar('Erro ao atualizar a tabela de produtos !'+e.message));
                  end;
              end;

             try
               {Atualiza o preço medio como preço de custo se não houve preço}
               //DataCadastros.sqlUpdate.close;
               //DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Update PRD0000 set prd_pmedio = prd_pcusto ','where prd_pmedio = 0','','');
               //DataCadastros.sqlUpdate.Execsql;
                {Atualiza o preço acregado (com impostos) como custo se não houve preço}
               //DataCadastros.sqlUpdate.close;
               //DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Update PRD0000 set prd_custocomipi = prd_pcusto ','where prd_custocomipi = 0','','');
               //DataCadastros.sqlUpdate.Execsql;
               {Atualiza o preço com credito como custo medio se não houve preço}
               //DataCadastros.sqlUpdate.close;
               //DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Update PRD0000 set prd_custo_credito = prd_pmedio ','where prd_custo_credito = 0','','');
               //DataCadastros.sqlUpdate.Execsql;
               //

               DataCadastros.sqlUpdate.Close;

                if dbInicio.Empresa.wCalcularPM = 0 then
                  begin
                     DataCadastros.SqlUpdate.sql.text :='update '+
                                                            'prd0000 t1 '+
                                                            'set t1.prd_pmedio = t1.PRD_PCUSTO '+
                                                            'where t1.prd_refer not in (select t2.prd_refer from enf_it01 t2)';
                  end
               else
               //por custo agregado
               if dbInicio.Empresa.wCalcularPM = 1 then
                  begin
                     DataCadastros.SqlUpdate.sql.text :='update '+
                                                            'prd0000 t1 '+
                                                            'set t1.prd_pmedio = t1.PRD_CUSTOCOMIPI '+
                                                            'where t1.prd_refer not in (select t2.prd_refer from enf_it01 t2)';
                  end
               else
               //por custo sem imposto
               if dbInicio.Empresa.wCalcularPM = 2 then
                  begin
                     DataCadastros.SqlUpdate.sql.text :='update '+
                                                            'prd0000 t1 '+
                                                            'set t1.prd_pmedio = t1.PRD_CUSTO_CREDITO '+
                                                            'where t1.prd_refer not in (select t2.prd_refer from enf_it01 t2)';
                  end;

               DataCadastros.sqlUpdate.Execsql;
               DataCadastros.sqlUpdate.Close;

             except on E:EdataBaseError do
                uteis.erro  (pchar('Erro ao atualizar o preço médio, agregado e com crédito !'+e.message));
             end;

             uteis.aviso('Atualização efetuada com sucesso !');
             SqlCdsMedia.EnableControls;
             PossBar.Position := 0;
             RadGroup.SetFocus;
         end
      else
         begin
             if RadGroup.ItemIndex = 1 then
                begin
                    uteis.aviso('Não existe movimento neste período !');
                    EditDataI.SetFocus;
                end;
         end;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao abrir a tabela !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormRecalculaPMedio.BitCancelarClick(Sender: tObject);
begin
    Close;
end;

procedure TFormRecalculaPMedio.RadGroupClick(Sender: tObject);
begin
    if RadGroup.ItemIndex = 0 then
       begin
           Grp01.Enabled := false;
       end
    else
       begin
           Grp01.Enabled := true;
           EditDataI.SetFocus;
       end;
end;

procedure TFormRecalculaPMedio.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    //Close;
    Action := CaFree;
end;

procedure TFormRecalculaPMedio.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    screen.Cursor := crHourGlass;
    try
      Datacadastros.CdsProdutos.close;
      SqlCdsMedia.Close;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao fechar as tabelas !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormRecalculaPMedio.FormCreate(Sender: tObject);
begin
    wSeleciona := '';
  if dbInicio.Empresa.wCalcularPM = 0 then
    LabCustoAtivo.Caption := 'Calculando o PREÇO MÉDIO pelo CUSTO LÍQUIDO';
  if dbInicio.Empresa.wCalcularPM = 1 then
    LabCustoAtivo.Caption := 'Calculando o PREÇO MÉDIO pelo CUSTO AGREGADO';
  if dbInicio.Empresa.wCalcularPM = 2 then
    LabCustoAtivo.Caption := 'Calculando o PREÇO MÉDIO pelo CUSTO COM CRÉDITO';
end;

procedure TFormRecalculaPMedio.FormDestroy(Sender: TObject);
begin
     FormRecalculaPMedio := Nil;
end;

end.
