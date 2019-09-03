
// beat drumsOne

i=INSTRUMENT().play;

i.drumsOne = (
	k: INSTRUMENT(i.synths.kick[5]),
	s: INSTRUMENT(i.synths.snare[1]),
	h: INSTRUMENT(i.synths.hihat[4])
);

i.drumsOne.k.seq("1 2xx ").speed(2);
i.drumsOne.s.seq(" 1");
i.drumsOne.s.seq(" 1   1xx").speed(2);
i.drumsOne.h.seq("1xx 1xx 1xx").speed(2);
i.drumsOne.h.seq("0").speed(4);

i.drumsOne.go(0);
i.drumsOne.go(33);

i.drumsOne.fx = \reverb;
//i.drumsOne.fx = \delay2;
i.drumsOne.fx = nil;

i.tempo=192;
i.tempo=220;
//frt
i.tempo=320;


i.drumsOne.play
i.drumsOne.stop


i.tempo=192;
i.tempo=180;
i.tempo=140;
i.tempo=120;
i.tempo=220;
