all:
	echo "nothing to build"

install:
	cp -R etc/sv/* /etc/sv
	install -m 0644 -o root -g root  etc/default/sysdig_shellshock /etc/default/
	chown -R root:root /etc/default
	mkdir -p var/log/service/sysdig_shellshock
	install -m 0644 -o root -g root var/log/service/sysdig_shellshock/config /var/log/service/sysdig_shellshock/

.PHONY: all install
