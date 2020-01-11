#!/bin/bash

#Marcos Menezes
#Script remover, instalar, atualizar e limpar 
#1.0
#11/01/2020

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

    sleep 5

    clear

    setterm -foreground green

    echo "╔═══════════════╗"
    setterm -foreground white
    echo "|               |"
    echo  "| MintClean 1.0 |"
    setterm -foreground green
    echo "|               |"
    setterm -foreground red
    echo "|  @marcosep93  |"
    echo "|               |"
    setterm -foreground green
    echo "╚═══════════════╝"
    setterm -foreground white
    echo ""
    setterm -foreground yellow
    users
    setterm -foreground white
    echo "Diga o que tu queres?"
    echo ""
    echo "Opção 1: Remover Programas"
    echo "Opção 2: Instalar Programas"
    echo "Opção 3: Bibliotecas Python"
    echo "Opção 4: Limpeza"
    echo "Opção 5: Personalizar"
    echo "Opção 6: Sair"
    echo ""
    read opcao

    case $opcao in
    1) removeProgramas ;;
    2) installProgramas ;;
    3) libsPython ;;
    4) limpeza ;;
    5) personalizar ;;
    6) exit ;;
    *) "Opcao desconhecida." ;;
    esac
}

removeProgramas() {
    clear
    echo "Iniciando Script..."
    echo ""
    sleep 3

    sudo apt remove hexchat -y
    sudo apt remove gnote -y
    sudo apt remove pix -y
    sudo apt remove drawing -y
    sudo apt remove libreoffice-base -y
    sudo apt remove libreoffice-draw -y
    sudo apt remove libreoffice-base -y
    sudo apt remove libreoffice-impress -y
    sudo apt remove libreoffice-math -y
    sudo apt remove libreoffice-base -y
    sudo apt remove simple-scan -y
    sudo apt remove thunderbird -y
    sudo apt remove firefox -y
    sudo apt remove celluloid -y
    sudo apt remove gnome-power-manager -y
    sudo apt remove mintbackup -y
    sudo apt remove system-config-printer -y
    sudo apt remove blueberry -y
    sudo apt remove cinnamon-settings universal-access -y
    sudo apt-get autoremove -y

    sleep 2

    clear
    limpeza
    menu
}

installProgramas () {
    clear
    echo "Será instalado: VLC, SublimeText, Whatsapp, Python, TimeShift e Chrome."
    echo ""
    echo "Iniciando Script..."
    echo ""
    sleep 3

    sudo apt install vlc -y
    sudo apt install sublime-text -y
    sudo apt install whatsapp-desktop -y
    sudo apt install python -y
    sudo apt install python-pip -y
    sudo apt install timeshift -y
    #Chrome:
    wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
    sudo apt update
    sudo apt install -y google-chrome-stable

    sleep 2

    clear
    menu
}

libsPython() {
    clear
    echo "Será instalado: Selenium, SetupTools, Pandas, PyautoGui, Xlrd e Pyperclip."
    echo ""
    echo "Iniciando Script..."
    echo ""
    sleep 3

    sudo apt install python -y
    sudo apt install python-pip -y
    pip install selenium
    pip install setuptools
    pip install pandas
    pip install pyautogui
    pip install xlrd
    pip install pyperclip

    sleep 2

    clear
    menu
}

limpeza () {
    clear
    echo "Iniciando Script..."
    echo ""
    sleep 3

    sudo apt-get autoremove -y

    sleep 2

    clear
    menu    
}

personalizar() {
    clear
    echo "Iniciando Script..."
    echo ""
    sleep 3

    

    clear
    menu
}

#x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.

menu