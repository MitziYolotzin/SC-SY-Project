
///////////
~mix.fadeTime=5;
~mix= {0};
//rrrrrrrr pulse
/alrm
~nze={ (LFPulse.ar(LFPulse.kr(3, 0.5, 0.3, 1500, 50), 0.5, 0.1 ) / 2).tanh/8 ! 2 };

~nze={ (LFPulse.ar(LFPulse.kr(3, 0.5, 0.3, 1500, 50), 0.5, 0.1 ) * WhiteNoise.ar / 2).tanh/3   ! 2 };
~mix= ~nze;
~mix= {0};
////////////

i.basstt.stop;
i.drumsOne.stop;
//////beat bass

i.beatBass = (
 kickdeep: INSTRUMENT(i.synths.kick.kickDeep),
 //basss: INSTRUMENT(i.synths.trance[2]),
 bassz: INSTRUMENT(i.synths.trance[3])
);

i.beatBass.kickdeep.seq("1x3 1").speed(2);
i.beatBass.kickdeep.amp=2;

i.beatBass.bassz.seq(" 1x4 ").speed(2);
//i.beatBass.bassz.seq("1").speed(4);

i.clear;
i.beatBass.play;

i.beatBass.go(0);
i.beatBass.go(50);

i.beatBass.clock=1;
i.beatBass.clock=4;
i.beatBass.clock=2;

i.beatBass.basss.amp=3;
i.clear;
i.beatBass.play;
i.beatBass.stop;

/////////////////////7
~nze={ (LFPulse.ar(LFPulse.kr(3, 0.5, 0.3, 1500, 50), 0.5, 0.1 ) / 2).tanh/8 ! 2 };
~mix= ~nze;
~mix= {0};
/////////

// KICKSUBS

i.drumsbk = (
	k1: INSTRUMENT(i.synths.kick[9]),
	k2: INSTRUMENT(i.synths.kick[6]),
	//k3: INSTRUMENT(i.synths.kick[5]),
	s1: INSTRUMENT(i.synths.snareNeuro),
	hh1: INSTRUMENT(i.synths.hihat[2]),
	//hh2: INSTRUMENT(i.synths.hihat[0]),
);

//i.drumsbk.k[0].seq("2 :1/8 1x8");
i.drumsbk.k1.seq("2 :1/8 1x8 :1/2 1x2 :1/4 1x4");
i.drumsbk.k1.seq("1x2 1x3 1 :1/2 1xxx 1x4").speed(2);
//
i.clear;
i.beatBass.play;
i.drumsbk.play;
//opc
i.drumsbk.k2.seq("2 :1/2 1x2").speed(2);
i.drumsbk.k2.amp=1.5;

~mix= {0};

i.drumsbk.s1.seq("1x2").speed(2);
i.drumsbk.s1.amp=1.5;

i.drumsbk.hh1.seq("1  1x   1x  ").speed(4);
/////op
i.drumsbk.hh1.seq("1x8").speed(8);
//
i.drumsbk.clock=1;
i.drumsbk.clock=1/2;
i.drumsbk.clock=2;

i.drumsbk.k.clock=2;
i.drumsbk.k.clock=1;

i.drumsbk.s1.seq(" 1").speed(2);

i.drumsbk.go(0);
i.drumsbk.go(33);
i.drumsbk.go(180);

///-----deeeee
i.drumsbk.fx = \distortion;
i.drumsbk.fx = nil;

//
i.clear;
i.beatBass.play;
i.drumsbk.play;
i.drumsbk.stop;

////////////-----














////clavpas markpass-nee x
(
i.drumsa = (
	kick: INSTRUMENT(i.synths.kick.kickHollow),
	hihat: INSTRUMENT(i.synths.hihatOpen),
	clapa: INSTRUMENT(i.synths.electro.clap),
	snare: INSTRUMENT(i.synths.snareBass)
);

i.drumsa.kick.seq("1x3 :1/4 1x4 1x3 :1/4 1x5").speed(1);
i.drumsa.hihat.seq(" 1x3");
i.drumsa.clapa.seq("  1x2  1");
i.drumsa.snare.seq(":1/2  1 0.7x6").speed(1);
)

i.clear;
i.drumsa.play;
i.drumsa.stop;