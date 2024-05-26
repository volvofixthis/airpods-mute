.PHONY: install

install:
	mkdir -p ~/bin
	cp airpods-mute.sh ~/bin
	mkdir -p ~/.config/systemd/user
	cp airpods-mute.service ~/.config/systemd/user
	systemctl --user enable airpods-mute
	mkdir -p ~/.config/systemd/user/wireplumber.service.d
	cp wireplumber.conf ~/.config/systemd/user/wireplumber.service.d/
	systemctl --user daemon-reload
	systemctl --user restart wireplumber
	systemctl --user restart airpods-mute
	mkdir -p ~/.local/share/airpods-mute/
	cp -R sounds/ ~/Documents/airpods-mute/
