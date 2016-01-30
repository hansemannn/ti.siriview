var UIColor = require("UIKit/UIColor"),
    UIScreen = require("UIKit/UIScreen"),
    SCSiriWaveformView = require("SCSiriWaveformView/SCSiriWaveformView"),
    waveView = null;

(function constructor() {
    waveView = new SCSiriWaveformView();
})();

exports = {
    /**
     *  Create a new wave view
     *  @param args The arguments to be passed to create a view.
     *  @return SCSiriWaveformView The configured native view.
     */
    createView: function(args) {
        waveView.setWaveColor(args.waveColor || UIColor.whiteColor());
        waveView.setNumberOfWaves(args.numberOfWaves || 5);
        waveView.setPrimaryWaveLineWidth(args.primaryWaveLineWidth || 3.0);
        waveView.setSecondaryWaveLineWidth(args.secondaryWaveLineWidth || 1.0);
        waveView.setIdleAmplitude(args.idleAmplitude || 0.01);
        waveView.setFrequency(args.frequency || 1.5);
        waveView.setDensity(args.density || 5);
        waveView.setPhaseShift(args.phaseShift || -0.15);

        return waveView;
    },

    /**
     *  Tells the waveform to redraw itself using the given level (normalized value).
     *  @param arg The normalized value.
     *  @return void
     */
    updateWithLevel: function(arg) {
        waveView.updateWithLevel(arg);
    }
};
