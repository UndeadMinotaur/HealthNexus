# Security Policy

## Supported Versions


| Role          | Runs without error | Ready |
| ------------- | ------------------ |------ |
| setup         | :white_check_mark: | :white_check_mark: |
| nginx         | :white_check_mark: | :x:   |
| haproxy       | :white_check_mark: | :x:   |
| zulip         | :white_check_mark: | :x:   |
| nextcloud     | :x:                | :x:   |
| bigbluebutton | :x:                | :x:   |
| dokuwiki      | :white_check_mark: | :x:   |
| etherpad      | :x:                | :x:   |
| mumble        | :white_check_mark: | :x:   |
| cryptpad      | :white_check_mark: | :x:   |
| backup        | :x:                | :x:   |

## Supported OS


### setup, nginx, haproxy

All

### Zulip
 - Debian 10 "buster"
 - Debian 11 "bullseye"
 - Ubuntu 20.04 LTS "focal"

### Nextcloud

## Ports and LXC compatibility

| Role          | Ports | Lxc compatible |
| ------------- | ------------------ |------ |
| setup         | -         | :x: |
| nginx         | 80, 443   | :white_check_mark: |
| haproxy       | -         | :x:   |
| zulip         | 80, 443   | ( :white_check_mark: ) |
| nextcloud     | 80, 443   | :white_check_mark:   |
| bigbluebutton | 80, 443, 7443, 16384-32768 | unclear [1] |
| dokuwiki      | 80, 443   | :white_check_mark:   |
| etherpad      | 9001      | :white_check_mark:  |
| mumble        | 64738     | ( :white_check_mark: ) |
| cryptpad      | 3000      | ( :white_check_mark: ) |
| backup        | -         | :white_check_mark:   |

[1] BigBlueButton requires access to kernel modules for WebRTC and screen sharing, and it uses several ports. It traditionally expects to run on a full VM or dedicated server. Running it in an LXC container could lead to compatibility issues, especially with audio/video features.


## Domain
Configured in `ansible/roles/setup/tasks/main.yml`.

## TODO

clear repository from secrets and deploy config files that handles changing all credentials by calling a command.