UPDATE  VERSAOSISTEMA 
SET VERSAOSISTEMA.SCRIPTADJUTOR = '3.0.9.615',
    VERSAOSISTEMA.DATA   = '14.08.2026',
	VERSAO = '3.0.9.615'
 where VERSAOSISTEMA.CODIGO = 1;
commit work;

/* issue 2249 */
ALTER TABLE PRD0000 ADD PRD_PIS_ALIQUOTA NUMERIC(18,5);
ALTER TABLE PRD0000 ADD PRD_COFINS_ALIQUOTA NUMERIC(18,5);
COMMENT ON COLUMN PRD0000.PRD_PIS_ALIQUOTA IS 'Alíquota de PIS específica do produto. Quando informada, possui prioridade sobre a alíquota configurada no cadastro da empresa para emissão de documentos fiscais.';
COMMENT ON COLUMN PRD0000.PRD_COFINS_ALIQUOTA IS 'Alíquota de COFINS específica do produto. Quando informada, possui prioridade sobre a alíquota configurada no cadastro da empresa para emissão de documentos fiscais.';

