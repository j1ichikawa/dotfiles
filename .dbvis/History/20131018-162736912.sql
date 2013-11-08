declare
	@KAISHA_CD [varchar](2),
	@EDI_KIGYO_CD [varchar](10)

set @KAISHA_CD = 'GK'
--set @EDI_KIGYO_CD = 'AEON000001'
set @EDI_KIGYO_CD = '1700000000'

	SELECT
		M_BIZ_PARAM.ROWID,
		M_BIZ_PARAM.KAISHA_CD,
		M_BIZ_PARAM.SEGMENT,
		M_BIZ_PARAM.PARAM_SECTION,
		M_BIZ_PARAM.PARAM_NAME AS EDI_KIGYO_CD,
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
		M_BIZ_PARAM.KAISHA_CD = @KAISHA_CD
	AND	M_BIZ_PARAM.SEGMENT = 'EDI'
	AND	M_BIZ_PARAM.PARAM_NAME = @EDI_KIGYO_CD

UNION ALL
	SELECT
		M_EDI_DEFAULT_PARAM.ROWID,
		M_EDI_DEFAULT_PARAM.KAISHA_CD,
		M_EDI_DEFAULT_PARAM.SEGMENT,
		M_EDI_DEFAULT_PARAM.PARAM_SECTION,
		M_EDI_DEFAULT_PARAM.PARAM_NAME AS EDI_KIGYO_CD,
		M_EDI_DEFAULT_PARAM.COMPUTER_NAME,
		LEFT(M_EDI_DEFAULT_PARAM.PARAM_VALUE, 20) AS PARAM_VALUE,
		LEFT(M_EDI_DEFAULT_PARAM.COMMENTS, 20) AS COMMENTS,
		M_EDI_DEFAULT_PARAM.TOROKU_TM,
		M_EDI_DEFAULT_PARAM.TOROKU_TAMMATSU,
		M_EDI_DEFAULT_PARAM.HENKO_TM,
		M_EDI_DEFAULT_PARAM.HENKO_TAMMATSU
	FROM
		M_EDI_DEFAULT_PARAM
	WHERE
		M_EDI_DEFAULT_PARAM.KAISHA_CD = @KAISHA_CD
	AND	M_EDI_DEFAULT_PARAM.SEGMENT = 'EDI'
	AND	M_EDI_DEFAULT_PARAM.PARAM_NAME = @EDI_KIGYO_CD

ORDER BY
	SEGMENT ASC,
	PARAM_SECTION ASC,
	PARAM_NAME ASC

