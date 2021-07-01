#! /bin/bash

db_pass=Lekkerwachtwoord1234
name=wordpressuser
pass=Lekkerpassword1234
sudo mysql -uroot -p$db_pass -e "CREATE DATABASE wordpress;CREATE USER $name@localhost identified with mysql_native_password by '$pass';GRANT ALL ON wordpress.* to $name@localhost WITH GRANT OPTION;"
