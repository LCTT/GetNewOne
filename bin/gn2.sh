#!/bin/bash
# Usages: Help To Linux'CN Translate Team
# Filename: $0 	Version: 2.0.1 	Author:jiwenkangatech@foxmail.com

# exit on exceptions.
  set -e 	#���������ڻ��쳣ֱ���˳�

# Determine whether the tool exists
#  for soft in git locate #���� ��$soft�� �Ƿ����
   for soft in git #���� ��$soft�� �Ƿ����
    do
		hash $soft >/dev/null 2>&1 || {
		echo "Error: $soft is not installed"
    		exit 1
          }
    done
#  $( command -v updatedb & ) #����ϵͳ "locate" ���ݱ�

# Clone Github's Repositories
#function Github_Clone () {
#  Github_User="$(cat ./TranslateProject/.git/config | sed -n '8p' | \
#  cut -d / -f4 1>/dev/null)" #��� .git/config �ļ�����
#  if [[ $Github_User = lctt ]] && [ -f ~/.ssh/id_rsa ] ;then
  	read -p "Github User: " Iname
	read -p "Github Mail: " Email
	git clone https://github.com/$Iname/TranslateProject 	
	cd ./TranslateProject
     git config --global user.name  $Iname
     git config --global user.email $Email
	cd ..
#	while true && touch /tmp/lctt$(date +%m) 
	echo -en "\e[1;32mlctt-cli was got ready "
#    else
#  	read -p "������ Github �˻�: " Iname
#	git clone git@github.com:$Iname/TranslateProject
#	touch /tmp/lctt$(date +%m) 
#	echo -e "\e[1;32m lctt-cli was got ready "
#  fi }


# Determine the location And Change to $0 floder
##  $SHELL -c "export LCTT_DIR="$(dirname "$(readlink -f "$0")")"" 
  					   #���û�������(�޷�ִ��)
##  $(export LCTT_PWD="$PWD") #���û�������(����ִ��)
##  exec[11]=$(test -f /tmp/lctt$(date +%m) || locate -i translate | \
##  awk "/project/" GNORECASE=0 ) #/tmp�ļ����ڣ����� "translateproject" �Ƿ����
##  if [ "$(expr length "${exec[11]}")" -eq 0  ] || [ -z "$(expr length \
##  "${exec[11]}")" ] ;then       #����н�� ���� ���Ϊ��(û���)
 #  	git clone https://github.com/lctt/TranslateProject #��¡ LCTT �ֿ�
##	Github_Clone #ִ�к���ʽ
##  else
##	echo -e "\e[1;31m Please CHECK \"TranslateProject\" Floder\e[0m"
##  fi

# Welcome and Run
	echo -e "\e[1;33m\nWelcome join the LCTT,thank you! $Iname \e[0m"
