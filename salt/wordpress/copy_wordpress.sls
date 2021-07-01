copy files to wordpress
  file.managed: 
    - name: /var/www/wordpress 
    - source: salt://wordpress/wordpress_down
    - makedirs: True
