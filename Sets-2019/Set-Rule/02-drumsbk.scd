
// kicksubs

i=INSTRUMENT().play;

i.drumsbk = (
	k: INSTRUMENT(i.synths.kick[9]),
	k2: INSTRUMENT(i.synths.kick[6]),
	k3: INSTRUMENT(i.synths.kick[5]),
);

i.drumsbk.k[0].seq("2 :1/8 1x8");
i.drumsbk.k[1].seq("2 :1/8 1x8 :1/2 1x2 :1/4 1x4");
i.drumsbk.k[1].seq("2 :1/8 1x8 :1/2 1x2 :1/4 1x4").speed(1);
i.drumsbk.k[2].seq("1  1 1 1xxx :1/2 1xxx 1 1 1 1x4").speed(2);

i.drumsbk.k2.seq("2 :1/2 1x2").speed(2);
i.drumsbk.k3.seq("2 :1/3 1x3");

i.drumsbk.go(0);
i.drumsbk.go(33);

i.drumsbk.fx = \distortion;
i.drumsbk.fx = \shineDestroy;
i.drumsbk.fx = "gateDistort.extreme";
//i.drumsbk.fx = \delay2;
i.drumsbk.fx = nil;

i.tempo=192;
i.tempo=220;
i.tempo=320;

i.drumsbk.stop;
i.drumsbk.play;
