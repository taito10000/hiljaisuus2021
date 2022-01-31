Server.default.options.inspect


s.quit;

s.makeWindow;

s.options.outDevice = "Aggregate Device"
s.options.memSize = 1024*200;
s.options.blockSize = 512;
s.options.numBuffers = 1024;
s.options.sampleRate = 48000;

s.options.inspect
s.boot;

w = Bus.audio(s,2);
u = Bus.audio(s,2);
{Saw.ar([400,440,500,550], 0.5)}.play;


// SOUNDILISTAT ja BUSSIT:

(

~taustaLoopit = [

	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/02_puro+meh_loop.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/03.2_Jokiloop_rode.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/03.4_Jokiloop3_rode.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/06_Linnustoa2_vaimea.aif",
    "/Applications/SuperCollider/sounds/2021 - Hiljaisuus/04_saasket1.aif"

]; // 5

~sndHirretF = [
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Hirret/401_LaiskeHirsi.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Hirret/402_LaiskeHirsi.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Hirret/403_LaiskeHirsi.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Hirret/404_LaiskeHirsi.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Hirret/408_LaiskeHirsi.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Hirret/410_LaiskeHirsi.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Hirret/411_LaiskeHirsi.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Hirret/412_LaiskeHirsi.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Hirret/416_LaiskeHirsi.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Hirret/418_LaiskeHirsi.aif"
]; // 10  (BUFFER: a)


~sndHirretM = [

	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Hirret/01_jokiHirsi01.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Hirret/03_jokiHirsi03.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Hirret/05_jokiHirsi05.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Hirret/07_jokiHirsi07.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Hirret/12_jokiHirsi12.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Hirret/313_isoHirsi.aif"
]; // 6


~lattia = [


	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/LATTIA/04_Narinaa_01.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/LATTIA/07_narinaa_02.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/LATTIA/08_narinaa_03.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/LATTIA/09_naksetta.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/LATTIA/11_narinaa.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/LATTIA/16_narsk_matala4.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/LATTIA/19_Nirsk_hidas3.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/LATTIA/30_matala1.aif"

];// 8

~lattiaFX = [
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/LATTIA/20_Vinkaus01.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/LATTIA/21_vinkaus02.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/LATTIA/22_vinkaus03.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/LATTIA/25_vinkaus06.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/LATTIA/24_vinkaus05.aif"

]; // 5


~kivet = [

	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Laattakivet/01_kivi1.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Laattakivet/02_kivi2.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Laattakivet/05_kivi5.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Laattakivet/06_kivi6.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Laattakivet/08_kivi8.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Laattakivet/09_kivi9.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Laattakivet/10_kivi10.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Laattakivet/28_kivi28.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Laattakivet/30_kivi30.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Laattakivet/31_kivi31.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Laattakivet/32_kivi32.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Laattakivet/34_kivi34.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Laattakivet/35_kivi35.aif"
]; // 13

~kiviTausta = [
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Laattakivet/100_pikkukivi.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Laattakivet/104_pikkukivi.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Laattakivet/105_pikkukivi.aif"
]; // 3


~saasket = [
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Saaskia/01_Saaskia1.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Saaskia/02_Saaskia2.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Saaskia/03_Saaskia3.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Saaskia/04_saaskia4.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Saaskia/07_muulintu.aif"
];  // 5

~jarrit = [
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Jarri/01_jarriJaHyttys.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Jarri/02_jarri.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Jarri/03_lintuEri.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Jarri/04_jarri.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Jarri/05_Muulintu.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Jarri/06_Jarri.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Jarri/07_muulintu.aif",
	"/Applications/SuperCollider/sounds/2021 - Hiljaisuus/Jarri/08_jarri.aif"
];   // 8

w = Bus.audio(s, 2);
x = Bus.audio(s, 2);
y = Bus.audio(s, 2);
z = Bus.audio(s, 2);

a = Buffer.read(s,~sndHirretF[0], bufnum:1);
b = Buffer.read(s, ~sndHirretM[0], bufnum: 2);
c = Buffer.read(s, ~lattia[0], bufnum:3);
d = Buffer.read(s, ~jarrit[0], bufnum: 4);
e = Buffer.read(s, ~taustaLoopit[1], bufnum:5);
f = Buffer.read(s, ~saasket[0], bufnum: 6);
~rand = Buffer.read(s, ~lattiaFX[0], bufnum: 19);
~ki = Buffer.read(s, ~kivet[0], bufnum: 23);


h = Buffer.alloc(s,10*48000, 2, bufnum:10);
// grainerin Buffer:
//i = Buffer.readChannel(s, ~taustaLoopit[0], channels:0, bufnum:11);
i = Buffer.readChannel(s, ~lattia[0], channels:0, bufnum:11);





)

(


// SYNTHDEFs
// Ensin Grainer sitten muut



SynthDef("grainer", {arg vol=1,buf=i, att=0.1, dec=0.2, rel=0.1, ratz=#[1,1], gatz=1,trg=0, dur=0.5, dusts=15, lpfhz=#[15000, 15000], hpfhz=#[200,200], modtrig=0;


	var enve,liuku,luiku,leuku, syn, pan,pann, lpf, hpf, mod, modd, trig, line;

	enve = EnvGen.kr(Env.new([0,1,1,0], [20, 1, 30], releaseNode:2), gatz, doneAction:2);
	liuku = EnvGen.kr(Env.new(lpfhz, [40]), modtrig, doneAction:0);
	luiku = EnvGen.kr(Env.new(hpfhz, [40]), modtrig, doneAction:0);
	leuku = EnvGen.kr(Env.new(ratz, [3]), modtrig, doneAction:0);



	// pan = SinOsc.kr(0.3, 0, 2,-1);
	line = SinOsc.kr(0.001, 0, i.numFrames, i.numFrames/2);
	pan = Dust2.kr(100,1)*0.6;
	trig = Dust.kr(dusts, 1, -0.5);

	//syn = TGrains3.ar(2,trig, 11, ratz,4*48000,dur, pan, vol, att, rel, 1,4);
	syn = TGrains2.ar(2,trig, buf, leuku,line, dur, pan, vol, 0.2, 0.5,4);
	hpf = HPF.ar(syn, luiku);
	lpf = LPF.ar(hpf, liuku);
	//pann = Pan2.ar(lpf, 0)*enve;
	pann = Pan4.ar(lpf, 0, 0)*enve;

	Out.ar([0,2], pann);
	//Out.ar(0, pann);

}).send(s);






// MUUT SYNAT

SynthDef("kiivit", {arg buf=23, vol=0.5, pann=0, lpfhz=10000, hpfhz=100, ratz=1, gatz=1, att=0.1, rel=15, lop=0;

	var syna, pan, lpf, hpf, enve;
	enve = EnvGen.kr(Env([0,vol,vol,0], [att, 1, rel],releaseNode:2),gatz, doneAction:2);
	syna = PlayBuf.ar(2, buf, ratz, 1, loop:lop);
	lpf = LPF.ar(syna, lpfhz);
	hpf = HPF.ar(lpf, hpfhz);
	pan = Pan2.ar(hpf, 0)*enve;
	Out.ar(x, pan);


}).send(s);




SynthDef("randomness", {arg pann, vol=0.3, gatz=1, ratz=0.5;

	var pan, syn, enve, anve, panner, lpf;
	enve = EnvGen.kr(Env([0,1,0], [0.1,2]), doneAction:2);
	panner = SinOsc.kr(0.3, 0, 2, -1);

	syn = PlayBuf.ar(2, 19, ratz);
	lpf = LPF.ar(syn, 3500);
	pan = Pan2.ar(lpf, panner,vol*enve);
	Out.ar(z, pan);

}).send(s);



SynthDef("saaski", {arg pann=0, vol=1, att=4, dec=0.1, rel=20, ratz=1, lpHz=19000, gatz=1, moogQ=0.4, moogSat=0.4, moogHz=#[9000,9000], hzgatz=0, mooggatz=0, mod=#[1,1], modCg=#[5], modmul=10, modmix=#[0.1, 0.0], modgate=0, moogType=0;

	var syn, hpf,pan, modd,enve, liuku, luiku,leuku, moogF, lpf, mixer, bpf;

	luiku = EnvGen.kr(Env.new(mod, modCg), modgate);
	leuku = EnvGen.kr(Env.new(modmix, [10]), modgate);

	modd = Saw.kr(1*luiku, modmul,0);
	liuku = EnvGen.kr(Env.new(moogHz, [30]), mooggatz);

	enve = EnvGen.kr(Env.new([0,1,1,0], [att, dec, rel],releaseNode:2), gatz, doneAction:2);
	syn = PlayBuf.ar(2, f, ratz, loop:1);
	bpf = BMoog.ar(syn, liuku+(modd*leuku), moogQ, moogType, moogSat);
	lpf = LPF.ar(bpf, lpHz+(modd*leuku),1.6);
	hpf = HPF.ar(lpf, 800);
	pan = Pan2.ar(hpf, pann);
	mixer = pan*enve*vol;

	Out.ar(z, mixer);


}).send(s);



SynthDef("vesi1", {arg pann=0, vol=1, att=0.03, dec=0.17, rel=0.1, ratz=#[1,1],rtim=#[10],  lpHz= 19000,   gatz=1, moogQ=0.5,moogSat=0.80, moogType=0, mooghz=#[600, 800], hzgatz=0, mod=#[1,1], modwid=0.5, modmul=10, modadd=0, modmix=0, modgate=0, buf=5;


	var syn, pan, lpf, comp, enve, mixer, rev, liuku, luiku,leuku,  bpf, modd;
	//shutter = EnvGen.kr(Env.new([0,1,1,0], [1,shut-2,1]),1, doneAction:2);


	//modd = SinOsc.kr(1, 0, 10);

	leuku = EnvGen.kr(Env.new(ratz, rtim), modgate);
	luiku = EnvGen.kr(Env.new(mod, [30]), modgate);
	//modd = Saw.kr(luiku, modmul, modadd);
	modd = LFPulse.kr(luiku,0,0.5, modmul, modadd);
	liuku = EnvGen.kr(Env.new(mooghz, [30]),hzgatz);
	enve = EnvGen.kr(Env.new([0,vol,vol,0], [att,dec,rel], releaseNode:2),gatz, doneAction:2);
	syn = PlayBuf.ar(2, buf, leuku, 0,loop:1, doneAction: 0);
	bpf = BMoog.ar(syn, liuku+(modd*modmix),moogQ,moogType,moogSat);
	lpf = LPF.ar(bpf, lpHz+(modd*modmix), 1);
	// comp = Compander.ar(lpf, lpf, 0.7, 0.7, 1.1,0.05,0.2,1,1);
	pan = Pan2.ar(lpf, pann);

	mixer = pan*enve*vol;
	Out.ar(y,mixer);


}).send(s);









SynthDef("jarri", {arg pann=0, vol=1, att=0.03, dec=0.17, rel=0.1, ratz=0.5, lpHz= 2000, mx=0.05, bstophz=11200, shut=8;


	var syn, pan, lpf, comp, enve, mixer, rev, shutter, bpf, delay;
	shutter = EnvGen.kr(Env.new([0,1,1,0], [1,shut-2,1]),1, doneAction:2);
	enve = EnvGen.kr(Env.new([0,vol,vol,0], [att,dec,rel]),1, doneAction:0);
	syn = PlayBuf.ar(2, d, ratz, 0, doneAction: 0);
	bpf = BMoog.ar(syn,bstophz,0.2,0, 0.85);
	lpf = LPF.ar(bpf, lpHz);
	comp = Compander.ar(lpf, lpf, 0.4, 1, 0.5,0.05,0.2,1,0);
	pan = Pan2.ar(comp, pann);

	mixer = pan*enve;



	//rev = FreeVerb2.ar(mixer[0], mixer[1],mx, 0.75, 0.5);
	//rev = FreeVerb.ar(mixer, mx, 0.7,0.4);


	Out.ar(z,mixer);


}).send(s);




SynthDef("floor", {arg pann=0, vol=1, att=0.01, dec=0.17, rel=0.1, ratz=0.5, lpHz= 5000, mx=0.05, bstophz=1600;


	var syn, pan, lpf, comp, enve, mixer, rev, shutter, bpf;
	shutter = EnvGen.kr(Env.new([0,1,1,0], [1,8,1]),1, doneAction:2);
	enve = EnvGen.kr(Env.new([0,1,1,0], [att,dec,rel]),1, doneAction:0);
	syn = PlayBuf.ar(2, c, ratz, 0, doneAction: 0);
	bpf = BBandStop.ar(syn,bstophz,1, 1);
	lpf = LPF.ar(bpf, lpHz);
	// comp = Compander.ar(lpf, lpf, 0.7, 0.7, 1.0,0.05,0.2,1,1);
	pan = Pan2.ar(lpf, pann);

	mixer = pan*enve*vol;
	//rev = FreeVerb2.ar(mixer[0], mixer[1],mx, 0.75, 0.5);
	//rev = FreeVerb.ar(mixer, mx, 0.7,0.4);


	Out.ar(x,mixer);


}).send(s);






SynthDef("log", {arg pann=0, vol=1, att=0.02, dec=0.17, rel=0.1, ratz=0.5, lpHz= 18000, mx=0.05, bstophz=1500;


	var syn, pan, lpf, comp, enve, mixer, rev, shutter, bpf;
	shutter = EnvGen.kr(Env.new([0,1,1,0], [1,3,1]),1, doneAction:2);
	enve = EnvGen.kr(Env.new([0,1,1,0], [att,dec,rel]),1, doneAction:0);
	syn = PlayBuf.ar(2, a, ratz, 0, doneAction: 0);
	bpf = BBandStop.ar(syn,bstophz,1, 1);
	lpf = LPF.ar(bpf, lpHz);
	//comp = Compander.ar(lpf, lpf, 0.7, 0.6, 0.9, 0.2,0.2,1,1);
	pan = Pan2.ar(lpf, pann);

	mixer = pan*enve*vol;
	//rev = FreeVerb2.ar(mixer[0], mixer[1],mx, 0.75, 0.5);
	//rev = FreeVerb.ar(mixer, mx, 0.7,0.4);


	Out.ar(x,mixer);


}).send(s);

SynthDef("litliLogs", {arg pann=0, vol=1, att=0.02, dec=0.17, rel=0.1, ratz=0.5, lpHz= 14000, mx=0.05, bstophz=1000;


	var syn, pan, lpf, comp, enve, mixer, rev, shutter, bpf;
	shutter = EnvGen.kr(Env.new([0,1,1,0], [1,1,1]),1, doneAction:2);
	enve = EnvGen.kr(Env.new([0,vol,vol,0], [att,dec,rel]),1, doneAction:0);
	syn = PlayBuf.ar(2, b, ratz, 0, doneAction: 0);
	bpf = BBandStop.ar(syn,bstophz,1, 1);
	lpf = LPF.ar(bpf, lpHz);
	// comp = Compander.ar(lpf, lpf, 0.7, 0.6, 1.1,0.05,0.2,1,1);
	pan = Pan2.ar(lpf, pann);

	mixer = pan*enve;
	//rev = FreeVerb2.ar(mixer[0], mixer[1],mx, 0.6, 0.5);
	//rev = FreeVerb.ar(mixer, mx, 0.7,0.4);


	Out.ar(z,mixer);


}).send(s);



// FX

SynthDef("del1", {

	var delay, in, lpf;
	in = In.ar(y, 2);
	delay = MultiTap.ar([0.55, 1.2, 1.9, 2.8, 3.9],[0.5,0.35,0.25,0.1, 0.1],in,1,0,10);
	lpf = BMoog.ar(delay, 1500, 0.3,0,0.80);
	Out.ar(x, lpf+in);

}).send(s);

SynthDef("rev1", {arg mx=0.05;


	var in, syn, pan;

	in = In.ar(x, 2);
	syn = FreeVerb.ar(in, mx, 0.9,0.5);
	pan = Pan4.ar(syn, 0, 0);
	Out.ar([0,2], pan);
	//Out.ar(0, pan);

}).send(s);

SynthDef("rev2", {arg mx=0.15;


	var in, syn, pan;

	in = In.ar(z, 2);
	syn = FreeVerb.ar(in, mx, 0.9,0.3);
	Out.ar(0, syn);

}).send(s);



)



(
/*
~ves1 = Task {


		var len;
		e.free;
		e = Buffer.read(s, ~taustaLoopit[0], bufnum:5);


		len = ((d.numFrames/48000)*(1/randrate)).postln;
		i = Synth("vesi1", [\vol, 1,\att, len*0.3, \dec,len*0.3 , \rel, len*0.4, \shut, len, \lpHz, 900, \ratz, randrate]);
		};

*/


~jarri = Task {

	30.do {
		var randvol, randrate, len;
		d.free;
		randrate = [0.5, 1].choose;
		randvol = rrand(0.2,0.3).postln;
		d = Buffer.read(s, ~jarrit[rrand(0,7)], bufnum:4);

		0.4.wait;
		len = ((d.numFrames/48000)*(1/randrate)).postln;
		h = Synth("jarri", [\vol, randvol,\att, len*0.3, \dec,len*0.3 , \rel, len*0.4, \shut, len, \lpHz, 2800, \ratz, randrate]);
		([7.5, 14.5, 10.5].choose+len).wait;
	};


};



~florr = Task {

	10.do {
		var randvol, len, randratz;
		c.free;
		randvol = rrand(0.35,0.40);
		randratz = [0.5, 0.75, 0.21].choose;

		c = Buffer.read(s, ~lattia[rrand(0,7)], bufnum:3);

		0.5.wait;
		len = (c.numFrames/48000)*(1/randratz);
		g = Synth("floor", [\vol, randvol,\ratz, randratz,\att, len*0.2, \dec,len*0.5 , \rel, len*0.3]);
		([4.5, 7.5, 11.5].choose+len).wait;
	};


};

~logs = Task {

	10.do {
		a.free;
		a = Buffer.read(s,~sndHirretF[rrand(0,9)], bufnum:1);
		0.5.wait;
		m = Synth("log", [\ratz, 0.5, \dec, 0.4, \bstophz, 1500, \lpHz, 1000]);

		[20,40,15.5, 21].choose.wait;

	};
};


~litlogs = Task {

	8.do {
		var vols, volrand;
		vols = Pseq([0.65,0.40, 0.34, 0.32, 0.30, 0.24, 0.21, 0.19, 0.15, 0.1, 0.09, 0.05, 0.03, 0.03,0.025,0.02]);
		volrand = vols.asStream;

		b.free;
	    b = Buffer.read(s,~sndHirretM[rrand(0,5)], bufnum:2);
		0.2.wait;

		16.do{
			var len, vrand, vorand;
			len = (b.numFrames/48000);
			vrand = 1;
			vorand = [0.1,0.2,0.15,0.25,0.6,0.3,0.1].choose;
			Synth("litliLogs", [\ratz, vrand, \dec, len*0.3, \rel, len*0.1, \mx, 0.30, \bstophz, 1900, \vol, volrand.next]);

			//[2,5.5,11.5].choose.wait;};


			([0.08,0.078,0.22,0.086, 0.077, 0.081].choose).wait;
		};
		4.wait;

	};
};

~vikinat = Task {

	f = Buffer.read(s, ~saasket[1], bufnum: 6);
	~ps = Synth("saaski", [\att, 7, \rel, 15,\hpHz, 4000,\ratz,2,\vol, 1,\moogQ, 0.4,\moogSat, 0.97,\moogType, 0,\moogHz, #[3000, 1450],\mooggatz, 1,\mod, #[10,8],\modCg, #[1],\modmix, #[0, 0],\modmul, 700,\modgate, 1]);
~ps.set(\vol, 1.2);

	~ks = Synth("saaski", [\att, 9, \rel, 17,\hpHz, 4000,\moogQ, 0.4, \moogSat, 0.98, \moogType, 0,\moogHz, #[3000, 1000], \mooggatz, 1,\mod, #[10,8.05],\modCg, #[1],\modmix, #[0, 0], \modmul, 200, \modgate, 1]);

~ks.set(\vol, 1.2);
~ps.set(\modgate, 0, \mooggatz, 0);
~ks.set(\modgate, 0, \mooggatz, 0);

};

~vikinatStop = Task {

	~ps.set(\gatz, 0);
	~ks.set(\gatz, 0);

};

~taustaa = Task {

	e = Buffer.read(s, ~taustaLoopit[4], bufnum:5);
	q = Synth("vesi1", [\ratz, #[0.7,1],\rtim, #[4], \gatz, 1, \att, 16, \rel, 25, \lpHz, 16000, \modgate, 1, \vol, 0.34, \moogQ, 0.4, \moogSat, 0.5, \moogType, 2]);

	q.set(\mooghz, #[500, 850], \hzgatz, 1);
	q.set(\hzgatz, 0, \modgate, 0);


};

~random = Task {


	var rrnd;

	[2,3,5,7].choose.do {
		~rand = Buffer.read(s, ~lattiaFX[rrand(0,4)], bufnum:19);
		0.5.wait;
		rrnd = rrand(0.3, 0.8);
		Synth("randomness", [\vol, 0.3, \ratz, rrnd]);
		[2.0, 4].choose.wait;

	};

};

~kiivitausta = Task {

	~bu = Buffer.read(s, ~kiviTausta[1], bufnum: 40);
	~kivitausta = Synth("kiivit", [\lop, 1, \vol, 0.5, \bufnum, 40]);

};






~kiivet = Task {

	var bufs = Array.newClear(13);

	for (0,12, {arg i;
		bufs[i] = Buffer.read(s, ~kivet[i], bufnum:23+i);


	});
	~bu = Buffer.read(s, ~kiviTausta[0], bufnum: 39);
	~kivitausta = Synth("kiivit", [\lop, 1, \vol, 0.55, \buf, 39, \gatz, 1,\ratz, 0.6 ]);

	30.do{arg i;
		var volr, bufr;

		if (i == 12, {~kivitausta.set(\gatz, 0)});
		volr = rrand(0.6,1);
		bufr = rrand(0,12);

		Synth("kiivit", [\vol, volr, \buf, 23+bufr, \gatz, 1, \lpfhz, 15000]);
		[1, 3, 5, 7].choose.wait;

	};



};



)



e = Buffer.read(s, ~taustaLoopit[rrand(0,3)], bufnum:5);


l = Synth("kiivit", []);
l.set(\gatz, 0);

l = Synth("grainer", [\buf, 25, \vol, 0.5]);
(

Synth("rev1", [\mx, 0.2]);
	Synth("rev2", [\mx, 0.40]);
	Synth("del1", []);

)
~bu = Buffer.read(s, ~kiviTausta[0], bufnum: 39);
 ~kivitausta = Synth("kiivit", [\lop, 1, \vol, 0.1, \buf, 39, \gatz, 0,\ratz, 0.3 ]);
~kivitausta.set(\gatz, 0);
~jep = Synth("randomness", [\vol, 0.2, \ratz, 0.4]);


~kiivet.play;
~kiivet.reset;
~kiivet.stop;
~kiivitausta.play;


~logs.play;
~litlogs.play;
~florr.play;
~jarri.play;
~ves1.play;
~vikinat.play;

~random.play;
~random.stop;
~random.reset;
~vikinatStop.play;
~vikinat.reset;
~florr.reset;
~litlogs.reset;
~logs.reset;
~jarri.reset;
~ves1.reset;

~logs.stop;
~litlogs.stop;


w = Synth("grainer", [\buf, i, \dec, 0.5, \trg, 1, \ratz, 0.3, \dur, 0.4, \vol, 0.3, \dusts, 90]);
w.set(\hpfhz, #[300,800],\lpfhz, #[1000,1000],\ratz, #[0.3, 0.31], \modtrig, 1);
w.set(\modtrig, 0);

// VESI JA MEHIL homman controllit:
e = Buffer.read(s, ~taustaLoopit[4], bufnum:5);
q = Synth("vesi1", [\ratz, #[0.3,1],\rtim, #[4], \gatz, 1, \att, 10, \rel, 20, \lpHz, 6000, \modgate, 1]);
q.set(\hzgatz, 0, \modgate, 0);
q.set(\ratz, #[0.2, 1], \rtim, [530], \modgate, 1);
q.set(\lpHz, 19200, \vol, 0.2);
q.set(\mooghz, #[1500, 1900], \hzgatz, 1);
q.set(\hzgatz, 0, \modgate, 0);
q.set(\moogQ, 0.5, \moogSat, 0.4, \moogType, 2);
q.set(\modmix, 0.1);
q.set(\mod, #[10,4], \modmul,300, \modadd, 0, \modgate, 1);
q.set(\modgate, 0);
q.set(\vol, 1);

q.set(\gatz, 0);


q.set(\gatz, 0);


// SAASKI COntrollit   (5 sääskeä)
f = Buffer.read(s, ~saasket[1], bufnum: 6);
p = Synth("saaski", [\moogQ, 0.2,\moogSat, 0.6,\rel, 15,\hpHz, 19000,\ratz,2,\vol, 1,\moogQ, 0.4,\moogSat, 0.95,\moogType, 2,\moogHz, #[3000, 1500],\mooggatz, 1,\mod, #[10,8],\modCg, #[1],\modmix, #[1, 0.6],\modmul, 700,\modgate, 1]);
p.set(\vol, 1.2);

p.set(\modgate, 0, \mooggatz, 0);
p.set(\gatz, 0);

k = Synth("saaski", [\moogQ, 0.2, \moogSat, 0.6, \rel, 15,\moogQ, 0.3, \moogSat, 0.85, \moogType, 2,\moogHz, #[3000, 1500], \mooggatz, 1,\mod, #[10,8.05],\modCg, #[1],\modmix, #[1, 0.8], \modmul, 200, \modgate, 1]);

k.set(\vol, 1.2);

p.set(\modmix, #[1,0], \modgate, 1);
k.set(\modmix, #[1,0], \modgate, 1);
k.set(\modgate, 0, \mooggatz, 0);
k.set(\gatz, 0);

k.set(\gatz, 0);
(
k.set(\mod, #[8,1],\modCg, #[20], \modgate, 1);
p.set(\mod, #[8,1],\modCg, #[20], \modgate, 1);

)
k.set(\modmix, #[1, 0], \modgate, 1);
p.set(\modmix, #[1, 0], \modgate, 1);




r = Synth("syna", []);
r.free;
t = Synth("mixer", []);
