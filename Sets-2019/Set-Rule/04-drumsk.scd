
i.drumsk=(
	kk: INSTRUMENT(i.synths.kick[8]),
	hihatk: INSTRUMENT(i.synths.hihat[1]),
	snarek: INSTRUMENT(i.synths.snareNeuro),
);

	i.drumsk.clock=1/3
	i.drumsk.amp=1.2;

(
	i.drumsk.hihatk.seq("1x2 :2 1").speed(4);
	//i.drumsk.hihatk[1].seq(" 1x3 :1/2 1x3 1x3 :1/2 1x2").speed(2);
	i.drumsk.hihatk.amp=0.8;

	i.drumsk.kk[0].seq("1  1x2  1").speed(4).do(2);
	i.drumsk.kk[1].seq(" 1x2  1 ").speed(4);
	i.drumsk.kk.amp=1.3;

	i.drumsk.snarek.seq("1x2 1 1").speed(2).do(2);
	i.drumsk.snarek.amp=0.9;
	//i.drumsk.snarek[1].seq("1xx  1xx  1xx").speed(4);

	i.drumsk.clock=1;
	i.drumsk.clock=2;
)

	i.drumsk.go(0);
	i.drumsk.go(190);

	i.drumsk.stop;
	i.drumsk.play;
