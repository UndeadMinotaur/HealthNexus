# Installation

1. Install requirements
```bash
apt update;
apt upgrade;
```

2. Download zulip
```bash
cd $(mktemp -d);
curl -fLO https://download.zulip.com/server/zulip-server-latest.tar.gz;
tar -xf zulip-server-latest.tar.gz;
```

3. Install Zulip
```bash
# sudo -s  # If not already root
./zulip-server-*/scripts/setup/install --certbot \
    --email=medimazeiq@posteo.net --hostname=chat.healthnexus.online
```
The script is idempotent. On failure, correct the issue and rerun.

<!-- 3. Deploy the files in `todo` -->

TODO
Figure out how to setup SSL
--cerbot?
haproxy?

ACME challenge naturally fails on localhost 

4. Open the presented link in browser

5. Setup
TODO

# Optional
## Set up additional realms

Call `./manage.py generate_realm_creation_link`