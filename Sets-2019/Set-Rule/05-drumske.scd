//////////////////P4
i.drumske=(
	kkk: INSTRUMENT(i.synths.kick[8]),
	hihatkk: INSTRUMENT(i.synths.hihat[1]),
	snarekk: INSTRUMENT(i.synths.snareNeuro),
	snarekb: INSTRUMENT(i.synths.snareBass),
);
	//
	i.drumske.fx = \shineDestroy;

	i.drumske.hihatkk.seq("1x2 :2 1").speed(4);
	//i.drumske.hihatkk[1].seq(" 1x3 :1/2 1x3 1x3 :1/2 1x2").speed(2);
	i.drumske.hihatkk.amp=0.8;

	i.drumske.kkk[0].seq("1x2 :1/3 1x3 1x3").speed(4).do(2);
	i.drumske.kkk[1].seq("1x4 1x2  1x4 ").speed(4);
	i.drumske.kkk.amp=1.5;

	i.drumske.snarekk.seq("1x2  ").speed(4);
	i.drumske.snarekk.amp=0.9;
	//i.drumske.snarekk[1].seq("1xx  1xx  1xx").speed(4);
	i.drumske.snarekb.seq(" 1x3 1x3 ").speed(4);
	i.drumske.snarekb.amp=0.9;

	//i.drumske.clock=2;
)

	i.drumske.clock=1;
	i.drumske.clock=1/2;
	i.drumske.clock=1/4;

	i.drumske.go(0);
	i.drumske.go(66);

	i.drumske.fx = \shineDestroy;
	//i.drumske.fx = "gateDistort.hardcore";
	i.drumske.fx = nil;
	//altern
	i.drumske.stop;
	i.drumske.play;
