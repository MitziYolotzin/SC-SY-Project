
i.basstt = (
   bass1: INSTRUMENT(i.synths.bass.trance[2]),
   bass2: INSTRUMENT(i.synths.bass.trance[1])
);

i.basstt.bass1.note(":1/8 1x8").speed(2);
i.basstt.bass1.clock=1/2;
i.basstt.bass1.octave=4;
i.basstt.bass1.amp=2.5;

i.basstt.bass2.note("1 :1/4 1x4 1x2 :1/2 1x2 1").speed(2);
i.basstt.bass2.clock=1/2;
i.basstt.bass2.octave=5;
i.basstt.bass2.amp=1.5;

i.basstt.go(0);
i.basstt.go(225);

i.basstt.play;
i.basstt.stop;
