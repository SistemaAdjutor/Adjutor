update prd_ensa set prd_ensa.amx_codigo = '0001'
   WHERE prd_ensa.emp_codigo IN (
   SELECT prmt0001.pmt_almox from prmt0001
   where prmt0001.pmt_almox = 'S');

