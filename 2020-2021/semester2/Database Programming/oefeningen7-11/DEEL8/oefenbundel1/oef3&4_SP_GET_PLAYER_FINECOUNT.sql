CREATE OR ALTER PROCEDURE SP_GET_PLAYER_FINECOUNT
	@prm_playernr int
AS
BEGIN
	SELECT
		COUNT(*) AS BOETECOUNT
	FROM
		dbo.BOETES
	where
		SPELERSNR = @prm_playernr

END;
GO

EXEC SP_GET_PLAYER_FINECOUNT 44;