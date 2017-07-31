: 1488942066:0;ls grep 24
: 1501471545:0;cat /proc/net/wireless | tail -n 1 | awk '{print $1}'
: 1501471562:0;cat /proc/net/wireless | tail -n 1
: 1501471563:0;cat /proc/net/wireless | tail -n 1 | awk '{print $3}'
: 1501471776:0;mpstat 1 1
: 1501472063:0;mpc current | iconv -t UTF8 -c
: 1501472103:0;nvidia-smi
: 1501472240:0;man i3blocks
: 1501472415:0;i3blocks
: 1501472427:0;cl
: 1501472498:0;cat ~/.i3blocks.conf|grep label
: 1501472504:0;cat ~/.i3blocks.conf|grep label|xclip
: 1501472506:0;cat ~/.i3blocks.conf|grep label|xsel
: 1501472512:0;cat ~/.i3blocks.conf|grep label|xsel -c
: 1501472518:0;cat ~/.i3blocks.conf|grep label|xsel -p
: 1501472526:0;xsel -h
: 1501472531:0;cat ~/.i3blocks.conf|grep label|xsel -b
: 1501472632:0;cd /usr/lib
: 1501473267:0;vim .bin/i3blocks/gputemp
: 1501473444:0;vim .bin/i3blocks/brightness
: 1501474238:0;cd builds
: 1501474240:0;rjr
: 1501474275:0;git clone git@github.com:jonpertwee/grim-dotfiles.git
: 1501474331:0;cd .ssh
: 1501474332:0;ls
: 1501474334:0;cd
: 1501474397:0;ssh-keygen -t rsa -b 4096 -C "tristen.lundquist@gmail.com"
: 1501474429:0;systemctl status ssh-agent
: 1501474451:0;sudo systemctl enable ssh-agent
: 1501474644:0;ssh-agent
: 1501474768:0;systemctl status sshd.service
: 1501474818:0;cat .ssh/id_rsa.pub|xsel -b
: 1501474862:0;sudo ssh-add ~/.ssh/id_rsa
: 1501474904:0;systemctl --user status ssh-agent.service
: 1501474912:0;eval $(ssh-agent)
: 1501474921:0;pkill 3474
: 1501474932:0;kill -9 3474
: 1501474935:0;pgrep ssh-agent
: 1501474942:0;ssh-add ~/.ssh/id_rsa
: 1501475097:0;cd grim-dotfiles
