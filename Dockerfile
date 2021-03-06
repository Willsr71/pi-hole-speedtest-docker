FROM pihole/pihole
RUN apt-get update; \
	apt-get install python-pip --no-install-recommends -y; \
	pip install speedtest-cli; \
	rm -rf /var/cache/apt/archives /var/lib/apt/lists*; \
	rm -r /var/www/html/admin; \
	git clone https://github.com/arevindh/AdminLTE /var/www/html/admin;
	#curl -o /opt/pihole/webpage.sh https://raw.githubusercontent.com/arevindh/pi-hole/master/advanced/Scripts/webpage.sh; \
	#curl -o /root/ph_install.sh https://raw.githubusercontent.com/arevindh/pi-hole/master/automated%20install/basic-install.sh;
COPY webpage.sh /opt/pihole/webpage.sh
COPY basic-install.sh /root/ph_install.sh
