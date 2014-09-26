all:
	echo "nothing to build"

install:
	mkdir -p /etv/sv/sysdig_shellshock/log
	install -m 0755 -o root -g root  etc/sv/sysdig_shellshock/run /etc/sv/sysdig_shellshock/
	install -m 0755 -o root -g root  etc/sv/sysdig_shellshock/finish /etc/sv/sysdig_shellshock/
	install -m 0755 -o root -g root  etc/sv/sysdig_shellshock/log/run /etc/sv/sysdig_shellshock/log/
	install -m 0644 -o root -g root  etc/default/sysdig_shellshock /etc/default/
	chown -R root:root /etc/default/sysdig_shellshock
	mkdir -p /var/log/service/sysdig_shellshock
	install -m 0644 -o root -g root var/log/service/sysdig_shellshock/config /var/log/service/sysdig_shellshock/

.PHONY: all install
