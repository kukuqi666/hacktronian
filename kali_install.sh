#!/bin/bash
clear

BLACK='\e[30m'
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
PURPLE='\e[35m'
CYAN='\e[36m'
WHITE='\e[37m'
NC='\e[0m'
echo ""
echo -e "${RED}  _     _         ______ _    _ _______ ______   _____  ______  _____        ______   "
echo " | |   | |  /\   / _____) |  / |_______|_____ \ / ___ \|  ___ \(_____)  /\  |  ___ \  "
echo " | |__ | | /  \ | /     | | / / _       _____) ) |   | | |   | |  _    /  \ | |   | | "
echo " |  __)| |/ /\ \| |     | |< < | |     (_____ (| |   | | |   | | | |  / /\ \| |   | | "
echo " | |   | | |__| | \_____| | \ \| |_____      | | |___| | |   | |_| |_| |__| | |   | | "
echo " |_|   |_|______|\______)_|  \_)\______)     |_|\_____/|_|   |_(_____)______|_|   |_| "
echo -e "${RED}                                                      ~ Tools for Hacking by Mr. SAGE ${NC}"
echo ""
echo -e "${YELLOW} Twitter.com/thehackingsage | Instagram.com/thehackingsage | Github.com/thehackingsage ${NC} "
echo ""
echo "---------------------------------------------------------------------------------------"
echo ""
echo -e "${RED}[!] This Tool Must Run As ROOT [!]${NC}"
echo ""
echo -e "${CYAN}[>] Press ENTER to Install Hacktronian, CTRL+C to Abort.${NC}"
read INPUT
echo ""

INSTALL_DIR="/usr/share/doc/hacktronian"
BIN_DIR="/usr/bin/"

echo "[✔] Checking directories..."
if [ -d "$INSTALL_DIR" ]; then
    echo "[!] A Directory hacktronian Was Found.. Do You Want To Replace It? [y/n]:"
    read mama
    if [ "$mama" = "y" ]; then
        rm -R "$INSTALL_DIR"
    else
        exit
    fi
fi

echo "[✔] Installing ..."
echo ""
git clone https://github.com/kukuqi666/hacktronian.git "$INSTALL_DIR"
echo "#!/bin/bash
python2 $INSTALL_DIR/hacktronian.py" '${1+"$@"}' > hacktronian
chmod +x hacktronian
sudo cp hacktronian /usr/bin/
rm hacktronian

if [ -d "$INSTALL_DIR" ] ; then
    echo ""
    echo "[✔] Successfully Installed !!! [✔]"
    echo ""
    echo "[✔]========================================================================[✔]"
    echo "[✔] ✔✔✔ All Is Done!! You can execute the tool by typing hacktronian !! ✔✔✔ [✔]"
    echo "[✔]========================================================================[✔]"
    echo ""
else
    echo "[✘] Installation Failed !!! [✘]"
    exit
fi
