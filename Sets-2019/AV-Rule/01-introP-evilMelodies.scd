// 1 INTRO
p=ProxySpace.push(s);

~mix.play;
~mix.quant=1;
//abismo
~down.fadeTime=3;
~down={|amp=1| (RLPF.ar(WhiteNoise.ar,[60,63,80],0.01)*3.3).tanh/3.5*amp!2 }
~down={|amp=1| (RLPF.ar(WhiteNoise.ar,[90,65,180],0.01)*3.3).tanh/3.5*amp!2 }
~mix= ~down;
//alternate
~sin={SinOsc.ar(36.midicps*Array.rand(4, 0.2, 4) ,0,1).tanh/8 ! 2};
~sin={SinOsc.ar(38.midicps*Array.rand(4, 0.2, 4) ,0,1).tanh/8 ! 2};
~sin={SinOsc.ar(40.midicps*Array.rand(4, 0.2, 4) ,0,1).tanh/8 ! 2};
~sin={SinOsc.ar(30.midicps*Array.rand(4, 0.2, 4) ,0,1).tanh/8 ! 2};
~sin={|notes=#[30, 60]|(SinOsc.ar(notes.midicps*Array.exprand(5, 0.2, 3),0,1)).tanh/8 ! 2};
~mix = ~down + ~sin;
//kraken crawl noise
~crak={(Crackle.ar(Saw.kr(1/3).linlin(-1,1,2,1), 0.5, 0.05)*4 + Impulse.ar(Lag2.kr(LFDClipNoise.kr(~tempo.kr/4, 200,200),1) )/2).tanh/3 ! 2 };
~mix =  ~sin + ~crak + ~down;

~mix.fadeTime=5;
~mix={0};
////////////////////P1
i.evilmelodies = (
	note1: INSTRUMENT(i.synths.note.distNote4),
	note2: INSTRUMENT(i.synths.note.distNote3),
	note3: INSTRUMENT(i.synths.note.distNote3),
	bass1: INSTRUMENT(i.synths.trance.bassTrance2),
	bass2: INSTRUMENT(i.synths.trance.bassTrance1),
	kick: INSTRUMENT(i.synths.electro.kick)
);

i.evilmelodies.amp=1.75;
i.evilmelodies.fx = "gateDistort.crunch";
i.evilmelodies.fx = nil;
i.evilmelodies.kick[0].seq("1").speed(1).x(32);
i.evilmelodies.kick[1].seq("1").speed(1/2).x(16);
i.evilmelodies.kick.amp=1.5;

i.evilmelodies.note1[0].note(" 0 3 7").random.speed(4);
i.evilmelodies.note1[1].note(" 0 3 7 1.5 0.5 ").random.speed(2).x(2);

i.evilmelodies.note2[0].note("0 5 0").random.speed(2);
i.evilmelodies.note2[1].note("3 5 3").random.speed(4);

i.evilmelodies.note3[0].note("0 5 0").random.speed(2).x(7);
i.evilmelodies.note3[1].note("2.5 7 2.5").random.speed(4).x(2);

i.evilmelodies.bass1[0].note("0  9 2  7  12").random.speed(2);
i.evilmelodies.bass1[1].note("3  2  7  14 13.5").random.speed(4);
i.evilmelodies.bass1.octave=4;

i.evilmelodies.bass2[0].note("7 3 G3  10 0  5").random.speed(2).pyramid.mirror;
i.evilmelodies.bass2[1].note(" 7 14  3 12  1.5").random.speed(2).pyramid.mirror;
i.evilmelodies.bass2.octave=5;

//i.evilmelodies.note1.amp=1/2;

i.evilmelodies.go(0);
i.evilmelodies.go(150);

i.evilmelodies.clock=1;
i.evilmelodies.clock=2;
i.evilmelodies.clock=1/2;
i.evilmelodies.clock=1/4;

/////P2
i.clear;
i.evilmelodies.stop;
i.evilmelodies.play;
