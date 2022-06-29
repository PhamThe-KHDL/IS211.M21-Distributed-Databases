read(terminal, $BienKS);
SELECT MaTuyen, GioKH, GioDen into $MT, $GKH, $GD
FROM XE, LICHTRINH LT
WHERE XE.MaXe = LT.MaXe
	AND XE.BienKS = $BienKS;
IF #FOUND then write(terminal, $MT, $GKH, $GD)
ELSE write(terminal, 'Not Found');