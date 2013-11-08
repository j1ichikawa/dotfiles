SELECT TOP (
	SELECT
		COUNT(ROWID)
	FROM
		M_EDI_DEFAULT_PARAM
	WHERE
		KAISHA_CD = 
         'GK' 
	)
	ROWID,
	KAISHA_CD,
	SEGMENT,
	PARAM_SECTION,
	COMMENTS,
	PARAM_VALUE,
	EX_NU1,
	EX_NU2,
	EX_NU3,
	EX_NU4,
	EX_NU5,
	EX_CD1,
	EX_CD2,
	EX_CD3,
	EX_CD4,
	EX_CD5,
	TOROKU_TM,
	TOROKU_TAMMATSU,
	HENKO_TM,
	HENKO_TAMMATSU
FROM
	(
SELECT
		0 AS FLG,
		M_BIZ_PARAM.ROWID,
		M_BIZ_PARAM.KAISHA_CD,
		M_BIZ_PARAM.SEGMENT,
		M_BIZ_PARAM.PARAM_SECTION,
		LEFT(M_BIZ_PARAM.COMMENTS, 20) AS COMMENTS,
		LEFT(M_BIZ_PARAM.PARAM_VALUE, 20) AS PARAM_VALUE,
		M_BIZ_PARAM.EX_NU1,
		M_BIZ_PARAM.EX_NU2,
		M_BIZ_PARAM.EX_NU3,
		M_BIZ_PARAM.EX_NU4,
		M_BIZ_PARAM.EX_NU5,
		M_BIZ_PARAM.EX_CD1,
		M_BIZ_PARAM.EX_CD2,
		M_BIZ_PARAM.EX_CD3,
		M_BIZ_PARAM.EX_CD4,
		M_BIZ_PARAM.EX_CD5,
		M_BIZ_PARAM.EX_MOJI1,
		M_BIZ_PARAM.EX_MOJI2,
		M_BIZ_PARAM.EX_MOJI3,
		M_BIZ_PARAM.EX_MOJI4,
		M_BIZ_PARAM.EX_MOJI5,
		M_BIZ_PARAM.TOROKU_TM,
		M_BIZ_PARAM.TOROKU_TAMMATSU,
		M_BIZ_PARAM.HENKO_TM,
		M_BIZ_PARAM.HENKO_TAMMATSU
	FROM
		M_BIZ_PARAM
	WHERE
		M_BIZ_PARAM.KAISHA_CD = 

         'GK' 

	AND	M_BIZ_PARAM.SEGMENT = 'EDI'
	AND	M_BIZ_PARAM.PARAM_NAME = 

         '1000000000' 

UNION ALL
	SELECT
		1 AS FLG,
		M_EDI_DEFAULT_PARAM.ROWID,
		M_EDI_DEFAULT_PARAM.KAISHA_CD,
		M_EDI_DEFAULT_PARAM.SEGMENT,
		M_EDI_DEFAULT_PARAM.PARAM_SECTION,
		LEFT(M_EDI_DEFAULT_PARAM.COMMENTS, 20) AS COMMENTS,
		'' AS PARAM_VALUE,
		M_EDI_DEFAULT_PARAM.EX_NU1,
		M_EDI_DEFAULT_PARAM.EX_NU2,
		M_EDI_DEFAULT_PARAM.EX_NU3,
		M_EDI_DEFAULT_PARAM.EX_NU4,
		M_EDI_DEFAULT_PARAM.EX_NU5,
		M_EDI_DEFAULT_PARAM.EX_CD1,
		M_EDI_DEFAULT_PARAM.EX_CD2,
		M_EDI_DEFAULT_PARAM.EX_CD3,
		M_EDI_DEFAULT_PARAM.EX_CD4,
		M_EDI_DEFAULT_PARAM.EX_CD5,
		M_EDI_DEFAULT_PARAM.TOROKU_TM,
		M_EDI_DEFAULT_PARAM.TOROKU_TAMMATSU,
		M_EDI_DEFAULT_PARAM.HENKO_TM,
		M_EDI_DEFAULT_PARAM.HENKO_TAMMATSU
	FROM
		M_EDI_DEFAULT_PARAM
	WHERE
		M_EDI_DEFAULT_PARAM.KAISHA_CD = 

         'GK' 

) AS U_BIZ_PARAM
ORDER BY
	U_BIZ_PARAM.FLG ASC,
	U_BIZ_PARAM.SEGMENT ASC,
	U_BIZ_PARAM.PARAM_SECTION ASC

