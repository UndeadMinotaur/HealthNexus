# CONFIG
APP='HealthNexus';
DEV_NAME='UndeadMinotaur';
HOSTER='hetzner';
IMAGE='ubuntu-24.04';

# OS Usernames
USERNAME_ANSIBLE="ansible";

# PATH SSH Keys
PATH_SSH_KEY="$HOME/.ssh/${HOSTER}_${DEV_NAME}_${APP}";
PATH_SSH_KEY_ANSIBLE="$HOME/.ssh/${APP}_${USERNAME_ANSIBLE}";

# PATH Config files
PATH_ANSIBLE_CONFIG_HOSTS="../ansible/hosts";

# Config Hetzner
HCLOUD_SSH_KEY="${APP}_${DEV_NAME}";
HCLOUD_LOCATION="nbg1";
HCLOUD_TYPE="ccx13";