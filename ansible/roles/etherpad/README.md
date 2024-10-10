# Installation

https://github.com/ether/etherpad-lite

```bash
apt install nodejs npm
npm install -g pnpm

useradd -m -s /bin/bash etherpad;
su - etherpad;

git clone -b master https://github.com/ether/etherpad-lite.git
cd etherpad-lite/
pnpm i
pnpm run build:etherpad
pnpm run prod
```
Visit http://localhost:9001 in your browser


Plugins
```bash
pnpm run plugins i ep_align ep_comments_page ep_embedded_hyperlinks2 \
  ep_font_color ep_headings2 ep_markdown ep_webrtc ep_hash_auth
```



Replace these in `credentials.json`:

```json
 "users": {
      "admin": {
        "password": "4da3376323046a3bb6759f0a3f4ae7100a0567950c53ee42d2e19201baaa6dfc",
        "is_admin": true
      },
      "user": {
        "password": "4da3376323046a3bb6759f0a3f4ae7100a0567950c53ee42d2e19201baaa6dfc",
        "is_admin": false
      }
    },
```

<!-- ```
"ep_hash_auth": {
  "user": "your_user",
  "hash": "4da3376323046a3bb6759f0a3f4ae7100a0567950c53ee42d2e19201baaa6dfc"
}
``` -->
echo -n 'your_password' | sha256sum
4da3376323046a3bb6759f0a3f4ae7100a0567950c53ee42d2e19201baaa6dfc


# Service
by root:
at /etc/systemd/system/etherpad.service
```bash
touch /var/log/etherpad/etherpad.log;
touch /var/log/etherpad/etherpad-error.log;
systemctl daemon-reload;
systemctl enable etherpad;
systemctl start etherpad;
```

Check:
```bash
systemctl status etherpad
```

# TODO
If you are planning to use Etherpad in a production environment, you should use a dedicated database such as mysql, since the dirtyDB database driver is only for testing and/or development purposes.

Open http://127.0.0.1:9001/p/test#skinvariantsbuilder


# TODO
default settings
Video off
Audio off