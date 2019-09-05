i.basstrd.stop;
i.drumsbk.stop;
i.clear;
/////////
//////this ENDnutilX
~mix.play;
~hc1={HPF.ar ( LFSaw.ar(33.midicps, 0.5), MouseX.kr(60,1000,1), 0.5).tanh/4 ! 2};
~hc3={BPF.ar(FSinOsc.ar([80, 800], 0.3) , 0.01, 60, 800  ) * Crackle.ar ( MouseX.kr(0.8,1.8,1))/2 ! 2};
~mix= ~hc1;
~mix= ~hc1 + ~hc3;

~mix.fadeTime=5;
~mix={0};

//////////
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
	i.drumske.hihatkk.amp=1.2;

	i.drumske.kkk[0].seq("1x2 :1/3 1x3 1x3").speed(4).do(2);
	i.drumske.kkk[1].seq("1x4 1x2  1x4 ").speed(4);
	i.drumske.kkk.amp=1.5;

	i.drumske.snarekk.seq("1x2  ").speed(4);
	i.drumske.snarekk.amp=0.9;
	//i.drumske.snarekk[1].seq("1xx  1xx  1xx").speed(4);
	i.drumske.snarekb.seq(" 1x3 1x3 ").speed(4);
	i.drumske.snarekb.amp=1.2;

	//i.drumske.clock=2;
)

	i.drumske.clock=1;
	i.drumske.clock=1/2;
	i.drumske.clock=1/4;

	i.drumske.go(0);
	i.drumske.go(66);


	//i.drumske.fx = "gateDistort.hardcore";
    i.drumske.fx = \shineDestroy;
	i.drumske.fx = nil;
	//altern
	i.drumske.stop;
    i.clear;
	i.drumske.play;
    i.drumske.stop;



///////////////

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

i.drumsRev.clock=1/2;
i.drumsRev.fx=\delay1;
i.drumsRev.fx=nil;

i.every(8,{

i.drumsRev.fxSet(\delay,1/[2, 4, 6, 8].choose);
i.drumsRev.fxSet(\lag,1/[1/2, 1, 2, 4, 6, 8].choose);
i.drumsRev.clock=1/[1/2, 1, 2, 4, 6, 8].choose;

});

i.drumsRev.clock=1/2;
i.drumsRev.clock=1;


(
i.drumsRev.rm(\fx);
i.drumsRev.fx=nil;
)
~mix={0};
i.drumsRev.stop;
i.clear;
i.drumsRev.play;
