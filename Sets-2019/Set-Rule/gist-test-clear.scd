(
s.boot;
s.doWhenBooted({

	i=INSTRUMENT().play;

	i.drums=(
		k:INSTRUMENT(i.synths.kick[3]),
		h:INSTRUMENT(i.synths.hihat[3]),
		s:INSTRUMENT(i.synths.snare[3]),
	);

	i.drums.k.seq("1x3  1x3  1x3  :2  1").speed(4);
	i.drums.h.seq("1x2  1 ").speed(8);
	i.drums.s.seq(" 1x3  1x2  :2 1  :1/2  1x3  1x2 ").speed(2);

	i.piano = INSTRUMENT(i.synths.piano[1]);
	i.piano.note("0 2 3");
	i.piano.fx="gateDistort.extreme";
	i.piano.octave=3;
	i.piano.amp=2;

});


)


(


	i.clear;

	i.drums2=(
		k:INSTRUMENT(i.synths.kick[0]),
	    s:INSTRUMENT(i.synths.snare[4]),
	);

	i.drums2.k.seq("1x2  1x4  1x3").speed(8);
	i.drums2.s.seq(" 1x2  :2 1  :1/2  1x3  1x2 ").speed(4);

	i.drums2.play;


)

(

	i.clear;

	i.drums=(
		k:INSTRUMENT(i.synths.kick[3]),
		h:INSTRUMENT(i.synths.hihat[3]),
		s:INSTRUMENT(i.synths.snare[3]),
	);

	i.drums.k.seq("1x3  1x3  1x3  :2  1").speed(4);
	i.drums.h.seq("1x2  1 ").speed(8);
	i.drums.s.seq(" 1x3  1x2  :2 1  :1/2  1x3  1x2 ").speed(2);

	i.piano = INSTRUMENT(i.synths.piano[1]);
	i.piano.note("0 2 3");
	i.piano.fx="gateDistort.extreme";
	i.piano.octave=3;
	i.piano.amp=2;

	i.drums.stop;
	i.piano.stop;

)

