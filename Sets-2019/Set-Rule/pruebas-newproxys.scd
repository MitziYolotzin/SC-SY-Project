i = INSTRUMENT().play;

p=ProxySpace.push(s);

~z.play;
~z.fadeTime=2;
~z={0};
~z={|freq=200| RLPF.ar(WhiteNoise.ar,freq,0.2) };

i.z=INSTRUMENT(~z);

i.z.seq(\freq,"1000 600 700");

~z.fadeTime=3;
i.z.clock=1/2;
~z={|freq=200| (Resonz.ar(WhiteNoise.ar,Lag2.kr(freq,4),0.01)*30).tanh/2 };


p=ProxySpace.push(s);

~z.play;
~z.fadeTime=10;

~z={|freq=200, t_trig=1| (LFPulse.ar(freq,SinOsc.kr(3).linlin(-1,1,0,1),SinOsc.kr(5).linlin(-1,1,0,1))*30).tanh/2*Decay2.kr(t_trig,2,0) };

i=INSTRUMENT().play;
i.z=INSTRUMENT(~z);

// automatic mapping of note to 'freq and t_trig':
i.z.note("0 2 3");
i = INSTRUMENT().play;

p=ProxySpace.push(s);

~sound.play;
~sound = {|notes=#[60,65,67,72],gain=1| (SinOsc.ar(notes.midicps)*gain).tanh / 4 ! 2 };
~sound = {|notes=#[60,65,67,72],gain=1| (Saw.ar(notes.midicps/2)*gain).tanh / 4 ! 2 };

~sound={0};
i.notes=INSTRUMENT(~sound);
i.notes.seq(\gain,[3,1,10]).speed(1/2);
i.notes.stop;
(

i.notes.chord([
	C(0,\m),
	C(7,\M,1),
	C(3,\Mmaj7),
	C(1,\m,0,[16])
]).speed(1/2);

)
