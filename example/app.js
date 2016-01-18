var win = Ti.UI.createWindow();
var module = require("ti.siriview");

var siriView = module.createView({
    waveColor: "red",
    numberOfWaves: 15,
	height: 300,
    primaryWaveLineWidth: 3,
    secondaryWaveLineWidth: 1,
    idleAmplitude: 0.01,
    frequency: 1.5,
    density: 1,
    phaseShift: -0.15
});

setTimeout(function() {
    siriView.updateWithLevel(4.0);
},2000);

win.add(siriView);
win.open();
