all:
	echo "nothing to build"

install:
	cp -R etc/sv/* /etc/sv
	cp -R etc/default /etc/default
	chown -R root:root /etc/default
	cp -R var/log/service/sysdig_shellshock /var/log/service

.PHONY: all install
