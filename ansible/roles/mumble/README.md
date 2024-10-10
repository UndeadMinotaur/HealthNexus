# TODO
add to ansible

```bash
iptables -t nat -A PREROUTING -p udp --dport 64738 -j DNAT --to-destination 10.22.27.5:64738
iptables -A FORWARD -p udp -d 10.22.27.5 --dport 64738 -j ACCEPT
iptables -t nat -A POSTROUTING -p udp --dport 64738 -j MASQUERADE
```

# TODO
enable logging