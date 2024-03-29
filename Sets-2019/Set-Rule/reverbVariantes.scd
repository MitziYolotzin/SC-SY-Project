SynthDef(\reverb, {
	arg
	inBus=0,
	outBus=0,
	wet=0.5,
	room=0.75,
	damp=0.75,
	amp=1;

	var sig;
	var targetRoom, targetDamp, lag=0.3;
	var dsp, mix;

	sig = In.ar(inBus) * 2.5;

	dsp = FreeVerb.ar( sig, 1, room, damp );

	mix = (sig * (1-wet)) + (dsp * wet);

	Out.ar( outBus, Pan2.ar( mix * amp.linlin(0,1,0,1.5), 0 ) );

}, variants: (
	small: [wet:3/4,room:0.25,damp:0.25],
	full: [wet:1,room:1,damp:1]
)).store;
