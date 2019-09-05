////////////
i.evilmelodies.stop;
~mix.fadeTime=5;
~mix={0};

/////////////////P2
i.basstt = (
   bass1: INSTRUMENT(i.synths.bass.trance[2]),
   bass2: INSTRUMENT(i.synths.bass.trance[1])
);

i.basstt.bass1.note(":1/8 1x8").speed(2);
i.basstt.bass1.clock=1/2;
i.basstt.bass1.octave=4;
i.basstt.bass1.amp=2.5;

i.clear;
i.basstt.play;

i.basstt.bass2.note("1 :1/4 1x4 1x2 :1/2 1x2 1").speed(2);
i.basstt.bass2.clock=1/2;
i.basstt.bass2.octave=5;
i.basstt.bass2.amp=2;

i.basstt.bass2.octave=5;
i.basstt.bass2.octave=6;
i.basstt.bass2.octave=7;

/// 2
i.basstt.bass1.octave=4;
i.basstt.bass1.octave=5;
i.basstt.bass1.octave=6;
//

i.basstt.go(0);
i.basstt.go(221);
i.basstt.go(333);

i.clear;
i.basstt.play;
i.basstt.stop;
////////////////////
// beat drumsOne
//i=INSTRUMENT().play;

i.drumsOne = (
	k: INSTRUMENT(i.synths.kick[5]),
	s: INSTRUMENT(i.synths.snare[1]),
	h: INSTRUMENT(i.synths.hihat[4])
);

i.drumsOne.amp=2;
i.drumsOne.k.seq("1 2xx ").speed(2);
i.drumsOne.k.amp=2.5;
i.drumsOne.s.seq(" 1");
i.drumsOne.s.seq(" 1   1xx").speed(2);
i.drumsOne.s.amp=2;
i.drumsOne.h.seq("1xx  1xx  1xx").speed(2);
i.drumsOne.h.seq("0").speed(4);
i.drumsOne.h.amp=2;

i.drumsOne.go(0);
i.drumsOne.go(133);
i.drumsOne.go(99);

i.clear;
i.basstt.play;
i.drumsOne.play;
///////////
//////////2 HELICE tone atmosphere low
~pul2={Pulse.ar(400*Array.rand2(5, 30), 0.2, 0.2 ).tanh /8 ! 2};
~pul2={Pulse.ar(600*Array.rand2(5, 30), 0.2, 0.2 ).tanh /8 ! 2};
~vibr={ LFCub.ar(LFCub.kr(LFCub.kr(600,0,8,70),0.5, 400,800),0,0.1) +	Decay2.ar (Impulse.ar(8), 0.05, 0.01)/3 ! 2 };
~vibr={ LFCub.ar(LFCub.kr(LFCub.kr(600,0,8,70),0.5, 800,800),0,0.1) +	Decay2.ar (Impulse.ar(80), 0.05, 0.01)/3 ! 2 };

~mix =  ~vibr + ~pul2;

~mix.fadeTime=5;
~mix={0};

////////////////

i.basstt.fx = \reverb;
i.basstt.fx = nil;
//i.drumsOne.fx = \delay2;
//i.drumsOne.fx = \reverb;
//i.drumsOne.fx = nil;

i.drumsOne.clock=1/2;
i.drumsOne.clock=1;
i.drumsOne.clock=1/4;
i.drumsOne.clock=2;

i.drumsOne.k.clock=1;
i.drumsOne.k.clock=2;

i.drumsOne.h.clock=2;
i.drumsOne.h.clock=1;

i.drumsOne.go(0);
i.drumsOne.go(155);

///////////////////
i.clear;
i.basstt.play;
i.drumsOne.play;
i.drumsOne.stop
///
~pul2={Pulse.ar(600*Array.rand2(5, 30), 0.2, 0.2 ).tanh /8 ! 2};
~vibr={ LFCub.ar(LFCub.kr(LFCub.kr(600,0,8,70),0.5, 800,800),0,0.1) +	Decay2.ar (Impulse.ar(80), 0.05, 0.01)/3 ! 2 };

