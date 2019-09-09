//Server.killAll;
// 1 INTRO
p=ProxySpace.push(s);
i=INSTRUMENT().play

~mix.play;
~mix.quant=1;
//abismo
~down.fadeTime=3;
~down={|amp=1| (RLPF.ar(WhiteNoise.ar,[60,63,80],0.01)*3.3).tanh/3.5*amp!2 }
~down={|amp=1| (RLPF.ar(WhiteNoise.ar,[90,65,180],0.01)*3.3).tanh/3.5*amp!2 }
~mix= ~down;
//alternate
~sin={SinOsc.ar(36.midicps*Array.rand(4, 0.2, 4) ,0,1).tanh/8 ! 2};
~sin={SinOsc.ar(40.midicps*Array.rand(4, 0.2, 4) ,0,1).tanh/8 ! 2};
~sin={|notes=#[30, 60]|(SinOsc.ar(notes.midicps*Array.exprand(5, 0.2, 3),0,1)).tanh/8 ! 2};

~sin={SinOsc.ar(30.midicps*Array.rand(4, 0.2, 4) ,0,1).tanh/8 ! 2};
~mix = ~down + ~sin;
//kraken crawl noise
~crak={(Crackle.ar(Saw.kr(1/3).linlin(-1,1,2,1), 0.5, 0.05)*4 + Impulse.ar(Lag2.kr(LFDClipNoise.kr(Saw.kr/4, 200,200),1) )/2).tanh/4 ! 2 };
~mix =  ~sin + ~crak + ~down;

~mix.fadeTime=5;
~mix={0};
////////////////////P1

i.evilmelodies = (
	note1: INSTRUMENT(i.synths.note.distNote4),
	note2: INSTRUMENT(i.synths.note.distNote3),
	note3: INSTRUMENT(i.synths.note.distNote3),
	kick: INSTRUMENT(i.synths.electro.kick)
);

///
i.evilmelodies.amp=1.75;

i.evilmelodies.kick.seq("1").speed(2).x(4);
i.evilmelodies.kick.seq("1").speed(1/2).x(4);
i.evilmelodies.kick.amp=1.5;
//
i.evilmelodies.note1.note(" 0 3 7").speed(4);
i.evilmelodies.note1.note(" 0 3 7 1.5 0.5 ").speed(2).x(2);
i.evilmelodies.note1.amp=1.5;
///
//i.evilmelodies.note2.note("0 5 0").speed(2);
i.evilmelodies.note2.note("3 5 3").speed(4);
i.evilmelodies.note2.amp=2;
//i.evilmelodies.note3.note("0 5 0").speed(2).x(4);
i.evilmelodies.note3.note("2.5 7 2.5").speed(4).x(2);
i.evilmelodies.note3.amp=1.75;
//i.evilmelodies.note1.amp=1/2;

i.evilmelodies.go(0);
i.evilmelodies.go(152);

//i.evilmelodies.clock=2;
i.evilmelodies.clock=1;
i.evilmelodies.clock=1.5;
i.evilmelodies.clock=1/2;
i.evilmelodies.clock=1/4;
i.evilmelodies.clock=1;

/////P2
i.evilmelodies.play;
i.evilmelodies.stop;
