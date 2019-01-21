#!/bin/bash
#!/bin/sh
printf "\033[1;31mnew system software installation and configuration\033[0m\n";
a=$(echo -e " 1) Openssh-Server \n 2) Apache-Server \n 3) Mysql-server \n 4) php \n 5) PhpMyAdmin \n 6) Skype \n 7) Sublime \n 8) Google-Chrome \n 9) Filezilla")
echo "$a"
printf "\033[1;31mEnter Your Choice:\033[0m\n"
        while read num
        do
        case $num in
                1)
		printf "\033[1;31mOpenssh\033[0m\n"
                apt-get update -y
                apt-get install -y openssh-server
                printf "\033[1;31mOpenssh is installed\033[0m\n"
                echo "$a"       
                ;;
                2)
		printf "\033[1;31mApache-Server\033[0m\n"
                apt-get install -y apache2
		printf "\033[1;31mApache-Server is installed\033[0m\n"
                echo "$a"
                ;;
                3)
		printf "\033[1;31mMysql-Server\033[0m\n"
                apt-get install -y mysql-server
		printf "\033[1;31mMysql-Server is installed\033[0m\n"
                echo "$a"
                ;;
                4)
		printf "\033[1;31mphp\033[0m\n"
                	select php in php7.0 php7.1 php7.2
                	do
                	case $php in
                        php7.0)
				printf "\033[1;31mphp7.0\033[0m\n"
                        	apt-get install -y software-properties-common
			 	add-apt-repository ppa:ondrej/php -y
			 	apt-get update -y
			 	apt-get install -y php7.0 libapache2-mod-php7.0 php7.0-curl php7.0-gmp php7.0-mbstring php7.0-phpdbg php7.0-sqlite3 php7.0-zip php7.0-bcmath php7.0-dba php7.0-imap php7.0-mcrypt php7.0-pspell php7.0-sybase php7.0-bz2 php7.0-dev php7.0-interbase php7.0-mysql php7.0-readline php7.0-tidy php7.0-cgi php7.0-enchant php7.0-intl php7.0-odbc php7.0-recode php7.0-xml php7.0-cli php7.0-fpm php7.0-json php7.0-opcache php7.0-snmp php7.0-xmlrpc php7.0-common php7.0-gd php7.0-ldap php7.0-pgsql php7.0-soap php7.0-xsl
			 	printf "\033[1;31mphp7.0 is installed\033[0m\n"                         
			 	break
			 	;;
                    	php7.1)
				printf "\033[1;31mphp7.1\033[0m\n"
                         	apt-get install -y software-properties-common
                         	add-apt-repository ppa:ondrej/php -y
                         	apt-get update -y
			 	apt-get install -y php7.1 libapache2-mod-php7.1 php7.1-curl php7.1-gmp php7.1-mbstring php7.1-phpdbg php7.1-sqlite3 php7.1-zip php7.1-bcmath php7.1-dba php7.1-imap php7.1-mcrypt php7.1-pspell php7.1-sybase php7.1-bz2 php7.1-dev php7.1-interbase php7.1-mysql php7.1-readline php7.1-tidy php7.1-cgi php7.1-enchant php7.1-intl php7.1-odbc php7.1-recode php7.1-xml php7.1-cli php7.1-fpm php7.1-json php7.1-opcache php7.1-snmp php7.1-xmlrpc php7.1-common php7.1-gd php7.1-ldap php7.1-pgsql php7.1-soap php7.1-xsl	
			 	printf "\033[1;31mphp7.1 is installed\033[0m\n"                        
				break			
				;;
                        php7.2)
				printf "\033[1;31mphp7.2\033[0m\n"
                         	apt-get install -y software-properties-common
                         	add-apt-repository ppa:ondrej/php -y
                         	apt-get update -y
			 	apt-get install -y php7.2 libapache2-mod-php7.2 php7.2-curl php7.2-gmp php7.2-mbstring php7.2-phpdbg php7.2-sqlite3 php7.2-zip php7.2-bcmath php7.2-dba php7.2-imap  php7.2-pspell php7.2-sybase php7.2-bz2 php7.2-dev php7.2-interbase php7.2-mysql php7.2-readline php7.2-tidy php7.2-cgi php7.2-enchant php7.2-intl php7.2-odbc php7.2-recode php7.2-xml php7.2-cli php7.2-fpm php7.2-json php7.2-opcache php7.2-snmp php7.2-xmlrpc php7.2-common php7.2-gd php7.2-ldap php7.2-pgsql php7.2-soap php7.2-xsl
			 	printf "\033[1;31mphp7.2 is installed\033[0m\n"                        
				break
				;;  
                   	 *)
                       		 break
                         	;;
                	esac
                	done 
                	echo "$a"
                	;;
		5)
		printf "\033[1;31mPhpMyAdmin\033[0m\n"
                apt-get install -y phpmyadmin
                printf "\033[1;31mPhpMyAdmin is installed\033[0m\n"
                echo "$a"       
                ;;
                6)
		printf "\033[1;31mSkype\033[0m\n"
                wget https://repo.skype.com/latest/skypeforlinux-64.deb
		dpkg -i skypeforlinux-64.deb
		apt install -f
                printf "\033[1;31mSkype is installed\033[0m\n"
                echo "$a"
                ;;
                7)
		printf "\033[1;31mSublime\033[0m\n"
                sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
		sudo apt-get update
		sudo apt-get install sublime-text-installer
                printf "\033[1;31mSublime is installed\033[0m\n"
                echo "$a"
                ;;
		8)
		printf "\033[1;31mGoogle-Chrome\033[0m\n"
                wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
		echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
		sudo apt-get update -y
		sudo apt-get install google-chrome-stable -y
                printf "\033[1;31mGoogle-Chrome is installed\033[0m\n"
                echo "$a"
		;;
		9)
                printf "\033[1;31mFilezilla\033[0m\n"
                apt-get install -y filezilla
                printf "\033[1;31mFilezilla is installed\033[0m\n"
                echo "$a"       
                ;;

                *)
                exit
		;;
                esac
        done 
