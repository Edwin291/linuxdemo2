mysql_setup:
  debconf.set:
    - name: mysql-server
    - data:
        'mysql-server/root_password': {'type': 'password', 'value': '{{ salt['pillar.get']('root_pass','') }}' }
        'mysql-server/root_password_again': {'type': 'password', 'value': '{{ salt['pillar.get']('root_pass','') }}' }

mysql-server:
  pkg:
    - installed
    - require:
      - debconf: mysql_setup

  cmd.script:
    - name: mysql.sh
    - source: salt://mysql/mysql.sh
