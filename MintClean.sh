#!/bin/bash

#Marcos Menezes Twitter: @mvsep93
#Script remover, instalar, atualizar e limpar 
#1.0
#Criado: 11/01/2020
#Atualizado: 09/05/2021

clear

#x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.

function menu () {
    setterm -foreground red

    setterm -foreground green
    echo "                        ‘A%%%5A%%%                "
    echo "          %A%A%%%%%A%%%%%        ‘A%%%%%A%%%%%%A% "
    echo "          %%%%%%%%%%%%%%          '%A%%%%%%%%%%A¦ "
    echo "          A%%%%%%%%%%%%%           %A%%%%%%%%%%A. "
    setterm -foreground white
    echo "          (%.                                 %%  "
    echo "           AA                                 AA  "
    echo "           %%            PALMEIRAS           *%''  "
    echo "          *%''                               %%   "
    echo "            AA                              ,A*   "
    echo "            ‘AJ                             %%    "
    setterm -foreground red
    echo "             %AAA%%%%%%%          '%%%%%%%%%A‘    "
    echo "             .%%%%%%%%%%          '%A%%%%%%%%     "
    echo "              ¦A%%%%%%%%          '%A%%%%%%%      "
    echo "               %%%%%%%%%          '%A%%%%%A.      "
    echo "               .A%%%%%%%          '%A%%%%%%.      "
    echo "                 %%%%%%%          '%A%%A%(        "
    echo "                  %%%%%%          '%A%%%(         "
    echo "                   A%%%%          '%A%%           "
    echo "                    .%%%          '%AA            "
    echo "                      A%A         AA.             "
    echo "                       .%%,     AAA               "
    echo "                          %AA.A%$           "
    setterm -foreground white
    echo "                         LOADING..."

    sleep 3

    clear

    setterm -foreground green

    echo "╔═══════════════╗"
    setterm -foreground white
    echo "|               |"
    echo  "| MintClean 1.0 |"
    setterm -foreground green
    echo "|               |"
    setterm -foreground red
    echo "|  @mvsep93     |"
    echo "|               |"
    setterm -foreground green
    echo "╚═══════════════╝"
    setterm -foreground white
    echo ""
    setterm -foreground yellow

    setterm -foreground white
    echo "Digite opcao:"
    echo ""
    echo "Opção 1: CONFIG. PESSOAL"
    echo "Opção 2: CONFIG. SERVIDOR"
    echo "Opção 3: Sair"
    echo ""
    read opcao

    case $opcao in
    1) pessoal ;;
    2) installProgramas ;;
    3) exit ;;
    *) "Opcao desconhecida." ;;
    esac
}

pessoal() {
    clear
    echo "Iniciando Script..."
    echo ""
    sleep 3

    #Remove
    echo "Removendo Programas..."
    sudo apt remove hexchat -y
    sudo apt remove gnote -y
    sudo apt remove gnote-calendar -y
    sudo apt remove pix -y
    sudo apt remove drawing -y
    sudo apt remove libreoffice-base -y
    sudo apt remove libreoffice-draw -y
    sudo apt remove libreoffice-math -y
    sudo apt remove simple-scan -y
    sudo apt remove thunderbird -y
    sudo apt remove celluloid -y
    sudo apt remove mintbackup -y
    sudo apt remove system-config-printer -y
    sudo apt remove system-config-printer-gnome -y
    sudo apt remove blueberry -y
    sudo apt remove cinnamon-settings universal-access -y
    sudo apt-get autoremove -y

    clear

	echo "Instalando Programas..."
    #Instala Programas
    sudo apt install git -y
    sudo apt install vlc -y
    sudo apt install sublime-text -y
    sudo apt install whatsapp-desktop -y
    sudo apt install python3 -y
    sudo apt install python3-pip -y
    sudo apt install python-pip -y
    sudo apt update
    sudo apt install python2 -y
    sudo apt update
    sudo apt install timeshift -y

    clear

	echo "Instalando Lib Python..."
    #Lib python
    sudo add-apt-repository universe -y
    sudo apt update
    sudo apt install python2 -y
    sudo apt update
    curl https://bootstrap.pypa.io/get-pip.py --output get-pip.py
    sudo python3 get-pip.py
    
    pip install selenium
    pip install setuptools
    pip install pandas
    pip install pyautogui
    pip install xlrd
    pip install pyperclip
    pip install requests
    pip install BeautifulSoup4

    clear

	echo "Configurando Sistema..."
    #Config
    ufw enable

    sleep 2

    clear
    limpeza
    menu
}
#x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.

menu
