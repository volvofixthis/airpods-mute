### What is it?
This daemon is used to control system microphone via Airpods button.  
You need to click button too times to mute.  
This will work in HFP/HSP profile. For example if you are in a call, 
you can click button to mute yourself.  
This is POC, but it works ;)  

### Install
```bash
mkdir -p ~/bin
cp airpods-mute.sh ~/bin
mkdir -p ~/.config/systemd/user
cp airpods-mute.service ~/.config/systemd/user
systemctl enable airpods-mute
systemctl start airpods-mute
```

### Wireplumber
Add this envs to wireplumber user service:  
```lua
Environment=PIPEWIRE_DEBUG=spa.bluez5.native:4
Environment=WIREPLUMBER_NO_PW_LOG=1
```

### Deps
You need to install aplay, mpg123, journalctl  
Don't forget about your own, custom sounds to mute and unmute
