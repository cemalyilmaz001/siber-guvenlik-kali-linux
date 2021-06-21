#!/bin/bash
echo "Port Number: "
read portno
xfce4-terminal -H -x sudo iptables -A INPUT -p tcp --dport $portno -j DROP |
xfce4-terminal -H -x sudo iptables -A INPUT -p udp --dport $portno -j DROP |
xfce4-terminal -H -x sudo iptables -A OUTPUT -p tcp --dport $portno -j DROP |
xfce4-terminal -H -x sudo iptables -A OUTPUT -p udp --dport $portno -j DROP |
xfce4-terminal -H -x sudo service iptables save |
xfce4-terminal -H -x sudo ufw deny $portno/tcp
xfce4-terminal -H -x sudo ufw deny $portno/udp
xfce4-terminal -H -x sudo iptables-save
echo "PORTLAR KAPANIYOR"
