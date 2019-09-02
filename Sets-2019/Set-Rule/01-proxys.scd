// 1 INTRO
p=ProxySpace.push(s);

~mix.play;
~mix.quant=1;
//abismo
~down.fadeTime=3;
~down={|amp=1| (RLPF.ar(WhiteNoise.ar,[60,63,80],0.01)*3.3).tanh/1.5*amp!2 }
~down={|amp=1| (RLPF.ar(WhiteNoise.ar,[90,65,180],0.01)*3.3).tanh/1.5*amp!2 }
~mix= ~down;
//alternate
~sin={SinOsc.ar(36.midicps*Array.rand(4, 0.2, 4) ,0,1).tanh/4 ! 2};
~sin={SinOsc.ar(38.midicps*Array.rand(4, 0.2, 4) ,0,1).tanh/4 ! 2};
~sin={SinOsc.ar(40.midicps*Array.rand(4, 0.2, 4) ,0,1).tanh/4 ! 2};
~mix = ~down + ~sin;
//kraken crawl noise
~crak={(Crackle.ar(Saw.kr(1/3).linlin(-1,1,2,1), 0.5, 0.05)*4 + Impulse.ar(Lag2.kr(LFDClipNoise.kr(~tempo.kr/4, 200,200),1) )/2).tanh/1.5 ! 2 };
~mix =  ~sin + ~crak + ~down;

~mix.fadeTime=5;
~mix={0};
//////////2
~mix= ~ ;
