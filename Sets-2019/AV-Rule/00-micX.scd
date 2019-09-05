
(
// input noise gate *
{
	var input;
	input = SoundIn.ar([0,1]);
	Compander.ar(
		input, input,
		MouseX.kr(0.01, 0.5), 		// threshold
		10, 		// below threshold slope
		1		// above threshold slope
	)
}.play
)

//////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////

(
// echo input *
{
	var in;
	in = SoundIn.ar([0,1], 0.1);
	CombL.ar(
		in,
		0.5, 				// max delay time
		MouseX.kr(0,0.5),	// mouse x controls delay time
		4,				// echo 60 dB decay time in seconds
		1, 				// scale by unity
		in				// mix with input
	)
}.play
)

//////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////

(
// ring modulate & echo input **
{
	var in;
	in = SoundIn.ar([0,1], 0.4) * SinOsc.ar(MouseX.kr(10,2000,'exponential'), [0,0.5pi]);
	CombL.ar(
		in,
		0.5,
		MouseY.kr(0,0.5),	// mouse y controls delay time
		4,				// echo 60 dB decay time in seconds
		1, 				// scale by unity
		in				// mix with input
	)
}.play
)

////////////
(
// ring modulated and resonant filtered input *
{
	var input, modulator;
	input = SoundIn.ar([0,1],0.2);
	modulator = SinOsc.ar(
				MouseX.kr(10,4000,'exponential'),	// mouse x controls ring mod freq
				[0,0.5pi]						// offset phase ofone osc by 90 degrees
			);
	RLPF.ar(
		input * modulator, 					// do ring modulation
		MouseY.kr(100, 12000, 'exponential'), 	// mouse y controls cutoff freq
		0.1)								// bandwidth ratio = 1/Q
}.play
)
/////
