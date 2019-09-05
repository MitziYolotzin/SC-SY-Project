// First, boot SC and establish some variables

(

	e=Environment[

		'tempo' -> 192,
		'readyMessage' -> 'I N S T R U M E N T: ready'

	];

	e.know=true;



	s.options.memSize=2048*1024;
	s.options.maxNodes=512*1024;



	s.boot;

	s.volume=(-6);

	//MandelHub.join("voidfunction",57121,{m=MandelHub.instance});

	s.scope;
)

// MIDIClient.init

// MIDIClient.sources

(thisProcess.nowExecutingPath.dirname ++ "/tools/setup/setup.scd").load;
MIDIIn.connectAll;

// MIDIClient.disposeClient
