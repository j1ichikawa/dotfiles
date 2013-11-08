SELECT
	M_BIZ_PARAM.ROWID,
	M_BIZ_PARAM.KAISHA_CD,
	M_BIZ_PARAM.SEGMENT,
	M_BIZ_PARAM.PARAM_SECTION,
	M_BIZ_PARAM.PARAM_NAME,
	M_BIZ_PARAM.COMPUTER_NAME,
	LEFT(M_BIZ_PARAM.PARAM_VALUE, 20) AS PARAM_VALUE,
	LEFT(M_BIZ_PARAM.COMMENTS, 20) AS COMMENTS,
	M_BIZ_PARAM.TOROKU_TM,
	M_BIZ_PARAM.TOROKU_TAMMATSU,
	M_BIZ_PARAM.HENKO_TM,
	M_BIZ_PARAM.HENKO_TAMMATSU
FROM
	M_BIZ_PARAM
WHERE
	M_BIZ_PARAM.KAISHA_CD = 'ZK'

AND	M_BIZ_PARAM.SEGMENT = 'EDI'
AND	M_BIZ_PARAM.PARAM_NAME = '12345'

ORDER BY
	M_BIZ_PARAM.SEGMENT ASC,
	M_BIZ_PARAM.PARAM_SECTION ASC
