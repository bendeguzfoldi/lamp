
lxc exec wordpress -- apt -y update
lxc exec wordpress -- apt -y upgrade
lxc exec wordpress -- apt -y install mc
lxc exec wordpress -- apt -y install apache2
lxc exec wordpress -- apt -y install mysql-server mysql-client
#service mysql status
lxc exec wordpress -- apt -y install php7.0 php7.0-mysql php7.0-curl php7.0-json php7.0-cgi libapache2-mod-php7.0 php-mbstring php7.0-mbstring php-gettext
#php -v
lxc exec wordpress -- sh -c "echo $'<?php\nphpinfo();\n?>' > /var/www/html/test.php"
lxc exec wordpress -- service apache2 restart
lxc exec wordpress -- apt -y install phpmyadmin
lxc exec wordpress -- sh -c "echo 'Include /etc/phpmyadmin/apache.conf' >> /etc/apache2/apache2.conf"
lxc exec wordpress -- service apache2 restart



