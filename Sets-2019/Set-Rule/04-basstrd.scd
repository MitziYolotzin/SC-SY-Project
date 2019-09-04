
i.basstrd = (

   bstrd1: INSTRUMENT(i.synths.bass.trance[3]),
   bstrd2: INSTRUMENT(i.synths.bass.trance[1])

);

i.basstrd.bstrd1[0].note("1  :1/2 1x4").speed(3).x(3);
i.basstrd.bstrd1[1].note("1x3 1x2 1x3").speed(2).x(1);
i.basstrd.bstrd1.clock=1;
i.basstrd.bstrd1.octave=3;
i.basstrd.bstrd1.amp=1.2;

i.basstrd.bstrd2[0].note("1x2 :1/2 1x2 1x2").speed(2);
i.basstrd.bstrd2[1].note("1 :1/4 1x4").speed(3);
i.basstrd.bstrd2.clock=1;
i.basstrd.bstrd2.octave=3;
i.basstrd.bstrd2.amp=1.5;

i.basstrd.go(0);

(
i.every(2,{
	//i.basstrd.clock=1/[1/2, 1, 2, 4, 6, 8].choose;
    i.basstrd.set(\rel, 2);
});
)

i.basstrd.play;
i.basstrd.stop;
