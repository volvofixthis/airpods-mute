### What is it?
This daemon is used to control system microphone via AirPods button.  
You need to double click button to toggle mute.  
This will work in HFP/HSP profile. For example if you are in a Zoom/slack/WhatApp call, 
so you can click button on your AirPods to mute yourself.  
This is POC, but it works very well ;)  

### Install
```bash
make install
```

### Deps
You need to install amixer and mpg123.  
#### Fedora
```bash
sudo dnf install alsa-utils mpg123
```
