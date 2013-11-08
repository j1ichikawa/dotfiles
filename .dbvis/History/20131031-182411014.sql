
SELECT
	M_EDI_DEFAULT_PARAM.ROWID,
	M_EDI_DEFAULT_PARAM.KAISHA_CD,
	M_EDI_DEFAULT_PARAM.SEGMENT,
	M_EDI_DEFAULT_PARAM.PARAM_SECTION,
	LEFT(M_EDI_DEFAULT_PARAM.COMMENTS, 20) AS COMMENTS,
	M_EDI_DEFAULT_PARAM.TOROKU_TM,
	M_EDI_DEFAULT_PARAM.TOROKU_TAMMATSU,
	M_EDI_DEFAULT_PARAM.HENKO_TM,
	M_EDI_DEFAULT_PARAM.HENKO_TAMMATSU
FROM
	M_EDI_DEFAULT_PARAM
WHERE
	M_EDI_DEFAULT_PARAM.KAISHA_CD = 

         'HK' 

ORDER BY
	M_EDI_DEFAULT_PARAM.SEGMENT ASC,
	LEN(M_EDI_DEFAULT_PARAM.PARAM_SECTION) ASC,
	M_EDI_DEFAULT_PARAM.PARAM_SECTION ASC

