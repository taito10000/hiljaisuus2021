~luk = 1;
~luk.value;






(

var resetAfterWait, noppa, startTask, stopTask, maybeStartTask, startNew, maybeDoSmthg, wPlaying, luku1, luku2, ratx;


~teemat = [1,2,3, 4];
~teemaTime = 110;
~suunta = 1;



// HELPER FUNCTIONS::

resetAfterWait = {arg waat, ween;

	{"reset".postln}.defer(2);
	{waat.reset; "RESET DONE".postln}.defer(ween);
	{"reset3".postln}.defer(2);

};




noppa = {arg rare;

	var arpa, erpa, orpa;

	switch (rare,

	1, {[0,0,1].choose},
	2, {[0,0,0,1].choose},
	3, {[0,0,0,0,1].choose},
	4, {[0,0,0,0,0,0,0,0,1].choose});
};


maybeStartTask = {arg whaat, yritykset, tiheys, vaikeus;



	var taski;
	"Nopanheitto käynnistetty".postln;
	taski = Task {

		1.do {

			for (0, yritykset-1, {arg i;


			if (noppa.value(vaikeus) == 1, {

				if (whaat.isPlaying == false, {
					whaat.play;
					"Silmäluku osui - jotain tapahtuu".postln;
				});

		});

			tiheys.wait;

		});
		};
	};
	taski.play;
};


maybeDoSmthg = {arg toWhaat, wheen, yritykset, rte;

	var taski;
	"maybeDo".postln;
	toWhaat.set(\modtrig, 0);
	//toWhaat.set(\hpfhz, #[200, 1000],\modtrig, 1);
	taski = Task {
		"Yritän jotain".postln;
		1.do {

			for (0, yritykset-1, {arg i;
				var jaljella;

				jaljella = yritykset-i;
				if (wPlaying == true, {
				switch (noppa.value(1),
					0, {("Ei onnistunut. Vielä "+ jaljella + " yritysta.").postln;},
					1, {"JES".postln;


							switch (~suunta,
								0, {toWhaat.set(\hpfhz, #[300,300], \lpfhz, #[800, 5000], \modtrig, 1); ~suunta = 1;},
								1, {toWhaat.set(\hpfhz, #[300,700], \lpfhz, #[900, 1200], \modtrig, 1); ~suunta = 0;});



							40.wait; toWhaat.set(\modtrig, 0);});


				wheen.wait;
				toWhaat.set(\modtrig, 0);
				});
			});




		};




	};
	taski.play;
};



stopTask = {arg whaat;

	whaat.stop;
	whaat.reset;

};


startNew = {arg teema;

	"Uusi vaihe".postln;
	switch (teema,
		1, {~hilj1.play;},
		2, {~hilj2.play;},
		3, {~hilj3.play;},
		4, {~hilj4.play;})


};










// TASKS::::
~hiljaisuus = Task {


	Synth("rev1", [\mx, 0.2]);
	Synth("rev2", [\mx, 0.35]);
	Synth("del1", []);
	1.do {
		1.wait;
		~hilj1.play;
	};


};



~hilj1 = Task {

	var teema, tuuma, arpo;
	i.free;
	1.do {

		if (~vikinat.isPlaying == true, {~vikinatStop.play; ~vikinat.reset});
		if (~jarri.isPlaying == true, {~jarri.stop; ~jarri.reset;});
		~random.reset;

		tuuma = ~teemat;
		tuuma.removeAt(0);
		tuuma.postln;
		teema = tuuma.choose;
		~teemat = [1,2,3,4];

		arpo = [0,1,0].choose;

		("Jonossa: " + teema).postln;

		i = Buffer.readChannel(s, ~lattia[rrand(0,2)], channels:0, bufnum:11);
		w = Synth("grainer", [\buf, i, \dec, 0.5, \trg, 1, \ratz, #[0.3, 0.3], \dur, 0.6, \vol, 0.3, \dusts, 90, \lpfhz, #[15000,15000], \hpfhz, #[200,200]]);

		if (arpo == 1, {~w2 = Synth("grainer", [\buf, i, \dec, 0.5, \trg, 1, \ratz, #[0.1, 0.1], \dur, 0.6, \vol, 0.3, \dusts, 90, \lpfhz, #[15000,15000], \hpfhz, #[200,200]]);});



		wPlaying = true;
		5.wait;

		// MITÄ?, YRITYKSET, YRITYSTIHEYS, VAIKEUS:::
		maybeStartTask.value(~logs, 6, 8, 2);
		maybeStartTask.value(~random, 8, 10, 3);

		// MILLE (syna), TIHEYS,  YRITYKSET, ALKUP RATE  `::: :::
		maybeDoSmthg.value(w, 3, 13, 0.3);
		5.wait;
		maybeStartTask.value(~florr, 3 ,16, 2);
		~ps.set(\gatz, 0);
		~ks.set(\gatz, 0);

		~teemaTime.wait;
	};

	w.set(\gatz, 0);
	~w2.set(\gatz,0);
	wPlaying = false;
	resetAfterWait.value(~hilj1, 29);
	if (teema == 1, {
	{startNew.value(teema)}.defer(32);
	});
		if (teema != 1, {
		"Voidaa aloittaa seuraava jo".postln;
		startNew.value(teema);
	});
	};





~hilj2 = Task {

	var teema, arpa;
	wPlaying = true;
	~random.reset;

	if (~florr.isPlaying == true, {stopTask.value(~florr)});
	if (~logs.isPlaying == true, {stopTask.value(~logs)});
	j.free;
	1.do {
		teema = ~teemat.choose;
		("Jonossa: " + teema).postln;
		arpa = [0,1].choose;
		if (arpa == 0, {
		j = Buffer.readChannel(s, ~taustaLoopit[0], channels:0, bufnum:12);
			n = Synth("grainer", [\buf, j, \dec, 0.5, \trg, 1, \ratz, 1, \dur, 3, \vol, 0.97, \dusts, 10, \lpfhz, 150, \hpfhz, 20]);

		maybeStartTask.value(~kiivet, 4, 10, 3);
		});


		if (arpa == 1, {

		j = Buffer.readChannel(s, ~taustaLoopit[0], channels:0, bufnum:12);
			v = Synth("grainer", [\buf, j, \dec, 0.2, \trg, 1, \ratz, 0.85, \dur, 1.1, \vol, 0.12, \dusts, 30, \lpfhz, 1000, \hpfhz, 800]);
n = Synth("grainer", [\buf, j, \dec, 0.2, \trg, 1, \ratz, 0.37, \dur, 1.4, \vol, 2, \dusts, 40, \lpfhz, 120]);




			//n = Synth("grainer", [\buf, j, \dec, 0.5, \trg, 1, \ratz, 0.9, \dur, 1.1, \vol, 0.57, \dusts, 30]);



		});
		n.set(\modtrig, 0);
		maybeStartTask.value(~random, 8, 10, 3);
		maybeStartTask.value(~vikinat, 5, 8,3);
		30.wait;
		// MITÄ?, YRITYKSET, YRITYSTIHEYS, VAIKEUS:::
		maybeStartTask.value(~jarri, 3, 15,2);
		// MILLE (syna), TIHEYS,  YRITYKSET  `::: :::
		"NYT!".postln;

		[n.set(\lpfhz, #[230, 230], \modtrig, 1), n.set(\lpfhz, #[230, 200], \modtrig, 1), n.set(\lpfhz, #[230, 180], \modtrig, 1)].choose;
		~teemaTime.wait;
		n.set(\modtrig, 0);
		n.set(\lpfhz, #[230, 120], \modtrig, 1);

		n.set(\gatz, 0);
		v.set(\gatz, 0);
		wPlaying = false;
		~vikinatStop.play;
		~vikinat.reset;
		~kiivet.stop;
		~kiivet.reset;
		~ps.set(\gatz, 0);
		~ks.set(\gatz, 0);
		resetAfterWait.value(~hilj2, 29);
		if (teema == 2, {
			{startNew.value(teema)}.defer(32);});
		if (teema != 2, {
			"Voidaan aloittaa seuraava".postln;
			startNew.value(teema);});

	};
};


~hilj3 = Task {

	var teema, arpa, toiminta;

	if (~florr.isPlaying == true, {stopTask.value(~florr)});
	if (~logs.isPlaying == true, {stopTask.value(~logs)});
	if (~jarri.isPlaying == true, {stopTask.value(~jarri)});
	~random.reset;
	e.free;
	1.do {
		teema = ~teemat.choose;
		("Jonossa: " + teema).postln;

		toiminta = [1,2,3,4].choose;
		~ps.set(\gatz, 0);
		~ks.set(\gatz, 0);
		e = Buffer.read(s, ~taustaLoopit[4], bufnum:5);


		switch (toiminta,
			1, {"Vaihtoehto 1".postln;
				q = Synth("vesi1", [\ratz, #[0.7,1],\rtim, #[4], \gatz, 1, \att, 15, \rel, 29, \lpHz, 16000, \modgate, 1, \vol, 0.30, \moogQ, 0.4, \moogSat, 0.5, \moogType, 2]);
				q.set(\mooghz, #[500, 850], \hzgatz, 1);
				q.set(\hzgatz, 0, \modgate, 0);

				[20, 26].choose.wait;
				q.set(\moogHz, #[850, 1900], \hzgatz, 1);
				q.set(\ratz, #[1, 1.5], \rtim, #[40], \modgate , 1);
				1.wait;
				q.set(\hzgatz, 0, \modgate, 0);},
			2, {"Vaihtoehto 2".postln;
				q = Synth("vesi1", [\ratz, #[-0.7,-0.7],\rtim, #[7], \gatz, 1, \att, 15, \rel, 29, \lpHz, 16000, \modgate, 1, \vol, 0.30, \moogQ, 0.4, \moogSat, 0.5, \moogType, 2]);
				q.set(\mooghz, #[500, 850], \hzgatz, 1);
				q.set(\hzgatz, 0, \modgate, 0);

				[26, 30].choose.wait;
				q.set(\moogHz, #[850, 1000], \hzgatz, 1);
				q.set(\ratz, #[1, -0.3], \rtim, #[40], \modgate , 1);
				1.wait;
				q.set(\hzgatz, 0, \modgate, 0);
				1.wait;
				q.set(\ratz, #[1, -1.0], \rtim, #[40], \modgate , 1);
				1.wait;
				q.set(\hzgatz, 0, \modgate, 0);},


			3, {"Vaihtoehto 3".postln;
				q = Synth("vesi1", [\ratz, #[1,1.1],\rtim, #[30], \gatz, 1, \att, 15, \rel, 29, \lpHz, 16000, \modgate, 1, \vol, 0.30, \moogQ, 0.4, \moogSat, 0.5, \moogType, 2]);
				q.set(\mooghz, #[500, 850], \hzgatz, 1);
				q.set(\hzgatz, 0, \modgate, 0);

				[15, 30].choose.wait;
				q.set(\moogHz, #[950, 1900], \hzgatz, 1);
				q.set(\ratz, #[1, 1.8], \rtim, #[80], \modgate , 1);
				1.wait;
				q.set(\hzgatz, 0, \modgate, 0);},
			4, {"Vaihtoehto 4".postln;
				q = Synth("vesi1", [\ratz, #[0.7,1.1],\rtim, #[4], \gatz, 1, \att, 15, \rel, 29, \lpHz, 16000, \modgate, 1, \vol, 0.30, \moogQ, 0.4, \moogSat, 0.5, \moogType, 2]);
				q.set(\mooghz, #[500, 850], \hzgatz, 1);
				q.set(\hzgatz, 0, \modgate, 0);

				[20, 30].choose.wait;
				q.set(\moogHz, #[700, 900], \hzgatz, 1);
				q.set(\ratz, #[1, 0.7], \rtim, #[60], \modgate , 1);
				~vikinat.play;
				1.wait;
				q.set(\hzgatz, 0, \modgate, 0);});




		~teemaTime.wait;
		q.set(\gatz, 0);
		~vikinatStop.play;
		~ps.set(\gatz, 0);
		~ks.set(\gatz, 0);
		~vikinat.reset;
		resetAfterWait.value(~hilj3, 29);
		if (teema == 3, {
			{startNew.value(teema)}.defer(32);});
		if (teema != 3, {
			"Voidaan aloittaa seuraava".postln;
			startNew.value(teema);});

	};

};


~hilj4 = Task {

	var teema, arpa;

	if (~florr.isPlaying == true, {stopTask.value(~florr)});
	if (~logs.isPlaying == true, {stopTask.value(~logs)});
	~random.reset;
	u.free;
	1.do {
		teema = ~teemat.choose;
		("Jonossa: " + teema).postln;

		u = Buffer.read(s, ~taustaLoopit[2], bufnum:21);
		0.5.wait;
	o = Synth("vesi1", [\buf, u, \ratz, #[0.7,1.56],\rtim, #[4], \gatz, 1, \att, 15, \rel, 29, \lpHz, 16000, \modgate, 1, \vol, 0.6, \moogQ, 0.4, \moogSat, 0.5, \moogType, 2]);

	o.set(\mooghz, #[800, 1200], \hzgatz, 1);
	o.set(\hzgatz, 0, \modgate, 0);


		20.wait;
		o.set(\moogHz, #[1850, 1800], \hzgatz, 1);
		o.set(\ratz, #[1, 0.8], \rtim, #[40], \modgate , 1);
		1.wait;
			o.set(\hzgatz, 0, \modgate, 0);

		// MITÄ?, YRITYKSET, YRITYSTIHEYS, VAIKEUS:::
		maybeStartTask.value(~random, 8, 10, 3);
		maybeStartTask.value(~vikinat, 8, 15,4);
		maybeStartTask.value(~logs, 5, 10,3);
		1.wait;
		maybeStartTask.value(~kiivet, 4, 10, 4);
		~teemaTime.wait;


		o.set(\gatz, 0);
		~kiivet.stop;
		~kiivet.reset;
		resetAfterWait.value(~hilj4, 29);
		if (teema == 4, {
			{startNew.value(teema)}.defer(32);});
		if (teema != 4, {
			"Voidaan aloittaa seuraava".postln;
			startNew.value(teema);});

	};

};

)





j.free;
j = Buffer.readChannel(s, ~taustaLoopit[0], channels:0, bufnum:12);
n = Synth("grainer", [\buf, 12, \dec, 0.5, \trg, 1, \ratz, 0.3, \dur, 0.6, \vol, 0.1, \dusts, 90]);
n.set(\ratz, 1, \vol, 0.95, \dur, 3, \dusts, 10, \lpfhz, 150, \hpfhz, 20)

n = Synth("grainer", [\buf, j, \dec, 0.5, \trg, 1, \ratz, 1, \dur, 3, \vol, 0.97, \dusts, 10, \lpfhz, 150, \hpfhz, 20]);

n.set(\lpfhz, #[250, 220], \hpfhz, #[20, 20], \modtrig, 1);
n.set(\modtrig, 0);

n.free;


/////////////////////////////////////////




~hiljaisuus.play;




////////////////////////////////////////





i = Buffer.readChannel(s, ~lattia[rrand(0,2)], channels:0, bufnum:11);
		w = Synth("grainer", [\buf, i, \dec, 0.5, \trg, 1, \ratz, #[0.08, 0.08], \dur, 0.6, \vol, 0.3, \dusts, 90, \lpfhz, #[15000,15000], \hpfhz, #[200,200]]);




v.free;
n.free;

~hilj1.play;
~hilj2.play;
~hilj3.play;
~hilj4.play;

~hilj1.stop;
~hilj2.stop;
~hilj3.stop;
~hilj4.stop;

~vikinatStop.play;

~.isPlaying;
~logs.stop;
~
(
Synth("rev1", [\mx, 0.2]);
	Synth("rev2", [\mx, 0.35]);
	Synth("del1", []);
)
~ps.set(\gatz, 0);
	~ks.set(\gatz, 0);
// RESETS ::::
(
~hiljaisuus.stop;
~florr.reset;
~vikinat.reset;
~logs.reset;
~jarri.reset;
~hilj1.reset;
~hilj2.reset;
~hilj3.reset;
~hilj4.reset;
~hiljaisuus.reset;)