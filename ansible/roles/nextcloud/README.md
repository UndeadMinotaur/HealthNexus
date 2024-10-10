# Installation

## PLAIN
1. Install requirements
```bash
apt update;
apt upgrade;
apt install php php-ctype php-curl php-dom php-fileinfo php-gd php-json php-mbstring php-posix php-simplexml php-xmlreader php-xmlwriter php-zip; # Minimal PHP requirements
apt install mysql-server php-mysql; # Database and database connector
apt install php-intl; # Recommended
apt install php-exif php-apcu php-memcached php-redis php-imagick; # Optional
apt install bzip2; # Required to unpack installation archive
apt install nginx; # Minimal webserver
apt install ffmpeg libreoffice; # Recommended tools
```

There are more requirements for integration with specific applications:
https://docs.nextcloud.com/server/latest/admin_manual/installation/php_configuration.html

TODO lookup
https://portal.nextcloud.com/categories/Scalability/Deployment-recommendations

TODO lookup memory caching configuration
TODO ini settings 
Keep in mind that changes to php.ini may have to be configured on more than one ini file. This can be the case, for example, for the date.timezone setting. You can search for a parameter with the following command: grep -r date.timezone /etc/php


2. Copy TODO files to server
```bash
rm -r /etc/nginx/sites-enabled/default;
ln -s /etc/nginx/sites-available/nextcloud.conf /etc/nginx/sites-enabled/default;
nginx -t;
systemctl stop apache2; 
apt remove --purge apache2; # TODO check why apache was installed
systemctl restart nginx;
systemctl enable nginx;
```

2. Download Nextcloud
```bash
cd $(mktemp -d);

# Download
wget https://download.nextcloud.com/server/releases/latest.tar.bz2 -O latest.tar.bz2;

# Check integrity
wget https://download.nextcloud.com/server/releases/latest.tar.bz2.sha256 -O latest.tar.bz2.sha256;
sha256sum --check latest.tar.bz2.sha256 | grep "latest.tar.bz2: OK";

# Verify authenticity via PGP
wget https://download.nextcloud.com/server/releases/latest.tar.bz2.asc -O latest.tar.bz2.asc;
# gpg --keyserver keys.openpgp.org --recv-keys;
wget https://nextcloud.com/nextcloud.asc -O nextcloud.asc
gpg --import nextcloud.asc
gpg --verify latest.tar.bz2.asc latest.tar.bz2

######################
#!/bin/bash

# Variables
FILE="latest.tar.bz2";
SIGNATURE_FILE="latest.tar.bz2.asc";
EXPECTED_KEY="28806A878AE423A28372792ED75899B9A724937A";

# Verify the GPG signature
OUTPUT=$(gpg --verify "$SIGNATURE_FILE" "$FILE" 2>&1);

# Check if the signature is good
if echo "$OUTPUT" | grep -q "Good signature"; then
    # Extract the key fingerprint from the output
    KEY=$(echo "$OUTPUT" | grep "using RSA key" | awk '{print $NF}');
    
    # Compare the extracted key with the expected key
    if [ "$KEY" == "$EXPECTED_KEY" ]; then
        echo "Verification successful: Signature valid and matches the expected key.";
    else
        echo "Warning: Good signature, but key does not match the expected key. Found: $KEY";
        exit 1;
    fi
else
    echo "Verification failed: $OUTPUT";
    exit 1;
fi
######################

# Extract
tar xvf latest.tar.bz2 -C /var/www/;

chown -R www-data:www-data /var/www/nextcloud/;
cd /var/www/nextcloud/;


# Setup database
sudo mysql -u root;
mysql>
CREATE USER 'nextclouduser'@'localhost' IDENTIFIED BY '<password_user>';
CREATE DATABASE IF NOT EXISTS nextcloud CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
GRANT ALL PRIVILEGES ON nextcloud.* TO 'nextclouduser'@'localhost';
FLUSH PRIVILEGES;
EXIT;

sudo -u www-data php occ  maintenance:install \
--database='mysql' --database-name='nextcloud' \
--database-user='nextclouduser' --database-pass='<password_user>' \
--admin-user='admin' --admin-pass='<password_admin>'

```


3. Deploy the files in `todo`


TODO configure
TODO subcribe to https://nextcloud.com/newsletter/


## AIO
https://github.com/nextcloud/all-in-one#nextcloud-all-in-one

```bash
apt install docker.io

docker run \
--init \
--sig-proxy=false \
--name nextcloud-aio-mastercontainer \
--restart always \
--publish 8002:80 \
--publish 8003:8080 \
--publish 8004:8443 \
--volume nextcloud_aio_mastercontainer:/mnt/docker-aio-config \
--volume /var/run/docker.sock:/var/run/docker.sock:ro \
nextcloud/all-in-one:latest
```

Initial startup of Nextcloud All-in-One complete!
You should be able to open the Nextcloud AIO Interface now on port 8080 of this server!       
E.g. https://internal.ip.of.this.server:8080
⚠ Important: do always use an ip-address if you access this port and not a domain as HSTS might block access to it later!

If your server has port 80 and 8443 open and you point a domain to your server, you can get a valid certificate automatically by opening the Nextcloud AIO Interface via:                   
https://your-domain-that-points-to-this-server.tld:8443 

Please do not forget to open port 3478/TCP and 3478/UDP in your firewall/router for the Talk container!