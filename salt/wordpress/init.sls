Copy_files:
  file.recurse:
    - name: /var/www/html/wordpress
    - source: salt://wordpress/wordpress_down
    - makedirs: True


install wordpress packages: 
  pkg.installed:
    - pkgs:
      - nginx
      - php
      - php-mysql
      - php-fpm
    - skip_suggestions: true
  
  file.managed:
    - name: /etc/nginx/sites-available/wordpress
    - source: salt://wordpress/wordpress
    - makedirs: True

#Copy_files:
#  file.recurse:
#    - name: /var/www/wordpress
#    - source: salt://wordpress/wordpress_down
#    - makedirs: True

  cmd.script:
    - name: wordpress.sh
    - source: salt://wordpress/wordpress.sh

Copy_php:
  file.managed:
    - name: /etc/nginx/sites-available/default
    - source: salt://wordpress/default
    - makedirs: True
