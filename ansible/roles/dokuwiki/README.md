# Installation

1. Install requirements
```bash
apt update;
apt upgrade;
apt install nginx php php-fpm php-xml php-json; # Minimal
apt install php-bz2 php-gd php-intl # Optional
```

2. Download Dokuwiki
```bash
wget https://download.dokuwiki.org/src/dokuwiki/dokuwiki-stable.tgz -O /tmp/dokuwiki-stable.tgz;

tar zxvf /tmp/dokuwiki-stable.tgz;
mv dokuwiki-2024-02-06b/ /var/www/html/;
```

3. Deploy the files in `todo`

4. Start web server
```bash
nginx -t # Check if config is good
chown -R www-data:www-data /var/www;
systemctl restart nginx
```

5. Call http://192.168.56.3:8001/dokuwiki-2024-02-06b/install.php from host browser

Wiki Name: HealthNexus Wiki

Superuser: HealthNexus
Real Name: HealthNexus
E-Mail: medimazeiq@posteo.net
Password: test (*clownsmiley*)
ACL Policy: Public

Allow Users to register themselves: yes
TODO
disallow once SSO is set up

License: CC BY-NC-SA 4.0

Send anonymous usage data: no

6. TODO 
https://www.dokuwiki.org/security#web_access_security
- Move Directories out of DocRoot (after install!)
- check security configuration

