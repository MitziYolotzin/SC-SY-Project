
i.basstt.stop;
///////////////////
i.drumsOne.stop;
////
~mix= {0};
//rrrrrrrr pulse
~nze={ (LFPulse.ar(LFPulse.kr(3, 0.5, 0.3, 1500, 50), 0.5, 0.1 ) / 2).tanh/5   ! 2 };
~nze={ (LFPulse.ar(LFPulse.kr(3, 0.5, 0.3, 1500, 50), 0.5, 0.1 ) * WhiteNoise.ar / 2).tanh/3   ! 2 };
~mix= ~nze;
~mix= {0};
////////////

i.basstrd = (
   bstrd1: INSTRUMENT(i.synths.bass.trance[3]),
   bstrd2: INSTRUMENT(i.synths.bass.trance[1])
);

i.basstrd.bstrd1[0].note("1  :1/2 1x4").speed(3).x(3);
i.basstrd.bstrd1[1].note("1x3 1x2 1x3").speed(2).x(1);
i.basstrd.bstrd1.clock=1;
i.basstrd.bstrd1.octave=3;
i.basstrd.bstrd1.amp=1.5;

i.basstrd.bstrd2[0].note("1x2 :1/2 1x2 1x2").speed(2);
i.basstrd.bstrd2[1].note("1 :1/4 1x4").speed(3);
i.basstrd.bstrd2.clock=1;
i.basstrd.bstrd2.octave=3;
i.basstrd.bstrd2.amp=1.5;

i.basstrd.go(0);
i.basstrd.go(100);

(
i.every(2,{
	i.basstrd.clock=1/[1/2, 1, 2, 4, 6, 8].choose;
    //i.basstrd.set(\rel, 0);
});
)
i.clear;
i.basstrd.play;
i.basstrd.stop;

////////////

// kicksubs

i.drumsbk = (
	k: INSTRUMENT(i.synths.kick[9]),
	k2: INSTRUMENT(i.synths.kick[6]),
	k3: INSTRUMENT(i.synths.kick[5]),
	s1: INSTRUMENT(i.synths.snareNeuro),
	hh1: INSTRUMENT(i.synths.hihat[2]),
	hh2: INSTRUMENT(i.synths.hihat[0]),
);

//i.drumsbk.k[0].seq("2 :1/8 1x8");
i.drumsbk.k[0].seq("2 :1/8 1x8 :1/2 1x2 :1/4 1x4");
i.drumsbk.k[1].seq("1  1 1 1xxx :1/2 1xxx 1 1 1 1x4").speed(2);

i.drumsbk.k2.seq("2 :1/2 1x2").speed(2);
i.drumsbk.k3.seq("2 :1/3 1x3");
i.drumsbk.k3.amp=1.5;

i.drumsbk.s1.seq(" 1").speed(2);
i.drumsbk.s1.amp=1.5;

i.drumsbk.hh1[0].seq("1  1x   1x  ").speed(8);
i.drumsbk.hh2.seq("0   1  1x  1").speed(8);

i.drumsbk.hh1[1].seq("1  0x   1x  ").speed(8);
i.drumsbk.hh2.seq("0   1  0x  1").speed(8);

i.drumsbk.hh1[2].seq("1x8").speed(8);
i.drumsbk.hh2.seq("0   1  0x  1").speed(8);

(
i.drumsbk.k.clock=2;
i.drumsbk.k.fx=\nil;
)

(
i.drumsbk.clock=1;
i.drumsbk.fx=\nil;
i.drumsbk.k.clock=1;
)

i.drumsbk.s1.seq(" 1").speed(2);

i.drumsbk.go(0);
i.drumsbk.go(33);

//i.drumsbk.fx = \distortion;
//i.drumsbk.fx = \shineDestroy;
//i.drumsbk.fx = "gateDistort.extreme";
i.drumsbk.clock=1;
//i.drumsbk.fx="reverb.full";
//i.drumsbk.fx = \delay2;
i.drumsbk.fx = nil;

i.clear;
i.drumsbk.play;
i.drumsbk.stop;