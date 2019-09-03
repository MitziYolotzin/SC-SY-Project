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

//////////2 HELICE tone atmosphere low
~pul2={Pulse.ar(400*Array.rand2(5, 30), 0.2, 0.2 ).tanh /8 ! 2};
~pul2={Pulse.ar(600*Array.rand2(5, 30), 0.2, 0.2 ).tanh /8 ! 2};
~vibr={ LFCub.ar(LFCub.kr(LFCub.kr(600,0,8,70),0.5, 400,800),0,0.1) +	Decay2.ar (Impulse.ar(8), 0.05, 0.01)/3 ! 2 };
~vibr={ LFCub.ar(LFCub.kr(LFCub.kr(600,0,8,70),0.5, 800,800),0,0.1) +	Decay2.ar (Impulse.ar(80), 0.05, 0.01)/3 ! 2 };

~mix =  ~vibr + ~pul2;

~mix.fadeTime=5;
~mix={0};
//////////////3 REBROKEN noise

//////////////broken freq
~mix.fadeTime=3;
//rrrrrrrr pulse
~nze={ LFPulse.ar(LFPulse.kr(3, 0.5, 0.3, 1500, 50), 0.5, 0.1 ) * WhiteNoise.ar / 2   ! 2 };
~nze={ LFPulse.ar(LFPulse.kr(3, 0.5, 0.3, 1500, 50), 0.5, 0.1 ) / 2   ! 2 };
~mix= ~nze;

//////this ENDnutilX
~hc1={HPF.ar ( LFSaw.ar(33.midicps, 0.5), MouseX.kr(60,1000,1), 0.5).tanh/4 ! 2};
~hc3={BPF.ar(FSinOsc.ar([80, 800], 0.3) , 0.01, 60, 800  ) * Crackle.ar ( MouseX.kr(0.8,1.8,1))/2 ! 2};
~mix= ~hc1;
~mix= ~hc1 + ~hc3;

~mix.fadeTime=5;
~mix={0};
