i=INSTRUMENT().play;

i.drumsRev = (
	k: INSTRUMENT(i.synths.kick[2]),
	k2: INSTRUMENT(i.synths.kick[5]),
	s: INSTRUMENT(i.synths.snare[1]),
	h: INSTRUMENT(i.synths.hihat[1]),
	c: INSTRUMENT(i.synths.clap[3])
);

i.drumsRev.k.seq("1  :1/2 1   1 1.2 :1/2 1x2  1x4").speed(2);
i.drumsRev.k.seq("1  :1/2 1x4 :1  1 1.2 :1/4 1x4").speed(2);
i.drumsRev.k.seq("1").speed(2).do(32);
i.drumsRev.k.seq("1  :1/2 1   1 1.2 :1/2 1x2  1x4").speed(2);


i.drumsRev.s.seq(" 1  1  1  1x3  1  :1/4 1x3  :1/4 1x3 1x2 1x2 1").mirror;
i.drumsRev.h.seq("1x2 :1/2 1x3  :1/4 1x7  :1/2 1x3 1");
i.drumsRev.c.seq("1x4 1  1   1 1x4 1 1");

i.drumsRev.k2.seq("1x4");



i.drumsRev.k[1].seq("1x4 1  1").speed(2);

i.drumsRev.k[2].seq("1   1 1x4").speed(4);


i.drumsRev.s[1].seq(" 1  1  1  1x3  1  :1/4 1x3  :1/4 1x3 1x2 1x2 1").mirror;
i.drumsRev.h[1].seq("1x2 1x3 1");
i.drumsRev.c[1].seq("1x4 1  1   1 1x4 1 1");

i.drumsRev.s[2].seq(" 1  1  1  1x3  1  :1/4 1x3  :1/4 1x3 1x2 1x2 1").mirror;
i.drumsRev.h[2].seq("1x2 1x4");
i.drumsRev.c[2].seq("1x4 1");


i.drumsRev.clock=1;

i.drumsRev.go(0);
i.drumsRev.go(10);

//colapso
i.drumsRev.seq(\fx,  [\lpf,
\resonz,
\moogFilter,nil]);



(
i.drumsRev.rm(\fx);
i.drumsRev.fx=nil;
)

i.drumsRev.stop;
i.drumsRev.play;
