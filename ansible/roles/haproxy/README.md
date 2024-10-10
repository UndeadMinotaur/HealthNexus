# TODO 

add to ansible role:

```bash
apt install certbot
certbot certonly --standalone -d healthnexus.online

# Domains must be registered with domain registrar as A records
certbot certonly --standalone -d healthnexus.online -d etherpad.healthnexus.online -d bigbluebutton.healthnexus.online -d cryptpad.healthnexus.online -d dokuwiki.healthnexus.online -d mumble.healthnexus.online -d nextcloud.healthnexus.online -d zulip.healthnexus.online

chown haproxy:haproxy /etc/letsencrypt/archive/healthnexus.online/privkey1.pem
chown haproxy:haproxy /etc/letsencrypt/archive/healthnexus.online/fullchain1.pem
ln -s /etc/letsencrypt/live/healthnexus.online/privkey.pem /etc/letsencrypt/live/healthnexus.online/fullchain.pem.key
```

Successfully received certificate.
Certificate is saved at: /etc/letsencrypt/live/healthnexus.online/fullchain.pem
Key is saved at:         /etc/letsencrypt/live/healthnexus.online/privkey.pem

/etc/letsencrypt/archive/healthnexus.online/cert1.pem

fullchain1.pem
chain1.pem


# TODO 
renewal

certbot renew --dry-run

# Debugging

Validate config
```bash
haproxy -c -f /etc/haproxy/haproxy.cfg
```