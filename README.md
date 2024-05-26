### What is it?
This daemon is used to control system microphone via AirPods button.  
You need to double click button to toggle mute.  
This will work in HFP/HSP profile. For example if you are in a Zoom/slack/WhatApp call, 
so you can click button on your AirPods to mute yourself.  
This is POC, but it works very well ;)  

### Install
```bash
mkdir -p ~/bin
cp airpods-mute.sh ~/bin
mkdir -p ~/.config/systemd/user
cp airpods-mute.service ~/.config/systemd/user
systemctl enable airpods-mute
systemctl start airpods-mute
mkdir -p ~/Documents/airpods-mute
cp sounds/* ~/Documents/airpods-mute/
```

### Wireplumber
Add this envs to wireplumber user service:  
```lua
Environment=PIPEWIRE_DEBUG=spa.bluez5.native:4
Environment=WIREPLUMBER_NO_PW_LOG=1
```

### Deps
You need to install amixer, mpg123, journalctl  
