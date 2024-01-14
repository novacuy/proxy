RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

clear
echo -e "${GREEN}Installing Proxy...${ENDCOLOR}"
sleep 1
if [ -f "nova" ]; then
    echo -e "${RED}Deleting old proxy...${ENDCOLOR}"
    rm nova
    sleep 1
    echo -e "${GREEN}Getting proxy...${ENDCOLOR}"
fi
wget -q https://github.com/novacuy/proxy/raw/main/nova
sleep 1
echo -e "${GREEN}Nova Proxy Installed${ENDCOLOR}"
echo -e "${GREEN}Execute proxy with this command: ./nova${ENDCOLOR}"
chmod +x nova