declare
	@KAISHA_CD [varchar](2),
	@EDI_KIGYO_CD [varchar](10)

set @KAISHA_CD = 'GK'
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
		M_BIZ_PARAM.KAISHA_CD = @KAISHA_CD
	AND	M_BIZ_PARAM.SEGMENT = 'EDI'
	AND	M_BIZ_PARAM.PARAM_NAME = @EDI_KIGYO_CD
ORDER BY
	M_BIZ_PARAM.SEGMENT ASC,
	M_BIZ_PARAM.PARAM_SECTION ASC,
	M_BIZ_PARAM.PARAM_NAME ASC


