# Ti.SiriView

<img src="http://abload.de/img/simulatorscreenshot183wy77.png" width="621" height="1104" alt="Ti.SiriView" />

 Summary
---------------
Ti.SiriView is an open-source project to support the `SCSiriWaveformView` library for iOS in Titanium Mobile. 

Requirements
---------------
  - Titanium Mobile SDK 5.1.0.GA or later
  - iOS 7.1 or later
  - Xcode 6.4 or later

Download + Setup
---------------

### Download
  * [Stable release](https://github.com/hansemannn/Ti.SiriView/releases)
  * Install from gitTio    <a href="http://gitt.io/component/ti.siriview" target="_blank"><img src="http://gitt.io/badge@2x.png" width="120" height="18" alt="Available on gitTio" /></a>

### Setup
Unpack the module and place it inside the ``/modules/iphone`` folder of your project.
Edit the modules section of your ``tiapp.xml`` file to include this module:
```xml
<modules>
    <module platform="iphone">ti.siriview</module>
</modules>
```

Features
--------------------------------
#### View
A view creates a sinus wave to emulate the Siri style. The following example is self-describing and shows the default values to configure a view:

```javascript
var module = require("ti.siriview");

var siriView = module.createView({
    waveColor: "#f00",
    numberOfWaves: 15,
    height: 300,
    primaryWaveLineWidth: 3,
    secondaryWaveLineWidth: 1,
    idleAmplitude: 0.01,
    frequency: 1.5,
    density: 1,
    phaseShift: -0.15
});
```

For a full example, check the demo in ```example/app.js```.

Author
---------------
Hans Knoechel ([@hansemannnn](https://twitter.com/hansemannnn) / [Web](http://hans-knoechel.de))

License
---------------
MIT

Contributing
---------------
Code contributions are greatly appreciated, please submit a Pull Request!
