lines=$(tput lines)
columns=$(tput cols)
echo $(for i in $(seq 1 $columns); do printf "#"; done)
echo "Doing Pacman and Aur upgrade"
sleep 5
echo $(for i in $(seq 1 $columns); do printf "#"; done)
yaourt -Syyuua --devel --noconfirm
echo $(for i in $(seq 1 $columns); do printf "#"; done)
echo "Doing PIP upgrade"
[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"
sleep 5
echo $(for i in $(seq 1 $columns); do printf "#"; done)
pip freeze --local | grep -v '^\-e' | cut -d = -f 1 |xargs sudo pip install -U
echo $(for i in $(seq 1 $columns); do printf "#"; done)
