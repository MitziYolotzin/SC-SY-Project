i=INSTRUMENT().play;

i.drumsRev = (
	k: INSTRUMENT(i.synths.kick[2]),
	s: INSTRUMENT(i.synths.snare[1]),
	h: INSTRUMENT(i.synths.hihat[1]),
	c: INSTRUMENT(i.synths.clap[3])
);

i.drumsRev.k.seq("1  :1/2 1   1 1.2 :1/2 1x2  1x4").speed(2);
i.drumsRev.s.seq(" 1  1  1  1x3  1  :1/4 1x3  :1/4 1x3 1x2 1x2 1").mirror;
i.drumsRev.h.seq("1x2 :1/2 1x3  :1/4 1x7  :1/2 1x3 1");
i.drumsRev.c.seq("1x4 1  1   1 1x4 1 1");

i.drumsRev.go(0);
i.drumsRev.go(10);


i.drumsRev.seq(\fx,  [\lpf,
\resonz,
\moogFilter,nil]);



(
i.drumsRev.rm(\fx);
i.drumsRev.fx=nil;
)

i.drumsRev.stop;
i.drumsRev.play;
