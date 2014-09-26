all:
	echo "nothing to build"

install:
	cp -R etc/sv/* /etc/sv
	install -m 0644 -o root -g root  etc/default/sysdig_shellshock /etc/default/
	chown -R root:root /etc/default
	cp -R var/log/service/sysdig_shellshock /var/log/service

.PHONY: all install
