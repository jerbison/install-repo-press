#!/bin/bash

get_instancia_add() {
  
  print_banner
  printf "${WHITE} 💻 Digite o nome da instancia a ser instalada (Utilizar Letras minusculas):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " instancia_add
}

get_frontend_url() {
  
  print_banner
  printf "${WHITE} 💻 Digite o domínio da interface FRONTEND:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_url
}

get_frontend_port() {
  
  print_banner
  printf "${WHITE} 💻 Digite a porta do FRONTEND para esta instancia; Ex: 3333 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_port
}

get_backend_url() {
  
  print_banner
  printf "${WHITE} 💻 Digite o domínio do BACKEND:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_url
}

get_backend_port() {
  
  print_banner
  printf "${WHITE} 💻 Digite a porta do BACKEND para esta instancia; Ex: 8080 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_port
}

get_urls() {
  get_instancia_add
  get_frontend_url
  get_backend_url
  get_frontend_port
  get_backend_port
}

software_update() {
  
  frontend_update
  backend_update
}

inquiry_options() {
  
  print_banner
  printf "${WHITE} 💻 Bem vindo(a) ao instalador Owen Zap, Selecione abaixo a proxima ação!${GRAY_LIGHT}"
  printf "\n\n"
  printf "   [1] Instalar o OwenZap\n"
  printf "   [2] Atualizar o OwenZap\n"
  printf "\n"
  read -p "> " option

  case "${option}" in
    1) get_urls ;;

    2) 
      software_update 
      exit
      ;;

    *) exit ;;
  esac
}


