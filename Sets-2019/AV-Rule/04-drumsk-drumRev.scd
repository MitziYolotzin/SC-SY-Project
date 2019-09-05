
////// ENDnutilX
//~mix.play;
~hc1={HPF.ar ( LFSaw.ar(33.midicps, 0.5), MouseX.kr(60,1000,1), 0.5).tanh/4 ! 2};
~hc3={BPF.ar(FSinOsc.ar([80, 800], 0.3) , 0.01, 60, 800  ) * Crackle.ar ( MouseX.kr(0.8,1.8,1))/3 ! 2};
~mix= ~hc1;
~mix= ~hc1 + ~hc3;

~mix= ~hc3;

~mix.fadeTime=5;
~mix={0};
//////////
//i.beatBass.stop;
  i.drumsbk.stop;

  i.beatBass.play;
//////////////////P4
i.drumske=(
	kkk: INSTRUMENT(i.synths.kick[8]),
	hihatkk: INSTRUMENT(i.synths.hihat[1]),
	snarekk: INSTRUMENT(i.synths.snareNeuro),
	snarekb: INSTRUMENT(i.synths.snareBass),
);

	i.drumske.kkk[0].seq("1x2 :1/3 1x3 1x3").speed(4).do(2);
	i.drumske.kkk[1].seq("1x4 1x2  1x4 ").speed(4);
	i.drumske.kkk.amp=1.5;

	i.drumske.hihatkk.seq("1x2 :2 1").speed(4);
	i.drumske.hihatkk.amp=1.2;

    i.clear;
    i.beatBass.play;
	i.drumske.play;

	i.drumske.snarekk.seq("1x2  ").speed(4);
	i.drumske.snarekk.amp=0.9;

	i.drumske.snarekb.seq(" 1x3 1x3 ").speed(4);
	i.drumske.snarekb.amp=1.2;

)

	i.drumske.clock=1;
    i.drumske.clock=2;
	i.drumske.clock=1/2;
	i.drumske.clock=1/4;

	i.drumske.go(0);
    i.drumske.go(6);
	i.drumske.go(66);
    i.drumske.go(666);

	//i.drumske.fx = "gateDistort.hardcore";
	//i.drumske.fx = nil;

   //altern
i.drumske.clock=1/2;
i.drumske.clock=1/4;
i.drumske.clock=1/8;

i.beatBass.clock=1;

    i.clear;
    i.beatBass.play;
	i.drumske.play;

    i.drumske.stop;
/////////////////////
  ~mix= ~hc1;
  ~mix= ~hc1 + ~hc3;
  ~mix= ~hc3;

 i.beatBass.clock=1/8;
 i.drumske.stop;
//////////////////*******wprin vhgyyernaslngsdf  SatrimYersang****
  ~mix.fadeTime=5;
  ~mix={0};
  i.beatBass.stop;

////////MIkkkkccccccxxxx
(
//1 rim&ei **
{
	var in;
	in = SoundIn.ar([0,1], 0.4) * SinOsc.ar(MouseX.kr(10,2000,'exponential'), [0,0.5pi]);
	CombL.ar(
		in,
		0.5,
		MouseY.kr(0,0.5),	//delay time
		4,				// echo 60 dB decay time in seconds
		1, 				// scale by unity
		in				// mix with input
	)
}.play
)
/////SatrimYersang
///////////// 2 sum
(
// RMaRFI
{
	var input, modulator;
	input = SoundIn.ar([0,1],0.2);
	modulator = SinOsc.ar(
				MouseX.kr(10,4000,'exponential'),	//  ring mod freq
				[0,0.5pi]						// offset phase ofone osc by 90 degrees
			);
	RLPF.ar(
		input * modulator, 					// do ring modulation
		MouseY.kr(100, 12000, 'exponential'), 	// cutoff freq
		0.1)								// bandwidth ratio = 1/Q
}.play
)
///////------------------
















///////////////neeee

i.drumsRev = (
	kre: INSTRUMENT(i.synths.kick[2]),
	sre: INSTRUMENT(i.synths.snare[1]),
	hre: INSTRUMENT(i.synths.hihat[1]),
	cre: INSTRUMENT(i.synths.clap[3])
);

    i.drumsRev.kre.seq("1  :1/2 1   1 1.2 :1/2 1x2  1x4").speed(2);
    i.drumsRev.sre.seq(" 1  1  1  1x3  1  :1/4 1x3  :1/4 1x3 1x2      1x2 1");
    i.drumsRev.hre.seq("1x2 :1/2 1x3  :1/4 1x7  :1/2 1x3 1");
    i.drumsRev.cre.seq("1x4 1  1   1 1x4 1 1");

    i.drumsRev.go(0);
    i.drumsRev.go(111);

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

  ~mix.fadeTime=5;
  ~mix={0};

  i.clear;
  i.drumsRev.play;
i.drumske.play;
  i.drumsRev.stop;

