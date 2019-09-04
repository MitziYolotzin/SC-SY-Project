
// beat drumsOne
s.scope
s.boot;
i=INSTRUMENT().play;

i.drumsOne = (
	k: INSTRUMENT(i.synths.kick[5]),
	s: INSTRUMENT(i.synths.snare[1]),
	h: INSTRUMENT(i.synths.hihat[4])
);

i.drumsOne.k.seq("1 2xx ").speed(2);
i.drumsOne.s.seq(" 1");
i.drumsOne.s.seq(" 1   1xx").speed(2);
i.drumsOne.h.seq("1xx  1xx  1xx").speed(2);
i.drumsOne.h.seq("0").speed(4);

i.drumsOne.go(0);
i.drumsOne.go(33);

i.drumsOne.fx = \reverb;
//i.drumsOne.fx = \delay2;
i.drumsOne.fx = nil;
i.drumsOne.fx = "reverb";
i.drumsOne.fx = 'reverb.full';
i.drumsOne.fx = 'reverb.small';

i.drumsOne.h.clock=2;
i.drumsOne.h.clock=1;
i.drumsOne.k.clock=1/2;
i.drumsOne.k.clock=1;
i.drumsOne.clock=1;
i.drumsOne.clock=2;

(
i.drumsOne.clock=1/4;
i.drumsOne.fx = 'reverb.full';
)

(
i.drumsOne.clock=2;
i.drumsOne.fx = 'reverb.small';
)


i.drumsOne.go(0);

i.tempo=192;


i.drumsOne.play
i.drumsOne.stop
